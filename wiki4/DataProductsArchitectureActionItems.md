Changes to data products[¶](#Changes-to-data-products)
======================================================

-   **Table of contents**
-   [Changes to data products](#Changes-to-data-products)
    -   [raw::RawDigit](#rawRawDigit)
        -   [Current declaration](#Current-declaration)
        -   [Actions](#Actions)
        -   [Tests](#Tests)
    -   [recob::Wire](#recobWire)
        -   [Current declaration](#Current-declaration-2)
        -   [Actions](#Actions-2)
        -   [Tests](#Tests-2)
    -   [recob::Hit](#recobHit)
        -   [Current declaration](#Current-declaration-3)
        -   [Actions](#Actions-3)
        -   [Tests](#Tests-3)
        -   [Update reference table](#Update-reference-table)
        -   [To-do’s](#To-dos)
            -   [Hit::fGoodnessOfFit definition](#HitfGoodnessOfFit-definition)
            -   [HarrisVertexFinder module (larreco/VertexFinder/HarrisVertexFinder\_module.cc) and EndPoint2D algorithm (larreco/RecoAlg/EndPoint2D.cxx)](#HarrisVertexFinder-module-larrecoVertexFinderHarrisVertexFinder_modulecc-and-EndPoint2D-algorithm-larrecoRecoAlgEndPoint2Dcxx)
            -   [HitAnaAlg (larreco/RecoAlg/HitAnaAlg.cxx)](#HitAnaAlg-larrecoRecoAlgHitAnaAlgcxx)
            -   [Hit makers: GausHitFinder (larreco/HitFinder/GausHitFinder\_module.cc), FFTHitFinder (larreco/HitFinder/FFTHitFinder\_module.cc), RFFHitFinder (larreco/HitFinder/RFFHitFinder\_module.cc), APAHitFinder (larreco/HitFinder/APAHitFinder\_module.cc), HitCheater (larreco/HitFinder/HitCheater\_module.cc), TTHitFinder (larreco/HitFinder/TTHitFinder\_module.cc), ClusterCrawler (larreco/ClusterFinder/ClusterCrawler\_module.cc), CalGausHFLBNE10kt (lbnecode/CalData/CalGausHFLBNE10kt\_module.cc), maybe more](#Hit-makers-GausHitFinder-larrecoHitFinderGausHitFinder_modulecc-FFTHitFinder-larrecoHitFinderFFTHitFinder_modulecc-RFFHitFinder-larrecoHitFinderRFFHitFinder_modulecc-APAHitFinder-larrecoHitFinderAPAHitFinder_modulecc-HitCheater-larrecoHitFinderHitCheater_modulecc-TTHitFinder-larrecoHitFinderTTHitFinder_modulecc-ClusterCrawler-larrecoClusterFinderClusterCrawler_modulecc-CalGausHFLBNE10kt-lbnecodeCalDataCalGausHFLBNE10kt_modulecc-maybe-more)
            -   [Hit disambiguation module (larreco/HitFinder/APAHitFinder\_module.cc)](#Hit-disambiguation-module-larrecoHitFinderAPAHitFinder_modulecc)
            -   [Summary of affected modules and algorithms](#Summary-of-affected-modules-and-algorithms)
    -   [recob::Cluster](#recobCluster)
        -   [Current declaration](#Current-declaration-4)
        -   [Actions](#Actions-4)
        -   [Tests](#Tests-4)
        -   [To-do’s](#To-dos-2)
            -   [MultipleHitWires name](#MultipleHitWires-name)
            -   [ClusterMergeAlg (larreco)](#ClusterMergeAlg-larreco)
            -   [ShowerReco module (larreco)](#ShowerReco-module-larreco)
            -   [LineMerger module (larreco)](#LineMerger-module-larreco)
            -   [ShowerAngleCluster module (larreco)](#ShowerAngleCluster-module-larreco)
            -   [RecoBaseDrawer (lareventdisplay)](#RecoBaseDrawer-lareventdisplay)
            -   [GraphCluster module (lareventdisplay)](#GraphCluster-module-lareventdisplay)
            -   [LArPandoraHelper (larpandora)](#LArPandoraHelper-larpandora)
            -   [ClusterCrawler, CCTrackMaker modules (larreco)](#ClusterCrawler-CCTrackMaker-modules-larreco)
            -   [Cluster3D module needs dT/dW restored (larreco)](#Cluster3D-module-needs-dTdW-restored-larreco)
            -   [Summary of affected modules and algorithms](#Summary-of-affected-modules-and-algorithms-2)
        -   [Update reference table](#Update-reference-table-2)
    -   [recob::EndPoint2D](#recobEndPoint2D)
        -   [Current declaration](#Current-declaration-5)
        -   [Actions](#Actions-5)
        -   [Tests](#Tests-5)
    -   [recob::Track](#recobTrack)
        -   [Current declaration](#Current-declaration-6)
        -   [Actions](#Actions-6)
        -   [Tests](#Tests-6)


`raw::RawDigit`[¶](#rawRawDigit)
--------------------------------


### Current declaration[¶](#Current-declaration)

(from `lardata` `v03_04_04`)

      class RawDigit {

      public:
        RawDigit(); // Default constructor

        std::vector<short> fADC;

      private:

        uint32_t        fChannel;     ///< channel in the readout
        unsigned short  fSamples;     ///< number of ticks of the clock

        double          fPedestal;    ///< pedestal for this channel
        double          fSigma;       ///< sigma of the pedestal counts for this channel

        raw::Compress_t fCompression; ///< compression scheme used for the ADC vector

      public:

        RawDigit(uint32_t           channel, 
                 unsigned short     samples,
                 const std::vector<short>& adclist,
                 raw::Compress_t    compression=raw::kNone);
        RawDigit(uint32_t           channel,
                 const std::vector<short>& adclist,
                 raw::Compress_t    compression=raw::kNone);

        // Set Methods
        void             SetPedestal(double ped);

        // Get Methods
        unsigned int    NADC()        const;
        short           ADC(int i)    const;
        uint32_t        Channel()     const;
        unsigned short  Samples()     const;
        double          GetPedestal() const; 
        double          GetSigma()    const; 
        raw::Compress_t Compression() const;

      };


### Actions[¶](#Actions)

Target

Action

Action item

Status

`fPedestal`

removal

get approval

ArgoNeuT approval pending, ongoing discussion

`fADC`

move to private

get approval

approved^[1](#fn1)^

move to private

done

provide interface access

done (`ACDs()`)

verify constructors

done

user code

LArSoft, `uboonecode`, `lbnecode`, `t962offline`, `lar1ndcode`

`fFlags`

add saturation flag

get approval

rejected^[2](#fn2)^

design the implementation

done

Currently implemented as `std::bitset<16>`, might be not optimal in gcc STL implementation (seems based on `unsigned long`, 32 bits)

implementation

done

update constructors

done

user code: constructors

LArSoft, `uboonecode`, `lbnecode`, `t962offline`, `lar1ndcode`

user code: initialization

LArSoft, `uboonecode`, `lbnecode`, `t962offline`, `lar1ndcode`

saturation flag is not set ever yet

documentation

add member documentation

for class

done

for constructor I

done

for constructor II

constructor removed

for `NADC()`

done

for `ADC()`

done

for `Channel()`

done

for `Samples()`

done

for `GetPedestal()`

done (pending removal)

for `GetSigma()`

done (pending removal)

for `Compression()`

done

for flag interface

done

for new `fADC` accessor

done

documentation

complete class documentation

in progress


### Tests[¶](#Tests)

Test type

Ran on version

Outcome

standard LArSoft test suite

`v03_06_00`

success

`v03_08_00`

TODO


`recob::Wire`[¶](#recobWire)
----------------------------


### Current declaration[¶](#Current-declaration-2)

(from `lardata` `v03_04_04`)

      class Wire {
        public:
            ///< a region of interest is a pair (TDC offset, readings)
          typedef lar::sparse_vector<float> RegionsOfInterest_t;

          Wire(); // Default constructor
          ~Wire();

        private:
          RegionsOfInterest_t fSignalROI;
          art::Ptr<raw::RawDigit> fRawDigit;   ///< vector to index of raw digit for this wire
          geo::View_t             fView;       ///< view corresponding to the plane of this wire
          geo::SigType_t          fSignalType; ///< signal type of the plane for this wire
          unsigned int            fMaxSamples; ///< max number of ADC samples possible on the wire

          // partial constructor, used only as common part by the other constructors
          Wire(art::Ptr<raw::RawDigit> &rawdigit);

        public:

          // ROI constructor
          Wire(const RegionsOfInterest_t& sigROIlist,
               art::Ptr<raw::RawDigit> &rawdigit);
          Wire(RegionsOfInterest_t&& sigROIlist,
               art::Ptr<raw::RawDigit> &rawdigit);

          // Get Methods
          // zero-padded full length vector filled with ROIs
          std::vector<float>  Signal() const;

          const RegionsOfInterest_t& SignalROI()  const;
          size_t                     NSignal()    const;
          art::Ptr<raw::RawDigit>    RawDigit()   const;
          geo::View_t                View()       const;
          geo::SigType_t             SignalType() const;
          uint32_t                   Channel()    const;
        };


### Actions[¶](#Actions-2)

Target

Action

Action item

Status

`fRawDigit`

removal

approval

approved^[1](#fn1)^

remove data member

done

interface removal

done

constructor update

done

user code update: removal

`larcore`, `lardata`, `larevt`, `larsim`, `larreco`, `larpandora`, `lareventdisplay`, `larexamples`, `larana`, `larsoft`, `uboonecode`, `lbnecode`, `t962offline`, `lar1ndcode`

user code: association

LArSoft, `uboonecode`, `lbnecode`, `t962offline`, `lar1ndcode`

`fChannel`

adding a channel ID

approval

approved^[1](#fn1)^

add data member

done

update accessor

done

constructor update

done

documentation

done

`fSignalType`

removal

approval

approved^[1](#fn1)^

remove data member

done

remove accessor

done

alternative implementation

optional

constructor update

done

user code: construction

`larcore`, `lardata`, `larevt`, `larsim`, `larreco`, `larpandora`, `lareventdisplay`, `larexamples`, `larana`, `larsoft`, `uboonecode`, `lbnecode`, `t962offline`, `lar1ndcode`

`WireCreator`

helper class for Wire construction

coding

done

documentation

done

user code: construction

`larcore`, `lardata`, `larevt`, `larsim`, `larreco`, `larpandora`, `lareventdisplay`, `larexamples`, `larana`, `larsoft`, `uboonecode`, `lbnecode`, `t962offline`, `lar1ndcode`

documentation

complete class documentation

in progress


### Tests[¶](#Tests-2)

Test type

Ran on version

Outcome

standard LArSoft test suite

`v03_06_00`

success

`v03_08_00`

TODO


`recob::Hit`[¶](#recobHit)
--------------------------


### Current declaration[¶](#Current-declaration-3)

(from `lardata` `v03_04_04`)

      /// hits are 2D representations of charge deposited in the tdc/wire plane
      /// hits are assumed to be made from deconvoluted, unipolar signals
      class Hit {
      public:
          Hit(); // Default constructor

          std::vector<double>   fHitSignal;        ///< vector of ADC values within the hit window

      private:

          double                  fStartTime;      ///< initial tdc tick for hit            
          double                  fSigmaStartTime; ///< uncertainty on initial tick           
          double                  fEndTime;        ///< final tdc tick for hit          
          double                  fSigmaEndTime;   ///< uncertainty on final tick          
          double                  fPeakTime;       ///< tdc for the peak charge deposition       
          double                  fSigmaPeakTime;  ///< uncertainty for tdc of the peak       
          double                  fCharge;         ///< total charge deposited for hit        
          double                  fMaxCharge;      ///< maximum ADC value in hit window       
          double                  fSigmaCharge;    ///< uncertainty in total charge deposited       
          double                  fSigmaMaxCharge; ///< maximum ADC value in hit window       
          int                     fMultiplicity;   ///< how many hits could this one be shared with 
          double                  fGoodnessOfFit;  ///< how well do we believe we know this hit?    
          art::Ptr<recob::Wire>   fWire;           ///< index of Wire object this Hit was created on
          art::Ptr<raw::RawDigit> fRawDigit;       ///< index of RawDigit object this Hit was created on
          geo::View_t             fView;           ///< view for the plane of the hit
          geo::SigType_t          fSignalType;     ///< signal type for the plane of the hit
          geo::WireID       fWireID;         ///< WireID for the hit (Cryostat, TPC, Plane, Wire)

      public:
          Hit(art::Ptr<recob::Wire> &wire,
         geo::WireID wid,
         double startTime, double sigmaStartTime,
         double endTime,   double sigmaEndTime,
         double peakTime,  double sigmaPeakTime,
         double totcharge, double sigmaTotCharge,
         double maxcharge, double sigmaMaxCharge,
         int    multiplicity,
         double goodnessOfFit);

          Hit(art::Ptr<raw::RawDigit> rawdigit,
         geo::View_t view,
         geo::SigType_t signaltype,
         geo::WireID wid,
         double startTime, double sigmaStartTime,
         double endTime,   double sigmaEndTime,
         double peakTime,  double sigmaPeakTime,
         double totcharge, double sigmaTotCharge,
         double maxcharge, double sigmaMaxCharge,
         int    multiplicity,
         double goodnessOfFit);

          // Get Methods
          double                  StartTime()                 const;
          double                  EndTime()                   const;
          double                  PeakTime()                  const;
          double                  SigmaStartTime()            const;
          double                  SigmaEndTime()              const;
          double                  SigmaPeakTime()             const;
          int                     Multiplicity()              const;
          uint32_t                Channel()                   const;
          double                  Charge(bool max=false)      const;
          double                  SigmaCharge(bool max=false) const;
          double                  GoodnessOfFit()             const;

          geo::SigType_t          SignalType()                const;
          geo::View_t             View()                      const;
          art::Ptr<recob::Wire>   Wire()                      const;
          art::Ptr<raw::RawDigit> RawDigit()                  const;
          geo::WireID             WireID()                    const;

          friend std::ostream&  operator << (std::ostream & o, const Hit & a);
          friend bool           operator <  (const Hit & a, const Hit & b);

        };


### Actions[¶](#Actions-3)

Target

Action

Action item

Status

Comment

`fRawDigit`

removal

approval

approved^[1](#fn1)^

remove data member

done

interface removal

done

constructor update

done

user code update: removal

`larcore`, `lardata`, `larevt`, `larsim`, `larreco`, `larpandora`, `lareventdisplay`, `larexamples`, `larana`, `larsoft`, `uboonecode`, `lbnecode`, `t962offline`, `lar1ndcode`

user code: association

`larcore`, `lardata`, `larevt`, `larsim`, `larreco`, `larpandora`, `lareventdisplay`, `larexamples`, `larana`, `larsoft`, `uboonecode`, `lbnecode`, `t962offline`, `lar1ndcode`

`fWire`

removal

approval

approved^[1](#fn1)^

remove data member

done

interface removal

done

constructor update

done

user code update: removal

`larcore`, `lardata`, `larevt`, `larsim`, `larreco`, `larpandora`, `lareventdisplay`, `larexamples`, `larana`, `larsoft`, `uboonecode`, `lbnecode`, `t962offline`, `lar1ndcode`

user code: association

`larcore`, `lardata`, `larevt`, `larsim`, `larreco`, `larpandora`, `lareventdisplay`, `larexamples`, `larana`, `larsoft`, `uboonecode`, `lbnecode`, `t962offline`, `lar1ndcode`

`fChannel`

adding a channel ID

approval

approved^[1](#fn1)^

add data member

done

update accessor

done

constructor update

done

documentation

done

`fHitSignal`

removal

approval

approved^[4](#fn4)^

remove member

done

remove accessor

done

update constructors

done

user code: construction

`larcore`, `lardata`, `larevt`, `larsim`, `larreco`, `larpandora`, `lareventdisplay`, `larexamples`, `larana`, `larsoft`, `uboonecode`, `lbnecode`, `t962offline`, `lar1ndcode`

user code: use

`larcore`, `lardata`, `larevt`, `larsim`, `larreco`, `larpandora`, `lareventdisplay`, `larexamples`, `larana`, `larsoft`, `uboonecode`, `lbnecode`, `t962offline`, `lar1ndcode`

`Charge()`

replace with `PeakAmplitude()` (`Charge(true)`), add `IntegratedADC()` (`Charge([false])`) and `SummedADC()` and uncertainties

approval

approved^[1](#fn1)^

add data members

done

add data accessors

done

update constructors

done

user code: construction

`larcore`, `lardata`, `larevt`, `larsim`, `larreco`, `larpandora`, `lareventdisplay`, `larexamples`, `larana`, `larsoft`, `uboonecode`, `lbnecode`, `t962offline`, `lar1ndcode`

user code: update use

`larcore`, `lardata`, `larevt`, `larsim`, `larreco`, `larpandora`, `lareventdisplay`, `larexamples`, `larana`, `larsoft`, `uboonecode`, `lbnecode`, `t962offline`, `lar1ndcode`

user code: use of new members

optional

document

done

`fMaxCharge`

removal

approval

approved^[1](#fn1)^

currently inaccessible

remove data member

done

hit width

add a `RMS` field

approval

approved^[1](#fn1)^

add data member

done (`fRMS`)

add data accessor

done (`RMS()`)

alternative implementation

optional

update constructors

done

user code: construction

`larcore`, `lardata`, `larevt`, `larsim`, `larreco`, `larpandora`, `lareventdisplay`, `larexamples`, `larana`, `larsoft`, `uboonecode`, `lbnecode`, `t962offline`, `lar1ndcode`

user code: update use

`larcore`, `lardata`, `larevt`, `larsim`, `larreco`, `larpandora`, `lareventdisplay`, `larexamples`, `larana`, `larsoft`, `uboonecode`, `lbnecode`, `t962offline`, `lar1ndcode`

user code: use of new members

optional

document

done

start and end times

remove `StartTime()`, `EndTime()`, `SigmaStartTime()`, `SigmaEndTime()` and the data members they access

approval

approved^[1](#fn1)^

these are defined as peak &pm; σ

remove data members

done

remove accessors

done

constructor update

done

document

done

user code update: construction

`larcore`, `lardata`, `larevt`, `larsim`, `larreco`, `larpandora`, `lareventdisplay`, `larexamples`, `larana`, `larsoft`, `uboonecode`, `lbnecode`, `t962offline`, `lar1ndcode`

start and end ticks

add `StartTick()` and `EndTick()`

approval

approved^[1](#fn1)^

defined as the time window of the hit

add data members

done

add accessors

done

constructor update

done

document

done

user code update: construction

`larcore`, `lardata`, `larevt`, `larsim`, `larreco`, `larpandora`, `lareventdisplay`, `larexamples`, `larana`, `larsoft`, `uboonecode`, `lbnecode`, `t962offline`, `lar1ndcode`

user code update: renaming

`larcore`, `lardata`, `larevt`, `larsim`, `larreco`, `larpandora`, `lareventdisplay`, `larexamples`, `larana`, `larsoft`, `uboonecode`, `lbnecode`, `t962offline`, `lar1ndcode`

`LocalIndex()`

add a member `fLocalIndex` describing the index of this hit among the `Multiplicity()` ones reconstructed between `StartTick()` and `EndTick()`

approval

approved^[1](#fn1)^

add data member

done

add data accessor

done

update constructors

done

user code: construction

`larcore`, `lardata`, `larevt`, `larsim`, `larreco`, `larpandora`, `lareventdisplay`, `larexamples`, `larana`, `larsoft`, `uboonecode`, `lbnecode`, `t962offline`, `lar1ndcode`

user code: use of new members

optional

document

done

documentation

complete class documentation

done

inline, Doxygen format


### Tests[¶](#Tests-3)

Test type

Ran on version

Outcome

standard LArSoft test suite

`v03_06_00`

success

`v03_08_00`

TODO


### Update reference table[¶](#Update-reference-table)

Old construct

New construct

Comments

`Hit::Charge()`

`Hit::Integral()`

`Hit::Charge(false)`

`Hit::Integral()`

`Hit::Charge(true)`

`Hit::PeakAmplitude()`

`Hit::StartTime()`

`Hit::PeakTimePlusRMS(-1.)`

this is the old definition in `GausHitFinder` module

`Hit::StopTime()`

`Hit::PeakTimePlusRMS(+1.)`

`Hit::Wire()`

defunct; look up through associations

`Hit::RawDigit()`

defunct; look up through associations

`#include "RecoBase/Hit.h"`

`#include "RawData/raw.h"`

if using `raw::RawDigit` or `raw::Uncompress()`; these are not included by `Hit.h` any more

`#include "RawData/RawDigit.h"`


### To-do’s[¶](#To-dos)


#### `Hit::fGoodnessOfFit` definition[¶](#HitfGoodnessOfFit-definition)

Although it’s kind of doomed to be a χ², this should be officially blessed by the authors, and also it must be decided whether it is χ² or reduced χ² (χ² / NDF), as it has been implemented so far.


#### `HarrisVertexFinder` module (`larreco/VertexFinder/HarrisVertexFinder_module.cc`) and `EndPoint2D` algorithm (`larreco/RecoAlg/EndPoint2D.cxx`)[¶](#HarrisVertexFinder-module-larrecoVertexFinderHarrisVertexFinder_modulecc-and-EndPoint2D-algorithm-larrecoRecoAlgEndPoint2Dcxx)

It uses lines like:\

      Gaussian((int)(j-((hit[i]->EndTick()-hit[i]->StartTick())/2.)+.5),0,hit[i]->EndTick()-hit[i]->StartTick())

\
(of course it was `StartTime()`/`EndTime()`). The width of the gaussian is the time window of the hit;\
this suggests that the interpretation of that time window was half σ of the hit, or something like that.\
I have currently implemented something that makes vaguely sense, but it has to be checked.


#### `HitAnaAlg` (`larreco/RecoAlg/HitAnaAlg.cxx`)[¶](#HitAnaAlg-larrecoRecoAlgHitAnaAlgcxx)

The `HitInfo` and `WireROIInfo` data structures need to be checked.

Contact person: Wesley Ketchum


#### Hit makers: `GausHitFinder` (`larreco/HitFinder/GausHitFinder_module.cc`), `FFTHitFinder` (`larreco/HitFinder/FFTHitFinder_module.cc`), `RFFHitFinder` (`larreco/HitFinder/RFFHitFinder_module.cc`), `APAHitFinder` (`larreco/HitFinder/APAHitFinder_module.cc`), `HitCheater` (`larreco/HitFinder/HitCheater_module.cc`), `TTHitFinder` (`larreco/HitFinder/TTHitFinder_module.cc`), `ClusterCrawler` (`larreco/ClusterFinder/ClusterCrawler_module.cc`), `CalGausHFLBNE10kt` (`lbnecode/CalData/CalGausHFLBNE10kt_module.cc`), maybe more[¶](#Hit-makers-GausHitFinder-larrecoHitFinderGausHitFinder_modulecc-FFTHitFinder-larrecoHitFinderFFTHitFinder_modulecc-RFFHitFinder-larrecoHitFinderRFFHitFinder_modulecc-APAHitFinder-larrecoHitFinderAPAHitFinder_modulecc-HitCheater-larrecoHitFinderHitCheater_modulecc-TTHitFinder-larrecoHitFinderTTHitFinder_modulecc-ClusterCrawler-larrecoClusterFinderClusterCrawler_modulecc-CalGausHFLBNE10kt-lbnecodeCalDataCalGausHFLBNE10kt_modulecc-maybe-more)

The algorithms need to define `fStartTick`, `fEndTick` and `fSummedADC`.\
Many need also `fLocalIndex` and to check the order of the local hits in the collection\
(the local hits are prescribed to be consecutive entries sorted by peak time).


#### Hit disambiguation module (`larreco/HitFinder/APAHitFinder_module.cc`)[¶](#Hit-disambiguation-module-larrecoHitFinderAPAHitFinder_modulecc)

Should check that the new associations make sense and are correctly initialized.


#### Summary of affected modules and algorithms[¶](#Summary-of-affected-modules-and-algorithms)

Hit creation modules and algorithms:

  Module name              Source file                                              Contact person
  ------------------------ -------------------------------------------------------- ----------------------------------
  `ClusterCrawler`         `larreco/ClusterFinder/ClusterCrawler_module.cc`         Bruce Baller
  `APAHitFinder`           `larreco/HitFinder/APAHitFinder_module.cc`               Tyler Alion (?)
  `DisambigCheater`        `larreco/HitFinder/DisambigCheater_module.cc`            Tyler Alion (?)
  `FFTHitFinder`           `larreco/HitFinder/FFTHitFinder_module.cc`               /candidate for removal?/
  `GausHitFinder`          `larreco/HitFinder/GausHitFinder_module.cc`              Jonathan Asaadi
  `HitCheater`             `larreco/HitFinder/HitCheater_module.cc`                 Brian Rebel
  `RFFHitFinder`           `larreco/HitFinder/RFFHitFinder_module.cc`               Wesley Ketchum
  `TTHitFinder`            `larreco/HitFinder/TTHitFinder_module.cc`                Wesley Ketchum
  `CCHitFinderAlg`         @larreco/RecoAlg/CCHitFinderAlg.cxx                      Bruce Baller
  `DisambigAlg`            @larreco/RecoAlg/DisambigAlg.cxx                         Tyler Alion (?)
  `CalGausHFLBNE35t`       `lbnecode/lbne/CalData/CalGausHFLBNE10kt_module.cc`      Jonathan Insler (?)
  `CalGausHFLBNE10kt`      `lbnecode/lbne/CalData/CalGausHFLBNE35t_module.cc`       Jonathan Insler (?)
  `HitFinder35t`           `lbnecode/lbne/HitFinderLBNE/HitFinder35t_module.cc`     Jonathan Insler, Tylet Alion (?)
  `DeconvGausHFLBNE10kt`   `lbnecode/lbne/CalData/DeconvGausHFLBNE10kt_module.cc`   Jonathan Insler (?)
  `DeconvGausHFLBNE35t`    `lbnecode/lbne/CalData/DeconvGausHFLBNE35t_module.cc`    Jonathan Insler (?)

Files affected by hit changes, that need checking:

                             Source file                                              Contact person
  -------------------------- -------------------------------------------------------- --------------------------
  `ClusterCheater`           `larreco/ClusterFinder/ClusterCheater_module.cc`         Jonathan Asaadi
  `ClusterCrawlerShower`     `larreco/ClusterFinder/ClusterCrawlerShower_module.cc`   Bruce Baller
  `KingaCluster`             `larreco/ClusterFinder/KingaCluster_module.cc`           /candidate for removal?/
  `BezierTrackerAlgorithm`   `larreco/RecoAlg/BezierTrackerAlgorithm.cxx`             Wesley Ketchum
  `ClusterMatchAlg`          `larreco/RecoAlg/ClusterMatchAlg.cxx`                    Kazuhiro Terao
  `DBScanAlg`                `larreco/RecoAlg/DBScanAlg.cxx`                          Tingjun Yang
  `EndPointAlg`              `larreco/RecoAlg/EndPointAlg.cxx`                        Brian Rebel
  `HoughBaseAlg`             `larreco/RecoAlg/HoughBaseAlg.cxx`                       Ben Carls
  `SeedFinderAlgorithm`      `larreco/RecoAlg/SeedFinderAlgorithm.cxx`                Herbert Greenlee
  `fuzzyClusterAlg`          `larreco/RecoAlg/fuzzyClusterAlg.cxx`                    Ben Carls
  **`HarrisVertexFinder`**   `larreco/VertexFinder/HarrisVertexFinder_module.cc`      Josh Spitz
  `VertexMatch`              `larreco/VertexFinder/VertexMatch_module.cc`             Wesley Ketchum


`recob::Cluster`[¶](#recobCluster)
----------------------------------


### Current declaration[¶](#Current-declaration-4)

(from `lardata` `v03_04_04`)

      class Cluster {

      public:

        Cluster();  ///Default constructor

       private:

        double                     fTotalCharge;    ///< total charge in cluster
        double                     fdTdW;           ///< slope of cluster in tdc vs wire
        double                     fdQdW;           ///< slope of cluster in charge vs wire
        double                     fSigmadTdW;      ///< slope of cluster in tdc vs wire
        double                     fSigmadQdW;      ///< slope of cluster in charge vs wire
        std::vector<double>        fStartPos;       ///< start of cluster in (wire, tdc) plane
        std::vector<double>        fEndPos;         ///< start of cluster in (wire, tdc) plane
        std::vector<double>        fSigmaStartPos;  ///< start of cluster in (wire, tdc) plane
        std::vector<double>        fSigmaEndPos;    ///< start of cluster in (wire, tdc) plane
        int                        fID;             ///< cluster's ID
        geo::View_t                fView;           ///< view for this cluster
        geo::PlaneID               fPlaneID;        ///< location of the start of the cluster (cryo, tdc, plane)

      public:
        Cluster(double startWire, double sigmaStartWire,
                double startTime, double sigmaStartTime,
                double endWire, double sigmaEndWire,
                double endTime, double sigmaEndTime,
                double dTdW, double sigmadTdW,
                double dQdW, double sigmadQdW,
                double totalQ,
                geo::View_t view,
                int id);
        Cluster(double startWire, double sigmaStartWire,
                double startTime, double sigmaStartTime,
                double endWire, double sigmaEndWire,
                double endTime, double sigmaEndTime,
                double dTdW, double sigmadTdW,
                double dQdW, double sigmadQdW,
                double totalQ,
                geo::View_t view,
                int id,
                const geo::PlaneID& planeID);

        //@{
        /// Accessors
        double                Charge()        const;
        geo::View_t           View()          const;
        double                dTdW()          const;
        double                dQdW()          const;
        double                SigmadTdW()     const;
        double                SigmadQdW()     const;
        std::vector<double>   StartPos()      const;
        std::vector<double>   EndPos()        const;
        std::vector<double>   SigmaStartPos() const;
        std::vector<double>   SigmaEndPos()   const;
        int                   ID()            const;
        const geo::PlaneID&   Plane()         const; ///< returns the geometry plane of the cluster
        //@}

        /// Returns whether geometry plane is valid
        bool                  hasPlane()      const;

        /// Moves the cluster to the specified plane
        Cluster& MoveToPlane(const geo::PlaneID& new_plane);

        /// Makes the plane of this cluster invalid
        Cluster& InvalidatePlane();

        Cluster              operator +  (const Cluster&);
        friend std::ostream& operator << (std::ostream& o, const Cluster& c);
        friend bool          operator <  (const Cluster & a, const Cluster & b);

      }; // class Cluster
    } // namespace recob


### Actions[¶](#Actions-4)

The implementation status refers to the branch `feature/DataProductRevisionNewCluster`.

Target

Action

Action item

Status

`dQdW()`

removal (also uncertainty)

approval

approved^[1](#fn1)^

remove data member

done

interface removal

done

constructor update

done

user code update: removal

`lardata`, `larevt`, `larsim`, `larreco`, `larpandora`, `lareventdisplay`, `larexamples`, `larana`, `larsoft`, `uboonecode`, `lbnecode`, `t962offline`, `lar1ndcode`

user code: verify it’s not used

`lardata`, `larevt`, `larsim`, `larreco`, `larpandora`, `lareventdisplay`, `larexamples`, `larana`, `larsoft`, `uboonecode`, `lbnecode`, `t962offline`, `lar1ndcode`

`dTdW()`

removal (also uncertainty)

approval

approved^[1](#fn1)^

remove data members

done

interface removal

done

constructor update

done

user code update: removal

`lardata`, `larevt`, `larsim`, `larreco`, `larpandora`, `lareventdisplay`, `larexamples`, `larana`, `larsoft`, `uboonecode`, `lbnecode`, `t962offline`, `lar1ndcode`

user code: verify it’s not used

`lardata`, `larevt`, `larsim`, `larreco`, `larpandora`, `lareventdisplay`, `larexamples`, `larana`, `larsoft`, `uboonecode`, `lbnecode`, `t962offline`, `lar1ndcode`

`NHits()`

add number of hits

approval

approved^[1](#fn1)^

add data member

done

add accessor

done

constructor update

done

write algorithm

done

user code update: construct

`lardata`, `larevt`, `larsim`, `larreco`, `larpandora`, `lareventdisplay`, `larexamples`, `larana`, `larsoft`, `uboonecode`, `lbnecode`, `t962offline`, `lar1ndcode`

user code update: fill

`lardata`, `larevt`, `larsim`, `larreco`, `larpandora`, `lareventdisplay`, `larexamples`, `larana`, `larsoft`, `uboonecode`, `lbnecode`, `t962offline`, `lar1ndcode`

`Start/EndWire()`

add wire coordinates

approval

approved^[1](#fn1)^

add data member

done

add accessor

done

constructor update

done

user code update: construct

`lardata`, `larevt`, `larsim`, `larreco`, `larpandora`, `lareventdisplay`, `larexamples`, `larana`, `larsoft`, `uboonecode`, `lbnecode`, `t962offline`, `lar1ndcode`

user code update: fill

`lardata`, `larevt`, `larsim`, `larreco`, `larpandora`, `lareventdisplay`, `larexamples`, `larana`, `larsoft`, `uboonecode`, `lbnecode`, `t962offline`, `lar1ndcode`

`Start/EndTick()`

add tick coordinates

approval

approved^[1](#fn1)^

add data member

done

add accessor

done

constructor update

done

user code update: construct

`lardata`, `larevt`, `larsim`, `larreco`, `larpandora`, `lareventdisplay`, `larexamples`, `larana`, `larsoft`, `uboonecode`, `lbnecode`, `t962offline`, `lar1ndcode`

user code update: fill

`lardata`, `larevt`, `larsim`, `larreco`, `larpandora`, `lareventdisplay`, `larexamples`, `larana`, `larsoft`, `uboonecode`, `lbnecode`, `t962offline`, `lar1ndcode`

`Start/EndCharge()`

add charge at ends

approval

pending^[3](#fn3)^

add data member

done

add accessor

done

constructor update

done

write algorithm

done

user code update: construct

`lardata`, `larevt`, `larsim`, `larreco`, `larpandora`, `lareventdisplay`, `larexamples`, `larana`, `larsoft`, `uboonecode`, `lbnecode`, `t962offline`, `lar1ndcode`

user code update: fill

`lardata`, `larevt`, `larsim`, `larreco`, `larpandora`, `lareventdisplay`, `larexamples`, `larana`, `larsoft`, `uboonecode`, `lbnecode`, `t962offline`, `lar1ndcode`

`Start/EndAngle()`

add angles

approval

approved^[1](#fn1)^

add data member

done

add accessor

done

constructor update

done

connect algorithm

done

user code update: construct

`lardata`, `larevt`, `larsim`, `larreco`, `larpandora`, `lareventdisplay`, `larexamples`, `larana`, `larsoft`, `uboonecode`, `lbnecode`, `t962offline`, `lar1ndcode`

user code update: fill

`lardata`, `larevt`, `larsim`, `larreco`, `larpandora`, `lareventdisplay`, `larexamples`, `larana`, `larsoft`, `uboonecode`, `lbnecode`, `t962offline`, `lar1ndcode`

`Start/EndOpeningAngle()`

add opening angles

approval

approved^[1](#fn1)^

add data member

done

add accessor

done

constructor update

done

connect algorithm

done

user code update: construct

`lardata`, `larevt`, `larsim`, `larreco`, `larpandora`, `lareventdisplay`, `larexamples`, `larana`, `larsoft`, `uboonecode`, `lbnecode`, `t962offline`, `lar1ndcode`

user code update: fill

`lardata`, `larevt`, `larsim`, `larreco`, `larpandora`, `lareventdisplay`, `larexamples`, `larana`, `larsoft`, `uboonecode`, `lbnecode`, `t962offline`, `lar1ndcode`

`SummedADC()`

add total summed ADC

approval

approved^[1](#fn1)^

from `recob::Hit::SummedADC()`

add data member

done

add accessor

done

constructor update

done

write algorithm

done

user code update: construct

`lardata`, `larevt`, `larsim`, `larreco`, `larpandora`, `lareventdisplay`, `larexamples`, `larana`, `larsoft`, `uboonecode`, `lbnecode`, `t962offline`, `lar1ndcode`

user code update: fill

`lardata`, `larevt`, `larsim`, `larreco`, `larpandora`, `lareventdisplay`, `larexamples`, `larana`, `larsoft`, `uboonecode`, `lbnecode`, `t962offline`, `lar1ndcode`

`SummedADCave()`

add hit summed ADC average

approval

approved^[1](#fn1)^

add data member

skipped

being just `SummedADC()/NHits()`, we don’t store it

add accessor

done

constructor update

done

write algorithm

done

user code update: construct

`lardata`, `larevt`, `larsim`, `larreco`, `larpandora`, `lareventdisplay`, `larexamples`, `larana`, `larsoft`, `uboonecode`, `lbnecode`, `t962offline`, `lar1ndcode`

user code update: fill

`lardata`, `larevt`, `larsim`, `larreco`, `larpandora`, `lareventdisplay`, `larexamples`, `larana`, `larsoft`, `uboonecode`, `lbnecode`, `t962offline`, `lar1ndcode`

`SummedADCstdDev()`

add hit summed ADC std. dev.

approval

approved^[1](#fn1)^

add data member

done

add accessor

done

constructor update

done

write algorithm

done

user code update: construct

`lardata`, `larevt`, `larsim`, `larreco`, `larpandora`, `lareventdisplay`, `larexamples`, `larana`, `larsoft`, `uboonecode`, `lbnecode`, `t962offline`, `lar1ndcode`

user code update: fill

`lardata`, `larevt`, `larsim`, `larreco`, `larpandora`, `lareventdisplay`, `larexamples`, `larana`, `larsoft`, `uboonecode`, `lbnecode`, `t962offline`, `lar1ndcode`

`IntegratedADC()`

add total integrated charge

approval

approved^[1](#fn1)^

from `recob::Hit::Integral()`

add data member

done

add accessor

done

constructor update

done

connect algorithm

done

user code update: construct

`lardata`, `larevt`, `larsim`, `larreco`, `larpandora`, `lareventdisplay`, `larexamples`, `larana`, `larsoft`, `uboonecode`, `lbnecode`, `t962offline`, `lar1ndcode`

user code update: fill

`lardata`, `larevt`, `larsim`, `larreco`, `larpandora`, `lareventdisplay`, `larexamples`, `larana`, `larsoft`, `uboonecode`, `lbnecode`, `t962offline`, `lar1ndcode`

`IntegratedADCave()`

add hit integrated ADC average

approval

approved^[1](#fn1)^

add data member

skipped

being just `Integral()/NHits()`, we don’t store it

add accessor

done

constructor update

done

connect algorithm

done

user code update: construct

`lardata`, `larevt`, `larsim`, `larreco`, `larpandora`, `lareventdisplay`, `larexamples`, `larana`, `larsoft`, `uboonecode`, `lbnecode`, `t962offline`, `lar1ndcode`

user code update: fill

`lardata`, `larevt`, `larsim`, `larreco`, `larpandora`, `lareventdisplay`, `larexamples`, `larana`, `larsoft`, `uboonecode`, `lbnecode`, `t962offline`, `lar1ndcode`

`IntegratedADCstdDev()`

add hit integrated ADC std. dev.

approval

approved^[1](#fn1)^

add data member

done

add accessor

done

constructor update

done

connect algorithm

done

user code update: construct

`lardata`, `larevt`, `larsim`, `larreco`, `larpandora`, `lareventdisplay`, `larexamples`, `larana`, `larsoft`, `uboonecode`, `lbnecode`, `t962offline`, `lar1ndcode`

user code update: fill

`lardata`, `larevt`, `larsim`, `larreco`, `larpandora`, `lareventdisplay`, `larexamples`, `larana`, `larsoft`, `uboonecode`, `lbnecode`, `t962offline`, `lar1ndcode`

`fTotalCharge`

removal

approval

approved^[1](#fn1)^

remove data member

done

interface removal

done

constructor update

done

user code update: removal

`lardata`, `larevt`, `larsim`, `larreco`, `larpandora`, `lareventdisplay`, `larexamples`, `larana`, `larsoft`, `uboonecode`, `lbnecode`, `t962offline`, `lar1ndcode`

user code: verify it’s not used

`lardata`, `larevt`, `larsim`, `larreco`, `larpandora`, `lareventdisplay`, `larexamples`, `larana`, `larsoft`, `uboonecode`, `lbnecode`, `t962offline`, `lar1ndcode`

`MultipleHitWires()`

ratio between wires span and hits number

approval

approved^[1](#fn1)^

add data member

done

add accessor

done

constructor update

done

write algorithm

done

user code update: construct

`lardata`, `larevt`, `larsim`, `larreco`, `larpandora`, `lareventdisplay`, `larexamples`, `larana`, `larsoft`, `uboonecode`, `lbnecode`, `t962offline`, `lar1ndcode`

user code update: fill

`lardata`, `larevt`, `larsim`, `larreco`, `larpandora`, `lareventdisplay`, `larexamples`, `larana`, `larsoft`, `uboonecode`, `lbnecode`, `t962offline`, `lar1ndcode`

`Width()`

a measure of cluster width

approval

approved^[1](#fn1)^

add data member

done

add accessor

done

constructor update

done

connect algorithm

done

user code update: construct

`lardata`, `larevt`, `larsim`, `larreco`, `larpandora`, `lareventdisplay`, `larexamples`, `larana`, `larsoft`, `uboonecode`, `lbnecode`, `t962offline`, `lar1ndcode`

user code update: fill

`lardata`, `larevt`, `larsim`, `larreco`, `larpandora`, `lareventdisplay`, `larexamples`, `larana`, `larsoft`, `uboonecode`, `lbnecode`, `t962offline`, `lar1ndcode`

documentation

complete class documentation

done


### Tests[¶](#Tests-4)

Test type

Ran on version

Outcome

standard LArSoft test suite

`v03_06_00`

success

`v03_08_00`

TODO


### To-do’s[¶](#To-dos-2)


#### `MultipleHitWires` name[¶](#MultipleHitWires-name)

`recob::Cluster::MultipleHitWires()` may need a better name.


#### `ClusterMergeAlg` (`larreco`)[¶](#ClusterMergeAlg-larreco)

`ClusterMergeAlg::Angle2DCompatibility()` seems to expect `slope` as a dT/dW, but then it uses in a formula that suggests `angle` is in degrees.\
The new code assumes `angle` to be an angle in radians, and the comparison angle is converted from degrees to radians. This needs to be checked.


#### `ShowerReco` module (`larreco`)[¶](#ShowerReco-module-larreco)

The `slope` variable is used at one point like a angle in degrees (and converted into degrees), at another as a `dTdW` in -homogeneous units (and converted into a ratio of wire over time ticks).\
I have added a `angle` variable and hope it makes the thing a bit clearer. Needs checking.


#### `LineMerger` module (`larreco`)[¶](#LineMerger-module-larreco)

This module requires some more work than the average cluster finder. \* cluster compatibility criteria: I have replaced the use of `dTdW()` with `StartAngle()` and `EndAngle()` \* position compatibility still has hard-coded constants; it **urges** to have a general function to compute 2D distance on wire/time plane \* the addition of clusters is removed, since it’s impossible to correctly add all the features; some replacement needs to be created


#### `ShowerAngleCluster` module (`larreco`)[¶](#ShowerAngleCluster-module-larreco)

The fix is being delayed, since this module depends on the old version of `ClusterParamsAlg` while my changes depend on the new one.\
I will wait for the update of `ShowerAlgleCluster` module before I pick it again.


#### `RecoBaseDrawer` (`lareventdisplay`)[¶](#RecoBaseDrawer-lareventdisplay)

`RecoBaseDrawer::Cluster2D()` used `Cluster::dTdW()` to get the slope for a line to be drawn.\
It’s not clear to me if it expects it homogeneous (“cm/cm”) or in the time/wire units.\
I am assuming it wants it homogeneous, but it might be wrong.


#### `GraphCluster` module (`lareventdisplay`)[¶](#GraphCluster-module-lareventdisplay)

This is a cluster producer, and it would need `ClusterParamsAlg` to fill completely the cluster.\
I suspect this cluster is going to be used only for drawing purposes and that therefore it does not need that complication.\
The complication is that to use `ClusterParamsAlg`, `lareventdisplay` must depend and link to `larreco`.\
So I hope I am getting away without setting the angles and charge (`dTdW` was filled with `0` anyway) and I have just filled the “easy” total charge statistics.


#### `LArPandoraHelper` (`larpandora`)[¶](#LArPandoraHelper-larpandora)

A new feature has been left half-implemented: *non-core* hits are excluded from some computation, but no hit is yet acknowledged as isolated non-core.


#### `ClusterCrawler`, `CCTrackMaker` modules (`larreco`)[¶](#ClusterCrawler-CCTrackMaker-modules-larreco)

Bruce Baller is still working on updating `ClusterCrawler` and `CCTrackMaker` modules.\
I have added some placeholder code, and the tracker won’t work (the hit finder and the cluster finder will have some variable with a default value).


#### `Cluster3D` module needs dT/dW restored (`larreco`)[¶](#Cluster3D-module-needs-dTdW-restored-larreco)

I have used the `StandardClusterParamsAlg` class to define *all* the parameters of the new cluster.\
The original code computes a meaningful dT/dW, though, and it should be used instead of the standard one.\
I should implement a new `ClusterParamsAlgBase` class that allows to override some fields with a set value.


#### Summary of affected modules and algorithms[¶](#Summary-of-affected-modules-and-algorithms-2)

Cluster creation modules and algorithms:

  Module name                   Source file                                                      Contact person
  ----------------------------- ---------------------------------------------------------------- ----------------
  `LArPandoraParticleCreator`   `larpandora/LArPandoraInterface/LArPandoraParticleCreator.cxx`   Andrew Blake
  `ClusterCheater`              `larreco/ClusterFinder/ClusterCheater_module.cc`                 Brian Rebel
  `ClusterCrawler`              `larreco/ClusterFinder/ClusterCrawler_module.cc`                 Bruce Baller
  `DBcluster`                   `larreco/ClusterFinder/DBcluster_module.cc`                      Tingjun Yang
  `ClusterCrawlerShower`        `larreco/ClusterFinder/ClusterCrawlerShower_module.cc`           *removed*
  `HoughLineFinder`             `larreco/ClusterFinder/HoughLineFinder_module.cc`                Ben Carls
  `KingaCluster`                `larreco/ClusterFinder/KingaCluster_module.cc`                   *removed*
  `LineMerger`                  `larreco/ClusterFinder/LineMerger_module.cc`                     Ben Carls
  `ShowerAngleCluster`          `larreco/ClusterFinder/ShowerAngleCluster_module.cc`             *removed*
  `SmallClusterFinder`          `larreco/ClusterFinder/SmallClusterFinder_module.cc`             Corey Adams
  `GraphCluster`                `lareventdisplay/EventDisplay/GraphCluster_module.cc`            Andrzej Szelc


### Update reference table[¶](#Update-reference-table-2)

Old construct

New construct

Comments

`Cluster::StartPos()[0]`

`Cluster::StartWire()`

`Cluster::StartPos()[1]`

`Cluster::StartTick()`

`Cluster::EndPos()[0]`

`Cluster::EndWire()`

`Cluster::EndPos()[1]`

`Cluster::EndTick()`

`Cluster::SigmaStartPos()`

removed

`Cluster::SigmaEndPos()`

`Cluster::TotalCharge()`

`Cluster::Integral()`

from hit shape

`Cluster::SummedADC()`

from calibrated ADC counts

`Cluster::dTdW()`

start from `std::tan(Cluster::StartAngle())`

`dTdW` was in wire/tick units, conversions with radians may be needed

`Cluster::dQdW()`

start from `Cluster::StartCharge()`


`recob::EndPoint2D`[¶](#recobEndPoint2D)
----------------------------------------

`recob::EndPoint2D` should be redefined as:

-   `Vertex2D` data product: a reconstructed object (probably defined from the output of `FeatureVertexFinder` producer)
-   `EndPoint2D` class: a simple geometric object (wire,time tick), not necessarily a data product


### Current declaration[¶](#Current-declaration-5)

(from `lardata` `v03_04_04`)

      class EndPoint2D  {

      public:

        EndPoint2D();  ///Default constructor

       private:
        double         fDriftTime;    ///< vertex's drift time
        geo::WireID    fWireID;      ///< vertex's wireID
        int            fID;           ///< vertex's ID
        double         fStrength;     ///< vertex's strength
        geo::View_t    fView;         ///< view for this end point
        double         fTotalCharge;  ///< total charge of hits associated with end point

      public:
        EndPoint2D(double driftTime,
              geo::WireID wireID,
              double strength,
              int id,
              geo::View_t view,
              double totalQ);

        double         Charge()    const;
        geo::View_t    View()      const;
        double         DriftTime() const;
        geo::WireID    WireID()    const;
        int            ID()        const;
        double         Strength()  const;

        friend std::ostream& operator << (std::ostream& o, const EndPoint2D& c);

      };


### Actions[¶](#Actions-5)

  Target              Action                         Action item     Status
  ------------------- ------------------------------ --------------- --------
  class definitions   to be defined                                  
  documentation       complete class documentation   to be defined   


### Tests[¶](#Tests-5)

  Test type                     Ran on version   Outcome
  ----------------------------- ---------------- ---------
  standard LArSoft test suite   not run          TO DO


`recob::Track`[¶](#recobTrack)
------------------------------

The tracking product model is still under discussion.\
The agreement is currently toward:

-   `recob::Track` data product: contains simple track information (begin and end of track, quality of fit) and owns “trajectory points”
-   `recob::Trajectory` data products: concrete data products following an abstract interface; the interface represents a geometrical continuous representation of the trajectory of the track
-   `recob::Momentum` data product: contains the result of momentum calculation algorithms

The priorty of at least part of this implementation will yield to the other changes.

Also, **policies** will be defined:

-   minimum density of trajectory points stored in the track object


### Current declaration[¶](#Current-declaration-6)

(from `lardata` `v03_04_04`)

      class Track {

      public:

        //Default constructor
        Track();

      private:

      protected:

        std::vector<TVector3>               fXYZ;           ///< position of points along the track
        std::vector<TVector3>               fDir;           ///< direction at each point along the track
        std::vector<TMatrixD >              fCov;           ///< covariance matrix of positions
                                                            ///< possibly only end points are stored
        std::vector< std::vector <double> > fdQdx;          ///< charge deposition per unit length at points
                                                            ///< along track outer vector index is over view
        std::vector<double>                 fFitMomentum;   ///< momentum at start and end of track
                                                            ///< determined from a fit. Intermediate points
                                                            ///< can be added if desired
        int                                 fID;            ///< track's ID

      public:

        // Bezier-like constructor
        Track(std::vector<TVector3>               const& xyz,
         std::vector<TVector3>               const& dxdydz,
         std::vector< std::vector <double> > dQdx = std::vector< std::vector<double> >(0),
         std::vector<double>                 fitMomentum = std::vector<double>(2, util::kBogusD),
         int                                 ID = -1);

        // Kalman-like constructor
        Track(std::vector<TVector3>        const& xyz,
         std::vector<TVector3>        const& dxdydz,
         std::vector<TMatrixD >       const& cov,
         std::vector< std::vector <double> > dQdx = std::vector< std::vector<double> >(0),
         std::vector<double>                 fitMomentum = std::vector<double>(2, util::kBogusD),
         int                                 ID = -1);

        void            Extent(std::vector<double> &xyzStart,
                std::vector<double> &xyzEnd)        const;
        void            Direction(double *dcosStart,
                   double *dcosEnd)                 const;
        double          ProjectedLength(geo::View_t view)          const;
        double          PitchInView(geo::View_t view,
                size_t trajectory_point=0)     const;
        int             ID()                                       const;

        // A trajectory point is the combination of a position vector
        // and its corresponding direction vector
        size_t          NumberTrajectoryPoints()                    const;
        size_t          NumberCovariance()                          const;
        size_t          NumberFitMomentum()                         const;
        size_t          NumberdQdx(geo::View_t view=geo::kUnknown)  const;
        double          Length(size_t p=0)                          const;
        void            TrajectoryAtPoint(unsigned int  p,
                      TVector3     &pos,
                      TVector3     &dir)        const;
        const double&   DQdxAtPoint(unsigned int p,
                geo::View_t view=geo::kUnknown) const;
        const TVector3& DirectionAtPoint (unsigned int p)           const;
        const TVector3& LocationAtPoint  (unsigned int p)           const;
        const double&   MomentumAtPoint  (unsigned int p)           const;
        const TMatrixD& CovarianceAtPoint(unsigned int p)           const;

        const TVector3& Vertex()                                    const;
        const TVector3& End()                                      const;
        const TVector3& VertexDirection()                          const;
        const TVector3& EndDirection()                             const;
        const TMatrixD& VertexCovariance()                         const;
        const TMatrixD& EndCovariance()                            const;
        const double&   VertexMomentum()                           const;
        const double&   EndMomentum()                              const;

        double          Theta()                                     const;
        double          Phi()                                       const;

        // Calculate rotation matrices between global (x,y,z) and local (u,v,w)
        // coordinate systems based on track direction (fDir).
        // The local w-axis points along the track direction.
        void GlobalToLocalRotationAtPoint(unsigned int p, TMatrixD& rot) const;
        void LocalToGlobalRotationAtPoint(unsigned int p, TMatrixD& rot) const;

        friend bool     operator <   (const Track & a, const Track & b);
      protected:

        friend std::ostream& operator << (std::ostream& stream, Track const& a);

      };


### Actions[¶](#Actions-6)

  Target               Action                                                   Action item     Status
  -------------------- -------------------------------------------------------- --------------- --------
  `Track` definition   definition of `recob@Track` content                      to be defined   
  other definitions    definition of `recob@Trajectory` and `recob::Momentum`   to be defined   
  documentation        complete class documentation                             to be defined   


### Tests[¶](#Tests-6)

  Test type                     Ran on version   Outcome
  ----------------------------- ---------------- ---------
  standard LArSoft test suite   not run          TO DO

* * * * *

^1^ `LArSoft` Data Architecture Meeting, [December 8, 2014](https://indico.fnal.gov/conferenceDisplay.py?confId=9173)

^2^ Discussion, including Erica Snider and Gianluca Petrillo, on December 11, 2014. Saturation is inherently per-sample and flagging the whole raw digit where saturation happened is not informative.

^3^ Latest discussion: MicroBooNE IIT workshop, January 7th, 2015.

^4^ Proposal by MicroBooNE on January 7th, 2015 and acknowledgement by LBNF on January 28th, 2015
