LArSoft v06\_65\_00 Release Notes
======================================================================

-   **Table of contents**
-   [LArSoft v06\_65\_00 Release Notes](#LArSoft-v06_65_00-Release-Notes)
    -   [Purpose](#Purpose)
    -   [New features](#New-features)
    -   [Breaking changes](#Breaking-changes)
    -   [Updated dependencies](#Updated-dependencies)
-   [Change List](#Change-List)
    -   [larsoft v06\_65\_00](#larsoft-v06_65_00)
    -   [lareventdisplay v06\_16\_00](#lareventdisplay-v06_16_00)
    -   [larexamples v06\_09\_00](#larexamples-v06_09_00)
    -   [larpandora v06\_20\_00](#larpandora-v06_20_00)
    -   [larwirecell v06\_09\_00](#larwirecell-v06_09_00)
    -   [larana v06\_15\_00](#larana-v06_15_00)
    -   [larreco v06\_53\_00](#larreco-v06_53_00)
    -   [larsim v06\_39\_00](#larsim-v06_39_00)
    -   [larevt v06\_17\_00](#larevt-v06_17_00)
    -   [lardata v06\_37\_00](#lardata-v06_37_00)
    -   [larcore v06\_16\_00](#larcore-v06_16_00)
    -   [larpandoracontent v03\_09\_03](#larpandoracontent-v03_09_03)
    -   [larsoftobj v1\_38\_00](#larsoftobj-v1_38_00)
    -   [lardataobj v1\_27\_00](#lardataobj-v1_27_00)
    -   [larcorealg v1\_16\_00](#larcorealg-v1_16_00)
    -   [larcoreobj v1\_19\_00](#larcoreobj-v1_19_00)
    -   [larbatch v01\_36\_00](#larbatch-v01_36_00)
    -   [larutils v1\_20\_05](#larutils-v1_20_05)

[list of LArSoft releases](LArSoft_release_list)
Download instructions for [larsoft v06\_65\_00](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v06_65_00/larsoft-v06_65_00.html)
Download instructions for [just larsoftobj v1\_38\_00](http://scisoft.fnal.gov/scisoft/bundles/larsoftobj/v1_38_00/larsoftobj-v1_38_00.html)

Purpose
--------------------

-   migrate to art v2\_09\_06
-   based on larsoft v06\_64\_00

New features
------------------------------

-   use art v2\_09\_06 and nutools v2\_17\_02
-   feature/team\_for\_art209 is available for experiment code

Breaking changes
--------------------------------------

-   Please use UpdateArt209.sh
-   canvas has been split into two products: canvas and canvas\_root\_io. canvas has no root dependency. canvas\_root\_io has the root dependency and also depends on canvas.
-   art::SourceHelper is explicitly const&
-   art/Persistency/RootDB is now art/Framework/IO/Root/RootDB

Updated dependencies
----------------------------------------------

||
|**Product**|**Version**|**Notes**|
|canvas\_root\_io|v1\_00\_05|Modules are now in canvas\_root\_io|
|gallery|v1\_06\_04|[Release Notes](/redmine/projects/gallery/wiki/Release_Notes_10604)|
|art|v2\_09\_06|[Release Notes](/redmine/projects/art/wiki/Series_209)|
|artdaq\_core|v3\_00\_08|Note that the interface to ContainerFragment has changed.|
|nutools|v2\_17\_02||
|root|v6\_10\_08b||
|boost|v1\_65\_1||
|python|v2\_7\_14||

-   Note that nearly all dependencies have new versions.

Change List
============================

larsoft v06\_65\_00
------------------------------------------

-   2018-01-22 Lynn Garren : larsoft v06\_65\_00 for larsoft v06\_65\_00
-   2018-01-22 Lynn Garren : install update script
-   2018-01-22 Lynn Garren : product versions
-   2018-01-22 Lynn Garren : art 2.09.06 comes with v06\_65\_00
-   2018-01-19 Lynn Garren : Merge branch ‘feature/team\_for\_art209’ into release/v06\_65\_00
-   2018-01-19 Lynn Garren : v06\_63\_00\_rc0
-   2018-01-08 Lynn Garren : art 2.09 update scripts
-   2018-01-05 Lynn Garren : module path
-   2018-01-05 Lynn Garren : update for art 2.09.03

lareventdisplay v06\_16\_00
----------------------------------------------------------

-   2018-01-22 Lynn Garren : lareventdisplay v06\_16\_00 for larsoft v06\_65\_00
-   2018-01-19 Lynn Garren : Merge branch ‘feature/team\_for\_art209’ into release/v06\_65\_00
-   2018-01-19 Lynn Garren : v06\_63\_00\_rc0
-   2018-01-08 Lynn Garren : update CMAKE\_MODULE\_PATH

larexamples v06\_09\_00
--------------------------------------------------

-   2018-01-22 Lynn Garren : larexamples v06\_09\_00 for larsoft v06\_65\_00
-   2018-01-19 Lynn Garren : Merge branch ‘feature/team\_for\_art209’ into release/v06\_65\_00
-   2018-01-19 Lynn Garren : v06\_63\_00\_rc0
-   2018-01-08 Lynn Garren : update CMAKE\_MODULE\_PATH

larpandora v06\_20\_00
------------------------------------------------

-   2018-01-22 Lynn Garren : larpandora v06\_20\_00 for larsoft v06\_65\_00
-   2018-01-19 Lynn Garren : Merge branch ‘feature/team\_for\_art209’ into release/v06\_65\_00
-   2018-01-19 Lynn Garren : v06\_63\_00\_rc0
-   2018-01-08 Lynn Garren : update CMAKE\_MODULE\_PATH

larwirecell v06\_09\_00
--------------------------------------------------

-   2018-01-22 Lynn Garren : larwirecell v06\_09\_00 for larsoft v06\_65\_00
-   2018-01-19 Lynn Garren : Merge branch ‘feature/team\_for\_art209’ into release/v06\_65\_00
-   2018-01-19 Lynn Garren : v06\_63\_00\_rc0
-   2018-01-08 Lynn Garren : rtype has been given a more descriptive name

larana v06\_15\_00
----------------------------------------

-   2018-01-22 Lynn Garren : larana v06\_15\_00 for larsoft v06\_65\_00
-   2018-01-19 Lynn Garren : Merge branch ‘feature/team\_for\_art209’ into release/v06\_65\_00
-   2018-01-19 Lynn Garren : v06\_63\_00\_rc0
-   2018-01-08 Lynn Garren : update CMAKE\_MODULE\_PATH

larreco v06\_53\_00
------------------------------------------

-   2018-01-22 Lynn Garren : larreco v06\_53\_00 for larsoft v06\_65\_00
-   2018-01-19 Lynn Garren : Merge branch ‘feature/team\_for\_art209’ into release/v06\_65\_00
-   2018-01-19 Lynn Garren : v06\_63\_00\_rc0
-   2018-01-08 Lynn Garren : update CMAKE\_MODULE\_PATH

larsim v06\_39\_00
----------------------------------------

-   2018-01-22 Lynn Garren : larsim v06\_39\_00 for larsoft v06\_65\_00
-   2018-01-19 Lynn Garren : Merge branch ‘feature/team\_for\_art209’ into release/v06\_65\_00
-   2018-01-19 Lynn Garren : v06\_63\_00\_rc0
-   2018-01-08 Lynn Garren : update CMAKE\_MODULE\_PATH

larevt v06\_17\_00
----------------------------------------

-   2018-01-22 Lynn Garren : larevt v06\_17\_00 for larsoft v06\_65\_00
-   2018-01-19 Lynn Garren : Merge branch ‘feature/team\_for\_art209’ into release/v06\_65\_00
-   2018-01-19 Lynn Garren : v06\_63\_00\_rc0
-   2018-01-08 Lynn Garren : art/Persistency/RootDB moved to art/Framework/IO/Root/RootD
-   2018-01-08 Lynn Garren : update CMAKE\_MODULE\_PATH

lardata v06\_37\_00
------------------------------------------

-   2018-01-22 Lynn Garren : range v3\_0\_3\_0
-   2018-01-22 Lynn Garren : lardata v06\_37\_00 for larsoft v06\_65\_00
-   2018-01-19 Lynn Garren : Merge branch ‘feature/team\_for\_art209’ into release/v06\_65\_00
-   2018-01-19 Lynn Garren : v06\_63\_00\_rc0
-   2018-01-08 Lynn Garren : art/Persistency/RootDB moved to art/Framework/IO/Root/RootD
-   2018-01-08 Lynn Garren : art::SourceHelper needs to be a const&
-   2018-01-08 Lynn Garren : art/Persistency/RootDB moved to art/Framework/IO/Root/RootD
-   2018-01-08 Lynn Garren : update CMAKE\_MODULE\_PATH

larcore v06\_16\_00
------------------------------------------

-   2018-01-22 Lynn Garren : larcore v06\_16\_00 for larsoft v06\_65\_00
-   2018-01-19 Lynn Garren : Merge branch ‘feature/team\_for\_art209’ into release/v06\_65\_00
-   2018-01-19 Lynn Garren : v06\_63\_00\_rc0
-   2018-01-08 Lynn Garren : update CMAKE\_MODULE\_PATH

larpandoracontent v03\_09\_03
--------------------------------------------------------------

-   2018-01-22 Lynn Garren : larpandoracontent v03\_09\_03 for larsoft v06\_65\_00
-   2018-01-22 Lynn Garren : v03\_09\_03
-   2018-01-19 Lynn Garren : Merge branch ‘feature/team\_for\_art209’ into release/v06\_65\_00
-   2018-01-19 Lynn Garren : v06\_63\_00\_rc0

larsoftobj v1\_38\_00
----------------------------------------------

-   2018-01-22 Lynn Garren : larsoftobj v1\_38\_00 for larsoft v06\_65\_00
-   2018-01-22 Lynn Garren : product versions
-   2018-01-22 Lynn Garren : upate for art 2.09.06
-   2018-01-19 Lynn Garren : Merge branch ‘feature/team\_for\_art209’ into release/v06\_65\_00
-   2018-01-19 Lynn Garren : v06\_63\_00\_rc0
-   2018-01-08 Lynn Garren : update CMAKE\_MODULE\_PATH

lardataobj v1\_27\_00
----------------------------------------------

-   2018-01-22 Lynn Garren : lardataobj v1\_27\_00 for larsoft v06\_65\_00
-   2018-01-19 Lynn Garren : Merge branch ‘feature/team\_for\_art209’ into release/v06\_65\_00
-   2018-01-19 Lynn Garren : v06\_63\_00\_rc0
-   2018-01-08 Lynn Garren : update CMAKE\_MODULE\_PATH

larcorealg v1\_16\_00
----------------------------------------------

-   2018-01-22 Lynn Garren : larcorealg v1\_16\_00 for larsoft v06\_65\_00
-   2018-01-19 Lynn Garren : Merge branch ‘feature/team\_for\_art209’ into release/v06\_65\_00
-   2018-01-19 Lynn Garren : v06\_63\_00\_rc0
-   2018-01-08 Lynn Garren : update CMAKE\_MODULE\_PATH

larcoreobj v1\_19\_00
----------------------------------------------

-   2018-01-22 Lynn Garren : nu qualified
-   2018-01-22 Lynn Garren : need canvas\_root\_io
-   2018-01-22 Lynn Garren : larcoreobj v1\_19\_00 for larsoft v06\_65\_00
-   2018-01-19 Lynn Garren : v06\_63\_00\_rc0
-   2018-01-08 Lynn Garren : update CMAKE\_MODULE\_PATH

larbatch v01\_36\_00
--------------------------------------------

larutils v1\_20\_05
------------------------------------------
