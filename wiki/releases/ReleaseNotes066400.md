# LArSoft v06_64_00 Release Notes



[list of LArSoft releases](LArSoft_release_list)  
Download instructions for [larsoft v06_64_00](https://scisoft.fnal.gov/scisoft/bundles/larsoft/v06_64_00/larsoft-v06_64_00.html)  
Download instructions for [just larsoftobj v1_37_00](https://scisoft.fnal.gov/scisoft/bundles/larsoftobj/v1_37_00/larsoftobj-v1_37_00.html)

## Purpose

-   changes to develop
-   approved features

## New features

-   larpandora and larpandoracontent feature/cerati_track-producers-compliant
    -   updates to pandora tracks:
        -   enforce at least two hits/points per track
        -   make sure the number of trajectory points is the same as the number of hits
        -   ensure the sorting of the hits is the same as the trajectory points
-   feature/gp_MetaUtil in larcorealg and lardata
    -   move some utilities to a different header

## Bug fixes

## Updated dependencies

# Change List

## larsoft v06_64_00

-   2018-01-17 Lynn Garren : larsoft v06_64_00 for larsoft v06_64_00
-   2018-01-17 Lynn Garren : update dependency database
-   2018-01-17 Lynn Garren : update versions

## lareventdisplay v06_15_09

-   2018-01-17 Lynn Garren : lareventdisplay v06_15_09 for larsoft v06_64_00

## larexamples v06_08_02

-   2018-01-17 Lynn Garren : larexamples v06_08_02 for larsoft v06_64_00

## larpandora v06_19_00

-   2018-01-17 Lynn Garren : larpandora v06_19_00 for larsoft v06_64_00
-   2018-01-17 Tingjun Yang : Move \#include “Pandora/PandoraInternal.h” from LArPandoraHelper.h to LArPandoraHelper.cxx
-   2018-01-16 Tingjun Yang : Merge remote-tracking branch 'origin/feature/cerati_track-producers-compliant' into develop
-   2018-01-09 Giuseppe Cerati : use pandora::IntVector, and other suggestions from John
-   2017-12-27 Tingjun Yang : Save track-hit associations with metadata.
-   2017-12-27 Giuseppe Cerati : make sure the number and order of trajectory points in tracks matches those of the associated hits
-   2017-12-21 Giuseppe Cerati : protect against MinTrajectoryPoints less than 2
-   2017-12-06 a-d-smith : Added metadata to track-hit associations

## larwirecell v06_08_11

-   2018-01-17 Lynn Garren : larwirecell v06_08_11 for larsoft v06_64_00

## larana v06_14_02

-   2018-01-17 Lynn Garren : larana v06_14_02 for larsoft v06_64_00

## larreco v06_52_00

-   2018-01-17 Lynn Garren : larreco v06_52_00 for larsoft v06_64_00
-   2018-01-17 Lynn Garren : larreco v06_52_00 for larsoft v06_64_00
-   2018-01-17 baller : Add some protection
-   2018-01-17 baller : Fix bug
-   2018-01-17 baller : Remove print statements and old checks
-   2018-01-15 baller : Merge branch 'develop' into feature/bb_TJWork
-   2018-01-12 baller : TrajCluster fcl configuration for uB
-   2018-01-11 baller : Code cleanup
-   2018-01-11 baller : Code cleanup
-   2018-01-11 baller : Code cleanup
-   2018-01-11 baller : Code cleanup
-   2018-01-11 baller : Code cleanup
-   2018-01-09 baller : Merge branch 'develop' into feature/bb_TJWork
-   2018-01-09 baller : Move FindPFParticles to PFPUtils
-   2018-01-09 baller : Move FindPFParticles to PFPUtils
-   2018-01-09 baller : Add performance metric for long MCParticles
-   2018-01-09 baller : Add performance metric for long MCParticles
-   2018-01-09 baller : Ongoing development using 3D Tps.
-   2018-01-09 baller : Ongoing development using 3D Tps.
-   2018-01-09 baller : Ongoing development using 3D Tps.
-   2018-01-09 baller : Ongoing development using 3D Tps.
-   2018-01-09 baller : Add/remove struct variables.
-   2018-01-04 baller : Rename
-   2018-01-04 baller : Rename
-   2018-01-04 baller : Rename
-   2018-01-04 baller : Rename
-   2018-01-04 baller : Rename
-   2018-01-04 baller : Rename
-   2018-01-03 baller : Add NeedsRebuild, TotChg, PFPStruct StopFlag. Remove MergeChain.
-   2018-01-03 baller : Add NeedsRebuild, TotChg, PFPStruct StopFlag. Remove MergeChain.
-   2018-01-03 baller : Move FindTPCID to Utils InsideTPC
-   2018-01-03 baller : Move FindTPCID to Utils InTPC
-   2018-01-03 baller : Add tjs.NeedsRebuild. Develop PFParticle splitting.
-   2018-01-03 baller : Add tjs.NeedsRebuild. Add/move functions. Tweak code in MakePFPTp3s
-   2018-01-03 baller : Add tjs.NeedsRebuild. Add/move functions.
-   2018-01-03 baller : Add/move functions. Fix bugs in MaxChargeAsymmetry and StopFlag.
-   2018-01-03 baller : Add/move functions.
-   2018-01-03 baller : Add tjs.NeedsRebuild.
-   2018-01-02 baller : Remove/add variables
-   2018-01-02 baller : Rename
-   2018-01-02 baller : Rename
-   2018-01-02 baller : Rename
-   2018-01-02 baller : Code cleanup
-   2018-01-02 baller : Add another version of GetMCPartListIndex
-   2018-01-02 baller : Add another version of GetMCPartListIndex
-   2018-01-02 baller : Code cleanup
-   2018-01-02 baller : Remove SpacePoints code. Work on Tp3 code.
-   2018-01-02 baller : Remove SpacePoints code
-   2018-01-02 baller : Code cleanup
-   2018-01-02 baller : Code cleanup
-   2018-01-02 baller : Remove SpacePoints code
-   2018-01-02 baller : Remove SpacePoints code
-   2017-12-30 baller : Put poor vertex killing into a separate function. Change print format for 2D and 3D vertices.
-   2017-12-30 baller : Put poor vertex killing into a separate function.
-   2017-12-30 baller : 3D match improvements. Add ChkChgAsymmetry.
-   2017-12-30 baller : 3D match improvements. Add ChkChgAsymmetry.
-   2017-12-30 baller : 3D match improvements. Add ChkChgAsymmetry.
-   2017-12-30 baller : 3D match improvements.
-   2017-12-30 baller : 3D match improvements. Add ChkChgAsymmetry.
-   2017-12-30 baller : 3D match improvements. Add ChkChgAsymmetry.
-   2017-12-28 baller : Merge branch 'develop' into feature/bb_TJWork
-   2017-12-28 baller : Add TjStuff SelectEvent
-   2017-12-28 baller : Remove unused variable
-   2017-12-28 baller : Code cleanup
-   2017-12-28 baller : Fix bugs. Add moda code.
-   2017-12-28 baller : Code cleanup
-   2017-12-28 baller : Add NoFitToVx.
-   2017-12-28 baller : Add NoFitToVx.
-   2017-12-28 baller : Add NoFitToVx.
-   2017-12-21 baller : Replace AccumulatePFPSums with MatchAndSum. Add checking in multiple TPCs.
-   2017-12-21 baller : Replace AccumulatePFPSums with MatchAndSum.
-   2017-12-21 baller : Ensure that doca is defined. Loosen cut in SplitTrajCrossingVertices.
-   2017-12-21 baller : Clean up after previous commit.
-   2017-12-20 baller : Add support for hit -\> BackTrackerHitMatchingData association. Significant re-write of MatchTruth. Add 3D traj points.
-   2017-12-20 baller : Add support for hit -\> BackTrackerHitMatchingData association. Significant re-write of MatchTruth. Add 3D traj points.
-   2017-12-20 baller : Add support for hit -\> BackTrackerHitMatchingData association. Significant re-write of MatchTruth. Add 3D traj points.
-   2017-12-20 baller : Add support for hit -\> BackTrackerHitMatchingData association. Significant re-write of MatchTruth. Add 3D traj points.
-   2017-12-20 baller : Add support for hit -\> BackTrackerHitMatchingData association. Significant re-write of MatchTruth. Add 3D traj points.
-   2017-12-20 baller : Add support for hit -\> BackTrackerHitMatchingData association. Significant re-write of MatchTruth. Add 3D traj points.
-   2017-12-20 baller : Add support for hit -\> BackTrackerHitMatchingData association. Significant re-write of MatchTruth. Add 3D traj points.
-   2017-12-20 baller : Add support for hit -\> BackTrackerHitMatchingData association. Significant re-write of MatchTruth. Add 3D traj points.
-   2017-12-20 baller : Add support for hit -\> BackTrackerHitMatchingData association. Significant re-write of MatchTruth. Add 3D traj points.
-   2017-12-20 baller : Add support for hit -\> BackTrackerHitMatchingData association. Significant re-write of MatchTruth.
-   2017-12-20 baller : Add support for hit -\> BackTrackerHitMatchingData association. Significant re-write of MatchTruth.
-   2017-12-15 baller : Replace TVector3 with Vector3_t
-   2017-12-15 baller : Replace TVector3 with Vector3_tReplace TVector3 with Vector3_t
-   2017-12-15 baller : Replace TVector3 with Vector3_t
-   2017-12-15 baller : Replace TVector3 with Vector3_t
-   2017-12-15 baller : Replace TVector3 with Vector3_t
-   2017-12-15 baller : Replace TVector3 with Vector3_t.
-   2017-12-15 baller : Replace TVector3 with Vector3_t
-   2017-12-15 baller : Add 3D trajectory points. Comment out code temporarily.
-   2017-12-15 baller : Add 3D trajectory points.
-   2017-12-15 baller : Add 3D trajectory points.
-   2017-12-15 baller : Print out truth stuff for debugging.
-   2017-12-15 baller : 2D vertex finding improvements.
-   2017-12-15 baller : Add 3D trajectory points.
-   2017-12-15 baller : Add 3D trajectory points.
-   2017-12-15 baller : Add 3D trajectory points. Fix bug in MakeJunkTraj.
-   2017-12-15 baller : Add 3D trajectory points. Photon tj.
-   2017-12-15 baller : Add 3D trajectory points.
-   2017-12-08 baller : Move code to fill tjs.mallTraj into TCSpacePtUtils.
-   2017-12-08 baller : Move code to fill tjs.mallTraj into TCSpacePtUtils.
-   2017-12-08 baller : Move code to fill tjs.mallTraj into TCSpacePtUtils.
-   2017-12-08 baller : Merge branch 'develop' into feature/bb_TJWork
-   2017-12-08 baller : Move UpdateAveChg into Utils. Move some Match3D code into TCSpactPtUtils
-   2017-12-08 baller : Move UpdateAveChg into Utils. Move some Match3D code into TCSpactPtUtils
-   2017-12-08 baller : Move UpdateAveChg into Utils. Move some Match3D code into TCSpactPtUtils
-   2017-12-08 baller : Move UpdateAveChg into Utils. Move some Match3D code into TCSpactPtUtils
-   2017-12-08 baller : Move UpdateAveChg into Utils. Move some Match3D code into TCSpactPtUtils
-   2017-12-08 baller : Move UpdateAveChg into Utils
-   2017-12-08 baller : Move UpdateAveChg into Utils
-   2017-12-07 baller : Merge branch 'feature/bb_TJWork' of ssh://cdcvs.fnal.gov/cvs/projects/larreco into feature/bb_TJWork
-   2017-12-07 baller : Crude and dirty code in SetPFPEndPoints for use with space points.
-   2017-12-07 baller : Add MergeChain alg.
-   2017-12-07 baller : Use the ParentID of trajectories that were killed during a merge and store to trace where they went. Add MergeChain alg.
-   2017-12-07 baller : Use the ParentID of trajectories that were killed during a merge and store to trace where they went.
-   2017-12-07 baller : Add PDGCodeVote, MatVecMerge and MergeChain.
-   2017-12-07 baller : Add PDGCodeVote, MatVecMerge and MergeChain.
-   2017-12-07 baller : Disable call to Match3DSpts until SpacePointSolver is able to deal with dead wire gaps.
-   2017-12-06 Tingjun Yang : Merge branch 'develop' of ssh://cdcvs.fnal.gov/cvs/projects/larreco into feature/bb_TJWork
-   2017-12-06 Tingjun Yang : Change HitToSimIDEs to HitToTrackIDEs.
-   2017-12-06 Tingjun Yang : Set fIsRealData at the beginning.
-   2017-12-06 baller : Use more care in SplitTrajCrossingVertices
-   2017-12-05 baller : Cleaned up printing
-   2017-12-05 baller : Merge branch 'develop' into feature/bb_TJWork
-   2017-12-05 baller : Add SetPPFEndPoints
-   2017-12-05 baller : Add SetPPFEndPoints
-   2017-12-05 baller : Add debug mode for protoDUNE.
-   2017-12-01 Tingjun Yang : Merge branch 'feature/bb_TJWork' of ssh://cdcvs.fnal.gov/cvs/projects/larreco into feature/bb_TJWork
-   2017-12-01 baller : Merge branch 'develop' into feature/bb_TJWork
-   2017-12-01 baller : Move space point functions into TCSpacePtUtils. Fix bug in EndMerge.
-   2017-12-01 baller : Move space point functions into TCSpacePtUtils
-   2017-12-01 baller : Move space point functions into TCSpacePtUtils
-   2017-12-01 baller : Move space point functions into TCSpacePtUtils
-   2017-12-01 baller : SpacePoint utilities
-   2017-12-01 baller : SpacePoint utilities
-   2017-12-01 baller : Use Point_t for space points
-   2017-11-28 baller : Add check for using SpacePoints
-   2017-11-28 baller : Merge branch 'develop' into feature/bb_TJWork
-   2017-11-28 baller : Add SpacePoints and ArtPtr
-   2017-11-28 baller : Add SpacePoints and ArtPtr
-   2017-11-28 baller : Add SpacePoints and ArtPtr
-   2017-11-28 baller : Add SpacePoints and ArtPtr
-   2017-11-28 baller : Clean up code
-   2017-11-28 baller : Add SpacePoints and ArtPtr
-   2017-11-28 baller : Add SpacePoints and ArtPtr
-   2017-11-28 baller : Add SpacePoints and ArtPtr
-   2017-11-28 baller : Add SpacePoints
-   2017-11-28 baller : Add SpacePoints
-   2017-11-22 baller : Merge branch 'feature/bb_TJWork' of ssh://cdcvs.fnal.gov/cvs/projects/larreco into feature/bb_TJWork
-   2017-11-22 baller : Add default values for Match3DCuts and ShowerTag vectors.
-   2017-11-22 baller : Increase size of Match3DCuts vector. Add Tj charge asymmetry cut in Match3D. Comment out suspect code in EndMerge.
-   2017-11-22 baller : Add 3D version of MakeVertexObsolete. Fix bug in CompleteIncomplete3DVertices
-   2017-11-22 baller : Add 3D version of MakeVertexObsolete
-   2017-11-22 baller : Fix bug in CheckNoMatchTjs
-   2017-11-22 baller : Add KillInShowerVx Alg.
-   2017-11-22 baller : Add KillInShowerVx Alg. Add TjChgAsymmetry to MatchStruct.
-   2017-11-22 baller : Add KillInShowerVx Alg.
-   2017-11-20 Tingjun Yang : Merge branch 'develop' of ssh://cdcvs.fnal.gov/cvs/projects/larreco into feature/bb_TJWork
-   2017-11-20 Tingjun Yang : Add CmakeLists.txt to build Rory's TCDebugTools (thanks to Gianluca's instructions).
-   2017-11-20 baller : Add algorithm to kill neutrinoPFP if it is inside a shower in all planes
-   2017-11-20 baller : Add algorithm to kill neutrinoPFP if it is inside a shower in all planes
-   2017-11-20 baller : Add algorithm to kill neutrinoPFP if it is inside a shower in all planes
-   2017-11-20 Tingjun Yang : Merge branch 'feature/bb_TJWork' of ssh://cdcvs.fnal.gov/cvs/projects/larreco into feature/bb_TJWork
-   2017-11-14 Tingjun Yang : Merge branch 'feature/bb_TJWork' of ssh://cdcvs.fnal.gov/cvs/projects/larreco into feature/bb_TJWork
-   2017-10-31 Tingjun Yang : Merge branch 'feature/bb_TJWork' of ssh://cdcvs.fnal.gov/cvs/projects/larreco into feature/bb_TJWork
-   2017-10-20 Tingjun Yang : Merge branch 'develop' of ssh://cdcvs.fnal.gov/cvs/projects/larreco into feature/bb_TJWork
-   2017-10-20 Tingjun Yang : Merge branch 'feature/bb_TJWork' of ssh://cdcvs.fnal.gov/cvs/projects/larreco into feature/bb_TJWork
-   2017-10-13 Tingjun Yang : Merge branch 'feature/bb_TJWork' of ssh://cdcvs.fnal.gov/cvs/projects/larreco into feature/bb_TJWork
-   2017-10-10 Tingjun Yang : Merge branch 'feature/bb_TJWork' of ssh://cdcvs.fnal.gov/cvs/projects/larreco into feature/bb_TJWork
-   2017-10-02 Tingjun Yang : Merge branch 'develop' of ssh://cdcvs.fnal.gov/cvs/projects/larreco into feature/bb_TJWork
-   2017-10-02 Tingjun Yang : Merge branch 'feature/bb_TJWork' of ssh://cdcvs.fnal.gov/cvs/projects/larreco into feature/bb_TJWork
-   2017-09-05 Tingjun Yang : Merge branch 'feature/bb_TJWork' of ssh://cdcvs.fnal.gov/cvs/projects/larreco into feature/bb_TJWork
-   2017-09-03 Tingjun Yang : Merge branch 'feature/bb_TJWork' of ssh://cdcvs.fnal.gov/cvs/projects/larreco into feature/bb_TJWork
-   2017-08-31 Tingjun Yang : Merge branch 'feature/bb_TJWork' of ssh://cdcvs.fnal.gov/cvs/projects/larreco into feature/bb_TJWork
-   2017-08-31 Tingjun Yang : Merge branch 'develop' of ssh://cdcvs.fnal.gov/cvs/projects/larreco into feature/bb_TJWork

## larsim v06_38_04

-   2018-01-17 Lynn Garren : larsim v06_38_04 for larsoft v06_64_00
-   2018-01-11 Lynn Garren : larsoft v06_62_01
-   2018-01-10 Jason Stock : Adding a comment headder to BackTracker.tcc. Removing old BackTracker.

## larevt v06_16_16

-   2018-01-17 Lynn Garren : larevt v06_16_16 for larsoft v06_64_00

## lardata v06_36_00

-   2018-01-17 Lynn Garren : lardata v06_36_00 for larsoft v06_64_00
-   2018-01-12 Gianluca Petrillo : Some metaprogramming utilities moved into larcorealg
-   2018-01-11 Gianluca Petrillo : Reverting a spurious change from the last commit.
-   2018-01-11 Gianluca Petrillo : Attempt to fix a bit doxygen documentation of proxy

## larcore v06_15_12

-   2018-01-17 Lynn Garren : larcore v06_15_12 for larsoft v06_64_00

## larpandoracontent v03_09_02

-   2018-01-17 Lynn Garren : larpandoracontent v03_09_02 for larsoft v06_64_00
-   2018-01-17 Lynn Garren : update version
-   2018-01-16 Tingjun Yang : Merge remote-tracking branch 'origin/feature/cerati_track-producers-compliant' into develop
-   2018-01-09 John Marshall : Cosmetic changes and initialise index member in all LArTrackTrajectoryPoint constructors.
-   2017-12-27 Giuseppe Cerati : optionally save order of trajectory points in GetSlidingFitTrajectory

## larsoftobj v1_37_00

-   2018-01-17 Lynn Garren : larsoftobj v1_37_00 for larsoft v06_64_00
-   2018-01-17 Lynn Garren : update versions

## lardataobj v1_26_01

-   2018-01-17 Lynn Garren : lardataobj v1_26_01 for larsoft v06_64_00
-   2018-01-17 Gianluca Petrillo : Added some Doxygen documentation

## larcorealg v1_15_00

-   2018-01-17 Lynn Garren : larcorealg v1_15_00 for larsoft v06_64_00
-   2018-01-17 Gianluca Petrillo : Discorporated metaprogramming utilities from ProxyBase.h

## larcoreobj v1_18_01

## larbatch v01_36_00

-   2018-01-17 Lynn Garren : larbatch v01_36_00 for larsoft v06_64_00
-   2018-01-17 Herbert Greenlee : Merge branch 'develop' of ssh://cdcvs.fnal.gov/cvs/projects/larbatch into develop
-   2018-01-17 Herbert Greenlee : Make failure to determine parentage in validate-on-worker jobs a fatal error.

## larutils v1_20_05
