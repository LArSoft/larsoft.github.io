LArSoft v06\_41\_00 Release Notes
======================================================================

-   **Table of contents**
-   [LArSoft v06\_41\_00 Release Notes](#LArSoft-v06_41_00-Release-Notes)
    -   [Purpose](#Purpose)
    -   [New features](#New-features)
    -   [Bug fixes](#Bug-fixes)
    -   [Updated dependencies](#Updated-dependencies)
-   [Change List](#Change-List)
    -   [larsoft v06\_41\_00](#larsoft-v06_41_00)
    -   [lareventdisplay v06\_07\_00](#lareventdisplay-v06_07_00)
    -   [larexamples v06\_04\_02](#larexamples-v06_04_02)
    -   [larpandora v06\_13\_02](#larpandora-v06_13_02)
    -   [larwirecell v06\_05\_02](#larwirecell-v06_05_02)
    -   [larana v06\_07\_02](#larana-v06_07_02)
    -   [larreco v06\_32\_00](#larreco-v06_32_00)
    -   [larsim v06\_25\_00](#larsim-v06_25_00)
    -   [larevt v06\_14\_02](#larevt-v06_14_02)
    -   [lardata v06\_23\_00](#lardata-v06_23_00)
    -   [larcore v06\_11\_00](#larcore-v06_11_00)
    -   [larpandoracontent v03\_07\_01](#larpandoracontent-v03_07_01)
    -   [larsoftobj v1\_22\_00](#larsoftobj-v1_22_00)
    -   [lardataobj v1\_17\_01](#lardataobj-v1_17_01)
    -   [larcoreobj v1\_15\_00](#larcoreobj-v1_15_00)
    -   [larbatch v01\_32\_02](#larbatch-v01_32_02)
    -   [larutils v1\_16\_00](#larutils-v1_16_00)

[list of LArSoft releases](LArSoft_release_list)
Download instructions for [larsoft v06\_41\_00](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v06_41_00/larsoft-v06_41_00.html)
Download instructions for [just larsoftobj v1\_22\_00](http://scisoft.fnal.gov/scisoft/bundles/larsoftobj/v1_22_00/larsoftobj-v1_22_00.html)

Purpose
--------------------

-   changes to develop
-   merge approved feature branches

New features
------------------------------

-   dual phase raw hit finding using a new version of MVAReader/Writer in lardata
    -   [https://indico.fnal.gov/getFile.py/access?contribId=4&resId=0&materialId=slides&confId=14645](https://indico.fnal.gov/getFile.py/access?contribId=4&resId=0&materialId=slides&confId=14645)
    -   dunetpc: feature/chalt\_RawHitFindingDP
    -   larreco: feature/chalt\_RawHitFindingDP
    -   lareventdisplay: feature/chalt\_RawHitFindingDP
    -   lardata: feature/rsulej\_FactorizeHelper
-   feature/bb\_TJWork
    -   The vertex finding and shower finding code have been moved into TCAlg; TCVertex.cxx(h) and TCShower.cxx(h). There is another TrajCluster mode to allow reconstruction only in the collection plane. This will be used for the ProtoDUNE nearline purity monitoring.
    -   Hits are now matched to MC truth before reconstruction to facilitate shower reconstruction studies. DataStructs.h and MatchTruth() have been modified.
    -   TrajCluster now accepts an optional fcl parameter (VLAStepSize) which will be used to adjust the tracking strategy when long-pulse hits are reconstructed as a series of narrow equally-spaced hits. (This needs more work)
    -   larreco, argoneutcode, lariatsoft, dunetpc

Bug fixes
------------------------

-   larcore feature/gp\_Issue13792
    -   work in progress

Updated dependencies
----------------------------------------------

Change List
============================

larsoft v06\_41\_00
------------------------------------------

-   2017-06-21 Lynn Garren : larsoft v06\_41\_00 for larsoft v06\_41\_00
-   2017-06-21 Lynn Garren : update product versions
-   2017-06-21 Lynn Garren : update dependency database
-   2017-06-15 Lynn Garren : ifdhc\_config v2\_0\_8a

lareventdisplay v06\_07\_00
----------------------------------------------------------

-   2017-06-21 Lynn Garren : add missing library
-   2017-06-21 Lynn Garren : lareventdisplay v06\_07\_00 for larsoft v06\_41\_00
-   2017-06-21 Christoph Alt : added some comments to the code
-   2017-06-15 Christoph Alt : Merge branch ‘develop’ into feature/chalt\_RawHitFindingDP
-   2017-06-12 Christoph Alt : Added functionality to plot raw waveform fits in event display
-   2017-05-22 Christoph Alt : added functions to draw double exponential fit on raw waveforms for dual phase

larexamples v06\_04\_02
--------------------------------------------------

-   2017-06-21 Lynn Garren : larexamples v06\_04\_02 for larsoft v06\_41\_00

larpandora v06\_13\_02
------------------------------------------------

-   2017-06-21 Lynn Garren : larpandora v06\_13\_02 for larsoft v06\_41\_00

larwirecell v06\_05\_02
--------------------------------------------------

-   2017-06-21 Lynn Garren : larwirecell v06\_05\_02 for larsoft v06\_41\_00

larana v06\_07\_02
----------------------------------------

-   2017-06-21 Lynn Garren : larana v06\_07\_02 for larsoft v06\_41\_00

larreco v06\_32\_00
------------------------------------------

-   2017-06-21 Lynn Garren : larreco v06\_32\_00 for larsoft v06\_41\_00
-   2017-06-21 Lynn Garren : Merge branch ‘feature/chalt\_RawHitFindingDP’ into release/v06\_41\_00
-   2017-06-21 Christoph Alt : added full path fot HitFilterAlg.h, changed some .fcl parameters and improved the DPRawHitFinder\_module.cc
-   2017-06-20 Lynn Garren : Merge branch ‘feature/chalt\_RawHitFindingDP’ into release/v06\_41\_00
-   2017-06-20 baller : Merge branch ‘develop’ into feature/bb\_TJWork
-   2017-06-20 baller : Add shower algs.
-   2017-06-20 baller : Change ID short to int. Add shower PrimaryVertex variables.
-   2017-06-20 baller : Change ID short to int.
-   2017-06-20 baller : Change ID short to int. Ongoing development
-   2017-06-20 baller : Ongoing development
-   2017-06-20 baller : Another version of MakeBareTrajPoint. Print new shower variables.
-   2017-06-20 baller : Another version of MakeBareTrajPoint.
-   2017-06-20 baller : Fix debug mode. Change ID short to int.
-   2017-06-20 baller : Change short to int
-   2017-06-19 Christoph Alt : updated raw hit finding module and corresponding .fcl parameters
-   2017-06-17 Robert Sulej : tune electron endpoints
-   2017-06-16 Christoph Alt : Merge branch ‘develop’ into feature/chalt\_RawHitFindingDP
-   2017-06-16 Christoph Alt : improved raw hiw finding and deleted some unnecessary .fcl parameters
-   2017-06-16 baller : Merge branch ‘feature/bb\_TJWork’ of ssh://cdcvs.fnal.gov/cvs/projects/larreco into feature/bb\_TJWork
-   2017-06-16 baller : Use generic calorimetry algorithm for TrajCluster CaloAlg.
-   2017-06-16 baller : Merge with Tingjun’s changes
-   2017-06-16 Robert Sulej : use more vertices
-   2017-06-16 baller : resolve version conflict
-   2017-06-16 baller : Merge branch ‘develop’ into feature/bb\_TJWork
-   2017-06-16 baller : junk
-   2017-06-16 baller : Resolved conflicts between bb\_TJWork and bb\_TCTune
-   2017-06-15 Robert Sulej : Merge branch ‘develop’ of ssh://cdcvs.fnal.gov/cvs/projects/larreco into develop
-   2017-05-23 Tingjun Yang : Rearrange fcl files so the central fcl file doesn’t depend on calorimetry\_microboone.fcl
-   2017-06-15 Robert Sulej : add electron endpoints to the training data
-   2017-06-15 baller : Merge branch ‘develop’ into feature/bb\_TJWork
-   2017-06-15 baller : Merge branch ‘develop’ into feature/bb\_TCTune
-   2017-06-15 baller : Change ID to int.
-   2017-06-15 baller : Add special mode to only reconstruct cosmic rays in the collection plane. Change trajectory ID to int.
-   2017-06-15 Christoph Alt : Merge branch ‘develop’ into feature/chalt\_RawHitFindingDP
-   2017-06-12 baller : Fix debug mode
-   2017-06-12 Christoph Alt : Code for raw waveform hit finding + some changes to the muon tracking efficiency module
-   2017-06-06 baller : Add Cryostat, TPC and CTP
-   2017-06-06 baller : Define a common fDebugMode. Check for hit consistency in FindJunkTraj.
-   2017-06-06 baller : Define a common fDebugMode
-   2017-06-06 baller : Add DebugCryostat and DebugTPC.
-   2017-06-05 baller : Merge branch ‘develop’ into feature/bb\_TCTune
-   2017-06-05 baller : Check for insufficient points in ReversePropagate. Call TrimEndPts before reverse propagation. Fix bug in CheckHiMultUnusedHits. Improve printing for DUNE.
-   2017-05-23 baller : Protect against invalid magnitude
-   2017-05-23 baller : Protect against invalid magnitude
-   2017-05-23 Christoph Alt : …
-   2017-05-22 Christoph Alt : added new module that finds hits using raw waveforms
-   2017-05-12 baller : Merge branch ‘develop’ into feature/bb\_TJWork
-   2017-05-12 baller : Pass print flag to MergeAndStore
-   2017-05-12 baller : Add IgnoreNegChiHits flag. Clean up. Pass print flag to MergeAndStore.
-   2017-05-12 baller : Add IgnoreNegChiHits flag
-   2017-05-12 baller : Add code for testing MakeTruTrajPoint. Add IgnoreNegChiHits.
-   2017-05-12 baller : Add MakeTruTrajPoint. Remove old stuff. Add IgnoreNegChiHits.
-   2017-05-12 baller : Add MakeTruTrajPoint
-   2017-05-10 baller : Add TruParentID to shower struct
-   2017-05-10 baller : Print parent FOM pulls. Work on DirectionFOM.
-   2017-05-10 baller : cleanup
-   2017-05-10 baller : Add MCParticle functions
-   2017-05-10 baller : Add MCParticle functions
-   2017-05-10 baller : remove std::couts
-   2017-05-10 baller : Add code to print the truth
-   2017-05-10 baller : make MCPartList const
-   2017-05-10 baller : Add GetMCParticleListIndex
-   2017-05-10 baller : Add GetMCParticleListIndex
-   2017-05-10 baller : remove commented line
-   2017-05-10 baller : add SimulationBase
-   2017-05-10 baller : Shower reconstruction development. Match hits to MC truth before reconstruction.
-   2017-05-10 baller : Shower reconstruction development. Match hits to MC truth before reconstruction.
-   2017-05-10 baller : Shower reconstruction development. Match hits to MC truth before reconstruction.
-   2017-05-10 baller : Shower reconstruction development. Match hits to MC truth before reconstruction.
-   2017-05-10 baller : Print changes
-   2017-05-10 baller : Shower reconstruction development. Match hits to MC truth before reconstruction.
-   2017-05-10 baller : Shower reconstruction development.
-   2017-05-03 baller : Merge branch ‘develop’ into feature/bb\_TJWork
-   2017-05-03 baller : Add MakeShowerObsolete. Add hits to 3D shower struct.
-   2017-05-03 baller : Add MakeShowerObsolete
-   2017-05-01 baller : Merge branch ‘develop’ into feature/bb\_TJWork
-   2017-04-21 baller : Add Hits vector to ShowerPoint.
-   2017-04-21 baller : Re-structure shower code.
-   2017-04-21 baller : Re-structure shower code.
-   2017-04-21 baller : Don’t mess with ShowerTjs. Improve printing.
-   2017-04-21 baller : Fix begin angle.
-   2017-04-21 baller : Nothing
-   2017-04-18 baller : Revert back to a compatible version
-   2017-04-18 baller : Allow changing VLAStepSize.
-   2017-04-18 baller : Add provision for changing VLAStepSize
-   2017-04-18 baller : Add provision for changing VLAStepSize
-   2017-04-18 baller : Work on shower dE/dx calculation
-   2017-04-18 baller : Comment out print statement
-   2017-04-17 baller : Merge branch ‘develop’ into feature/bb\_TJWork
-   2017-04-17 baller : Ongoing development
-   2017-04-15 baller : Temp workaround
-   2017-04-15 baller : Name change and code cleanup
-   2017-04-15 baller : Name change
-   2017-04-15 baller : Name change
-   2017-04-14 baller : Merge branch ‘develop’ into feature/bb\_TJWork
-   2017-04-14 baller : Add Trajpoint3D
-   2017-04-14 baller : Add Trajpoint3D
-   2017-04-14 baller : Work on Find3DShowerEndPoints, AddLooseHits, FindAngle, MergeShowerAndStore
-   2017-04-14 baller : Comment out temp PCA stuff.
-   2017-04-14 baller : Set default Angle to 0
-   2017-04-14 baller : Add shower merging
-   2017-04-11 baller : Change art error type
-   2017-04-11 baller : Merge branch ‘develop’ into feature/bb\_TJWork
-   2017-04-11 baller : Ongoing shower development
-   2017-04-11 baller : Ongoing shower development
-   2017-04-11 baller : Ongoing shower development
-   2017-04-11 baller : Ongoing shower development
-   2017-04-11 baller : Ongoing shower development
-   2017-04-08 baller : Ongoing shower code development
-   2017-04-08 baller : Ongoing shower code development
-   2017-04-08 baller : Ongoing development
-   2017-04-08 baller : Ongoing development
-   2017-04-08 baller : Add SpacePtDir. Ongoing shower development.
-   2017-04-08 baller : Add SpacePtDir
-   2017-04-08 baller : Move cuts to tjs.
-   2017-04-08 baller : Shower development - incomplete
-   2017-04-08 baller : Add maxFOM to ShowerTag
-   2017-04-03 baller : Code cleanup
-   2017-03-31 baller : Merge branch ‘develop’ into feature/bb\_TJWork
-   2017-03-31 baller : Variable name change
-   2017-03-31 baller : Ongoing development
-   2017-03-31 baller : Ongoing development
-   2017-03-31 baller : Split match code into two functions.
-   2017-03-31 baller : Split match code into two functions
-   2017-03-25 baller : Print summary trajectory report
-   2017-03-25 baller : Ongoing development
-   2017-03-25 baller : Return code from AddTjsInsideEnvelope
-   2017-03-25 baller : Change shower parent printing
-   2017-03-24 baller : Change ShowerParentStruct
-   2017-03-24 baller : Split CollectHits into TransferTjHits and CollectLooseHits. Work on shower parent identification.
-   2017-03-24 baller : Split CollectHits into TransferTjHits and CollectLooseHits
-   2017-03-24 baller : Changed ShowerParentStruct.
-   2017-03-24 baller : Changed ShowerParentStruct.
-   2017-03-22 baller : Remove old histograms.
-   2017-03-22 baller : Remove old histograms.
-   2017-03-22 baller : Fix bug in FitTraj. Clean up shower Tj printing.
-   2017-03-22 baller : Add shower functions
-   2017-03-22 baller : Add shower functions
-   2017-03-22 baller : Clean up shower struct.
-   2017-03-21 baller : Rename Showers to TCShower
-   2017-03-21 baller : Move configuration and services into tjs. Move vertex code into TCVertex.
-   2017-03-21 baller : Move configuration and services into tjs. Move vertex code into TCVertex.
-   2017-03-21 baller : Move configuration and services into tjs. Move vertex code into TCVertex.
-   2017-03-21 baller : Move configuration and services into tjs. Move vertex code into TCVertex.
-   2017-03-21 baller : Move configuration and services into tjs. Move vertex code into TCVertex.
-   2017-03-21 baller : Move configuration and services into tjs. Move vertex code into TCVertex.
-   2017-03-21 baller : Move configuration and services into tis. Move vertex code into TCVertex
-   2017-03-21 baller : Move configuration and services into tis. Move vertex code into TCVertex
-   2017-03-21 baller : Move configuration and services into tis. Move vertex code into TCVertex
-   2017-03-21 baller : Moved code to Utils. Change shower parent structure
-   2017-03-21 baller : Moved code to Utils
-   2017-03-21 baller : Moved code from TrajClusterAlg. Change shower parent structure
-   2017-03-21 baller : Moved code from TrajClusterAlg
-   2017-03-21 baller : Change shower parent structure
-   2017-03-21 baller : Name change
-   2017-03-21 baller : Name change
-   2017-03-20 baller : Add FindShowerAxis using TP positions
-   2017-03-20 baller : Add FindShowerAxis using TP positions
-   2017-03-20 baller : Move StoreTraj and InTrajOK from TrajClusterAlg
-   2017-03-20 baller : Move StoreTraj and InTrajOK from TrajClusterAlg. Move Shower code into Showers.
-   2017-03-20 baller : Change PFParticle - trajectory - cluster association scheme
-   2017-03-20 baller : Change PFParticle - trajectory - cluster association scheme. Move StoreTraj to Utils.
-   2017-03-20 baller : Change PFParticle - trajectory - cluster association scheme. Move ChkInTraj to Utils/InTrajOK. Allow one broken trajectory in each plane Match3D instead of just one.
-   2017-03-20 baller : Change PFParticle - trajectory - cluster association scheme
-   2017-03-17 baller : Merge branch ‘develop’ into feature/bb\_TJWork
-   2017-03-16 baller : Define TrajCluster CaloAlg
-   2017-03-16 baller : Remove std::cout
-   2017-03-16 baller : Home of TrajCluster shower code
-   2017-03-16 baller : Home of TrajCluster shower code
-   2017-03-16 baller : Move shower code into TCAlg/Showers
-   2017-03-16 baller : Move shower code into TCAlg/Showers
-   2017-03-16 baller : Use calorimetry alg
-   2017-03-16 baller : Use calorimetry alg
-   2017-03-16 baller : Move shower code into TCAlg/Showers
-   2017-03-16 baller : Move shower code into TCAlg/Showers
-   2017-03-14 baller : Write showers to the event. Calculate space point direction
-   2017-03-14 baller : Write showers to the event.
-   2017-03-14 baller : Write showers to the event
-   2017-03-14 baller : Write recall::Showers to the event
-   2017-03-13 baller : Merge branch ‘develop’ into feature/bb\_TJWork
-   2017-03-13 baller : Shower development
-   2017-03-13 baller : Shower development
-   2017-03-13 baller : Shower development
-   2017-03-13 baller : Shower development
-   2017-03-09 baller : Merge branch ‘develop’ into feature/bb\_TJWork
-   2017-03-09 baller : Increase size of fUseAlg. Shower reconstruction development.
-   2017-03-09 baller : Increase size of fUseAlg
-   2017-03-09 baller : Shower reconstruction development
-   2017-03-09 baller : Shower reconstruction development
-   2017-03-09 baller : Shower reconstruction development

larsim v06\_25\_00
----------------------------------------

-   2017-06-21 Lynn Garren : larsim v06\_25\_00 for larsoft v06\_41\_00
-   2017-06-15 Gianluca Petrillo : Ooops. Swapped two steps.
-   2017-06-14 Gianluca Petrillo : Added simplifyGDML utility to redigest and simplify a GDML file.

larevt v06\_14\_02
----------------------------------------

-   2017-06-21 Lynn Garren : larevt v06\_14\_02 for larsoft v06\_41\_00

lardata v06\_23\_00
------------------------------------------

-   2017-06-21 Lynn Garren : lardata v06\_23\_00 for larsoft v06\_41\_00
-   2017-06-20 Lynn Garren : Merge branch ‘feature/rsulej\_FactorizeHelper’ into release/v06\_41\_00
-   2017-06-15 Gianluca Petrillo : Merge branch ‘feature/gp\_Issue16781’ into develop
-   2017-06-15 Gianluca Petrillo : Merge remote-tracking branch ‘origin/develop’ into feature/gp\_Issue16781
-   2017-06-14 Gianluca Petrillo : Extended hit collection writers to support filters.
-   2017-06-14 Gianluca Petrillo : Using lar::PtrMaker instead of “directly” creating art pointers.
-   2017-06-14 Gianluca Petrillo : Hit collection writers now remember which event they operate on.
-   2017-06-14 Gianluca Petrillo : Introduced a class to reduce redundant coding using hit creators.
-   2017-06-14 Gianluca Petrillo : Added unit test for HitCollectionCreator.
-   2017-06-14 Gianluca Petrillo : Merge remote-tracking branch ‘origin/develop’ into feature/gp\_Issue16781
-   2017-06-12 Robert Sulej : bugfix in the function accessing data in the feature vector helper
-   2017-06-12 Robert Sulej : Merge branch ‘develop’ into feature/rsulej\_FactorizeHelper
-   2017-06-09 Gianluca Petrillo : Bug fix: HitAndAssociationsWriterBase does not ignore instance name any more.
-   2017-06-07 Gianluca Petrillo : Coding style update
-   2017-06-07 Gianluca Petrillo : Documentation style update
-   2017-04-01 Robert Sulej : Merge branch ‘develop’ into feature/rsulej\_FactorizeHelper
-   2017-03-28 Robert Sulej : rename type
-   2017-03-24 Robert Sulej : refactor helpers, so mva-specific things are separated from reading and writing generic feature vectors

larcore v06\_11\_00
------------------------------------------

-   2017-06-21 Lynn Garren : larcore v06\_11\_00 for larsoft v06\_41\_00
-   2017-06-21 Gianluca Petrillo : Added “local” iterators for all wires in a specified cryostat.
-   2017-06-21 Gianluca Petrillo : Reformatted some documentation.
-   2017-06-20 Gianluca Petrillo : Added some infrastructure for metaprogramming with geometry IDs.
-   2017-06-20 Gianluca Petrillo : Added “local” iterators for all planes in a specified cryostat.
-   2017-06-20 Gianluca Petrillo : Added “local” iterators for all TPCs in a specified cryostat.
-   2017-06-16 Gianluca Petrillo : Added TPC set and readout plane ID iterators to geometry service.

larpandoracontent v03\_07\_01
--------------------------------------------------------------

larsoftobj v1\_22\_00
----------------------------------------------

-   2017-06-21 Lynn Garren : larsoftobj v1\_22\_00 for larsoft v06\_41\_00
-   2017-06-21 Lynn Garren : update product versions

lardataobj v1\_17\_01
----------------------------------------------

-   2017-06-21 Lynn Garren : lardataobj v1\_17\_01 for larsoft v06\_41\_00
-   2017-06-15 Gianluca Petrillo : Added OpFlash::PEs() to return all the photoelectrons in all channels.

larcoreobj v1\_15\_00
----------------------------------------------

-   2017-06-21 Lynn Garren : larcoreobj v1\_15\_00 for larsoft v06\_41\_00
-   2017-06-16 Gianluca Petrillo : Added medhods in geometry IDs useful for metaprogramming.

larbatch v01\_32\_02
--------------------------------------------

-   2017-06-21 Lynn Garren : larbatch v01\_32\_02 for larsoft v06\_41\_00
-   2017-06-19 Herbert Greenlee : Clean up tmp files even if jobsub\_submit returns an error.
-   2017-06-15 Herbert Greenlee : Move sam cleanups, include stop project, inside loop over stages.

larutils v1\_16\_00
------------------------------------------
