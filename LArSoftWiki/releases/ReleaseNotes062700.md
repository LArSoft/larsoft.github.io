# LArSoft v06_27_00 Release Notes



[list of LArSoft releases](LArSoft_release_list)  
Download instructions for [larsoft v06_27_00](https://scisoft.fnal.gov/scisoft/bundles/larsoft/v06_27_00/larsoft-v06_27_00.html)  
Download instructions for [just larsoftobj v1_13_00](https://scisoft.fnal.gov/scisoft/bundles/larsoftobj/v1_13_00/larsoftobj-v1_13_00.html)

## Purpose

-   changes to develop
-   tracking updats

## New features

-   lardataobj, feature/cerati_kffitresiduals:
    -   add TrackFitHitInfo data product to store residuals/hit-on-track information, etc.
    -   add minor functionalities to TrackingPlane and TrackTrajectory
-   lardata, feature/cerati_kffitresiduals:
    -   add Kalman Filter tools based on SMatrix
-   larreco, feature/cerati_kffitresiduals:
    -   add a producers for fitted tracks with Trajectory or TrackTrajectory as input (the old one used Tracks or PFParticles as input)
    -   fitter works on Trajectory, reads and writes Flags, works with new KF tools based on SMatrix, optionally produces TrackFitHitInfo
    -   add option so that, if a track fit fails, try to recover it by performing another fit disabling the hit rejection for negative propagation distance
    -   better factorization of fcl parameters
-   lareventdisplay, feature/cerati_flags-evd:
    -   change event display so that flags only valid points in Tracks are drawn

## Bug fixes

-   \#15702

## Updated dependencies

# Change List

## larsoft v06_27_00

-   2017-03-08 Lynn Garren : larsoft v06_27_00 for larsoft v06_27_00
-   2017-03-08 Lynn Garren : update product versions

## lareventdisplay v06_03_00

-   2017-03-08 Lynn Garren : lareventdisplay v06_03_00 for larsoft v06_27_00
-   2017-03-07 Lynn Garren : Merge branch 'feature/cerati_flags-evd' into release/v06_27_00
-   2017-03-07 Giuseppe Cerati : draw only valid points for tracks

## larexamples v06_01_17

-   2017-03-08 Lynn Garren : larexamples v06_01_17 for larsoft v06_27_00

## larpandora v06_08_02

-   2017-03-08 Lynn Garren : larpandora v06_08_02 for larsoft v06_27_00

## larwirecell v06_00_15

-   2017-03-08 Lynn Garren : larwirecell v06_00_15 for larsoft v06_27_00

## larana v06_03_20

-   2017-03-08 Lynn Garren : larana v06_03_20 for larsoft v06_27_00

## larreco v06_21_00

-   2017-03-08 Lynn Garren : add missing libraries
-   2017-03-08 Lynn Garren : Merge branch 'feature/cerati_kffitresiduals' into release/v06_27_00
-   2017-03-08 Giuseppe Cerati : move TrackingPlaneHelper to lardata/RecoObjects
-   2017-03-08 Lynn Garren : larreco v06_21_00 for larsoft v06_27_00
-   2017-03-07 Lynn Garren : Merge branch 'feature/cerati_kffitresiduals' into release/v06_27_00
-   2017-03-07 Giuseppe Cerati : fcl minor updates
-   2017-03-07 Giuseppe Cerati : add documentation and cleanup
-   2017-03-07 Giuseppe Cerati : remove TrackHitMeta for now
-   2017-03-07 Giuseppe Cerati : add fitter for trajectories
-   2017-03-07 Giuseppe Cerati : cleanup and fixes
-   2017-03-06 Gianluca Petrillo : Revert “Prepare DisambigCheater for geometry change.”
-   2017-03-06 Gianluca Petrillo : Prepare DisambigCheater for geometry change.
-   2017-03-06 Tingjun Yang : Initialize hitcoord.
-   2017-03-03 baller : Update default configuration
-   2017-03-03 baller : Merge branch 'develop' into feature/bb_TJWork
-   2017-03-03 baller : Shower reconstruction development
-   2017-03-03 baller : Shower reconstruction development
-   2017-03-03 baller : Shower reconstruction development
-   2017-03-03 baller : Shower reconstruction development
-   2017-03-01 baller : Replace NearestWire with WireCoordinate
-   2017-03-01 baller : Shower reconstruction development
-   2017-02-28 baller : Shower reconstruction development.
-   2017-02-28 baller : Shower reconstruction development.
-   2017-02-28 baller : Shower reconstruction development.
-   2017-02-28 baller : Shower reconstruction development.
-   2017-02-24 baller : Merge branch 'develop' into feature/bb_TJWork
-   2017-02-24 baller : Shower finding development
-   2017-02-24 baller : Shower finding development
-   2017-02-24 baller : Shower finding development
-   2017-02-24 baller : Shower finding development
-   2017-02-22 baller : Tweaks in MatchTruth track electron and photon daughters. Re-calculate MCSMom when entering CheckTraj. Add MCSMom check in FillGaps.
-   2017-02-22 baller : Fix bugs in FindShowerParent. Set parent TJ IDs
-   2017-02-22 baller : Change parent name
-   2017-02-21 baller : Merge branch 'develop' into feature/bb_TJWork
-   2017-02-21 baller : Change CTP format
-   2017-02-21 baller : Change CTP format
-   2017-02-21 baller : Fix format
-   2017-02-21 baller : Merge with Tingjun feature branch Merge remote-tracking branch 'remotes/origin/feature/tjyang_TJWork' into feature/bb_TJWork
-   2017-02-21 baller : Add kVtxInShower
-   2017-02-21 baller : Add kVtxInShower
-   2017-02-21 baller : Add kVtxInShower
-   2017-02-20 baller : Fix lag names
-   2017-02-20 baller : Don't report on long trajectories
-   2017-02-20 baller : Fix alg names.
-   2017-02-20 baller : Fix alg names.
-   2017-02-10 Giuseppe Cerati : intermediate commit towards new version of the fitter, large rewrite of TrackKalmanFitter now using flags and new classes based on smatrix
-   2017-02-02 Tingjun Yang : Merge remote-tracking branch 'origin/feature/bb_TJWork' into feature/tjyang_TJWork
-   2017-02-02 Tingjun Yang : Change the way to loop over trajectories.
-   2017-02-02 Tingjun Yang : Merge remote-tracking branch 'origin/feature/bb_TJWork' into feature/tjyang_TJWork
-   2017-02-02 Tingjun Yang : Move ChkHiChgHits to the right place after trajectories are reconstructed.
-   2017-02-01 Tingjun Yang : Merge remote-tracking branch 'origin/feature/bb_TJWork' into feature/tjyang_TJWork
-   2017-02-01 Tingjun Yang : Print more information.
-   2017-02-01 Tingjun Yang : Improve VtxHitsSwap. Do not swap hits if the two trajectories are colinear.
-   2017-02-01 Tingjun Yang : Merge branch 'develop' of ssh://cdcvs.fnal.gov/cvs/projects/larreco into feature/tjyang_TJWork
-   2017-02-01 Tingjun Yang : Resolve conflict and fix a bug in SplitHiChgHits
-   2017-01-31 Tingjun Yang : Merge remote-tracking branch 'origin/feature/bb_TJWork' into feature/tjyang_TJWork
-   2017-01-31 Tingjun Yang : Change print format.
-   2017-01-31 Tingjun Yang : Add missing comma
-   2017-01-30 Tingjun Yang : Merge branch 'develop' of ssh://cdcvs.fnal.gov/cvs/projects/larreco into feature/tjyang_TJWork
-   2017-01-25 Tingjun Yang : Merge branch 'develop' of ssh://cdcvs.fnal.gov/cvs/projects/larreco into feature/tjyang_TJWork
-   2017-01-25 Tingjun Yang : Merge remote-tracking branch 'origin/feature/bb_TJWork' into feature/tjyang_TJWork
-   2017-01-21 Tingjun Yang : Add algorithm to split high charge hits near the end of trajectory.
-   2017-01-20 Tingjun Yang : Add algorithm to swap hits near vertex.
-   2017-01-18 Tingjun Yang : Relax deltaCut for RevProp.
-   2017-01-17 Tingjun Yang : Always calculate chgPull in EndMerge. Do not merge if chgPull is very high.
-   2017-01-17 Tingjun Yang : Merge branch 'develop' of ssh://cdcvs.fnal.gov/cvs/projects/larreco into feature/tjyang_TJWork
-   2017-01-06 Tingjun Yang : Merge branch 'develop' of ssh://cdcvs.fnal.gov/cvs/projects/larreco into feature/tjyang_TJWork
-   2017-01-04 Tingjun Yang : First version of code to identify Michel electron.
-   2016-12-22 Tingjun Yang : Merge remote-tracking branch 'origin/feature/bb_TJWork' into feature/tjyang_TJWork
-   2016-12-22 Tingjun Yang : Merge branch 'develop' of ssh://cdcvs.fnal.gov/cvs/projects/larreco into feature/tjyang_TJWork

## larsim v06_13_03

-   2017-03-08 Lynn Garren : larsim v06_13_03 for larsoft v06_27_00
-   2017-03-03 Jason Stock : OpFastScintillation now includes larsim/ParticleListAction.h OpFastScintillation now uses ParticleListAction to determine the TrackIDs of G4Tracks and steps instead of relying on the G4Tracks to know their correct ID.

## larevt v06_07_11

-   2017-03-08 Lynn Garren : larevt v06_07_11 for larsoft v06_27_00

## lardata v06_15_00

-   2017-03-08 Lynn Garren : Merge branch 'feature/cerati_kffitresiduals' into release/v06_27_00
-   2017-03-08 Giuseppe Cerati : add TrackingPlaneHelper to lardata/RecoObjects
-   2017-03-08 Giuseppe Cerati : move TrackingPlaneHelper to lardata/RecoObjects
-   2017-03-08 Giuseppe Cerati : fix for sinA2 not 0
-   2017-03-08 Lynn Garren : lardata v06_15_00 for larsoft v06_27_00
-   2017-03-07 Giuseppe Cerati : revert
-   2017-03-07 Giuseppe Cerati : add documentation and cleanup
-   2017-03-07 Giuseppe Cerati : cleanup code and comments
-   2017-03-06 Giuseppe Cerati : complete renaming
-   2017-03-06 Giuseppe Cerati : rename
-   2017-03-06 Giuseppe Cerati : temporary commit before cleanup
-   2017-03-06 Giuseppe Cerati : revert to original version
-   2017-03-06 Giuseppe Cerati : revert to original version
-   2017-03-06 Giuseppe Cerati : temporary commit before reverting
-   2017-02-10 Giuseppe Cerati : remove commented out code and whitespaces
-   2017-02-10 Giuseppe Cerati : new propagator and kalman filter classes using smatrix
-   2017-02-01 Giuseppe Cerati : temporary commit towards smatrix propagator
-   2017-01-30 Giuseppe Cerati : temporary commit
-   2017-01-27 Giuseppe Cerati : add files

## larcore v06_05_03

## larpandoracontent v03_02_00

## larsoftobj v1_13_00

-   2017-03-08 Lynn Garren : Merge branch 'release/v06_27_00'
-   2017-03-08 Lynn Garren : larsoftobj v1_13_00 for larosoft v06_27_00
-   2017-03-06 Lynn Garren : add bundle directory

## lardataobj v1_13_00

-   2017-03-08 Lynn Garren : lardataobj v1_13_00 for larsoft v06_27_00
-   2017-03-08 Lynn Garren : remove unnecessary *GCCXML* codeguards
-   2017-03-07 Lynn Garren : Merge branch 'feature/cerati_kffitresiduals' into release/v06_27_00
-   2017-03-07 Giuseppe Cerati : cleanup whitespaces
-   2017-03-07 Giuseppe Cerati : updates for track fitting
-   2017-03-06 Gianluca Petrillo : Removed ROOT GenReflex guards from sparse_vector.
-   2017-02-10 Giuseppe Cerati : fix bug in TrackingPlane in case HasMomentum=false, add new TrackFitHitInfo data object

## larcoreobj v1_06_02

## larbatch v01_27_01

-   2017-03-08 Lynn Garren : larbatch v01_27_01 for larsoft v06_27_00
-   2017-03-02 Herbert Greenlee : Change ifdh_ls timeout to 600s.
-   2017-03-02 Herbert Greenlee : Increase timeout for ifdh_cp to 600s.
-   2017-03-02 Herbert Greenlee : Handle case where output stream is just “out.”
-   2017-03-02 Herbert Greenlee : Add more protection against unkillable hanging copy processes.

## larutils v1_12_00

-   2017-03-08 Lynn Garren : larutils v1_12_00 for larsoft v06_27_00
-   2017-03-04 Lynn Garren : modernize
-   2017-03-01 Thomas Brooks : added build script for SBND
