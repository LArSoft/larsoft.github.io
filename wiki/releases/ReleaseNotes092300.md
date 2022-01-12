LArSoft v09\_23\_00 Release Notes
======================================================================

-   **Table of contents**
-   [LArSoft v09\_23\_00 Release Notes](#LArSoft-v09_23_00-Release-Notes)
    -   [Purpose](#Purpose)
    -   [New features](#New-features)
    -   [Bug fixes](#Bug-fixes)
    -   [Updated dependencies](#Updated-dependencies)
-   [Change List](#Change-List)
    -   [larsoft v09\_23\_00](#larsoft-v09_23_00)
    -   [lareventdisplay v09\_01\_09](#lareventdisplay-v09_01_09)
    -   [larexamples v09\_01\_09](#larexamples-v09_01_09)
    -   [larpandora v09\_05\_11](#larpandora-v09_05_11)
    -   [larsimrad v09\_01\_09](#larsimrad-v09_01_09)
    -   [larrecodnn v09\_07\_00](#larrecodnn-v09_07_00)
    -   [larwirecell v09\_02\_07](#larwirecell-v09_02_07)
    -   [larana v09\_02\_05](#larana-v09_02_05)
    -   [larreco v09\_06\_05](#larreco-v09_06_05)
    -   [larsim v09\_13\_02](#larsim-v09_13_02)
    -   [larg4 v09\_03\_06](#larg4-v09_03_06)
    -   [larevt v09\_02\_05](#larevt-v09_02_05)
    -   [lardata v09\_02\_03](#lardata-v09_02_03)
    -   [larcore v09\_02\_01](#larcore-v09_02_01)
    -   [larpandoracontent v03\_22\_11](#larpandoracontent-v03_22_11)
    -   [larsoftobj v09\_05\_03](#larsoftobj-v09_05_03)
    -   [lardataobj v09\_01\_02](#lardataobj-v09_01_02)
    -   [lardataalg v09\_04\_03](#lardataalg-v09_04_03)
    -   [larcorealg v09\_01\_01](#larcorealg-v09_01_01)
    -   [larcoreobj v09\_02\_00](#larcoreobj-v09_02_00)
    -   [webevd v09\_05\_04](#webevd-v09_05_04)
    -   [larbatch v01\_56\_01](#larbatch-v01_56_01)
    -   [larutils v1\_28\_00](#larutils-v1_28_00)

[list of LArSoft releases](LArSoft_release_list)
Download instructions for [larsoft v09\_23\_00](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v09_23_00/larsoft-v09_23_00.html)
Download instructions for [just larsoftobj v09\_05\_03](http://scisoft.fnal.gov/scisoft/bundles/larsoftobj/v09_05_03/larsoftobj-v09_05_03.html)

Purpose
--------------------

-   changes in develop
-   approved PRs
-   **This is the last release with e19 support.**

New features
------------------------------

-   larrecodnn PR 19
    -   changes needed for tensorflow v2\_3\_1a and triton v2\_3\_0b
-   larpandoracontent PR 23
    -   use libtorch v1\_6\_0b

Bug fixes
------------------------

Updated dependencies
----------------------------------------------

-   libtorch v1\_6\_0b
-   protobuf v3\_12\_3a
-   triton v2\_3\_0b
    -   replaces trtis\_clients
-   tensorflow v2\_3\_1a

Change List
============================

larsoft v09\_23\_00
------------------------------------------

-   2021-05-17 Lynn Garren : triton uses grpc
-   2021-05-17 Lynn Garren : larrecodnn v09\_07\_00
-   2021-05-17 Lynn Garren : larsoft v09\_23\_00 for larsoft v09\_23\_00
-   2021-05-17 Lynn Garren : product versions
-   2021-05-17 Lynn Garren : protobuf v3\_12\_3a, libtorch v1\_6\_0b, tensorflow v2\_3\_1a, and triton v2\_3\_0b
-   2021-05-17 Lynn Garren : build triton and drop obsolete py2qual

lareventdisplay v09\_01\_09
----------------------------------------------------------

larexamples v09\_01\_09
--------------------------------------------------

larpandora v09\_05\_11
------------------------------------------------

-   2021-05-17 Lynn Garren : larpandora v09\_05\_11 for larsoft v09\_23\_00

larsimrad v09\_01\_09
----------------------------------------------

larrecodnn v09\_07\_00
------------------------------------------------

-   2021-05-18 Lynn Garren : add missing larcorealg\_Geometry library
-   2021-05-17 Lynn Garren : larrecodnn v09\_07\_00
-   2021-05-17 Lynn Garren : larrecodnn v09\_06\_09 for larsoft v09\_23\_00
-   2021-05-17 Lynn Garren : tensorflow and triton available for all build combos
-   2021-05-17 Lynn Garren : add protobuf and cleanup the cmake
-   2021-05-17 Lynn Garren : deal with c7 warning
-   2021-05-17 Lynn Garren : find grpc
-   2021-05-07 Michael Wang : more changes for Triton v2 api support
-   2021-05-05 Michael WAng : more changes for tensorflow v2
-   2021-05-02 Michael WAng : implement new triton v2 api

larwirecell v09\_02\_07
--------------------------------------------------

larana v09\_02\_05
----------------------------------------

larreco v09\_06\_05
------------------------------------------

larsim v09\_13\_02
----------------------------------------

larg4 v09\_03\_06
--------------------------------------

larevt v09\_02\_05
----------------------------------------

lardata v09\_02\_03
------------------------------------------

larcore v09\_02\_01
------------------------------------------

larpandoracontent v03\_22\_11
--------------------------------------------------------------

-   2021-05-17 Lynn Garren : larpandoracontent v03\_22\_11 for larsoft v09\_23\_00
-   2021-05-17 Lynn Garren : larpandoracontent v03\_22\_11
-   2021-05-13 Lynn Garren : use libtorch v1\_6\_0b to pick up protobuf v3\_12\_3a

larsoftobj v09\_05\_03
------------------------------------------------

lardataobj v09\_01\_02
------------------------------------------------

lardataalg v09\_04\_03
------------------------------------------------

larcorealg v09\_01\_01
------------------------------------------------

larcoreobj v09\_02\_00
------------------------------------------------

webevd v09\_05\_04
----------------------------------------

larbatch v01\_56\_01
--------------------------------------------

larutils v1\_28\_00
------------------------------------------
