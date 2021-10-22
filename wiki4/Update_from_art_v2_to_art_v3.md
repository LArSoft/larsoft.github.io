Update from art v2 to art v3[¶](#Update-from-art-v2-to-art-v3)
==============================================================

-   **Table of contents**
-   [Update from art v2 to art v3](#Update-from-art-v2-to-art-v3)
    -   [Header changes](#Header-changes)
        -   [EngineCreator.h](#EngineCreatorh)
        -   [ModuleDescription.h](#ModuleDescriptionh)
        -   [MasterProductRegistry.h](#MasterProductRegistryh)
    -   [Missing headers](#Missing-headers)
        -   [invalid use of incomplete type ‘class art::Event’](#invalid-use-of-incomplete-type-class-artEvent)
    -   [Undefined references](#Undefined-references)
        -   [undefined reference to art::ModuleDescription::processName](#undefined-reference-to-artModuleDescriptionprocessName)
        -   [undefined reference to art::input::RootMutexSentry::RootMutexSentry](#undefined-reference-to-artinputRootMutexSentryRootMutexSentry)
        -   [undefined reference to art::ProductRegistryHelper::insertOrThrow](#undefined-reference-to-artProductRegistryHelperinsertOrThrow)
        -   [undefined reference to art::input::RootMutexSentry::RootMutexSentry()](#undefined-reference-to-artinputRootMutexSentryRootMutexSentry-2)
    -   [NuTools update notes](#NuTools-update-notes)
    -   [using getEngine](#using-getEngine)
    -   [preProcessEvent](#preProcessEvent)
    -   [HoughBaseAlg transform interface changes](#HoughBaseAlg-transform-interface-changes)
    -   [fuzzyClusterAlg::run\_fuzzy\_cluster](#fuzzyClusterAlgrun_fuzzy_cluster)
    -   [PtrMaker](#PtrMaker)
    -   [WeightCalc subclasses](#WeightCalc-subclasses)
    -   [art dump-config](#art-dump-config)

Use of art [v3\_00](/redmine/projects/art/wiki/Series_300) involves a number of [breaking changes](/redmine/projects/art/wiki/300_breaking_changes). \
Please see Kyle’s presentation on [problems found in the code](https://indico.fnal.gov/event/18618/contribution/5/material/slides/0.pdf).


Header changes[¶](#Header-changes) {.wiki-class-count}
----------------------------------


### EngineCreator.h[¶](#EngineCreatorh) {.wiki-class-count}

-   art/Framework/Core/EngineCreator.h has been moved to art/Framework/Core/detail/EngineCreator.h
    -   *this header should not be used*


### ModuleDescription.h[¶](#ModuleDescriptionh) {.wiki-class-count}

-   canvas/Persistency/Provenance/ModuleDescription.h is now art/Persistency/Provenance/ModuleDescription.h


### MasterProductRegistry.h[¶](#MasterProductRegistryh) {.wiki-class-count}

-   art/Persistency/Provenance/MasterProductRegistry.h no longer exists
    -   remove this header, there is no replacement


Missing headers[¶](#Missing-headers) {.wiki-class-count}
------------------------------------


### invalid use of incomplete type ‘class art::Event’[¶](#invalid-use-of-incomplete-type-class-artEvent) {.wiki-class-count}

-   \#include “art/Framework/Principal/Event.h”


Undefined references[¶](#Undefined-references) {.wiki-class-count}
----------------------------------------------

-   see the [Additional dependencies](/redmine/projects/art/wiki/300_breaking_changes#Miscellaneous-changes) section of the breaking changes list.


### undefined reference to art::ModuleDescription::processName[¶](#undefined-reference-to-artModuleDescriptionprocessName) {.wiki-class-count}

-   add art\_Persistency\_Provenance to the link list


### undefined reference to art::input::RootMutexSentry::RootMutexSentry[¶](#undefined-reference-to-artinputRootMutexSentryRootMutexSentry) {.wiki-class-count}

-   add art\_Framework\_IO\_Root\_detail\_sources


### undefined reference to art::ProductRegistryHelper::insertOrThrow[¶](#undefined-reference-to-artProductRegistryHelperinsertOrThrow) {.wiki-class-count}

-   add art\_Framework\_Core


### undefined reference to art::input::RootMutexSentry::RootMutexSentry()[¶](#undefined-reference-to-artinputRootMutexSentryRootMutexSentry-2) {.wiki-class-count}

-   add art\_Framework\_IO\_Root\_detail\_sources


NuTools update notes[¶](#NuTools-update-notes) {.wiki-class-count}
----------------------------------------------

-   nutools [v2\_26\_00](/redmine/projects/nutools/wiki/NuTools_Release_Notes#nutools-v2_26_00-9272018) has been built with art [v3\_00\_00](/redmine/projects/art/wiki/Release_Notes_30000).
    -   This release also has changes that enable the GENIE interface to be compiled with either genie v2 or genie v3.
    -   This release was built with genie v2\_12\_10c.
    -   This release includes dk2nudata v01\_07\_02 and dk2nugenie v01\_07\_02b.
-   Note that art::ModuleDescription is replaced by art::ModuleContext
-   NuRandomService
    -   This service uses EngineCreator
    -   Any module that calls `NuRandomService::createEngine` **must** call the non-default constructor of the base class. See [here](/redmine/projects/art/wiki/300_breaking_changes#Changes-to-modules) and click on “Modules calling createEngine”.
    -   add art\_Framework\_Principal to the library link list
    -   the art service interface has changed
    -   The RandomNumberGenerator service no longer has any notion of the “current” module. Because of that, it is necessary to specify the appropriate schedule ID and module label values when calling getEngine.
    -   NuRandomService is not currently thread safe


using getEngine[¶](#using-getEngine) {.wiki-class-count}
------------------------------------

-   getEngine is designed to be called within a module.
-   For calls which are not part of a constructor:

           art::ServiceHandle<art::RandomNumberGenerator> rng;
        -  CLHEP::HepRandomEngine &engine = rng->getEngine();
        +  CLHEP::HepRandomEngine &engine = rng->getEngine(art::ScheduleID::first(),
        +                                                  moduleDescription().moduleLabel());
           CLHEP::RandFlat   flat(engine);

-   For calls within a constructor:

         MyModule::MyModule(fhicl::ParameterSet const & pset)
        -  : ...
        +  : EDProducer(pset), ...
        ...
           createEngine(sim::GetRandomNumberSeed());
           art::ServiceHandle<art::RandomNumberGenerator> rng;
        -  CLHEP::HepRandomEngine &engine = rng->getEngine();
        +  CLHEP::HepRandomEngine &engine = rng->getEngine(art::ScheduleID::first(),
        +                                                  pset.get<std::string>("module_label");
           fFlatRandom = new CLHEP::RandFlat(engine);

-   Calls to getEngine which are not part of a module require expert help to fix.
    -   The solution involves passing in a moduleDescription from the calling function.


preProcessEvent[¶](#preProcessEvent) {.wiki-class-count}
------------------------------------

The signature of preProcessEvent now requires two arguments:

           virtual void   reconfigure(fhicl::ParameterSet const& pset) override;
    -      void   preProcessEvent(const art::Event& evt);
    +      void   preProcessEvent(const art::Event& evt, art::ScheduleContext);
           void   postOpenFile(const std::string& filename);

\
preProcessEvent is designed to be called by the framework. It should never be called directly. However, the following temporary solution is possible.

         // it requires a specific implementation of DetectorClocksService.
         art::ServiceHandle<detinfo::DetectorClocksServiceStandard> tss;
         // In case trigger simulation is run in the same job...
    -    tss->preProcessEvent(evt);
    +    //FIXME: you should never call preProcessEvent
    +    tss->preProcessEvent(evt, art::ScheduleContext::invalid());


`HoughBaseAlg` transform interface changes[¶](#HoughBaseAlg-transform-interface-changes) {.wiki-class-count}
----------------------------------------------------------------------------------------

All `HoughBaseAlg::Transform` and `HoughBaseAlg::FastTransform` functions now require a `CLHEP::HepRandomEngine&` reference argument to be passed in. The location of the argument depends on the specific function being called.

      size_t FastTransform(std::vector<art::Ptr<recob::Cluster>> const& clusIn,
                           std::vector<recob::Cluster>& ccol,  
                           std::vector< art::PtrVector<recob::Hit>>& clusHitsOut,
    +                      CLHEP::HepRandomEngine& engine,
                           art::Event const& evt,
                           std::string const& label);

      size_t Transform(std::vector<art::Ptr<recob::Hit>> const& hits,
    +                  CLHEP::HepRandomEngine& engine,
                       std::vector<unsigned int>* fpointId_to_clusterId,
                       unsigned int clusterId, // The id of the cluster we are examining
                       unsigned int* nClusters,
                       std::vector<protoTrack> *protoTracks);

      // interface to look for lines only on a set of hits,without slope and totalQ arrays
      size_t FastTransform(
    -      std::vector<art::Ptr<recob::Hit>>      & clusIn,
    +      std::vector<art::Ptr<recob::Hit>> const& clusIn,
           std::vector<art::PtrVector<recob::Hit>>& clusHitsOut,
    +      CLHEP::HepRandomEngine& engine);

      // interface to look for lines only on a set of hits
      size_t FastTransform(
    -      std::vector<art::Ptr<recob::Hit>>      & clusIn,
    +      std::vector<art::Ptr<recob::Hit>> const& clusIn,
           std::vector<art::PtrVector<recob::Hit>>& clusHitsOut,
    +      CLHEP::HepRandomEngine& engine,
           std::vector<double>& slope,
           std::vector<ChargeInfo_t>& totalQ);


`fuzzyClusterAlg::run_fuzzy_cluster`[¶](#fuzzyClusterAlgrun_fuzzy_cluster) {.wiki-class-count}
--------------------------------------------------------------------------

The `fuzzyClusterAlg::run_fuzzy_cluster` call now requires an explicit reference to a `CLHEP::HepRandomEngine` object:

    -    void run_fuzzy_cluster(const std::vector<art::Ptr<recob::Hit> >& allhits);
    +    void run_fuzzy_cluster(const std::vector<art::Ptr<recob::Hit> >& allhits,
    +                           CLHEP::HepRandomEngine& engine);


`PtrMaker`[¶](#PtrMaker) {.wiki-class-count}
------------------------

-   art::PtrMaker no longer requires a *\*this* reference. See [the miscellaneous breaking changes of art v3](/redmine/projects/art/wiki/300_breaking_changes#Miscellaneous-changes).
-   Remove *\*this* from the instantiations:

        -  art::PtrMaker<recob::Shower> ptrMaker(event, *this);
        +  art::PtrMaker<recob::Shower> ptrMaker(event);


`WeightCalc` subclasses[¶](#WeightCalc-subclasses) {.wiki-class-count}
--------------------------------------------------

The `RandomNumberGenerator::getEngine(...)` function cannot be called in any of the classes that inherit from `evwgh::WeightCalc`. To provide random-number engine access, an additional argument has been added to the `Configure` function. Please make the following change:

    - Configure(fhicl::ParameterSet const&) override
    + Configure(fhicl::ParameterSet const&, CLHEP::HepRandomEngine& engine) override

where the `engine` reference can be used to create any CLHEP random-number distribution. Note that the `engine` variable is a reference to an *art*-owned engine.


art dump-config[¶](#art-dump-config) {.wiki-class-count}
------------------------------------

The output of, for instance, `lar --dump-config <file>` may report warnings that were not reported by *art* in art v2. Further, the reported warnings may not require a resolution. There have been some scripts that checked for “excessive lines of output”. This check is fragile. The most reliable check for this test is simply to ensure that *art* ends with status 0.
