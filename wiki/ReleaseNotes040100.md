LArSoft v04\_01\_00 Release Notes
======================================================================

-   **Table of contents**
-   [LArSoft v04\_01\_00 Release Notes](#LArSoft-v04_01_00-Release-Notes)
    -   [Purpose](#Purpose)
    -   [New features](#New-features)
    -   [Bug fixes](#Bug-fixes)
    -   [Updated dependencies](#Updated-dependencies)
-   [Change List](#Change-List)
    -   [larsoft v04\_01\_00](#larsoft-v04_01_00)
    -   [lareventdisplay v04\_01\_00](#lareventdisplay-v04_01_00)
    -   [larexamples v04\_00\_02](#larexamples-v04_00_02)
    -   [larpandora v04\_00\_02](#larpandora-v04_00_02)
    -   [larana v04\_01\_00](#larana-v04_01_00)
    -   [larreco v04\_01\_00](#larreco-v04_01_00)
    -   [larsim v04\_01\_00](#larsim-v04_01_00)
    -   [larevt v04\_00\_02](#larevt-v04_00_02)
    -   [lardata v04\_00\_02](#lardata-v04_00_02)

[list of LArSoft releases](LArSoft_release_list)\
[Download instructions](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v04_01_00/larsoft-v04_01_00.html)

Purpose
--------------------

-   Integrate SeedService and GaussHitUpdate

New features
------------------------------

-   SeedService

Bug fixes
------------------------

Updated dependencies
----------------------------------------------

  --------------- ------------ ----------- -----------------------------
  Product         Version      Qualifier   Notes
  artextensions   v1\_01\_01   e6:nu       SeedService
  nutools         v1\_08\_00   e6          changes needed for GaussHit
  ifdhc           v1\_7\_2     e6:p278     
  ifbeam          v1\_4\_7     e6:p278     
  nucondb         v1\_4\_7     e6:p278     
  ifdh\_art       v1\_7\_1     e6:nu       
  --------------- ------------ ----------- -----------------------------

Change List
============================

larsoft v04\_01\_00
------------------------------------------

-   2015-02-27 Lynn Garren : larsoft v04\_01\_00 for larsoft v04\_01\_00
-   2015-02-27 Lynn Garren : updating product list
-   2015-02-27 Lynn Garren : adding new headers

lareventdisplay v04\_01\_00
----------------------------------------------------------

-   2015-02-27 Lynn Garren : lareventdisplay v04\_01\_00 for larsoft v04\_01\_00
-   2015-02-26 Tingjun Yang : Set track hit color to consistent with track color in Ortho3D view.
-   2015-02-26 Tingjun Yang : Fix cluster slopes.

larexamples v04\_00\_02
--------------------------------------------------

-   2015-02-27 Lynn Garren : larexamples v04\_00\_02 for larsoft v04\_01\_00

larpandora v04\_00\_02
------------------------------------------------

-   2015-02-27 Lynn Garren : larpandora v04\_00\_02 for larsoft v04\_01\_00

larana v04\_01\_00
----------------------------------------

-   2015-02-27 Lynn Garren : larana v04\_01\_00 for larsoft v04\_01\_00
-   2015-02-25 Gianluca Petrillo : Merging develop (based on larsoft v04\_00\_01)
-   2015-02-23 Gianluca Petrillo : Using the new SeedService interface.
-   2015-02-21 Wesley Ketchum : add in MCTrack info to flash hypothesis comparison
-   2015-02-12 Gianluca Petrillo : Two modules adapted to the use of SeedService, removed unused e\\random engine from other two.

larreco v04\_01\_00
------------------------------------------

-   2015-02-27 Lynn Garren : larreco v04\_01\_00 for larsoft v04\_01\_00
-   2015-02-27 Lynn Garren : Merge branch ‘feature/SeedService’ into release/v04\_01\_00
-   2015-02-27 Lynn Garren : Merge branch ‘feature/wketchum\_GausHitUpdate’ into release/v04\_01\_00
-   2015-02-26 Bruce Baller : comment out sanity check and std::couts
-   2015-02-26 Bruce Baller : Make StudyHits mode fcl selectable. ClusterCrawler tweak. Adjust HitFinder fcl settings for uB.
-   2015-02-26 Tingjun Yang : Add MinSig.
-   2015-02-25 Gianluca Petrillo : Merging develop (based on larsoft v04\_00\_01)
-   2015-02-25 Tracy Usher : Inserting a loop over ROI’s inside the loop over wires, this merged into updates from Wes this past week.
-   2015-02-23 Gianluca Petrillo : Using the new SeedService interface.
-   2015-02-23 Bruce Baller : Merge branch ‘develop’ into feature/DataProductRevision
-   2015-02-23 Thomas Warburton : Adding a cut on if tdc value is outside fsampletime
-   2015-02-23 Bruce Baller : Data product revisions and code revisions
-   2015-02-21 Wesley Ketchum : update microboone file…
-   2015-02-21 Wesley Ketchum : make gaushitfinder work with parameters per plane, rather than signal type
-   2015-02-14 Gianluca Petrillo : Fixed random engine creation in fuzzyCluster
-   2015-02-12 Gianluca Petrillo : Three modules adapted to the use of SeedService, removed unused e\\random engine from another one.
-   2015-02-05 Bruce Baller : Merge branch ‘feature/DataProductRevision’ of ssh://cdcvs.fnal.gov/cvs/projects/larreco into feature/DataProductRevision
-   2015-01-28 Bruce Baller : Merge branch ‘develop’ into feature/DataProductRevision

larsim v04\_01\_00
----------------------------------------

-   2015-02-27 Lynn Garren : larsim v04\_01\_00 for larsoft v04\_01\_00
-   2015-02-27 Lynn Garren : have to install the headers
-   2015-02-27 Lynn Garren : disable the new gensingle test if we are not using mrb
-   2015-02-27 Lynn Garren : disable the new gensingle test if we are not using mrb
-   2015-02-27 Lynn Garren : add missing library
-   2015-02-27 Lynn Garren : Merge branch ‘feature/SeedService’ into release/v04\_01\_00
-   2015-02-27 Lynn Garren : use larevt v04\_00\_02
-   2015-02-26 Gianluca Petrillo : Added explicit dependency on artextensions
-   2015-02-25 Gianluca Petrillo : Changed test to GeneratedEventTimestamp to reflect the new SeedService per-event seed policy behaviour (throw for events without valid timestamp)
-   2015-02-25 Gianluca Petrillo : Merging develop (based on larsoft v04\_00\_01)
-   2015-02-25 Gianluca Petrillo : Fixed a bug in debug mode of GeneratedEventTimestamp
-   2015-02-25 Gianluca Petrillo : Added GeneratedEventTimestamp to EmptyEvent configuration in a FHiCL file
-   2015-02-24 Gianluca Petrillo : Added single particle generation test
-   2015-02-23 Gianluca Petrillo : Added GeneratedEventTimestamp tinestamp plug in to the configuration files.
-   2015-02-23 Gianluca Petrillo : Timestamp plugin for EmptyEvent.
-   2015-02-23 Gianluca Petrillo : Using the new SeedService interface.
-   2015-02-21 Wesley Ketchum : Merge branch ‘feature/wketchum\_MCTrackCollectionAna’ into develop
-   2015-02-21 Wesley Ketchum : fix to the RMS, now ready to merge to develop
-   2015-02-19 Wesley Ketchum : MCTrackCollectionAnaAlg compiles…
-   2015-02-19 Wesley Ketchum : create an MCTrackCollectionAnaAlg, for analyzing geometry info on a collection of MCTracks…
-   2015-02-19 drinkingkazu : Fixing daughter start point & energy, improve speed a bit –kazu
-   2015-02-13 Gianluca Petrillo : Fixed a bug with the new random seed in LArG4
-   2015-02-12 Gianluca Petrillo : GENIE adapted to the use of SeedService.
-   2015-02-12 Gianluca Petrillo : Merge remote-tracking branch ‘origin/develop’ into feature/SeedService
-   2015-02-12 Gianluca Petrillo : Geant4 and ToyOneShowerGen adapted to SeedService
-   2015-02-12 Gianluca Petrillo : All generator interfaces except GENIE’s adapted to SeedService
-   2015-02-10 Gianluca Petrillo : Support for SeedService (SimWireT962 module only)

larevt v04\_00\_02
----------------------------------------

-   2015-02-27 Lynn Garren : larevt v04\_00\_02 for larsoft v04\_01\_00

lardata v04\_00\_02
------------------------------------------

-   2015-02-27 Lynn Garren : lardata v04\_00\_02 for larsoft v04\_01\_00
-   2015-02-26 Gianluca Petrillo : SeedService stuff moved away (temporary exception for ArgoNeuT)
-   2015-02-25 Gianluca Petrillo : Merging develop (based on larsoft v04\_00\_01)
-   2015-02-25 Gianluca Petrillo : Added GeneratedEventTimestamp to EmptyEvent configuration in some FHiCL files
-   2015-02-23 Gianluca Petrillo : Adding support for SeedService ‘perEvent’ policy. Dropping FetchRandomSeed.
-   2015-02-23 Xin Qian : turn off a warning
-   2015-02-20 Xin Qian : Merge branch ‘develop’ into feature/jyoti\_XinSignalShaping
-   2015-02-16 Gianluca Petrillo : Added support for configuration parameter aliases in FetchRandomSeed()
-   2015-02-14 Xin Qian : Merge branch ‘develop’ into feature/jyoti\_XinSignalShaping
-   2015-02-13 Gianluca Petrillo : Added a function to get a random seed determined by the current event and module
-   2015-02-13 Gianluca Petrillo : Added experiment configuration for SeedService. The new settings are backward-compatible.
-   2015-02-12 Gianluca Petrillo : Fixed a typo
-   2015-02-12 Gianluca Petrillo : Merge remote-tracking branch ‘origin/develop’ into feature/SeedService
-   2015-02-10 Gianluca Petrillo : Support for SeedService
-   2015-02-07 Xin Qian : fix normalization problem
