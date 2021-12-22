LArSoft v08\_50\_01 Release Notes(#LArSoft-v08_50_01-Release-Notes)
======================================================================

-   **Table of contents**
-   [LArSoft v08\_50\_01 Release Notes](#LArSoft-v08_50_01-Release-Notes)
    -   [Purpose](#Purpose)
    -   [New features](#New-features)
    -   [Bug fixes](#Bug-fixes)
    -   [Updated dependencies](#Updated-dependencies)
-   [Change List](#Change-List)
    -   [larsoft v08\_50\_01](#larsoft-v08_50_01)
    -   [lareventdisplay v08\_12\_12](#lareventdisplay-v08_12_12)
    -   [larexamples v08\_06\_12](#larexamples-v08_06_12)
    -   [larg4 v08\_13\_01](#larg4-v08_13_01)
    -   [larpandora v08\_12\_04](#larpandora-v08_12_04)
    -   [larrecodnn v08\_03\_01](#larrecodnn-v08_03_01)
    -   [larwirecell v08\_12\_10](#larwirecell-v08_12_10)
    -   [larana v08\_17\_04](#larana-v08_17_04)
    -   [larreco v08\_31\_02](#larreco-v08_31_02)
    -   [larsim v08\_22\_04](#larsim-v08_22_04)
    -   [larevt v08\_11\_03](#larevt-v08_11_03)
    -   [lardata v08\_15\_03](#lardata-v08_15_03)
    -   [larcore v08\_11\_04](#larcore-v08_11_04)
    -   [larpandoracontent v03\_15\_16](#larpandoracontent-v03_15_16)
    -   [larsoftobj v08\_27\_06](#larsoftobj-v08_27_06)
    -   [lardataobj v08\_10\_07](#lardataobj-v08_10_07)
    -   [lardataalg v08\_13\_09](#lardataalg-v08_13_09)
    -   [larcorealg v08\_21\_04](#larcorealg-v08_21_04)
    -   [larcoreobj v08\_10\_06](#larcoreobj-v08_10_06)
    -   [larbatch v01\_52\_02](#larbatch-v01_52_02)
    -   [larutils v1\_25\_09](#larutils-v1_25_09)

[list of LArSoft releases](LArSoft_release_list)\
Download instructions for [larsoft v08\_50\_01](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v08_50_01/larsoft-v08_50_01.html)\
Download instructions for [just larsoftobj v08\_27\_06](http://scisoft.fnal.gov/scisoft/bundles/larsoftobj/v08_27_06/larsoftobj-v08_27_06.html)

Purpose(#Purpose)
--------------------

-   changes in develop
-   approved PRs

New features(#New-features)
------------------------------

-   larcoreobj PR 5
    -   setting the stage for eventual inclusion of lardataobj PR 5

Bug fixes(#Bug-fixes)
------------------------

-   larrecodnn PR 4
    -   building with just tensorflow on slf6
    -   building with just trtis\_clients does not yet work
-   larreco PR 11
    -   The 3D machine learning folks have looked at the efficiency for building space points and indicated an issue in a particular region of phase space which turns out the be where “long hits” are dominant. In reviewing the code it seems that the constraints for “long hits” were too tight, as well they were given too much weight in the position calculation. This has been adjusted in this version.
-   larwirecell PR 4
    -   Multithreading improvement to WireCellToolkit\_module

Updated dependencies(#Updated-dependencies)
----------------------------------------------

Change List(#Change-List)
============================

larsoft v08\_50\_01(#larsoft-v08_50_01)
------------------------------------------

-   2020-04-21 Lynn Garren : larsoft v08\_50\_01 for larsoft v08\_50\_01
-   2020-04-21 Lynn Garren : product versions

lareventdisplay v08\_12\_12(#lareventdisplay-v08_12_12)
----------------------------------------------------------

-   2020-04-21 Lynn Garren : lareventdisplay v08\_12\_12 for larsoft v08\_50\_01

larexamples v08\_06\_12(#larexamples-v08_06_12)
--------------------------------------------------

-   2020-04-21 Lynn Garren : larexamples v08\_06\_12 for larsoft v08\_50\_01

larg4 v08\_13\_01(#larg4-v08_13_01)
--------------------------------------

-   2020-04-21 Lynn Garren : larg4 v08\_13\_01 for larsoft v08\_50\_01

larpandora v08\_12\_04(#larpandora-v08_12_04)
------------------------------------------------

-   2020-04-21 Lynn Garren : larpandora v08\_12\_04 for larsoft v08\_50\_01

larrecodnn v08\_03\_01(#larrecodnn-v08_03_01)
------------------------------------------------

-   2020-04-21 Lynn Garren : larrecodnn v08\_03\_01 for larsoft v08\_50\_01
-   2020-04-21 Lynn Garren : Merge pull request [\#4](/redmine/issues/4 "Feature: Postgres database  (Closed)") from lgarren/feature/fix\_build
-   2020-04-21 Lynn Garren : some untanglement of trtis\_clients and tensorflow

larwirecell v08\_12\_10(#larwirecell-v08_12_10)
--------------------------------------------------

-   2020-04-21 Lynn Garren : larwirecell v08\_12\_10 for larsoft v08\_50\_01
-   2020-04-20 Lynn Garren : Merge pull request [\#4](/redmine/issues/4 "Feature: Postgres database  (Closed)") from sabasehrish/feature/team\_for\_mt
-   2020-04-17 Saba Sehrish : removed whitespace error
-   2020-04-13 Saba Sehrish : Merge branch ‘develop’ into feature/team\_for\_mt
-   2020-04-13 Saba Sehrish : Shared producer WireCellToolkit, serlized

larana v08\_17\_04(#larana-v08_17_04)
----------------------------------------

-   2020-04-21 Lynn Garren : larana v08\_17\_04 for larsoft v08\_50\_01

larreco v08\_31\_02(#larreco-v08_31_02)
------------------------------------------

-   2020-04-21 Lynn Garren : larreco v08\_31\_02 for larsoft v08\_50\_01
-   2020-04-21 Lynn Garren : Merge pull request \#11 from SFBayLaser/develop
-   2020-04-20 Tracy Usher : Trim trailing whitespace (which must have been there previously since none of the lines I added had any!)
-   2020-04-20 Tracy Usher : Improve the handling of “long hits” by increasing the allowed overlap area to match the distance from the peak to the nearest snippet edge.

larsim v08\_22\_04(#larsim-v08_22_04)
----------------------------------------

-   2020-04-21 Lynn Garren : larsim v08\_22\_04 for larsoft v08\_50\_01

larevt v08\_11\_03(#larevt-v08_11_03)
----------------------------------------

-   2020-04-21 Lynn Garren : larevt v08\_11\_03 for larsoft v08\_50\_01

lardata v08\_15\_03(#lardata-v08_15_03)
------------------------------------------

-   2020-04-21 Lynn Garren : lardata v08\_15\_03 for larsoft v08\_50\_01

larcore v08\_11\_04(#larcore-v08_11_04)
------------------------------------------

-   2020-04-21 Lynn Garren : larcore v08\_11\_04 for larsoft v08\_50\_01

larpandoracontent v03\_15\_16(#larpandoracontent-v03_15_16)
--------------------------------------------------------------

larsoftobj v08\_27\_06(#larsoftobj-v08_27_06)
------------------------------------------------

-   2020-04-21 Lynn Garren : larsoftobj v08\_27\_06 for larsoft v08\_50\_01
-   2020-04-21 Lynn Garren : product versions

lardataobj v08\_10\_07(#lardataobj-v08_10_07)
------------------------------------------------

-   2020-04-21 Lynn Garren : lardataobj v08\_10\_07 for larsoft v08\_50\_01

lardataalg v08\_13\_09(#lardataalg-v08_13_09)
------------------------------------------------

-   2020-04-21 Lynn Garren : lardataalg v08\_13\_09 for larsoft v08\_50\_01

larcorealg v08\_21\_04(#larcorealg-v08_21_04)
------------------------------------------------

-   2020-04-21 Lynn Garren : larcorealg v08\_21\_04 for larsoft v08\_50\_01

larcoreobj v08\_10\_06(#larcoreobj-v08_10_06)
------------------------------------------------

-   2020-04-21 Lynn Garren : larcoreobj v08\_10\_06 for larsoft v08\_50\_01
-   2020-04-20 Lynn Garren : Merge pull request [\#5](/redmine/issues/5 "Feature: NIMROD extended to Accelerator Division (New)") from plasorak/feature/plasorak-fibonacci
-   2020-01-21 Pierre Lasorak : add fibonacci encoding here

larbatch v01\_52\_02(#larbatch-v01_52_02)
--------------------------------------------

larutils v1\_25\_09(#larutils-v1_25_09)
------------------------------------------
