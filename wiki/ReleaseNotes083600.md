LArSoft v08\_36\_00 Release Notes(#LArSoft-v08_36_00-Release-Notes)
======================================================================

-   **Table of contents**
-   [LArSoft v08\_36\_00 Release Notes](#LArSoft-v08_36_00-Release-Notes)
    -   [Purpose](#Purpose)
    -   [New features](#New-features)
    -   [Breaking Changes](#Breaking-Changes)
    -   [Updated dependencies](#Updated-dependencies)
-   [Change List](#Change-List)
    -   [larsoft v08\_36\_00](#larsoft-v08_36_00)
    -   [lareventdisplay v08\_09\_00](#lareventdisplay-v08_09_00)
    -   [larexamples v08\_03\_00](#larexamples-v08_03_00)
    -   [larg4 v08\_06\_00](#larg4-v08_06_00)
    -   [larpandora v08\_08\_00](#larpandora-v08_08_00)
    -   [larwirecell v08\_09\_00](#larwirecell-v08_09_00)
    -   [larana v08\_13\_00](#larana-v08_13_00)
    -   [larreco v08\_23\_00](#larreco-v08_23_00)
    -   [larsim v08\_16\_00](#larsim-v08_16_00)
    -   [larevt v08\_07\_00](#larevt-v08_07_00)
    -   [lardata v08\_10\_00](#lardata-v08_10_00)
    -   [larcore v08\_07\_00](#larcore-v08_07_00)
    -   [larpandoracontent v03\_15\_08](#larpandoracontent-v03_15_08)
    -   [larsoftobj v08\_22\_00](#larsoftobj-v08_22_00)
    -   [lardataobj v08\_07\_00](#lardataobj-v08_07_00)
    -   [lardataalg v08\_09\_00](#lardataalg-v08_09_00)
    -   [larcorealg v08\_17\_00](#larcorealg-v08_17_00)
    -   [larcoreobj v08\_07\_00](#larcoreobj-v08_07_00)
    -   [larbatch v01\_51\_10](#larbatch-v01_51_10)
    -   [larutils v1\_25\_01](#larutils-v1_25_01)

[list of LArSoft releases](LArSoft_release_list)\
Download instructions for [larsoft v08\_36\_00](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v08_36_00/larsoft-v08_36_00.html)\
Download instructions for [just larsoftobj v08\_22\_00](http://scisoft.fnal.gov/scisoft/bundles/larsoftobj/v08_22_00/larsoftobj-v08_22_00.html)

Purpose(#Purpose)
--------------------

-   update to art 3.03

New features(#New-features)
------------------------------

-   This release is based off the larsoft v08\_35\_01 tag with changes required by a move from art 3.02 to art 3.03

Breaking Changes(#Breaking-Changes)
--------------------------------------

-   Branch feature/team\_for\_art\_v3\_03 is provided for all experiment code.
-   nutools EventDisplayBase is now in nuevdb
    -   If necessary, run UseNuevdb.sh (found in nutools v3\_05\_00)
-   see the [art series 3.03](/redmine/projects/art/wiki/Series_303) page for art breaking changes
-   boost v1\_70\_0 requires cmake v3\_13\_1 or later
    -   FindBoost.cmake uses an exact match for each version number
    -   please use cetbuildtools v7\_14\_00
-   These changes are listed on the [Breaking Changes](Breaking_Changes) page.

Updated dependencies(#Updated-dependencies)
----------------------------------------------

-   art v3\_03\_01 (s93)
-   art\_root\_io v1\_01\_04
-   canvas\_root\_io v1\_04\_01
-   gallery v1\_13\_01
-   boost v1\_70\_0
-   clhep v2\_4\_1\_2
-   geant4 v4\_10\_3\_p03e
-   artdaq\_core v3\_05\_08
-   ifdh\_art v2\_09\_02
-   nusimdata v1\_20\_00
-   nuevdb v1\_01\_00
-   nug4 v1\_03\_00
-   nugen v1\_07\_00
-   nurandom v1\_02\_00
-   nutools v3\_05\_00
-   artg4tk v09\_06\_00
-   wirecell v0\_12\_4d
-   systematicstools v00\_05\_00
-   nusystematics v00\_07\_00
-   mrb v3\_04\_01

Change List(#Change-List)
============================

larsoft v08\_36\_00(#larsoft-v08_36_00)
------------------------------------------

-   2019-11-12 Lynn Garren : larsoft v08\_36\_00 for larsoft v08\_36\_00
-   2019-11-12 Lynn Garren : product versions
-   2019-11-12 Lynn Garren : Merge branch ‘feature/team\_for\_art\_v3\_03’ into release/v08\_36\_00
-   2019-10-31 Lynn Garren : for art v3\_03
-   2019-10-31 Lynn Garren : art v3\_03\_01 and nutools v3\_05\_00

lareventdisplay v08\_09\_00(#lareventdisplay-v08_09_00)
----------------------------------------------------------

-   2019-11-12 Lynn Garren : lareventdisplay v08\_09\_00 for larsoft v08\_36\_00
-   2019-11-12 Lynn Garren : Merge branch ‘feature/team\_for\_art\_v3\_03’ into release/v08\_36\_00
-   2019-11-05 Kyle Knoepfel : Correct misspecified libraries.
-   2019-10-31 Lynn Garren : using nuevdb
-   2019-10-31 Lynn Garren : using nuevdb
-   2019-10-31 Lynn Garren : using nuevdb

larexamples v08\_03\_00(#larexamples-v08_03_00)
--------------------------------------------------

-   2019-11-12 Lynn Garren : larexamples v08\_03\_00 for larsoft v08\_36\_00
-   2019-11-12 Lynn Garren : Merge branch ‘feature/team\_for\_art\_v3\_03’ into release/v08\_36\_00
-   2019-10-31 Lynn Garren : for art v3\_03

larg4 v08\_06\_00(#larg4-v08_06_00)
--------------------------------------

-   2019-11-12 Lynn Garren : larg4 v08\_06\_00 for larsoft v08\_36\_00
-   2019-11-12 Lynn Garren : Merge branch ‘feature/team\_for\_art\_v3\_03’ into release/v08\_36\_00
-   2019-11-05 Lynn Garren : use artg4tk v09\_06\_00
-   2019-11-04 Kyle Knoepfel : Upgrade to art 3.03
-   2019-10-31 Lynn Garren : cleanup for nug4
-   2019-10-31 Lynn Garren : drop nutools

larpandora v08\_08\_00(#larpandora-v08_08_00)
------------------------------------------------

-   2019-11-12 Lynn Garren : larpandora v08\_08\_00 for larsoft v08\_36\_00
-   2019-11-12 Lynn Garren : Merge branch ‘feature/team\_for\_art\_v3\_03’ into release/v08\_36\_00
-   2019-10-31 Lynn Garren : for art v3\_03

larwirecell v08\_09\_00(#larwirecell-v08_09_00)
--------------------------------------------------

-   2019-11-12 Lynn Garren : larwirecell v08\_09\_00 for larsoft v08\_36\_00
-   2019-11-12 Lynn Garren : Merge branch ‘feature/team\_for\_art\_v3\_03’ into release/v08\_36\_00
-   2019-11-05 Kyle Knoepfel : Upgrade to art 3.03
-   2019-10-31 Lynn Garren : for art v3\_03

larana v08\_13\_00(#larana-v08_13_00)
----------------------------------------

-   2019-11-12 Lynn Garren : add missing library
-   2019-11-12 Lynn Garren : larana v08\_13\_00 for larsoft v08\_36\_00
-   2019-11-12 Lynn Garren : Merge branch ‘feature/team\_for\_art\_v3\_03’ into release/v08\_36\_00
-   2019-11-05 Kyle Knoepfel : Accommodate breaking changes in lardata.
-   2019-10-31 Lynn Garren : for art v3\_03

larreco v08\_23\_00(#larreco-v08_23_00)
------------------------------------------

-   2019-11-12 Lynn Garren : larreco v08\_23\_00 for larsoft v08\_36\_00
-   2019-11-12 Lynn Garren : Merge branch ‘feature/team\_for\_art\_v3\_03’ into release/v08\_36\_00
-   2019-11-05 Kyle Knoepfel : Upgrade to art 3.03; accomodate breaking changes in lardata
-   2019-10-31 Lynn Garren : for art v3\_03

larsim v08\_16\_00(#larsim-v08_16_00)
----------------------------------------

-   2019-11-12 Lynn Garren : larsim v08\_16\_00 for larsoft v08\_36\_00
-   2019-11-12 Lynn Garren : Merge branch ‘feature/team\_for\_art\_v3\_03’ into release/v08\_36\_00
-   2019-11-04 Kyle Knoepfel : Upgrade to art 3.03
-   2019-10-31 Lynn Garren : for nutools v3\_05\_00

larevt v08\_07\_00(#larevt-v08_07_00)
----------------------------------------

-   2019-11-12 Lynn Garren : larevt v08\_07\_00 for larsoft v08\_36\_00
-   2019-11-12 Lynn Garren : Merge branch ‘feature/team\_for\_art\_v3\_03’ into release/v08\_36\_00
-   2019-10-31 Lynn Garren : for art v3\_03

lardata v08\_10\_00(#lardata-v08_10_00)
------------------------------------------

-   2019-11-12 Lynn Garren : lardata v08\_10\_00 for larsoft v08\_36\_00
-   2019-11-12 Lynn Garren : Merge branch ‘feature/team\_for\_art\_v3\_03’ into release/v08\_36\_00
-   2019-11-06 Kyle Knoepfel : Support CreateAssn w/o requiring producer reference.
-   2019-11-05 Kyle Knoepfel : One more art 3.03 fix.
-   2019-11-04 Kyle Knoepfel : Fix ODR violation from latest commit.
-   2019-11-04 Kyle Knoepfel : Adjust code for art 3.03; at least one breaking change in usage patterns.
-   2019-10-31 Chris Green : Suggested changes for art::ProducesCollector.
-   2019-10-31 Lynn Garren : for art\_root\_io v1\_01\_04

larcore v08\_07\_00(#larcore-v08_07_00)
------------------------------------------

-   2019-11-12 Lynn Garren : larcore v08\_07\_00 for larsoft v08\_36\_00
-   2019-11-12 Lynn Garren : Merge branch ‘feature/team\_for\_art\_v3\_03’ into release/v08\_36\_00
-   2019-10-31 Lynn Garren : for art\_root\_io v1\_01\_04

larpandoracontent v03\_15\_08(#larpandoracontent-v03_15_08)
--------------------------------------------------------------

larsoftobj v08\_22\_00(#larsoftobj-v08_22_00)
------------------------------------------------

-   2019-11-12 Lynn Garren : larsoftobj v08\_22\_00 for larsoft v08\_36\_00
-   2019-11-12 Lynn Garren : product versions
-   2019-11-12 Lynn Garren : Merge branch ‘feature/team\_for\_art\_v3\_03’ into release/v08\_36\_00
-   2019-10-31 Lynn Garren : mrb v3\_03\_02
-   2019-10-31 Lynn Garren : for canvas\_root\_io v1\_04\_01

lardataobj v08\_07\_00(#lardataobj-v08_07_00)
------------------------------------------------

-   2019-11-12 Lynn Garren : lardataobj v08\_07\_00 for larsoft v08\_36\_00
-   2019-11-12 Lynn Garren : Merge branch ‘feature/team\_for\_art\_v3\_03’ into release/v08\_36\_00
-   2019-10-31 Lynn Garren : for canvas\_root\_io v1\_04\_01

lardataalg v08\_09\_00(#lardataalg-v08_09_00)
------------------------------------------------

-   2019-11-12 Lynn Garren : lardataalg v08\_09\_00 for larsoft v08\_36\_00
-   2019-11-12 Lynn Garren : Merge branch ‘feature/team\_for\_art\_v3\_03’ into release/v08\_36\_00
-   2019-10-31 Lynn Garren : for canvas\_root\_io v1\_04\_01

larcorealg v08\_17\_00(#larcorealg-v08_17_00)
------------------------------------------------

-   2019-11-12 Lynn Garren : larcorealg v08\_17\_00 for larsoft v08\_36\_00
-   2019-11-12 Lynn Garren : Merge branch ‘feature/team\_for\_art\_v3\_03’ into release/v08\_36\_00
-   2019-10-31 Lynn Garren : for canvas\_root\_io v1\_04\_01

larcoreobj v08\_07\_00(#larcoreobj-v08_07_00)
------------------------------------------------

-   2019-11-12 Lynn Garren : larcoreobj v08\_07\_00 for larsoft v08\_36\_00
-   2019-10-31 Lynn Garren : for canvas\_root\_io v1\_04\_01

larbatch v01\_51\_10(#larbatch-v01_51_10)
--------------------------------------------

larutils v1\_25\_01(#larutils-v1_25_01)
------------------------------------------
