LArSoft v09\_09\_02 Release Notes(#LArSoft-v09_09_02-Release-Notes)
======================================================================

-   **Table of contents**
-   [LArSoft v09\_09\_02 Release Notes](#LArSoft-v09_09_02-Release-Notes)
    -   [Purpose](#Purpose)
    -   [New features](#New-features)
    -   [Bug fixes](#Bug-fixes)
    -   [Updated dependencies](#Updated-dependencies)
-   [Change List](#Change-List)
    -   [larsoft v09\_09\_02](#larsoft-v09_09_02)
    -   [lareventdisplay v09\_00\_12](#lareventdisplay-v09_00_12)
    -   [larexamples v09\_00\_11](#larexamples-v09_00_11)
    -   [larg4 v09\_01\_03](#larg4-v09_01_03)
    -   [larpandora v09\_03\_03](#larpandora-v09_03_03)
    -   [larsimrad v09\_00\_11](#larsimrad-v09_00_11)
    -   [larrecodnn v09\_02\_03](#larrecodnn-v09_02_03)
    -   [larwirecell v09\_01\_05](#larwirecell-v09_01_05)
    -   [larana v09\_00\_12](#larana-v09_00_12)
    -   [larreco v09\_04\_02](#larreco-v09_04_02)
    -   [larsim v09\_06\_01](#larsim-v09_06_01)
    -   [larevt v09\_00\_08](#larevt-v09_00_08)
    -   [lardata v09\_01\_03](#lardata-v09_01_03)
    -   [larcore v09\_00\_01](#larcore-v09_00_01)
    -   [larpandoracontent v03\_22\_02](#larpandoracontent-v03_22_02)
    -   [larsoftobj v09\_03\_00](#larsoftobj-v09_03_00)
    -   [lardataobj v09\_00\_02](#lardataobj-v09_00_02)
    -   [lardataalg v09\_03\_00](#lardataalg-v09_03_00)
    -   [larcorealg v09\_00\_01](#larcorealg-v09_00_01)
    -   [larcoreobj v09\_00\_00](#larcoreobj-v09_00_00)
    -   [webevd v09\_00\_08](#webevd-v09_00_08)
    -   [larbatch v01\_54\_01](#larbatch-v01_54_01)
    -   [larutils v1\_27\_02](#larutils-v1_27_02)

[list of LArSoft releases](LArSoft_release_list)\
Download instructions for [larsoft v09\_09\_02](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v09_09_02/larsoft-v09_09_02.html)\
Download instructions for [just larsoftobj v09\_03\_00](http://scisoft.fnal.gov/scisoft/bundles/larsoftobj/v09_03_00/larsoftobj-v09_03_00.html)

Purpose(#Purpose)
--------------------

-   changes in develop
-   approved PRs

New features(#New-features)
------------------------------

Bug fixes(#Bug-fixes)
------------------------

-   larsim PR 47
    -   Fix misleading message in PhotonVisibilityService
    -   A message about photon library build mode appeared even in some cases when library build mode was not active. This simple fix (to an issue that I suspect I may have introduced long ago) prevents that.
-   larana PR 9
    -   Optical hit sliding window algoritmh won’t set hit end to inifinite
    -   Bug fix for a corner case documented in ICARUS GitHub issue 94: SBNSoftware/icaruscode\#94.

Updated dependencies(#Updated-dependencies)
----------------------------------------------

-   mrb v4\_03\_00

Change List(#Change-List)
============================

larsoft v09\_09\_02(#larsoft-v09_09_02)
------------------------------------------

-   2020-11-11 Lynn Garren : larsoft v09\_09\_02 for larsoft v09\_09\_02
-   2020-11-11 Lynn Garren : cannot build libtorch on u18
-   2020-11-11 Lynn Garren : removing mac and slf6
-   2020-11-11 Lynn Garren : product versions

lareventdisplay v09\_00\_12(#lareventdisplay-v09_00_12)
----------------------------------------------------------

-   2020-11-11 Lynn Garren : lareventdisplay v09\_00\_12 for larsoft v09\_09\_02

larexamples v09\_00\_11(#larexamples-v09_00_11)
--------------------------------------------------

-   2020-11-11 Lynn Garren : larexamples v09\_00\_11 for larsoft v09\_09\_02

larg4 v09\_01\_03(#larg4-v09_01_03)
--------------------------------------

larpandora v09\_03\_03(#larpandora-v09_03_03)
------------------------------------------------

-   2020-11-11 Lynn Garren : larpandora v09\_03\_03 for larsoft v09\_09\_02

larsimrad v09\_00\_11(#larsimrad-v09_00_11)
----------------------------------------------

-   2020-11-11 Lynn Garren : larsimrad v09\_00\_11 for larsoft v09\_09\_02

larrecodnn v09\_02\_03(#larrecodnn-v09_02_03)
------------------------------------------------

-   2020-11-11 Lynn Garren : larrecodnn v09\_02\_03 for larsoft v09\_09\_02

larwirecell v09\_01\_05(#larwirecell-v09_01_05)
--------------------------------------------------

larana v09\_00\_12(#larana-v09_00_12)
----------------------------------------

-   2020-11-11 Lynn Garren : larana v09\_00\_12 for larsoft v09\_09\_02
-   2020-11-11 Lynn Garren : Merge pull request \#9 from PetrilloAtWork/feature/gp\_icarusIssue94
-   2020-11-05 Gianluca Petrillo : Optical hit sliding window algoritmh won’t set hit end to inifinite

larreco v09\_04\_02(#larreco-v09_04_02)
------------------------------------------

-   2020-11-11 Lynn Garren : larreco v09\_04\_02 for larsoft v09\_09\_02

larsim v09\_06\_01(#larsim-v09_06_01)
----------------------------------------

-   2020-11-11 Lynn Garren : larsim v09\_06\_01 for larsoft v09\_09\_02
-   2020-11-11 Lynn Garren : Merge pull request \#47 from PetrilloAtWork/patch-1
-   2020-11-03 Gianluca Petrillo : Fix misleading message in PhotonVisibilityService

larevt v09\_00\_08(#larevt-v09_00_08)
----------------------------------------

lardata v09\_01\_03(#lardata-v09_01_03)
------------------------------------------

larcore v09\_00\_01(#larcore-v09_00_01)
------------------------------------------

larpandoracontent v03\_22\_02(#larpandoracontent-v03_22_02)
--------------------------------------------------------------

larsoftobj v09\_03\_00(#larsoftobj-v09_03_00)
------------------------------------------------

lardataobj v09\_00\_02(#lardataobj-v09_00_02)
------------------------------------------------

lardataalg v09\_03\_00(#lardataalg-v09_03_00)
------------------------------------------------

larcorealg v09\_00\_01(#larcorealg-v09_00_01)
------------------------------------------------

larcoreobj v09\_00\_00(#larcoreobj-v09_00_00)
------------------------------------------------

webevd v09\_00\_08(#webevd-v09_00_08)
----------------------------------------

larbatch v01\_54\_01(#larbatch-v01_54_01)
--------------------------------------------

larutils v1\_27\_02(#larutils-v1_27_02)
------------------------------------------
