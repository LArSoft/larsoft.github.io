LArSoft v08\_54\_00 Release Notes
======================================================================

-   **Table of contents**
-   [LArSoft v08\_54\_00 Release Notes](#LArSoft-v08_54_00-Release-Notes)
    -   [Purpose](#Purpose)
    -   [Breaking Changes](#Breaking-Changes)
    -   [New features](#New-features)
    -   [Bug fixes](#Bug-fixes)
    -   [Updated dependencies](#Updated-dependencies)
-   [Change List](#Change-List)
    -   [larsoft v08\_54\_00](#larsoft-v08_54_00)
    -   [lareventdisplay v08\_12\_17](#lareventdisplay-v08_12_17)
    -   [larexamples v08\_06\_17](#larexamples-v08_06_17)
    -   [larg4 v08\_14\_03](#larg4-v08_14_03)
    -   [larpandora v08\_12\_09](#larpandora-v08_12_09)
    -   [larrecodnn v08\_04\_02](#larrecodnn-v08_04_02)
    -   [larwirecell v08\_12\_15](#larwirecell-v08_12_15)
    -   [larana v08\_17\_09](#larana-v08_17_09)
    -   [larreco v08\_32\_02](#larreco-v08_32_02)
    -   [larsim v08\_26\_00](#larsim-v08_26_00)
    -   [larevt v08\_11\_08](#larevt-v08_11_08)
    -   [lardata v08\_15\_08](#lardata-v08_15_08)
    -   [larcore v08\_11\_09](#larcore-v08_11_09)
    -   [larpandoracontent v03\_16\_00](#larpandoracontent-v03_16_00)
    -   [larsoftobj v08\_29\_01](#larsoftobj-v08_29_01)
    -   [lardataobj v08\_11\_01](#lardataobj-v08_11_01)
    -   [lardataalg v08\_13\_13](#lardataalg-v08_13_13)
    -   [larcorealg v08\_22\_01](#larcorealg-v08_22_01)
    -   [larcoreobj v08\_12\_00](#larcoreobj-v08_12_00)
    -   [webevd v08\_00\_05](#webevd-v08_00_05)
    -   [larbatch v01\_52\_02](#larbatch-v01_52_02)
    -   [larutils v1\_25\_09](#larutils-v1_25_09)

[list of LArSoft releases](LArSoft_release_list)
Download instructions for [larsoft v08\_54\_00](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v08_54_00/larsoft-v08_54_00.html)
Download instructions for [just larsoftobj v08\_29\_01](http://scisoft.fnal.gov/scisoft/bundles/larsoftobj/v08_29_01/larsoftobj-v08_29_01.html)

Purpose
--------------------

-   changes in develop
-   approved PRs

Breaking Changes
--------------------------------------

-   wirecell v0\_14\_0
    -   dunetpc requires feature/wgu\_wirecell\_release and other changes detailed in [\#24438](/redmine/issues/24438 "Support: New version of wirecell 0.14.0 (Closed)")
    -   uboonedata requires changed detailed in [\#24438](/redmine/issues/24438 "Support: New version of wirecell 0.14.0 (Closed)")

New features
------------------------------

-   larsim PR 18
    -   Added new Correlated ion/scint calculation alg for anticorrelation between electrons and photons

Bug fixes
------------------------

-   larcorealg PR 8
    -   Bug fix for GeometryCore
-   larcorealg PR 7
    -   Bug fixes in geometry test

Updated dependencies
----------------------------------------------

-   nulite v3\_06\_05c
    -   lhapdf v6\_2\_3d
    -   genie v3\_00\_06h
    -   dk2nugenie v01\_08\_00k
    -   ifdhc v2\_5\_6
    -   ifbeam v2\_4\_4
    -   nucondb v2\_4\_4
    -   ifdh\_art v2\_10\_06
    -   nuevdb v1\_02\_06
    -   nugen v1\_10\_07
-   nusystematics v00\_10\_03
-   wirecell v0\_14\_0

Change List
============================

larsoft v08\_54\_00
------------------------------------------

-   2020-05-27 Lynn Garren : larsoft v08\_54\_00 for larsoft v08\_54\_00
-   2020-05-27 Lynn Garren : product versions

lareventdisplay v08\_12\_17
----------------------------------------------------------

-   2020-05-27 Lynn Garren : lareventdisplay v08\_12\_17 for larsoft v08\_54\_00

larexamples v08\_06\_17
--------------------------------------------------

-   2020-05-27 Lynn Garren : larexamples v08\_06\_17 for larsoft v08\_54\_00

larg4 v08\_14\_03
--------------------------------------

-   2020-05-27 Lynn Garren : larg4 v08\_14\_03 for larsoft v08\_54\_00

larpandora v08\_12\_09
------------------------------------------------

-   2020-05-27 Lynn Garren : larpandora v08\_12\_09 for larsoft v08\_54\_00

larrecodnn v08\_04\_02
------------------------------------------------

-   2020-05-27 Lynn Garren : larrecodnn v08\_04\_02 for larsoft v08\_54\_00

larwirecell v08\_12\_15
--------------------------------------------------

-   2020-05-27 Lynn Garren : larwirecell v08\_12\_15 for larsoft v08\_54\_00
-   2020-05-26 Lynn Garren : Merge branch ‘develop’ into feature/wirecell-v0\_14\_0
-   2020-05-26 Lynn Garren : match LARSOFT\_SUITE\_v08\_53\_00
-   2020-05-20 Lynn Garren : wirecell v0\_14\_0

larana v08\_17\_09
----------------------------------------

-   2020-05-27 Lynn Garren : larana v08\_17\_09 for larsoft v08\_54\_00

larreco v08\_32\_02
------------------------------------------

-   2020-05-27 Lynn Garren : larreco v08\_32\_02 for larsoft v08\_54\_00

larsim v08\_26\_00
----------------------------------------

-   2020-05-27 Lynn Garren : larsim v08\_26\_00 for larsoft v08\_54\_00
-   2020-05-26 William Foreman : Removed unused larproperties service
-   2020-05-26 William Foreman : Merge branch ‘develop’ of github.com:LArSoft/larsim into wforeman\_iscalc
-   2020-05-26 William Foreman : Corrected GetScintYieldRatio in correlated alg
-   2020-05-20 William Foreman : Moved ISCalc alg initializations to constructors, cleaned up code
-   2020-05-19 William Foreman : Add ISCalcCorrelated to both LegacyLArG4 and IonizationAndScintillation areas
-   2020-05-19 William Foreman : Have git ignore .swp files
-   2020-05-19 William Foreman : Adding correlated ionization and scintillation alg to LegacyLArG4 area

larevt v08\_11\_08
----------------------------------------

-   2020-05-27 Lynn Garren : larevt v08\_11\_08 for larsoft v08\_54\_00

lardata v08\_15\_08
------------------------------------------

-   2020-05-27 Lynn Garren : lardata v08\_15\_08 for larsoft v08\_54\_00

larcore v08\_11\_09
------------------------------------------

-   2020-05-27 Lynn Garren : larcore v08\_11\_09 for larsoft v08\_54\_00

larpandoracontent v03\_16\_00
--------------------------------------------------------------

larsoftobj v08\_29\_01
------------------------------------------------

-   2020-05-27 Lynn Garren : larsoftobj v08\_29\_01 for larsoft v08\_54\_00
-   2020-05-27 Lynn Garren : product versions

lardataobj v08\_11\_01
------------------------------------------------

-   2020-05-27 Lynn Garren : lardataobj v08\_11\_01 for larsoft v08\_54\_00

lardataalg v08\_13\_13
------------------------------------------------

-   2020-05-27 Lynn Garren : lardataalg v08\_13\_13 for larsoft v08\_54\_00

larcorealg v08\_22\_01
------------------------------------------------

-   2020-05-27 Lynn Garren : larcorealg v08\_22\_01 for larsoft v08\_54\_00
-   2020-05-27 Lynn Garren : Merge pull request \#8 from PetrilloAtWork/feature/gp\_TPCfrontFaceFix
-   2020-05-27 Gianluca Petrillo : Updated documentation
-   2020-05-27 Gianluca Petrillo : Fix a bug in \`geo::GeometryCore::GetTPCFrontFaceCenter()\`.
-   2020-05-22 Lynn Garren : Merge pull request \#7 from PetrilloAtWork/feature/gp\_geometryTestFix
-   2020-05-21 Gianluca Petrillo : Fixed bug in wire intersection geometry test.
-   2020-05-21 Gianluca Petrillo : Fixed bug in wire intersection geometry test from typo.
-   2020-04-29 Gianluca Petrillo : Uniformed comment and include guard styles

larcoreobj v08\_12\_00
------------------------------------------------

webevd v08\_00\_05
----------------------------------------

-   2020-05-27 Lynn Garren : webevd v08\_00\_05 for larsoft v08\_54\_00

larbatch v01\_52\_02
--------------------------------------------

larutils v1\_25\_09
------------------------------------------
