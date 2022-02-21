# LArSoft v05_10_00 Release Notes



[list of LArSoft releases](LArSoft_release_list)  
[Download instructions](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v05_10_00/larsoft-v05_10_00.html)

## Purpose

-   Approved changes and nutools bug fix

## New features

-   larsim LArSeedService is included but not used
-   larreco TrajCluster

## Bug fixes

-   The tweaking dial that GENIE uses to vary the model parameters is passed thanks to helper functions in nutools GENIEReweight.cxx. However, this code had a bug such that Deep Inelastic Scattering events always had weight 1. The fix was supplied by Marco Del Tutto.

## Updated dependencies

|         |          |            |       |
|---------|----------|------------|-------|
| Product | Version  | Qualifiers | Notes |
| nutools | v1_24_03 | e9         |       |

# Change List

## larsoft v05_10_00

-   2016-04-27 Lynn Garren : larsoft v05_10_00 for larsoft v05_10_00
-   2016-04-27 Lynn Garren : update dependency database
-   2016-04-27 Lynn Garren : gdb v7_10_1 is in the nu distribution now
-   2016-04-27 Lynn Garren : update product versions
-   2016-04-27 Gianluca Petrillo : Minor addition to UpdateToLArSeedService.py script
-   2016-04-25 Gianluca Petrillo : Update for moving from SeedService to LArSeedService
-   2016-04-21 Lynn Garren : mrb v1_06_04

## lareventdisplay v05_06_05

-   2016-04-27 Lynn Garren : lareventdisplay v05_06_05 for larsoft v05_10_00

## larexamples v05_06_05

-   2016-04-27 Lynn Garren : larexamples v05_06_05 for larsoft v05_10_00

## larpandora v05_09_02

-   2016-04-27 Lynn Garren : larpandora v05_09_02 for larsoft v05_10_00

## larana v05_08_02

-   2016-04-27 Lynn Garren : larana v05_08_02 for larsoft v05_10_00
-   2016-04-26 mdhaigh : Add some variables to MVA PID and code to allow cheating of track sense based on truth vertex.
-   2016-04-19 Hamlet : Bug fix after PhotonVisibility interface change: check that queried location is covered by the service

## larreco v05_10_00

-   2016-04-27 Lynn Garren : larreco v05_10_00 for larsoft v05_10_00
-   2016-04-25 Bruce Baller : Merge branch 'develop' into feature/bb_TrajCluster
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
-   2016-04-18 Bruce Baller : Modify complete 3D vertex code.
-   2016-04-18 Bruce Baller : Comment out histograms. Fix loop over tpcids, etc in RunTrajClusterAlg. Bug fixes in AppendToWork. Fix bug in FillTrajTruth. Adjust bigDelta cut. Code fixes in FindHammerVertices and Find3DVertices.
-   2016-04-18 Bruce Baller : Comment out histograms. Add temporary outFile to write list of poorly reconstructed events. Comment out ModifyShortTraj.
-   2016-04-18 Bruce Baller : Correct name
-   2016-04-18 Bruce Baller : Initialize structs. Remove algorithm
-   2016-04-18 Bruce Baller : removed algorithm
-   2016-04-14 Bruce Baller : Merge branch 'develop' into feature/bb_TrajCluster
-   2016-04-14 Bruce Baller : Change nTru hits requirement.
-   2016-04-14 Bruce Baller : Add endJob to print out AlgMod counts
-   2016-04-14 Bruce Baller : Add FillGap, Ghost
-   2016-04-14 Bruce Baller : Rename kMaybeDeltaRay to kGhost
-   2016-04-14 Bruce Baller : Add code to pass AlgMod bit counts to the module. Add FillMissedPoints, MaxHitDelta and IsGhost.
-   2016-04-14 Bruce Baller : Modify call order in RunTrajClusterAlg. Move trial, etc into tis. Additional checks in AppendToWork. Add IsGhost, MaxHitDelta and modify MaybeDeltaRay. Convert charge to chapel.
-   2016-04-10 Bruce Baller : Add ChainMerge. Move fQuitAlg and work into class.
-   2016-04-10 Bruce Baller : Added ChainMerge for short overlapping trajectories. Print out info for trajectories that have a bad Efficiency \* Purity. Code tweaks in AddHits and EndMerge. Use fChgPullCut.
-   2016-04-10 Bruce Baller : Changed print output
-   2016-04-10 Bruce Baller : Added/changed algorithms
-   2016-04-10 Bruce Baller : Added/changed algorithms
-   2016-04-07 Bruce Baller : Add sums of Efficiency \* Purity to monitor code development. Fix bugs in FillTrajTruth.
-   2016-04-07 Bruce Baller : Add sums of Efficiency \* Purity to monitor code development
-   2016-04-07 Bruce Baller : Replace IsPrimary with Efficiency \* Purity
-   2016-04-07 Bruce Baller : Replace IsPrimary with Efficiency \* Purity
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
-   2016-04-05 Bruce Baller : Change namespace
-   2016-04-05 Bruce Baller : change namespace
-   2016-04-05 Bruce Baller : Move FillTrajTruth.
-   2016-04-04 Bruce Baller : Change ChgRat to ChgPull. Remove fAveChg. Add EndMerge, AppendToWork.
-   2016-04-04 Bruce Baller : Change to ChgPull. Move AveChg from TrajPoint to Trajectory. Add plane ID check in GetHitRange. Add EndMerge. Modify cuts in FindHammerVertices. Fixed missed wire test in StepCrawl. Add stopping particle check in CheckHiDeltas. Change charge weighting scheme for trajectory fit.
-   2016-04-01 Bruce Baller : Merge branch 'develop' into feature/bb_TrajCluster
-   2016-04-01 Bruce Baller : ongoing development
-   2016-04-01 Bruce Baller : Optionally write cluster reconstruction info to a text file
-   2016-03-30 Bruce Baller : ongoing development
-   2016-03-30 Bruce Baller : Merge branch 'develop' into feature/bb_TrajCluster
-   2016-03-30 Bruce Baller : ongoing development
-   2016-03-30 Bruce Baller : ongoing development
-   2016-03-26 Bruce Baller : Merge branch 'develop' into feature/bb_TrajCluster
-   2016-03-26 Bruce Baller : ongoing development
-   2016-03-25 Bruce Baller : Merge branch 'develop' into feature/bb_TrajCluster
-   2016-03-25 Bruce Baller : ongoing development
-   2016-03-24 Bruce Baller : AlgMod, vertexing
-   2016-03-24 Bruce Baller : AlgMod, vertexing, JunkTraj
-   2016-03-24 Bruce Baller : TrajClusterAlg utilities
-   2016-03-24 Bruce Baller : TrajClusters utilities
-   2016-03-22 Bruce Baller : Add AlgMod to trajectory struct. Add recovery algs.
-   2016-03-22 Bruce Baller : Add AlgMod to trajectory struct. Add recovery algs.
-   2016-03-19 Bruce Baller : Ongoing development
-   2016-03-19 Bruce Baller : Ongoing development
-   2016-03-12 Bruce Baller : Ongoing development
-   2016-03-12 Bruce Baller : Ongoing development
-   2016-03-11 Bruce Baller : Merge branch 'develop' into feature/bb_TrajCluster
-   2016-03-11 Bruce Baller : Ongoing development
-   2016-03-09 Bruce Baller : Ongoing development
-   2016-03-09 Bruce Baller : Ongoing development
-   2016-03-08 Bruce Baller : Ongoing development
-   2016-03-08 Bruce Baller : Ongoing development
-   2016-03-04 Bruce Baller : Convert to v05. Ongoing development
-   2016-03-04 Bruce Baller : Convert to v05. Ongoing development
-   2016-03-04 Bruce Baller : Correct conversion to v05 blunders
-   2016-03-03 Bruce Baller : Merge branch 'develop' into feature/bb_TrajCluster
-   2016-03-02 Bruce Baller : ongoing development
-   2016-03-02 Bruce Baller : ongoing development
-   2016-03-02 Bruce Baller : ongoing development
-   2016-02-18 Bruce Baller : ongoing development
-   2016-02-18 Bruce Baller : ongoing development
-   2016-02-18 Bruce Baller : ongoing development
-   2016-02-11 Bruce Baller : Modify to work with single particle MC events
-   2016-02-09 Bruce Baller : ongoing development
-   2016-02-09 Bruce Baller : ongoing development
-   2016-02-08 Bruce Baller : ongoing development
-   2016-02-05 Bruce Baller : Merge branch 'develop' into feature/bb_ccwork
-   2016-02-05 Bruce Baller : Enter PFParticle daughters correctly
-   2016-02-05 Bruce Baller : Continuing development
-   2016-02-05 Bruce Baller : Continuing development
-   2016-02-01 Bruce Baller : Merge branch 'develop' into feature/bb_ccwork
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
-   2016-01-23 Bruce Baller : Merge branch 'develop' into feature/bb_ccwork
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

## larsim v05_10_00

-   2016-04-27 Lynn Garren : larsim v05_10_00 for larsoft v05_10_00
-   2016-04-27 Gianluca Petrillo : Enabling LArSeedService extended support for CLHEP engines by default.
-   2016-04-27 Gianluca Petrillo : Merging artextensions branch gp_GlobalSeedService
-   2016-04-25 Gianluca Petrillo : Moved tests to testing namespace
-   2016-04-25 Gianluca Petrillo : Uniformed the stile of header include guards
-   2016-04-25 Gianluca Petrillo : Moved artext::SeedService into sim::LArSeedService
-   2016-04-20 Gleb Sinev : Fix the supernova neutrino spectrum filename in supernova.fcl.

## larevt v05_06_05

-   2016-04-27 Lynn Garren : larevt v05_06_05 for larsoft v05_10_00

## lardata v05_07_04

-   2016-04-27 Lynn Garren : lardata v05_07_04 for larsoft v05_10_00
-   2016-04-26 mdhaigh : Add some new variables to MVAPIDResult.

## larcore v05_07_01

## larbatch v01_21_02

-   2016-04-27 Lynn Garren : larbatch v01_21_02 for larsoft v05_10_00
-   2016-04-27 Lynn Garren : larbatch v01_21_02 for larsoft v05_10_00
-   2016-04-27 yuntse : Tighten error checking.
-   2016-04-21 yuntse : Merge remote-tracking branch 'refs/remotes/origin/develop' into develop
-   2016-04-20 Lynn Garren : larsoft v05_09_01
-   2016-04-20 yuntse : Merge remote-tracking branch 'refs/remotes/origin/develop' into develop
-   2016-04-20 yuntse : Work around zero-event TimeTracker crash.
-   2016-04-19 Herbert Greenlee : When checking in analysis mode, require the existence of at least one analysis file.

## larutils v1_06_01

-   2016-04-27 Lynn Garren : larutils v1_06_01 for larsoft v05_10_00
-   2016-04-27 Lynn Garren : larutils v1_06_01 for larsoft v05_10_00
-   2016-04-19 Lynn Garren : update for v05_09
