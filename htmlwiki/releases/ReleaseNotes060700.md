LArSoft v06_07_00 Release Notes
======================================================================

[list of LArSoft releases](LArSoft_release_list)
[Download instructions](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v06_07_00/larsoft-v06_07_00.html)

Purpose
--------------------

-   build with [art 2.04.00](https://cdcvs.fnal.gov/redmine/projects/art/wiki/Release_Notes_20400)
    -   feature/for_larsoft_v06_07_00 is provided for **dunetpc** and **lariatsoft**
    -   A simple mrb uv larsoft v06_07_00 is sufficient for uboonecode and argoneutcode
-   update pandora

New features
------------------------------

-   Pandora “suite” v02-09-02
-   larpandoracontent - feature/LArPandoraContent_v02_08_00
    -   new Pandora algorithm developments
-   larpandora - feature/SettingsFor_LArPandoraContent_v02_08_00
    -   The PandoraSettings files, which are included alongside larpandora, will need to include new algorithms, a couple of existing algorithms have also had a change in their mandatory configuration, so running with old settings should halt a job when parsing the settings file.
    -   dunetpc should merge feature/for_larsoft_v06_07_00, which contains feature/SettingsFor_LArPandoraContent_v02_08_00

Bug fixes
------------------------

-   [redmine issue 13765](https://cdcvs.fnal.gov/redmine/issues/13765)

Updated dependencies
----------------------------------------------

||
|Product|Version|Qualifiers|Notes|
|nutools|v2_05_00|e10||
|nusimdata|v1_06_00|e10||
|marley|v0_9_5a|e10||
|pandora|v02_09_02|e10:nu||
|ifdh_art|v1_15_06|e10:nu:s42||
|artdaq_core|v1_05_07|e10:nu:s42||
|art|v2_04_00|e10:nu|[Release Notes 2.04.00](https://cdcvs.fnal.gov/redmine/projects/art/wiki/Release_Notes_20400)|
|geant4|v4_10_1_p03d|e10||
|genie|v2_10_10a|e10:r6||
|dk2nu|v01_04_01b|e10:r6||
|root|v6_06_08|e10:nu||
|clhep|v2_3_3_2|e10||
|qt|-||qt and the geant4 build with qt are no longer part of the distribution|

Change List
============================

larsoft v06_07_00
------------------------------------------

-   2016-09-22 Lynn Garren : fix larsoftobj buildcfg
-   2016-09-22 Lynn Garren : deal properly with git and gitflow
-   2016-09-22 Lynn Garren : larsoft v06_07_00 for larsoft v06_07_00
-   2016-09-22 Lynn Garren : larsoftobj sources
-   2016-09-22 Lynn Garren : update dependency database
-   2016-09-22 Lynn Garren : remove qt and update product versions

lareventdisplay v06_01_05
----------------------------------------------------------

-   2016-09-22 Lynn Garren : lareventdisplay v06_01_05 for larsoft v06_07_00

larexamples v06_00_09
--------------------------------------------------

-   2016-09-22 Lynn Garren : larexamples v06_00_09 for larsoft v06_07_00

larpandora v06_01_00
------------------------------------------------

-   2016-09-22 Lynn Garren : larpandora v06_01_00 for larsoft v06_07_00
-   2016-09-19 John Marshall : Merge branch ‘updates’ into develop
-   2016-09-19 John Marshall : Update scripts and larpandoracontent version.

larana v06_01_06
----------------------------------------

-   2016-09-22 Lynn Garren : larana v06_01_06 for larsoft v06_07_00

larreco v06_05_00
------------------------------------------

-   2016-09-22 Lynn Garren : larreco v06_05_00 for larsoft v06_07_00
-   2016-09-21 Robert Sulej : make crop configurable, so can be disabled when dumping noise or empty events
-   2016-09-21 Robert Sulej : change crop from fraction to absolute energy cut, enable crop in data dumping module
-   2016-09-20 Robert Sulej : add crop fn to data dumping alg
-   2016-09-19 Robert Sulej : add example job configutation (based on ProtoDUNE, with comments so adopting to other detectors should be easy)
-   2016-09-19 Robert Sulej : add comments
-   2016-09-19 Robert Sulej : fix typo in parameter name, change default downscale fn to mean
-   2016-09-15 Bruce Baller : Use UseUnusedHits on large angle trajectory points.
-   2016-09-15 Bruce Baller : Move duplicate hit check from StoreWork to CheckTraj. Don’t try to merge bad trajectories.
-   2016-09-15 Bruce Baller : Change failure return value for closePt.
-   2016-09-15 Bruce Baller : Turn off UseUnusedHits algorithm for now.
-   2016-09-14 Bruce Baller : Merge branch ‘develop’ into feature/bb_TJWork
-   2016-09-14 Bruce Baller : Code cleanup.
-   2016-09-14 Bruce Baller : Add UseUnusedHits
-   2016-09-14 Bruce Baller : Add UseUnusedHits
-   2016-09-14 Bruce Baller : Remove fuBCode. Add UseUnusedHits.
-   2016-09-14 Bruce Baller : Remove uBCode. Add UseUnusedHits and comment it out for now.
-   2016-09-14 Bruce Baller : Add trajcluster MaxHitMultiplicity
-   2016-09-13 Bruce Baller : Revise fcl parameters for version 1
-   2016-09-13 Bruce Baller : Change vertex cut definitions. Add TagDeltaRays and TagShowerTraj. Remove ChainMerge. Vertex code development.
-   2016-09-13 Bruce Baller : Remove fQuality. Modify vertex cut definitions. Vertex code development.
-   2016-09-13 Bruce Baller : Change trajectory Vtx index to VtxID. Remove TrajPointHitSep2. Add PosSep routines. Add ShowerTag and vertex routines.
-   2016-09-13 Bruce Baller : Remove TrajpointHitSep2. Add PosSep routines. Add vertex routines.
-   2016-09-13 Bruce Baller : Change vertex positions and errors to Pos and PosErr. Remove vtx ProcCode. Change trajectory Vtx from index to VtxID. Remove ChainMerge.
-   2016-09-13 Bruce Baller : Remove ChainMerge
-   2016-09-09 Bruce Baller : removed ChainMerge from TrajCluster
-   2016-09-08 Bruce Baller : Fix bug in defining view for new hits
-   2016-09-08 Bruce Baller : Code cleanup
-   2016-09-08 Bruce Baller : Add HitIsInTj and HasDuplicateHits.
-   2016-09-08 Bruce Baller : Add HitIsInTj and HasDuplicateHits.
-   2016-09-08 Bruce Baller : use TrajCluster cluster ID instead of a local ID.
-   2016-09-08 Bruce Baller : Add MaxHitMultiplicity and make esthetic changes
-   2016-09-08 Bruce Baller : Add MaxHitMultiplicity to minimize needless tracking in showers. Work on muons, delta rays, merging. Replace kMuon with PDGCode = 13. Rewrite FillGaps aka FillMissedPoints. Add more quality checks in StoreWork. Rewrite sections of MakeNewHits so that all hit references are valid.
-   2016-09-08 Bruce Baller : Change MCSMom from float to short. Add TagMuonDirections
-   2016-09-08 Bruce Baller : Add HitIsInTraj. Change MCSMom from float to short. Fixes to TagDeltaRays. Add TagMuonDirection. Print format changes.
-   2016-09-08 Bruce Baller : Add Trajectory Dir. Other esthetic changes.
-   2016-09-08 Bruce Baller : Minor name changes
-   2016-09-08 Bruce Baller : Change TrajCluster fcl settings
-   2016-09-03 Bruce Baller : Change PDG to PDGCode
-   2016-09-03 Bruce Baller : Add TrajCluster MuonTag and MuonDRaySepCut
-   2016-09-03 Bruce Baller : Remove ROI code. Add fuBCode for MicroBooNE code to deal with delta rays. Add muon and delta ray tag variables.
-   2016-09-03 Bruce Baller : Add fuBCode for MicroBooNE code to deal with delta rays. Add muon and delta ray tag variables. Move MakeBareTrajpoint to Utils.cxx. Replace AppendToWork with MergeAndStore.
-   2016-09-03 Bruce Baller : Add MCSMom, MakeBareTrajPoint and TagDeltaRays
-   2016-09-03 Bruce Baller : Add MCSMom, MakeBareTrajPoint and TagDeltaRays
-   2016-09-03 Bruce Baller : Add MotherID, UnMaskHits, DeltaRay. Remove WirePtr.
-   2016-09-03 Bruce Baller : Added UnMaskHits and DeltaRay
-   2016-08-31 Bruce Baller : Set default MakeNewHits.
-   2016-08-31 Bruce Baller : Clear WireHitRange if it isn’t empty.
-   2016-08-30 Bruce Baller : Add MakeNewHits fcl input
-   2016-08-30 Bruce Baller : Optionally write new hits
-   2016-08-30 Bruce Baller : Print old hits or new hits
-   2016-08-30 Bruce Baller : Add PrintHit variant
-   2016-08-30 Bruce Baller : Re-arrange tjs. Add newHits
-   2016-08-30 Bruce Baller : Add MakeNewHits
-   2016-08-30 Bruce Baller : Add MakeNewHits.
-   2016-08-29 Bruce Baller : Temp use TH2F for studies
-   2016-08-29 Bruce Baller : Temp changes with fStudyMode. Work on ReversePropagate, EndMerge, CalculateQuality.
-   2016-08-29 Bruce Baller : Print format changes
-   2016-08-29 Bruce Baller : Add MCSMom.
-   2016-08-26 Bruce Baller : Improve ReversePropagate and FindUseHits. Modify vertex cuts - still hard coded. Add special handling for muons in StepCrawl and UpdateTraj. Change Trackness - incomplete.
-   2016-08-26 Bruce Baller : Pass cuts to FindUseHits
-   2016-08-26 Bruce Baller : Change print format
-   2016-08-25 Bruce Baller : Merge branch ‘feature/bb_TJWork’ of ssh://cdcvs.fnal.gov/cvs/projects/larreco into feature/bb_TJWork
-   2016-08-25 Bruce Baller : ongoing development
-   2016-08-25 Bruce Baller : Merge branch ‘develop’ into feature/bb_TJWork
-   2016-08-24 Bruce Baller : fix bug in FindUseHits
-   2016-08-23 Bruce Baller : Merge branch ‘feature/bb_TJWork’ of ssh://cdcvs.fnal.gov/cvs/projects/larreco into feature/bb_TJWork
-   2016-08-23 Bruce Baller : Merge branch ‘develop’ into feature/bb_TJWork
-   2016-08-23 Bruce Baller : ongoing development
-   2016-08-22 Bruce Baller : Merge branch ‘develop’ into feature/bb_TJWork
-   2016-08-22 Bruce Baller : Add SignalAtPos
-   2016-08-22 Bruce Baller : Lots of development - incomplete.
-   2016-08-22 Bruce Baller : Comment out SignalPresent. Fix bug in TrajPointTrajDOCA. Print trackless.
-   2016-08-22 Bruce Baller : Add Trackness, muon
-   2016-08-22 Bruce Baller : Add Muon
-   2016-08-10 Bruce Baller : Merge branch ‘develop’ into feature/bb_TJWork
-   2016-08-10 Bruce Baller : Add fMaxQuality and CalculateQuality.
-   2016-08-10 Bruce Baller : Prepend text when calling PrintTrajectory. Add FixTrajBegin and modify ReversePropagate. Calculate HitPosErr2 more accurately. Add CalculateQuality.
-   2016-08-10 Bruce Baller : Print someText
-   2016-08-10 Bruce Baller : Print someText and trajectory WorkID
-   2016-08-10 Bruce Baller : Add WorkID in Trajectory for debugging
-   2016-08-05 Bruce Baller : Modify MicroBooNE TrajCluster parameter.
-   2016-08-05 Bruce Baller : Add CalDataModuleLabel to provide for the possibility that it may not the default value of “caldata”. Adjust default TrajCluster tracking parameter MinPtsFit.
-   2016-08-05 Bruce Baller : Mods to allow ROI testing.
-   2016-08-05 Bruce Baller : Add testing for missing hits on wires using ROIs instead of hits. Comment out ReversePropagate until it is found to be useful. Add another condition in GottaKink.
-   2016-08-05 Bruce Baller : Add WirePtr for ROI testing
-   2016-08-02 Bruce Baller : Add FixTrajBegin
-   2016-08-02 Bruce Baller : Update the beginning TPs of a trajectory in CheckTraj. Check trajectory quality before reverse propagating. Fix logic error in FitTraj for 3 point fit.
-   2016-08-01 Bruce Baller : Add/change debug printout. Add fQuitAlg at strategic places. Add CheckTraj in MakeJunkTraj. Replace PutTrajHitsInVector in AddHits with a loop over the last several TPs. Remove pclHits in AddHits. Remove SignalAtTp in StepCrawl. Change dead wire count in CheckTraj. Change “not a kink” but a crossing track cut in GottaKink. Fix logic for flipping direction in FitTraj.
-   2016-08-01 Bruce Baller : Add MaskTrajEndPoints
-   2016-08-01 Bruce Baller : Move MaskTrajEndpoints to TrajClusterAlg
-   2016-08-01 Bruce Baller : Move MaskTrajEndPoints to TrajClusterAlg.
-   2016-08-01 Bruce Baller : Add FixTrajBegin
-   2016-08-01 Bruce Baller : Add FixTrajBegin
-   2016-07-27 Bruce Baller : Trim hits after a dead wire section.
-   2016-07-27 Bruce Baller : Add kCheckInTraj to AlgBitNames. Don’t put traj hits in vector if isLA.
-   2016-07-27 Bruce Baller : Add CheckInTraj
-   2016-07-27 Bruce Baller : Add CheckInTraj
-   2016-07-27 Bruce Baller : Change Debug to debug
-   2016-07-27 Bruce Baller : Add WorkID. Change Debug to debug.
-   2016-07-27 Bruce Baller : Change Debug to debug
-   2016-07-27 Bruce Baller : Add fWorkID
-   2016-07-27 Bruce Baller : Add fWorkID for debugging, Fix logic errors.

larsim v06_03_05
----------------------------------------

-   2016-09-22 Lynn Garren : larsim v06_03_05 for larsoft v06_07_00

larevt v06_02_01
----------------------------------------

-   2016-09-22 Lynn Garren : larevt v06_02_01 for larsoft v06_07_00

lardata v06_05_00
------------------------------------------

-   2016-09-22 Lynn Garren : lardata v06_05_00 for larsoft v06_07_00

larcore v06_02_02
------------------------------------------

-   2016-09-22 Lynn Garren : larcore v06_02_02 for larsoft v06_07_00

larsoftobj v1_07_00
----------------------------------------------

-   2016-09-22 Lynn Garren : larsoftobj v1_07_00 for larsoft v06_07_00

lardataobj v1_07_00
----------------------------------------------

-   2016-09-22 Lynn Garren : lardataobj v1_07_00 for larsoft v06_07_00
-   2016-09-22 Lynn Garren : std::vector\< std::vector\<double\> \> is already defined

larcoreobj v1_05_00
----------------------------------------------

-   2016-09-22 Lynn Garren : larcoreobj v1_05_00 for larsoft v06_07_00

larbatch v01_23_06
--------------------------------------------

larutils v1_08_05
------------------------------------------
