LArSoft v06\_79\_00 Release Notes(#LArSoft-v06_79_00-Release-Notes)
======================================================================

-   **Table of contents**
-   [LArSoft v06\_79\_00 Release Notes](#LArSoft-v06_79_00-Release-Notes)
    -   [Purpose](#Purpose)
    -   [New features](#New-features)
    -   [Bug fixes](#Bug-fixes)
    -   [Updated dependencies](#Updated-dependencies)
-   [Change List](#Change-List)
    -   [larsoft v06\_79\_00](#larsoft-v06_79_00)
    -   [lareventdisplay v06\_19\_08](#lareventdisplay-v06_19_08)
    -   [larexamples v06\_13\_07](#larexamples-v06_13_07)
    -   [larpandora v06\_27\_02](#larpandora-v06_27_02)
    -   [larwirecell v06\_13\_02](#larwirecell-v06_13_02)
    -   [larana v06\_19\_08](#larana-v06_19_08)
    -   [larreco v06\_60\_05](#larreco-v06_60_05)
    -   [larsim v06\_49\_00](#larsim-v06_49_00)
    -   [larevt v06\_20\_07](#larevt-v06_20_07)
    -   [lardata v06\_45\_01](#lardata-v06_45_01)
    -   [larcore v06\_19\_04](#larcore-v06_19_04)
    -   [larpandoracontent v03\_12\_00](#larpandoracontent-v03_12_00)
    -   [larsoftobj v1\_46\_00](#larsoftobj-v1_46_00)
    -   [lardataobj v1\_32\_02](#lardataobj-v1_32_02)
    -   [lardataalg v1\_00\_01](#lardataalg-v1_00_01)
    -   [larcorealg v1\_22\_00](#larcorealg-v1_22_00)
    -   [larcoreobj v1\_23\_00](#larcoreobj-v1_23_00)
    -   [larbatch v01\_40\_00](#larbatch-v01_40_00)
    -   [larutils v1\_22\_06](#larutils-v1_22_06)

[list of LArSoft releases](LArSoft_release_list)\
Download instructions for [larsoft v06\_79\_00](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v06_79_00/larsoft-v06_79_00.html)\
Download instructions for [just larsoftobj v1\_46\_00](http://scisoft.fnal.gov/scisoft/bundles/larsoftobj/v1_46_00/larsoftobj-v1_46_00.html)

Purpose(#Purpose)
--------------------

-   approved feature branches
-   changes in develop

New features(#New-features)
------------------------------

-   feature/russo\_ticket\_18137
    -   larana, larcorealg, larreco, lardata
    -   dunetpc, lariatsoft
    -   resolves [\#18137](/redmine/issues/18137 "Necessary Maintenance: The method geo::GeometryCore::WirePitch() with two wires as argument should be removed (Closed)")
-   feature/gp\_OpticalDocumentation of larsim
    -   updated documentation

Bug fixes(#Bug-fixes)
------------------------

-   larsim feature/jsoto\_dphasefix
    -   bug fix for a seqfault

Updated dependencies(#Updated-dependencies)
----------------------------------------------

Change List(#Change-List)
============================

larsoft v06\_79\_00(#larsoft-v06_79_00)
------------------------------------------

-   2018-05-30 Lynn Garren : larsoft v06\_79\_00 for larsoft v06\_79\_00
-   2018-05-30 Lynn Garren : ignore more
-   2018-05-30 Lynn Garren : update versions
-   2018-05-29 Lynn Garren : update dependency database

lareventdisplay v06\_19\_08(#lareventdisplay-v06_19_08)
----------------------------------------------------------

-   2018-05-30 Lynn Garren : lareventdisplay v06\_19\_08 for larsoft v06\_79\_00
-   2018-05-29 Lynn Garren : ignore more

larexamples v06\_13\_07(#larexamples-v06_13_07)
--------------------------------------------------

-   2018-05-30 Lynn Garren : larexamples v06\_13\_07 for larsoft v06\_79\_00
-   2018-05-29 Lynn Garren : ignore more

larpandora v06\_27\_02(#larpandora-v06_27_02)
------------------------------------------------

-   2018-05-30 Lynn Garren : larpandora v06\_27\_02 for larsoft v06\_79\_00
-   2018-05-29 Lynn Garren : ignore some files

larwirecell v06\_13\_02(#larwirecell-v06_13_02)
--------------------------------------------------

-   2018-05-30 Lynn Garren : larwirecell v06\_13\_02 for larsoft v06\_79\_00
-   2018-05-29 Lynn Garren : ignore more

larana v06\_19\_08(#larana-v06_19_08)
----------------------------------------

-   2018-05-30 Lynn Garren : larana v06\_19\_08 for larsoft v06\_79\_00
-   2018-05-30 Lynn Garren : Merge branch ‘feature/russo\_ticket\_18137’ into release/v06\_79\_00
-   2018-05-29 Lynn Garren : ignore more
-   2018-05-22 Paul Russo : Remove wire arguments from geo::GeometryCore::WirePitch().

larreco v06\_60\_05(#larreco-v06_60_05)
------------------------------------------

-   2018-05-30 Lynn Garren : larreco v06\_60\_05 for larsoft v06\_79\_00
-   2018-05-30 Lynn Garren : Merge branch ‘feature/russo\_ticket\_18137’ into release/v06\_79\_00
-   2018-05-29 Lynn Garren : ignore more
-   2018-05-29 Paul Russo : More remove wire arguments from geo::GeometryCore::WirePitch().
-   2018-05-22 Paul Russo : Remove wire arguments from geo::GeometryCore::WirePitch().

larsim v06\_49\_00(#larsim-v06_49_00)
----------------------------------------

-   2018-05-30 Lynn Garren : larsim v06\_49\_00 for larsoft v06\_79\_00
-   2018-05-30 Lynn Garren : Merge branch ‘feature/jsoto\_dphasefix’ into release/v06\_79\_00
-   2018-05-30 Lynn Garren : Merge branch ‘feature/gp\_OpticalDocumentation’ into release/v06\_79\_00
-   2018-05-29 Gianluca Petrillo : Fixed code alignment, tabs converted into spaces
-   2018-05-29 Gianluca Petrillo : Added some optical simulation documentation.
-   2018-05-29 Gianluca Petrillo : Provided dump\_mctruth.fcl now supports dumping generators other than GENIE.
-   2018-05-29 Lynn Garren : ignore more
-   2018-05-29 Jose Soto : Fix of bug when using interpolation and extended photon libraries in dual phase geometry.

larevt v06\_20\_07(#larevt-v06_20_07)
----------------------------------------

-   2018-05-30 Lynn Garren : larevt v06\_20\_07 for larsoft v06\_79\_00
-   2018-05-29 Lynn Garren : ignore some files

lardata v06\_45\_01(#lardata-v06_45_01)
------------------------------------------

-   2018-05-30 Lynn Garren : lardata v06\_45\_01 for larsoft v06\_79\_00
-   2018-05-30 Lynn Garren : Merge branch ‘feature/russo\_ticket\_18137’ into release/v06\_79\_00
-   2018-05-29 Lynn Garren : ignore some files
-   2018-05-29 Paul Russo : More remove wire arguments from geo::GeometryCore::WirePitch().

larcore v06\_19\_04(#larcore-v06_19_04)
------------------------------------------

-   2018-05-30 Lynn Garren : larcore v06\_19\_04 for larsoft v06\_79\_00
-   2018-05-29 Lynn Garren : ignore some files

larpandoracontent v03\_12\_00(#larpandoracontent-v03_12_00)
--------------------------------------------------------------

larsoftobj v1\_46\_00(#larsoftobj-v1_46_00)
----------------------------------------------

-   2018-05-30 Lynn Garren : larsoftobj v1\_46\_00 for larsoft v06\_79\_00
-   2018-05-30 Lynn Garren : ignore more
-   2018-05-30 Lynn Garren : update versions
-   2018-05-29 Lynn Garren : ignore some files

lardataobj v1\_32\_02(#lardataobj-v1_32_02)
----------------------------------------------

lardataalg v1\_00\_01(#lardataalg-v1_00_01)
----------------------------------------------

-   2018-05-30 Lynn Garren : lardataalg v1\_00\_01 for larsoft v06\_79\_00
-   2018-05-29 Lynn Garren : ignore some files

larcorealg v1\_22\_00(#larcorealg-v1_22_00)
----------------------------------------------

-   2018-05-30 Lynn Garren : larcorealg v1\_22\_00 for larsoft v06\_79\_00
-   2018-05-30 Lynn Garren : Merge branch ‘feature/russo\_ticket\_18137’ into release/v06\_79\_00
-   2018-05-29 Lynn Garren : ignore more
-   2018-05-29 Paul Russo : Remove wire arguments from geo::TPCGeo::WirePitch().
-   2018-05-22 Paul Russo : Remove wire arguments from geo::GeometryCore::WirePitch().

larcoreobj v1\_23\_00(#larcoreobj-v1_23_00)
----------------------------------------------

larbatch v01\_40\_00(#larbatch-v01_40_00)
--------------------------------------------

larutils v1\_22\_06(#larutils-v1_22_06)
------------------------------------------
