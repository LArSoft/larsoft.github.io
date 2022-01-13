LArSoft v06_00_00_rc2 Release Notes
===============================================================================

-   **Table of contents**
-   [LArSoft v06_00_00_rc2 Release Notes](#LArSoft-v06_00_00_rc2-Release-Notes)
    -   [Purpose](#Purpose)
    -   [New features](#New-features)
    -   [Bug fixes](#Bug-fixes)
    -   [Updated dependencies](#Updated-dependencies)
-   [Change List](#Change-List)
    -   [larsoft v06_00_00_rc2](#larsoft-v06_00_00_rc2)
    -   [lareventdisplay v06_00_00_rc2](#lareventdisplay-v06_00_00_rc2)
    -   [larexamples v06_00_00_rc2](#larexamples-v06_00_00_rc2)
    -   [larpandora v06_00_00_rc2](#larpandora-v06_00_00_rc2)
    -   [larana v06_00_00_rc2](#larana-v06_00_00_rc2)
    -   [larreco v06_00_00_rc2](#larreco-v06_00_00_rc2)
    -   [larsim v06_00_00_rc2](#larsim-v06_00_00_rc2)
    -   [larevt v06_00_00_rc2](#larevt-v06_00_00_rc2)
    -   [lardata v06_00_00_rc2](#lardata-v06_00_00_rc2)
    -   [larcore v06_00_00_rc2](#larcore-v06_00_00_rc2)

[list of LArSoft releases](LArSoft_release_list)
[Download instructions](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v06_00_00_rc2/larsoft-v06_00_00_rc2.html)

Purpose
--------------------

-   Fix event display problem
-   Bring up to date with larsoft v05_10_00

New features
------------------------------

-   Root 6 required changes to gdml files, dictionaries, and some fcl files.
-   The C++ code required little if any change.
-   [Migration to root 6](Migration_to_root_6)

Bug fixes
------------------------

-   A problem with the event display was traced to rootcint. Using the latest cetbuildtools resolves the problem. See [redmine issue 12395](https://cdcvs.fnal.gov/redmine/issues/12395)
-   Fix nutools bug to allow DIS weighting to happen

Updated dependencies
----------------------------------------------

||
|Product|Version|Qualifiers|Notes|
|nutools|v1_25_02|e9||
|cetbuildtools|v5_01_03||required|

Change List
============================

larsoft v06_00_00_rc2
---------------------------------------------------

-   2016-04-28 Lynn Garren : larsoft v06_00_00_rc2 with nutools v1_25_02 and cetbuildtools v5_01_03
-   2016-04-28 Lynn Garren : Merge branch ‘develop’ into v06_00_00_rc
-   2016-04-27 Lynn Garren : larsoft v05_10_00 for larsoft v05_10_00
-   2016-04-27 Lynn Garren : update dependency database
-   2016-04-27 Lynn Garren : gdb v7_10_1 is in the nu distribution now
-   2016-04-27 Lynn Garren : update product versions
-   2016-04-27 Gianluca Petrillo : Minor addition to UpdateToLArSeedService.py script
-   2016-04-25 Gianluca Petrillo : Update for moving from SeedService to LArSeedService
-   2016-04-21 Lynn Garren : mrb v1_06_04
-   2016-04-19 Lynn Garren : larsoft v05_09_01 for larsoft v05_09_01
-   2016-04-19 Lynn Garren : update product versions
-   2016-04-19 Lynn Garren : update dependency database
-   2016-04-15 Lynn Garren : more info
-   2016-04-14 Lynn Garren : dk2nu v01_03_00c
-   2016-04-14 Lynn Garren : larsoft v05_09_00 for larsoft v05_09_00
-   2016-04-14 Lynn Garren : no special cetbuildtools release
-   2016-04-14 Lynn Garren : update product versions
-   2016-04-14 Lynn Garren : update product dependencies
-   2016-04-14 Lynn Garren : nutools v1_24_02 with genie v2_10_6

lareventdisplay v06_00_00_rc2
-------------------------------------------------------------------

-   2016-04-28 Lynn Garren : larsoft v06_00_00_rc2
-   2016-04-28 Lynn Garren : using cetbuildtools v5_01_03
-   2016-04-28 Lynn Garren : Merge branch ‘develop’ into v06_00_00_rc
-   2016-04-27 Lynn Garren : lareventdisplay v05_06_05 for larsoft v05_10_00
-   2016-04-19 Lynn Garren : lareventdisplay v05_06_04 for larsoft v05_09_01
-   2016-04-14 Lynn Garren : lareventdisplay v05_06_03 for larsoft v05_09_00
-   2016-04-08 Lynn Garren : lareventdisplay v05_06_02 for larsoft v05_08_00

larexamples v06_00_00_rc2
-----------------------------------------------------------

-   2016-04-28 Lynn Garren : larsoft v06_00_00_rc2
-   2016-04-28 Lynn Garren : Merge branch ‘develop’ into v06_00_00_rc
-   2016-04-27 Lynn Garren : larexamples v05_06_05 for larsoft v05_10_00
-   2016-04-19 Lynn Garren : larexamples v05_06_04 for larsoft v05_09_01
-   2016-04-14 Lynn Garren : larexamples v05_06_03 for larsoft v05_09_00
-   2016-04-08 Lynn Garren : larexamples v05_06_02 for larsoft v05_08_00

larpandora v06_00_00_rc2
---------------------------------------------------------

-   2016-04-28 Lynn Garren : larsoft v06_00_00_rc2
-   2016-04-28 Lynn Garren : Merge branch ‘develop’ into v06_00_00_rc
-   2016-04-27 Lynn Garren : larpandora v05_09_02 for larsoft v05_10_00
-   2016-04-19 Lynn Garren : larpandora v05_09_01 for larsoft v05_09_01
-   2016-04-18 John Marshall : Tweaks to ensure reproducible translation from the Pandora EDM. Some cosmetic changes.
-   2016-04-14 Lynn Garren : larpandora v05_09_00 for larsoft v05_09_00

larana v06_00_00_rc2
-------------------------------------------------

-   2016-04-28 Lynn Garren : larsoft v06_00_00_rc2
-   2016-04-28 Lynn Garren : Merge branch ‘develop’ into v06_00_00_rc
-   2016-04-27 Lynn Garren : larana v05_08_02 for larsoft v05_10_00
-   2016-04-26 mdhaigh : Add some variables to MVA PID and code to allow cheating of track sense based on truth vertex.
-   2016-04-19 Hamlet : Bug fix after PhotonVisibility interface change: check that queried location is covered by the service
-   2016-04-19 Lynn Garren : larana v05_08_01 for larsoft v05_09_01
-   2016-04-14 Lynn Garren : larana v05_08_00 for larsoft v05_09_00
-   2016-04-14 Lynn Garren : Merge branch ‘feature/gp_MemoryOptimization’ into release/v05_09_00
-   2016-04-14 Lynn Garren : cetbuildtools v4_19_04
-   2016-04-12 Gianluca Petrillo : Interface update after Geant4 job memory optimization
-   2016-03-29 Gianluca Petrillo : Update after photon library interface change

larreco v06_00_00_rc2
---------------------------------------------------

-   2016-04-28 Lynn Garren : using nutools v1_25_02
-   2016-04-28 Lynn Garren : larsoft v06_00_00_rc2
-   2016-04-28 Lynn Garren : Merge branch ‘develop’ into v06_00_00_rc
-   2016-04-27 Lynn Garren : larreco v05_10_00 for larsoft v05_10_00
-   2016-04-25 Bruce Baller : Merge branch ‘develop’ into feature/bb_TrajCluster
-   2016-04-25 Bruce Baller : Comment out MC truth code.
-   2016-04-25 Bruce Baller : Comment out FillTrajTruth
-   2016-04-25 Bruce Baller : Define microboone trajcluster
-   2016-04-25 Bruce Baller : Fixed typo
-   2016-04-25 Bruce Baller : Define trajclusteralg settings
-   2016-04-25 Bruce Baller : Remove unneeded includes
-   2016-04-25 Bruce Baller : Remove Ghost, Append
-   2016-04-25 Bruce Baller : Remove kGhost
-   2016-04-25 Robert Sulej : simplify computation of the penalty term in node position optimization
-   2016-04-23 Bruce Baller : Improve endJob printing
-   2016-04-23 Bruce Baller : Move MakeTrajectoryObsolete to Utils.
-   2016-04-23 Bruce Baller : Fix bug in AppendToWork. Remove TryRecoveryAlgs. Change wire error to 1/sqrt(12). Fix logic in EndMerge. Change logic in GottaKink to lop off hits but not declare that a kink exists. Check for invalid wire in DeadWireCount.
-   2016-04-23 Bruce Baller : Add MakeTrajectoryObsolete and RestoreObsoleteTrajectory
-   2016-04-23 Bruce Baller : Add MakeTrajectoryObsolete and RestoreObsoleteTrajectory
-   2016-04-23 Bruce Baller : Removed recovery algs
-   2016-04-23 Bruce Baller : Removed recovery algs
-   2016-04-22 Bruce Baller : Comment out ROOT histograms. Add fUseAlg, Remove TrajLength
-   2016-04-22 Bruce Baller : Allow turning off algorithms. Optional use of FillTrajTruth. Fix logic in AppendToWork, ReconstructAllTraj, AddHits, FIndHammerVertices, StepCrawl, CheckWork, CheckHiMultUnusedHits
-   2016-04-22 Bruce Baller : Add TrajLength
-   2016-04-22 Bruce Baller : Change header format
-   2016-04-22 Bruce Baller : Change enum
-   2016-04-22 Bruce Baller : Change strings
-   2016-04-20 Aaron Higuera Pichardo : add option to run nucleon decay efficinecies
-   2016-04-20 Aaron Higuera Pichardo : Add nucleon decay efficiencies
-   2016-04-15 Aaron Higuera Pichardo : calculate the truth length base on MChits in TPC base on a peace of code from dune/TrackingAna/TrackingEfficiency_module.cc
-   2016-04-19 Lynn Garren : larreco v05_09_01 for larsoft v05_09_01
-   2016-04-19 Alexander Booth : Minor bug fix and the addition that bad channels as listed in channelstatus_dune.fcl are now skipped.
-   2016-04-19 Michael Wallbank : Change global wire so it takes into account different detector geometries. Hopefully this is a temporary hack which will be replaced by the developing ‘global wire’ concept in the larsoft geometry service. Right now, the DUNE35t and DUNE10kt geometries are hard coded – the correct detector is picked by a switch which is set by default in the standard detector configurations and shouldn’t need to be touched by the user
-   2016-04-18 Bruce Baller : Modify complete 3D vertex code.
-   2016-04-18 Bruce Baller : Comment out histograms. Fix loop over tpcids, etc in RunTrajClusterAlg. Bug fixes in AppendToWork. Fix bug in FillTrajTruth. Adjust bigDelta cut. Code fixes in FindHammerVertices and Find3DVertices.
-   2016-04-18 Bruce Baller : Comment out histograms. Add temporary outFile to write list of poorly reconstructed events. Comment out ModifyShortTraj.
-   2016-04-18 Bruce Baller : Correct name
-   2016-04-18 Bruce Baller : Initialize structs. Remove algorithm
-   2016-04-18 Bruce Baller : removed algorithm
-   2016-04-15 Lynn Garren : larsoft v05_09_00
-   2016-04-15 Dorota Stefan : Merge branch ‘develop’ of ssh://cdcvs.fnal.gov/cvs/projects/larreco into develop
-   2016-04-15 Dorota Stefan : fix vertex missing on tpc boundaries
-   2016-04-14 Lynn Garren : larreco v05_09_00 for larsoft v05_09_00
-   2016-04-14 Lynn Garren : Merge branch ‘develop’ into release/v05_09_00
-   2016-04-14 Lynn Garren : Merge branch ‘feature/gp_MemoryOptimization’ into release/v05_09_00
-   2016-04-14 Lynn Garren : nutools v1_24_02 and cetbuildtools v4_19_04
-   2016-04-14 Alexander Booth : Merge branch ‘develop’ of ssh://cdcvs.fnal.gov/cvs/projects/larreco into develop
-   2016-04-14 Alexander Booth : Made changes to the calculation of hit RMS, this has greatly improved the estimation of hit width. Also done some general tidying.
-   2016-04-14 Dorota Stefan : protection against missing vtx in pfp
-   2016-04-14 Bruce Baller : Merge branch ‘develop’ into feature/bb_TrajCluster
-   2016-04-14 Bruce Baller : Change nTru hits requirement.
-   2016-04-14 Bruce Baller : Add endJob to print out AlgMod counts
-   2016-04-14 Bruce Baller : Add FillGap, Ghost
-   2016-04-14 Bruce Baller : Rename kMaybeDeltaRay to kGhost
-   2016-04-14 Bruce Baller : Add code to pass AlgMod bit counts to the module. Add FillMissedPoints, MaxHitDelta and IsGhost.
-   2016-04-14 Bruce Baller : Modify call order in RunTrajClusterAlg. Move trial, etc into tis. Additional checks in AppendToWork. Add IsGhost, MaxHitDelta and modify MaybeDeltaRay. Convert charge to chapel.
-   2016-04-14 Dorota Stefan : correction of validation
-   2016-04-14 Dorota Stefan : fix possibility of using hits from wrong tpc; add some optimizations to validate functions
-   2016-04-14 Michael Wallbank : Fix issue which was causing seg fault since the recent changes – better deal with cases of infinite gradient
-   2016-04-12 Gianluca Petrillo : Merge remote-tracking branch ‘origin/v04_36_00_branch’ into feature/gp_MemoryOptimization
-   2016-04-12 Michael Wallbank : Fix bug in track direction finding. Added levels of debugging to make output cleaner for production
-   2016-04-12 Michael Wallbank : Retuned 2D parameters
-   2016-04-11 Michael Wallbank : Merge branch ‘develop’ into feature/wallbank_EMShowerImprovements
-   2016-04-11 Michael Wallbank : Fix small bug when converting from pma::Track3D to recob::Track object. Follows the change Robert made to the PMAlg recently
-   2016-04-11 Michael Wallbank : Improve shower start finding when the shower travels more in the tick direction
-   2016-04-10 Bruce Baller : Add ChainMerge. Move fQuitAlg and work into class.
-   2016-04-10 Bruce Baller : Added ChainMerge for short overlapping trajectories. Print out info for trajectories that have a bad Efficiency \* Purity. Code tweaks in AddHits and EndMerge. Use fChgPullCut.
-   2016-04-10 Bruce Baller : Changed print output
-   2016-04-10 Bruce Baller : Added/changed algorithms
-   2016-04-10 Bruce Baller : Added/changed algorithms
-   2016-04-08 Michael Wallbank : Fixed big bug which was affecting which views were considered for making the initial track-like part. Also tidied the code
-   2016-04-07 Bruce Baller : Add sums of Efficiency \* Purity to monitor code development. Fix bugs in FillTrajTruth.
-   2016-04-07 Bruce Baller : Add sums of Efficiency \* Purity to monitor code development
-   2016-04-07 Bruce Baller : Replace IsPrimary with Efficiency \* Purity
-   2016-04-07 Bruce Baller : Replace IsPrimary with Efficiency \* Purity
-   2016-04-07 Michael Wallbank : Improve the identification of a 2D bad view before making the 3D showers. During the course of today I’ve realised the current method is far far from optimal and needs serious reconsideration. Next week I’ll come back to this…
-   2016-04-06 Bruce Baller : Modify to use TCAlg debug, data and utility structs
-   2016-04-06 Bruce Baller : Modify to use TCAlg data and utility structs
-   2016-04-06 Bruce Baller : TCAlg utilities
-   2016-04-06 Bruce Baller : TCAlg utilities
-   2016-04-06 Bruce Baller : DebugStuff struct
-   2016-04-06 Bruce Baller : Defines DebugStuff
-   2016-04-06 Bruce Baller : TCAlg data structs
-   2016-04-06 Bruce Baller : Defines AlgBitNames
-   2016-04-06 Bruce Baller : Created for TCAlg Utils, DebugStruct and DataStructs
-   2016-04-06 Bruce Baller : Added TCAlg
-   2016-04-06 Bruce Baller : Modify for tca namespace
-   2016-04-06 Michael Wallbank : Hugely improved the dynamic blurring using the hit ‘width’; now use a convolution of the regular Gaussian with the hit RMS. Also rewrote large parts (GaussianBlur and Convolve functions are now one, since I don’t make a new kernel each hit map any more…) and all the kernels which could possibly be needed are created by the class constructor and owned by the class before any events are received. The process of all this has further optimised: fHitMap is now a 2D vector of fixed size rather than 2D map, speed has increased by factor of \~5
-   2016-04-06 Michael Wallbank : Merge branch ‘develop’ into feature/wallbank_EMShowerImprovements
-   2016-04-05 Bruce Baller : Change namespace
-   2016-04-05 Bruce Baller : change namespace
-   2016-04-05 Bruce Baller : Move FillTrajTruth.
-   2016-04-04 Bruce Baller : Change ChgRat to ChgPull. Remove fAveChg. Add EndMerge, AppendToWork.
-   2016-04-04 Bruce Baller : Change to ChgPull. Move AveChg from TrajPoint to Trajectory. Add plane ID check in GetHitRange. Add EndMerge. Modify cuts in FindHammerVertices. Fixed missed wire test in StepCrawl. Add stopping particle check in CheckHiDeltas. Change charge weighting scheme for trajectory fit.
-   2016-04-04 Michael Wallbank : Merge branch ‘feature/wallbank_EMShowerImprovements’ of [http://cdcvs.fnal.gov/projects/larreco](http://cdcvs.fnal.gov/projects/larreco) into feature/wallbank_EMShowerImprovements
-   2016-04-04 Michael Wallbank : Merge branch ‘develop’ into feature/wallbank_EMShowerImprovements
-   2016-04-01 Bruce Baller : Merge branch ‘develop’ into feature/bb_TrajCluster
-   2016-04-01 Bruce Baller : ongoing development
-   2016-04-01 Bruce Baller : Optionally write cluster reconstruction info to a text file
-   2016-03-30 Bruce Baller : ongoing development
-   2016-03-30 Bruce Baller : Merge branch ‘develop’ into feature/bb_TrajCluster
-   2016-03-30 Bruce Baller : ongoing development
-   2016-03-30 Bruce Baller : ongoing development
-   2016-03-29 Mike Wallbank : Improved dynamic blurring: take into account the hit ‘width’, its spread in time, when applying the blurring to even better apply the Gaussian smear
-   2016-03-29 Mike Wallbank : Merge branch ‘develop’ into feature/wallbank_EMShowerImprovements
-   2016-03-28 Gianluca Petrillo : Replaced copies of ParticleList from backtracker with references.
-   2016-03-26 Bruce Baller : Merge branch ‘develop’ into feature/bb_TrajCluster
-   2016-03-26 Bruce Baller : ongoing development
-   2016-03-25 Bruce Baller : Merge branch ‘develop’ into feature/bb_TrajCluster
-   2016-03-25 Bruce Baller : ongoing development
-   2016-03-24 Bruce Baller : AlgMod, vertexing
-   2016-03-24 Bruce Baller : AlgMod, vertexing, JunkTraj
-   2016-03-24 Bruce Baller : TrajClusterAlg utilities
-   2016-03-24 Bruce Baller : TrajClusters utilities
-   2016-03-22 Bruce Baller : Add AlgMod to trajectory struct. Add recovery algs.
-   2016-03-22 Bruce Baller : Add AlgMod to trajectory struct. Add recovery algs.
-   2016-03-19 Bruce Baller : Ongoing development
-   2016-03-19 Bruce Baller : Ongoing development
-   2016-03-18 Mike Wallbank : recob::Track methods moved to TrackUtils library
-   2016-03-16 Mike Wallbank : Merge branch ‘develop’ into feature/wallbank_EMShowerImprovements
-   2016-03-13 Mike Wallbank : Rewritten parts of the clustering code ready for changes to come. The blurring is now done slightly differently; instead of looping through each bin and taking contributions from nearby bins, now we loop over all bins and spread the charge out to neighbouring bins. This has the exact same effect but will allow me to change the amount of blurring even more dynamically depending on the distribution of charge in a ‘hit’. Also, the functionality to increase the size of the kernel beyond the nominal blurring range has been added
-   2016-03-12 Bruce Baller : Ongoing development
-   2016-03-12 Bruce Baller : Ongoing development
-   2016-03-11 Bruce Baller : Merge branch ‘develop’ into feature/bb_TrajCluster
-   2016-03-11 Bruce Baller : Ongoing development
-   2016-03-09 Bruce Baller : Ongoing development
-   2016-03-09 Bruce Baller : Ongoing development
-   2016-03-08 Mike Wallbank : Added functionality to adjust the blurring sigma in the wire and tick directions separately
-   2016-03-08 Mike Wallbank : Merge branch ‘develop’ into feature/wallbank_EMShowerImprovements
-   2016-03-08 Bruce Baller : Ongoing development
-   2016-03-08 Bruce Baller : Ongoing development
-   2016-03-08 Mike Wallbank : Merge branch ‘develop’ into feature/wallbank_EMShowerImprovements
-   2016-03-07 Mike Wallbank : Merge branch ‘develop’ into feature/wallbank_EMShowerImprovements
-   2016-03-04 Bruce Baller : Convert to v05. Ongoing development
-   2016-03-04 Bruce Baller : Convert to v05. Ongoing development
-   2016-03-04 Bruce Baller : Correct conversion to v05 blunders
-   2016-03-03 Bruce Baller : Merge branch ‘develop’ into feature/bb_TrajCluster
-   2016-03-02 Bruce Baller : ongoing development
-   2016-03-02 Bruce Baller : ongoing development
-   2016-03-02 Bruce Baller : ongoing development
-   2016-02-28 Mike Wallbank : Merge branch ‘develop’ into feature/wallbank_EMShowerImprovements
-   2016-02-21 Mike Wallbank : Final improvements to the shower direction finding algorithm. Gets the direction correct almost every time now. Unfortunately, recent changes to the hit finding has completely messed up the 2D reconstruction and so I will now work on this again
-   2016-02-19 Mike Wallbank : Updated for v5
-   2016-02-19 Mike Wallbank : Improved shower start finding for showers with one bad view
-   2016-02-18 Bruce Baller : ongoing development
-   2016-02-18 Bruce Baller : ongoing development
-   2016-02-18 Bruce Baller : ongoing development
-   2016-02-17 Mike Wallbank : Retuned and slightly improved efficiency of BlurredCluster
-   2016-02-11 Bruce Baller : Modify to work with single particle MC events
-   2016-02-10 Mike Wallbank : Merge branch ‘develop’ into feature/wallbank_EMShowerImprovements
-   2016-02-10 Mike Wallbank : Changed the way the shower direction is found; use RMS of the hit distribution along the length of the shower
-   2016-02-09 Bruce Baller : ongoing development
-   2016-02-09 Bruce Baller : ongoing development
-   2016-02-08 Mike Wallbank : Initial improvements to EMShowerAlg. Started writing new algorithm to determine the direction of the shower
-   2016-02-08 Bruce Baller : ongoing development
-   2016-02-05 Bruce Baller : Merge branch ‘develop’ into feature/bb_ccwork
-   2016-02-05 Bruce Baller : Enter PFParticle daughters correctly
-   2016-02-05 Bruce Baller : Continuing development
-   2016-02-05 Bruce Baller : Continuing development
-   2016-02-01 Bruce Baller : Merge branch ‘develop’ into feature/bb_ccwork
-   2016-02-01 Bruce Baller : Algorithm development
-   2016-02-01 Bruce Baller : Algorithm development
-   2016-02-01 Bruce Baller : Module development
-   2016-01-25 Bruce Baller : development
-   2016-01-25 Bruce Baller : add standard_trajcluster
-   2016-01-25 Bruce Baller : development
-   2016-01-25 Bruce Baller : development
-   2016-01-23 Bruce Baller : TrajCluster development
-   2016-01-23 Bruce Baller : development
-   2016-01-23 Bruce Baller : Development
-   2016-01-23 Bruce Baller : work in progress
-   2016-01-23 Bruce Baller : Merge branch ‘develop’ into feature/bb_ccwork
-   2016-01-23 Bruce Baller : Removed StepCrawl
-   2016-01-23 Bruce Baller : Removed StepCrawl
-   2016-01-23 Bruce Baller : Pulled StepCrawl stuff into ClusterTrajectoryAlg.h
-   2016-01-23 Bruce Baller : Renamed StepCrawl
-   2016-01-22 Bruce Baller : StepCrawl development
-   2016-01-22 Bruce Baller : StepCrawl development
-   2016-01-22 Bruce Baller : Development
-   2016-01-18 Bruce Baller : workaround version mis-match
-   2016-01-18 Bruce Baller : StepCrawl development
-   2016-01-18 Bruce Baller : StepCrawl development
-   2016-01-18 Bruce Baller : StepCrawl development
-   2016-01-08 Bruce Baller : StepCrawl code development
-   2016-01-08 Bruce Baller : StepCrawl code development
-   2016-01-08 Bruce Baller : Ongoing code development
-   2016-01-04 Bruce Baller : Formatting changes mostly
-   2015-12-31 Bruce Baller : Move StepCrawl code to separate file
-   2015-12-31 Bruce Baller : Put StepCrawl code in a separate file
-   2015-12-22 Bruce Baller : StepCrawl development

larsim v06_00_00_rc2
-------------------------------------------------

-   2016-04-28 Lynn Garren : larsoft v06_00_00_rc2
-   2016-04-28 Lynn Garren : Merge branch ‘develop’ into v06_00_00_rc
-   2016-04-27 Lynn Garren : larsim v05_10_00 for larsoft v05_10_00
-   2016-04-27 Gianluca Petrillo : Enabling LArSeedService extended support for CLHEP engines by default.
-   2016-04-27 Gianluca Petrillo : Merging artextensions branch gp_GlobalSeedService
-   2016-04-25 Gianluca Petrillo : Moved tests to testing namespace
-   2016-04-25 Gianluca Petrillo : Uniformed the stile of header include guards
-   2016-04-25 Gianluca Petrillo : Moved artext::SeedService into sim::LArSeedService
-   2016-04-20 Gleb Sinev : Fix the supernova neutrino spectrum filename in supernova.fcl.
-   2016-04-19 Lynn Garren : larsim v05_09_01 for larsoft v05_09_01
-   2016-04-19 Tingjun Yang : Move dunefd_workspace_supernova to dunetpc
-   2016-04-14 Lynn Garren : Merge branch ‘feature/gp_MemoryOptimization’ into release/v05_09_00
-   2016-04-14 Gianluca Petrillo : Moving or removing some files that git did not figure out how to correctly merge.
-   2016-04-14 Lynn Garren : larsim v05_09_00 for larsoft v05_09_00
-   2016-04-14 Lynn Garren : Merge branch ‘feature/gp_MemoryOptimization’ into release/v05_09_00
-   2016-04-14 Lynn Garren : cetbuildtools v4_19_04
-   2016-04-14 Lynn Garren : Merge branch ‘feature/gp_Issue12197’ into release/v05_09_00
-   2016-04-14 Lynn Garren : genie_xsec only has the defaultplusccmec qualifier now
-   2016-04-14 Lynn Garren : genie_xsec, genie_phyopt v2_10_6
-   2016-04-12 Gianluca Petrillo : Geant4 job memory optimization
-   2016-04-12 Gleb Sinev : Change the default supernova spectrum in supernova.fcl.
-   2016-04-08 Gianluca Petrillo : LArG4: explicitly removed the old ‘Seed’ parameter
-   2016-04-08 Gianluca Petrillo : Removed debug structures.
-   2016-04-08 Gianluca Petrillo : Split LArG4 random number stream into three: generation, propagation and radiodecay
-   2016-04-07 Gianluca Petrillo : Removed unused service and header inclusion
-   2016-04-06 Saba Sehrish : constructors cleanup
-   2016-04-06 Saba Sehrish : two constructors for deposit and MCEdep structs instead of one
-   2016-04-05 Saba Sehrish : added constructors to deposit and MCEdep, and moved deposit to MCEdep
-   2016-04-05 Saba Sehrish : Merge branch ‘v04_36_00_branch’ of ssh://cdcvs.fnal.gov/cvs/projects/larsim into v04_36_00_branch
-   2016-04-05 Saba Sehrish : added create index map function to a namespace
-   2016-04-04 Gianluca Petrillo : Merge branch ‘v04_36_00_branch’ of ssh://cdcvs.fnal.gov/cvs/projects/larsim into v04_36_00_branch
-   2016-04-04 Gianluca Petrillo : Removed useless inclusion of iostream
-   2016-04-03 Saba Sehrish : Merge branch ‘v04_36_00_branch’ of ssh://cdcvs.fnal.gov/cvs/projects/larsim into v04_36_00_branch
-   2016-04-03 Saba Sehrish : minor change
-   2016-04-01 Gianluca Petrillo : Removed obsolete code.
-   2016-03-31 Saba Sehrish : renamed map variable, removed mchits and comments
-   2016-03-31 Gianluca Petrillo : Removed old piece of code
-   2016-03-30 Gianluca Petrillo : Merge branch ‘v04_36_00_branch’ into feature_v04_36_00/gp_MemoryOptimizationG4
-   2016-03-30 Gianluca Petrillo : Adapted dumpers from v5
-   2016-03-30 Gianluca Petrillo : Added dumpers for sim::SimChannel and sim::SimPhotons data products
-   2016-03-30 Gianluca Petrillo : Minor changes
-   2016-03-29 Gianluca Petrillo : Trivial interface change.
-   2016-03-29 Gianluca Petrillo : Flattened nested vector in photon library. Breaking change: some PhotonVisibilityService methods have changed signature.
-   2016-03-29 Gianluca Petrillo : In some way v5 version of dumper module ended up in v4 branch. Fixed.
-   2016-03-29 Gianluca Petrillo : Merge remote-tracking branch ‘origin/gp_MemoryOptimizationLArG4’ into v04_36_00_branch
-   2016-03-29 Saba Sehrish : added clear function for _mc_edeps
-   2016-03-28 Saba Sehrish : minor change to add mcparticles name
-   2016-03-28 Saba Sehrish : Remove an unexisting test directory from CMakeLists.txt
-   2016-03-28 Saba Sehrish : Merge remote branch ‘origin/gp_MemoryOptimizationLArG4’ into all_MemoryOptimization
-   2016-03-28 Saba Sehrish : used pair key
-   2016-03-27 Gianluca Petrillo : Merged two maps into one in LArVoxelReadout, and given more meaningful names to a bunch of variables.
-   2016-03-27 Gianluca Petrillo : During data transfer to data product, each particle is deleted as soon as it’s moved, to avoid memory spikes. A bug fix in nutools will make this almost completely redundant.
-   2016-03-27 Gianluca Petrillo : ParticleListAction now deletes a particle as soon as it knows it wouldn’t be saved. A complete revision of ParticleListAction is desireable to make this mechanism more robust.
-   2016-03-27 Saba Sehrish : uncommented _mc_edep and _track_index
-   2016-03-27 Saba Sehrish : minor cleanup
-   2016-03-26 Gianluca Petrillo : Flush the output buffer at every particle, preventing it from becoming huge.
-   2016-03-26 Saba Sehrish : replaced map of struct with a smaller map of index and a vector of structs
-   2016-03-25 Gianluca Petrillo : Track filtering moved early so that tracks are dropped as soon as we know we don’t want them. “Dropped” tracks are actually kept in the list, but pruned of most of the information.
-   2016-03-25 Saba Sehrish : changed the name of energycharge to deposit
-   2016-03-25 Saba Sehrish : minor cleanup
-   2016-03-25 Saba Sehrish : merged two maps into one with energy and charge as struct, step 1
-   2016-03-24 Saba Sehrish : added std::unique_ptr return type
-   2016-03-24 Gianluca Petrillo : Removed the ability to copy ParticleList containers. Added the ability to move ParticleList containers. MCParticle objects are now moved out of ParticleListAction, and into the data product when needed.
-   2016-03-24 Gianluca Petrillo : Particle and particle list objects moved from static to ParticleListAction members
-   2016-03-24 Gianluca Petrillo : Moved the filtering logic into an object (also propagated to ParticleListAction)
-   2016-03-24 Saba Sehrish : changed to unique ptr
-   2016-03-23 Saba Sehrish : one fcl file to create all three output files
-   2016-03-23 Saba Sehrish : Changed return types ofMCTrack and MCShower Reconstruct functions, remove destructor, added explict to constructor
-   2016-03-22 Saba Sehrish : added const ref and remove virtual destructors
-   2016-03-22 larsoft User : change the return type of Reconstruct in MCShowerRecoAlg
-   2016-02-04 Lynn Garren : larsim v04_21_00 for larsoft v04_36_00

larevt v06_00_00_rc2
-------------------------------------------------

-   2016-04-28 Lynn Garren : larsoft v06_00_00_rc2
-   2016-04-28 Lynn Garren : Merge branch ‘develop’ into v06_00_00_rc
-   2016-04-27 Lynn Garren : larevt v05_06_05 for larsoft v05_10_00
-   2016-04-19 Lynn Garren : larevt v05_06_04 for larsoft v05_09_01
-   2016-04-14 Lynn Garren : larevt v05_06_03 for larsoft v05_09_00
-   2016-04-08 Lynn Garren : larevt v05_06_02 for larsoft v05_08_00

lardata v06_00_00_rc2
---------------------------------------------------

-   2016-04-28 Lynn Garren : using nutools v1_25_02
-   2016-04-28 Lynn Garren : larsoft v06_00_00_rc2
-   2016-04-28 Lynn Garren : use header paths
-   2016-04-28 Lynn Garren : Merge branch ‘develop’ into v06_00_00_rc
-   2016-04-27 Lynn Garren : lardata v05_07_04 for larsoft v05_10_00
-   2016-04-26 mdhaigh : Add some new variables to MVAPIDResult.
-   2016-04-19 Lynn Garren : lardata v05_07_03 for larsoft v05_09_01
-   2016-04-14 Lynn Garren : lardata v05_07_02 for larsoft v05_09_00
-   2016-04-14 Lynn Garren : nutools v1_24_02
-   2016-04-08 Lynn Garren : lardata v05_07_01 for larsoft v05_08_00

larcore v06_00_00_rc2
---------------------------------------------------

-   2016-04-28 Lynn Garren : larsoft v06_00_00_rc2
-   2016-04-28 Lynn Garren : Merge branch ‘develop’ into v06_00_00_rc
-   2016-04-19 Lynn Garren : larcore v05_07_01 for larsoft v05_09_01
-   2016-04-19 Lynn Garren : remove old, unused DUNE scripts
-   2016-04-14 Lynn Garren : larcore v05_07_00 for larsoft v05_09_00
-   2016-04-08 Hamlet : printBacktrace() now supports OSX (tested only on Darwin 14/Yosemite)
-   2016-04-08 Gianluca Petrillo : Make it easier to change default options in printBacktrace()
-   2016-04-08 Gianluca Petrillo : Added backtrace printing utility (need to be tested on OSX)
