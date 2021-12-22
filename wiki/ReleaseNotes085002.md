LArSoft v08\_50\_02 Release Notes(#LArSoft-v08_50_02-Release-Notes)
======================================================================

-   **Table of contents**
-   [LArSoft v08\_50\_02 Release Notes](#LArSoft-v08_50_02-Release-Notes)
    -   [Purpose](#Purpose)
    -   [New features](#New-features)
    -   [Bug fixes](#Bug-fixes)
    -   [Updated dependencies](#Updated-dependencies)
-   [Change List](#Change-List)
    -   [larsoft v08\_50\_02](#larsoft-v08_50_02)
    -   [lareventdisplay v08\_12\_13](#lareventdisplay-v08_12_13)
    -   [larexamples v08\_06\_13](#larexamples-v08_06_13)
    -   [larg4 v08\_13\_02](#larg4-v08_13_02)
    -   [larpandora v08\_12\_05](#larpandora-v08_12_05)
    -   [larrecodnn v08\_03\_02](#larrecodnn-v08_03_02)
    -   [larwirecell v08\_12\_11](#larwirecell-v08_12_11)
    -   [larana v08\_17\_05](#larana-v08_17_05)
    -   [larreco v08\_31\_03](#larreco-v08_31_03)
    -   [larsim v08\_22\_05](#larsim-v08_22_05)
    -   [larevt v08\_11\_04](#larevt-v08_11_04)
    -   [lardata v08\_15\_04](#lardata-v08_15_04)
    -   [larcore v08\_11\_05](#larcore-v08_11_05)
    -   [larpandoracontent v03\_15\_16](#larpandoracontent-v03_15_16)
    -   [larsoftobj v08\_27\_06](#larsoftobj-v08_27_06)
    -   [lardataobj v08\_10\_07](#lardataobj-v08_10_07)
    -   [lardataalg v08\_13\_09](#lardataalg-v08_13_09)
    -   [larcorealg v08\_21\_04](#larcorealg-v08_21_04)
    -   [larcoreobj v08\_10\_06](#larcoreobj-v08_10_06)
    -   [larbatch v01\_52\_02](#larbatch-v01_52_02)
    -   [larutils v1\_25\_09](#larutils-v1_25_09)

[list of LArSoft releases](LArSoft_release_list)\
Download instructions for [larsoft v08\_50\_02](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v08_50_02/larsoft-v08_50_02.html)\
Download instructions for [just larsoftobj v08\_27\_06](http://scisoft.fnal.gov/scisoft/bundles/larsoftobj/v08_27_06/larsoftobj-v08_27_06.html)

Purpose(#Purpose)
--------------------

-   changes in develop
-   approved PRs

New features(#New-features)
------------------------------

Bug fixes(#Bug-fixes)
------------------------

-   larcore PR 5
    -   remove ICARUS geometry files
-   larreco PR 12
    -   [\#24318](/redmine/issues/24318 "Bug: larreco/RecoAlg/TrajClusterAlg: Unchecked loop range leads to seg fault (Closed)")

Updated dependencies(#Updated-dependencies)
----------------------------------------------

-   webevd v08\_00\_01
    -   [\#24269](/redmine/issues/24269 "Feature: Explore splitting out WebEVD as a standalone product (Closed)")
    -   Note that webevd is not supported on macOS
    -   webevd is part of the LArSoft github organization, but is not part of the larsoft suite
-   spdlog v1\_5\_0
    -   [\#24279](/redmine/issues/24279 "Support: Add spdlog as ups product (Closed)")

Change List(#Change-List)
============================

larsoft v08\_50\_02(#larsoft-v08_50_02)
------------------------------------------

-   2020-04-29 Lynn Garren : webevd v08\_00\_01 with debug build fix
-   2020-04-28 Lynn Garren : larsoft v08\_50\_02 for larsoft v08\_50\_02
-   2020-04-28 Lynn Garren : product versions
-   2020-04-28 Lynn Garren : webevd
-   2020-04-27 Lynn Garren : fix quals
-   2020-04-27 Lynn Garren : add spdlog to the product stack
-   2020-04-27 Lynn Garren : build webevd

lareventdisplay v08\_12\_13(#lareventdisplay-v08_12_13)
----------------------------------------------------------

-   2020-04-28 Lynn Garren : lareventdisplay v08\_12\_13 for larsoft v08\_50\_02

larexamples v08\_06\_13(#larexamples-v08_06_13)
--------------------------------------------------

-   2020-04-28 Lynn Garren : larexamples v08\_06\_13 for larsoft v08\_50\_02

larg4 v08\_13\_02(#larg4-v08_13_02)
--------------------------------------

-   2020-04-28 Lynn Garren : larg4 v08\_13\_02 for larsoft v08\_50\_02

larpandora v08\_12\_05(#larpandora-v08_12_05)
------------------------------------------------

-   2020-04-28 Lynn Garren : larpandora v08\_12\_05 for larsoft v08\_50\_02

larrecodnn v08\_03\_02(#larrecodnn-v08_03_02)
------------------------------------------------

-   2020-04-28 Lynn Garren : larrecodnn v08\_03\_02 for larsoft v08\_50\_02

larwirecell v08\_12\_11(#larwirecell-v08_12_11)
--------------------------------------------------

-   2020-04-28 Lynn Garren : larwirecell v08\_12\_11 for larsoft v08\_50\_02

larana v08\_17\_05(#larana-v08_17_05)
----------------------------------------

-   2020-04-28 Lynn Garren : larana v08\_17\_05 for larsoft v08\_50\_02

larreco v08\_31\_03(#larreco-v08_31_03)
------------------------------------------

-   2020-04-28 Lynn Garren : larreco v08\_31\_03 for larsoft v08\_50\_02
-   2020-04-22 Lynn Garren : Merge pull request \#12 from brballer/feature/bb\_issue24318
-   2020-04-22 Bruce Baller : Fix bugs.

larsim v08\_22\_05(#larsim-v08_22_05)
----------------------------------------

-   2020-04-28 Lynn Garren : larsim v08\_22\_05 for larsoft v08\_50\_02

larevt v08\_11\_04(#larevt-v08_11_04)
----------------------------------------

-   2020-04-28 Lynn Garren : larevt v08\_11\_04 for larsoft v08\_50\_02

lardata v08\_15\_04(#lardata-v08_15_04)
------------------------------------------

-   2020-04-28 Lynn Garren : lardata v08\_15\_04 for larsoft v08\_50\_02

larcore v08\_11\_05(#larcore-v08_11_05)
------------------------------------------

-   2020-04-28 Lynn Garren : larcore v08\_11\_05 for larsoft v08\_50\_02
-   2020-04-27 Lynn Garren : Merge pull request [\#5](/redmine/issues/5 "Feature: NIMROD extended to Accelerator Division (New)") from PetrilloAtWork/develop
-   2020-04-20 Gianluca Petrillo : Removed old ICARUS geometry.

larpandoracontent v03\_15\_16(#larpandoracontent-v03_15_16)
--------------------------------------------------------------

larsoftobj v08\_27\_06(#larsoftobj-v08_27_06)
------------------------------------------------

lardataobj v08\_10\_07(#lardataobj-v08_10_07)
------------------------------------------------

lardataalg v08\_13\_09(#lardataalg-v08_13_09)
------------------------------------------------

larcorealg v08\_21\_04(#larcorealg-v08_21_04)
------------------------------------------------

larcoreobj v08\_10\_06(#larcoreobj-v08_10_06)
------------------------------------------------

larbatch v01\_52\_02(#larbatch-v01_52_02)
--------------------------------------------

larutils v1\_25\_09(#larutils-v1_25_09)
------------------------------------------
