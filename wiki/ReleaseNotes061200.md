LArSoft v06\_12\_00 Release Notes(#LArSoft-v06_12_00-Release-Notes)
======================================================================

-   **Table of contents**
-   [LArSoft v06\_12\_00 Release Notes](#LArSoft-v06_12_00-Release-Notes)
    -   [Purpose](#Purpose)
    -   [New features](#New-features)
    -   [Bug fixes](#Bug-fixes)
    -   [Updated dependencies](#Updated-dependencies)
-   [Change List](#Change-List)
    -   [larsoft v06\_12\_00](#larsoft-v06_12_00)
    -   [lareventdisplay v06\_01\_09](#lareventdisplay-v06_01_09)
    -   [larexamples v06\_00\_13](#larexamples-v06_00_13)
    -   [larpandora v06\_02\_00](#larpandora-v06_02_00)
    -   [larana v06\_03\_01](#larana-v06_03_01)
    -   [larreco v06\_09\_00](#larreco-v06_09_00)
    -   [larsim v06\_05\_01](#larsim-v06_05_01)
    -   [larevt v06\_04\_00](#larevt-v06_04_00)
    -   [lardata v06\_07\_01](#lardata-v06_07_01)
    -   [larcore v06\_03\_00](#larcore-v06_03_00)
    -   [larsoftobj v1\_08\_00](#larsoftobj-v1_08_00)
    -   [lardataobj v1\_07\_01](#lardataobj-v1_07_01)
    -   [larcoreobj v1\_06\_00](#larcoreobj-v1_06_00)
    -   [larbatch v01\_23\_07](#larbatch-v01_23_07)
    -   [larutils v1\_10\_00](#larutils-v1_10_00)

[list of LArSoft releases](LArSoft_release_list)\
[Download instructions](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v06_12_00/larsoft-v06_12_00.html)

Purpose(#Purpose)
--------------------

-   merge branches for [\#9264](/redmine/issues/9264 "Feature: Support reconstruction of objects from channel/time space (Closed)")
    -   feature/gp\_WrappedGeometry in larcoreobj, larcore, lariatsoft and dunetpc
-   pandora v03\_00\_00
-   calorimetry updates

New features(#New-features)
------------------------------

-   Calorimetry reconstruction using lifetime from database
    -   larevt: feature/eberly\_dblifetimehack
    -   larreco: feature/feature/tjyang\_lifetimedb
    -   uboonecode: feature/eberly\_dblifetimehack
    -   argoneutcode: feature/tjyang\_movecalorimetryfcl
    -   dunetpc: feature/tjyang\_movecalorimetryfcl
-   move fcl files to experiment repositories
    -   move larreco/Calorimetry/calorimetry\_microboone.fcl to uboone/Calibrations/calorimetry\_microboone.fcl
    -   move larreco/Calorimetry/calorimetry\_dune35t.fcl to dune/Utilities/calorimetry\_dune35t.fcl
    -   move larreco/Calorimetry/calorimetry\_dune10kt.fcl to dune/Utilities/calorimetry\_dune10kt.fcl
    -   move larreco/Calorimetry/calorimetry\_argoneut.fcl to argoneutcode T962Utilities/calorimetry\_argoneut.fcl
    -   remove larreco/Calorimetry/calorimetry\_bo.fcl

Bug fixes(#Bug-fixes)
------------------------

Updated dependencies(#Updated-dependencies)
----------------------------------------------

  --------- ------------- ------------ -------
  Product   Version       Qualifiers   Notes
  pandora   v03\_00\_00   e10          
  --------- ------------- ------------ -------

Change List(#Change-List)
============================

larsoft v06\_12\_00(#larsoft-v06_12_00)
------------------------------------------

-   2016-10-18 Lynn Garren : larsoft v06\_12\_00 for larsoft v06\_12\_00
-   2016-10-18 Lynn Garren : update product versions
-   2016-10-13 Lynn Garren : add El Capitan

lareventdisplay v06\_01\_09(#lareventdisplay-v06_01_09)
----------------------------------------------------------

-   2016-10-18 Lynn Garren : lareventdisplay v06\_01\_09 for larsoft v06\_12\_00

larexamples v06\_00\_13(#larexamples-v06_00_13)
--------------------------------------------------

-   2016-10-18 Lynn Garren : larexamples v06\_00\_13 for larsoft v06\_12\_00

larpandora v06\_02\_00(#larpandora-v06_02_00)
------------------------------------------------

-   2016-10-18 Lynn Garren : larpandora v06\_02\_00 for larsoft v06\_12\_00
-   2016-10-14 John Marshall : Required updates to build against LArPandoraContent v03\_00\_00 and PandoraSDK v03-00-00.

larana v06\_03\_01(#larana-v06_03_01)
----------------------------------------

-   2016-10-18 Lynn Garren : larana v06\_03\_01 for larsoft v06\_12\_00
-   2016-10-18 mthiesse : Change 35ton MC parameter to be consistent with half-field running
-   2016-10-17 Lynn Garren : close the group so doxygen does not complain

larreco v06\_09\_00(#larreco-v06_09_00)
------------------------------------------

-   2016-10-18 Lynn Garren : larreco v06\_09\_00 for larsoft v06\_12\_00
-   2016-10-18 Lynn Garren : Merge branch ‘feature/tjyang\_lifetimedb’ into release/v06\_12\_00
-   2016-10-18 Tingjun Yang : Set CaloLifeTimeForm to 0 by default.
-   2016-10-18 Tingjun Yang : Remove calorimetry\_bo.fcl.
-   2016-10-18 Tingjun Yang : Move calorimetry\_dune10kt.fcl calorimetry\_dune35t.fcl to dunetpc.
-   2016-10-18 Tingjun Yang : Move calorimetry\_argoneut.fcl to argoneutcode.
-   2016-10-18 Tingjun Yang : Move calorimetry\_microboone.fcl to dunetpc/dune/Calibrations
-   2016-10-17 Bruce Baller : Merge branch ‘develop’ into feature/bb\_TJWork
-   2016-10-17 Bruce Baller : Adjust default settings.
-   2016-10-17 Bruce Baller : Remove unused variable. Modify use of fMinAmp
-   2016-10-17 Bruce Baller : Remove unused variable.
-   2016-10-17 Robert Sulej : add assn of primary pfparticle (the one with no reco track, which is just a tag for a neutral particle causing the reconstructed structure) to the END vertex (where visible tracks start)
-   2016-10-16 Bruce Baller : Put Refine2DVertices back into calling structure for further development. Replace code in FindLAHits with call to FindCloseHits. Change quality parameter ptFrac from 0.6 to 0.7 in CheckTraj. Restrict the number of points fit in UpdateTraj for VLA trajectories. Write code to merge TP hits. EraseHit and CreateHit development.
-   2016-10-16 Bruce Baller : Work on EraseHit and CreateHit. Add new DefineHit.
-   2016-10-16 Bruce Baller : Improve functionality of FindCloseHits. Correct error in TPHitsRMSTIck and HitsRMSTick.
-   2016-10-16 Bruce Baller : Pass more parameters to FindCloseHits
-   2016-10-16 Bruce Baller : Set default values in the TCHit constructor
-   2016-10-16 Tingjun Yang : Add default CaloUseModBox.
-   2016-10-15 Tingjun Yang : Add options to read lifetime values from database.
-   2016-10-15 Robert Sulej : Merge branch ‘develop’ of ssh://cdcvs.fnal.gov/cvs/projects/larreco into develop
-   2016-10-15 Robert Sulej : comment out debug info
-   2016-10-15 Robert Sulej : clean up pfp connections, so trk-vtx structure is described with pfp, as it was; but there is always a parent pfp for each trk-vertex structure (even if single track) which has no reco track assigned (need for case where two tracks start from neutral particle intreaction); there is no requirement for single parent of everything (if needed, will add such option); the aim is to produce tight trk-vtx structures that are optimized with pma and provide input to a higher level pass where event fragments are associated (or multiple independent primary particles entering tpc stay separated and are signified with their own parent pfps)
-   2016-10-14 Bruce Baller : Replace recall::Hit with TCHit and tjs.inTraj with fHits[].InTraj
-   2016-10-14 Bruce Baller : Replace recall::Hit with TCHit and tjs.inTraj with fHits[].InTraj
-   2016-10-14 Bruce Baller : Replace recall::Hit with TCHit and tjs.inTraj with fHits[].InTraj
-   2016-10-14 Bruce Baller : Replace recall::Hit with TCHit.
-   2016-10-14 Bruce Baller : Convert VtxHit to TCHit fHits to use TCHits.
-   2016-10-14 Bruce Baller : Remove commented out stuff
-   2016-10-14 Bruce Baller : Uncomment FindHammerVertices. Add FindSoftKink.
-   2016-10-14 Bruce Baller : Add FindSoftKink.
-   2016-10-14 Bruce Baller : Calculate MCSMom using HitPos at the end points.
-   2016-10-14 Bruce Baller : Add SoftKink
-   2016-10-14 Bruce Baller : Add SoftKink
-   2016-10-14 Bruce Baller : Improvements in CheckTraj. Add NoKinkChk in GottaKink. Work in MergeTPHits and MaskTrajEndPoints.
-   2016-10-14 Bruce Baller : Add NoKinkChk
-   2016-10-14 Bruce Baller : Set default MCSMom crazy in the constructor. Add NoKinkChk
-   2016-10-13 Lynn Garren : larsoft v06\_11\_00
-   2016-10-13 Aaron Higuera Pichardo : massive clean up, add comment abaout how to calculate eff
-   2016-10-13 Bruce Baller : Add fMakeNewHits, fCompatibleHitsRMS, fAngleRangesMaxHitsRMS. Change calls to PutTrajHitsInVector. Development of ExpectedHitsRMS for hit selection. Add MaskBadTPs. Improvements to GetHitMultiplet. Fix bug in CreateHit.
-   2016-10-13 Bruce Baller : Add/remove fcl variables.
-   2016-10-13 Bruce Baller : Change call to PutTrajHitsInVector. Add hitRequest to routines.
-   2016-10-13 Bruce Baller : Change call to PutTrajHitsInVector. Add hitRequest to Hits… routines
-   2016-10-13 Bruce Baller : Add MaskBadTPs
-   2016-10-13 Bruce Baller : Add MaskBadTPs
-   2016-10-11 Bruce Baller : Define default value of MakeNewHits.
-   2016-10-10 Bruce Baller : Comment out debugging stuff.

larsim v06\_05\_01(#larsim-v06_05_01)
----------------------------------------

-   2016-10-18 Lynn Garren : larsim v06\_05\_01 for larsoft v06\_12\_00
-   2016-10-17 Joseph Zennamo : Updating a MicroBooNE specific fcl file to work in larsoft v06 that we will be using to generate a new photon lookup library
-   2016-10-17 Joseph Zennamo : Merge branch ‘develop’ of ssh://cdcvs.fnal.gov/cvs/projects/larsim into feature/zennamo\_OpticalSimulation
-   2016-10-17 Steven Gardiner : Add FHiCL file to generate MARLEY events in MicroBooNE. Fix a typo in marley.fcl.
-   2016-10-17 Joseph Zennamo : Merge remote-tracking branch ‘origin’ into feature/zennamo\_OpticalSimulation
-   2016-10-15 William Foreman : More realistic LAr scintillation in lightsource module
-   2016-10-06 Joseph Zennamo : Adding Bug fixes from Matt Toups, specifically the wire parameterization in the optical simulation

larevt v06\_04\_00(#larevt-v06_04_00)
----------------------------------------

-   2016-10-18 Lynn Garren : larevt v06\_04\_00 for larsoft v06\_12\_00
-   2016-10-15 Tingjun Yang : Merge branch ‘develop’ into feature/eberly\_dblifetimehack
-   2016-09-28 Brandon Eberly : Add drift time argument to lifetime function
-   2016-09-27 Brandon Eberly : Interface classes for electron lifetime service and provider

lardata v06\_07\_01(#lardata-v06_07_01)
------------------------------------------

-   2016-10-18 Lynn Garren : lardata v06\_07\_01 for larsoft v06\_12\_00
-   2016-10-14 Gianluca Petrillo : Bug fix on primary particle drawing of DumpPFParticles module graphs
-   2016-10-14 Gianluca Petrillo : Added documentation of particle graphs to DumpPFParticles module

larcore v06\_03\_00(#larcore-v06_03_00)
------------------------------------------

-   2016-10-18 Lynn Garren : larcore v06\_03\_00 for larsoft v06\_12\_00
-   2016-10-18 Lynn Garren : Merge branch ‘feature/gp\_WrappedGeometry’ into release/v06\_12\_00
-   2016-10-12 Gianluca Petrillo : Cosmetic changes.
-   2016-10-12 Gianluca Petrillo : Fixes after Boost update
-   2016-10-12 Gianluca Petrillo : Moved readout ID additions into larcoreobj
-   2016-10-12 Gianluca Petrillo : Merge remote-tracking branch ‘origin/develop’ into feature/gp\_WrappedGeometry
-   2016-07-07 Gianluca Petrillo : Fixes after merging develop in.
-   2016-07-07 Gianluca Petrillo : Merge branch ‘develop’ into feature/gp\_WrappedGeometry
-   2015-07-08 Gianluca Petrillo : Merge remote-tracking branch ‘origin/develop’ into feature/gp\_WrappedGeometry
-   2015-07-07 Gianluca Petrillo : Added a GeometryCore::GetProvider[Ref]() method that returns self (as GeometryCore)
-   2015-07-01 Gianluca Petrillo : Added function to verify that a channel ID exists (HasChannel()). Default implementation provided. Unit test of standard channel mapping updated.
-   2015-07-01 Gianluca Petrillo : Make readout::CryostatID ROOT 5-friendly (i.e. avoid C++11 features)
-   2015-06-26 Gianluca Petrillo : Added a unit test for ChannelMapStandardAlg implementation of the new readout mappings. Defined the behaviour of the mapping in some corner cases.
-   2015-06-25 Gianluca Petrillo : Added mapping between channels and readout planes.
-   2015-06-24 Gianluca Petrillo : Added View() and SignalType() support for readout planes.
-   2015-06-24 Gianluca Petrillo : Added mapping between TPC and TPC sets, and between readout planes and plane wires. Untested.
-   2015-06-22 Gianluca Petrillo : Added readout::TPCsetID and readout::ROPID identifier classes, and their unit tests

larsoftobj v1\_08\_00(#larsoftobj-v1_08_00)
----------------------------------------------

-   2016-10-18 Lynn Garren : larsoftobj v1\_08\_00 for larsoft v06\_12\_00

lardataobj v1\_07\_01(#lardataobj-v1_07_01)
----------------------------------------------

-   2016-10-18 Lynn Garren : lardataobj v1\_07\_01 for larsoft v06\_12\_00

larcoreobj v1\_06\_00(#larcoreobj-v1_06_00)
----------------------------------------------

-   2016-10-18 Lynn Garren : larcoreobj v1\_06\_00 for larsoft v06\_12\_00
-   2016-10-12 Gianluca Petrillo : Added readout-level geometry IDs.

larbatch v01\_23\_07(#larbatch-v01_23_07)
--------------------------------------------

larutils v1\_10\_00(#larutils-v1_10_00)
------------------------------------------

-   2016-10-18 Lynn Garren : larutils v1\_10\_00 for larsoft v06\_12\_00
-   2016-10-18 Lynn Garren : run an arbitrary git command on all repositories in MRB\_SOURCE
-   2016-10-13 Lynn Garren : larsoft v06\_11\_00
-   2016-10-13 Lynn Garren : oops ..
