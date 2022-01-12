LArSoft v05_13_00 Release Notes
======================================================================

-   **Table of contents**
-   [LArSoft v05_13_00 Release Notes](#LArSoft-v05_13_00-Release-Notes)
    -   [Purpose](#Purpose)
    -   [New features](#New-features)
    -   [Breaking Changes](#Breaking-Changes)
    -   [Bug fixes](#Bug-fixes)
    -   [Updated dependencies](#Updated-dependencies)
-   [Change List](#Change-List)
    -   [larsoft v05_13_00](#larsoft-v05_13_00)
    -   [lareventdisplay v05_07_02](#lareventdisplay-v05_07_02)
    -   [larexamples v05_07_00](#larexamples-v05_07_00)
    -   [larpandora v05_09_07](#larpandora-v05_09_07)
    -   [larana v05_09_04](#larana-v05_09_04)
    -   [larreco v05_12_02](#larreco-v05_12_02)
    -   [larsim v05_13_00](#larsim-v05_13_00)
    -   [larevt v05_07_02](#larevt-v05_07_02)
    -   [lardata v05_09_00](#lardata-v05_09_00)
    -   [larcore v05_08_00](#larcore-v05_08_00)
    -   [larbatch v01_22_01](#larbatch-v01_22_01)
    -   [larutils v1_06_03](#larutils-v1_06_03)

[list of LArSoft releases](LArSoft_release_list)
[Download instructions](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v05_13_00/larsoft-v05_13_00.html)

Purpose
--------------------

-   Changes to develop since v05_12_01
-   Integrate new examples and an update to the test infrastructure

New features
------------------------------

-   feature/gp_TestInfrastructure
    -   larcore lardata larana larsoft
    -   There is also a branch for argoneutcode dunetpc lariatsoft uboonecode
-   feature/gp_ServiceExample
    -   larexamples
    -   new example file in larsoft_data

Breaking Changes
--------------------------------------

-   [update the test infrastructure](Breaking_Changes#Moved-test-utility-headers-and-libraries)

Bug fixes
------------------------

Updated dependencies
----------------------------------------------

||
|Product|Version|Qualifiers|Notes|
|larpandoracontent|v02_07_04|e9:r5||
|larsoft_data|v1_00_00|||

Change List
============================

larsoft v05_13_00
------------------------------------------

-   2016-06-15 Lynn Garren : larsoft v05_13_00 for larsoft v05_13_00
-   2016-06-15 Lynn Garren : update product versions
-   2016-06-15 Lynn Garren : update dependency database
-   2016-06-10 Gianluca Petrillo : Merge remote-tracking branch ‘origin/develop’ into feature/gp_TestInfrastructure
-   2016-05-20 Gianluca Petrillo : Update script for tests using geometry-aware tester environment

lareventdisplay v05_07_02
----------------------------------------------------------

-   2016-06-15 Lynn Garren : lareventdisplay v05_07_02 for larsoft v05_13_00

larexamples v05_07_00
--------------------------------------------------

-   2016-06-16 Lynn Garren : add missing libraries to the link list
-   2016-06-16 Lynn Garren : the proper way to include a local test header
-   2016-06-15 Lynn Garren : larexamples v05_07_00 for larsoft v05_13_00
-   2016-06-14 Gianluca Petrillo : Minor additions to RemoveIsolatedSpacePoints documentation
-   2016-06-12 Gianluca Petrillo : Fixed bug in isolation algorithm stress test
-   2016-06-10 Gianluca Petrillo : Merge remote-tracking branch ‘origin/develop’ into feature/gp_ServiceExample
-   2016-06-07 Gianluca Petrillo : Algorithm/module example: RemoveIsolatedPoints
-   2016-06-07 Gianluca Petrillo : Changing the include guard style
-   2016-06-07 Gianluca Petrillo : Added reference to art workbook
-   2016-05-27 Gianluca Petrillo : Fixed some editor weirdness
-   2016-05-20 Gianluca Petrillo : ShowerCalibrationGalore example: reviewed documentation, changed details
-   2016-05-11 Gianluca Petrillo : Added new example: ShowerCalibrationGalore
-   2016-05-05 Gianluca Petrillo : Merge remote-tracking branch ‘origin/develop’ into feature/gp_ServiceExample
-   2016-05-03 Gianluca Petrillo : Merge remote-tracking branch ‘origin/develop’ into feature/gp_ServiceExample
-   2016-04-21 Hamlet : Merge remote-tracking branch ‘origin/develop’ into feature/gp_ServiceExample
-   2016-04-21 Hamlet : Removed a temporary editor file that slipped in.
-   2016-04-20 Hamlet : Added “AtomicNumber” service: a simple, single implementation service.
-   2016-04-19 Hamlet : Merge remote-tracking branch ‘origin/develop’ into feature/gp_ServiceExample
-   2016-04-13 Gianluca Petrillo : Service example stub

larpandora v05_09_07
------------------------------------------------

-   2016-06-15 Lynn Garren : larpandora v05_09_07 for larsoft v05_13_00

larana v05_09_04
----------------------------------------

-   2016-06-15 Lynn Garren : larana v05_09_04 for larsoft v05_13_00
-   2016-06-14 Gianluca Petrillo : Update after modification to the unit test infrastructure

larreco v05_12_02
------------------------------------------

-   2016-06-15 Lynn Garren : larreco v05_12_02 for larsoft v05_13_00
-   2016-06-12 Tingjun Yang : Move dune cluster configurations to dunetpc.

larsim v05_13_00
----------------------------------------

-   2016-06-15 Lynn Garren : larsim v05_13_00 for larsoft v05_13_00
-   2016-06-15 Jeremy H : A couple of updates to GENIE nucleon decay parser module – Jeremy Hewes
-   2016-06-13 Jeremy H : Temporarily restoring previous version of NDKGen_module.cc pending further merges – Jeremy Hewes
-   2016-06-13 Jeremy H : Bugfix: committing changes which restore previously defunct GENIE parser module NDKGen_module.cc – J. Hewes
-   2016-06-13 Kevin Wood : Generalized vertex assignment in NDKGen_module.cc for geometries with any number of TPCs (still assumes single cryostat)
-   2016-06-12 Kevin Wood : Made vertex assignment uniformly distributed

larevt v05_07_02
----------------------------------------

-   2016-06-15 Lynn Garren : larevt v05_07_02 for larsoft v05_13_00

lardata v05_09_00
------------------------------------------

-   2016-06-15 Lynn Garren : lardata v05_09_00 for larsoft v05_13_00
-   2016-06-15 Gianluca Petrillo : Fixed capitalization problem
-   2016-06-14 Gianluca Petrillo : Forgot to compile a test executable…
-   2016-06-10 Gianluca Petrillo : Update to LArSoft 5.12.1
-   2016-05-20 Gianluca Petrillo : Added unit tests for detector info providers.
-   2016-05-06 Gianluca Petrillo : Moved testing utilities to larcore/TestUtils
-   2016-05-05 Gianluca Petrillo : Merge remote-tracking branch ‘origin/develop’ into feature/gp_TestInfrastructure
-   2016-05-03 Gianluca Petrillo : Merge remote-tracking branch ‘origin/develop’ into feature/gp_TestInfrastructure
-   2016-04-20 Hamlet : Update after test header move

larcore v05_08_00
------------------------------------------

-   2016-06-15 Lynn Garren : larcore v05_08_00 for larsoft v05_13_00
-   2016-06-10 Gianluca Petrillo : Merge remote-tracking branch ‘origin/develop’ into feature/gp_TestInfrastructure
-   2016-06-10 Gianluca Petrillo : Added method to extend BoundedBoxGeo objects
-   2016-04-19 Hamlet : Fixed typo
-   2016-05-20 Gianluca Petrillo : Test infrastructure revised.
-   2016-05-05 Gianluca Petrillo : Test infrastructure revamp.
-   2016-04-19 Hamlet : Moved generic unit test infrastructure from test/Geometry into larcore/TestUtils
-   2016-04-19 Hamlet : Fixed typo

larbatch v01_22_01
--------------------------------------------

-   2016-06-15 Lynn Garren : larbatch v01_22_01 for larsoft v05_13_00
-   2016-06-09 Herbert Greenlee : Fix wrong argument in exception.

larutils v1_06_03
------------------------------------------
