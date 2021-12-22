GPU as a Service Part 3
====================================================

Testing the Triton client and model configuration with an inference server
==========================================================================================================================================================

Navigation
--------------------------

This material is presented in three parts.

-   [Part One: Overview and introduction to the NuSonic Triton client library](_GPU_as_a_Service_)
-   [Part Two: Setting up the model on the Triton inference server](GPU_as_a_Service_part_two)
-   [Part Three: Testing the Triton client and model configuration with an inference](GPU_as_a_Service_part_three)

Local Triton inference server in a Docker container
------------------------------------------------------------------------------------------------------------

When developing code using the NuSonic Triton client libraries or setting up the model for deployment on a remote inference server, it is very useful to have a Triton inference server running locally for testing that can be easily configured. Fortunately, this can be done using a Triton Docker image. Detailed instructions on installing the image and running the server can be found here:

[https://github.com/triton-inference-server/server/blob/main/docs/quickstart.md](https://github.com/triton-inference-server/server/blob/main/docs/quickstart.md)

Although described in detail in the link above, an actual example command for running the Triton Docker image with the server running on an available GPU is:

    # For GPU case:
    docker run --gpus=1 --rm -p8000:8000 -p8001:8001 -p8002:8002 \
      -v/products/triton/v2_3_0b/source/server-2.3.0/docs/examples/model_repository:/models \
      nvcr.io/nvidia/tritonserver:21.02-py3 tritonserver --model-repository=/models

where the path to the model repository and the Triton server version need to be replaced with the appropriate ones.

The same command can be modified slightly to run on a CPU instead of a GPU, for example when there is no GPU available on the development platform:

    # For No-GPU case:
    docker run --rm -p8000:8000 -p8001:8001 -p8002:8002 \
      -v/products/triton/v2_3_0b/source/server-2.3.0/docs/examples/model_repository:/models \
      nvcr.io/nvidia/tritonserver:21.02-py3 tritonserver --model-repository=/models

In both examples above, the root of the model repository on the server is assumed to be `/models`.

Converting the Triton Docker container to Singularity
----------------------------------------------------------------------------------------------------------------

In order to run the Triton inference server in a container on machines that support Singularity but not Docker (e.g. Fermilab gpvms), one may convert the Triton Docker container described in the previous section into a Singularity container by following the steps below:

1.  Set SINGULARITY\_TMPDIR and SINGULARITY\_CACHEDIR to an area with a substantial amount of disk space. Also make sure you have sufficient space in your current working directory.
2.  Run the following command to convert the Docker container to Singularity:\

        singularity build tritonserver-21.06-py3.sif docker://nvcr.io/nvidia/tritonserver:21.06-py3

3.  Finally, start up the Triton server with the following command:\

        singularity run -B $MODELDIR:/models --nv tritonserver-21.06-py3.sif tritonserver \
        --model-repository=/models --repository-poll-secs=30 --model-control-mode=poll --log-verbose 1

Remote Triton inference server at Fermilab
------------------------------------------------------------------------------------------

Fermilab maintains a dedicated Triton inference server for testing purposes with the hostname `ailab01.fnal.gov`. The model repository on this server is under the root "`/models`". A login account will be needed to install models in this repository. This is a valuable resource for additional testing, once the Triton client has been verified to work successfully with the local inference server in the Docker image described above. It is best to access this machine onsite. But it can also be accessed offsite by first creating a tunnel through another onsite machine that can be accessed externally:

    # creating a tunnel to ailab01.fnal.gov via flxi03.fnal.gov
    ssh -f -N -L 8001:localhost:8001 -J flxi03.fnal.gov ailab01.fnal.gov

Once this is done, inference requests can be sent to the remote inference server using the `grpc` protocol, by specifying *serverURL* in the TritonClient constuctor as "`localhost:8001`".
