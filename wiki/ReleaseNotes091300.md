LArSoft v09\_13\_00 Release Notes(#LArSoft-v09_13_00-Release-Notes)
======================================================================

-   **Table of contents**
-   [LArSoft v09\_13\_00 Release Notes](#LArSoft-v09_13_00-Release-Notes)
    -   [Purpose](#Purpose)
    -   [New features](#New-features)
    -   [Bug fixes](#Bug-fixes)
    -   [Updated dependencies](#Updated-dependencies)
-   [Change List](#Change-List)
    -   [larsoft v09\_13\_00](#larsoft-v09_13_00)
    -   [lareventdisplay v09\_00\_18](#lareventdisplay-v09_00_18)
    -   [larexamples v09\_00\_17](#larexamples-v09_00_17)
    -   [larpandora v09\_03\_09](#larpandora-v09_03_09)
    -   [larsimrad v09\_00\_17](#larsimrad-v09_00_17)
    -   [larrecodnn v09\_03\_00](#larrecodnn-v09_03_00)
    -   [larwirecell v09\_01\_10](#larwirecell-v09_01_10)
    -   [larana v09\_00\_18](#larana-v09_00_18)
    -   [larreco v09\_04\_08](#larreco-v09_04_08)
    -   [larsim v09\_07\_05](#larsim-v09_07_05)
    -   [larg4 v09\_02\_01](#larg4-v09_02_01)
    -   [larevt v09\_01\_04](#larevt-v09_01_04)
    -   [lardata v09\_01\_07](#lardata-v09_01_07)
    -   [larcore v09\_01\_00](#larcore-v09_01_00)
    -   [larpandoracontent v03\_22\_03](#larpandoracontent-v03_22_03)
    -   [larsoftobj v09\_04\_00](#larsoftobj-v09_04_00)
    -   [lardataobj v09\_00\_06](#lardataobj-v09_00_06)
    -   [lardataalg v09\_03\_04](#lardataalg-v09_03_04)
    -   [larcorealg v09\_00\_02](#larcorealg-v09_00_02)
    -   [larcoreobj v09\_01\_00](#larcoreobj-v09_01_00)
    -   [webevd v09\_01\_01](#webevd-v09_01_01)
    -   [larbatch v01\_54\_01](#larbatch-v01_54_01)
    -   [larutils v1\_27\_03](#larutils-v1_27_03)

[list of LArSoft releases](LArSoft_release_list)\
Download instructions for [larsoft v09\_13\_00](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v09_13_00/larsoft-v09_13_00.html)\
Download instructions for [just larsoftobj v09\_04\_00](http://scisoft.fnal.gov/scisoft/bundles/larsoftobj/v09_04_00/larsoftobj-v09_04_00.html)

Purpose(#Purpose)
--------------------

-   changes in develop
-   approved PRs

New features(#New-features)
------------------------------

-   larrecodnn PR 13
    -   new directory structure to separate tf, keras, and trtis
    -   migration script: LArRecodnnNewDirs.sh
    -   **argoneutcode needs feature/team\_rearrange\_larrecodnn**
-   larsim PR 58
    -   Add checks for large SCE shifts as a signal to drop charge
    -   Some charge in ProtoDUNE-SP collects on the electron diverters which poke out into the drift volume. These changes allow the space charge service in dunetpc to signal to the simulation to drop this charge from the simulation by putting in very large (\>1E9 cm) offsets without generating error messages. It’s a bit of a hack – one might add a flag from the space charge model to say that the charge disappears instead of just being moved, but that would be a much bigger redesign.

Bug fixes(#Bug-fixes)
------------------------

Updated dependencies(#Updated-dependencies)
----------------------------------------------

Change List(#Change-List)
============================

larsoft v09\_13\_00(#larsoft-v09_13_00)
------------------------------------------

-   2021-01-14 Lynn Garren : larsoft v09\_13\_00 for larsoft v09\_13\_00
-   2021-01-14 Lynn Garren : product versions
-   2021-01-13 Lynn Garren : v09\_13\_00-larrecodnn
-   2021-01-13 Lynn Garren : Merge branch ‘feature/lg\_migrate\_larrecodnn’ into release/v09\_13\_00
-   2021-01-08 Lynn Garren : reflect changes in larrecodnn
-   2021-01-07 Lynn Garren : not ready to go in yet
-   2021-01-05 Lynn Garren : set directory name
-   2021-01-05 Lynn Garren : set directory name
-   2020-12-18 Lynn Garren : new larrecodnn directory structure
-   2020-12-18 Lynn Garren : new larrecodnn directory structure

lareventdisplay v09\_00\_18(#lareventdisplay-v09_00_18)
----------------------------------------------------------

-   2021-01-14 Lynn Garren : lareventdisplay v09\_00\_18 for larsoft v09\_13\_00

larexamples v09\_00\_17(#larexamples-v09_00_17)
--------------------------------------------------

-   2021-01-14 Lynn Garren : larexamples v09\_00\_17 for larsoft v09\_13\_00

larpandora v09\_03\_09(#larpandora-v09_03_09)
------------------------------------------------

-   2021-01-14 Lynn Garren : larpandora v09\_03\_09 for larsoft v09\_13\_00

larsimrad v09\_00\_17(#larsimrad-v09_00_17)
----------------------------------------------

-   2021-01-14 Lynn Garren : larsimrad v09\_00\_17 for larsoft v09\_13\_00

larrecodnn v09\_03\_00(#larrecodnn-v09_03_00)
------------------------------------------------

-   2021-01-14 Lynn Garren : add missing library
-   2021-01-14 Lynn Garren : larrecodnn v09\_03\_00 for larsoft v09\_13\_00
-   2021-01-13 Lynn Garren : Merge branch ‘mhlswang-develop’ into release/v09\_13\_00
-   2021-01-07 mhlswang : minor fixes for clang missed in last update
-   2021-01-07 mhlswang : additional restructing and minor fix for clang compatibility
-   2020-12-09 mhlswang : pared down Modules CMakeLists
-   2020-12-07 mhlswang : updated top level CMakeLists.txt
-   2020-12-07 mhlswang : new directory structure to separate tensorflow, trtis, and keras

larwirecell v09\_01\_10(#larwirecell-v09_01_10)
--------------------------------------------------

larana v09\_00\_18(#larana-v09_00_18)
----------------------------------------

-   2021-01-14 Lynn Garren : larana v09\_00\_18 for larsoft v09\_13\_00

larreco v09\_04\_08(#larreco-v09_04_08)
------------------------------------------

-   2021-01-14 Lynn Garren : larreco v09\_04\_08 for larsoft v09\_13\_00

larsim v09\_07\_05(#larsim-v09_07_05)
----------------------------------------

-   2021-01-14 Lynn Garren : larsim v09\_07\_05 for larsoft v09\_13\_00
-   2021-01-13 Lynn Garren : Merge pull request [\#58](/redmine/issues/58 "Feature: Try to make the program write out data files even when SIGINT is sent. (Closed)") from tomjunk/develop
-   2021-01-08 Tom Junk : Merge branch ‘develop’ of [https://github.com/larsoft/larsim](https://github.com/larsoft/larsim) into develop
-   2021-01-08 Tom Junk : Follow Kyle’s suggestion and use a common utility function
-   2020-12-23 Tom Junk : Add checks for large SCE shifts as a signal to drop charge

larg4 v09\_02\_01(#larg4-v09_02_01)
--------------------------------------

larevt v09\_01\_04(#larevt-v09_01_04)
----------------------------------------

lardata v09\_01\_07(#lardata-v09_01_07)
------------------------------------------

larcore v09\_01\_00(#larcore-v09_01_00)
------------------------------------------

larpandoracontent v03\_22\_03(#larpandoracontent-v03_22_03)
--------------------------------------------------------------

larsoftobj v09\_04\_00(#larsoftobj-v09_04_00)
------------------------------------------------

lardataobj v09\_00\_06(#lardataobj-v09_00_06)
------------------------------------------------

lardataalg v09\_03\_04(#lardataalg-v09_03_04)
------------------------------------------------

larcorealg v09\_00\_02(#larcorealg-v09_00_02)
------------------------------------------------

larcoreobj v09\_01\_00(#larcoreobj-v09_01_00)
------------------------------------------------

webevd v09\_01\_01(#webevd-v09_01_01)
----------------------------------------

larbatch v01\_54\_01(#larbatch-v01_54_01)
--------------------------------------------

larutils v1\_27\_03(#larutils-v1_27_03)
------------------------------------------
