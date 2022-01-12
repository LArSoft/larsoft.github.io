LArSoft v06_65_00 Release Notes
======================================================================

-   **Table of contents**
-   [LArSoft v06_65_00 Release Notes](#LArSoft-v06_65_00-Release-Notes)
    -   [Purpose](#Purpose)
    -   [New features](#New-features)
    -   [Breaking changes](#Breaking-changes)
    -   [Updated dependencies](#Updated-dependencies)
-   [Change List](#Change-List)
    -   [larsoft v06_65_00](#larsoft-v06_65_00)
    -   [lareventdisplay v06_16_00](#lareventdisplay-v06_16_00)
    -   [larexamples v06_09_00](#larexamples-v06_09_00)
    -   [larpandora v06_20_00](#larpandora-v06_20_00)
    -   [larwirecell v06_09_00](#larwirecell-v06_09_00)
    -   [larana v06_15_00](#larana-v06_15_00)
    -   [larreco v06_53_00](#larreco-v06_53_00)
    -   [larsim v06_39_00](#larsim-v06_39_00)
    -   [larevt v06_17_00](#larevt-v06_17_00)
    -   [lardata v06_37_00](#lardata-v06_37_00)
    -   [larcore v06_16_00](#larcore-v06_16_00)
    -   [larpandoracontent v03_09_03](#larpandoracontent-v03_09_03)
    -   [larsoftobj v1_38_00](#larsoftobj-v1_38_00)
    -   [lardataobj v1_27_00](#lardataobj-v1_27_00)
    -   [larcorealg v1_16_00](#larcorealg-v1_16_00)
    -   [larcoreobj v1_19_00](#larcoreobj-v1_19_00)
    -   [larbatch v01_36_00](#larbatch-v01_36_00)
    -   [larutils v1_20_05](#larutils-v1_20_05)

[list of LArSoft releases](LArSoft_release_list)
Download instructions for [larsoft v06_65_00](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v06_65_00/larsoft-v06_65_00.html)
Download instructions for [just larsoftobj v1_38_00](http://scisoft.fnal.gov/scisoft/bundles/larsoftobj/v1_38_00/larsoftobj-v1_38_00.html)

Purpose
--------------------

-   migrate to art v2_09_06
-   based on larsoft v06_64_00

New features
------------------------------

-   use art v2_09_06 and nutools v2_17_02
-   feature/team_for_art209 is available for experiment code

Breaking changes
--------------------------------------

-   Please use UpdateArt209.sh
-   canvas has been split into two products: canvas and canvas_root_io. canvas has no root dependency. canvas_root_io has the root dependency and also depends on canvas.
-   art::SourceHelper is explicitly const&
-   art/Persistency/RootDB is now art/Framework/IO/Root/RootDB

Updated dependencies
----------------------------------------------

||
|**Product**|**Version**|**Notes**|
|canvas_root_io|v1_00_05|Modules are now in canvas_root_io|
|gallery|v1_06_04|[Release Notes](/redmine/projects/gallery/wiki/Release_Notes_10604)|
|art|v2_09_06|[Release Notes](/redmine/projects/art/wiki/Series_209)|
|artdaq_core|v3_00_08|Note that the interface to ContainerFragment has changed.|
|nutools|v2_17_02||
|root|v6_10_08b||
|boost|v1_65_1||
|python|v2_7_14||

-   Note that nearly all dependencies have new versions.

Change List
============================

larsoft v06_65_00
------------------------------------------

-   2018-01-22 Lynn Garren : larsoft v06_65_00 for larsoft v06_65_00
-   2018-01-22 Lynn Garren : install update script
-   2018-01-22 Lynn Garren : product versions
-   2018-01-22 Lynn Garren : art 2.09.06 comes with v06_65_00
-   2018-01-19 Lynn Garren : Merge branch ‘feature/team_for_art209’ into release/v06_65_00
-   2018-01-19 Lynn Garren : v06_63_00_rc0
-   2018-01-08 Lynn Garren : art 2.09 update scripts
-   2018-01-05 Lynn Garren : module path
-   2018-01-05 Lynn Garren : update for art 2.09.03

lareventdisplay v06_16_00
----------------------------------------------------------

-   2018-01-22 Lynn Garren : lareventdisplay v06_16_00 for larsoft v06_65_00
-   2018-01-19 Lynn Garren : Merge branch ‘feature/team_for_art209’ into release/v06_65_00
-   2018-01-19 Lynn Garren : v06_63_00_rc0
-   2018-01-08 Lynn Garren : update CMAKE_MODULE_PATH

larexamples v06_09_00
--------------------------------------------------

-   2018-01-22 Lynn Garren : larexamples v06_09_00 for larsoft v06_65_00
-   2018-01-19 Lynn Garren : Merge branch ‘feature/team_for_art209’ into release/v06_65_00
-   2018-01-19 Lynn Garren : v06_63_00_rc0
-   2018-01-08 Lynn Garren : update CMAKE_MODULE_PATH

larpandora v06_20_00
------------------------------------------------

-   2018-01-22 Lynn Garren : larpandora v06_20_00 for larsoft v06_65_00
-   2018-01-19 Lynn Garren : Merge branch ‘feature/team_for_art209’ into release/v06_65_00
-   2018-01-19 Lynn Garren : v06_63_00_rc0
-   2018-01-08 Lynn Garren : update CMAKE_MODULE_PATH

larwirecell v06_09_00
--------------------------------------------------

-   2018-01-22 Lynn Garren : larwirecell v06_09_00 for larsoft v06_65_00
-   2018-01-19 Lynn Garren : Merge branch ‘feature/team_for_art209’ into release/v06_65_00
-   2018-01-19 Lynn Garren : v06_63_00_rc0
-   2018-01-08 Lynn Garren : rtype has been given a more descriptive name

larana v06_15_00
----------------------------------------

-   2018-01-22 Lynn Garren : larana v06_15_00 for larsoft v06_65_00
-   2018-01-19 Lynn Garren : Merge branch ‘feature/team_for_art209’ into release/v06_65_00
-   2018-01-19 Lynn Garren : v06_63_00_rc0
-   2018-01-08 Lynn Garren : update CMAKE_MODULE_PATH

larreco v06_53_00
------------------------------------------

-   2018-01-22 Lynn Garren : larreco v06_53_00 for larsoft v06_65_00
-   2018-01-19 Lynn Garren : Merge branch ‘feature/team_for_art209’ into release/v06_65_00
-   2018-01-19 Lynn Garren : v06_63_00_rc0
-   2018-01-08 Lynn Garren : update CMAKE_MODULE_PATH

larsim v06_39_00
----------------------------------------

-   2018-01-22 Lynn Garren : larsim v06_39_00 for larsoft v06_65_00
-   2018-01-19 Lynn Garren : Merge branch ‘feature/team_for_art209’ into release/v06_65_00
-   2018-01-19 Lynn Garren : v06_63_00_rc0
-   2018-01-08 Lynn Garren : update CMAKE_MODULE_PATH

larevt v06_17_00
----------------------------------------

-   2018-01-22 Lynn Garren : larevt v06_17_00 for larsoft v06_65_00
-   2018-01-19 Lynn Garren : Merge branch ‘feature/team_for_art209’ into release/v06_65_00
-   2018-01-19 Lynn Garren : v06_63_00_rc0
-   2018-01-08 Lynn Garren : art/Persistency/RootDB moved to art/Framework/IO/Root/RootD
-   2018-01-08 Lynn Garren : update CMAKE_MODULE_PATH

lardata v06_37_00
------------------------------------------

-   2018-01-22 Lynn Garren : range v3_0_3_0
-   2018-01-22 Lynn Garren : lardata v06_37_00 for larsoft v06_65_00
-   2018-01-19 Lynn Garren : Merge branch ‘feature/team_for_art209’ into release/v06_65_00
-   2018-01-19 Lynn Garren : v06_63_00_rc0
-   2018-01-08 Lynn Garren : art/Persistency/RootDB moved to art/Framework/IO/Root/RootD
-   2018-01-08 Lynn Garren : art::SourceHelper needs to be a const&
-   2018-01-08 Lynn Garren : art/Persistency/RootDB moved to art/Framework/IO/Root/RootD
-   2018-01-08 Lynn Garren : update CMAKE_MODULE_PATH

larcore v06_16_00
------------------------------------------

-   2018-01-22 Lynn Garren : larcore v06_16_00 for larsoft v06_65_00
-   2018-01-19 Lynn Garren : Merge branch ‘feature/team_for_art209’ into release/v06_65_00
-   2018-01-19 Lynn Garren : v06_63_00_rc0
-   2018-01-08 Lynn Garren : update CMAKE_MODULE_PATH

larpandoracontent v03_09_03
--------------------------------------------------------------

-   2018-01-22 Lynn Garren : larpandoracontent v03_09_03 for larsoft v06_65_00
-   2018-01-22 Lynn Garren : v03_09_03
-   2018-01-19 Lynn Garren : Merge branch ‘feature/team_for_art209’ into release/v06_65_00
-   2018-01-19 Lynn Garren : v06_63_00_rc0

larsoftobj v1_38_00
----------------------------------------------

-   2018-01-22 Lynn Garren : larsoftobj v1_38_00 for larsoft v06_65_00
-   2018-01-22 Lynn Garren : product versions
-   2018-01-22 Lynn Garren : upate for art 2.09.06
-   2018-01-19 Lynn Garren : Merge branch ‘feature/team_for_art209’ into release/v06_65_00
-   2018-01-19 Lynn Garren : v06_63_00_rc0
-   2018-01-08 Lynn Garren : update CMAKE_MODULE_PATH

lardataobj v1_27_00
----------------------------------------------

-   2018-01-22 Lynn Garren : lardataobj v1_27_00 for larsoft v06_65_00
-   2018-01-19 Lynn Garren : Merge branch ‘feature/team_for_art209’ into release/v06_65_00
-   2018-01-19 Lynn Garren : v06_63_00_rc0
-   2018-01-08 Lynn Garren : update CMAKE_MODULE_PATH

larcorealg v1_16_00
----------------------------------------------

-   2018-01-22 Lynn Garren : larcorealg v1_16_00 for larsoft v06_65_00
-   2018-01-19 Lynn Garren : Merge branch ‘feature/team_for_art209’ into release/v06_65_00
-   2018-01-19 Lynn Garren : v06_63_00_rc0
-   2018-01-08 Lynn Garren : update CMAKE_MODULE_PATH

larcoreobj v1_19_00
----------------------------------------------

-   2018-01-22 Lynn Garren : nu qualified
-   2018-01-22 Lynn Garren : need canvas_root_io
-   2018-01-22 Lynn Garren : larcoreobj v1_19_00 for larsoft v06_65_00
-   2018-01-19 Lynn Garren : v06_63_00_rc0
-   2018-01-08 Lynn Garren : update CMAKE_MODULE_PATH

larbatch v01_36_00
--------------------------------------------

larutils v1_20_05
------------------------------------------
