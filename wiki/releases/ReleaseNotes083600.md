LArSoft v08_36_00 Release Notes
======================================================================

-   **Table of contents**
-   [LArSoft v08_36_00 Release Notes](#LArSoft-v08_36_00-Release-Notes)
    -   [Purpose](#Purpose)
    -   [New features](#New-features)
    -   [Breaking Changes](#Breaking-Changes)
    -   [Updated dependencies](#Updated-dependencies)
-   [Change List](#Change-List)
    -   [larsoft v08_36_00](#larsoft-v08_36_00)
    -   [lareventdisplay v08_09_00](#lareventdisplay-v08_09_00)
    -   [larexamples v08_03_00](#larexamples-v08_03_00)
    -   [larg4 v08_06_00](#larg4-v08_06_00)
    -   [larpandora v08_08_00](#larpandora-v08_08_00)
    -   [larwirecell v08_09_00](#larwirecell-v08_09_00)
    -   [larana v08_13_00](#larana-v08_13_00)
    -   [larreco v08_23_00](#larreco-v08_23_00)
    -   [larsim v08_16_00](#larsim-v08_16_00)
    -   [larevt v08_07_00](#larevt-v08_07_00)
    -   [lardata v08_10_00](#lardata-v08_10_00)
    -   [larcore v08_07_00](#larcore-v08_07_00)
    -   [larpandoracontent v03_15_08](#larpandoracontent-v03_15_08)
    -   [larsoftobj v08_22_00](#larsoftobj-v08_22_00)
    -   [lardataobj v08_07_00](#lardataobj-v08_07_00)
    -   [lardataalg v08_09_00](#lardataalg-v08_09_00)
    -   [larcorealg v08_17_00](#larcorealg-v08_17_00)
    -   [larcoreobj v08_07_00](#larcoreobj-v08_07_00)
    -   [larbatch v01_51_10](#larbatch-v01_51_10)
    -   [larutils v1_25_01](#larutils-v1_25_01)

[list of LArSoft releases](LArSoft_release_list)
Download instructions for [larsoft v08_36_00](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v08_36_00/larsoft-v08_36_00.html)
Download instructions for [just larsoftobj v08_22_00](http://scisoft.fnal.gov/scisoft/bundles/larsoftobj/v08_22_00/larsoftobj-v08_22_00.html)

Purpose
--------------------

-   update to art 3.03

New features
------------------------------

-   This release is based off the larsoft v08_35_01 tag with changes required by a move from art 3.02 to art 3.03

Breaking Changes
--------------------------------------

-   Branch feature/team_for_art_v3_03 is provided for all experiment code.
-   nutools EventDisplayBase is now in nuevdb
    -   If necessary, run UseNuevdb.sh (found in nutools v3_05_00)
-   see the [art series 3.03](https://cdcvs.fnal.gov/redmine/projects/art/wiki/Series_303) page for art breaking changes
-   boost v1_70_0 requires cmake v3_13_1 or later
    -   FindBoost.cmake uses an exact match for each version number
    -   please use cetbuildtools v7_14_00
-   These changes are listed on the [Breaking Changes](Breaking_Changes) page.

Updated dependencies
----------------------------------------------

-   art v3_03_01 (s93)
-   art_root_io v1_01_04
-   canvas_root_io v1_04_01
-   gallery v1_13_01
-   boost v1_70_0
-   clhep v2_4_1_2
-   geant4 v4_10_3_p03e
-   artdaq_core v3_05_08
-   ifdh_art v2_09_02
-   nusimdata v1_20_00
-   nuevdb v1_01_00
-   nug4 v1_03_00
-   nugen v1_07_00
-   nurandom v1_02_00
-   nutools v3_05_00
-   artg4tk v09_06_00
-   wirecell v0_12_4d
-   systematicstools v00_05_00
-   nusystematics v00_07_00
-   mrb v3_04_01

Change List
============================

larsoft v08_36_00
------------------------------------------

-   2019-11-12 Lynn Garren : larsoft v08_36_00 for larsoft v08_36_00
-   2019-11-12 Lynn Garren : product versions
-   2019-11-12 Lynn Garren : Merge branch ‘feature/team_for_art_v3_03’ into release/v08_36_00
-   2019-10-31 Lynn Garren : for art v3_03
-   2019-10-31 Lynn Garren : art v3_03_01 and nutools v3_05_00

lareventdisplay v08_09_00
----------------------------------------------------------

-   2019-11-12 Lynn Garren : lareventdisplay v08_09_00 for larsoft v08_36_00
-   2019-11-12 Lynn Garren : Merge branch ‘feature/team_for_art_v3_03’ into release/v08_36_00
-   2019-11-05 Kyle Knoepfel : Correct misspecified libraries.
-   2019-10-31 Lynn Garren : using nuevdb
-   2019-10-31 Lynn Garren : using nuevdb
-   2019-10-31 Lynn Garren : using nuevdb

larexamples v08_03_00
--------------------------------------------------

-   2019-11-12 Lynn Garren : larexamples v08_03_00 for larsoft v08_36_00
-   2019-11-12 Lynn Garren : Merge branch ‘feature/team_for_art_v3_03’ into release/v08_36_00
-   2019-10-31 Lynn Garren : for art v3_03

larg4 v08_06_00
--------------------------------------

-   2019-11-12 Lynn Garren : larg4 v08_06_00 for larsoft v08_36_00
-   2019-11-12 Lynn Garren : Merge branch ‘feature/team_for_art_v3_03’ into release/v08_36_00
-   2019-11-05 Lynn Garren : use artg4tk v09_06_00
-   2019-11-04 Kyle Knoepfel : Upgrade to art 3.03
-   2019-10-31 Lynn Garren : cleanup for nug4
-   2019-10-31 Lynn Garren : drop nutools

larpandora v08_08_00
------------------------------------------------

-   2019-11-12 Lynn Garren : larpandora v08_08_00 for larsoft v08_36_00
-   2019-11-12 Lynn Garren : Merge branch ‘feature/team_for_art_v3_03’ into release/v08_36_00
-   2019-10-31 Lynn Garren : for art v3_03

larwirecell v08_09_00
--------------------------------------------------

-   2019-11-12 Lynn Garren : larwirecell v08_09_00 for larsoft v08_36_00
-   2019-11-12 Lynn Garren : Merge branch ‘feature/team_for_art_v3_03’ into release/v08_36_00
-   2019-11-05 Kyle Knoepfel : Upgrade to art 3.03
-   2019-10-31 Lynn Garren : for art v3_03

larana v08_13_00
----------------------------------------

-   2019-11-12 Lynn Garren : add missing library
-   2019-11-12 Lynn Garren : larana v08_13_00 for larsoft v08_36_00
-   2019-11-12 Lynn Garren : Merge branch ‘feature/team_for_art_v3_03’ into release/v08_36_00
-   2019-11-05 Kyle Knoepfel : Accommodate breaking changes in lardata.
-   2019-10-31 Lynn Garren : for art v3_03

larreco v08_23_00
------------------------------------------

-   2019-11-12 Lynn Garren : larreco v08_23_00 for larsoft v08_36_00
-   2019-11-12 Lynn Garren : Merge branch ‘feature/team_for_art_v3_03’ into release/v08_36_00
-   2019-11-05 Kyle Knoepfel : Upgrade to art 3.03; accomodate breaking changes in lardata
-   2019-10-31 Lynn Garren : for art v3_03

larsim v08_16_00
----------------------------------------

-   2019-11-12 Lynn Garren : larsim v08_16_00 for larsoft v08_36_00
-   2019-11-12 Lynn Garren : Merge branch ‘feature/team_for_art_v3_03’ into release/v08_36_00
-   2019-11-04 Kyle Knoepfel : Upgrade to art 3.03
-   2019-10-31 Lynn Garren : for nutools v3_05_00

larevt v08_07_00
----------------------------------------

-   2019-11-12 Lynn Garren : larevt v08_07_00 for larsoft v08_36_00
-   2019-11-12 Lynn Garren : Merge branch ‘feature/team_for_art_v3_03’ into release/v08_36_00
-   2019-10-31 Lynn Garren : for art v3_03

lardata v08_10_00
------------------------------------------

-   2019-11-12 Lynn Garren : lardata v08_10_00 for larsoft v08_36_00
-   2019-11-12 Lynn Garren : Merge branch ‘feature/team_for_art_v3_03’ into release/v08_36_00
-   2019-11-06 Kyle Knoepfel : Support CreateAssn w/o requiring producer reference.
-   2019-11-05 Kyle Knoepfel : One more art 3.03 fix.
-   2019-11-04 Kyle Knoepfel : Fix ODR violation from latest commit.
-   2019-11-04 Kyle Knoepfel : Adjust code for art 3.03; at least one breaking change in usage patterns.
-   2019-10-31 Chris Green : Suggested changes for art::ProducesCollector.
-   2019-10-31 Lynn Garren : for art_root_io v1_01_04

larcore v08_07_00
------------------------------------------

-   2019-11-12 Lynn Garren : larcore v08_07_00 for larsoft v08_36_00
-   2019-11-12 Lynn Garren : Merge branch ‘feature/team_for_art_v3_03’ into release/v08_36_00
-   2019-10-31 Lynn Garren : for art_root_io v1_01_04

larpandoracontent v03_15_08
--------------------------------------------------------------

larsoftobj v08_22_00
------------------------------------------------

-   2019-11-12 Lynn Garren : larsoftobj v08_22_00 for larsoft v08_36_00
-   2019-11-12 Lynn Garren : product versions
-   2019-11-12 Lynn Garren : Merge branch ‘feature/team_for_art_v3_03’ into release/v08_36_00
-   2019-10-31 Lynn Garren : mrb v3_03_02
-   2019-10-31 Lynn Garren : for canvas_root_io v1_04_01

lardataobj v08_07_00
------------------------------------------------

-   2019-11-12 Lynn Garren : lardataobj v08_07_00 for larsoft v08_36_00
-   2019-11-12 Lynn Garren : Merge branch ‘feature/team_for_art_v3_03’ into release/v08_36_00
-   2019-10-31 Lynn Garren : for canvas_root_io v1_04_01

lardataalg v08_09_00
------------------------------------------------

-   2019-11-12 Lynn Garren : lardataalg v08_09_00 for larsoft v08_36_00
-   2019-11-12 Lynn Garren : Merge branch ‘feature/team_for_art_v3_03’ into release/v08_36_00
-   2019-10-31 Lynn Garren : for canvas_root_io v1_04_01

larcorealg v08_17_00
------------------------------------------------

-   2019-11-12 Lynn Garren : larcorealg v08_17_00 for larsoft v08_36_00
-   2019-11-12 Lynn Garren : Merge branch ‘feature/team_for_art_v3_03’ into release/v08_36_00
-   2019-10-31 Lynn Garren : for canvas_root_io v1_04_01

larcoreobj v08_07_00
------------------------------------------------

-   2019-11-12 Lynn Garren : larcoreobj v08_07_00 for larsoft v08_36_00
-   2019-10-31 Lynn Garren : for canvas_root_io v1_04_01

larbatch v01_51_10
--------------------------------------------

larutils v1_25_01
------------------------------------------
