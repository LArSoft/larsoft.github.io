LArSoft v08\_62\_00 Release Notes
======================================================================

-   **Table of contents**
-   [LArSoft v08\_62\_00 Release Notes](#LArSoft-v08_62_00-Release-Notes)
    -   [Purpose](#Purpose)
    -   [New features](#New-features)
    -   [Bug fixes](#Bug-fixes)
    -   [Updated dependencies](#Updated-dependencies)
-   [Change List](#Change-List)
    -   [larsoft v08\_62\_00](#larsoft-v08_62_00)
    -   [lareventdisplay v08\_12\_25](#lareventdisplay-v08_12_25)
    -   [larexamples v08\_06\_25](#larexamples-v08_06_25)
    -   [larg4 v08\_15\_00](#larg4-v08_15_00)
    -   [larpandora v08\_13\_05](#larpandora-v08_13_05)
    -   [larsimrad v08\_00\_03](#larsimrad-v08_00_03)
    -   [larrecodnn v08\_06\_05](#larrecodnn-v08_06_05)
    -   [larwirecell v08\_12\_17](#larwirecell-v08_12_17)
    -   [larana v08\_17\_17](#larana-v08_17_17)
    -   [larreco v08\_32\_10](#larreco-v08_32_10)
    -   [larsim v08\_33\_00](#larsim-v08_33_00)
    -   [larevt v08\_12\_01](#larevt-v08_12_01)
    -   [lardata v08\_15\_10](#lardata-v08_15_10)
    -   [larcore v08\_11\_10](#larcore-v08_11_10)
    -   [larpandoracontent v03\_19\_01](#larpandoracontent-v03_19_01)
    -   [larsoftobj v08\_29\_03](#larsoftobj-v08_29_03)
    -   [lardataobj v08\_11\_03](#lardataobj-v08_11_03)
    -   [lardataalg v08\_13\_15](#lardataalg-v08_13_15)
    -   [larcorealg v08\_22\_02](#larcorealg-v08_22_02)
    -   [larcoreobj v08\_12\_01](#larcoreobj-v08_12_01)
    -   [webevd v08\_01\_00](#webevd-v08_01_00)
    -   [larbatch v01\_52\_02](#larbatch-v01_52_02)
    -   [larutils v1\_26\_01](#larutils-v1_26_01)

[list of LArSoft releases](LArSoft_release_list)
Download instructions for [larsoft v08\_62\_00](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v08_62_00/larsoft-v08_62_00.html)
Download instructions for [just larsoftobj v08\_29\_03](http://scisoft.fnal.gov/scisoft/bundles/larsoftobj/v08_29_03/larsoftobj-v08_29_03.html)

Purpose
--------------------

-   use geant4 v4\_10\_6\_p01

New features
------------------------------

-   code changes were only needed in larg4 and larsim
    -   larg4Main\_module.cc : ensure that the Geant4 units table is properly initialized
    -   LArG4Detector\_service.cc: visualization removed

-   The only required change in experiment code is to use this release of larsoft.

Bug fixes
------------------------

Updated dependencies
----------------------------------------------

-   geant4 v4\_10\_6\_p01
-   nug4 v1\_05\_01
-   geant4reweight v01\_01\_01
-   nutools v3\_07\_02
-   artg4tk v10\_00\_02

Change List
============================

larsoft v08\_62\_00
------------------------------------------

-   2020-08-06 Lynn Garren : larsoft v08\_62\_00 for larsoft v08\_62\_00
-   2020-08-06 Lynn Garren : product versions

lareventdisplay v08\_12\_25
----------------------------------------------------------

-   2020-08-06 Lynn Garren : lareventdisplay v08\_12\_25 for larsoft v08\_62\_00

larexamples v08\_06\_25
--------------------------------------------------

-   2020-08-06 Lynn Garren : larexamples v08\_06\_25 for larsoft v08\_62\_00

larg4 v08\_15\_00
--------------------------------------

-   2020-08-06 Lynn Garren : larg4 v08\_15\_00 for larsoft v08\_62\_00
-   2020-08-05 Lynn Garren : Merge branch ‘v08\_55\_00\_g4\_test\_br’ into release/v08\_62\_00
-   2020-06-12 Lynn Garren : larg4 v08\_14\_03\_01 for larsoft v08\_55\_00\_01
-   2020-06-12 Lynn Garren : artg4tk v10\_00\_02 and nug4 v1\_05\_01
-   2020-06-11 Lynn Garren : Merge branch ‘v08\_48\_01\_g4\_test\_br’ into v08\_55\_00\_g4\_test\_br
-   2020-04-09 Lynn Garren : larg4 v08\_12\_07\_02 for larsoft v08\_48\_01\_02
-   2020-04-09 Lynn Garren : Merge pull request \#8 from hanswenzel/mynewbranch
-   2020-04-08 Hans : fix runtime errors, remove all references to visualization
-   2020-04-06 Lynn Garren : larg4 v08\_12\_07\_01 for larsoft v08\_48\_01\_01

larpandora v08\_13\_05
------------------------------------------------

-   2020-08-06 Lynn Garren : larpandora v08\_13\_05 for larsoft v08\_62\_00

larsimrad v08\_00\_03
----------------------------------------------

-   2020-08-06 Lynn Garren : larsimrad v08\_00\_03 for larsoft v08\_62\_00

larrecodnn v08\_06\_05
------------------------------------------------

-   2020-08-06 Lynn Garren : larrecodnn v08\_06\_05 for larsoft v08\_62\_00

larwirecell v08\_12\_17
--------------------------------------------------

larana v08\_17\_17
----------------------------------------

-   2020-08-06 Lynn Garren : larana v08\_17\_17 for larsoft v08\_62\_00

larreco v08\_32\_10
------------------------------------------

-   2020-08-06 Lynn Garren : larreco v08\_32\_10 for larsoft v08\_62\_00

larsim v08\_33\_00
----------------------------------------

-   2020-08-06 Lynn Garren : larsim v08\_33\_00 for larsoft v08\_62\_00

larevt v08\_12\_01
----------------------------------------

lardata v08\_15\_10
------------------------------------------

larcore v08\_11\_10
------------------------------------------

larpandoracontent v03\_19\_01
--------------------------------------------------------------

larsoftobj v08\_29\_03
------------------------------------------------

lardataobj v08\_11\_03
------------------------------------------------

lardataalg v08\_13\_15
------------------------------------------------

larcorealg v08\_22\_02
------------------------------------------------

larcoreobj v08\_12\_01
------------------------------------------------

webevd v08\_01\_00
----------------------------------------

larbatch v01\_52\_02
--------------------------------------------

larutils v1\_26\_01
------------------------------------------
