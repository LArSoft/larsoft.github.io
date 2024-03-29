# NuGraph2 Integration

For general information, please examine [NuGraph2 GNN event reconstruction](https://larsoft.org/nugraph-gnn/)

NuGraph2 model has been integrated in LArSoft release:
- [v09_83_01](https://github.com/LArSoft/larsoft/releases/tag/v09_83_01)
- It’s located in the larrecodnn/NuGraph package

New dependencies introduced for NuGraph:
* delaunator v0_4_0
* libtorch v2_1_1
* torch_scatter v2_1_2

The module responsible for running the GNN model is called 
[NuGraphInference_module](https://github.com/LArSoft/larrecodnn/blob/develop/larrecodnn/NuGraph/NuGraphInference_module.cc)
 and performs the following 4 steps:
1. create Delaunay edges
2. fill input torch Tensors
3. collect inputs, run inference
4. get output, put into event

Recipe for Testing relies on the user having access to a trained model saved in a “model.pt” file.

* source /cvmfs/uboone.opensciencegrid.org/products/setup_uboone.sh
* setup uboonecode v09_83_01 -q e26:prof
* cp /path/to/model.pt .
* export FW_SEARCH_PATH=$FW_SEARCH_PATH:./
* lar -c testinference_uB_slice_job.fcl -n 1 –nskip 31 -s inputfile.root
* lar -c nugraph_analyzer.fcl -n -1 -s inputfile_*-testinference.root
* root -l NuGraphTree.root
* As input file you can use files from the MicroBooNE public dataset

For more details on integrating NuGraph GNN into LArSoft see: Integration of [NuGraph GNN into LArSoft NuGraph All Hands Meeting](https://indico.fnal.gov/event/63378/contributions/284872/attachments/175295/237766/NuGraph-LArSoft-AllHands.pdf)
