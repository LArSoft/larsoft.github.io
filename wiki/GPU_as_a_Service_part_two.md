GPU as a Service Part 2(#GPU-as-a-Service-Part-2)
====================================================

Setting up the model on a Triton inference server(#Setting-up-the-model-on-a-Triton-inference-server)
========================================================================================================

Navigation(#Navigation)
--------------------------

These material is presented in three parts.

-   [Part One: Overview and introduction to the NuSonic Triton client library](_GPU_as_a_Service_)
-   [Part Two: Setting up the model on the Triton inference server](GPU_as_a_Service_part_two)
-   [Part Three: Testing the Triton client and model configuration with an inference](GPU_as_a_Service_part_three)

Introduction(#Introduction)
------------------------------

In order for the NuSonic Triton client to successfully send inference requests to an inference server and retrieve the results, the ML model specified by the *modelName* parameter when constructing the TritonClient must be available in the model repository of the inference server. It must also adhere to certain standards dictating directory structure, naming conventions, and the presence of certain configuration files. To demonstrate how to set up the model in the repository, an actual example based on the same `EmTrackMichelId` module used in the NuSonic Triton client tutorial is provided below.

Directory structure(#Directory-structure)
--------------------------------------------

The location of the model repository depends on the server’s configuration. The discussion that follows will be based on the directory structure of the inference server used in this example ("`ailab01`"), which is depicted by the outputs from the unix shell command sequence shown below:

    [mwang@ailab01 models]$ pwd
    /models

    [mwang@ailab01 models]$ ls
    cnn_emtrkmichel_1  densenet_onnx       particlenet_AK8_MassRegression
    deepcalo           facile_all          particlenet_AK8_MD-2prong
    deepmet            facile_all_v2       pseudofacile
    deeptau_core       facile_plan         pseudofacile_plan_10k
    deeptau_ensemble   facile_plan_10k     pseudofacile_tf
    deeptau_inner      facile_tf           resnet50
    deeptau_nosplit    inception_graphdef  simple
    deeptau_outer      particlenet
    deeptau_python     particlenet_AK4

    [mwang@ailab01 models]$ ls -R cnn_emtrkmichel_1/
    cnn_emtrkmichel_1/:
    1  config.pbtxt  labels_em_trk_none.txt  labels_michel.txt

    cnn_emtrkmichel_1/1:
    model.graphdef

The root directory of the model repository in this example is "`/models`". All the files associated with a particular model should be placed in one subdirectory under this root directory. For the `EmTrackMichelId` example, the subdirectory is named "`./cnn_emtrkmichel_1`" (full path "`/models/cnn_emtrkmichel_1`“). The name of the subdirectory,”`cnn_emtrkmichel_1`", is what must be specified for the *modelName* parameter of the TritonClient constructor. Underneath this subdirectory are additional subdirectories named with a numerical value corresponding to the version number of the model specified by the *modelVersion* passed to the client constructor. All subdirectories that are not numerically named or that begin with a "`0`" are ignored. Which versions are made available by the server depends on the policy set for the model. In the current example, there is only one version in a subdirectory named "`1`". No policy is specified, so the server defaults to serving out the numerically greatest version, which is `1` in this case.

### Model file location(#Model-file-location)

The files containing the actual ML model are located in the “version” subdirectory ("`./cnn_emtrkmichel_1/1`“). The Triton inference server supports several different types of ML backends. The backend used in this example is Tensorflow and the format of the model file is one of two Tensorflow types supported by Triton, referred to as a”`GraphDef`" file. This format contains a frozen model file which contains the model description with the numerical weights loaded into it, in a single file. By default, this file needs to be named as "`model.graphdef`". Additional information on the two Tensorflow formats, frozen `GraphDef` and `SavedModel`, supported by the Triton inference server can be found in the following links:

[https://www.tensorflow.org/guide/saved\_model\#the\_savedmodel\_format\_on\_disk](https://www.tensorflow.org/guide/saved_model#the_savedmodel_format_on_disk)

[https://www.tensorflow.org/js/tutorials/conversion/import\_saved\_model](https://www.tensorflow.org/js/tutorials/conversion/import_saved_model)

Configuration files(#Configuration-files)
--------------------------------------------

Going one level up the directory tree back to "`./cnn_emtrkmichel_1`“, there are three text files. The first one, which is required to be named”`config.pbtxt`" by default, describes the detailed properties of the model and the behavior of the server for this model. It is reproduced below for this example:

    name: "cnn_emtrkmichel_1" 
    platform: "tensorflow_graphdef" 
    max_batch_size: 65536
    input [
      {
        name: "main_input" 
        data_type: TYPE_FP32
        format: FORMAT_NHWC
        dims: [ 48, 48, 1 ]
      }
    ]
    output [
      {
        name: "em_trk_none_netout/Softmax" 
        data_type: TYPE_FP32
        dims: [ 3 ]
        label_filename: "labels_em_trk_none.txt" 
      },
      {
        name: "michel_netout/Sigmoid" 
        data_type: TYPE_FP32
        dims: [ 1 ]
        label_filename: "labels_michel.txt" 
      }
    ]
    instance_group [
      {
        kind: KIND_GPU,
        count: 1
      }
    ]

Looking at this file, the first line provides the name of the model corresponding to the subdirectory under the root of the model repository. The second line labeled "`platform`" describes the model backend (`tensorflow`) and format (`graphdef`). The third line labeled "`max_batch_size`" provides the maximum number of images per batch that can be handled by this model. In this particular example, this property is not inherent to the model and can be chosen by the user. For models that do not support batching, this should be set to zero. After the first three lines come two sections describing the model’s inputs and outputs in detail. If the model has multiple inputs or outputs, there should be one subsection per input or output.

### Input section(#Input-section)

The `EmTrackMichelId` model has only one input so there is only one input subsection. The first line in this subsection is the name of the input in the model. The second line labeled "`data_type`" describes the type of the input data, in this case `TYPE_FP32`, which corresponds to Tensorflow’s `DT_FLOAT` datatype. The next line describes the format of the input images or tensors. In this case, it is specified as `FORMAT_NHWC` where `N`, `H`, `W`, and `C` refer to batch size, height, width, and channels, respectively. This is followed by the line labeled "`dims`" which specifies `H`, `W`, and `C` as 48, 48, and 1, respectively. See the following link for more details on tensor formats:

[https://docs.nvidia.com/deeplearning/performance/dl-performance-convolutional/index.html](https://docs.nvidia.com/deeplearning/performance/dl-performance-convolutional/index.html)

### Output section(#Output-section)

Immediately following the input section is the output section which has two subsections corresponding to the `EmTrackMichelId` model’s two outputs. The first line in each subsection specifies the name of the output followed by a "`data_type`" line specifying the output datatype which in each case is identical to the input datatype of `TYPE_FP32`. The third line labeled "`dims`" specifies 3 (1) output categories for the first (second) output. Finally, the last line with the "`label_filename`" key, specifies the name of the file in the same subdirectory as `config.pbtxt`, which provides the sequence of names for the categories associated with each output of the model. The first ouput named "`em_trk_none_netout/Softmax`" has three categories named "`track`“,”`em`“, and”`none`“. The second output named”`michel_netout/Sigmoid`" has a single category named "`michel`". The contents of the files associated with the first output (`labels_em_trk_none.txt`) and the second output (`labels_michel.txt`) are shown below:

    [mwang@ailab01 cnn_emtrkmichel_1]$ pwd
    /models/cnn_emtrkmichel_1

    [mwang@ailab01 cnn_emtrkmichel_1]$ ls
    1  config.pbtxt  labels_em_trk_none.txt  labels_michel.txt

    [mwang@ailab01 cnn_emtrkmichel_1]$ cat labels_em_trk_none.txt 
    track
    em
    none

    [mwang@ailab01 cnn_emtrkmichel_1]$ cat labels_michel.txt 
    michel

### Instance group section(#Instance-group-section)

The last section in `config.pbtxt` specifies how many instances of the model to run on each available hardware resource, with one subsection per resource. This example assumes there is only one GPU. In this case, even if there are multiple GPUs on the server, only one will be used. The line labeled "`kind`" specifies that the hardware resource on the server is a GPU (`KIND_GPU`) and the folowing line labeled "`count`" specifies to run only 1 instance of the model on the GPU. Instead of a GPU, it is also possible to use a CPU on the server as the hardware resource by specifying `KIND_CPU`.

Additional information(#Additional-information)
--------------------------------------------------

The tutorial described above provides a minimal example configuration for setting up a model on the inference server. For more configuration options and information on other supported backends and datatypes, please refer to the Nvidia Triton inference server documentation:

[https://github.com/triton-inference-server/server/blob/main/README.md\#documentation](https://github.com/triton-inference-server/server/blob/main/README.md#documentation)

### In [GPU as a Service Part 3](GPU_as_a_Service_part_three), we describe how to test the client and model configuration locally, or via a dedicated test server at Fermilab.(#In-GPU-as-a-Service-Part-3-we-describe-how-to-test-the-client-and-model-configuration-locally-or-via-a-dedicated-test-server-at-Fermilab)
