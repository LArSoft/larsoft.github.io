LArSoft v06_79_00 Release Notes
======================================================================

-   **Table of contents**
-   [LArSoft v06_79_00 Release Notes](#LArSoft-v06_79_00-Release-Notes)
    -   [Purpose](#Purpose)
    -   [New features](#New-features)
    -   [Bug fixes](#Bug-fixes)
    -   [Updated dependencies](#Updated-dependencies)
-   [Change List](#Change-List)
    -   [larsoft v06_79_00](#larsoft-v06_79_00)
    -   [lareventdisplay v06_19_08](#lareventdisplay-v06_19_08)
    -   [larexamples v06_13_07](#larexamples-v06_13_07)
    -   [larpandora v06_27_02](#larpandora-v06_27_02)
    -   [larwirecell v06_13_02](#larwirecell-v06_13_02)
    -   [larana v06_19_08](#larana-v06_19_08)
    -   [larreco v06_60_05](#larreco-v06_60_05)
    -   [larsim v06_49_00](#larsim-v06_49_00)
    -   [larevt v06_20_07](#larevt-v06_20_07)
    -   [lardata v06_45_01](#lardata-v06_45_01)
    -   [larcore v06_19_04](#larcore-v06_19_04)
    -   [larpandoracontent v03_12_00](#larpandoracontent-v03_12_00)
    -   [larsoftobj v1_46_00](#larsoftobj-v1_46_00)
    -   [lardataobj v1_32_02](#lardataobj-v1_32_02)
    -   [lardataalg v1_00_01](#lardataalg-v1_00_01)
    -   [larcorealg v1_22_00](#larcorealg-v1_22_00)
    -   [larcoreobj v1_23_00](#larcoreobj-v1_23_00)
    -   [larbatch v01_40_00](#larbatch-v01_40_00)
    -   [larutils v1_22_06](#larutils-v1_22_06)

[list of LArSoft releases](LArSoft_release_list)
Download instructions for [larsoft v06_79_00](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v06_79_00/larsoft-v06_79_00.html)
Download instructions for [just larsoftobj v1_46_00](http://scisoft.fnal.gov/scisoft/bundles/larsoftobj/v1_46_00/larsoftobj-v1_46_00.html)

Purpose
--------------------

-   approved feature branches
-   changes in develop

New features
------------------------------

-   feature/russo_ticket_18137
    -   larana, larcorealg, larreco, lardata
    -   dunetpc, lariatsoft
    -   resolves [redmine issue 18137](https://cdcvs.fnal.gov/redmine/issues/18137)
-   feature/gp_OpticalDocumentation of larsim
    -   updated documentation

Bug fixes
------------------------

-   larsim feature/jsoto_dphasefix
    -   bug fix for a seqfault

Updated dependencies
----------------------------------------------

Change List
============================

larsoft v06_79_00
------------------------------------------

-   2018-05-30 Lynn Garren : larsoft v06_79_00 for larsoft v06_79_00
-   2018-05-30 Lynn Garren : ignore more
-   2018-05-30 Lynn Garren : update versions
-   2018-05-29 Lynn Garren : update dependency database

lareventdisplay v06_19_08
----------------------------------------------------------

-   2018-05-30 Lynn Garren : lareventdisplay v06_19_08 for larsoft v06_79_00
-   2018-05-29 Lynn Garren : ignore more

larexamples v06_13_07
--------------------------------------------------

-   2018-05-30 Lynn Garren : larexamples v06_13_07 for larsoft v06_79_00
-   2018-05-29 Lynn Garren : ignore more

larpandora v06_27_02
------------------------------------------------

-   2018-05-30 Lynn Garren : larpandora v06_27_02 for larsoft v06_79_00
-   2018-05-29 Lynn Garren : ignore some files

larwirecell v06_13_02
--------------------------------------------------

-   2018-05-30 Lynn Garren : larwirecell v06_13_02 for larsoft v06_79_00
-   2018-05-29 Lynn Garren : ignore more

larana v06_19_08
----------------------------------------

-   2018-05-30 Lynn Garren : larana v06_19_08 for larsoft v06_79_00
-   2018-05-30 Lynn Garren : Merge branch ‘feature/russo_ticket_18137’ into release/v06_79_00
-   2018-05-29 Lynn Garren : ignore more
-   2018-05-22 Paul Russo : Remove wire arguments from geo::GeometryCore::WirePitch().

larreco v06_60_05
------------------------------------------

-   2018-05-30 Lynn Garren : larreco v06_60_05 for larsoft v06_79_00
-   2018-05-30 Lynn Garren : Merge branch ‘feature/russo_ticket_18137’ into release/v06_79_00
-   2018-05-29 Lynn Garren : ignore more
-   2018-05-29 Paul Russo : More remove wire arguments from geo::GeometryCore::WirePitch().
-   2018-05-22 Paul Russo : Remove wire arguments from geo::GeometryCore::WirePitch().

larsim v06_49_00
----------------------------------------

-   2018-05-30 Lynn Garren : larsim v06_49_00 for larsoft v06_79_00
-   2018-05-30 Lynn Garren : Merge branch ‘feature/jsoto_dphasefix’ into release/v06_79_00
-   2018-05-30 Lynn Garren : Merge branch ‘feature/gp_OpticalDocumentation’ into release/v06_79_00
-   2018-05-29 Gianluca Petrillo : Fixed code alignment, tabs converted into spaces
-   2018-05-29 Gianluca Petrillo : Added some optical simulation documentation.
-   2018-05-29 Gianluca Petrillo : Provided dump_mctruth.fcl now supports dumping generators other than GENIE.
-   2018-05-29 Lynn Garren : ignore more
-   2018-05-29 Jose Soto : Fix of bug when using interpolation and extended photon libraries in dual phase geometry.

larevt v06_20_07
----------------------------------------

-   2018-05-30 Lynn Garren : larevt v06_20_07 for larsoft v06_79_00
-   2018-05-29 Lynn Garren : ignore some files

lardata v06_45_01
------------------------------------------

-   2018-05-30 Lynn Garren : lardata v06_45_01 for larsoft v06_79_00
-   2018-05-30 Lynn Garren : Merge branch ‘feature/russo_ticket_18137’ into release/v06_79_00
-   2018-05-29 Lynn Garren : ignore some files
-   2018-05-29 Paul Russo : More remove wire arguments from geo::GeometryCore::WirePitch().

larcore v06_19_04
------------------------------------------

-   2018-05-30 Lynn Garren : larcore v06_19_04 for larsoft v06_79_00
-   2018-05-29 Lynn Garren : ignore some files

larpandoracontent v03_12_00
--------------------------------------------------------------

larsoftobj v1_46_00
----------------------------------------------

-   2018-05-30 Lynn Garren : larsoftobj v1_46_00 for larsoft v06_79_00
-   2018-05-30 Lynn Garren : ignore more
-   2018-05-30 Lynn Garren : update versions
-   2018-05-29 Lynn Garren : ignore some files

lardataobj v1_32_02
----------------------------------------------

lardataalg v1_00_01
----------------------------------------------

-   2018-05-30 Lynn Garren : lardataalg v1_00_01 for larsoft v06_79_00
-   2018-05-29 Lynn Garren : ignore some files

larcorealg v1_22_00
----------------------------------------------

-   2018-05-30 Lynn Garren : larcorealg v1_22_00 for larsoft v06_79_00
-   2018-05-30 Lynn Garren : Merge branch ‘feature/russo_ticket_18137’ into release/v06_79_00
-   2018-05-29 Lynn Garren : ignore more
-   2018-05-29 Paul Russo : Remove wire arguments from geo::TPCGeo::WirePitch().
-   2018-05-22 Paul Russo : Remove wire arguments from geo::GeometryCore::WirePitch().

larcoreobj v1_23_00
----------------------------------------------

larbatch v01_40_00
--------------------------------------------

larutils v1_22_06
------------------------------------------
