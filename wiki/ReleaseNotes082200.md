LArSoft v08\_22\_00 Release Notes
======================================================================

-   **Table of contents**
-   [LArSoft v08\_22\_00 Release Notes](#LArSoft-v08_22_00-Release-Notes)
    -   [Purpose](#Purpose)
    -   [New features](#New-features)
    -   [Bug fixes](#Bug-fixes)
    -   [Updated dependencies](#Updated-dependencies)
-   [Change List](#Change-List)
    -   [larsoft v08\_22\_00](#larsoft-v08_22_00)
    -   [lareventdisplay v08\_07\_04](#lareventdisplay-v08_07_04)
    -   [larexamples v08\_02\_07](#larexamples-v08_02_07)
    -   [larg4 v08\_03\_06](#larg4-v08_03_06)
    -   [larpandora v08\_07\_03](#larpandora-v08_07_03)
    -   [larwirecell v08\_05\_06](#larwirecell-v08_05_06)
    -   [larana v08\_09\_01](#larana-v08_09_01)
    -   [larreco v08\_14\_01](#larreco-v08_14_01)
    -   [larsim v08\_08\_00](#larsim-v08_08_00)
    -   [larevt v08\_05\_01](#larevt-v08_05_01)
    -   [lardata v08\_05\_03](#lardata-v08_05_03)
    -   [larcore v08\_04\_04](#larcore-v08_04_04)
    -   [larpandoracontent v03\_14\_08](#larpandoracontent-v03_14_08)
    -   [larsoftobj v08\_15\_02](#larsoftobj-v08_15_02)
    -   [lardataobj v08\_04\_03](#lardataobj-v08_04_03)
    -   [lardataalg v08\_07\_02](#lardataalg-v08_07_02)
    -   [larcorealg v08\_12\_01](#larcorealg-v08_12_01)
    -   [larcoreobj v08\_05\_01](#larcoreobj-v08_05_01)
    -   [larbatch v01\_51\_04](#larbatch-v01_51_04)
    -   [larutils v1\_23\_18](#larutils-v1_23_18)

[list of LArSoft releases](LArSoft_release_list)\
Download instructions for [larsoft v08\_22\_00](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v08_22_00/larsoft-v08_22_00.html)\
Download instructions for [just larsoftobj v08\_15\_02](http://scisoft.fnal.gov/scisoft/bundles/larsoftobj/v08_15_02/larsoftobj-v08_15_02.html)

Purpose
--------------------

-   art 3.02.06
-   nutools 3

New features
------------------------------

-   Using the first release of nutools 3
-   The GENIE interface is now part of nugen
-   NuRandomService is now found in nurandom
-   **This is a [breaking change](Breaking_Changes#nutools-v3_00_00).**
    -   After the setup of nutools 3, run UseNuRandom.sh and/or UseNuGen.sh

Bug fixes
------------------------

Updated dependencies
----------------------------------------------

-   artg4tk v09\_04\_03
-   systematicstools v00\_03\_03
-   nusystematics v00\_03\_03
-   nutools v3\_00\_00
-   nurandom v1\_00\_00
-   nugen v1\_00\_00
-   nusimdata v1\_17\_01
-   artdaq\_core v3\_04\_18
-   TRACE v3\_14\_00
-   ifdh\_art v2\_08\_04
-   art\_root\_io v1\_00\_06
-   art v3\_02\_06
-   canvas\_root\_io v1\_03\_04
-   canvas v3\_07\_04
-   gallery v1\_12\_04
-   ifdhc v2\_4\_4

Change List
============================

larsoft v08\_22\_00
------------------------------------------

-   2019-06-08 Lynn Garren : systematicstools v00\_03\_03
-   2019-06-07 Lynn Garren : larsoft v08\_22\_00 for larsoft v08\_22\_00
-   2019-06-07 Lynn Garren : product versions
-   2019-06-06 Lynn Garren : no reason for larsoft to setup ifdh\_art anymore

lareventdisplay v08\_07\_04
----------------------------------------------------------

-   2019-06-07 Lynn Garren : lareventdisplay v08\_07\_04 for larsoft v08\_22\_00
-   2019-06-06 Lynn Garren : using nutools v3 and nugen v1

larexamples v08\_02\_07
--------------------------------------------------

-   2019-06-07 Lynn Garren : larexamples v08\_02\_07 for larsoft v08\_22\_00
-   2019-06-06 Lynn Garren : cleanup

larg4 v08\_03\_06
--------------------------------------

-   2019-06-07 Lynn Garren : larg4 v08\_03\_06 for larsoft v08\_22\_00
-   2019-06-06 Lynn Garren : adding nutools dependency

larpandora v08\_07\_03
------------------------------------------------

-   2019-06-07 Lynn Garren : larpandora v08\_07\_03 for larsoft v08\_22\_00
-   2019-06-06 Lynn Garren : cleanup

larwirecell v08\_05\_06
--------------------------------------------------

-   2019-06-07 Lynn Garren : larwirecell v08\_05\_06 for larsoft v08\_22\_00

larana v08\_09\_01
----------------------------------------

-   2019-06-07 Lynn Garren : larana v08\_09\_01 for larsoft v08\_22\_00
-   2019-06-06 Lynn Garren : using nutools v3 and nurandom v1

larreco v08\_14\_01
------------------------------------------

-   2019-06-07 Lynn Garren : larreco v08\_14\_01 for larsoft v08\_22\_00
-   2019-06-06 Lynn Garren : use nutools v3\_00\_00 with nurandom v1\_00\_00
-   2019-06-06 Lynn Garren : get nutools and nurandom from larsim

larsim v08\_08\_00
----------------------------------------

-   2019-06-07 Lynn Garren : larsim v08\_08\_00 for larsoft v08\_22\_00
-   2019-06-06 Lynn Garren : use nutools v3\_00\_00 with nurandom v1\_00\_00 and nugen v1\_00\_00

larevt v08\_05\_01
----------------------------------------

-   2019-06-07 Lynn Garren : larevt v08\_05\_01 for larsoft v08\_22\_00
-   2019-06-06 Lynn Garren : larevt only needs nusimdata

lardata v08\_05\_03
------------------------------------------

-   2019-06-07 Lynn Garren : lardata v08\_05\_03 for larsoft v08\_22\_00
-   2019-06-06 Lynn Garren : lardata does not depend on nutools

larcore v08\_04\_04
------------------------------------------

-   2019-06-07 Lynn Garren : larcore v08\_04\_04 for larsoft v08\_22\_00
-   2019-06-06 Lynn Garren : art\_root\_io v1\_00\_06

larpandoracontent v03\_14\_08
--------------------------------------------------------------

larsoftobj v08\_15\_02
------------------------------------------------

-   2019-06-07 Lynn Garren : larsoftobj v08\_15\_02 for larsoft v08\_22\_00
-   2019-06-07 Lynn Garren : update products
-   2019-06-06 Lynn Garren : gallery v1\_12\_04

lardataobj v08\_04\_03
------------------------------------------------

-   2019-06-07 Lynn Garren : lardataobj v08\_04\_03 for larsoft v08\_22\_00
-   2019-06-06 Lynn Garren : nusimdata v1\_17\_01 for art v3\_02\_06
-   2019-06-03 Richard Diurba : Added association between anab::T0 and anab::CosmicTag

lardataalg v08\_07\_02
------------------------------------------------

-   2019-06-07 Lynn Garren : lardataalg v08\_07\_02 for larsoft v08\_22\_00

larcorealg v08\_12\_01
------------------------------------------------

-   2019-06-07 Lynn Garren : larcorealg v08\_12\_01 for larsoft v08\_22\_00

larcoreobj v08\_05\_01
------------------------------------------------

-   2019-06-07 Lynn Garren : larcoreobj v08\_05\_01 for larsoft v08\_22\_00
-   2019-06-06 Lynn Garren : canvas\_root\_io v1\_03\_04

larbatch v01\_51\_04
--------------------------------------------

-   2019-06-07 Lynn Garren : larbatch v01\_51\_04 for larsoft v08\_22\_00
-   2019-05-31 Herbert Greenlee : Convert stage scripts to full path.
-   2019-05-31 Herbert Greenlee : Updates and bug fixes.

larutils v1\_23\_18
------------------------------------------
