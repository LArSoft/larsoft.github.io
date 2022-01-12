LArSoft v05\_01\_02 Release Notes
======================================================================

-   **Table of contents**
-   [LArSoft v05\_01\_02 Release Notes](#LArSoft-v05_01_02-Release-Notes)
    -   [Purpose](#Purpose)
    -   [New features](#New-features)
    -   [Bug fixes](#Bug-fixes)
    -   [Updated dependencies](#Updated-dependencies)
-   [Change List](#Change-List)
    -   [larsoft v05\_01\_02](#larsoft-v05_01_02)
    -   [lareventdisplay v05\_01\_02](#lareventdisplay-v05_01_02)
    -   [larexamples v05\_00\_04](#larexamples-v05_00_04)
    -   [larpandora v05\_00\_04](#larpandora-v05_00_04)
    -   [larana v05\_01\_01](#larana-v05_01_01)
    -   [larreco v05\_01\_02](#larreco-v05_01_02)
    -   [larsim v05\_01\_00](#larsim-v05_01_00)
    -   [larevt v05\_01\_00](#larevt-v05_01_00)
    -   [lardata v05\_01\_02](#lardata-v05_01_02)
    -   [larcore v05\_00\_01](#larcore-v05_00_01)
    -   [larbatch v01\_20\_05](#larbatch-v01_20_05)
    -   [larutils v1\_05\_03](#larutils-v1_05_03)

[list of LArSoft releases](LArSoft_release_list)
[Download instructions](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v05_01_02/larsoft-v05_01_02.html)

Purpose
--------------------

-   changes to develop since v05\_01\_01

New features
------------------------------

-   larevt feature/eberly\_fileInit
    -   The feature/eberly\_fileInit branch makes changes to the single-IOV detector pedestal and channel status providers so that the user can read these calibrations from a CSV file instead of the database if desired. This feature was actually already in the public interfaces for these providers, just not implemented (an exception was thrown if the user tried to use it).

Bug fixes
------------------------

Updated dependencies
----------------------------------------------

||
|Product|Version|Qualifiers|Notes|
|mrb|v1\_05\_07|||

Change List
============================

larsoft v05\_01\_02
------------------------------------------

-   2016-03-02 Lynn Garren : larsoft v05\_01\_02 for larsoft v05\_01\_02
-   2016-03-02 Lynn Garren : update product versions

lareventdisplay v05\_01\_02
----------------------------------------------------------

-   2016-03-02 Lynn Garren : lareventdisplay v05\_01\_02 for larsoft v05\_01\_02

larexamples v05\_00\_04
--------------------------------------------------

-   2016-03-02 Lynn Garren : larexamples v05\_00\_04 for larsoft v05\_01\_02

larpandora v05\_00\_04
------------------------------------------------

-   2016-03-02 Lynn Garren : larpandora v05\_00\_04 for larsoft v05\_01\_02

larana v05\_01\_01
----------------------------------------

-   2016-03-02 Lynn Garren : larana v05\_01\_01 for larsoft v05\_01\_02
-   2016-03-02 Xiao Luo : update the calibration constants from data muon MIP

larreco v05\_01\_02
------------------------------------------

-   2016-03-02 Lynn Garren : larreco v05\_01\_02 for larsoft v05\_01\_02
-   2016-03-02 Robert Sulej : dont count bad channel sections when calculating track validation in the 3rd view
-   2016-02-29 Bruce Baller : Merge branch ‘develop’ into feature/bb\_mcc7
-   2016-02-29 Bruce Baller : mcc7 mods to merging code
-   2016-02-29 Bruce Baller : mcc7 mods to merging code
-   2016-02-29 Bruce Baller : Speed improvements in AddHit.
-   2016-02-28 Bruce Baller : ongoing work to jump dead wires and handle low pulse height hits
-   2016-02-28 Bruce Baller : ongoing work to jump dead wires and handle low pulse height hits
-   2016-02-26 Bruce Baller : Add KillGarbageClusters and MergeAllHits
-   2016-02-26 Bruce Baller : Modifications for MCC7
-   2016-02-24 Bruce Baller : First pass code changes to jump many dead wires.
-   2016-02-24 Bruce Baller : First pass code changes to jump many dead wires.

larsim v05\_01\_00
----------------------------------------

-   2016-03-02 Lynn Garren : larsim v05\_01\_00 for larsoft v05\_01\_02
-   2016-03-02 Lynn Garren : make all CLHEP units explicit
-   2016-03-01 Lynn Garren : use CLHEP::cm explicitly - in advance of the move to geant4 10.1

larevt v05\_01\_00
----------------------------------------

-   2016-03-02 Lynn Garren : larevt v05\_01\_00 for larsoft v05\_01\_02
-   2016-03-01 Brandon Eberly : Enable initialization of calibration providers from file

lardata v05\_01\_02
------------------------------------------

-   2016-03-02 Lynn Garren : lardata v05\_01\_02 for larsoft v05\_01\_02
-   2016-03-01 Hamlet : Added just a bit more documentation about DetectorProperties::Efield()
-   2016-03-01 Hamlet : Added just a bit of documentation about DetectorProperties::Efield()

larcore v05\_00\_01
------------------------------------------

larbatch v01\_20\_05
--------------------------------------------

-   2016-03-02 Lynn Garren : larbatch v01\_20\_05 for larsoft v05\_01\_02
-   2016-03-02 Herbert Greenlee : Merge branch ‘develop’ of ssh://cdcvs.fnal.gov/cvs/projects/larbatch into develop
-   2016-03-02 Herbert Greenlee : Don’t return spurious errors.
-   2016-02-29 Herbert Greenlee : Add ability of condor\_lar.sh to start and stop sam projects internally.

larutils v1\_05\_03
------------------------------------------
