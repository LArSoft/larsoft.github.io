Explicit code changes since v06_18_00
==================================================================================

These are changes in larsoft v06_18_01.

larwirecell
----------------------------

### larwirecell/LArInterface/Test_module.cc

    diff --git a/larwirecell/LArInterface/Test_module.cc b/larwirecell/LArInterface/Test_module.cc
    deleted file mode 100644
    index ce609e9..0000000
    --- a/larwirecell/LArInterface/Test_module.cc
    +++ /dev/null
    @@ -1,243 +0,0 @@
    -#ifndef TESTMODULE_H
    -#define TESTMODULE_H
    -
    -#include <string>
    -#include <vector>
    -#include <iostream>
    -
    -// Framework includes
    -#include "art/Framework/Principal/Event.h" 
    -//#include "fhiclcpp/ParameterSet.h" 
    -
    -#include "art/Framework/Core/ModuleMacros.h" 
    -#include "art/Framework/Core/EDProducer.h" 
    -#include "art/Framework/Principal/Handle.h" 
    -#include "art/Framework/Services/Optional/TFileService.h" 
    -#include "art/Framework/Services/Registry/ServiceHandle.h" 
    -#include "messagefacility/MessageLogger/MessageLogger.h" 
    -
    -#include "lardataobj/RawData/RawDigit.h" 
    -#include "lardataobj/RawData/raw.h" 
    -
    -#include <numeric>        // iota
    -#include "WireCellIface/SimpleFrame.h" 
    -#include "WireCellIface/SimpleTrace.h" 
    -#include "WireCellSigProc/OmnibusNoiseFilter.h" 
    -#include "WireCellSigProc/OneChannelNoise.h" 
    -#include "WireCellSigProc/CoherentNoiseSub.h" 
    -#include "WireCellSigProc/SimpleChannelNoiseDB.h" 
    -
    -using namespace WireCell;
    -using namespace std;
    -
    -//class TestTrace;
    -
    -namespace testalg {
    -
    -  class Test : public art::EDProducer {
    -
    -  public:
    -    explicit Test(fhicl::ParameterSet const& pset);
    -    virtual ~Test();
    -
    -    void produce(art::Event & evt);
    -    void reconfigure(fhicl::ParameterSet const& pset);
    -    
    -    void beginJob();
    -    void endJob();
    -
    -  private:
    -
    -    //******************************
    -    //Variables Taken from FHICL File
    -    //std::string       fRawDigitModuleLabel;   //label for rawdigit module
    -  }; //end class Noise
    -
    -
    -  //-------------------------------------------------------------------
    -  Test::Test(fhicl::ParameterSet const& pset)
    -    : EDProducer(){ 
    -    this->reconfigure(pset); 
    -    produces<std::vector<raw::RawDigit> >();
    -  }
    -
    -  //-------------------------------------------------------------------
    -  Test::~Test(){}
    -
    -  //-------------------------------------------------------------------
    -  void Test::reconfigure(fhicl::ParameterSet const& pset){
    -  }
    -
    -  //-------------------------------------------------------------------
    -  void Test::beginJob(){
    -    art::ServiceHandle<art::TFileService> tfs;
    -    //art::ServiceHandle<util::LArWireCellNoiseFilterService> larWireCellNF;
    -    //larWireCellNF->print(17);
    -  }
    -
    -  //-------------------------------------------------------------------
    -  void Test::endJob(){
    -    art::ServiceHandle<art::TFileService> tfs;
    -  }
    -  
    -  //-------------------------------------------------------------------
    -  void Test::produce(art::Event & evt){
    -    art::Handle< std::vector<raw::RawDigit> > rawDigitHandle;
    -    evt.getByLabel("daq",rawDigitHandle);
    -    std::vector<raw::RawDigit> const& rawDigitVector(*rawDigitHandle);
    -    const unsigned int n_channels = rawDigitVector.size();
    -
    -    //skip empty events
    -    if( n_channels == 0 )
    -        return;
    -
    -    // S&C microboone sampling parameter database
    -    const double tick = 0.5*units::microsecond;
    -    const int nsamples = 9595;
    -
    -    // Q&D microboone channel map
    -    std::vector<int> uchans(2400), vchans(2400), wchans(3456);
    -    const int nchans = uchans.size() + vchans.size() + wchans.size();
    -    std::iota(uchans.begin(), uchans.end(), 0);
    -    std::iota(vchans.begin(), vchans.end(), vchans.size());
    -    std::iota(wchans.begin(), wchans.end(), vchans.size() + uchans.size());
    -
    -    // Q&D nominal baseline
    -    const double unombl=2048.0, vnombl=2048.0, wnombl=400.0;
    -
    -    // Q&D miss-configured channel database
    -    vector<int> miscfgchan;
    -    const double from_gain_mVfC=7.8, to_gain_mVfC=14.0,
    -    from_shaping=1.0*units::microsecond, to_shaping=2.0*units::microsecond;
    -    for (int ind=2016; ind<= 2095; ++ind) { miscfgchan.push_back(ind); }
    -    for (int ind=2192; ind<= 2303; ++ind) { miscfgchan.push_back(ind); }
    -    for (int ind=2352; ind< 2400; ++ind) { miscfgchan.push_back(ind); }
    -
    -    // hard-coded bad channels
    -    vector<int> bad_channels;
    -    for (unsigned int i=0;i!=wchans.size();i++){
    -      if (i>=7136 - 4800 && i <=7263 - 4800){
    -    if (i != 7200- 4800 && i!=7215 - 4800)
    -      bad_channels.push_back(i+4800);
    -      }
    -    }
    -
    -    // Q&D RC+RC time constant - all have same.
    -    const double rcrc = 1.0*units::millisecond;
    -    vector<int> rcrcchans(nchans);
    -    std::iota(rcrcchans.begin(), rcrcchans.end(), 0);
    -    
    -    //harmonic noises
    -    vector<int> harmonicchans(uchans.size() + vchans.size());
    -    std::iota(harmonicchans.begin(), harmonicchans.end(), 0);
    -    
    -    vector<int> special_chans;
    -    special_chans.push_back(2240);
    -
    -    WireCellSigProc::SimpleChannelNoiseDB::mask_t h36kHz(0,169,173);
    -    WireCellSigProc::SimpleChannelNoiseDB::mask_t h108kHz(0,513,516);
    -    WireCellSigProc::SimpleChannelNoiseDB::mask_t hspkHz(0,17,19);
    -    WireCellSigProc::SimpleChannelNoiseDB::multimask_t hharmonic;
    -    hharmonic.push_back(h36kHz);
    -    hharmonic.push_back(h108kHz);
    -    WireCellSigProc::SimpleChannelNoiseDB::multimask_t hspecial;
    -    hspecial.push_back(h36kHz);
    -    hspecial.push_back(h108kHz);
    -    hspecial.push_back(hspkHz);
    -
    -    // do the coherent subtraction
    -    std::vector< std::vector<int> > channel_groups;
    -    for (unsigned int i=0;i!=172;i++){
    -    //for (int i=150;i!=151;i++){
    -      std::vector<int> channel_group;
    -      for (int j=0;j!=48;j++){
    -    channel_group.push_back(i*48+j);
    -      }
    -      channel_groups.push_back(channel_group);
    -    }
    -
    -    auto noise = new WireCellSigProc::SimpleChannelNoiseDB;
    -    // initialize
    -    noise->set_sampling(tick, nsamples);
    -    // set nominal baseline
    -    noise->set_nominal_baseline(uchans, unombl);
    -    noise->set_nominal_baseline(vchans, vnombl);
    -    noise->set_nominal_baseline(wchans, wnombl);
    -    // set misconfigured channels
    -    noise->set_gains_shapings(miscfgchan, from_gain_mVfC, to_gain_mVfC, from_shaping, to_shaping);
    -    // do the RCRC
    -    noise->set_rcrc_constant(rcrcchans, rcrc);
    -    // set initial bad channels
    -    noise->set_bad_channels(bad_channels);
    -    // set the harmonic filter
    -    noise->set_filter(harmonicchans,hharmonic);
    -    noise->set_filter(special_chans,hspecial);
    -    noise->set_channel_groups(channel_groups);
    -    //Define database object    
    -    shared_ptr<WireCell::IChannelNoiseDatabase> noise_sp(noise);
    -
    -    auto one = new WireCellSigProc::OneChannelNoise;
    -    one->set_channel_noisedb(noise_sp);
    -    shared_ptr<WireCell::IChannelFilter> one_sp(one);
    -    auto many = new WireCellSigProc::CoherentNoiseSub;
    -    shared_ptr<WireCell::IChannelFilter> many_sp(many);
    -
    -    //define noisefilter object
    -    WireCellSigProc::OmnibusNoiseFilter bus;
    -    bus.set_channel_filters({one_sp});
    -    bus.set_grouped_filters({many_sp});
    -    bus.set_channel_noisedb(noise_sp);
    -
    -    //load waveforms into traces
    -    ITrace::vector traces;
    -    for(unsigned int ich=0; ich<n_channels; ich++){
    -        const size_t n_samp = rawDigitVector.at(ich).NADC();
    -        if( n_samp == 0 )
    -          continue;
    -
    -    ITrace::ChargeSequence charges;
    -    for( unsigned int s = 0 ; s < n_samp ; s++ ){
    -        float q = (float)rawDigitVector.at(ich).ADCs().at(s);
    -        charges.push_back(q);
    -    }
    -    unsigned int chan = rawDigitVector.at(ich).Channel();
    -    WireCell::SimpleTrace* st = new WireCell::SimpleTrace(chan, 0.0, charges);
    -    traces.push_back(ITrace::pointer(st));
    -    }
    -
    -    //Load traces into frame
    -    WireCell::SimpleFrame* sf = new WireCell::SimpleFrame(0, 0, traces);
    -    IFrame::pointer frame = IFrame::pointer(sf);
    -    IFrame::pointer quiet;
    -
    -    //Do filtering
    -    bus(frame, quiet);
    -
    -    //Output results
    -    std::unique_ptr<std::vector<raw::RawDigit> > filteredRawDigit(new std::vector<raw::RawDigit>);
    -    std::vector< short > waveform;
    -
    -    auto quiet_traces = quiet->traces();
    -    for (auto quiet_trace : *quiet_traces.get()) {
    -        //int tbin = quiet_trace->tbin();
    -        unsigned int ch = quiet_trace->channel();
    -        auto quiet_charges = quiet_trace->charge();
    -    int counter = 0;
    -    waveform.clear();
    -          for (auto q : quiet_charges) {
    -        waveform.push_back(q);
    -        counter++;
    -    }
    -    unsigned int n_samp = waveform.size();
    -    filteredRawDigit->emplace_back( raw::RawDigit( ch , n_samp, waveform, raw::kNone) );
    -    }
    -
    -    //filtered raw digits    
    -    evt.put(std::move(filteredRawDigit));
    -  }
    -  
    -  DEFINE_ART_MODULE(Test)
    -
    -} //end namespace testalg
    -
    -#endif //TESTMODULE_H

### larwirecell/LArInterface/WireCellNoiseFilter_module.cc

    diff --git a/larwirecell/LArInterface/WireCellNoiseFilter_module.cc b/larwirecell/LArInterface/WireCellNoiseFilter_module.cc
    new file mode 100644
    index 0000000..ae36738
    --- /dev/null
    +++ b/larwirecell/LArInterface/WireCellNoiseFilter_module.cc
    @@ -0,0 +1,323 @@
    +#ifndef WIRECELLNOISEFILTERMODULE_H   // <--- this is not necessary since this file is not included...
    +#define WIRECELLNOISEFILTERMODULE_H
    +
    +// Framework includes
    +#include "art/Framework/Principal/Event.h" 
    +
    +#include "art/Framework/Core/ModuleMacros.h" 
    +#include "art/Framework/Core/EDProducer.h" 
    +#include "art/Framework/Principal/Handle.h" 
    +#include "art/Framework/Services/Optional/TFileService.h" 
    +#include "art/Framework/Services/Registry/ServiceHandle.h" 
    +#include "messagefacility/MessageLogger/MessageLogger.h" 
    +
    +#include "lardataobj/RawData/RawDigit.h" 
    +#include "lardataobj/RawData/raw.h" 
    +
    +#include <numeric>        // iota
    +#include "WireCellUtil/Units.h" 
    +#include "WireCellIface/SimpleFrame.h" 
    +#include "WireCellIface/SimpleTrace.h" 
    +#include "WireCellSigProc/OmnibusNoiseFilter.h" 
    +#include "WireCellSigProc/OneChannelNoise.h" 
    +#include "WireCellSigProc/CoherentNoiseSub.h" 
    +#include "WireCellSigProc/SimpleChannelNoiseDB.h" 
    +
    +// Undefine the def in WireCellUtil/Units.h so we can regain the CLHEP definitions in the below header files
    +// They don't have the "units" namespace...
    +#undef HEP_SYSTEM_OF_UNITS_H
    +
    +#include "larevt/CalibrationDBI/Interface/DetPedestalService.h" 
    +#include "larevt/CalibrationDBI/Interface/DetPedestalProvider.h" 
    +#include "larevt/CalibrationDBI/Interface/ChannelStatusService.h" 
    +#include "larevt/CalibrationDBI/Interface/ChannelStatusProvider.h" 
    +#include "lardata/DetectorInfoServices/DetectorPropertiesService.h" 
    +#include "larcore/Geometry/Geometry.h" 
    +
    +#include <string>
    +#include <vector>
    +#include <iostream>
    +
    +using namespace WireCell;
    +//using namespace std;
    +
    +namespace noisefilteralg {
    +
    +class WireCellNoiseFilter : public art::EDProducer {
    +
    +public:
    +    explicit WireCellNoiseFilter(fhicl::ParameterSet const& pset);
    +    virtual ~WireCellNoiseFilter();
    +
    +    void produce(art::Event & evt);
    +    void reconfigure(fhicl::ParameterSet const& pset);
    +    
    +    void beginJob();
    +    void endJob();
    +
    +private:
    +    
    +    void DoNoiseFilter(const std::vector<raw::RawDigit>&, std::vector<raw::RawDigit>&) const;
    +
    +    //******************************
    +    //Variables Taken from FHICL File
    +    std::string       fDigitModuleLabel;   //label for rawdigit module
    +    bool              fDoNoiseFiltering;
    +    bool              fTruncateTicks;
    +    size_t            fWindowSize;
    +    size_t            fNumTicksToDropFront;
    +    
    +    // services
    +}; //end class Noise
    +
    +
    +//-------------------------------------------------------------------
    +WireCellNoiseFilter::WireCellNoiseFilter(fhicl::ParameterSet const& pset)
    +    : EDProducer()
    +{
    +    this->reconfigure(pset);
    +    produces<std::vector<raw::RawDigit> >();
    +}
    +
    +//-------------------------------------------------------------------
    +WireCellNoiseFilter::~WireCellNoiseFilter(){}
    +
    +//-------------------------------------------------------------------
    +void WireCellNoiseFilter::reconfigure(fhicl::ParameterSet const& pset){
    +    fDigitModuleLabel    = pset.get<std::string>("DigitModuleLabel",    "daq");
    +    fDoNoiseFiltering    = pset.get<bool>       ("DoNoiseFiltering",    true );
    +    fTruncateTicks       = pset.get<bool>       ("TruncateTicks",       true );
    +    fWindowSize          = pset.get<size_t>     ("WindowSize",          6400 );
    +    fNumTicksToDropFront = pset.get<size_t>     ("NumTicksToDropFront", 2400 );
    +}
    +
    +//-------------------------------------------------------------------
    +void WireCellNoiseFilter::beginJob(){
    +    art::ServiceHandle<art::TFileService> tfs;
    +    //art::ServiceHandle<util::LArWireCellNoiseFilterService> larWireCellNF;
    +    //larWireCellNF->print(17);
    +}
    +
    +//-------------------------------------------------------------------
    +void WireCellNoiseFilter::endJob(){
    +    art::ServiceHandle<art::TFileService> tfs;
    +}
    +  
    +//-------------------------------------------------------------------
    +void WireCellNoiseFilter::produce(art::Event & evt)
    +{
    +    // Recover services we will need
    +    const lariov::DetPedestalProvider&   pedestalValues     = art::ServiceHandle<lariov::DetPedestalService>()->GetPedestalProvider();
    +    const detinfo::DetectorProperties&   detectorProperties = *lar::providerFrom<detinfo::DetectorPropertiesService>();
    +    larana/T0Finder/PhotonCounterT0Matching_module.cc
    +    art::Handle< std::vector<raw::RawDigit> > rawDigitHandle;
    +    evt.getByLabel(fDigitModuleLabel,rawDigitHandle);
    +    
    +    // Define the output vector (in case we don't do anything)
    +    std::unique_ptr<std::vector<raw::RawDigit> > filteredRawDigit(new std::vector<raw::RawDigit>);
    +    
    +    if (rawDigitHandle.isValid() && rawDigitHandle->size() > 0)
    +    {
    +        const std::vector<raw::RawDigit>& rawDigitVector(*rawDigitHandle);
    +        
    +        if (fDoNoiseFiltering) DoNoiseFilter(rawDigitVector, *filteredRawDigit);
    +        else
    +        {
    +            // Enable truncation
    +            size_t startBin(0);
    +            size_t stopBin(detectorProperties.NumberTimeSamples());
    +            
    +            if (fTruncateTicks)
    +            {
    +                startBin = fNumTicksToDropFront;
    +                stopBin  = fNumTicksToDropFront + fWindowSize;
    +            }
    +            
    +            raw::RawDigit::ADCvector_t outputVector(detectorProperties.NumberTimeSamples());
    +            
    +            for(const auto& rawDigit : rawDigitVector)
    +            {
    +                if (rawDigit.NADC() < detectorProperties.NumberTimeSamples()) continue;
    +                
    +                const raw::RawDigit::ADCvector_t& rawAdcVec = rawDigit.ADCs();
    +                
    +                unsigned int channel  = rawDigit.Channel();
    +                float        pedestal = pedestalValues.PedMean(channel);
    +                
    +                std::copy(rawAdcVec.begin() + startBin, rawAdcVec.begin() + stopBin, outputVector.begin());
    +                
    +                filteredRawDigit->emplace_back( raw::RawDigit( channel , outputVector.size(), outputVector, raw::kNone) );
    +                filteredRawDigit->back().SetPedestal(pedestal,2.0);
    +            }
    +        }
    +    }
    +
    +    //filtered raw digits    
    +    evt.put(std::move(filteredRawDigit));
    +}
    +    
    +void WireCellNoiseFilter::DoNoiseFilter(const std::vector<raw::RawDigit>& inputWaveforms, std::vector<raw::RawDigit>& outputWaveforms) const
    +{
    +    // Recover services we will need
    +    const lariov::ChannelStatusProvider& channelStatus      = art::ServiceHandle<lariov::ChannelStatusService>()->GetProvider();
    +    const lariov::DetPedestalProvider&   pedestalValues     = art::ServiceHandle<lariov::DetPedestalService>()->GetPedestalProvider();
    +    const geo::GeometryCore&             geometry           = *lar::providerFrom<geo::Geometry>();
    +    const detinfo::DetectorProperties&   detectorProperties = *lar::providerFrom<detinfo::DetectorPropertiesService>();
    +    
    +    const unsigned int n_channels = inputWaveforms.size();
    +    
    +    // S&C microboone sampling parameter database
    +    const double tick     = detectorProperties.SamplingRate(); // 0.5 * units::microsecond;
    +    const size_t nsamples = detectorProperties.NumberTimeSamples();
    +    
    +    // Q&D microboone channel map
    +    std::vector<int> uchans(geometry.Nwires(0)), vchans(geometry.Nwires(1)), wchans(geometry.Nwires(2));
    +    const int nchans = uchans.size() + vchans.size() + wchans.size();
    +    std::iota(uchans.begin(), uchans.end(), 0);
    +    std::iota(vchans.begin(), vchans.end(), vchans.size());
    +    std::iota(wchans.begin(), wchans.end(), vchans.size() + uchans.size());
    +    
    +    // Q&D nominal baseline
    +    const double unombl=2048.0, vnombl=2048.0, wnombl=400.0;
    +    
    +    // Q&D miss-configured channel database
    +    std::vector<int> miscfgchan;
    +    const double from_gain_mVfC=7.8, to_gain_mVfC=14.0,from_shaping=1.0*units::microsecond, to_shaping=2.0*units::microsecond;
    +    for (int ind=2016; ind<= 2095; ++ind) { miscfgchan.push_back(ind); }
    +    for (int ind=2192; ind<= 2303; ++ind) { miscfgchan.push_back(ind); }
    +    for (int ind=2352; ind< 2400; ++ind)  { miscfgchan.push_back(ind); }
    +    
    +    // Recover bad channels from the database
    +    std::vector<int> bad_channels;
    +    for(int channelIdx=0; channelIdx<nchans; channelIdx++) if (channelStatus.IsBad(channelIdx)) bad_channels.push_back(channelIdx);
    +    
    +    // Q&D RC+RC time constant - all have same.
    +    const double rcrc = 1.0*units::millisecond;
    +    std::vector<int> rcrcchans(nchans);
    +    std::iota(rcrcchans.begin(), rcrcchans.end(), 0);
    +    
    +    //harmonic noises
    +    std::vector<int> harmonicchans(uchans.size() + vchans.size());
    +    std::iota(harmonicchans.begin(), harmonicchans.end(), 0);
    +    
    +    std::vector<int> special_chans;
    +    special_chans.push_back(2240);
    +    
    +    WireCellSigProc::SimpleChannelNoiseDB::mask_t h36kHz(0,169,173);
    +    WireCellSigProc::SimpleChannelNoiseDB::mask_t h108kHz(0,513,516);
    +    WireCellSigProc::SimpleChannelNoiseDB::mask_t hspkHz(0,17,19);
    +    WireCellSigProc::SimpleChannelNoiseDB::multimask_t hharmonic;
    +    hharmonic.push_back(h36kHz);
    +    hharmonic.push_back(h108kHz);
    +    WireCellSigProc::SimpleChannelNoiseDB::multimask_t hspecial;
    +    hspecial.push_back(h36kHz);
    +    hspecial.push_back(h108kHz);
    +    hspecial.push_back(hspkHz);
    +    
    +    // do the coherent subtraction
    +    std::vector< std::vector<int> > channel_groups;
    +    for (unsigned int i=0;i!=172;i++){
    +        //for (int i=150;i!=151;i++){
    +        std::vector<int> channel_group;
    +        for (int j=0;j!=48;j++){
    +            channel_group.push_back(i*48+j);
    +        }
    +        channel_groups.push_back(channel_group);
    +    }
    +    
    +    auto noise = new WireCellSigProc::SimpleChannelNoiseDB;
    +    // initialize
    +    noise->set_sampling(tick, fWindowSize);
    +    // set nominal baseline
    +    noise->set_nominal_baseline(uchans, unombl);
    +    noise->set_nominal_baseline(vchans, vnombl);
    +    noise->set_nominal_baseline(wchans, wnombl);
    +    // set misconfigured channels
    +    noise->set_gains_shapings(miscfgchan, from_gain_mVfC, to_gain_mVfC, from_shaping, to_shaping);
    +    // do the RCRC
    +    noise->set_rcrc_constant(rcrcchans, rcrc);
    +    // set initial bad channels
    +    noise->set_bad_channels(bad_channels);
    +    // set the harmonic filter
    +    noise->set_filter(harmonicchans,hharmonic);
    +    noise->set_filter(special_chans,hspecial);
    +    noise->set_channel_groups(channel_groups);
    +    //Define database object
    +    std::shared_ptr<WireCell::IChannelNoiseDatabase> noise_sp(noise);
    +    
    +    auto one = new WireCellSigProc::OneChannelNoise;
    +    one->set_channel_noisedb(noise_sp);
    +    std::shared_ptr<WireCell::IChannelFilter> one_sp(one);
    +    auto many = new WireCellSigProc::CoherentNoiseSub;
    +    std::shared_ptr<WireCell::IChannelFilter> many_sp(many);
    +    
    +    //define noisefilter object
    +    WireCellSigProc::OmnibusNoiseFilter bus;
    +    bus.set_channel_filters({one_sp});
    +    bus.set_grouped_filters({many_sp});
    +    bus.set_channel_noisedb(noise_sp);
    +    
    +    // Enable truncation
    +    size_t startBin(0);
    +    size_t stopBin(nsamples);
    +    
    +    if (fTruncateTicks)
    +    {
    +        startBin = fNumTicksToDropFront;
    +        stopBin  = fNumTicksToDropFront + fWindowSize;
    +    }
    +    
    +    //load waveforms into traces
    +    ITrace::vector traces;
    +    for(unsigned int ich=0; ich<n_channels; ich++)
    +    {
    +        if( inputWaveforms.at(ich).NADC() < nsamples ) continue;
    +        
    +        const raw::RawDigit::ADCvector_t& rawAdcVec = inputWaveforms.at(ich).ADCs();
    +        
    +        ITrace::ChargeSequence charges;
    +        
    +        charges.resize(fWindowSize);
    +        
    +        std::transform(rawAdcVec.begin() + startBin, rawAdcVec.begin() + stopBin, charges.begin(), [](auto& adcVal){return float(adcVal);});
    +        
    +        unsigned int chan = inputWaveforms.at(ich).Channel();
    +        WireCell::SimpleTrace* st = new WireCell::SimpleTrace(chan, 0.0, charges);
    +        traces.push_back(ITrace::pointer(st));
    +    }
    +    
    +    //Load traces into frame
    +    WireCell::SimpleFrame* sf = new WireCell::SimpleFrame(0, 0, traces);
    +    IFrame::pointer frame = IFrame::pointer(sf);
    +    IFrame::pointer quiet;
    +    
    +    //Do filtering
    +    bus(frame, quiet);
    +    
    +    //Output results
    +    std::vector< short > waveform(fWindowSize);
    +    
    +    auto quiet_traces = quiet->traces();
    +    for (auto quiet_trace : *quiet_traces.get()) {
    +        //int tbin = quiet_trace->tbin();
    +        unsigned int channel = quiet_trace->channel();
    +        auto quiet_charges = quiet_trace->charge();
    +        
    +        // Recover the database version of the pedestal, we'll offset the waveforms so it matches
    +        float pedestal = pedestalValues.PedMean(channel);
    +        
    +        std::transform(quiet_charges.begin(), quiet_charges.end(), waveform.begin(), [pedestal](auto charge){return std::round(charge+pedestal);});
    +        
    +        outputWaveforms.emplace_back( raw::RawDigit( channel , waveform.size(), waveform, raw::kNone) );
    +        outputWaveforms.back().SetPedestal(pedestal,2.0);
    +    }
    +    
    +    return;
    +}
    +
    +  
    +DEFINE_ART_MODULE(WireCellNoiseFilter)
    +
    +} //end namespace WireCellNoiseFilteralg
    +
    +#endif //WireCellNoiseFilterMODULE_H

### larwirecell/LArInterface/wirecellmodules.fcl

    diff --git a/larwirecell/LArInterface/wirecellmodules.fcl b/larwirecell/LArInterface/wirecellmodules.fcl
    new file mode 100644
    index 0000000..90af2f9
    --- /dev/null
    +++ b/larwirecell/LArInterface/wirecellmodules.fcl
    @@ -0,0 +1,16 @@
    +// from larreco/RecoAlg:
    +#include "hitalgorithms.fcl" 
    +
    +BEGIN_PROLOG
    +
    +wirecellnoisefilter:
    +{
    +  module_type:         "WireCellNoiseFilter" 
    +  DigitModuleLabel:    "daq"                  # RawDigit producer
    +  DoNoiseFiltering:    true                   # Filter noise, false = pass through
    +  TruncateTicks:       false                  # Truncate the waveoforms?
    +  WindowSize:          9600                   # Total size of waveform
    +  NumTicksToDropFront: 0                      # Number ticks to drop from front
    +}
    +
    +END_PROLOG

### larwirecell/LArInterface/wirecellmodules_microboone.fcl

    diff --git a/larwirecell/LArInterface/wirecellmodules_microboone.fcl b/larwirecell/LArInterface/wirecellmodules_microboone.fcl
    new file mode 100644
    index 0000000..fad2929
    --- /dev/null
    +++ b/larwirecell/LArInterface/wirecellmodules_microboone.fcl
    @@ -0,0 +1,11 @@
    +#include "wirecellmodules.fcl" 
    +
    +BEGIN_PROLOG
    +
    +microboone_wirecellnoisefilter:                     @local::wirecellnoisefilter
    +microboone_wirecellnoisefilter.DoNoiseFiltering:    true
    +microboone_wirecellnoisefilter.TruncateTicks:       true
    +microboone_wirecellnoisefilter.WindowSize:          6400
    +microboone_wirecellnoisefilter.NumTicksToDropFront: 2400
    +
    +END_PROLOG

larsim
------------------

### larsim/EventGenerator/MARLEY/MARLEYGen_module.cc

    diff --git a/larsim/EventGenerator/MARLEY/MARLEYGen_module.cc b/larsim/EventGenerator/MARLEY/MARLEYGen_module.cc
    index 259f84b..6648eca 100644
    --- a/larsim/EventGenerator/MARLEY/MARLEYGen_module.cc
    +++ b/larsim/EventGenerator/MARLEY/MARLEYGen_module.cc
    @@ -493,8 +493,8 @@ void evgen::MarleyGen::reconfigure_marley(const fhicl::ParameterSet& p)

    fhicl::ParameterSet source_params = p.get<fhicl::ParameterSet>("source");

    -  prepare_reactions(reactions);
    prepare_structure(structure);
    +  prepare_reactions(reactions);
    prepare_neutrino_source(source_params);
    }

### larsim/MCCheater/PhotonBackTracker.h

    diff --git a/larsim/MCCheater/PhotonBackTracker.h b/larsim/MCCheater/PhotonBackTracker.h
    index 28fe9ae..c222539 100644
    --- a/larsim/MCCheater/PhotonBackTracker.h
    +++ b/larsim/MCCheater/PhotonBackTracker.h
    @@ -42,7 +42,7 @@ namespace cheat{
    public:

    PhotonBackTracker(fhicl::ParameterSet const& pset,
    -        art::ActivityRegistry&     reg);
    +    art::ActivityRegistry&     reg);
    ~PhotonBackTracker();

    void reconfigure(fhicl::ParameterSet const& pset);
    @@ -80,7 +80,7 @@ namespace cheat{

    // method to return a subset of allhits that are matched to a list of TrackIDs
    const std::vector<std::vector<art::Ptr<recob::OpHit>>> TrackIDsToOpHits(std::vector<art::Ptr<recob::OpHit>> const& allhits,
    -                                    std::vector<int> const& tkIDs);
    +                  std::vector<int> const& tkIDs);

    // method to return the EveIDs of particles contributing ionization
    // electrons to the identified hit
    @@ -99,43 +99,43 @@ namespace cheat{
    std::vector<double>  SimSDPsToXYZ(std::vector<sim::SDP> const& ides);

    // method to return the XYZ position of the weighted average energy deposition for a given hit
    -    std::vector<double>  OpHitToXYZ(art::Ptr<recob::OpHit> const& hit);                  
    +    std::vector<double>  OpHitToXYZ(art::Ptr<recob::OpHit> const& hit);          

    // method to return the XYZ position of a space point (unweighted average XYZ of component hits).
    /*    std::vector<double> SpacePointToXYZ(art::Ptr<recob::SpacePoint> const& spt,
    -                    art::Event                  const& evt,
    -                    std::string                 const& label);*/
    +          art::Event                  const& evt,
    +          std::string                 const& label);*/

    // method to return the XYZ position of a space point (unweighted average XYZ of component hits).
    /*    std::vector<double> SpacePointHitsToXYZ(art::PtrVector<recob::Hit> const& hits);*/

    // method to return the fraction of hits in a collection that come from the specified Geant4 track ids 
    double              OpHitCollectionPurity(std::set<int>                              trackIDs, 
    -                        std::vector< art::Ptr<recob::OpHit> > const& hits);
    +              std::vector< art::Ptr<recob::OpHit> > const& hits);

    // method to return the fraction of all hits in an event from a specific set of Geant4 track IDs that are 
    // represented in a collection of hits
    double              OpHitCollectionEfficiency(std::set<int>                              trackIDs, 
    -                        std::vector< art::Ptr<recob::OpHit> > const& hits,
    -                        std::vector< art::Ptr<recob::OpHit> > const& allhits);
    +            std::vector< art::Ptr<recob::OpHit> > const& hits,
    +            std::vector< art::Ptr<recob::OpHit> > const& allhits);
    double              OpHitCollectionEfficiency(std::set<int>                              trackIDs, 
    -                        std::vector< art::Ptr<recob::OpHit> > const& hits,
    -                        std::vector< art::Ptr<recob::OpHit> > const& allhits,
    -                        geo::View_t                         const& view);
    +            std::vector< art::Ptr<recob::OpHit> > const& hits,
    +            std::vector< art::Ptr<recob::OpHit> > const& allhits,
    +            geo::View_t                         const& view);

    // method to return the fraction of charge in a collection that come from the specified Geant4 track ids 
    double              OpHitChargeCollectionPurity(std::set<int>                              trackIDs, 
    -                          std::vector< art::Ptr<recob::OpHit> > const& hits);
    +              std::vector< art::Ptr<recob::OpHit> > const& hits);

    // method to return the fraction of all charge in an event from a specific set of Geant4 track IDs that are 
    // represented in a collection of hits
    double              OpHitChargeCollectionEfficiency(std::set<int>                              trackIDs, 
    -                              std::vector< art::Ptr<recob::OpHit> > const& hits,
    -                              std::vector< art::Ptr<recob::OpHit> > const& allhits);
    +                  std::vector< art::Ptr<recob::OpHit> > const& hits,
    +                  std::vector< art::Ptr<recob::OpHit> > const& allhits);
    double              OpHitChargeCollectionEfficiency(std::set<int>                              trackIDs, 
    -                              std::vector< art::Ptr<recob::OpHit> > const& hits,
    -                              std::vector< art::Ptr<recob::OpHit> > const& allhits,
    -                              geo::View_t                         const& view);
    +                  std::vector< art::Ptr<recob::OpHit> > const& hits,
    +                  std::vector< art::Ptr<recob::OpHit> > const& allhits,
    +                  geo::View_t                         const& view);

    // method to return all EveIDs corresponding to the current sim::ParticleList
    std::set<int>       GetSetOfEveIDs();
    @@ -152,9 +152,9 @@ namespace cheat{
    const std::vector<const sim::OpDetBacktrackerRecord*>& OpDetBacktrackerRecords() const { return cOpDetBacktrackerRecords; } 

    void ChannelToTrackSDPs(std::vector<sim::TrackSDP>& trackSDPs,
    -              int channel,
    -              const double hit_start_time,
    -              const double hit_end_time);
    +        int channel,
    +        const double hit_start_time,
    +        const double hit_end_time);

    private:

### larsim/MCCheater/PhotonBackTracker_service.cc

    diff --git a/larsim/MCCheater/PhotonBackTracker_service.cc b/larsim/MCCheater/PhotonBackTracker_service.cc
    index 6e073c8..b6b5b6d 100644
    --- a/larsim/MCCheater/PhotonBackTracker_service.cc
    +++ b/larsim/MCCheater/PhotonBackTracker_service.cc
    @@ -31,7 +31,7 @@ namespace cheat{

    //----------------------------------------------------------------------
    PhotonBackTracker::PhotonBackTracker(const fhicl::ParameterSet& pset,
    -               art::ActivityRegistry& reg)
    +         art::ActivityRegistry& reg)
    {
    reconfigure(pset);

    @@ -67,8 +67,8 @@ namespace cheat{
    // if that is the case, we'll take care of it later
    if(pHandle.failedToGet()){
    mf::LogWarning("PhotonBackTracker") << "failed to get handle to simb::MCParticle from " 
    -                    << fG4ModuleLabel
    -                    << ", return";
    +            << fG4ModuleLabel
    +            << ", return";
    return;
    }

    @@ -82,31 +82,31 @@ namespace cheat{

    if( fo.isValid() ){
    for(size_t p = 0; p < pHandle->size(); ++p){
    -    
    -    simb::MCParticle *part = new simb::MCParticle(pHandle->at(p));
    -    fParticleList.Add(part);
    -    
    -    // get the simb::MCTruth associated to this sim::ParticleList
    -    try{
    -      art::Ptr<simb::MCTruth> mct = fo.at(p);
    -      if(fMCTruthList.size() < 1) fMCTruthList.push_back(mct);
    -      else{
    -        // check that we are not adding a simb::MCTruth twice to the collection
    -        // we know that all the particles for a given simb::MCTruth are put into the
    -        // collection of particles at the same time, so we can just check that the 
    -        // current art::Ptr has a different id than the last one put 
    -        if(!(mct == fMCTruthList.back())) fMCTruthList.push_back(mct);
    -      }
    -      // fill the track id to mctruth index map
    -      fTrackIDToMCTruthIndex[pHandle->at(p).TrackId()] = fMCTruthList.size() - 1;
    -    }
    -    catch(cet::exception &ex){
    -      mf::LogWarning("PhotonBackTracker") << "unable to find MCTruth from ParticleList " 
    -                    << "created in " << fG4ModuleLabel << " " 
    -                    << "any attempt to get the MCTruth objects from " 
    -                    << "the backtracker will fail\n" 
    -                    << "message from caught exception:\n" << ex;
    -    }    
    +  
    +  simb::MCParticle *part = new simb::MCParticle(pHandle->at(p));
    +  fParticleList.Add(part);
    +  
    +  // get the simb::MCTruth associated to this sim::ParticleList
    +  try{
    +    art::Ptr<simb::MCTruth> mct = fo.at(p);
    +    if(fMCTruthList.size() < 1) fMCTruthList.push_back(mct);
    +    else{
    +      // check that we are not adding a simb::MCTruth twice to the collection
    +      // we know that all the particles for a given simb::MCTruth are put into the
    +      // collection of particles at the same time, so we can just check that the 
    +      // current art::Ptr has a different id than the last one put 
    +      if(!(mct == fMCTruthList.back())) fMCTruthList.push_back(mct);
    +    }
    +    // fill the track id to mctruth index map
    +    fTrackIDToMCTruthIndex[pHandle->at(p).TrackId()] = fMCTruthList.size() - 1;
    +  }
    +  catch(cet::exception &ex){
    +    mf::LogWarning("PhotonBackTracker") << "unable to find MCTruth from ParticleList " 
    +          << "created in " << fG4ModuleLabel << " " 
    +          << "any attempt to get the MCTruth objects from " 
    +          << "the backtracker will fail\n" 
    +          << "message from caught exception:\n" << ex;
    +  }  
    }// end loop over particles to get MCTruthList  
    }// end if fo.isValid()

    @@ -119,10 +119,10 @@ namespace cheat{
    fParticleList.AdoptEveIdCalculator(new sim::EmEveIdCalculator);

    LOG_DEBUG("PhotonBackTracker") << "PhotonBackTracker has " << cOpDetBacktrackerRecords.size()
    -                 << " sim::OpDetBacktrackerRecords and " << GetSetOfTrackIDs().size()
    -                 << " tracks.  The particles are:\n" 
    -                 << fParticleList
    -                 << "\n the MCTruth information is\n";
    +           << " sim::OpDetBacktrackerRecords and " << GetSetOfTrackIDs().size()
    +           << " tracks.  The particles are:\n" 
    +           << fParticleList
    +           << "\n the MCTruth information is\n";
    for(size_t mc = 0; mc < fMCTruthList.size(); ++mc)
    LOG_DEBUG("PhotonBackTracker") << *(fMCTruthList.at(mc).get());

    @@ -136,8 +136,8 @@ namespace cheat{

    if(part_it == fParticleList.end()){
    mf::LogWarning("PhotonBackTracker") << "can't find particle with track id " 
    -                    << id << " in sim::ParticleList" 
    -                    << " returning null pointer";
    +            << id << " in sim::ParticleList" 
    +            << " returning null pointer";
    return 0;
    }

    @@ -161,8 +161,8 @@ namespace cheat{

    if(/* mct < 0 || */ mct > fMCTruthList.size() ) 
    throw cet::exception("PhotonBackTracker") << "attempting to find MCTruth index for " 
    -                      << "out of range value: " << mct
    -                      << "/" << fMCTruthList.size() << "\n";
    +            << "out of range value: " << mct
    +            << "/" << fMCTruthList.size() << "\n";

    return fMCTruthList[mct];
    }
    @@ -179,12 +179,12 @@ namespace cheat{

    // loop over the SDPMAP      
    for(auto mapitr = pdTimeSDPmap.begin(); mapitr != pdTimeSDPmap.end(); mapitr++){
    -    
    -    // loop over the vector of SDP objects.
    -    const std::vector<sim::SDP>& sdpvec = (*mapitr).second;
    -    for(size_t iv = 0; iv < sdpvec.size(); ++iv){ 
    -      if( abs(sdpvec[iv].trackID) == id) sdps.push_back(sdpvec[iv]);
    -    }
    +  
    +  // loop over the vector of SDP objects.
    +  const std::vector<sim::SDP>& sdpvec = (*mapitr).second;
    +  for(size_t iv = 0; iv < sdpvec.size(); ++iv){ 
    +    if( abs(sdpvec[iv].trackID) == id) sdps.push_back(sdpvec[iv]);
    +  }

    } // end loop over map from sim::OpDetBacktrackerRecord
    } // end loop over sim::OpDetBacktrackerRecords
    @@ -221,14 +221,14 @@ namespace cheat{
    const double start = (pTime-pWidth)*1000-fDelay;
    const double end   = (pTime+pWidth)*1000-fDelay;

    -      this->ChannelToTrackSDPs(trackSDPs, opHit->OpChannel(), start, end);
    +    this->ChannelToTrackSDPs(trackSDPs, opHit->OpChannel(), start, end);

    return trackSDPs;
    }

    //----------------------------------------------------------------------
    const std::vector<std::vector<art::Ptr<recob::OpHit>>> PhotonBackTracker::TrackIDsToOpHits(std::vector<art::Ptr<recob::OpHit>> const& allOpHits, 
    -                                           std::vector<int> const& tkIDs)
    +                       std::vector<int> const& tkIDs)
    {
    // returns a subset of the opHits in the allOpHits collection that are matched
    // to MC particles listed in tkIDs
    @@ -369,7 +369,7 @@ namespace cheat{

    // loop over the ides and extract the track ids
    for(size_t i = 0; i < trackSDPs.size(); ++i) {
    -    trackIDs.insert(trackSDPs[i].trackID);
    +  trackIDs.insert(trackSDPs[i].trackID);
    }

    itr++;
    @@ -380,7 +380,7 @@ namespace cheat{

    //----------------------------------------------------------------------
    double PhotonBackTracker::OpHitCollectionPurity(std::set<int>                              trackIDs, 
    -                      std::vector< art::Ptr<recob::OpHit> > const& opHits)
    +            std::vector< art::Ptr<recob::OpHit> > const& opHits)
    {
    // get the list of EveIDs that correspond to the opHits in this collection
    // if the EveID shows up in the input list of trackIDs, then it counts
    @@ -397,10 +397,10 @@ namespace cheat{
    // don't double count if this opHit has more than one of the
    // desired track IDs associated with it
    for(size_t e = 0; e < opHitTrackIDs.size(); ++e){
    -    if(trackIDs.find(opHitTrackIDs[e].trackID) != trackIDs.end()){
    -      desired += 1.;
    -      break;
    -    }
    +  if(trackIDs.find(opHitTrackIDs[e].trackID) != trackIDs.end()){
    +    desired += 1.;
    +    break;
    +  }
    }

    }// end loop over opHits
    @@ -413,7 +413,7 @@ namespace cheat{

    //----------------------------------------------------------------------
    double PhotonBackTracker::OpHitChargeCollectionPurity(std::set<int>                              trackIDs, 
    -                        std::vector< art::Ptr<recob::OpHit> > const& opHits)
    +            std::vector< art::Ptr<recob::OpHit> > const& opHits)
    {
    // get the list of EveIDs that correspond to the opHits in this collection
    // if the EveID shows up in the input list of trackIDs, then it counts
    @@ -432,10 +432,10 @@ namespace cheat{
    // don't double count if this opHit has more than one of the
    // desired track IDs associated with it
    for(size_t e = 0; e < opHitTrackIDs.size(); ++e){
    -    if(trackIDs.find(opHitTrackIDs[e].trackID) != trackIDs.end()){
    -      desired += opHit->Area();
    -      break;
    -    }
    +  if(trackIDs.find(opHitTrackIDs[e].trackID) != trackIDs.end()){
    +    desired += opHit->Area();
    +    break;
    +  }
    }

    }// end loop over opHits
    @@ -449,16 +449,16 @@ namespace cheat{

    //----------------------------------------------------------------------
    double PhotonBackTracker::OpHitCollectionEfficiency(std::set<int>                              trackIDs, 
    -                          std::vector< art::Ptr<recob::OpHit> > const& opHits,
    -                          std::vector< art::Ptr<recob::OpHit> > const& allOpHits,
    -                          geo::View_t                         const& view)
    +                std::vector< art::Ptr<recob::OpHit> > const& opHits,
    +                std::vector< art::Ptr<recob::OpHit> > const& allOpHits,
    +                geo::View_t                         const& view)
    {
    throw cet::exception("PhotonBackTracker")<<"This function is not supported. OpHits do not have type View.\n";
    }

    double PhotonBackTracker::OpHitCollectionEfficiency(std::set<int>                              trackIDs, 
    -                          std::vector< art::Ptr<recob::OpHit> > const& opHits,
    -                          std::vector< art::Ptr<recob::OpHit> > const& allOpHits)
    +                std::vector< art::Ptr<recob::OpHit> > const& opHits,
    +                std::vector< art::Ptr<recob::OpHit> > const& allOpHits)
    {
    // get the list of EveIDs that correspond to the opHits in this collection
    // and the energy associated with the desired trackID
    @@ -478,11 +478,11 @@ namespace cheat{
    // also don't double count if this opHit has more than one of the
    // desired track IDs associated with it
    for(size_t e = 0; e < opHitTrackIDs.size(); ++e){
    -    if(trackIDs.find(opHitTrackIDs[e].trackID) != trackIDs.end() &&
    -       opHitTrackIDs[e].energyFrac             >= fMinOpHitEnergyFraction){
    -      desired += 1.;
    -      break;
    -    }
    +  if(trackIDs.find(opHitTrackIDs[e].trackID) != trackIDs.end() &&
    +     opHitTrackIDs[e].energyFrac             >= fMinOpHitEnergyFraction){
    +    desired += 1.;
    +    break;
    +  }
    }
    }// end loop over opHits

    @@ -498,15 +498,15 @@ namespace cheat{
    std::vector<sim::TrackSDP> opHitTrackIDs = this->OpHitToTrackID(opHit);

    for(size_t e = 0; e < opHitTrackIDs.size(); ++e){
    -    // don't worry about opHits where the energy fraction for the chosen
    -    // trackID is < 0.1
    -    // also don't double count if this opHit has more than one of the
    -    // desired track IDs associated with it
    -    if(trackIDs.find(opHitTrackIDs[e].trackID) != trackIDs.end() &&
    -       opHitTrackIDs[e].energyFrac             >= fMinOpHitEnergyFraction){
    -      total += 1.;
    -      break;
    -    }
    +  // don't worry about opHits where the energy fraction for the chosen
    +  // trackID is < 0.1
    +  // also don't double count if this opHit has more than one of the
    +  // desired track IDs associated with it
    +  if(trackIDs.find(opHitTrackIDs[e].trackID) != trackIDs.end() &&
    +     opHitTrackIDs[e].energyFrac             >= fMinOpHitEnergyFraction){
    +    total += 1.;
    +    break;
    +  }
    }

    }// end loop over all opHits
    @@ -519,15 +519,15 @@ namespace cheat{

    //----------------------------------------------------------------------
    double PhotonBackTracker::OpHitChargeCollectionEfficiency(std::set<int>                              trackIDs, 
    -                            std::vector< art::Ptr<recob::OpHit> > const& opHits,
    -                            std::vector< art::Ptr<recob::OpHit> > const& allOpHits,
    -                            geo::View_t                         const& view)
    +                std::vector< art::Ptr<recob::OpHit> > const& opHits,
    +                std::vector< art::Ptr<recob::OpHit> > const& allOpHits,
    +                geo::View_t                         const& view)
    {
    throw cet::exception("PhotonBackTracker")<<"This function is not supported. OpHits do not have type View.\n";
    }
    double PhotonBackTracker::OpHitChargeCollectionEfficiency(std::set<int>                              trackIDs, 
    -                            std::vector< art::Ptr<recob::OpHit> > const& opHits,
    -                            std::vector< art::Ptr<recob::OpHit> > const& allOpHits)
    +                std::vector< art::Ptr<recob::OpHit> > const& opHits,
    +                std::vector< art::Ptr<recob::OpHit> > const& allOpHits)
    {
    // get the list of EveIDs that correspond to the opHits in this collection
    // and the energy associated with the desired trackID
    @@ -547,11 +547,11 @@ namespace cheat{
    // also don't double count if this opHit has more than one of the
    // desired track IDs associated with it
    for(size_t e = 0; e < opHitTrackIDs.size(); ++e){
    -    if(trackIDs.find(opHitTrackIDs[e].trackID) != trackIDs.end() &&
    -       opHitTrackIDs[e].energyFrac             >= fMinOpHitEnergyFraction){
    -      desired += opHit->Area();
    -      break;
    -    }
    +  if(trackIDs.find(opHitTrackIDs[e].trackID) != trackIDs.end() &&
    +     opHitTrackIDs[e].energyFrac             >= fMinOpHitEnergyFraction){
    +    desired += opHit->Area();
    +    break;
    +  }
    }
    }// end loop over opHits

    @@ -567,15 +567,15 @@ namespace cheat{
    std::vector<sim::TrackSDP> opHitTrackIDs = this->OpHitToTrackID(opHit);

    for(size_t e = 0; e < opHitTrackIDs.size(); ++e){
    -    // don't worry about opHits where the energy fraction for the chosen
    -    // trackID is < 0.1
    -    // also don't double count if this opHit has more than one of the
    -    // desired track IDs associated with it
    -    if(trackIDs.find(opHitTrackIDs[e].trackID) != trackIDs.end() &&
    -       opHitTrackIDs[e].energyFrac             >= fMinOpHitEnergyFraction){
    -      total += opHit->Area();
    -      break;
    -    }
    +  // don't worry about opHits where the energy fraction for the chosen
    +  // trackID is < 0.1
    +  // also don't double count if this opHit has more than one of the
    +  // desired track IDs associated with it
    +  if(trackIDs.find(opHitTrackIDs[e].trackID) != trackIDs.end() &&
    +     opHitTrackIDs[e].energyFrac             >= fMinOpHitEnergyFraction){
    +    total += opHit->Area();
    +    break;
    +  }
    }

    }// end loop over all opHits
    @@ -599,16 +599,16 @@ namespace cheat{

    if(!opDet)
    throw cet::exception("PhotonBackTracker") << "No sim::OpDetBacktrackerRecord corresponding " 
    -                      << "to opDetNum: " << opDetNum << "\n";
    +            << "to opDetNum: " << opDetNum << "\n";

    return opDet;
    }

    //----------------------------------------------------------------------
    void PhotonBackTracker::ChannelToTrackSDPs(std::vector<sim::TrackSDP>&   trackSDPs,
    -                     int channel,
    -                     const double opHit_start_time,
    -                     const double opHit_end_time)
    +             int channel,
    +             const double opHit_start_time,
    +             const double opHit_end_time)
    {
    trackSDPs.clear();

    @@ -629,7 +629,7 @@ namespace cheat{
    // first get the total energy represented by all track ids for 
    // this channel and range of tdc values
    for(size_t e = 0; e < simSDPs.size(); ++e)
    -    totalE += simSDPs[e].energy;
    +  totalE += simSDPs[e].energy;

    // protect against a divide by zero below
    @@ -638,21 +638,21 @@ namespace cheat{
    // loop over the entries in the map and fill the input vectors

    for(size_t e = 0; e < simSDPs.size(); ++e){
    -    
    -    if(simSDPs[e].trackID == sim::NoParticleId) continue;
    -    
    -    sim::TrackSDP info;
    -    info.trackID    = simSDPs[e].trackID;
    -    info.energyFrac = simSDPs[e].energy/totalE;
    -    info.energy     = simSDPs[e].energy;
    -    
    -    trackSDPs.push_back(info);
    -    
    +  
    +  if(simSDPs[e].trackID == sim::NoParticleId) continue;
    +  
    +  sim::TrackSDP info;
    +  info.trackID    = simSDPs[e].trackID;
    +  info.energyFrac = simSDPs[e].energy/totalE;
    +  info.energy     = simSDPs[e].energy;
    +  
    +  trackSDPs.push_back(info);
    +  
    }
    }// end try
    catch(cet::exception e){
    mf::LogWarning("PhotonBackTracker") << "caught exception \n" 
    -                    << e;
    +            << e;
    }

    return;
    @@ -696,12 +696,12 @@ namespace cheat{
    z += weight * sdp.z;

    }// end loop over sim::SDPs
    -    
    +  
    // if the sum of the weights is still 0, then return
    // the obviously stupid default values
    if(w < 1.e-5)
    throw cet::exception("PhotonBackTracker") << "No sim::SDPs providing non-zero number of photons" 
    -                      << " can't determine originating location from truth\n";
    +            << " can't determine originating location from truth\n";

    xyz[0] = x/w;
    xyz[1] = y/w;

### larsim/MCCheater/photonbacktracker.fcl

    diff --git a/larsim/MCCheater/photonbacktracker.fcl b/larsim/MCCheater/photonbacktracker.fcl
    index b02c251..3934c9a 100644
    --- a/larsim/MCCheater/photonbacktracker.fcl
    +++ b/larsim/MCCheater/photonbacktracker.fcl
    @@ -5,13 +5,7 @@ standard_photonbacktracker:
    G4ModuleLabel:            "largeant" # module that produced the sim::Particle and sim::SimChannel objects
    MinimumHitEnergyFraction: 0.1        # minimum fraction of energy a G4 trackID contributes to a hit to be 
    # counted in hit based efficiency and purity calculations
    + Delay:                    0          #This number is the difference between when light arrives at the detector, and the time recorded in OpHits. This number is experiment specific and should be set by each experiment. 
    }

    -jp250L_photonbacktracker:     @local::standard_photonbacktracker
    -bo_photonbacktracker:         @local::standard_photonbacktracker
    -argoneut_photonbacktracker:   @local::standard_photonbacktracker
    -microboone_photonbacktracker: @local::standard_photonbacktracker
    -dune35t_photonbacktracker:    @local::standard_photonbacktracker
    -dunefd_photonbacktracker:     @local::standard_photonbacktracker
    -
    END_PROLOG

larreco
--------------------

### larreco/HitFinder/GausHitFinder_module.cc

    diff --git a/larreco/HitFinder/GausHitFinder_module.cc b/larreco/HitFinder/GausHitFinder_module.cc
    index b35c72a..3273bd0 100644
    --- a/larreco/HitFinder/GausHitFinder_module.cc
    +++ b/larreco/HitFinder/GausHitFinder_module.cc
    @@ -125,7 +125,7 @@ namespace hit{
    size_t              fMaxMultiHit;              ///<maximum hits for multi fit
    int                 fAreaMethod;               ///<Type of area calculation
    std::vector<double> fAreaNorms;                ///<factors for converting area to same units as peak height
    -    bool                fTryNplus1Fits;            ///<whether we will (0) or won't (1) try n+1 fits
    +    bool                fTryNplus1Fits;            ///<whether we will (true) or won't (false) try n+1 fits
    double                fChi2NDFRetry;             ///<Value at which a second n+1 Fit will be tried
    double                fChi2NDF;                  ///maximum Chisquared / NDF allowed for a hit to be saved
    size_t              fNumBinsToAverage;         ///< If bin averaging for peak finding, number bins to average

### larreco/RecoAlg/ImagePatternAlgs/PointIdAlg/PointIdAlg.cxx

    diff --git a/larreco/RecoAlg/ImagePatternAlgs/PointIdAlg/PointIdAlg.cxx b/larreco/RecoAlg/ImagePatternAlgs/PointIdAlg/PointIdAlg.cxx
    index ed5a357..15c78f8 100644
    --- a/larreco/RecoAlg/ImagePatternAlgs/PointIdAlg/PointIdAlg.cxx
    +++ b/larreco/RecoAlg/ImagePatternAlgs/PointIdAlg/PointIdAlg.cxx
    @@ -235,15 +235,17 @@ bool nnet::DataProviderAlg::bufferPatch(size_t wire, float drift) const
    int d0 = fCurrentScaledDrift - halfSizeD;
    int d1 = fCurrentScaledDrift + halfSizeD;

    +    int wsize = fWireDriftData.size();
    for (int w = w0, wpatch = 0; w < w1; ++w, ++wpatch)
    {
    auto & dst = fWireDriftPatch[wpatch];
    -        if ((w >= 0) && (w < (int)fWireDriftData.size()))
    +        if ((w >= 0) && (w < wsize))
    {
    auto & src = fWireDriftData[w];
    +            int dsize = src.size();
    for (int d = d0, dpatch = 0; d < d1; ++d, ++dpatch)
    {
    -                if ((d >= 0) && (d < (int)src.size()))
    +                if ((d >= 0) && (d < dsize))
    {
    dst[dpatch] = src[d];
    }
    @@ -299,12 +301,30 @@ bool nnet::DataProviderAlg::isInsideFiducialRegion(unsigned int wire, float drif
    }
    // ------------------------------------------------------

    +
    +
    +// ------------------------------------------------------
    +// -------------------ModelInterface---------------------
    +// ------------------------------------------------------
    +
    +std::string nnet::ModelInterface::findFile(const char* fileName) const
    +{
    +    std::string fname_out;
    +    cet::search_path sp("FW_SEARCH_PATH");
    +    if (!sp.find_file(fileName, fname_out))
    +    {
    +        throw art::Exception(art::errors::NotFound)
    +            << "Could not find the model file " << fileName;
    +    }
    +    return fname_out;
    +}
    +
    // ------------------------------------------------------
    // -----------------MlpModelInterface--------------------
    // ------------------------------------------------------

    nnet::MlpModelInterface::MlpModelInterface(const char* xmlFileName) :
    -    m(xmlFileName)
    +    m(nnet::ModelInterface::findFile(xmlFileName).c_str())
    {
    mf::LogInfo("MlpModelInterface") << "MLP model loaded.";
    }
    @@ -357,7 +377,7 @@ float nnet::MlpModelInterface::GetOneOutput(int neuronIndex) const
    // ------------------------------------------------------

    nnet::KerasModelInterface::KerasModelInterface(const char* modelFileName) :
    -    m(modelFileName)
    +    m(nnet::ModelInterface::findFile(modelFileName).c_str())
    {
    mf::LogInfo("KerasModelInterface") << "Keras model loaded.";
    }
    @@ -649,6 +669,7 @@ bool nnet::TrainingDataAlg::setWireEdepsAndLabels(

    int best_pdg = pdgs[i0] & nnet::TrainingDataAlg::kPdgMask;
    int vtx_flags = pdgs[i0] & nnet::TrainingDataAlg::kVtxMask;
    +        int type_flags = pdgs[i0] & nnet::TrainingDataAlg::kTypeMask;
    float max_edep = edeps[i0];
    for (size_t k = i0 + 1; k < i1; ++k)
    {
    @@ -658,11 +679,13 @@ bool nnet::TrainingDataAlg::setWireEdepsAndLabels(
    max_edep = ek;
    best_pdg = pdgs[k] & nnet::TrainingDataAlg::kPdgMask; // remember best matching pdg
    }
    +            type_flags |= pdgs[k] & nnet::TrainingDataAlg::kTypeMask; // accumulate track type flags
    vtx_flags |= pdgs[k] & nnet::TrainingDataAlg::kVtxMask;   // accumulate all vtx flags
    }

    wEdep[i] = max_edep;

    +        best_pdg |= type_flags;
    if (fSaveVtxFlags) best_pdg |= vtx_flags;
    wPdg[i] = best_pdg;
    }
    @@ -701,6 +724,32 @@ nnet::TrainingDataAlg::WireDrift nnet::TrainingDataAlg::getProjection(double x,
    }
    // ------------------------------------------------------

    +bool nnet::TrainingDataAlg::isMuonDecaying(const simb::MCParticle & particle,
    +    const std::unordered_map< int, const simb::MCParticle* > & particleMap) const
    +{
    +    bool hasElectron = false, hasNuMu = false, hasNuE = false;
    +
    +    int pdg = abs(particle.PdgCode());
    +    if ((pdg == 13) && (particle.EndProcess() == "FastScintillation")) // potential muon decay at rest
    +    {
    +        unsigned int nSec = particle.NumberDaughters();
    +        for (size_t d = 0; d < nSec; ++d)
    +        {
    +            auto d_search = particleMap.find(particle.Daughter(d));
    +            if (d_search != particleMap.end())
    +            {
    +                auto const & daughter = *((*d_search).second);
    +                int d_pdg = abs(daughter.PdgCode());
    +                if (d_pdg == 11) hasElectron = true;
    +                else if (d_pdg == 14) hasNuMu = true;
    +                else if (d_pdg == 12) hasNuE = true;
    +            }
    +        }
    +    }
    +
    +    return (hasElectron && hasNuMu && hasNuE);
    +}
    +
    void nnet::TrainingDataAlg::collectVtxFlags(
    std::unordered_map< size_t, std::unordered_map< int, int > > & wireToDriftToVtxFlags,
    const std::unordered_map< int, const simb::MCParticle* > & particleMap,
    @@ -729,26 +778,11 @@ void nnet::TrainingDataAlg::collectVtxFlags(
    break;

    case 13:   // mu+/-
    -                if ((particle.EndProcess() == "FastScintillation")) // potential decay at rest
    -                {
    -                    unsigned int nSec = particle.NumberDaughters();
    -                    
    -                    for (size_t d = 0; d < nSec; ++d)
    -                    {
    -                        auto d_search = particleMap.find(particle.Daughter(d));
    -                        if (d_search != particleMap.end())
    -                        {
    -                            auto const & daughter = *((*d_search).second);
    -                            int d_pdg = abs(daughter.PdgCode());
    -                            if (d_pdg == 11)
    -                            {
    -                                //std::cout << "---> mu decay to electron" << std::endl;
    -                                flagsEnd = nnet::TrainingDataAlg::kDecay;
    -                                break;
    -                            }
    -                        }
    -                    }
    -                }
    +                if (nnet::TrainingDataAlg::isMuonDecaying(particle, particleMap))
    +                {
    +                    //std::cout << "---> mu decay to electron" << std::endl;
    +                    flagsEnd = nnet::TrainingDataAlg::kDecay;
    +                }
    break;

    case 111:  // pi0
    @@ -941,19 +975,49 @@ bool nnet::TrainingDataAlg::setEventData(const art::Event& event,
    {
    int pdg = 0;
    int tid = energyDeposit.trackID;
    -                    if (tid < 0) { pdg = 11; tid = -tid; } // negative tid means it is EM activity
    -
    -                    auto search = particleMap.find(tid);
    -                    if (search == particleMap.end())
    +                    if (tid < 0) // negative tid means it is EM activity, and -tid is the mother
    {
    -                        mf::LogWarning("TrainingDataAlg") << "PARTICLE NOT FOUND";
    -                        continue;
    +                        pdg = 11; tid = -tid;
    +                        
    +                        auto search = particleMap.find(tid);
    +                        if (search == particleMap.end())
    +                        {
    +                            mf::LogWarning("TrainingDataAlg") << "PARTICLE NOT FOUND";
    +                            continue;
    +                        }
    +                        auto const & mother = *((*search).second); // mother particle of this EM
    +                        int mPdg = abs(mother.PdgCode());
    +                        if ((mPdg == 13) || (mPdg == 211) || (mPdg == 2212))
    +                        {
    +                            if (energyDeposit.numElectrons > 10) pdg |= nnet::TrainingDataAlg::kDelta; // tag delta ray
    +                        }
    +                    }
    +                    else
    +                    {
    +                        auto search = particleMap.find(tid);
    +                        if (search == particleMap.end())
    +                        {
    +                            mf::LogWarning("TrainingDataAlg") << "PARTICLE NOT FOUND";
    +                            continue;
    +                        }
    +                        auto const & particle = *((*search).second);
    +                        pdg = abs(particle.PdgCode());
    +
    +                        if (pdg == 11) // electron, check if it is Michel
    +                        {
    +                            auto msearch = particleMap.find(particle.Mother());
    +                            if (msearch != particleMap.end())
    +                            {
    +                                auto const & mother = *((*msearch).second);
    +                                if (nnet::TrainingDataAlg::isMuonDecaying(mother, particleMap))
    +                                {
    +                                    pdg |= nnet::TrainingDataAlg::kMichel; // tag Michel
    +                                }
    +                            }
    +                        }
    }

    -                    auto const & particle = *((*search).second);
    -                    if (!pdg) pdg = particle.PdgCode(); // not EM activity so read what PDG it is
    -
    -                    trackToPDG[energyDeposit.trackID] = abs(pdg);
    +                    trackToPDG[energyDeposit.trackID] = pdg;

    double energy = energyDeposit.numElectrons * electronsToGeV;
    timeToTrackToCharge[time][energyDeposit.trackID] += energy;
    @@ -962,6 +1026,7 @@ bool nnet::TrainingDataAlg::setEventData(const art::Event& event,
    } // loop over time slices
    } // for each SimChannel

    +        int type_pdg_mask = nnet::TrainingDataAlg::kTypeMask | nnet::TrainingDataAlg::kPdgMask;
    for (auto const & ttc : timeToTrackToCharge)
    {
    float max_deposit = 0.0;
    @@ -974,11 +1039,11 @@ bool nnet::TrainingDataAlg::setEventData(const art::Event& event,
    max_pdg = trackToPDG[tc.first];
    }            
    }
    -            
    +
    if (ttc.first < (int)labels_deposit.size())
    {
    labels_deposit[ttc.first] = max_deposit;
    -                labels_pdg[ttc.first]     = max_pdg & 0xFFFF;
    +                labels_pdg[ttc.first]     = max_pdg & type_pdg_mask;
    }
    }

### larreco/RecoAlg/ImagePatternAlgs/PointIdAlg/PointIdAlg.h

    diff --git a/larreco/RecoAlg/ImagePatternAlgs/PointIdAlg/PointIdAlg.h b/larreco/RecoAlg/ImagePatternAlgs/PointIdAlg/PointIdAlg.h
    index 109af89..720fe78 100644
    --- a/larreco/RecoAlg/ImagePatternAlgs/PointIdAlg/PointIdAlg.h
    +++ b/larreco/RecoAlg/ImagePatternAlgs/PointIdAlg/PointIdAlg.h
    @@ -168,7 +168,7 @@ public:
    protected:
    ModelInterface(void) { }

    -private:
    +    std::string findFile(const char* fileName) const;
    };
    // ------------------------------------------------------

    @@ -258,18 +258,28 @@ class nnet::TrainingDataAlg : public nnet::DataProviderAlg
    {
    public:

    +    enum EMask
    +    {
    +        kNone     = 0,
    +        kPdgMask  = 0x00000FFF, // pdg code mask
    +        kTypeMask = 0x0000F000, // track type mask
    +        kVtxMask  = 0x0FFF0000  // vertex flags, still can use 0xFFFF0000 if more vtx types needed
    +    };
    +
    +    enum ETrkType
    +    {
    +        kDelta  = 0x1000,      // delta electron
    +        kMichel = 0x2000       // Michel electron
    +    };
    +
    enum EVtxId
    {
    -        kNone  = 0,
    kNuNC  = 0x0010000, kNuCC = 0x0020000,                      // nu interaction type
    kNuE   = 0x0100000, kNuMu = 0x0200000, kNuTau = 0x0400000,  // nu flavor
    kHadr  = 0x1000000,    // hadronic inelastic scattering
    kPi0   = 0x2000000,    // pi0 produced in this vertex
    kDecay = 0x4000000,    // point of particle decay
    kConv  = 0x8000000,    // gamma conversion
    -
    -        kVtxMask = 0x0FFF0000, // vertex flags, still can use 0xFFFF0000 if more vtx types needed
    -        kPdgMask = 0x0000FFFF  // pdg code mask (pdg is saved in the same int as vtx flags)
    };

    struct Config : public nnet::DataProviderAlg::Config
    @@ -336,6 +346,10 @@ private:
    const std::unordered_map< int, const simb::MCParticle* > & particleMap,
    unsigned int view) const;

    +    bool isMuonDecaying(
    +        const simb::MCParticle & particle,
    +        const std::unordered_map< int, const simb::MCParticle* > & particleMap) const;
    +
    std::vector< std::vector<float> > fWireDriftEdep;
    std::vector< std::vector<int> > fWireDriftPdg;

### larreco/RecoAlg/ImagePatternAlgs/scripts/utils.py

    diff --git a/larreco/RecoAlg/ImagePatternAlgs/scripts/utils.py b/larreco/RecoAlg/ImagePatternAlgs/scripts/utils.py
    index e620236..c8229a1 100644
    --- a/larreco/RecoAlg/ImagePatternAlgs/scripts/utils.py
    +++ b/larreco/RecoAlg/ImagePatternAlgs/scripts/utils.py
    @@ -40,9 +40,9 @@ def get_data(fname, drift_margin = 0, crop = True):
    A_pdg[deposit_th_ind] = 0
    tracks = A_pdg.copy()
    showers = A_pdg.copy()
    -    tracks[(A_pdg & 0xFFFF) == 11] = 0
    +    tracks[(A_pdg & 0x0FFF) == 11] = 0
    tracks[tracks > 0]   = 1
    -    showers[(A_pdg & 0xFFFF) != 11] = 0
    +    showers[(A_pdg & 0x0FFF) != 11] = 0
    showers[showers > 0] = 1
    return A_raw, A_deposit, A_pdg, tracks, showers

### larreco/RecoAlg/TrackKalmanFitter.cxx

    diff --git a/larreco/RecoAlg/TrackKalmanFitter.cxx b/larreco/RecoAlg/TrackKalmanFitter.cxx
    index 19fe252..5bb6758 100644
    --- a/larreco/RecoAlg/TrackKalmanFitter.cxx
    +++ b/larreco/RecoAlg/TrackKalmanFitter.cxx
    @@ -201,7 +201,6 @@ bool trkf::TrackKalmanFitter::fitTrack(const recob::Track& track, const std::vec
    for (auto itertrack = fittedTrack.getTrackMap().rbegin(); itertrack != fittedTrack.getTrackMap().rend(); ++itertrack) {
    trkf::KHitTrack& fwdTrack = itertrack->second;
    trkf::KHitWireX khit(dynamic_cast<const trkf::KHitWireX&>(*fwdTrack.getHit().get()));//need a non const copy in case we want to modify the error
    -    if (useRMS_) khit.setMeasError(khit.getMeasError()*khit.getHit()->RMS()*khit.getHit()->RMS()/(std::max(khit.getHit()->SigmaPeakTime()*khit.getHit()->SigmaPeakTime(),0.08333333333f)));

    boost::optional<double> pdist = prop_->noise_prop(trf,khit.getMeasSurface(),trkf::Propagator::BACKWARD,true);
    if (!pdist) {

### larreco/TrackFinder/KalmanFilterFinalTrackFitter_module.cc

    diff --git a/larreco/TrackFinder/KalmanFilterFinalTrackFitter_module.cc b/larreco/TrackFinder/KalmanFilterFinalTrackFitter_module.cc
    index d6728d2..3bf23a1 100644
    --- a/larreco/TrackFinder/KalmanFilterFinalTrackFitter_module.cc
    +++ b/larreco/TrackFinder/KalmanFilterFinalTrackFitter_module.cc
    @@ -197,6 +197,9 @@ trkf::KalmanFilterFinalTrackFitter::KalmanFilterFinalTrackFitter(trkf::KalmanFil

    produces<std::vector<recob::Track> >();
    produces<art::Assns<recob::Track, recob::Hit> >();
    +  if (p_().options().trackFromPF()) {
    +    produces<art::Assns<recob::PFParticle, recob::Track> >();
    +  }

    //throw expections to avoid possible silent failures due to incompatible configuration options
    if (p_().options().trackFromPF()==0 && p_().options().idFromPF())
    @@ -209,7 +212,7 @@ trkf::KalmanFilterFinalTrackFitter::KalmanFilterFinalTrackFitter(trkf::KalmanFil
    throw cet::exception("KalmanFilterFinalTrackFitter") << "Incompatible configuration parameters: cannot use dirFromVec=true with dirFromVtxPF=true." << "\n";
    unsigned int nPFroms = 0;
    if (p_().options().pFromCalo())   nPFroms++;
    -  if (p_().options().pFromMSChi2())    nPFroms++;
    +  if (p_().options().pFromMSChi2()) nPFroms++;
    if (p_().options().pFromLength()) nPFroms++;
    if (p_().options().pFromMC())     nPFroms++;
    if (nPFroms>1) {
    @@ -251,6 +254,8 @@ void trkf::KalmanFilterFinalTrackFitter::produce(art::Event & e)
    }

    if (p_().options().trackFromPF()) {
    +
    +    auto outputPFAssn = std::make_unique<art::Assns<recob::PFParticle, recob::Track> >();

    art::ValidHandle<std::vector<recob::PFParticle> > inputPFParticle = e.getValidHandle<std::vector<recob::PFParticle> >(pfParticleInputTag);
    assocTracks = std::unique_ptr<art::FindManyP<recob::Track> >(new art::FindManyP<recob::Track>(inputPFParticle, e, pfParticleInputTag));
    @@ -297,8 +302,12 @@ void trkf::KalmanFilterFinalTrackFitter::produce(art::Event & e)
    for (auto const& trhit: outHits) {
    outputHits->addSingle(aptr, trhit);
    }
    +    outputPFAssn->addSingle(art::Ptr<recob::PFParticle>(inputPFParticle, iPF), aptr);
    }
    }
    +    e.put(std::move(outputTracks));
    +    e.put(std::move(outputHits));
    +    e.put(std::move(outputPFAssn));
    } else {

    art::ValidHandle<std::vector<recob::Track> > inputTracks = e.getValidHandle<std::vector<recob::Track> >(trackInputTag);
    @@ -342,11 +351,9 @@ void trkf::KalmanFilterFinalTrackFitter::produce(art::Event & e)
    outputHits->addSingle(aptr, trhit);
    }
    }
    +    e.put(std::move(outputTracks));
    +    e.put(std::move(outputHits));
    }
    -  
    -  e.put(std::move(outputTracks));
    -  e.put(std::move(outputHits));
    -  
    }

    double trkf::KalmanFilterFinalTrackFitter::setMomValue(art::Ptr<recob::Track> ptrack, const std::unique_ptr<art::FindManyP<anab::Calorimetry> >& trackCalo, const double pMC, const int pId) const {

larana
------------------

### larana/OpticalDetector/OpHitFinder/UtilFunc.cxx

    diff --git a/larana/OpticalDetector/OpHitFinder/UtilFunc.cxx b/larana/OpticalDetector/OpHitFinder/UtilFunc.cxx
    index 8f6ec29..e09a8d8 100644
    --- a/larana/OpticalDetector/OpHitFinder/UtilFunc.cxx
    +++ b/larana/OpticalDetector/OpHitFinder/UtilFunc.cxx
    @@ -66,7 +66,7 @@ namespace pmtana {

    double bin_width = ((*res.second) - (*res.first)) / ((double)nbins);

    -    if(nbins==1) return ((*res.first) + bin_width /2.);
    +    if(nbins==1 || bin_width == 0) return ((*res.first) + bin_width /2.);

    //std::cout<<"Min: "<<(*res.first)<<" Max: "<<(*res.second)<<" Width: "<<bin_width<<std::endl;

### larana/T0Finder/PhotonCounterT0Matching_module.cc

    diff --git a/larana/T0Finder/PhotonCounterT0Matching_module.cc b/larana/T0Finder/PhotonCounterT0Matching_module.cc
    index 9e1267a..4b4b4d8 100644
    --- a/larana/T0Finder/PhotonCounterT0Matching_module.cc
    +++ b/larana/T0Finder/PhotonCounterT0Matching_module.cc
    @@ -125,6 +125,7 @@ private:
    double fWeightOfDeltaYZ;
    double fMatchCriteria;
    double fPEThreshold;
    +  bool   fVerbosity;

    // Variables used in module.......
    std::vector<double> trackStart;
    @@ -189,6 +190,8 @@ void lbne::PhotonCounterT0Matching::reconfigure(fhicl::ParameterSet const & p)
    fWeightOfDeltaYZ = (p.get< double > ("WeightOfDeltaYZ"   ) );
    fMatchCriteria   = (p.get< double > ("MatchCriteria"     ) );
    fPEThreshold     = (p.get< double > ("PEThreshold"       ) );
    +
    +  fVerbosity = (p.get< bool > ("Verbose",false) );
    }

    void lbne::PhotonCounterT0Matching::beginJob()
    @@ -219,7 +222,7 @@ void lbne::PhotonCounterT0Matching::beginJob()
    20, 0, 100, 60, 0, 300); 
    hFitParam_Length = tfs->make<TH2D>("hFitParam_Length", "How fit correlates with track length; Fit correlation; Track Length (cm)", 50, 0, 250, 30, 0, 300);
    hPhotonT0_MCT0   = tfs->make<TH2D>("hPhotonT0_MCT0"  , "Comparing Photon Counter reconstructed T0 against MCTruth T0; Photon Counter T0 (us); MCTruthT0 T0 (us)", 1760, -1600, 16000, 1760, -1600, 16000);
    -  hT0_diff_full    = tfs->make<TH1D>("hT0_diff_full"   , "Difference between MCTruth T0 and photon detector T0; Time difference (us); Number", 320, -1600, 1600);
    +  hT0_diff_full    = tfs->make<TH1D>("hT0_diff_full"   , "Difference between MCTruth T0 and photon detector T0; Time difference (us); Number", 500, -2500, 2500);
    hT0_diff_zoom    = tfs->make<TH1D>("hT0_diff_zoom"   , "Difference between MCTruth T0 and photon detector T0; Time difference (us); Number", 320, -1.6, 1.6);
    }

    @@ -269,11 +272,12 @@ void lbne::PhotonCounterT0Matching::produce(art::Event & evt)
    size_t NTracks  = tracklist.size();
    size_t NFlashes = flashlist.size();

    -    std::cout << "There were " << NTracks << " tracks and " << NFlashes << " flashes in this event." << std::endl;
    +    if (fVerbosity)
    +      std::cout << "There were " << NTracks << " tracks and " << NFlashes << " flashes in this event." << std::endl;

    // Now to access PhotonCounter for each track... 
    for(size_t iTrk=0; iTrk < NTracks; ++iTrk) { 
    -      std::cout << "\n New Track " << (int)iTrk << std::endl;
    +      if (fVerbosity) std::cout << "\n New Track " << (int)iTrk << std::endl;
    // Reset Variables.
    BestFlashTime = BestFitParam = BestTrackCentre_X = BestTrackLength = 9999;
    BestTimeSepPredX = BestPredictedX = BestDeltaPredX = BestminYZSep = MCTruthT0 = 9999;
    @@ -292,13 +296,13 @@ void lbne::PhotonCounterT0Matching::produce(art::Event & evt)
    TrackLength);     

    // Some cout statement about track properties.
    -      ///*
    -      std::cout << trackStart[0] << " " << trackEnd[0] << " " << TrackLength_X << " " << TrackCentre_X 
    -        << "\n" << trackStart[1] << " " << trackEnd[1] << " " << TrackLength_Y << " " << TrackCentre_Y
    -        << "\n" << trackStart[2] << " " << trackEnd[2] << " " << TrackLength_Z << " " << TrackCentre_Z
    -        << "\n" << trkTimeStart  << " " << trkTimeEnd  << " " << trkTimeLengh  << " " << trkTimeCentre
    -        << std::endl;
    -      //*/
    +      if (fVerbosity) {
    +    std::cout << trackStart[0] << " " << trackEnd[0] << " " << TrackLength_X << " " << TrackCentre_X 
    +          << "\n" << trackStart[1] << " " << trackEnd[1] << " " << TrackLength_Y << " " << TrackCentre_Y
    +          << "\n" << trackStart[2] << " " << trackEnd[2] << " " << TrackLength_Z << " " << TrackCentre_Z
    +          << "\n" << trkTimeStart  << " " << trkTimeEnd  << " " << trkTimeLengh  << " " << trkTimeCentre
    +          << std::endl;
    +      }
    // ----- Loop over flashes ------
    for ( size_t iFlash=0; iFlash < NFlashes; ++iFlash ) {
    //Reset some flash specific quantities
    @@ -334,8 +338,10 @@ void lbne::PhotonCounterT0Matching::produce(art::Event & evt)
    else if (fMatchCriteria == 2) FitParam = DeltaPredX;

    //----FLASH INFO-----
    -    std::cout << "\nFlash " << (int)iFlash << " " << TrackCentre_X << ", " << TimeSepPredX << " - " << PredictedX << " = " << DeltaPredX << ", " << minYZSep << " -> " << FitParam << std::endl; 
    -    
    +    if (fVerbosity) {
    +      std::cout << "\nFlash " << (int)iFlash << " " << TrackCentre_X << ", " << TimeSepPredX << " - " << PredictedX << " = " 
    +            << DeltaPredX << ", " << minYZSep << " -> " << FitParam << std::endl; 
    +    }
    //----Select best flash------
    //double YFitRegion = (-1 * DeltaPredX ) + 80;
    //if ( minYZSep > YFitRegion ) continue;
