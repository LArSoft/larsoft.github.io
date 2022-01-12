LArSoft v08\_22\_00\_01 Release Notes
=============================================================================

-   **Table of contents**
-   [LArSoft v08\_22\_00\_01 Release Notes](#LArSoft-v08_22_00_01-Release-Notes)
    -   [Purpose](#Purpose)
    -   [New features](#New-features)
    -   [Bug fixes](#Bug-fixes)
    -   [Updated dependencies](#Updated-dependencies)
-   [Change List](#Change-List)
    -   [larsoft v08\_22\_00\_01](#larsoft-v08_22_00_01)
    -   [lareventdisplay v08\_07\_04\_01](#lareventdisplay-v08_07_04_01)
    -   [larexamples v08\_02\_07\_01](#larexamples-v08_02_07_01)
    -   [larg4 v08\_03\_06\_01](#larg4-v08_03_06_01)
    -   [larpandora v08\_07\_03\_01](#larpandora-v08_07_03_01)
    -   [larwirecell v08\_05\_06\_01](#larwirecell-v08_05_06_01)
    -   [larana v08\_09\_01\_01](#larana-v08_09_01_01)
    -   [larreco v08\_14\_01\_01](#larreco-v08_14_01_01)
    -   [larsim v08\_08\_00\_01](#larsim-v08_08_00_01)
    -   [larevt v08\_05\_01\_01](#larevt-v08_05_01_01)
    -   [lardata v08\_05\_03\_01](#lardata-v08_05_03_01)
    -   [larcore v08\_04\_04\_01](#larcore-v08_04_04_01)
    -   [larpandoracontent v03\_14\_09](#larpandoracontent-v03_14_09)
    -   [larsoftobj v08\_15\_02\_01](#larsoftobj-v08_15_02_01)
    -   [lardataobj v08\_04\_03\_01](#lardataobj-v08_04_03_01)
    -   [lardataalg v08\_07\_02\_01](#lardataalg-v08_07_02_01)
    -   [larcorealg v08\_12\_01\_01](#larcorealg-v08_12_01_01)
    -   [larcoreobj v08\_05\_01\_01](#larcoreobj-v08_05_01_01)
    -   [larbatch v01\_51\_04](#larbatch-v01_51_04)
    -   [larutils v1\_23\_18](#larutils-v1_23_18)

[list of LArSoft releases](LArSoft_release_list)
Download instructions for [larsoft v08\_22\_00\_01](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v08_22_00_01/larsoft-v08_22_00_01.html)
Download instructions for [just larsoftobj v08\_15\_02\_01](http://scisoft.fnal.gov/scisoft/bundles/larsoftobj/v08_15_02_01/larsoftobj-v08_15_02_01.html)

Purpose
--------------------

-   **This is a test release**
-   This release is the same as v08\_22\_00 with two exceptions.
    -   First, this release is built with genie v3\_00\_04a.
    -   Second, this release has an option to build with python v3\_7\_2

New features
------------------------------

-   It is possible to build this release with either python v2\_7\_15a or python v3\_7\_2.
-   All products built with python v3\_7\_2 will have an extra “py3” qualifier.
    -   To work with python v2\_7\_15a:
        -   setup larsoft v08\_22\_00\_01 -q e17:prof
    -   To work with python v3\_7\_2:
        -   setup larsoft v08\_22\_00\_01 -q e17:py3:prof
-   Please see branches feature/team\_for\_v08\_22\_00\_01 in the experiment code.

Bug fixes
------------------------

Updated dependencies
----------------------------------------------

-   genie v3\_00\_04a

Change List
============================

larsoft v08\_22\_00\_01
-------------------------------------------------

-   2019-06-14 Lynn Garren : larsoft v08\_22\_00\_01 for larsoft v08\_22\_00\_01
-   2019-06-13 Lynn Garren : add py3 support
-   2019-06-12 Lynn Garren : for genie v3 and py3 support

lareventdisplay v08\_07\_04\_01
-----------------------------------------------------------------

-   2019-06-14 Lynn Garren : lareventdisplay v08\_07\_04\_01 for larsoft v08\_22\_00\_01

larexamples v08\_02\_07\_01
---------------------------------------------------------

-   2019-06-14 Lynn Garren : larexamples v08\_02\_07\_01 for larsoft v08\_22\_00\_01

larg4 v08\_03\_06\_01
---------------------------------------------

-   2019-06-14 Lynn Garren : larg4 v08\_03\_06\_01 for larsoft v08\_22\_00\_01
-   2019-06-12 Lynn Garren : for genie v3

larpandora v08\_07\_03\_01
-------------------------------------------------------

-   2019-06-14 Lynn Garren : larpandora v08\_07\_03\_01 for larsoft v08\_22\_00\_01

larwirecell v08\_05\_06\_01
---------------------------------------------------------

-   2019-06-14 Lynn Garren : larwirecell v08\_05\_06\_01 for larsoft v08\_22\_00\_01
-   2019-06-12 Lynn Garren : wirecell v0\_12\_3 with py3 support

larana v08\_09\_01\_01
-----------------------------------------------

-   2019-06-14 Lynn Garren : larana v08\_09\_01\_01 for larsoft v08\_22\_00\_01

larreco v08\_14\_01\_01
-------------------------------------------------

-   2019-06-14 Lynn Garren : larreco v08\_14\_01\_01 for larsoft v08\_22\_00\_01

larsim v08\_08\_00\_01
-----------------------------------------------

-   2019-06-14 Lynn Garren : larsim v08\_08\_00\_01 for larsoft v08\_22\_00\_01
-   2019-06-12 Lynn Garren : nugen v1\_01\_01 and cmake updates
-   2019-06-12 Lynn Garren : pulling more from Steve Gardiner
-   2019-06-12 Lynn Garren : deal with name change
-   2019-06-12 Lynn Garren : use with genie 3
-   2019-06-12 Lynn Garren : working with genie 3

larevt v08\_05\_01\_01
-----------------------------------------------

-   2019-06-14 Lynn Garren : larevt v08\_05\_01\_01 for larsoft v08\_22\_00\_01

lardata v08\_05\_03\_01
-------------------------------------------------

-   2019-06-14 Lynn Garren : lardata v08\_05\_03\_01 for larsoft v08\_22\_00\_01

larcore v08\_04\_04\_01
-------------------------------------------------

-   2019-06-14 Lynn Garren : larcore v08\_04\_04\_01 for larsoft v08\_22\_00\_01

larpandoracontent v03\_14\_09
--------------------------------------------------------------

-   2019-06-17 Lynn Garren : remove status comment
-   2019-06-17 Lynn Garren : fix how we find cetbuildtools
-   2019-06-14 Lynn Garren : larpandoracontent v03\_14\_09 for larsoft v08\_22\_00\_01
-   2019-06-13 Lynn Garren : larpandoracontent v03\_14\_09 with py3 build options
-   2019-06-12 Lynn Garren : use pandora v03\_11\_01b with py3 support

larsoftobj v08\_15\_02\_01
-------------------------------------------------------

-   2019-06-14 Lynn Garren : larsoftobj v08\_15\_02\_01 for larsoft v08\_22\_00\_01
-   2019-06-13 Lynn Garren : add py3 support

lardataobj v08\_04\_03\_01
-------------------------------------------------------

-   2019-06-14 Lynn Garren : lardataobj v08\_04\_03\_01 for larsoft v08\_22\_00\_01
-   2019-06-12 Lynn Garren : nusimdata v1\_17\_02

lardataalg v08\_07\_02\_01
-------------------------------------------------------

-   2019-06-14 Lynn Garren : lardataalg v08\_07\_02\_01 for larsoft v08\_22\_00\_01

larcorealg v08\_12\_01\_01
-------------------------------------------------------

-   2019-06-14 Lynn Garren : larcorealg v08\_12\_01\_01 for larsoft v08\_22\_00\_01

larcoreobj v08\_05\_01\_01
-------------------------------------------------------

-   2019-06-14 Lynn Garren : larcoreobj v08\_05\_01\_01 for larsoft v08\_22\_00\_01

larbatch v01\_51\_04
--------------------------------------------

larutils v1\_23\_18
------------------------------------------
