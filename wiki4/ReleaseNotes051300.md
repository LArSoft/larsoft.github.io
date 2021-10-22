LArSoft v05\_13\_00 Release Notes[¶](#LArSoft-v05_13_00-Release-Notes)
======================================================================

-   **Table of contents**
-   [LArSoft v05\_13\_00 Release Notes](#LArSoft-v05_13_00-Release-Notes)
    -   [Purpose](#Purpose)
    -   [New features](#New-features)
    -   [Breaking Changes](#Breaking-Changes)
    -   [Bug fixes](#Bug-fixes)
    -   [Updated dependencies](#Updated-dependencies)
-   [Change List](#Change-List)
    -   [larsoft v05\_13\_00](#larsoft-v05_13_00)
    -   [lareventdisplay v05\_07\_02](#lareventdisplay-v05_07_02)
    -   [larexamples v05\_07\_00](#larexamples-v05_07_00)
    -   [larpandora v05\_09\_07](#larpandora-v05_09_07)
    -   [larana v05\_09\_04](#larana-v05_09_04)
    -   [larreco v05\_12\_02](#larreco-v05_12_02)
    -   [larsim v05\_13\_00](#larsim-v05_13_00)
    -   [larevt v05\_07\_02](#larevt-v05_07_02)
    -   [lardata v05\_09\_00](#lardata-v05_09_00)
    -   [larcore v05\_08\_00](#larcore-v05_08_00)
    -   [larbatch v01\_22\_01](#larbatch-v01_22_01)
    -   [larutils v1\_06\_03](#larutils-v1_06_03)

[list of LArSoft releases](LArSoft_release_list)\
[Download instructions](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v05_13_00/larsoft-v05_13_00.html)


Purpose[¶](#Purpose)
--------------------

-   Changes to develop since v05\_12\_01
-   Integrate new examples and an update to the test infrastructure


New features[¶](#New-features)
------------------------------

-   feature/gp\_TestInfrastructure
    -   larcore lardata larana larsoft
    -   There is also a branch for argoneutcode dunetpc lariatsoft uboonecode
-   feature/gp\_ServiceExample
    -   larexamples
    -   new example file in larsoft\_data


Breaking Changes[¶](#Breaking-Changes)
--------------------------------------

-   [update the test infrastructure](Breaking_Changes#Moved-test-utility-headers-and-libraries)


Bug fixes[¶](#Bug-fixes)
------------------------


Updated dependencies[¶](#Updated-dependencies)
----------------------------------------------

  ------------------- ------------- ------------ -------
  Product             Version       Qualifiers   Notes
  larpandoracontent   v02\_07\_04   e9:r5        
  larsoft\_data       v1\_00\_00                 
  ------------------- ------------- ------------ -------


Change List[¶](#Change-List)
============================


larsoft v05\_13\_00[¶](#larsoft-v05_13_00)
------------------------------------------

-   2016-06-15 Lynn Garren : larsoft v05\_13\_00 for larsoft v05\_13\_00
-   2016-06-15 Lynn Garren : update product versions
-   2016-06-15 Lynn Garren : update dependency database
-   2016-06-10 Gianluca Petrillo : Merge remote-tracking branch ‘origin/develop’ into feature/gp\_TestInfrastructure
-   2016-05-20 Gianluca Petrillo : Update script for tests using geometry-aware tester environment


lareventdisplay v05\_07\_02[¶](#lareventdisplay-v05_07_02)
----------------------------------------------------------

-   2016-06-15 Lynn Garren : lareventdisplay v05\_07\_02 for larsoft v05\_13\_00


larexamples v05\_07\_00[¶](#larexamples-v05_07_00)
--------------------------------------------------

-   2016-06-16 Lynn Garren : add missing libraries to the link list
-   2016-06-16 Lynn Garren : the proper way to include a local test header
-   2016-06-15 Lynn Garren : larexamples v05\_07\_00 for larsoft v05\_13\_00
-   2016-06-14 Gianluca Petrillo : Minor additions to RemoveIsolatedSpacePoints documentation
-   2016-06-12 Gianluca Petrillo : Fixed bug in isolation algorithm stress test
-   2016-06-10 Gianluca Petrillo : Merge remote-tracking branch ‘origin/develop’ into feature/gp\_ServiceExample
-   2016-06-07 Gianluca Petrillo : Algorithm/module example: RemoveIsolatedPoints
-   2016-06-07 Gianluca Petrillo : Changing the include guard style
-   2016-06-07 Gianluca Petrillo : Added reference to art workbook
-   2016-05-27 Gianluca Petrillo : Fixed some editor weirdness
-   2016-05-20 Gianluca Petrillo : ShowerCalibrationGalore example: reviewed documentation, changed details
-   2016-05-11 Gianluca Petrillo : Added new example: ShowerCalibrationGalore
-   2016-05-05 Gianluca Petrillo : Merge remote-tracking branch ‘origin/develop’ into feature/gp\_ServiceExample
-   2016-05-03 Gianluca Petrillo : Merge remote-tracking branch ‘origin/develop’ into feature/gp\_ServiceExample
-   2016-04-21 Hamlet : Merge remote-tracking branch ‘origin/develop’ into feature/gp\_ServiceExample
-   2016-04-21 Hamlet : Removed a temporary editor file that slipped in.
-   2016-04-20 Hamlet : Added “AtomicNumber” service: a simple, single implementation service.
-   2016-04-19 Hamlet : Merge remote-tracking branch ‘origin/develop’ into feature/gp\_ServiceExample
-   2016-04-13 Gianluca Petrillo : Service example stub


larpandora v05\_09\_07[¶](#larpandora-v05_09_07)
------------------------------------------------

-   2016-06-15 Lynn Garren : larpandora v05\_09\_07 for larsoft v05\_13\_00


larana v05\_09\_04[¶](#larana-v05_09_04)
----------------------------------------

-   2016-06-15 Lynn Garren : larana v05\_09\_04 for larsoft v05\_13\_00
-   2016-06-14 Gianluca Petrillo : Update after modification to the unit test infrastructure


larreco v05\_12\_02[¶](#larreco-v05_12_02)
------------------------------------------

-   2016-06-15 Lynn Garren : larreco v05\_12\_02 for larsoft v05\_13\_00
-   2016-06-12 Tingjun Yang : Move dune cluster configurations to dunetpc.


larsim v05\_13\_00[¶](#larsim-v05_13_00)
----------------------------------------

-   2016-06-15 Lynn Garren : larsim v05\_13\_00 for larsoft v05\_13\_00
-   2016-06-15 Jeremy H : A couple of updates to GENIE nucleon decay parser module – Jeremy Hewes
-   2016-06-13 Jeremy H : Temporarily restoring previous version of NDKGen\_module.cc pending further merges – Jeremy Hewes
-   2016-06-13 Jeremy H : Bugfix: committing changes which restore previously defunct GENIE parser module NDKGen\_module.cc – J. Hewes
-   2016-06-13 Kevin Wood : Generalized vertex assignment in NDKGen\_module.cc for geometries with any number of TPCs (still assumes single cryostat)
-   2016-06-12 Kevin Wood : Made vertex assignment uniformly distributed


larevt v05\_07\_02[¶](#larevt-v05_07_02)
----------------------------------------

-   2016-06-15 Lynn Garren : larevt v05\_07\_02 for larsoft v05\_13\_00


lardata v05\_09\_00[¶](#lardata-v05_09_00)
------------------------------------------

-   2016-06-15 Lynn Garren : lardata v05\_09\_00 for larsoft v05\_13\_00
-   2016-06-15 Gianluca Petrillo : Fixed capitalization problem
-   2016-06-14 Gianluca Petrillo : Forgot to compile a test executable…
-   2016-06-10 Gianluca Petrillo : Update to LArSoft 5.12.1
-   2016-05-20 Gianluca Petrillo : Added unit tests for detector info providers.
-   2016-05-06 Gianluca Petrillo : Moved testing utilities to larcore/TestUtils
-   2016-05-05 Gianluca Petrillo : Merge remote-tracking branch ‘origin/develop’ into feature/gp\_TestInfrastructure
-   2016-05-03 Gianluca Petrillo : Merge remote-tracking branch ‘origin/develop’ into feature/gp\_TestInfrastructure
-   2016-04-20 Hamlet : Update after test header move


larcore v05\_08\_00[¶](#larcore-v05_08_00)
------------------------------------------

-   2016-06-15 Lynn Garren : larcore v05\_08\_00 for larsoft v05\_13\_00
-   2016-06-10 Gianluca Petrillo : Merge remote-tracking branch ‘origin/develop’ into feature/gp\_TestInfrastructure
-   2016-06-10 Gianluca Petrillo : Added method to extend BoundedBoxGeo objects
-   2016-04-19 Hamlet : Fixed typo
-   2016-05-20 Gianluca Petrillo : Test infrastructure revised.
-   2016-05-05 Gianluca Petrillo : Test infrastructure revamp.
-   2016-04-19 Hamlet : Moved generic unit test infrastructure from test/Geometry into larcore/TestUtils
-   2016-04-19 Hamlet : Fixed typo


larbatch v01\_22\_01[¶](#larbatch-v01_22_01)
--------------------------------------------

-   2016-06-15 Lynn Garren : larbatch v01\_22\_01 for larsoft v05\_13\_00
-   2016-06-09 Herbert Greenlee : Fix wrong argument in exception.


larutils v1\_06\_03[¶](#larutils-v1_06_03)
------------------------------------------
