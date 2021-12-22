LArSoft v09\_12\_00 Release Notes(#LArSoft-v09_12_00-Release-Notes)
======================================================================

-   **Table of contents**
-   [LArSoft v09\_12\_00 Release Notes](#LArSoft-v09_12_00-Release-Notes)
    -   [Purpose](#Purpose)
    -   [Breaking Change](#Breaking-Change)
    -   [Bug fixes](#Bug-fixes)
    -   [Updated dependencies](#Updated-dependencies)
-   [Change List](#Change-List)
    -   [larsoft v09\_12\_00](#larsoft-v09_12_00)
    -   [lareventdisplay v09\_00\_17](#lareventdisplay-v09_00_17)
    -   [larexamples v09\_00\_16](#larexamples-v09_00_16)
    -   [larpandora v09\_03\_08](#larpandora-v09_03_08)
    -   [larsimrad v09\_00\_16](#larsimrad-v09_00_16)
    -   [larrecodnn v09\_02\_08](#larrecodnn-v09_02_08)
    -   [larwirecell v09\_01\_10](#larwirecell-v09_01_10)
    -   [larana v09\_00\_17](#larana-v09_00_17)
    -   [larreco v09\_04\_07](#larreco-v09_04_07)
    -   [larsim v09\_07\_04](#larsim-v09_07_04)
    -   [larg4 v09\_02\_01](#larg4-v09_02_01)
    -   [larevt v09\_01\_04](#larevt-v09_01_04)
    -   [lardata v09\_01\_07](#lardata-v09_01_07)
    -   [larcore v09\_01\_00](#larcore-v09_01_00)
    -   [larpandoracontent v03\_22\_03](#larpandoracontent-v03_22_03)
    -   [larsoftobj v09\_04\_00](#larsoftobj-v09_04_00)
    -   [lardataobj v09\_00\_06](#lardataobj-v09_00_06)
    -   [lardataalg v09\_03\_04](#lardataalg-v09_03_04)
    -   [larcorealg v09\_00\_02](#larcorealg-v09_00_02)
    -   [larcoreobj v09\_01\_00](#larcoreobj-v09_01_00)
    -   [webevd v09\_01\_01](#webevd-v09_01_01)
    -   [larbatch v01\_54\_01](#larbatch-v01_54_01)
    -   [larutils v1\_27\_03](#larutils-v1_27_03)

[list of LArSoft releases](LArSoft_release_list)\
Download instructions for [larsoft v09\_12\_00](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v09_12_00/larsoft-v09_12_00.html)\
Download instructions for [just larsoftobj v09\_04\_00](http://scisoft.fnal.gov/scisoft/bundles/larsoftobj/v09_04_00/larsoftobj-v09_04_00.html)

Purpose(#Purpose)
--------------------

-   changes in develop
-   approved PRs

Breaking Change(#Breaking-Change)
------------------------------------

Most changes in this release are related to the resolution for [\#24328](/redmine/issues/24328 "Bug: Fix Geometry service feature reloading the geometry at begin of run (Closed)")\
**This is a [breaking change](Breaking_Changes#Geometry-configuration-check). The branch feature/gp\_issue24328 is provided for experiment code.**\
The complete write up is [here](Geometry_configuration_check_breaking_change_documentation)

-   larcoreobj PR 9
-   larcorealg PR 12
-   lardataalg PR 18
-   larcore PR 6
-   lardata PR 12
-   larevt PR 10
-   larsim PR 56
-   larreco PR 24
-   larexamples PR 5
-   lareventdisplay PR 10

feature/gp\_issue24328 available for

-   ArgoNeuT: argoneutcode
-   DUNE: dunetpc
-   ICARUS: sbncode, icarusalg, icaruscode
-   SBND: sbncode, sbndcode
-   MicroBooNE: uboonecode, ubana, ubcrt, ubcv, ubevt, ublite, ubraw, ubreco, ubsim

Bug fixes(#Bug-fixes)
------------------------

-   lardataalg PR 19
    -   Fix OpDetWavedform dumper console output
    -   The ADC count range printout was wrong, it’s now fixed.

Updated dependencies(#Updated-dependencies)
----------------------------------------------

Change List(#Change-List)
============================

larsoft v09\_12\_00(#larsoft-v09_12_00)
------------------------------------------

-   2021-01-07 Lynn Garren : larsoft v09\_12\_00 for larsoft v09\_12\_00
-   2021-01-07 Lynn Garren : product versions

lareventdisplay v09\_00\_17(#lareventdisplay-v09_00_17)
----------------------------------------------------------

-   2021-01-07 Lynn Garren : lareventdisplay v09\_00\_17 for larsoft v09\_12\_00
-   2021-01-06 Lynn Garren : Merge branch ‘feature/gp\_issue24328’ into release/v09\_12\_00
-   2020-12-15 Gianluca Petrillo : Merge remote-tracking branch ‘upstream/develop’ into feature/gp\_issue24328
-   2020-12-14 Gianluca Petrillo : Configuration updates related to issue [\#24328](/redmine/issues/24328 "Bug: Fix Geometry service feature reloading the geometry at begin of run (Closed)")

larexamples v09\_00\_16(#larexamples-v09_00_16)
--------------------------------------------------

-   2021-01-07 Lynn Garren : larexamples v09\_00\_16 for larsoft v09\_12\_00
-   2021-01-06 Lynn Garren : Merge branch ‘feature/gp\_issue24328’ into release/v09\_12\_00
-   2020-12-15 Gianluca Petrillo : Merge remote-tracking branch ‘upstream/develop’ into feature/gp\_issue24328
-   2020-12-07 Gianluca Petrillo : Configuration updates related to issue [\#24328](/redmine/issues/24328 "Bug: Fix Geometry service feature reloading the geometry at begin of run (Closed)")

larpandora v09\_03\_08(#larpandora-v09_03_08)
------------------------------------------------

-   2021-01-07 Lynn Garren : larpandora v09\_03\_08 for larsoft v09\_12\_00

larsimrad v09\_00\_16(#larsimrad-v09_00_16)
----------------------------------------------

-   2021-01-07 Lynn Garren : larsimrad v09\_00\_16 for larsoft v09\_12\_00

larrecodnn v09\_02\_08(#larrecodnn-v09_02_08)
------------------------------------------------

-   2021-01-07 Lynn Garren : larrecodnn v09\_02\_08 for larsoft v09\_12\_00

larwirecell v09\_01\_10(#larwirecell-v09_01_10)
--------------------------------------------------

-   2021-01-07 Lynn Garren : larwirecell v09\_01\_10 for larsoft v09\_12\_00

larana v09\_00\_17(#larana-v09_00_17)
----------------------------------------

-   2021-01-07 Lynn Garren : larana v09\_00\_17 for larsoft v09\_12\_00

larreco v09\_04\_07(#larreco-v09_04_07)
------------------------------------------

-   2021-01-07 Lynn Garren : larreco v09\_04\_07 for larsoft v09\_12\_00
-   2021-01-06 Lynn Garren : Merge branch ‘feature/gp\_issue24328’ into release/v09\_12\_00
-   2020-12-15 Gianluca Petrillo : Merge remote-tracking branch ‘upstream/develop’ into feature/gp\_issue24328
-   2020-12-07 Gianluca Petrillo : Configuration updates related to issue [\#24328](/redmine/issues/24328 "Bug: Fix Geometry service feature reloading the geometry at begin of run (Closed)")

larsim v09\_07\_04(#larsim-v09_07_04)
----------------------------------------

-   2021-01-07 Lynn Garren : larsim v09\_07\_04 for larsoft v09\_12\_00
-   2021-01-06 Lynn Garren : Merge branch ‘feature/gp\_issue24328’ into release/v09\_12\_00
-   2020-12-15 Gianluca Petrillo : Merge remote-tracking branch ‘upstream/develop’ into feature/gp\_issue24328
-   2020-12-07 Gianluca Petrillo : Configuration updates related to issue [\#24328](/redmine/issues/24328 "Bug: Fix Geometry service feature reloading the geometry at begin of run (Closed)")

larg4 v09\_02\_01(#larg4-v09_02_01)
--------------------------------------

-   2021-01-07 Lynn Garren : larg4 v09\_02\_01 for larsoft v09\_12\_00

larevt v09\_01\_04(#larevt-v09_01_04)
----------------------------------------

-   2021-01-07 Lynn Garren : larevt v09\_01\_04 for larsoft v09\_12\_00
-   2021-01-06 Lynn Garren : Merge branch ‘feature/gp\_issue24328’ into release/v09\_12\_00
-   2020-12-15 Gianluca Petrillo : Merge remote-tracking branch ‘upstream/develop’ into feature/gp\_issue24328
-   2020-12-07 Gianluca Petrillo : Configuration updates related to issue [\#24328](/redmine/issues/24328 "Bug: Fix Geometry service feature reloading the geometry at begin of run (Closed)")

lardata v09\_01\_07(#lardata-v09_01_07)
------------------------------------------

-   2021-01-07 Lynn Garren : lardata v09\_01\_07 for larsoft v09\_12\_00
-   2021-01-06 Lynn Garren : Merge branch ‘feature/gp\_issue24328’ into release/v09\_12\_00
-   2020-12-15 Gianluca Petrillo : Merge remote-tracking branch ‘upstream/develop’ into feature/gp\_issue24328
-   2020-12-14 Gianluca Petrillo : More configuration updates related to issue [\#24328](/redmine/issues/24328 "Bug: Fix Geometry service feature reloading the geometry at begin of run (Closed)")
-   2020-12-07 Gianluca Petrillo : Configuration updates related to issue [\#24328](/redmine/issues/24328 "Bug: Fix Geometry service feature reloading the geometry at begin of run (Closed)")

larcore v09\_01\_00(#larcore-v09_01_00)
------------------------------------------

-   2021-01-07 Lynn Garren : larcore v09\_01\_00 for larsoft v09\_12\_00
-   2020-12-07 Gianluca Petrillo : Configuration updates related to issue [\#24328](/redmine/issues/24328 "Bug: Fix Geometry service feature reloading the geometry at begin of run (Closed)")
-   2020-12-07 Gianluca Petrillo : Fix to unit test.
-   2020-11-23 Gianluca Petrillo : Merge remote-tracking branch ‘upstream/develop’ into feature/gp\_issue24328
-   2020-11-23 Gianluca Petrillo : Adopted some suggestions from review.
-   2020-11-23 Gianluca Petrillo : Geometry information from legacy RunData has its own version now
-   2020-11-23 Gianluca Petrillo : Fixed some typos and an unnecessary header inclusion.
-   2020-11-12 Gianluca Petrillo : Added geometry check unit test.
-   2020-11-12 Gianluca Petrillo : Added unit tests for geometry version check.
-   2020-10-08 Gianluca Petrillo : Alternative implementation of GeometryConfigurationWriter.
-   2020-10-07 Gianluca Petrillo : Replaced geometry reload on new run with configuration compatibility check.

larpandoracontent v03\_22\_03(#larpandoracontent-v03_22_03)
--------------------------------------------------------------

larsoftobj v09\_04\_00(#larsoftobj-v09_04_00)
------------------------------------------------

-   2021-01-07 Lynn Garren : larsoftobj v09\_04\_00 for larsoft v09\_12\_00
-   2021-01-07 Lynn Garren : product versions

lardataobj v09\_00\_06(#lardataobj-v09_00_06)
------------------------------------------------

-   2021-01-07 Lynn Garren : lardataobj v09\_00\_06 for larsoft v09\_12\_00

lardataalg v09\_03\_04(#lardataalg-v09_03_04)
------------------------------------------------

-   2021-01-07 Lynn Garren : lardataalg v09\_03\_04 for larsoft v09\_12\_00
-   2021-01-06 Lynn Garren : Merge branch ‘feature/gp\_issue24328’ into release/v09\_12\_00
-   2020-12-17 Lynn Garren : Merge pull request \#19 from PetrilloAtWork/feature/gp\_OpDetWaveformDumperOutput
-   2020-12-17 Gianluca Petrillo : Fix OpDetWavedform dumper console output.
-   2020-10-15 Gianluca Petrillo : Standardized DetectorClocksStandardTriggerLoader.h include guard
-   2020-12-15 Gianluca Petrillo : Merge remote-tracking branch ‘upstream/develop’ into feature/gp\_issue24328
-   2020-12-07 Gianluca Petrillo : Configuration updates related to issue [\#24328](/redmine/issues/24328 "Bug: Fix Geometry service feature reloading the geometry at begin of run (Closed)")

larcorealg v09\_00\_02(#larcorealg-v09_00_02)
------------------------------------------------

-   2021-01-07 Lynn Garren : larcorealg v09\_00\_02 for larsoft v09\_12\_00
-   2020-11-23 Gianluca Petrillo : Merge remote-tracking branch ‘upstream/develop’ into feature/gp\_issue24328
-   2020-11-12 Gianluca Petrillo : Update for issue [\#24328](/redmine/issues/24328 "Bug: Fix Geometry service feature reloading the geometry at begin of run (Closed)") breaking change

larcoreobj v09\_01\_00(#larcoreobj-v09_01_00)
------------------------------------------------

-   2021-01-07 Lynn Garren : larcoreobj v09\_01\_00 for larsoft v09\_12\_00
-   2021-01-07 Lynn Garren : GeometryConfigurationInfo is declared as a struct
-   2020-11-23 Gianluca Petrillo : Added support for version 1 of geo::GeometryConfigurationInfo.
-   2020-11-23 Gianluca Petrillo : Added \`noexcept\` specifier.
-   2020-10-07 Gianluca Petrillo : Added data product with geometry information for configuration checks.

webevd v09\_01\_01(#webevd-v09_01_01)
----------------------------------------

-   2021-01-07 Lynn Garren : webevd v09\_01\_01 for larsoft v09\_12\_00

larbatch v01\_54\_01(#larbatch-v01_54_01)
--------------------------------------------

larutils v1\_27\_03(#larutils-v1_27_03)
------------------------------------------
