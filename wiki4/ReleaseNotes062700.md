LArSoft v06\_27\_00 Release Notes[¶](#LArSoft-v06_27_00-Release-Notes)
======================================================================

-   **Table of contents**
-   [LArSoft v06\_27\_00 Release Notes](#LArSoft-v06_27_00-Release-Notes)
    -   [Purpose](#Purpose)
    -   [New features](#New-features)
    -   [Bug fixes](#Bug-fixes)
    -   [Updated dependencies](#Updated-dependencies)
-   [Change List](#Change-List)
    -   [larsoft v06\_27\_00](#larsoft-v06_27_00)
    -   [lareventdisplay v06\_03\_00](#lareventdisplay-v06_03_00)
    -   [larexamples v06\_01\_17](#larexamples-v06_01_17)
    -   [larpandora v06\_08\_02](#larpandora-v06_08_02)
    -   [larwirecell v06\_00\_15](#larwirecell-v06_00_15)
    -   [larana v06\_03\_20](#larana-v06_03_20)
    -   [larreco v06\_21\_00](#larreco-v06_21_00)
    -   [larsim v06\_13\_03](#larsim-v06_13_03)
    -   [larevt v06\_07\_11](#larevt-v06_07_11)
    -   [lardata v06\_15\_00](#lardata-v06_15_00)
    -   [larcore v06\_05\_03](#larcore-v06_05_03)
    -   [larpandoracontent v03\_02\_00](#larpandoracontent-v03_02_00)
    -   [larsoftobj v1\_13\_00](#larsoftobj-v1_13_00)
    -   [lardataobj v1\_13\_00](#lardataobj-v1_13_00)
    -   [larcoreobj v1\_06\_02](#larcoreobj-v1_06_02)
    -   [larbatch v01\_27\_01](#larbatch-v01_27_01)
    -   [larutils v1\_12\_00](#larutils-v1_12_00)

[list of LArSoft releases](LArSoft_release_list)\
Download instructions for [larsoft v06\_27\_00](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v06_27_00/larsoft-v06_27_00.html)\
Download instructions for [just larsoftobj v1\_13\_00](http://scisoft.fnal.gov/scisoft/bundles/larsoftobj/v1_13_00/larsoftobj-v1_13_00.html)


Purpose[¶](#Purpose)
--------------------

-   changes to develop
-   tracking updats


New features[¶](#New-features)
------------------------------

-   lardataobj, feature/cerati\_kffitresiduals:
    -   add TrackFitHitInfo data product to store residuals/hit-on-track information, etc.
    -   add minor functionalities to TrackingPlane and TrackTrajectory
-   lardata, feature/cerati\_kffitresiduals:
    -   add Kalman Filter tools based on SMatrix
-   larreco, feature/cerati\_kffitresiduals:
    -   add a producers for fitted tracks with Trajectory or TrackTrajectory as input (the old one used Tracks or PFParticles as input)
    -   fitter works on Trajectory, reads and writes Flags, works with new KF tools based on SMatrix, optionally produces TrackFitHitInfo
    -   add option so that, if a track fit fails, try to recover it by performing another fit disabling the hit rejection for negative propagation distance
    -   better factorization of fcl parameters
-   lareventdisplay, feature/cerati\_flags-evd:
    -   change event display so that flags only valid points in Tracks are drawn


Bug fixes[¶](#Bug-fixes)
------------------------

-   [\#15702](/redmine/issues/15702 "Bug: order of list the generators issue with PhotonBackTracker  (Closed)")


Updated dependencies[¶](#Updated-dependencies)
----------------------------------------------


Change List[¶](#Change-List)
============================


larsoft v06\_27\_00[¶](#larsoft-v06_27_00)
------------------------------------------

-   2017-03-08 Lynn Garren : larsoft v06\_27\_00 for larsoft v06\_27\_00
-   2017-03-08 Lynn Garren : update product versions


lareventdisplay v06\_03\_00[¶](#lareventdisplay-v06_03_00)
----------------------------------------------------------

-   2017-03-08 Lynn Garren : lareventdisplay v06\_03\_00 for larsoft v06\_27\_00
-   2017-03-07 Lynn Garren : Merge branch ‘feature/cerati\_flags-evd’ into release/v06\_27\_00
-   2017-03-07 Giuseppe Cerati : draw only valid points for tracks


larexamples v06\_01\_17[¶](#larexamples-v06_01_17)
--------------------------------------------------

-   2017-03-08 Lynn Garren : larexamples v06\_01\_17 for larsoft v06\_27\_00


larpandora v06\_08\_02[¶](#larpandora-v06_08_02)
------------------------------------------------

-   2017-03-08 Lynn Garren : larpandora v06\_08\_02 for larsoft v06\_27\_00


larwirecell v06\_00\_15[¶](#larwirecell-v06_00_15)
--------------------------------------------------

-   2017-03-08 Lynn Garren : larwirecell v06\_00\_15 for larsoft v06\_27\_00


larana v06\_03\_20[¶](#larana-v06_03_20)
----------------------------------------

-   2017-03-08 Lynn Garren : larana v06\_03\_20 for larsoft v06\_27\_00


larreco v06\_21\_00[¶](#larreco-v06_21_00)
------------------------------------------

-   2017-03-08 Lynn Garren : add missing libraries
-   2017-03-08 Lynn Garren : Merge branch ‘feature/cerati\_kffitresiduals’ into release/v06\_27\_00
-   2017-03-08 Giuseppe Cerati : move TrackingPlaneHelper to lardata/RecoObjects
-   2017-03-08 Lynn Garren : larreco v06\_21\_00 for larsoft v06\_27\_00
-   2017-03-07 Lynn Garren : Merge branch ‘feature/cerati\_kffitresiduals’ into release/v06\_27\_00
-   2017-03-07 Giuseppe Cerati : fcl minor updates
-   2017-03-07 Giuseppe Cerati : add documentation and cleanup
-   2017-03-07 Giuseppe Cerati : remove TrackHitMeta for now
-   2017-03-07 Giuseppe Cerati : add fitter for trajectories
-   2017-03-07 Giuseppe Cerati : cleanup and fixes
-   2017-03-06 Gianluca Petrillo : Revert “Prepare DisambigCheater for geometry change.”
-   2017-03-06 Gianluca Petrillo : Prepare DisambigCheater for geometry change.
-   2017-03-06 Tingjun Yang : Initialize hitcoord.
-   2017-03-03 baller : Update default configuration
-   2017-03-03 baller : Merge branch ‘develop’ into feature/bb\_TJWork
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
-   2017-02-24 baller : Merge branch ‘develop’ into feature/bb\_TJWork
-   2017-02-24 baller : Shower finding development
-   2017-02-24 baller : Shower finding development
-   2017-02-24 baller : Shower finding development
-   2017-02-24 baller : Shower finding development
-   2017-02-22 baller : Tweaks in MatchTruth track electron and photon daughters. Re-calculate MCSMom when entering CheckTraj. Add MCSMom check in FillGaps.
-   2017-02-22 baller : Fix bugs in FindShowerParent. Set parent TJ IDs
-   2017-02-22 baller : Change parent name
-   2017-02-21 baller : Merge branch ‘develop’ into feature/bb\_TJWork
-   2017-02-21 baller : Change CTP format
-   2017-02-21 baller : Change CTP format
-   2017-02-21 baller : Fix format
-   2017-02-21 baller : Merge with Tingjun feature branch Merge remote-tracking branch ‘remotes/origin/feature/tjyang\_TJWork’ into feature/bb\_TJWork
-   2017-02-21 baller : Add kVtxInShower
-   2017-02-21 baller : Add kVtxInShower
-   2017-02-21 baller : Add kVtxInShower
-   2017-02-20 baller : Fix lag names
-   2017-02-20 baller : Don’t report on long trajectories
-   2017-02-20 baller : Fix alg names.
-   2017-02-20 baller : Fix alg names.
-   2017-02-10 Giuseppe Cerati : intermediate commit towards new version of the fitter, large rewrite of TrackKalmanFitter now using flags and new classes based on smatrix
-   2017-02-02 Tingjun Yang : Merge remote-tracking branch ‘origin/feature/bb\_TJWork’ into feature/tjyang\_TJWork
-   2017-02-02 Tingjun Yang : Change the way to loop over trajectories.
-   2017-02-02 Tingjun Yang : Merge remote-tracking branch ‘origin/feature/bb\_TJWork’ into feature/tjyang\_TJWork
-   2017-02-02 Tingjun Yang : Move ChkHiChgHits to the right place after trajectories are reconstructed.
-   2017-02-01 Tingjun Yang : Merge remote-tracking branch ‘origin/feature/bb\_TJWork’ into feature/tjyang\_TJWork
-   2017-02-01 Tingjun Yang : Print more information.
-   2017-02-01 Tingjun Yang : Improve VtxHitsSwap. Do not swap hits if the two trajectories are colinear.
-   2017-02-01 Tingjun Yang : Merge branch ‘develop’ of ssh://cdcvs.fnal.gov/cvs/projects/larreco into feature/tjyang\_TJWork
-   2017-02-01 Tingjun Yang : Resolve conflict and fix a bug in SplitHiChgHits
-   2017-01-31 Tingjun Yang : Merge remote-tracking branch ‘origin/feature/bb\_TJWork’ into feature/tjyang\_TJWork
-   2017-01-31 Tingjun Yang : Change print format.
-   2017-01-31 Tingjun Yang : Add missing comma
-   2017-01-30 Tingjun Yang : Merge branch ‘develop’ of ssh://cdcvs.fnal.gov/cvs/projects/larreco into feature/tjyang\_TJWork
-   2017-01-25 Tingjun Yang : Merge branch ‘develop’ of ssh://cdcvs.fnal.gov/cvs/projects/larreco into feature/tjyang\_TJWork
-   2017-01-25 Tingjun Yang : Merge remote-tracking branch ‘origin/feature/bb\_TJWork’ into feature/tjyang\_TJWork
-   2017-01-21 Tingjun Yang : Add algorithm to split high charge hits near the end of trajectory.
-   2017-01-20 Tingjun Yang : Add algorithm to swap hits near vertex.
-   2017-01-18 Tingjun Yang : Relax deltaCut for RevProp.
-   2017-01-17 Tingjun Yang : Always calculate chgPull in EndMerge. Do not merge if chgPull is very high.
-   2017-01-17 Tingjun Yang : Merge branch ‘develop’ of ssh://cdcvs.fnal.gov/cvs/projects/larreco into feature/tjyang\_TJWork
-   2017-01-06 Tingjun Yang : Merge branch ‘develop’ of ssh://cdcvs.fnal.gov/cvs/projects/larreco into feature/tjyang\_TJWork
-   2017-01-04 Tingjun Yang : First version of code to identify Michel electron.
-   2016-12-22 Tingjun Yang : Merge remote-tracking branch ‘origin/feature/bb\_TJWork’ into feature/tjyang\_TJWork
-   2016-12-22 Tingjun Yang : Merge branch ‘develop’ of ssh://cdcvs.fnal.gov/cvs/projects/larreco into feature/tjyang\_TJWork


larsim v06\_13\_03[¶](#larsim-v06_13_03)
----------------------------------------

-   2017-03-08 Lynn Garren : larsim v06\_13\_03 for larsoft v06\_27\_00
-   2017-03-03 Jason Stock : OpFastScintillation now includes larsim/ParticleListAction.h OpFastScintillation now uses ParticleListAction to determine the TrackIDs of G4Tracks and steps instead of relying on the G4Tracks to know their correct ID.


larevt v06\_07\_11[¶](#larevt-v06_07_11)
----------------------------------------

-   2017-03-08 Lynn Garren : larevt v06\_07\_11 for larsoft v06\_27\_00


lardata v06\_15\_00[¶](#lardata-v06_15_00)
------------------------------------------

-   2017-03-08 Lynn Garren : Merge branch ‘feature/cerati\_kffitresiduals’ into release/v06\_27\_00
-   2017-03-08 Giuseppe Cerati : add TrackingPlaneHelper to lardata/RecoObjects
-   2017-03-08 Giuseppe Cerati : move TrackingPlaneHelper to lardata/RecoObjects
-   2017-03-08 Giuseppe Cerati : fix for sinA2 not 0
-   2017-03-08 Lynn Garren : lardata v06\_15\_00 for larsoft v06\_27\_00
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


larcore v06\_05\_03[¶](#larcore-v06_05_03)
------------------------------------------


larpandoracontent v03\_02\_00[¶](#larpandoracontent-v03_02_00)
--------------------------------------------------------------


larsoftobj v1\_13\_00[¶](#larsoftobj-v1_13_00)
----------------------------------------------

-   2017-03-08 Lynn Garren : Merge branch ‘release/v06\_27\_00’
-   2017-03-08 Lynn Garren : larsoftobj v1\_13\_00 for larosoft v06\_27\_00
-   2017-03-06 Lynn Garren : add bundle directory


lardataobj v1\_13\_00[¶](#lardataobj-v1_13_00)
----------------------------------------------

-   2017-03-08 Lynn Garren : lardataobj v1\_13\_00 for larsoft v06\_27\_00
-   2017-03-08 Lynn Garren : remove unnecessary *GCCXML* codeguards
-   2017-03-07 Lynn Garren : Merge branch ‘feature/cerati\_kffitresiduals’ into release/v06\_27\_00
-   2017-03-07 Giuseppe Cerati : cleanup whitespaces
-   2017-03-07 Giuseppe Cerati : updates for track fitting
-   2017-03-06 Gianluca Petrillo : Removed ROOT GenReflex guards from sparse\_vector.
-   2017-02-10 Giuseppe Cerati : fix bug in TrackingPlane in case HasMomentum=false, add new TrackFitHitInfo data object


larcoreobj v1\_06\_02[¶](#larcoreobj-v1_06_02)
----------------------------------------------


larbatch v01\_27\_01[¶](#larbatch-v01_27_01)
--------------------------------------------

-   2017-03-08 Lynn Garren : larbatch v01\_27\_01 for larsoft v06\_27\_00
-   2017-03-02 Herbert Greenlee : Change ifdh\_ls timeout to 600s.
-   2017-03-02 Herbert Greenlee : Increase timeout for ifdh\_cp to 600s.
-   2017-03-02 Herbert Greenlee : Handle case where output stream is just “out.”
-   2017-03-02 Herbert Greenlee : Add more protection against unkillable hanging copy processes.


larutils v1\_12\_00[¶](#larutils-v1_12_00)
------------------------------------------

-   2017-03-08 Lynn Garren : larutils v1\_12\_00 for larsoft v06\_27\_00
-   2017-03-04 Lynn Garren : modernize
-   2017-03-01 Thomas Brooks : added build script for SBND
