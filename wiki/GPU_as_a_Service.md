GPU as a Service Part 1
====================================================

Introduction
------------------------------

Machine learning applications have become quite popular in the offline reconstruction workflows of LArTPC based neutrino experiments. While ideally suited for performing inference tasks to classify the image-like data provided by LarTPCs, some machine learning (ML) applications perform poorly on the CPUs of the grid worker nodes these workflows typically run on, because worker nodes are not equipped with GPUs or other specialized architectures to run ML algorithms efficiently. Installing expensive and power-hungry GPUs on each grid node, on the other hand, is not currently feasible.

One solution is to implement dedicated GPU servers that provide the inference capabilities of the GPUs “as a service” (GPUaaS) to clients on the grid worker nodes running the ML applications. An example of such a solution is Nvidia’s Triton inference server that provides a `C++` client library API for sending inference requests to the server and retrieving the results.

The Nvidia API has been successfully implemented directly in LArSoft applications. To make things simpler, however, we have implemented another layer on top of the Nvidia API to insulate the user from its details and possible changes to its implementation in the future. This layer is provided by the NuSonic Triton client library packaged in larrecodnn. While based on the SONIC libraries in CMSSW, NuSonic provides a minimal subset of capabilities, the ones that are useful for LArSoft.

In the rest of Part 1 below, we provide a concrete example of using the NuSonic Triton Client API to send an inference request to the GPU server and retrieve the results. In [GPU as a Service Part 2](GPU_as_a_Service_part_two), we explain how to set up an inference model on the GPU server. Finally, in [GPU as a Service Part 3](GPU_as_a_Service_part_three), we describe how to test the client and model configuration locally using an inference server running in a docker container, or via a dedicated test server at Fermilab.

For further background, please consult the powerpoint presentation from the August 24, 2021 LArSoft Coordination Meeting titled
[Using GPU-as-a-service in LArSoft with the NuSONIC inference client interface](https://indico.fnal.gov/event/50528/contributions/221886/attachments/146468/187022/larsoft_nusonic-24aug21.pptx)

Using the NuSonic Triton GPUaaS client in LArSoft
--------------------------------------------------------------------------------------------------------

### Implementation example

To demonstrate how GPUaaS functionality can be realized in LArSoft based applications, we provide an example of the NuSonic interface to the Nvidia Triton inference server client. This example is implemented in the PointId algorithm used by the EmTrackMichelId module of larrecodnn to classify reconstructed LArTPC hits as being track-like, shower-like, or Michel electron-like. The PointId algorithm constructs small 2D images or patches, typically 48x48 pixels in size, around the reconstructed hit in question and uses a convolutional neural network (CNN) to perform the inference, whose results are then used to classify the hit. The basic steps involved to perform the inference on a remote Nvidia Triton inference server and retrieve the results are described exactly as they are implemented. This working example can be found in `larrecodnn/ImagePatternAlgs/Triton/Tools/PointIdAlgSonicTriton_tool.cc`.

### Required changes to CMakeLists and headers

In order to use the NuSonic Triton client, the relevant line for the Nusonic Triton library must be added to the CMakeLists.txt file:

    art_make(
    TOOL_LIBRARIES
    .
    .
    larrecodnn_ImagePatternAlgs_NuSonic_Triton
    .
    .
    )

Also need to include the following header in the code:

    #include "larrecodnn/ImagePatternAlgs/NuSonic/Triton/TritonClient.h" 

### Basic steps involved

The procedure to implement GPUaaS in LArSoft code using the NuSonic Triton libraries involves the following 4 basic steps:

1.  Create the client
2.  Describe or prepare the data for the corresponding model input
3.  Send the inference request to the server
4.  Retrieve the inference results from the server

### Step1: Creating the client

The very first step in implementing GPUaaS functionality in the LArSoft code involves creating a Triton client by constructing a `lartriton::TritonClient` object accessed through a `unique_ptr`:

        // ... Create the Triton inference client
    triton_client = std::make_unique<lartriton::TritonClient>(TritonPset);

The arguments "`TritonPset`" in the constructor is a `fhicl::ParameterSet` that consists of the user-specified parameters shown in the following table:

    Name                 Type            Description
    -----------------------------------------------------------------------------
    "serverURL"          std::string     host name or IP address of inference
    server and port number, e.g. when
    using grpc - ailab01.fnal.gov:8001 or 
    localhost:8001
    "verbose"            bool            if true, generates verbose output when
    the inference server is contacted 
    "modelName"          std::string     name of the model to use for running
    inference, it is also the name of the
    directory in the model repository of the
    server that contains the files
    associated with the model
    "modelVersion"       std::string     version of the model to use for running
    inference, if this string is empty, the
    server will decide based on its internal
    policy
    "timeout"            unsigned        timeout in seconds, currently unused,
    should set to any random value
    "allowedTries"       unsigned        maximum number of retries if inference
    request fails (default is 0)
    "outputs"            std::string     user specified list of model outputs
    whose predictions will be returned,
    empty list "[]" means all outputs will
    be returned

None of these parameters have a default value except for “allowedTries” which has a default of zero.

### Step 2: Preparing the data

The second step involves “describing” or setting up the data to be sent to the server for inference. To optimize GPU resource utilization, it is best to send data to the server in batches of some user-specified number of images or samples per batch. This batch size must be made known to the inference client created above:

        triton_client->setBatchSize(usamples);    // set batch size

Next, create a `lartriton::TritonInput` container, wrapped in a `shared_ptr`, for the data type (`float` in this example) expected by the ML model, and make sure to request enough capacity for the specified batch size:

        auto data1 = std::make_shared<lartriton::TritonInput<float>>();
    data1->reserve(usamples);

Fill each element of the container with a “flattened” 1D representation of the image or sample corresponding to that element:

        // ~~~~ For each sample, prepare images for sending to server
    for (size_t idx = 0; idx < usamples; ++idx) {
    auto& img = data1->emplace_back();
    // ..first flatten the 2d array into contiguous 1d block
    for (size_t ir = 0; ir < nrows; ++ir) {
    img.insert(img.end(), inps[idx][ir].begin(), inps[idx][ir].end());
    }
    }

Then, get the `TritonInputData` instance associated with the model input to which the data will be sent for inference. In this example, there is only one input which has only one channel, so the example simply picks the mapped value of the first element in the `TritonInputMap` (`begin()->second`):

        auto& triton_input = triton_client->input().begin()->second;

or, equivalently, it can be specified by name (“main\_input” in this example):

        auto& triton_input = triton_client->input().at("main_input");

Finally, using this `TritonInputData` instance, invoke its `toServer()` method to convert the data into the native format of the inference server:

        triton_input.toServer(data1);    // convert to server format

### Step 3: Sending the inference request

Once the data has been prepared and converted into the server format, call the `dispatch()` method of the Triton client to send the entire batch of data to the server and run the inference task on them.

        // ~~~~ Send inference request
    triton_client->dispatch();

### Step 4: Retrieving the results

In the previous step, the inference request is a blocking call which will return only after the process completes successfully or fails for some reason. If it returns successfully, one can then retrieve the predictions for any output of the ML model through the `TritonOutputData` object associated with that output, which one specifies by its name:

        const auto& triton_output0 = triton_client->output().at("em_trk_none_netout/Softmax");
    const auto& triton_output1 = triton_client->output().at("michel_netout/Sigmoid");

In this example, there are two outputs named “em\_trk\_none\_netout/Softmax” and “michel\_netout/Sigmoid”.

Just as the example had to convert the input data to the native format of the inference server, now one has to convert it back into the output data type of the ML model so it can easily be interpreted. This is done by invoking the `fromServer()` method of the `TritonOutputdata` object with the appropriate data type (`float` in this example):

        const auto& prob0 = triton_output0.fromServer<float>();
    const auto& prob1 = triton_output1.fromServer<float>();

The number of classifiers or categories for each output is obtained using the `TritonOutputData` object’s `sizeDims()` method:

        auto ncat0 = triton_output0.sizeDims();
    auto ncat1 = triton_output1.sizeDims();

One can then get the unpacked results for each category in each output for every image in the batch and, in the provided example, store them in a 2D vector for later use in the program:

        std::vector<std::vector<float>> out;
    out.reserve(usamples);
    for(unsigned i = 0; i < usamples; i++) {
    out.emplace_back();
    auto& img = out.back();
    img.reserve(ncat0+ncat1);
    img.insert(img.end(), prob0[i].begin(), prob0[i].end());
    img.insert(img.end(), prob1[i].begin(), prob1[i].end());
    }

Finally, one must remember to reset the Triton client before repeating the steps above for a new batch of images. This step re-initializes all `TritonInputData` instances by clearing out any existing values set by previous underlying calls when the data was being prepared for sending to the server:

         triton_client->reset();

### In [GPU as a Service Part 2](GPU_as_a_Service_part_two), we explain how to set up an inference model in the GPU server.
