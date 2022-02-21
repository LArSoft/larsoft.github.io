# Update from art v2 to art v3



Use of art [v3_00](https://cdcvs.fnal.gov/redmine/projects/art/wiki/Series_300) involves a number of \[\[art:300_breaking_changes\|breaking changes\]\].  
Please see Kyle's presentation on [problems found in the code](https://indico.fnal.gov/event/18618/contribution/5/material/slides/0.pdf).

## Header changes

### EngineCreator.h

-   art/Framework/Core/EngineCreator.h has been moved to art/Framework/Core/detail/EngineCreator.h
    -   *this header should not be used*

### ModuleDescription.h

-   canvas/Persistency/Provenance/ModuleDescription.h is now art/Persistency/Provenance/ModuleDescription.h

### MasterProductRegistry.h

-   art/Persistency/Provenance/MasterProductRegistry.h no longer exists
    -   remove this header, there is no replacement

## Missing headers

### invalid use of incomplete type 'class art::Event'

-   \#include “art/Framework/Principal/Event.h”

## Undefined references

-   see the [Additional dependencies](https://cdcvs.fnal.gov/redmine/projects/art/wiki/300_breaking_changes#Miscellaneous-changes) section of the breaking changes list.

### undefined reference to art::ModuleDescription::processName

-   add art_Persistency_Provenance to the link list

### undefined reference to art::input::RootMutexSentry::RootMutexSentry

-   add art_Framework_IO_Root_detail_sources

### undefined reference to art::ProductRegistryHelper::insertOrThrow

-   add art_Framework_Core

### undefined reference to art::input::RootMutexSentry::RootMutexSentry()

-   add art_Framework_IO_Root_detail_sources

## NuTools update notes

-   nutools [v2_26_00](https://cdcvs.fnal.gov/redmine/projects/nutools/wiki/NuTools_Release_Notes#nutools-v2_26_00-9272018) has been built with art \[\[art:Release_Notes_30000\|v3_00_00\]\].
    -   This release also has changes that enable the GENIE interface to be compiled with either genie v2 or genie v3.
    -   This release was built with genie v2_12_10c.
    -   This release includes dk2nudata v01_07_02 and dk2nugenie v01_07_02b.
-   Note that art::ModuleDescription is replaced by art::ModuleContext
-   NuRandomService
    -   This service uses EngineCreator
    -   Any module that calls `NuRandomService::createEngine` **must** call the non-default constructor of the base class. See [here](https://cdcvs.fnal.gov/redmine/projects/art/wiki/300_breaking_changes#Changes-to-modules) and click on “Modules calling createEngine”.
    -   add art_Framework_Principal to the library link list
    -   the art service interface has changed
    -   The RandomNumberGenerator service no longer has any notion of the “current” module. Because of that, it is necessary to specify the appropriate schedule ID and module label values when calling getEngine.
    -   NuRandomService is not currently thread safe

## using getEngine

-   getEngine is designed to be called within a module.
-   For calls which are not part of a constructor:
```diff

           art::ServiceHandle<art::RandomNumberGenerator> rng;
        -  CLHEP::HepRandomEngine &amp;engine = rng->getEngine();
        +  CLHEP::HepRandomEngine &amp;engine = rng->getEngine(art::ScheduleID::first(),
        +                                                  moduleDescription().moduleLabel());
           CLHEP::RandFlat   flat(engine);
```
-   For calls within a constructor:
```diff

         MyModule::MyModule(fhicl::ParameterSet const &amp; pset)
        -  : ...
        +  : EDProducer(pset), ...
        ...
           createEngine(sim::GetRandomNumberSeed());
           art::ServiceHandle<art::RandomNumberGenerator> rng;
        -  CLHEP::HepRandomEngine &amp;engine = rng->getEngine();
        +  CLHEP::HepRandomEngine &amp;engine = rng->getEngine(art::ScheduleID::first(),
        +                                                  pset.get<std::string>("module_label");
           fFlatRandom = new CLHEP::RandFlat(engine);
```
-   Calls to getEngine which are not part of a module require expert help to fix.
    -   The solution involves passing in a moduleDescription from the calling function.

## preProcessEvent

The signature of preProcessEvent now requires two arguments:

```diff

           virtual void   reconfigure(fhicl::ParameterSet const&amp; pset) override;
    -      void   preProcessEvent(const art::Event&amp; evt);
    +      void   preProcessEvent(const art::Event&amp; evt, art::ScheduleContext);
           void   postOpenFile(const std::string&amp; filename);
```

  
preProcessEvent is designed to be called by the framework. It should never be called directly. However, the following temporary solution is possible.

```diff

         // it requires a specific implementation of DetectorClocksService.
         art::ServiceHandle<detinfo::DetectorClocksServiceStandard> tss;
         // In case trigger simulation is run in the same job...
    -    tss->preProcessEvent(evt);
    +    //FIXME: you should never call preProcessEvent
    +    tss->preProcessEvent(evt, art::ScheduleContext::invalid());
```

## `HoughBaseAlg` transform interface changes

All `HoughBaseAlg::Transform` and `HoughBaseAlg::FastTransform` functions now require a `CLHEP::HepRandomEngine&amp;` reference argument to be passed in. The location of the argument depends on the specific function being called.

```diff

      size_t FastTransform(std::vector<art::Ptr<recob::Cluster>> const&amp; clusIn,
                           std::vector<recob::Cluster>&amp; ccol,  
                           std::vector< art::PtrVector<recob::Hit>>&amp; clusHitsOut,
    +                      CLHEP::HepRandomEngine&amp; engine,
                           art::Event const&amp; evt,
                           std::string const&amp; label);

      size_t Transform(std::vector<art::Ptr<recob::Hit>> const&amp; hits,
    +                  CLHEP::HepRandomEngine&amp; engine,
                       std::vector<unsigned int>* fpointId_to_clusterId,
                       unsigned int clusterId, // The id of the cluster we are examining
                       unsigned int* nClusters,
                       std::vector<protoTrack> *protoTracks);

      // interface to look for lines only on a set of hits,without slope and totalQ arrays
      size_t FastTransform(
    -      std::vector<art::Ptr<recob::Hit>>      &amp; clusIn,
    +      std::vector<art::Ptr<recob::Hit>> const&amp; clusIn,
           std::vector<art::PtrVector<recob::Hit>>&amp; clusHitsOut,
    +      CLHEP::HepRandomEngine&amp; engine);

      // interface to look for lines only on a set of hits
      size_t FastTransform(
    -      std::vector<art::Ptr<recob::Hit>>      &amp; clusIn,
    +      std::vector<art::Ptr<recob::Hit>> const&amp; clusIn,
           std::vector<art::PtrVector<recob::Hit>>&amp; clusHitsOut,
    +      CLHEP::HepRandomEngine&amp; engine,
           std::vector<double>&amp; slope,
           std::vector<ChargeInfo_t>&amp; totalQ);
```

## `fuzzyClusterAlg::run_fuzzy_cluster`

The `fuzzyClusterAlg::run_fuzzy_cluster` call now requires an explicit reference to a `CLHEP::HepRandomEngine` object:

```diff

    -    void run_fuzzy_cluster(const std::vector<art::Ptr<recob::Hit> >&amp; allhits);
    +    void run_fuzzy_cluster(const std::vector<art::Ptr<recob::Hit> >&amp; allhits,
    +                           CLHEP::HepRandomEngine&amp; engine);
```

## `PtrMaker`

-   art::PtrMaker no longer requires a *\*this* reference. See [the miscellaneous breaking changes of art v3](https://cdcvs.fnal.gov/redmine/projects/art/wiki/300_breaking_changes#Miscellaneous-changes).
-   Remove *\*this* from the instantiations:
```diff

        -  art::PtrMaker<recob::Shower> ptrMaker(event, *this);
        +  art::PtrMaker<recob::Shower> ptrMaker(event);
```

## `WeightCalc` subclasses

The `RandomNumberGenerator::getEngine(...)` function cannot be called in any of the classes that inherit from `evwgh::WeightCalc`. To provide random-number engine access, an additional argument has been added to the `Configure` function. Please make the following change:

```diff

    - Configure(fhicl::ParameterSet const&amp;) override
    + Configure(fhicl::ParameterSet const&amp;, CLHEP::HepRandomEngine&amp; engine) override
```

where the `engine` reference can be used to create any CLHEP random-number distribution. Note that the `engine` variable is a reference to an *art*-owned engine.

## art dump-config

The output of, for instance, `lar --dump-config <file>` may report warnings that were not reported by *art* in art v2. Further, the reported warnings may not require a resolution. There have been some scripts that checked for “excessive lines of output”. This check is fragile. The most reliable check for this test is simply to ensure that *art* ends with status 0.
