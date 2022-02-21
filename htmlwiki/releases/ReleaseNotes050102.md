LArSoft v05_01_02 Release Notes
======================================================================

[list of LArSoft releases](LArSoft_release_list)
[Download instructions](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v05_01_02/larsoft-v05_01_02.html)

Purpose
--------------------

-   changes to develop since v05_01_01

New features
------------------------------

-   larevt feature/eberly_fileInit
    -   The feature/eberly_fileInit branch makes changes to the single-IOV detector pedestal and channel status providers so that the user can read these calibrations from a CSV file instead of the database if desired. This feature was actually already in the public interfaces for these providers, just not implemented (an exception was thrown if the user tried to use it).

Bug fixes
------------------------

Updated dependencies
----------------------------------------------

||
|Product|Version|Qualifiers|Notes|
|mrb|v1_05_07|||

Change List
============================

larsoft v05_01_02
------------------------------------------

-   2016-03-02 Lynn Garren : larsoft v05_01_02 for larsoft v05_01_02
-   2016-03-02 Lynn Garren : update product versions

lareventdisplay v05_01_02
----------------------------------------------------------

-   2016-03-02 Lynn Garren : lareventdisplay v05_01_02 for larsoft v05_01_02

larexamples v05_00_04
--------------------------------------------------

-   2016-03-02 Lynn Garren : larexamples v05_00_04 for larsoft v05_01_02

larpandora v05_00_04
------------------------------------------------

-   2016-03-02 Lynn Garren : larpandora v05_00_04 for larsoft v05_01_02

larana v05_01_01
----------------------------------------

-   2016-03-02 Lynn Garren : larana v05_01_01 for larsoft v05_01_02
-   2016-03-02 Xiao Luo : update the calibration constants from data muon MIP

larreco v05_01_02
------------------------------------------

-   2016-03-02 Lynn Garren : larreco v05_01_02 for larsoft v05_01_02
-   2016-03-02 Robert Sulej : dont count bad channel sections when calculating track validation in the 3rd view
-   2016-02-29 Bruce Baller : Merge branch ‘develop’ into feature/bb_mcc7
-   2016-02-29 Bruce Baller : mcc7 mods to merging code
-   2016-02-29 Bruce Baller : mcc7 mods to merging code
-   2016-02-29 Bruce Baller : Speed improvements in AddHit.
-   2016-02-28 Bruce Baller : ongoing work to jump dead wires and handle low pulse height hits
-   2016-02-28 Bruce Baller : ongoing work to jump dead wires and handle low pulse height hits
-   2016-02-26 Bruce Baller : Add KillGarbageClusters and MergeAllHits
-   2016-02-26 Bruce Baller : Modifications for MCC7
-   2016-02-24 Bruce Baller : First pass code changes to jump many dead wires.
-   2016-02-24 Bruce Baller : First pass code changes to jump many dead wires.

larsim v05_01_00
----------------------------------------

-   2016-03-02 Lynn Garren : larsim v05_01_00 for larsoft v05_01_02
-   2016-03-02 Lynn Garren : make all CLHEP units explicit
-   2016-03-01 Lynn Garren : use CLHEP::cm explicitly - in advance of the move to geant4 10.1

larevt v05_01_00
----------------------------------------

-   2016-03-02 Lynn Garren : larevt v05_01_00 for larsoft v05_01_02
-   2016-03-01 Brandon Eberly : Enable initialization of calibration providers from file

lardata v05_01_02
------------------------------------------

-   2016-03-02 Lynn Garren : lardata v05_01_02 for larsoft v05_01_02
-   2016-03-01 Hamlet : Added just a bit more documentation about DetectorProperties::Efield()
-   2016-03-01 Hamlet : Added just a bit of documentation about DetectorProperties::Efield()

larcore v05_00_01
------------------------------------------

larbatch v01_20_05
--------------------------------------------

-   2016-03-02 Lynn Garren : larbatch v01_20_05 for larsoft v05_01_02
-   2016-03-02 Herbert Greenlee : Merge branch ‘develop’ of ssh://cdcvs.fnal.gov/cvs/projects/larbatch into develop
-   2016-03-02 Herbert Greenlee : Don’t return spurious errors.
-   2016-02-29 Herbert Greenlee : Add ability of condor_lar.sh to start and stop sam projects internally.

larutils v1_05_03
------------------------------------------
