LArSoft v09\_39\_00 Release Notes(#LArSoft-v09_39_00-Release-Notes)
======================================================================

-   **Table of contents**
-   [LArSoft v09\_39\_00 Release Notes](#LArSoft-v09_39_00-Release-Notes)
    -   [Purpose](#Purpose)
    -   [Experiment code](#Experiment-code)
    -   [Updated dependencies](#Updated-dependencies)
-   [Change List](#Change-List)
    -   [larsoft v09\_39\_00](#larsoft-v09_39_00)
    -   [lareventdisplay v09\_03\_00](#lareventdisplay-v09_03_00)
    -   [larexamples v09\_03\_00](#larexamples-v09_03_00)
    -   [larpandora v09\_11\_00](#larpandora-v09_11_00)
    -   [larsimrad v09\_04\_00](#larsimrad-v09_04_00)
    -   [larrecodnn v09\_10\_00](#larrecodnn-v09_10_00)
    -   [larwirecell v09\_05\_00](#larwirecell-v09_05_00)
    -   [larana v09\_04\_00](#larana-v09_04_00)
    -   [larreco v09\_08\_00](#larreco-v09_08_00)
    -   [larsim v09\_20\_00](#larsim-v09_20_00)
    -   [larg4 v09\_07\_00](#larg4-v09_07_00)
    -   [larevt v09\_04\_00](#larevt-v09_04_00)
    -   [lardata v09\_05\_00](#lardata-v09_05_00)
    -   [larcore v09\_04\_00](#larcore-v09_04_00)
    -   [larpandoracontent v03\_26\_02](#larpandoracontent-v03_26_02)
    -   [larsoftobj v09\_14\_00](#larsoftobj-v09_14_00)
    -   [lardataobj v09\_04\_00](#lardataobj-v09_04_00)
    -   [lardataalg v09\_09\_00](#lardataalg-v09_09_00)
    -   [larcorealg v09\_05\_00](#larcorealg-v09_05_00)
    -   [larcoreobj v09\_04\_00](#larcoreobj-v09_04_00)
    -   [webevd v09\_08\_00](#webevd-v09_08_00)
    -   [larbatch v01\_56\_02](#larbatch-v01_56_02)
    -   [larutils v1\_28\_02](#larutils-v1_28_02)

[list of LArSoft releases](LArSoft_release_list)\
Download instructions for [larsoft v09\_39\_00](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v09_39_00/larsoft-v09_39_00.html)\
Download instructions for [just larsoftobj v09\_14\_00](http://scisoft.fnal.gov/scisoft/bundles/larsoftobj/v09_14_00/larsoftobj-v09_14_00.html)

Purpose(#Purpose)
--------------------

-   use nutools v3\_12\_01 and related packages
    -   nutools v3\_12\_01 and related packages are built with cetmodules
-   use find\_package() and target libraries in the larsoft CMakeLists.txt files

Experiment code(#Experiment-code)
------------------------------------

-   feature branch feature/lg\_nutools\_v3\_12\_00 is provided for experiment code
-   Script updateLAr\_v3\_39.sh is also available. This is not a replacement for the feature branches.

Updated dependencies(#Updated-dependencies)
----------------------------------------------

-   ifdh\_art v2\_13\_00
    -   restructured to match conventions
    -   headers should now be included with the full path.
-   nutools v3\_12\_01
-   nusimdata v1\_25\_01
-   nuevdb v1\_06\_01
-   nug4 v1\_12\_01
-   geant4reweight v01\_11\_00
-   nugen v1\_15\_01
-   nurandom v1\_08\_01
-   ppfx v02\_14\_06
-   cetbuildtools v8\_18\_09

Change List(#Change-List)
============================

larsoft v09\_39\_00(#larsoft-v09_39_00)
------------------------------------------

-   2021-12-06 Lynn Garren : also cmake v3\_21\_4
-   2021-12-06 Lynn Garren : need cmake v3\_22\_0
-   2021-12-06 Lynn Garren : larsoft v09\_39\_00 for larsoft v09\_39\_00
-   2021-12-06 Lynn Garren : larsoft v09\_39\_00 for larsoft v09\_39\_00
-   2021-12-06 Lynn Garren : product list
-   2021-12-06 Lynn Garren : add extension
-   2021-12-06 Lynn Garren : update scripts for larsoft v09\_39\_00

lareventdisplay v09\_03\_00(#lareventdisplay-v09_03_00)
----------------------------------------------------------

-   2021-12-06 Lynn Garren : lareventdisplay v09\_03\_00 for larsoft v09\_39\_00
-   2021-12-06 Lynn Garren : lareventdisplay v09\_03\_00 for larsoft v09\_39\_00
-   2021-12-04 Lynn Garren : use find\_package
-   2021-12-03 Lynn Garren : update library names

larexamples v09\_03\_00(#larexamples-v09_03_00)
--------------------------------------------------

-   2021-12-06 Lynn Garren : larexamples v09\_03\_00 for larsoft v09\_39\_00
-   2021-12-06 Lynn Garren : larexamples v09\_03\_00 for larsoft v09\_39\_00
-   2021-12-04 Lynn Garren : use find\_package
-   2021-12-04 Lynn Garren : there is only a dictionary here
-   2021-12-04 Lynn Garren : update library names

larpandora v09\_11\_00(#larpandora-v09_11_00)
------------------------------------------------

-   2021-12-06 Lynn Garren : larpandora v09\_11\_00 for larsoft v09\_39\_00
-   2021-12-06 Lynn Garren : larpandora v09\_11\_00 for larsoft v09\_39\_00
-   2021-12-03 Lynn Garren : use find\_package
-   2021-12-03 Lynn Garren : update library names

larsimrad v09\_04\_00(#larsimrad-v09_04_00)
----------------------------------------------

-   2021-12-06 Lynn Garren : larsimrad v09\_04\_00 for larsoft v09\_39\_00
-   2021-12-06 Lynn Garren : larsimrad v09\_04\_00 for larsoft v09\_39\_00
-   2021-12-03 Lynn Garren : using find\_package
-   2021-12-03 Lynn Garren : update library names

larrecodnn v09\_10\_00(#larrecodnn-v09_10_00)
------------------------------------------------

-   2021-12-06 Lynn Garren : larrecodnn v09\_10\_00 for larsoft v09\_39\_00
-   2021-12-06 Lynn Garren : larrecodnn v09\_10\_00 for larsoft v09\_39\_00
-   2021-12-04 Lynn Garren : use find\_package
-   2021-12-03 Lynn Garren : update library names

larwirecell v09\_05\_00(#larwirecell-v09_05_00)
--------------------------------------------------

-   2021-12-06 Lynn Garren : larwirecell v09\_05\_00 for larsoft v09\_39\_00
-   2021-12-06 Lynn Garren : larwirecell v09\_05\_00 for larsoft v09\_39\_00
-   2021-12-03 Lynn Garren : use find\_package
-   2021-12-03 Lynn Garren : update library names

larana v09\_04\_00(#larana-v09_04_00)
----------------------------------------

-   2021-12-06 Lynn Garren : larana v09\_04\_00 for larsoft v09\_39\_00
-   2021-12-06 Lynn Garren : larana v09\_04\_00 for larsoft v09\_39\_00
-   2021-12-04 Lynn Garren : use find\_package
-   2021-12-03 Lynn Garren : update library names

larreco v09\_08\_00(#larreco-v09_08_00)
------------------------------------------

-   2021-12-06 Lynn Garren : larreco v09\_08\_00 for larsoft v09\_39\_00
-   2021-12-06 Lynn Garren : larreco v09\_08\_00 for larsoft v09\_39\_00
-   2021-12-04 Lynn Garren : use find\_package
-   2021-12-03 Lynn Garren : update library names

larsim v09\_20\_00(#larsim-v09_20_00)
----------------------------------------

-   2021-12-06 Lynn Garren : larsim v09\_20\_00 for larsoft v09\_39\_00
-   2021-12-06 Lynn Garren : larsim v09\_20\_00 for larsoft v09\_39\_00
-   2021-12-03 Lynn Garren : using find\_package
-   2021-12-03 Lynn Garren : update library names

larg4 v09\_07\_00(#larg4-v09_07_00)
--------------------------------------

-   2021-12-06 Lynn Garren : larg4 v09\_07\_00 for larsoft v09\_39\_00
-   2021-12-06 Lynn Garren : larg4 v09\_07\_00 for larsoft v09\_39\_00
-   2021-12-04 Lynn Garren : range-v3
-   2021-12-03 Lynn Garren : use find\_package

larevt v09\_04\_00(#larevt-v09_04_00)
----------------------------------------

-   2021-12-06 Lynn Garren : larevt v09\_04\_00 for larsoft v09\_39\_00
-   2021-12-06 Lynn Garren : larevt v09\_04\_00 for larsoft v09\_39\_00
-   2021-12-02 Lynn Garren : use find\_package
-   2021-12-02 Lynn Garren : library names

lardata v09\_05\_00(#lardata-v09_05_00)
------------------------------------------

-   2021-12-06 Lynn Garren : lardata v09\_05\_00 for larsoft v09\_39\_00
-   2021-12-06 Lynn Garren : lardata v09\_05\_00 for larsoft v09\_39\_00
-   2021-12-03 Lynn Garren : use find\_package
-   2021-12-02 Lynn Garren : proper use of find\_package(PostgreSQL
-   2021-12-02 Lynn Garren : using find\_package
-   2021-12-01 Lynn Garren : library names

larcore v09\_04\_00(#larcore-v09_04_00)
------------------------------------------

-   2021-12-06 Lynn Garren : larcore v09\_04\_00 for larsoft v09\_39\_00
-   2021-12-06 Lynn Garren : larcore v09\_04\_00 for larsoft v09\_39\_00
-   2021-12-03 Lynn Garren : use find\_package
-   2021-12-01 Lynn Garren : using find\_package
-   2021-12-01 Lynn Garren : update library names

larpandoracontent v03\_26\_02(#larpandoracontent-v03_26_02)
--------------------------------------------------------------

larsoftobj v09\_14\_00(#larsoftobj-v09_14_00)
------------------------------------------------

-   2021-12-06 Lynn Garren : also cmake v3\_21\_4
-   2021-12-06 Lynn Garren : spell v3\_22\_0 correctly
-   2021-12-06 Lynn Garren : need cmake v3\_22\_00
-   2021-12-06 Lynn Garren : larsoftobj v09\_14\_00 for larsoft v09\_39\_00
-   2021-12-06 Lynn Garren : larsoftobj v09\_14\_00 for larsoft v09\_39\_00
-   2021-12-06 Lynn Garren : product list

lardataobj v09\_04\_00(#lardataobj-v09_04_00)
------------------------------------------------

-   2021-12-06 Lynn Garren : lardataobj v09\_04\_00 for larsoft v09\_39\_00
-   2021-12-06 Lynn Garren : lardataobj v09\_04\_00 for larsoft v09\_39\_00
-   2021-12-03 Lynn Garren : use find\_package
-   2021-12-01 Lynn Garren : use find\_package
-   2021-12-01 Lynn Garren : library names

lardataalg v09\_09\_00(#lardataalg-v09_09_00)
------------------------------------------------

-   2021-12-06 Lynn Garren : lardataalg v09\_09\_00 for larsoft v09\_39\_00
-   2021-12-06 Lynn Garren : lardataalg v09\_09\_00 for larsoft v09\_39\_00
-   2021-12-03 Lynn Garren : use find\_package
-   2021-12-01 Lynn Garren : use find\_package
-   2021-12-01 Lynn Garren : library names

larcorealg v09\_05\_00(#larcorealg-v09_05_00)
------------------------------------------------

-   2021-12-06 Lynn Garren : larcorealg v09\_05\_00 for larsoft v09\_39\_00
-   2021-12-06 Lynn Garren : larcorealg v09\_05\_00 for larsoft v09\_39\_00
-   2021-12-03 Lynn Garren : use find\_package
-   2021-12-01 Lynn Garren : using find\_package where we can
-   2021-12-01 Lynn Garren : update library names

larcoreobj v09\_04\_00(#larcoreobj-v09_04_00)
------------------------------------------------

-   2021-12-06 Lynn Garren : larcoreobj v09\_04\_00 for larsoft v09\_39\_00
-   2021-12-06 Lynn Garren : larcoreobj v09\_04\_00 for larsoft v09\_39\_00
-   2021-12-03 Lynn Garren : use find\_package
-   2021-12-01 Lynn Garren : use find\_package

webevd v09\_08\_00(#webevd-v09_08_00)
----------------------------------------

-   2021-12-06 Lynn Garren : webevd v09\_08\_00 for larsoft v09\_39\_00
-   2021-12-06 Lynn Garren : webevd v09\_08\_00 for larsoft v09\_39\_00
-   2021-12-03 Lynn Garren : use find\_package
-   2021-12-03 Lynn Garren : update library names

larbatch v01\_56\_02(#larbatch-v01_56_02)
--------------------------------------------

larutils v1\_28\_02(#larutils-v1_28_02)
------------------------------------------
