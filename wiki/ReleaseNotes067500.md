LArSoft v06\_75\_00 Release Notes
======================================================================

-   **Table of contents**
-   [LArSoft v06\_75\_00 Release Notes](#LArSoft-v06_75_00-Release-Notes)
    -   [Purpose](#Purpose)
    -   [New features](#New-features)
    -   [Bug fixes](#Bug-fixes)
    -   [Updated dependencies](#Updated-dependencies)
-   [Change List](#Change-List)
    -   [larsoft v06\_75\_00](#larsoft-v06_75_00)
    -   [lareventdisplay v06\_19\_03](#lareventdisplay-v06_19_03)
    -   [larexamples v06\_13\_03](#larexamples-v06_13_03)
    -   [larpandora v06\_26\_03](#larpandora-v06_26_03)
    -   [larwirecell v06\_12\_03](#larwirecell-v06_12_03)
    -   [larana v06\_19\_03](#larana-v06_19_03)
    -   [larreco v06\_60\_00](#larreco-v06_60_00)
    -   [larsim v06\_45\_00](#larsim-v06_45_00)
    -   [larevt v06\_20\_03](#larevt-v06_20_03)
    -   [lardata v06\_43\_03](#lardata-v06_43_03)
    -   [larcore v06\_19\_01](#larcore-v06_19_01)
    -   [larpandoracontent v03\_11\_01](#larpandoracontent-v03_11_01)
    -   [larsoftobj v1\_43\_01](#larsoftobj-v1_43_01)
    -   [lardataobj v1\_31\_00](#lardataobj-v1_31_00)
    -   [larcorealg v1\_19\_01](#larcorealg-v1_19_01)
    -   [larcoreobj v1\_23\_00](#larcoreobj-v1_23_00)
    -   [larbatch v01\_39\_00](#larbatch-v01_39_00)
    -   [larutils v1\_22\_04](#larutils-v1_22_04)

[list of LArSoft releases](LArSoft_release_list)\
Download instructions for [larsoft v06\_75\_00](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v06_75_00/larsoft-v06_75_00.html) \
Download instructions for [just larsoftobj v1\_43\_01](http://scisoft.fnal.gov/scisoft/bundles/larsoftobj/v1_43_01/larsoftobj-v1_43_01.html)

Purpose
--------------------

-   changes in develop
-   merge feature branches
-   geant4 bug fix release

New features
------------------------------

-   feature/JStock\_PBTPIDep of larsim
    -   also dunetpc and uboonecode
    -   **Breaking Changes**
    -   1st: The PhotonBackTracker will become the PhotonBackTrackerService and will have an art independent service provider usable in gallery.
    -   2nd: The PhotonBackTracker will now depend on the ParticleInventoryService (developed to move duplicated work from BackTracker and PhotonBackTracker into a single service).
    -   Some of the function names have been updated to be more correct.
-   feature/chalt\_DPRawHitFinderUpdate
    -   larreco and lareventdisplay
    -   minor changes in the dual phase code
-   feature/chalt\_Tensorflow in larreco for [\#19539](/redmine/issues/19539 "Necessary Maintenance: Restore tensorflow-dependent code disabled for support to Clang (Assigned)")
    -   dunetpc feature/chalt\_Tensorflow
    -   lariatsoft feature/team\_issue19539

Bug fixes
------------------------

-   larana feature/usher\_fixassociationstool bug fix

Updated dependencies
----------------------------------------------

-   nutools v2\_21\_02
-   geant4 v4\_10\_3\_p03b
-   cetbuildtools v7\_03\_02

Change List
============================

larsoft v06\_75\_00
------------------------------------------

-   2018-04-25 Lynn Garren : larsoft v06\_75\_00 for larsoft v06\_75\_00
-   2018-04-25 Lynn Garren : update for nutools
-   2018-04-20 Lynn Garren : for nutools v2\_21\_02
-   2018-04-25 Lynn Garren : update products

lareventdisplay v06\_19\_03
----------------------------------------------------------

-   2018-04-25 Lynn Garren : lareventdisplay v06\_19\_03 for larsoft v06\_75\_00
-   2018-04-20 Christoph Alt : Reading fit amplitude from feature vector (instead of recob::Hit)

larexamples v06\_13\_03
--------------------------------------------------

-   2018-04-25 Lynn Garren : larexamples v06\_13\_03 for larsoft v06\_75\_00

larpandora v06\_26\_03
------------------------------------------------

-   2018-04-25 Lynn Garren : larpandora v06\_26\_03 for larsoft v06\_75\_00

larwirecell v06\_12\_03
--------------------------------------------------

-   2018-04-25 Lynn Garren : larwirecell v06\_12\_03 for larsoft v06\_75\_00

larana v06\_19\_03
----------------------------------------

-   2018-04-25 Lynn Garren : larana v06\_19\_03 for larsoft v06\_75\_00
-   2018-04-24 Usher, Tracy L : Indirect associations were not being formed correctly, changing to index scheme to get them right… requires a change to the fcl file definitions as well

larreco v06\_60\_00
------------------------------------------

-   2018-04-25 Lynn Garren : larreco v06\_60\_00 for larsoft v06\_75\_00
-   2018-04-24 Lynn Garren : Merge branch ‘feature/chalt\_DPRawHitFinderUpdate’ into release/v06\_75\_00
-   2018-04-20 Christoph Alt : Save real amplitude (=max ADC count) instead of fitted amplitude in recob::Hit. Save fitted amplitude in feature vector (for event display)
-   2018-04-20 Christoph Alt : Replace pointidalg.fcl by dataprovider.fcl
-   2018-04-20 Christoph Alt : Merge branch ‘develop’ into feature/chalt\_Tensorflow
-   2018-04-12 Christoph Alt : Move all tensorflow code to dedicated directory. Split up larreco\_RecoAlg\_ImagePatternAlgs\_PointIdAlg library.

larsim v06\_45\_00
----------------------------------------

-   2018-04-25 Lynn Garren : larsim v06\_45\_00 for larsoft v06\_75\_00
-   2018-04-25 Lynn Garren : Merge branch ‘feature/JStock\_PBTPIDep’ into release/v06\_75\_00
-   2018-04-24 Jason Stock : Removing DetectorClocks from PhotonBackTracker and PhotonBackTrackerService (unused variable).
-   2018-04-24 Jason Stock : Fixing c2 build issues (unused variable).
-   2018-04-24 Jason Stock : Merge remote branch ‘origin/develop’ into feature/JStock\_PBTPIDep
-   2018-04-24 Lynn Garren : Merge branch ‘feature/JStock\_PBTPIDep’ into release/v06\_75\_00
-   2018-04-23 Jason Stock : Making a map for flashes (not great), isntead of many calls to FindManyP (really bad).
-   2018-04-19 Gianluca Petrillo : Removed unrequested feature introduced with issue [\#18704](/redmine/issues/18704 "Task: Change LBNEMC tags in SAM to DUNEMC tags in sam (Closed)").
-   2018-04-19 Lynn Garren : larsoft v06\_74\_01
-   2018-04-19 Jason Stock : Documentation for the ParticleInventory
-   2018-04-19 Jason Stock : Merge remote branch ‘origin/develop’ into develop
-   2018-04-19 Jason Stock : pre-update commit (comment changes only)
-   2018-04-18 Jason Stock : BugFix with Flash functionality.
-   2018-04-18 Jason Stock : Merge commit ‘LARSOFT\_SUITE\_v06\_74\_00’ into feature/JStock\_PBTPIDep
-   2018-04-16 Jason Stock : Merge remote branch ‘origin/feature/JStock\_PBTPIDep’ into feature/JStock\_PBTPIDep
-   2018-04-16 Jason Stock : Cleaning up PBTs. Adding OpFlash tools to LArSoft facing service.
-   2018-03-26 Jason Stock : small change to comment format in header.
-   2018-03-26 Jason Stock : Merge remote branch ‘origin/feature/JStock\_PBTPIDep’ into feature/JStock\_PBTPIDep
-   2018-03-26 Jason Stock : Merge commit ‘LARSOFT\_SUITE\_v06\_71\_00’ into feature/JStock\_PBTPIDep
-   2018-03-06 Jason Stock : Merge remote branch ‘origin/feature/JStock\_PBTPIDep’ into feature/JStock\_PBTPIDep
-   2018-03-06 Jason Stock : Merge commit ‘LARSOFT\_SUITE\_v06\_70\_00’ into feature/JStock\_PBTPIDep
-   2018-02-27 Jason Stock : Merge remote branch ‘origin/feature/JStock\_ParticleInventoryFix19023’ into feature/JStock\_PBTPIDep
-   2018-02-26 Jason Stock : Merge tag ‘LARSOFT\_SUITE\_v06\_69\_00’ into feature/JStock\_PBTPIDep
-   2018-02-21 Jason Stock : Adding a single function to PhotonBackTracker
-   2018-02-21 Jason Stock : Merge remote-tracking branch ‘origin/feature/JStock\_PBTPIDep’ into feature/JStock\_PBTPIDep
-   2018-02-21 Jason Stock : renamed photonbacktracker.fcl
-   2018-02-21 Jason Stock : Fix to prep\_OpDetBTRs
-   2018-02-20 Jason Stock : Merge remote-tracking branch ‘origin/feature/JStock\_PBTPIDep’ into feature/JStock\_PBTPIDep
-   2018-02-20 Jason Stock : small fix to bug fix. (typo).
-   2018-02-20 Jason Stock : Merge remote-tracking branch ‘origin/feature/JStock\_PBTPIDep’ into feature/JStock\_PBTPIDep
-   2018-02-20 Jason Stock : Bug Fix in PhotonBackTracker (used OpChannel where OpDet was needed).
-   2018-02-19 Jason Stock : Merge tag ‘LARSOFT\_SUITE\_v06\_67\_01’ into feature/JStock\_PBTPIDep
-   2018-02-12 Jason Stock : debugging and adding functions to the PhotonBackTracker
-   2018-02-12 Jason Stock : Adding functions to the PhotonBackTracker to work on OpFlash objects
-   2018-02-04 Jason Stock : Fix to include statements in PhotonBackTracker.h
-   2018-02-04 Jason Stock : Merge commit ‘LARSOFT\_SUITE\_v06\_67\_00’ into feature/JStock\_PBTPIDep
-   2018-02-04 Jason Stock : Missed a few files in the last commit.
-   2018-02-04 Jason Stock : First full implimentation of the PhotonBackTrackerService/PhotonBackTracker with Gallery compliance.

larevt v06\_20\_03
----------------------------------------

-   2018-04-25 Lynn Garren : larevt v06\_20\_03 for larsoft v06\_75\_00

lardata v06\_43\_03
------------------------------------------

-   2018-04-25 Lynn Garren : lardata v06\_43\_03 for larsoft v06\_75\_00
-   2018-04-20 Herbert Greenlee : Merge branch ‘develop’ of ssh://cdcvs.fnal.gov/cvs/projects/lardata into develop
-   2018-04-20 Herbert Greenlee : Fix memory overwrite.

larcore v06\_19\_01
------------------------------------------

larpandoracontent v03\_11\_01
--------------------------------------------------------------

larsoftobj v1\_43\_01
----------------------------------------------

lardataobj v1\_31\_00
----------------------------------------------

larcorealg v1\_19\_01
----------------------------------------------

larcoreobj v1\_23\_00
----------------------------------------------

larbatch v01\_39\_00
--------------------------------------------

larutils v1\_22\_04
------------------------------------------

-   2018-04-25 Lynn Garren : larutils v1\_22\_04 for larsoft v06\_75\_00
-   2018-04-20 Tingjun Yang : Use bluearc on mac.
-   2018-04-20 Herbert Greenlee : Merge branch ‘develop’ of ssh://cdcvs.fnal.gov/cvs/projects/larutils into develop
-   2018-04-20 Herbert Greenlee : Use cvmfs on linux.
-   2018-04-20 Tingjun Yang : more debug information.
-   2018-04-20 Tingjun Yang : Revert “more debug information.”
-   2018-04-19 Tingjun Yang : more debug information.
-   2018-04-19 Tingjun Yang : use the standard script.
-   2018-04-19 Lynn Garren : larsoft v06\_74\_01
-   2018-04-19 Tingjun Yang : More debug information.
