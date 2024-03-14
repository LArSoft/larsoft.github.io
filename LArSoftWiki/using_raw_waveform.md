Using the 1DCNN raw waveform algorithm 
For general information, see [Waveform region-of-interest finding for supernova event triggering]{https://larsoft.org/waveform-region/) on larsoft.org.

To see how you can use the 1DCNN ROI finder in your LarSoft module, let us start by looking at what needs to be in the fhicl configuration file. First of all, you will need a section specifying parameters related to the model. In the example below, we have three sections, one for each view – U, V, & Z, since there are separate models for each view:
```
tool_WaveformRecogU:
{
NNetModelFile: "models/ROI_finder/saved_model_60kU_ROI"
NNetOutputPattern: [
"cnn_output",
"dense_3",
"wavrec_out"
]
UseSavedModelBundle: true
WaveformSize: 6000
ScanWindowSize: 200
StrideLength: 150
CnnMean: 0.003920474537037037417
CnnScale: 4.839853236628326449
CnnPredCut: 0.999
tool_type: "WaveformRecogTf"
}
tool_WaveformRecogV:
{
NNetModelFile: "models/ROI_finder/saved_model_60kV_ROI"
NNetOutputPattern: [
"cnn_output",
"dense_3",
"wavrec_out"
]
UseSavedModelBundle: true
WaveformSize: 6000
ScanWindowSize: 200
StrideLength: 150
CnnMean: 0.008304051471056719466
CnnScale: 4.831063572580124976
CnnPredCut: 0.999
tool_type: "WaveformRecogTf"
}
tool_WaveformRecogZ:
{
NNetModelFile: "models/ROI_finder/saved_model_60kZ_ROI"
NNetOutputPattern: [
"cnn_output",
"dense_3",
"wavrec_out"
]
UseSavedModelBundle: true
WaveformSize: 6000
ScanWindowSize: 200
StrideLength: 150
CnnMean: 0.3008088657407407274
CnnScale: 4.201201416668982169
CnnPredCut: 0.999
tool_type: "WaveformRecogTf"
}
```
Here is a brief description of each parameter above:
- NNetModelFile: path to the model.
- NNetOutputPattern: the names of the model’s output, there is really only one output, but the code will search through the list for matches. In this case the name of the output is “dense_3”.
- UseSavedModelBundle: set to true if you model is in the Keras/Tensorflow SavedModel format (recommended).
- WaveformSize: this is the size of the full readout window for your experiment.
- ScanWindowSize: this is the native size of the 1DCNN, in this case it was trained using 200 tick wide waveforms.
- StrideLength: this specifies the offset of the start of one scan window relative to the start of the previous window. In this example, the stride length is set to 150, so two sequential windows will have an overlap region of 50 time ticks, assuming ScanWindowSize=200.
- CnnMean and CnnScale (std): mean and std for pre-processing or standardizing the input to the model according to:
𝑎𝑑𝑐𝑠𝑐𝑎𝑙𝑒𝑑=(𝑎𝑑𝑐𝑟𝑎𝑤−𝑚𝑒𝑎𝑛)𝑠𝑡𝑑⁄
you don’t need to do this yourself, it is done internally, you just have to provide mean and std. The scaled result is what you feed into the model.
- CnnPredCut: this is the threshold above which the section of the waveform fed into the 1DCNN will be considered a signal region or ROI.

  
This next section shows you how to pass the model specific parameters above to your LArSoft module:
```
standard_roifinder:
{
module_type: "NameOfYourROIFinderModule"
DigitModuleLabel: "tpcrawdecoder:daq"
WaveformRecogs: [
@local::tool_WaveformRecogU,
@local::tool_WaveformRecogV,
@local::tool_WaveformRecogZ
]
.
.
.
}
physics:
{
analyzers:
{
roifinder: @local::standard_roifinder
}
ana: [ roifinder ]
end_paths: [ ana ]
}
```

In this example, the RawDigits are taken from the LArSoft product labeled “tpcrawdecoder:daq”.
In your LArSoft ROI finder module, you will need the following include:
`#include "larrecodnn/ImagePatternAlgs/ToolInterfaces/IwaveformRecog.h"`
and a declaration like:
`std::vector<std::unique_ptr<wavrec_tool::IWaveformRecog>> fWaveformRecogToolVec;`
then in your constructor, you can do:
```
fDigitModuleLabel = p.get<std::string>("DigitModuleLabel", "");
.
.
.
// ... load fcl params for Signal/Noise waveform recognition tool
auto const tool_psets = p.get<std::vector<fhicl::ParameterSet>>("WaveformRecogs");
if(tool_psets.size()!=geom->Nviews())throw cet::exception("NameOfYourROIFinderModule")
<< "Number of WaveformRecog tool fcl configs not equal to Nviews: " << tool_psets.size();
fWaveformSize = tool_psets[0].get<unsigned int>("WaveformSize");
fWaveformRecogToolVec.reserve(geom->Nviews());
for (auto const& pset : tool_psets) {
fWaveformRecogToolVec.push_back(art::make_tool<wavrec_tool::IWaveformRecog>(pset));
}
```
In the analysis section of your module, you can then do:
```
// ... Get the raw digits.
art::Handle<std::vector<raw::RawDigit>> rawListHandle;
std::vector<art::Ptr<raw::RawDigit>> rawlist;
if (e.getByLabel(fDigitModuleLabel, rawListHandle)) art::fill_ptr_vector(rawlist, rawListHandle);
.
.
.
for (unsigned int iraw = 0; iraw < rawlist.size()); ++iraw) {
const auto& digitVec = rawlist[iraw];
unsigned int view = geo->View(rawlist[iraw]->Channel());
std::vector<short> rawadc(fWaveformSize);
std::vector<float> inputsignal(fWaveformSize);
raw::Uncompress(digitVec->ADCs(), rawadc, digitVec->GetPedestal(), digitVec->Compression());
for (size_t itck = 0; itck < rawadc.size(); ++itck) {
inputsignal[itck] = rawadc[itck] - digitVec->GetPedestal();
}
// ... use waveform recognition CNN to perform inference on each window
std::vector<bool> inroi(fWaveformSize, false);
inroi = fWaveformRecogToolVec[view]→findROI(inputsignal);
.
.
.
}
```
In the example above, we loop over all the raw digits in rawlist and feed each vector, after converting it to float, into the ROI finder using the findROI method. This method returns a boolean vector with the same size as the input vector where the ROIs are identified by the elements that are set to true.
