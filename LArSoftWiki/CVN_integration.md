# CVN Integration into LArSoft

For general information, please examine 
[CNN-based neutrino classification using CVN]( https://larsoft.org/cnn-based/).

The main class that handles the creation of pixel map objects takes in a cluster of hits 
and sorts them into 2D wire-tick space for each view. A global wire coordinate is 
assigned for interactions spanning multiple APAs, drift vols, wrapped wires, etc. 
It handles different geometries within DUNE (HD, VD, ProtoDUNE-SP).
- Producer module (CVNMapper) uses the PixelMapProducer class to write out pixel
map data products
- Analyzer module (CVNZlibMaker) uses these to written out pixel map objects as
compressed binary files for each event. It also writes out some auxiliary information
needed for training (true flavor, neutrino energy etc) 
- Producer module (CVNEvaluator) reads in the TensorFlow model weight file after
- training to write out data products that store the result of the inference of
CVN on any given interaction. It utilizes the TFNetHandler class to read the
TensorFlow graph representing the architecture of the network.

A lot of this code can also be made geometry agnostic if one wants to adapt 
it for other LAr experiments. There exists a common repository to do this — 
larrecodnn. The CVN specific code in larrecodnn handles the inputs more 
rationally and improves upon the DUNE code in order to make it accessible for other 
experiments and geometries. In particular, there is an 
[interface](https://github.com/LArSoft/larrecodnn/blob/develop/larrecodnn/CVN/interfaces/PixelMapProducer.h)  for the PixelMapProducer class that needs the user to assign a global wire coordinate based on the experiment-specific geometry. PixelMapProducer is a class template that can take as input multiple options of cluster information such as recob::Hit, recob::Wire format (for hits, full waveforms etc).

Examples are provided [here](https://github.com/LArSoft/larrecodnn/blob/develop/larrecodnn/CVN/modules/LArCVNHitMapper_module.cc)  and [here](https://github.com/LArSoft/larrecodnn/blob/develop/larrecodnn/CVN/modules/LArCVNWireMapper_module.cc)  for the default case of 1 APA and 1 drift volume and no wrapped wires. Geometry specific handling of wire, tick co-ordinates can be done by deriving from the base type and then overriding ConvertLocaltoGlobal or ConvertLocaltoGlobalTDC. 

Additionally, some improvements are made to how CVNZlibMaker can store 
different kinds of auxiliary training data along with the gzip-compressed images. 
The Evaluator part also has some improvements in terms of the kinds of TensorFlow 
graph formats it can read in, in particular it can now read graphs in 
the [SavedModel](https://www.tensorflow.org/guide/saved_model) format.

Most of the DUNE CVN code is now ported over to larrecodnn and the CVN algorithm can be trained and used on various geometries such as SBND. 



