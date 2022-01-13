LArSoft v08_54_00 Release Notes
======================================================================

[list of LArSoft releases](LArSoft_release_list)
Download instructions for [larsoft v08_54_00](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v08_54_00/larsoft-v08_54_00.html)
Download instructions for [just larsoftobj v08_29_01](http://scisoft.fnal.gov/scisoft/bundles/larsoftobj/v08_29_01/larsoftobj-v08_29_01.html)

Purpose
--------------------

-   changes in develop
-   approved PRs

Breaking Changes
--------------------------------------

-   wirecell v0_14_0
    -   dunetpc requires feature/wgu_wirecell_release and other changes detailed in [redmine issue 24438](https://cdcvs.fnal.gov/redmine/issues/24438)
    -   uboonedata requires changed detailed in [redmine issue 24438](https://cdcvs.fnal.gov/redmine/issues/24438)

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

-   nulite v3_06_05c
    -   lhapdf v6_2_3d
    -   genie v3_00_06h
    -   dk2nugenie v01_08_00k
    -   ifdhc v2_5_6
    -   ifbeam v2_4_4
    -   nucondb v2_4_4
    -   ifdh_art v2_10_06
    -   nuevdb v1_02_06
    -   nugen v1_10_07
-   nusystematics v00_10_03
-   wirecell v0_14_0

Change List
============================

larsoft v08_54_00
------------------------------------------

-   2020-05-27 Lynn Garren : larsoft v08_54_00 for larsoft v08_54_00
-   2020-05-27 Lynn Garren : product versions

lareventdisplay v08_12_17
----------------------------------------------------------

-   2020-05-27 Lynn Garren : lareventdisplay v08_12_17 for larsoft v08_54_00

larexamples v08_06_17
--------------------------------------------------

-   2020-05-27 Lynn Garren : larexamples v08_06_17 for larsoft v08_54_00

larg4 v08_14_03
--------------------------------------

-   2020-05-27 Lynn Garren : larg4 v08_14_03 for larsoft v08_54_00

larpandora v08_12_09
------------------------------------------------

-   2020-05-27 Lynn Garren : larpandora v08_12_09 for larsoft v08_54_00

larrecodnn v08_04_02
------------------------------------------------

-   2020-05-27 Lynn Garren : larrecodnn v08_04_02 for larsoft v08_54_00

larwirecell v08_12_15
--------------------------------------------------

-   2020-05-27 Lynn Garren : larwirecell v08_12_15 for larsoft v08_54_00
-   2020-05-26 Lynn Garren : Merge branch ‘develop’ into feature/wirecell-v0_14_0
-   2020-05-26 Lynn Garren : match LARSOFT_SUITE_v08_53_00
-   2020-05-20 Lynn Garren : wirecell v0_14_0

larana v08_17_09
----------------------------------------

-   2020-05-27 Lynn Garren : larana v08_17_09 for larsoft v08_54_00

larreco v08_32_02
------------------------------------------

-   2020-05-27 Lynn Garren : larreco v08_32_02 for larsoft v08_54_00

larsim v08_26_00
----------------------------------------

-   2020-05-27 Lynn Garren : larsim v08_26_00 for larsoft v08_54_00
-   2020-05-26 William Foreman : Removed unused larproperties service
-   2020-05-26 William Foreman : Merge branch ‘develop’ of github.com:LArSoft/larsim into wforeman_iscalc
-   2020-05-26 William Foreman : Corrected GetScintYieldRatio in correlated alg
-   2020-05-20 William Foreman : Moved ISCalc alg initializations to constructors, cleaned up code
-   2020-05-19 William Foreman : Add ISCalcCorrelated to both LegacyLArG4 and IonizationAndScintillation areas
-   2020-05-19 William Foreman : Have git ignore .swp files
-   2020-05-19 William Foreman : Adding correlated ionization and scintillation alg to LegacyLArG4 area

larevt v08_11_08
----------------------------------------

-   2020-05-27 Lynn Garren : larevt v08_11_08 for larsoft v08_54_00

lardata v08_15_08
------------------------------------------

-   2020-05-27 Lynn Garren : lardata v08_15_08 for larsoft v08_54_00

larcore v08_11_09
------------------------------------------

-   2020-05-27 Lynn Garren : larcore v08_11_09 for larsoft v08_54_00

larpandoracontent v03_16_00
--------------------------------------------------------------

larsoftobj v08_29_01
------------------------------------------------

-   2020-05-27 Lynn Garren : larsoftobj v08_29_01 for larsoft v08_54_00
-   2020-05-27 Lynn Garren : product versions

lardataobj v08_11_01
------------------------------------------------

-   2020-05-27 Lynn Garren : lardataobj v08_11_01 for larsoft v08_54_00

lardataalg v08_13_13
------------------------------------------------

-   2020-05-27 Lynn Garren : lardataalg v08_13_13 for larsoft v08_54_00

larcorealg v08_22_01
------------------------------------------------

-   2020-05-27 Lynn Garren : larcorealg v08_22_01 for larsoft v08_54_00
-   2020-05-27 Lynn Garren : Merge pull request \#8 from PetrilloAtWork/feature/gp_TPCfrontFaceFix
-   2020-05-27 Gianluca Petrillo : Updated documentation
-   2020-05-27 Gianluca Petrillo : Fix a bug in \`geo::GeometryCore::GetTPCFrontFaceCenter()\`.
-   2020-05-22 Lynn Garren : Merge pull request \#7 from PetrilloAtWork/feature/gp_geometryTestFix
-   2020-05-21 Gianluca Petrillo : Fixed bug in wire intersection geometry test.
-   2020-05-21 Gianluca Petrillo : Fixed bug in wire intersection geometry test from typo.
-   2020-04-29 Gianluca Petrillo : Uniformed comment and include guard styles

larcoreobj v08_12_00
------------------------------------------------

webevd v08_00_05
----------------------------------------

-   2020-05-27 Lynn Garren : webevd v08_00_05 for larsoft v08_54_00

larbatch v01_52_02
--------------------------------------------

larutils v1_25_09
------------------------------------------
