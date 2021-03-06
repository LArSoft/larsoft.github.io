# LArSoft v07_05_00 Release Notes



[list of LArSoft releases](LArSoft_release_list)  
Download instructions for [larsoft v07_05_00](https://scisoft.fnal.gov/scisoft/bundles/larsoft/v07_05_00/larsoft-v07_05_00.html)  
Download instructions for [just larsoftobj v07_02_02](https://scisoft.fnal.gov/scisoft/bundles/larsoftobj/v07_02_02/larsoftobj-v07_02_02.html)

## Purpose

-   changes in develop
-   approved feature branches

## New features

-   wirecell improvements
    -   wirecell 0.8.0
    -   larwirecell feature/bviren_wclsdev
    -   requires jsonnet 0.11.2
-   ifdhc v2_3_6
    -   error collecting improvements

## Bug fixes

-   GausHitFinder was taking more memory than necessary
    -   larreco feature/gp_DontStoreGausTF1
    -   expect small changes with no physics meaning

## Updated dependencies

-   wirecell v0_8_0
-   ifdhc v2_3_6
-   nutools v2_24_04
-   ifdh_art v2_06_07

# Change List

## larsoft v07_05_00

-   2018-09-06 Lynn Garren : wirecell and jsonnet
-   2018-09-05 Lynn Garren : larsoft v07_05_00 for larsoft v07_05_00
-   2018-09-05 Lynn Garren : product versions
-   2018-09-05 Lynn Garren : nutools and ifdhc
-   2018-08-29 Lynn Garren : e17

## lareventdisplay v07_01_03

-   2018-09-05 Lynn Garren : lareventdisplay v07_01_03 for larsoft v07_05_00

## larexamples v07_00_06

-   2018-09-05 Lynn Garren : larexamples v07_00_06 for larsoft v07_05_00

## larg4 v07_01_01

-   2018-09-05 Lynn Garren : larg4 v07_01_01 for larsoft v07_05_00
-   2018-09-05 Lynn Garren : find headers

## larpandora v07_01_03

-   2018-09-05 Lynn Garren : larpandora v07_01_03 for larsoft v07_05_00

## larwirecell v07_01_00

-   2018-09-05 Lynn Garren : larwirecell v07_01_00 for larsoft v07_05_00
-   2018-09-05 Lynn Garren : sort out product_deps
-   2018-09-05 Brett Viren : Remove compiler warning, fix input tag usage
-   2018-09-05 Brett Viren : Merge with develop
-   2018-08-31 Brett Viren : Merge branch 'bviren_wclsdev' into feature/bviren_wclsdev
-   2018-08-31 Brett Viren : Fix hard coded instance/label in SimDepoSource to be configurable.
-   2018-08-28 Brett Viren : Move to wire-cell-cfg
-   2018-08-27 Brett Viren : Initial 'full-chain' config. This works mechanically but hasn't been validated for content.
-   2018-08-24 Brett Viren : BlipMaker gives depo times matching MB/LS assumptions.

## larana v07_01_01

-   2018-09-05 Lynn Garren : larana v07_01_01 for larsoft v07_05_00

## larreco v07_03_02

-   2018-09-05 Lynn Garren : larreco v07_03_02 for larsoft v07_05_00
-   2018-09-05 Lynn Garren : larreco v07_03_02 for larsoft v07_05_00
-   2018-09-05 Gianluca Petrillo : PeakFitterGaussian: use provided range rather than fitting function one.
-   2018-09-05 Gianluca Petrillo : Coding cosmetic changes.
-   2018-09-05 Gianluca Petrillo : Using a fit function cache for hit shape fitting.
-   2018-08-31 baller : bug fixes
-   2018-08-30 baller : Fix bug in ID check.

## larsim v07_02_02

-   2018-09-05 Lynn Garren : larsim v07_02_02 for larsoft v07_05_00

## larevt v07_00_06

-   2018-09-05 Lynn Garren : larevt v07_00_06 for larsoft v07_05_00

## lardata v07_00_06

-   2018-09-05 Lynn Garren : lardata v07_00_06 for larsoft v07_05_00

## larcore v07_00_02

## larpandoracontent v03_14_01

## larsoftobj v07_02_02

-   2018-09-05 Lynn Garren : larsoftobj v07_02_02 for larsoft v07_05_00
-   2018-09-05 Lynn Garren : product versions
-   2018-08-29 Lynn Garren : e17

## lardataobj v07_02_02

-   2018-09-05 Lynn Garren : lardataobj v07_02_02 for larsoft v07_05_00
-   2018-09-04 Tingjun Yang : Add slice-cluster association.

## lardataalg v07_00_02

## larcorealg v07_01_01

## larcoreobj v07_00_01

## larbatch v01_44_01

-   2018-09-05 Lynn Garren : larbatch v01_44_01 for larsoft v07_05_00
-   2018-08-31 Herbert Greenlee : Optimize single run selection.
-   2018-08-31 Herbert Greenlee : Merge branch 'develop' of ssh://cdcvs.fnal.gov/cvs/projects/larbatch into develop
-   2018-08-31 Herbert Greenlee : Handle use of multiple fcls with initial generator stage for histogram files.

## larutils v1_23_01

-   2018-09-05 Lynn Garren : larutils v1_23_01 for larsoft v07_05_00
-   2018-08-31 Tingjun Yang : Fix manifest name.
-   2018-08-31 Tingjun Yang : updates.
