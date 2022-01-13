LArSoft architecture review
============================================================

-   **Table of contents**
-   [LArSoft architecture review](#LArSoft-architecture-review)
    -   [Operative summary: modules](#Operative-summary-modules)
    -   [Operative summary: services](#Operative-summary-services)
    -   [Operative summary: data products](#Operative-summary-data-products)
    -   [Interoperability](#Interoperability)
        -   [Example actions and recommendations](#Example-actions-and-recommendations)
        -   [Summary](#Summary)
        -   [ClusterCrawler](#ClusterCrawler)
            -   [Code analysis](#Code-analysis)
            -   [Actions](#Actions)
        -   [TrackKalmanHit](#TrackKalmanHit)
            -   [Code analysis](#Code-analysis-2)
            -   [Actions](#Actions-2)
        -   [ShowerReco3D](#ShowerReco3D)
            -   [Code analysis](#Code-analysis-3)
            -   [Actions](#Actions-3)
        -   [Geometry service](#Geometry-service)
            -   [APA locator](#APA-locator)
    -   [Maintainability](#Maintainability)
        -   [Event display](#Event-display)
    -   [Factorization](#Factorization)
        -   [Current guidelines:](#Current-guidelines)
    -   [Generic interfaces](#Generic-interfaces)
        -   [Database interface](#Database-interface)
    -   [Software architecture](#Software-architecture)
        -   [Thread safety](#Thread-safety)
    -   [LArSoft modules](#LArSoft-modules)
        -   [List of modules used in MicroBooNE’s Monte Carlo Challenge 6](#List-of-modules-used-in-MicroBooNEs-Monte-Carlo-Challenge-6)
        -   [List of modules used in DUNE 35t’s Monte Carlo Challenge 2](#List-of-modules-used-in-DUNE-35ts-Monte-Carlo-Challenge-2)
        -   [List of candidate modules](#List-of-candidate-modules)
        -   [List of candidate services](#List-of-candidate-services)

Main points:

-   **interoperability**: code must transparently work regardless the experiment running it
-   **maintainability**: code needs structure, good practices and documentation
-   **factorization**: each physics step should happen in its own algorithm class, coming with its test
-   **generic interfaces**: code that needs to be experiment-specific should at least share a common interface
-   **software architecture**: flawless design of the algorithms and the modules driving them

Operative summary: modules
---------------------------------------------------------

The ones we received so far:

Priority

Module or algorithm

Authors

Assigned to

Issue tracker

Tentative delivery date

Status

1

`ClusterCrawler`

Bruce Baller

Gianluca Petrillo, Tingjun Yang

April 2015

delivered, optional actions pending

2

`CCTrackMaker`

Bruce Baller

Gianluca Petrillo

[redmine issue 10887](https://cdcvs.fnal.gov/redmine/issues/10887)

~~December 2015~~ now off schedule

delayed to avoid conflicts with the regular development

3

`TrackKalman3DHit`

Herbert Greenlee

Saba Sehrish

[redmine issue 10331](https://cdcvs.fnal.gov/redmine/issues/10331)

April 2016

planning deep redesign

4

`ShowerReco3D`

Kazuhiro Terao et al.

Gianluca Petrillo

[redmine issue 10327](https://cdcvs.fnal.gov/redmine/issues/10327)

December 2015

LArSoft code being updated, issue [redmine issue 11323](https://cdcvs.fnal.gov/redmine/issues/11323)

5

`Cluster3D`

Tracy Usher

~~October 2015~~ now off schedule

at least interoperability issues

6

`fuzzyCluster`

Benjamin Carls

(optional)

to be assessed

7

`CosmicTracker`

Tingjun Yang

(optional)

to be assessed

8

`RawHitFinder`

Michelle Stancari

(optional)

to be assessed

Operative summary: services
-----------------------------------------------------------

|Service name|Author(s)|Assignee|Issue tracker|Tentative delivery date|Status|
|:-----------|:--------|:-------|:------------|:----------------------|:-----|
|`Geometry`|Brian Rebel at al.|Gianluca Petrillo||delivered||
|`DatabaseUtil`||Jonathan Paley, Gianluca Petrillo|[redmine issue 10888](https://cdcvs.fnal.gov/redmine/issues/10888)|~~September 2015~~ December 2015|deprecated, legacy code left|
|`LArProperties`||Jonathan Paley|[redmine issue 10888](https://cdcvs.fnal.gov/redmine/issues/10888)|~~September 2015~~ December 2015|delivered in feature branches|
|`DetectorProperties`||Jonathan Paley|[redmine issue 10888](https://cdcvs.fnal.gov/redmine/issues/10888)|~~early October 2015~~ December 2015|delivered in feature branches|
|`TimeService`|Kazuhiro Terao|Jonathan Paley|[redmine issue 10888](https://cdcvs.fnal.gov/redmine/issues/10888)|~~early October 2015~~ December 2015|delivered in feature branches|
|`LArFFT`||Gianluca Petrillo|[redmine issue 10888](https://cdcvs.fnal.gov/redmine/issues/10888)|~~early October 2015~~ off schedule|demoted because or lower relevance|
|`SpaceCharge`||||~~November 2015~~ off schedule|demoted because or lower relevance|
|`OpDigiProperties`||||not scheduled for 2015||
|`PhotonVisibilityService`||||not scheduled for 2015||
|`BackTracker`||||not scheduled for 2015|need careful assessment|

Details of the changes required for existing code are in the [core services migration](Core_Services_Review) page.

Operative summary: data products
---------------------------------------------------------------------

No further data products review is scheduled for 2015.
Revision of `recob::Track` may happen at a later time.

Interoperability
--------------------------------------

Main points:

-   support of detectors with multiple cryostats and TPCs<sup>[1](#fn1)</sup>
    -   missing TPC loops
    -   no specification of which TPC we are dealing with
-   silent assumptions
    -   geometric assumptions
        -   number of planes
        -   type of signal
        -   channel mapping
        -   wire-channel mapping
        -   origin of the coordinate system
    -   time reference

### Example actions and recommendations

This section provided the base for (and was moved to):
[Guidelines_on_using_the_geometry?parent=Developing_With_LArSoft](Guidelines_on_using_the_geometry?parent=Developing_With_LArSoft)

### Summary

Due to the huge amount of work required to check the code, we rely on our most active multi-TPC LArSoft user, DUNE, to establish priorities.

### `ClusterCrawler`

The work on `ClusterCrawler` was performed by Gianluca Petrillo with support from Bruce Baller.
Testing and bug fixing was performed by Tingjun Yang and Gianluca Petrillo with support from Bruce Baller.

#### Code analysis

The code is already organized in algorithms.
There are three of them:

1.  `CCHitFinderAlg` takes `recob::Wire` inputs and produces a internal temporary structure, `CCHit`
2.  `ClusterCrawlerAlg` takes `CCHit` and produces internal temporary structures: clusters, a new set of `CCHit`, cluster endpoints, 3D vertices and associations
3.  `CCHitRefinerAlg` is currently stalled and not included in any run

All the algorithms are called in sequence by `ClusterCrawler` module.
The module loads the `recob:Wire`, runs the algorithms and finally converts all the temporary structures of `ClusterCrawlerAlg` into LArSoft data products and `art` associations.
The output from `CCHitFinderAlg` is *not* converted into LArSoft data products.

#### Actions

Required actions:

-   split the module in two, hit finding and cluster finding (that includes hit refinement)
-   have `CCHitFinderAlg` produce, and `ClusterCrawlerAlg` accept, directly `recob::Hit`

Additional actions suggested:

-   review the form of the code to use variables as locally as possible
-   use consistent and proper data types (most often `size_t` and `int`)

### `TrackKalmanHit`

#### Code analysis

Pending.

#### Actions

To be determined.

### `ShowerReco3D`

#### Code analysis

In progress.
Observed:

-   lack of TPC awareness

#### Actions

To be determined.

### `Geometry` service

We want to make the easiest possible to write code that is TPC-aware.
Changes in that direction are:

-   promote the use of TPC, plane and wire iterators already in place
-   have `Geometry` methods always accept fully identified locators: `geo::TPCID`, `geo::PlaneID`, etc.
    -   **[breaking change]** change `Geometry` interface to accept **only** fully identified locators

Target delivery: June 2015.

#### APA locator

DUNE’s David Adams has suggested to have identifiers include the APA number.
Discussion is needed to understand how much redundancy would be introduced, how much breakage and whether it is general enough for all the experiments we know of (thinking in particular to SBND).

Maintainability
------------------------------------

We want to identify and smooth the code that has become unmaintainable, i.e. for which it’s hard either to

-   understand what it does
-   fix existing bugs
-   add new features

### Event display

LArSoft’s event display has been reported to cover pretty well the whole range of unmaintainability features.

Gianluca is doing preliminary assessment work.

Factorization
--------------------------------

Current goals are to have algorithms modular enough that they can be easily unit-tested.
An important side effect of this is that the algorithms need to be separate from the modules and they need not to rely on the framework.
The entanglement of an algorithm with the framework can happen on many levels:

-   **code embedded in a producer or analyser module**: the algorithm needs to be encapsulated in a stand-alone class!
-   **use of data products requiring `art`**, e.g. `art::Ptr`: data products need to be modified
-   **use of `art` product handles**: need to pass the input data to the algorithm
-   **use of `art` service handles**: need to pass the services to the algorithm
-   **use of framework hooks**, service or module methods called at given processing time (“events”; e.g., on a new run): the algorithm must be informed of these events by the caller module; for most of the cases (always?), no event happens while the algorithm is processing, and it is sufficient to re-initialize the algorithm with current information before running it each time
-   **use of `art` associations**: solution needs to be investigated by the LArSoft/LArLite integration subproject
-   **use of `MessageFacility` service**: solution needs to be investigated by the LArSoft/LArLite integration subproject
-   **use of FHiCL configuration**: solution needs to be investigated by the LArSoft/LArLite integration subproject
-   **use of `art` exceptions**: solution needs to be investigated by the LArSoft/LArLite integration subproject

### Current guidelines:

-   remove from the algorithms (and move into the module):
    -   `art::Handle<>` objects
    -   `art::ServiceHandle<>` objects
    -   access to `art::Event`
    -   use of `art::EventID`
-   confine (if possible):
    -   FHiCL library inside algorithm constructors and configure methods
-   disfavour (meaning: consider how bad it would be to replace it with something more standard):
    -   anything that is not standard C++, ROOT nor TBB: CLHEP (random number generators are generally an exception), Boost, CET, art
-   transient guidelines, that might be reconsidered when art/LarLite subproject will complete their tasks:
    -   allow:
        -   `art::Exception` and `cet::exception`
    -   remove unless needed for creating associations:
        -   `art::Ptr`
    -   suffer, but try to move out of the algorithm if possible:
        -   `art::Assns`
        -   `art::FindOne`, `art::FindMany`, `art::FindOneP`, `art::FindManyP`

Keep in mind that these guidelines don’t need to be applied blindly. If in doubt, always ask a second opinion.
In general, this process has at least the direct effect of reducing the dependencies of the code and, indirectly, of improving the design by the mere fact that we think of it.

Generic interfaces
------------------------------------------

Some possible candidates for generic interface:

-   raw data simulation: `SimWire`- and `OpDetDigitizer`-class modules
-   raw data calibration: `CalWire`-class modules
-   database interface

### Database interface

Discussion is ongoing including elements from DUNE and MicroBooNE.
People involved in the development of a solution include Erica Snider (LArSoft), Jonathan Paley (DUNE), Brandon Eberly, Kazuhiro Terao (MicroBooNE).

Software architecture
------------------------------------------------

The main points to consider:

-   design flaws, that make it complicate to achieve simple goals
-   thread safety
-   bottlenecks, typically identified by code profiling

### Thread safety

Thread safety is a bit of a moving target so far, since we don’t have a precise idea of how `art` is going to offer multi-threading.
Multi-threading at the module level, or algorithm level, requires at the very least

1.  no access to unsafe framework functions
2.  thread safe services
3.  thread safe local code
4.  multi-thread library calls

The best way to achieve the first point is not to call the framework at all. This is already a checkpoint of the Factorization effort.
Thread safe services are a sensitive point. `RandomGeneratorService` is not thread safe and we must assume it will never be. This probably translates into no parallelism in random-based operations. Other services present no problem, as they are very static. Others do, like `LArFFT` using global variables and `BackTracker` keeping a cache of data from the current event. Global variables must of course be avoided; event-wide caches may be fine in specific cases and assuming that all the threads process the same event.
Making our own algorithm thread-safe implies a series of quite well-known practices, like careful avoidance of data racing (or its management) and revulsion of global variables.
The multi-thread library we are recommended to use is Intel’s Thread Building Blocks (TBB), already a dependency of `art`. To avoid mixing libraries, the use of C++ thread library (`threads`) is blandly discouraged.

LArSoft modules
------------------------------------

### List of modules used in MicroBooNE’s Monte Carlo Challenge 6

Phase

Configuration file

Modules

generation

*many*

`GENIEGen`

`CosmicGen`

*others*

detector simulation

`standard_g4_uboone.fcl`

`LArG4`

`MCReco`

readout simulation

`standard_detsim_uboone.fcl`

`UBOpticalADCSim`

`OpticalFEM`

`OpticalDRAMReadout`

`SimWireMicroBooNE`

`UBTriggerSim`

reconstruction

`reco_uboone_stage1.fcl`

`OpticalRawDigitReformatter`

`OpFlashFinder`

`CalWireROI`

`MCHitFinder`

`GausHitFinder`

`ClusterCrawler`

`fuzzyCluster`

`FuzzyClusterMerger`

`Cluster3D`

`CCTrackMaker`

`MicroBooNEPandora`

`CosmicPCAxisTagger`

`reco_uboone_stage2.fcl`

`Calorimetry`

`Chi2ParticleID`

`CosmicTrackTagger`

`Track3DKalmanHit`

`TrackStitcher`

`CosmicPFParticleTagger`

`BeamFlashTrackMatchTagger`

`CRHitRemoval`

*(`MicroBooNEPandora`)*

`ShowerReco3D`

analysis

`standard_ana_uboone.fcl`

`AnalysisTree`

### List of modules used in DUNE 35t’s Monte Carlo Challenge 2

Phase

Configuration file

Modules

simulation

`prodcosmics_lbne35t_milliblock`

`CosmicGen`

`TextFileGen`

detector simulation

`standard_g4_lbne35t.fcl`

`LArG4`

readout simulation

`standard_detsim_lbne35t_milliblock.fcl`

`SimWireLBNE35t`

reconstruction

`standard_reco_lbne35t_milliblock.fcl`

`CalWireLBNE35t`

`HitCheater`

`GausHitFinder`

`HitFinder35t`

`RawHitFinder`

`DisambigCheater`

`DBcluster`

`LBNE35tPandora`

`ClusterCheater`

`LBNE35tParticleStitcher`

`TrackCheater`

`CosmicTracker`

`TrackStitcher`

`Calorimetry`

`MCTruthT0Matching`

analysis

`standard_ana_lbne35t.fcl`

`SimPhotonCounter`

`AnaTree`

`PFParticleMonitoring`

`PFParticleAnalysis`

### List of candidate modules

This list currently merges the standard generation, simulation, reconstruction and analysis chains from MicroBooNE (MCC 6) and DUNE 35t (MCC 2).

|Modules|Author(s)|Location|Standard?|Modular?|Actions needed|
|:------|:--------|:-------|:--------|:-------|:-------------|
|`GENIEGen`||`larsim/EventGenerator/GENIE`|x|?||
|`CosmicGen`||`larsim/EventGenerator/CRY`|x|?||
|`TextFileGen`||`larsim/EventGenerator`|?|?||
|`LArG4`||`larsim/LArG4`|x|x||
|`MCReco`|Kazuhiro Terao|`larsim/MCSTReco`|x|?||
|`UBOpticalADCSim`||`uboonecode/uboone/OpticalDetectorSim`|-|?||
|`OpticalFEM`||`uboonecode/uboone/OpticalDetectorSim`|-|?||
|`OpticalDRAMReadout`||`uboonecode/uboone/OpticalDetectorSim`|-|?||
|`SimWireMicroBooNE`||`uboonecode/uboone/DetSim`|-|x||
|`SimWireLBNE35t`||`lbnecode/lbne/DetSim`|?|x||
|`UBTriggerSim`||`uboonecode/uboone/TriggerSim`|-|?||
|`OpticalRawDigitReformatter`||`larana/OpticalDetector`|-|?|(ask Wesley/Kazu if they are going to use the new OpDetWaveform directly)|
|`OpFlashFinder`|Benjamin Jones|`larana/OpticalDetector`|x|?|(ask Alex Himmel if ok for DUNE 35t)|
|`CalWireROI`|Bruce Baller|`uboonecode/uboone/CalData`|-|x||
|`CalWireLBNE35t`||`lbnecode/lbne/CalData`|?|x||
|`MCHitFinder`|Kazuhiro Terao|`larreco/HitFinder`|x|?||
|`GausHitFinder`|Jonathan Asaadi|`larreco/HitFinder`|x|?||
|`HitCheater`||`larreco/HitFinder`|?|?||
|`RawHitFinder`|Michelle Stancari|`larreco/HitFinder`|?|x||
|`HitFinder35t`||`lbnecode/lbne/HitFinderLBNE`|?|?||
|`DisambigCheater`||`larreco/HitFinder`|?|?||
|`ClusterCrawler`|Bruce Baller|`larreco/ClusterFinder`|x|x|will be replaced by `HitFinder`/`LineFinder`|
|`DBcluster`||`larreco/ClusterFinder`|?|?||
|`fuzzyCluster`|Benjamin Carls|`larreco/ClusterFinder`|x|?||
|`FuzzyClusterMerger`||`larreco/ClusterFinder`|x|?||
|`ClusterCheater`||`larreco/ClusterFinder`|?|?||
|`MicroBooNEPandora`|Andrew Blake|`larpandora/LArPandoraInterface`|-|?|(maybe geometry can be abstracted? ask Andy)|
|`LBNE35tPandora`|Andrew Blake|`lbnecode/lbne/LBNEPandora`|?|?||
|`LBNE35tParticleStitcher`|Andrew Blake|`lbnecode/lbne/LBNEPandora`|?|?||
|`Cluster3D`|Tracy Usher|`larreco/ClusterFinder`|x|?||
|`CCTrackMaker`|Bruce Baller|`larreco/TrackFinder`|x|?||
|`TrackCheater`||`larreco/TrackFinder`|?|?||
|`CosmicTracker`|Tingjun Yang|`larreco/TrackFinder`|?|?||
|`CosmicPCAxisTagger`|Tracy Usher|`larana/CosmicRemoval`|x|?||
|`Calorimetry`||`larana/Calorimetry`|x|?||
|`Chi2ParticleID`||`larana/ParticleIdentification`|x|?||
|`CosmicTrackTagger`||`larana/CosmicRemoval`|x|?|(need work to find correct times and boundaries)|
|`Track3DKalmanHit`|Herbert Greenlee|`larreco/TrackFinder`|x|?||
|`TrackStitcher`|Eric Church|`larreco/TrackFinder`|x|?||
|`CosmicPFParticleTagger`|Tracy Usher|`larana/CosmicRemoval`|x|?||
|`BeamFlashTrackMatchTagger`||`larana/CosmicRemoval`|x|?|(not useful for DUNE 35t, possibly for FD)|
|`CRHitRemoval`|Tracy Usher|`larana/CosmicRemoval`|x|?||
|`MCTruthT0Matching`|Tingjun Yang (?)|`lbnecode/lbne/TrackMatching`|?|?||
|`ShowerReco3D`|Kazuhiro Terao (?)|`larreco/ShowerFinder/ShowerReco3D`|x|?|at least: make it multi-TPC aware|
|`AnalysisTree`|Sowjanya Gollapinni|`uboonecode/uboone/AnalysisTree`|-|?||
|`AnaTree`|Tingjun Yang|`lbnecode/lbne/AnaTree`|?|?||
|`SimPhotonCounter`||`larana/OpticalDetector`|?|?||
|`PFParticleMonitoring`||`larpandora/LArPandoraInterface`|?|?||
|`PFParticleAnalysis`||`larpandora/LArPandoraInterface`|?|?||

Legend: “Standard” column

> - experiment-specific
> ? to be determined
> x needs fixes
> x needs to be assessed
> x known to work wit other experiments

Legend: “Modular” column

> ? to be determined
> - not modular, will stay like this
> x not modular, needs work
> x only partially modular, still needs some work
> x fully modular

### List of candidate services

LArSoft services:

|Service name|Author(s)|Location|G|S|D|R|A|Modular?|Actions needed|
|:-----------|:--------|:-------|:--|:--|:--|:--|:--|:-------|:-------------|
|`DatabaseUtil`||`lardata/Utilities`|G|S|D|R|A|?||
|`DetectorProperties`||`lardata/Utilities`|G|S|D|R|A|?||
|`Geometry`|Brian Rebel at al.|`larcore/Geometry`|G|S|D|R|A|x|need to be merged|
|`LArFFT`||`lardata/Utilities`|||D|R|A|?||
|`LArG4Parameters`||`larsim/Simulation`||S|||A|?||
|`LArProperties`||`lardata/Utilities`|G|S|D|R|A|?||
|`LArVoxelCalculator`||`larsim/Simulation`||S|||A|?||
|`LBNEGeometryHelper`||`lbnecode/lbne/Geometry`|G|S|D|R|A|x|need to be merged|
|`BackTracker`||`larsim/MCCheater`||S|||A|?||
|`MemoryPeakReporter`|Gianluca Petrillo|`lardata/Utilities`||||R|A|x|deprecated|
|`OpDigiProperties`||`larana/OpticalDetector`||||R||?||
|`PhotonVisibilityService`||`larsim/PhotonPropagation`||S||R|A|?||
|`SignalShapingServiceMicroBooNE`||`uboonecode/uboone/Utilities`|||D|R|A|?||
|`SpaceCharge`||`larevt/SpaceCharge`|G|S|D|R|A|?||
|`StandardGeometryHelper`||`larcore/Geometry`|G|S|D|R|A|x|need to be merged|
|`TimeService`|Kazuhiro Terao|`lardata/Utilities`|G|S|D|R|A|?||
|`UBOpticalChConfig`||`uboonecode/uboone/OpticalDetectorSim`|||D||A|?||

For completeness, this is the list of services from the framework and external libraries, on which LArSoft has no control:

|Service name|Author(s)|Location|G|S|D|R|A|Modular?|Actions needed|
|:-----------|:--------|:-------|:--|:--|:--|:--|:--|:-------|:-------------|
|`FileCatalogMetadata`||`art/Framework/Services/System`|G|S|D|R|A|?||
|`MagneticField`||`nutools/MagneticField`|G|S|||A|?||
|`RandomNumberGenerator`||`art/Framework/Services/Optional`|G|S|D|R|A|?||
|`SeedService`|Gianluca Petrillo et al.|`artextensions/SeedService`|G|S|D|R|A|?||
|`SimpleMemoryCheck`||`art/Framework/Services/Optional`|G|S|D|R|A|?||
|`TFileService`||`art/Framework/Services/Optional`|G|S|D|R|A|?||
|`Timing`||`art/Framework/Services/Optional`|G|S|D|R|A|?||
|`TrivialFileDelivery`||`art/Framework/Services/Optional`|G|S|D|R|A|?||
|`TrivialFileTransfer`||`art/Framework/Services/Optional`|G|S|D|R|A|?||

* * * * *

<sup>1</sup> For compactness, we typically say just “multiple TPCs”, eliding and implying support for multiple cryostats as well.

* * * * *

For questions, contact [Gianluca Petrillo](mailto:petrillo@fnal.gov) .
