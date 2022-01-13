LArSoft v06_75_00 Release Notes
======================================================================

[list of LArSoft releases](LArSoft_release_list)
Download instructions for [larsoft v06_75_00](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v06_75_00/larsoft-v06_75_00.html)
Download instructions for [just larsoftobj v1_43_01](http://scisoft.fnal.gov/scisoft/bundles/larsoftobj/v1_43_01/larsoftobj-v1_43_01.html)

Purpose
--------------------

-   changes in develop
-   merge feature branches
-   geant4 bug fix release

New features
------------------------------

-   feature/JStock_PBTPIDep of larsim
    -   also dunetpc and uboonecode
    -   **Breaking Changes**
    -   1st: The PhotonBackTracker will become the PhotonBackTrackerService and will have an art independent service provider usable in gallery.
    -   2nd: The PhotonBackTracker will now depend on the ParticleInventoryService (developed to move duplicated work from BackTracker and PhotonBackTracker into a single service).
    -   Some of the function names have been updated to be more correct.
-   feature/chalt_DPRawHitFinderUpdate
    -   larreco and lareventdisplay
    -   minor changes in the dual phase code
-   feature/chalt_Tensorflow in larreco for [redmine issue 19539](https://cdcvs.fnal.gov/redmine/issues/19539)
    -   dunetpc feature/chalt_Tensorflow
    -   lariatsoft feature/team_issue19539

Bug fixes
------------------------

-   larana feature/usher_fixassociationstool bug fix

Updated dependencies
----------------------------------------------

-   nutools v2_21_02
-   geant4 v4_10_3_p03b
-   cetbuildtools v7_03_02

Change List
============================

larsoft v06_75_00
------------------------------------------

-   2018-04-25 Lynn Garren : larsoft v06_75_00 for larsoft v06_75_00
-   2018-04-25 Lynn Garren : update for nutools
-   2018-04-20 Lynn Garren : for nutools v2_21_02
-   2018-04-25 Lynn Garren : update products

lareventdisplay v06_19_03
----------------------------------------------------------

-   2018-04-25 Lynn Garren : lareventdisplay v06_19_03 for larsoft v06_75_00
-   2018-04-20 Christoph Alt : Reading fit amplitude from feature vector (instead of recob::Hit)

larexamples v06_13_03
--------------------------------------------------

-   2018-04-25 Lynn Garren : larexamples v06_13_03 for larsoft v06_75_00

larpandora v06_26_03
------------------------------------------------

-   2018-04-25 Lynn Garren : larpandora v06_26_03 for larsoft v06_75_00

larwirecell v06_12_03
--------------------------------------------------

-   2018-04-25 Lynn Garren : larwirecell v06_12_03 for larsoft v06_75_00

larana v06_19_03
----------------------------------------

-   2018-04-25 Lynn Garren : larana v06_19_03 for larsoft v06_75_00
-   2018-04-24 Usher, Tracy L : Indirect associations were not being formed correctly, changing to index scheme to get them right… requires a change to the fcl file definitions as well

larreco v06_60_00
------------------------------------------

-   2018-04-25 Lynn Garren : larreco v06_60_00 for larsoft v06_75_00
-   2018-04-24 Lynn Garren : Merge branch ‘feature/chalt_DPRawHitFinderUpdate’ into release/v06_75_00
-   2018-04-20 Christoph Alt : Save real amplitude (=max ADC count) instead of fitted amplitude in recob::Hit. Save fitted amplitude in feature vector (for event display)
-   2018-04-20 Christoph Alt : Replace pointidalg.fcl by dataprovider.fcl
-   2018-04-20 Christoph Alt : Merge branch ‘develop’ into feature/chalt_Tensorflow
-   2018-04-12 Christoph Alt : Move all tensorflow code to dedicated directory. Split up larreco_RecoAlg_ImagePatternAlgs_PointIdAlg library.

larsim v06_45_00
----------------------------------------

-   2018-04-25 Lynn Garren : larsim v06_45_00 for larsoft v06_75_00
-   2018-04-25 Lynn Garren : Merge branch ‘feature/JStock_PBTPIDep’ into release/v06_75_00
-   2018-04-24 Jason Stock : Removing DetectorClocks from PhotonBackTracker and PhotonBackTrackerService (unused variable).
-   2018-04-24 Jason Stock : Fixing c2 build issues (unused variable).
-   2018-04-24 Jason Stock : Merge remote branch ‘origin/develop’ into feature/JStock_PBTPIDep
-   2018-04-24 Lynn Garren : Merge branch ‘feature/JStock_PBTPIDep’ into release/v06_75_00
-   2018-04-23 Jason Stock : Making a map for flashes (not great), isntead of many calls to FindManyP (really bad).
-   2018-04-19 Gianluca Petrillo : Removed unrequested feature introduced with issue [redmine issue 18704](https://cdcvs.fnal.gov/redmine/issues/18704).
-   2018-04-19 Lynn Garren : larsoft v06_74_01
-   2018-04-19 Jason Stock : Documentation for the ParticleInventory
-   2018-04-19 Jason Stock : Merge remote branch ‘origin/develop’ into develop
-   2018-04-19 Jason Stock : pre-update commit (comment changes only)
-   2018-04-18 Jason Stock : BugFix with Flash functionality.
-   2018-04-18 Jason Stock : Merge commit ‘LARSOFT_SUITE_v06_74_00’ into feature/JStock_PBTPIDep
-   2018-04-16 Jason Stock : Merge remote branch ‘origin/feature/JStock_PBTPIDep’ into feature/JStock_PBTPIDep
-   2018-04-16 Jason Stock : Cleaning up PBTs. Adding OpFlash tools to LArSoft facing service.
-   2018-03-26 Jason Stock : small change to comment format in header.
-   2018-03-26 Jason Stock : Merge remote branch ‘origin/feature/JStock_PBTPIDep’ into feature/JStock_PBTPIDep
-   2018-03-26 Jason Stock : Merge commit ‘LARSOFT_SUITE_v06_71_00’ into feature/JStock_PBTPIDep
-   2018-03-06 Jason Stock : Merge remote branch ‘origin/feature/JStock_PBTPIDep’ into feature/JStock_PBTPIDep
-   2018-03-06 Jason Stock : Merge commit ‘LARSOFT_SUITE_v06_70_00’ into feature/JStock_PBTPIDep
-   2018-02-27 Jason Stock : Merge remote branch ‘origin/feature/JStock_ParticleInventoryFix19023’ into feature/JStock_PBTPIDep
-   2018-02-26 Jason Stock : Merge tag ‘LARSOFT_SUITE_v06_69_00’ into feature/JStock_PBTPIDep
-   2018-02-21 Jason Stock : Adding a single function to PhotonBackTracker
-   2018-02-21 Jason Stock : Merge remote-tracking branch ‘origin/feature/JStock_PBTPIDep’ into feature/JStock_PBTPIDep
-   2018-02-21 Jason Stock : renamed photonbacktracker.fcl
-   2018-02-21 Jason Stock : Fix to prep_OpDetBTRs
-   2018-02-20 Jason Stock : Merge remote-tracking branch ‘origin/feature/JStock_PBTPIDep’ into feature/JStock_PBTPIDep
-   2018-02-20 Jason Stock : small fix to bug fix. (typo).
-   2018-02-20 Jason Stock : Merge remote-tracking branch ‘origin/feature/JStock_PBTPIDep’ into feature/JStock_PBTPIDep
-   2018-02-20 Jason Stock : Bug Fix in PhotonBackTracker (used OpChannel where OpDet was needed).
-   2018-02-19 Jason Stock : Merge tag ‘LARSOFT_SUITE_v06_67_01’ into feature/JStock_PBTPIDep
-   2018-02-12 Jason Stock : debugging and adding functions to the PhotonBackTracker
-   2018-02-12 Jason Stock : Adding functions to the PhotonBackTracker to work on OpFlash objects
-   2018-02-04 Jason Stock : Fix to include statements in PhotonBackTracker.h
-   2018-02-04 Jason Stock : Merge commit ‘LARSOFT_SUITE_v06_67_00’ into feature/JStock_PBTPIDep
-   2018-02-04 Jason Stock : Missed a few files in the last commit.
-   2018-02-04 Jason Stock : First full implimentation of the PhotonBackTrackerService/PhotonBackTracker with Gallery compliance.

larevt v06_20_03
----------------------------------------

-   2018-04-25 Lynn Garren : larevt v06_20_03 for larsoft v06_75_00

lardata v06_43_03
------------------------------------------

-   2018-04-25 Lynn Garren : lardata v06_43_03 for larsoft v06_75_00
-   2018-04-20 Herbert Greenlee : Merge branch ‘develop’ of ssh://cdcvs.fnal.gov/cvs/projects/lardata into develop
-   2018-04-20 Herbert Greenlee : Fix memory overwrite.

larcore v06_19_01
------------------------------------------

larpandoracontent v03_11_01
--------------------------------------------------------------

larsoftobj v1_43_01
----------------------------------------------

lardataobj v1_31_00
----------------------------------------------

larcorealg v1_19_01
----------------------------------------------

larcoreobj v1_23_00
----------------------------------------------

larbatch v01_39_00
--------------------------------------------

larutils v1_22_04
------------------------------------------

-   2018-04-25 Lynn Garren : larutils v1_22_04 for larsoft v06_75_00
-   2018-04-20 Tingjun Yang : Use bluearc on mac.
-   2018-04-20 Herbert Greenlee : Merge branch ‘develop’ of ssh://cdcvs.fnal.gov/cvs/projects/larutils into develop
-   2018-04-20 Herbert Greenlee : Use cvmfs on linux.
-   2018-04-20 Tingjun Yang : more debug information.
-   2018-04-20 Tingjun Yang : Revert “more debug information.”
-   2018-04-19 Tingjun Yang : more debug information.
-   2018-04-19 Tingjun Yang : use the standard script.
-   2018-04-19 Lynn Garren : larsoft v06_74_01
-   2018-04-19 Tingjun Yang : More debug information.
