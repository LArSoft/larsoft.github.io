LArSoft v08\_48\_00 Release Notes(#LArSoft-v08_48_00-Release-Notes)
======================================================================

-   **Table of contents**
-   [LArSoft v08\_48\_00 Release Notes](#LArSoft-v08_48_00-Release-Notes)
    -   [Purpose](#Purpose)
    -   [New features](#New-features)
    -   [Bug fixes](#Bug-fixes)
    -   [Updated dependencies](#Updated-dependencies)
-   [Change List](#Change-List)
    -   [larsoft v08\_48\_00](#larsoft-v08_48_00)
    -   [lareventdisplay v08\_12\_08](#lareventdisplay-v08_12_08)
    -   [larexamples v08\_06\_08](#larexamples-v08_06_08)
    -   [larg4 v08\_12\_06](#larg4-v08_12_06)
    -   [larpandora v08\_12\_00](#larpandora-v08_12_00)
    -   [larrecodnn v08\_01\_01](#larrecodnn-v08_01_01)
    -   [larwirecell v08\_12\_07](#larwirecell-v08_12_07)
    -   [larana v08\_17\_00](#larana-v08_17_00)
    -   [larreco v08\_30\_00](#larreco-v08_30_00)
    -   [larsim v08\_22\_00](#larsim-v08_22_00)
    -   [larevt v08\_11\_00](#larevt-v08_11_00)
    -   [lardata v08\_15\_00](#lardata-v08_15_00)
    -   [larcore v08\_11\_02](#larcore-v08_11_02)
    -   [larpandoracontent v03\_15\_15](#larpandoracontent-v03_15_15)
    -   [larsoftobj v08\_27\_03](#larsoftobj-v08_27_03)
    -   [lardataobj v08\_10\_05](#lardataobj-v08_10_05)
    -   [lardataalg v08\_13\_06](#lardataalg-v08_13_06)
    -   [larcorealg v08\_21\_02](#larcorealg-v08_21_02)
    -   [larcoreobj v08\_10\_04](#larcoreobj-v08_10_04)
    -   [larbatch v01\_52\_02](#larbatch-v01_52_02)
    -   [larutils v1\_25\_08](#larutils-v1_25_08)

[list of LArSoft releases](LArSoft_release_list)\
Download instructions for [larsoft v08\_48\_00](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v08_48_00/larsoft-v08_48_00.html)\
Download instructions for [just larsoftobj v08\_27\_03](http://scisoft.fnal.gov/scisoft/bundles/larsoftobj/v08_27_03/larsoftobj-v08_27_03.html)

Purpose(#Purpose)
--------------------

-   changes in develop
-   approved PRs

New features(#New-features)
------------------------------

-   Changing services from LEGACY to SHARED
    -   [https://indico.fnal.gov/event/23808/contribution/4/material/slides/0.pdf](https://indico.fnal.gov/event/23808/contribution/4/material/slides/0.pdf)
    -   changes in larreco, larana, lardata, larevt, and larsim
    -   **experiments will need feature/knoepfel\_shared\_services**
-   Disable real data checks
    -   larpandora PR 6

Bug fixes(#Bug-fixes)
------------------------

-   fix larrecodnn build
-   lardataalg: add a missing header

Updated dependencies(#Updated-dependencies)
----------------------------------------------

-   geant4reweight v01\_00\_06

Change List(#Change-List)
============================

larsoft v08\_48\_00(#larsoft-v08_48_00)
------------------------------------------

-   2020-03-25 Lynn Garren : larsoft v08\_48\_00 for larsoft v08\_48\_00
-   2020-03-25 Lynn Garren : product versions
-   2020-03-25 Lynn Garren : nulite v3\_06\_02a with geant4reweight v01\_00\_06
-   2020-03-21 Lynn Garren : Merge pull request \#10 from lgarren/feature/lg\_for\_larrecodnn
-   2020-03-21 Lynn Garren : remove some whitespace
-   2020-03-21 Lynn Garren : py2 qual for trtis\_clients
-   2020-03-21 Lynn Garren : build trtis\_clients for py2

lareventdisplay v08\_12\_08(#lareventdisplay-v08_12_08)
----------------------------------------------------------

-   2020-03-25 Lynn Garren : lareventdisplay v08\_12\_08 for larsoft v08\_48\_00

larexamples v08\_06\_08(#larexamples-v08_06_08)
--------------------------------------------------

-   2020-03-25 Lynn Garren : larexamples v08\_06\_08 for larsoft v08\_48\_00

larg4 v08\_12\_06(#larg4-v08_12_06)
--------------------------------------

-   2020-03-25 Lynn Garren : larg4 v08\_12\_06 for larsoft v08\_48\_00

larpandora v08\_12\_00(#larpandora-v08_12_00)
------------------------------------------------

-   2020-03-25 Lynn Garren : larpandora v08\_12\_00 for larsoft v08\_48\_00
-   2020-03-25 Lynn Garren : Merge pull request [\#6](/redmine/issues/6 "Feature: Non-KCA Remediation (New)") from a-d-smith/feature/asmith\_disableRealDataChecks
-   2020-03-24 Andrew Smith : Added FHiCL flag to enable or diable real data checks in PFParticle monitoring module
-   2020-03-24 Andrew Smith : Added FHiCL flag to enable or disable real data checks
-   2020-03-23 Andrew Smith : removed is real data checks

larrecodnn v08\_01\_01(#larrecodnn-v08_01_01)
------------------------------------------------

-   2020-03-25 Lynn Garren : larrecodnn v08\_01\_01 for larsoft v08\_48\_00

larwirecell v08\_12\_07(#larwirecell-v08_12_07)
--------------------------------------------------

-   2020-03-25 Lynn Garren : larwirecell v08\_12\_07 for larsoft v08\_48\_00

larana v08\_17\_00(#larana-v08_17_00)
----------------------------------------

-   2020-03-25 Lynn Garren : larana v08\_17\_00 for larsoft v08\_48\_00
-   2020-03-23 Kyle Knoepfel : Accommodate breaking changes.
-   2020-03-23 Kyle Knoepfel : Apply clang-format.

larreco v08\_30\_00(#larreco-v08_30_00)
------------------------------------------

-   2020-03-25 Lynn Garren : larreco v08\_30\_00 for larsoft v08\_48\_00
-   2020-03-23 Kyle Knoepfel : Accommodate breaking changes.
-   2020-03-23 Kyle Knoepfel : Apply clang-format.

larsim v08\_22\_00(#larsim-v08_22_00)
----------------------------------------

-   2020-03-25 Lynn Garren : larsim v08\_22\_00 for larsoft v08\_48\_00
-   2020-03-24 Kyle Knoepfel : Whitespace fixes.
-   2020-03-23 Kyle Knoepfel : Add missing header file.

larevt v08\_11\_00(#larevt-v08_11_00)
----------------------------------------

-   2020-03-25 Lynn Garren : larevt v08\_11\_00 for larsoft v08\_48\_00
-   2020-03-23 Kyle Knoepfel : Make SpaceChargeService SHARED.
-   2020-03-23 Kyle Knoepfel : Apply clang-format.

lardata v08\_15\_00(#lardata-v08_15_00)
------------------------------------------

-   2020-03-25 Lynn Garren : lardata v08\_15\_00 for larsoft v08\_48\_00
-   2020-03-23 Kyle Knoepfel : Make various services SHARED.
-   2020-03-23 Kyle Knoepfel : Apply clang-format.

larcore v08\_11\_02(#larcore-v08_11_02)
------------------------------------------

larpandoracontent v03\_15\_15(#larpandoracontent-v03_15_15)
--------------------------------------------------------------

larsoftobj v08\_27\_03(#larsoftobj-v08_27_03)
------------------------------------------------

-   2020-03-25 Lynn Garren : larsoftobj v08\_27\_03 for larsoft v08\_48\_00
-   2020-03-25 Lynn Garren : product versions
-   2020-03-25 Lynn Garren : whitespace

lardataobj v08\_10\_05(#lardataobj-v08_10_05)
------------------------------------------------

lardataalg v08\_13\_06(#lardataalg-v08_13_06)
------------------------------------------------

-   2020-03-25 Lynn Garren : lardataalg v08\_13\_06 for larsoft v08\_48\_00
-   2020-03-23 Lynn Garren : Merge pull request [\#4](/redmine/issues/4 "Feature: Postgres database  (Closed)") from PetrilloAtWork/develop
-   2020-03-18 Gianluca Petrillo : Added missing header.

larcorealg v08\_21\_02(#larcorealg-v08_21_02)
------------------------------------------------

larcoreobj v08\_10\_04(#larcoreobj-v08_10_04)
------------------------------------------------

larbatch v01\_52\_02(#larbatch-v01_52_02)
--------------------------------------------

larutils v1\_25\_08(#larutils-v1_25_08)
------------------------------------------
