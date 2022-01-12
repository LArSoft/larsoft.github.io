LArSoft v08_22_00 Release Notes
======================================================================

-   **Table of contents**
-   [LArSoft v08_22_00 Release Notes](#LArSoft-v08_22_00-Release-Notes)
    -   [Purpose](#Purpose)
    -   [New features](#New-features)
    -   [Bug fixes](#Bug-fixes)
    -   [Updated dependencies](#Updated-dependencies)
-   [Change List](#Change-List)
    -   [larsoft v08_22_00](#larsoft-v08_22_00)
    -   [lareventdisplay v08_07_04](#lareventdisplay-v08_07_04)
    -   [larexamples v08_02_07](#larexamples-v08_02_07)
    -   [larg4 v08_03_06](#larg4-v08_03_06)
    -   [larpandora v08_07_03](#larpandora-v08_07_03)
    -   [larwirecell v08_05_06](#larwirecell-v08_05_06)
    -   [larana v08_09_01](#larana-v08_09_01)
    -   [larreco v08_14_01](#larreco-v08_14_01)
    -   [larsim v08_08_00](#larsim-v08_08_00)
    -   [larevt v08_05_01](#larevt-v08_05_01)
    -   [lardata v08_05_03](#lardata-v08_05_03)
    -   [larcore v08_04_04](#larcore-v08_04_04)
    -   [larpandoracontent v03_14_08](#larpandoracontent-v03_14_08)
    -   [larsoftobj v08_15_02](#larsoftobj-v08_15_02)
    -   [lardataobj v08_04_03](#lardataobj-v08_04_03)
    -   [lardataalg v08_07_02](#lardataalg-v08_07_02)
    -   [larcorealg v08_12_01](#larcorealg-v08_12_01)
    -   [larcoreobj v08_05_01](#larcoreobj-v08_05_01)
    -   [larbatch v01_51_04](#larbatch-v01_51_04)
    -   [larutils v1_23_18](#larutils-v1_23_18)

[list of LArSoft releases](LArSoft_release_list)
Download instructions for [larsoft v08_22_00](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v08_22_00/larsoft-v08_22_00.html)
Download instructions for [just larsoftobj v08_15_02](http://scisoft.fnal.gov/scisoft/bundles/larsoftobj/v08_15_02/larsoftobj-v08_15_02.html)

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

-   artg4tk v09_04_03
-   systematicstools v00_03_03
-   nusystematics v00_03_03
-   nutools v3_00_00
-   nurandom v1_00_00
-   nugen v1_00_00
-   nusimdata v1_17_01
-   artdaq_core v3_04_18
-   TRACE v3_14_00
-   ifdh_art v2_08_04
-   art_root_io v1_00_06
-   art v3_02_06
-   canvas_root_io v1_03_04
-   canvas v3_07_04
-   gallery v1_12_04
-   ifdhc v2_4_4

Change List
============================

larsoft v08_22_00
------------------------------------------

-   2019-06-08 Lynn Garren : systematicstools v00_03_03
-   2019-06-07 Lynn Garren : larsoft v08_22_00 for larsoft v08_22_00
-   2019-06-07 Lynn Garren : product versions
-   2019-06-06 Lynn Garren : no reason for larsoft to setup ifdh_art anymore

lareventdisplay v08_07_04
----------------------------------------------------------

-   2019-06-07 Lynn Garren : lareventdisplay v08_07_04 for larsoft v08_22_00
-   2019-06-06 Lynn Garren : using nutools v3 and nugen v1

larexamples v08_02_07
--------------------------------------------------

-   2019-06-07 Lynn Garren : larexamples v08_02_07 for larsoft v08_22_00
-   2019-06-06 Lynn Garren : cleanup

larg4 v08_03_06
--------------------------------------

-   2019-06-07 Lynn Garren : larg4 v08_03_06 for larsoft v08_22_00
-   2019-06-06 Lynn Garren : adding nutools dependency

larpandora v08_07_03
------------------------------------------------

-   2019-06-07 Lynn Garren : larpandora v08_07_03 for larsoft v08_22_00
-   2019-06-06 Lynn Garren : cleanup

larwirecell v08_05_06
--------------------------------------------------

-   2019-06-07 Lynn Garren : larwirecell v08_05_06 for larsoft v08_22_00

larana v08_09_01
----------------------------------------

-   2019-06-07 Lynn Garren : larana v08_09_01 for larsoft v08_22_00
-   2019-06-06 Lynn Garren : using nutools v3 and nurandom v1

larreco v08_14_01
------------------------------------------

-   2019-06-07 Lynn Garren : larreco v08_14_01 for larsoft v08_22_00
-   2019-06-06 Lynn Garren : use nutools v3_00_00 with nurandom v1_00_00
-   2019-06-06 Lynn Garren : get nutools and nurandom from larsim

larsim v08_08_00
----------------------------------------

-   2019-06-07 Lynn Garren : larsim v08_08_00 for larsoft v08_22_00
-   2019-06-06 Lynn Garren : use nutools v3_00_00 with nurandom v1_00_00 and nugen v1_00_00

larevt v08_05_01
----------------------------------------

-   2019-06-07 Lynn Garren : larevt v08_05_01 for larsoft v08_22_00
-   2019-06-06 Lynn Garren : larevt only needs nusimdata

lardata v08_05_03
------------------------------------------

-   2019-06-07 Lynn Garren : lardata v08_05_03 for larsoft v08_22_00
-   2019-06-06 Lynn Garren : lardata does not depend on nutools

larcore v08_04_04
------------------------------------------

-   2019-06-07 Lynn Garren : larcore v08_04_04 for larsoft v08_22_00
-   2019-06-06 Lynn Garren : art_root_io v1_00_06

larpandoracontent v03_14_08
--------------------------------------------------------------

larsoftobj v08_15_02
------------------------------------------------

-   2019-06-07 Lynn Garren : larsoftobj v08_15_02 for larsoft v08_22_00
-   2019-06-07 Lynn Garren : update products
-   2019-06-06 Lynn Garren : gallery v1_12_04

lardataobj v08_04_03
------------------------------------------------

-   2019-06-07 Lynn Garren : lardataobj v08_04_03 for larsoft v08_22_00
-   2019-06-06 Lynn Garren : nusimdata v1_17_01 for art v3_02_06
-   2019-06-03 Richard Diurba : Added association between anab::T0 and anab::CosmicTag

lardataalg v08_07_02
------------------------------------------------

-   2019-06-07 Lynn Garren : lardataalg v08_07_02 for larsoft v08_22_00

larcorealg v08_12_01
------------------------------------------------

-   2019-06-07 Lynn Garren : larcorealg v08_12_01 for larsoft v08_22_00

larcoreobj v08_05_01
------------------------------------------------

-   2019-06-07 Lynn Garren : larcoreobj v08_05_01 for larsoft v08_22_00
-   2019-06-06 Lynn Garren : canvas_root_io v1_03_04

larbatch v01_51_04
--------------------------------------------

-   2019-06-07 Lynn Garren : larbatch v01_51_04 for larsoft v08_22_00
-   2019-05-31 Herbert Greenlee : Convert stage scripts to full path.
-   2019-05-31 Herbert Greenlee : Updates and bug fixes.

larutils v1_23_18
------------------------------------------
