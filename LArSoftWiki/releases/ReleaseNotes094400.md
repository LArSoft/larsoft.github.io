# LArSoft v09_44_00 Release Notes



[list of LArSoft releases](LArSoft_release_list)  
Download instructions for [larsoft v09_44_00](https://scisoft.fnal.gov/scisoft/bundles/larsoft/v09_44_00/larsoft-v09_44_00.html)  
Download instructions for [just larsoftobj v09_17_00](https://scisoft.fnal.gov/scisoft/bundles/larsoftobj/v09_17_00/larsoftobj-v09_17_00.html)

## Purpose

-   changes in develop
-   approved PRs

## New features

-   larg4 PR 36
    -   This release contains the following changes:
        -   new larg4/Core/larg4SingleGen_module.cc: detector agnostic single particle generator
        -   larg4/Core/CMakeLists: include larg4SingleGen_module
    -   fcl files have been repaired to use new ParticleListAction defaults and to use larg4SingleGen
        -   modified: fcl/testlarg4.fcl
        -   modified: fcl/testmctruth.fcl
    -   larg4/Services/LArG4Detector_service.cc : set xml schema evaluation to false
-   larbatch PR 18
    -   build with cetmodules

## Bug fixes

## Updated dependencies

-   ifdhc v2_6_2
    -   see \#26709
    -   note that ifdhc_config v2_6_1c remains the default
-   ifbeam v2_5_10
-   nucondb v2_5_10
-   ifdh_art v2_13_05
-   nugen v1_15_06
-   nutools v3_12_03
-   ppfx v02_14_10
-   nusystematics v01_00_10

# Change List

## larsoft v09_44_00

-   [changes since v09_43_00](https://github.com/LArSoft/larsoft/compare/v09_43_00...v09_44_00)

## lareventdisplay v09_03_09

-   [changes since v09_03_08](https://github.com/LArSoft/lareventdisplay/compare/v09_03_08...v09_03_09)

## larexamples v09_03_09

-   [changes since v09_03_08](https://github.com/LArSoft/larexamples/compare/v09_03_08...v09_03_09)

## larpandora v09_12_07

-   [changes since v09_12_06](https://github.com/LArSoft/larpandora/compare/v09_12_06...v09_12_07)

## larsimrad v09_04_09

-   [changes since v09_04_08](https://github.com/LArSoft/larsimrad/compare/v09_04_08...v09_04_09)

## larrecodnn v09_10_10

-   [changes since v09_10_09](https://github.com/LArSoft/larrecodnn/compare/v09_10_09...v09_10_10)

## larwirecell v09_06_02

## larana v09_05_06

-   [changes since v09_05_05](https://github.com/LArSoft/larana/compare/v09_05_05...v09_05_06)

## larreco v09_09_06

-   [changes since v09_09_05](https://github.com/LArSoft/larreco/compare/v09_09_05...v09_09_06)

## larsim v09_22_05

-   [changes since v09_22_04](https://github.com/LArSoft/larsim/compare/v09_22_04...v09_22_05)

## larg4 v09_08_00

-   [changes since v09_07_06](https://github.com/LArSoft/larg4/compare/v09_07_06...v09_08_00)

## larevt v09_04_05

## lardata v09_07_02

## larcore v09_04_01

## larpandoracontent v03_26_04

## larsoftobj v09_17_00

## larvecutils v09_01_00

## lardataobj v09_06_00

## lardataalg v09_10_00

## larcorealg v09_06_00

## larcoreobj v09_05_00

## webevd v09_08_04

## larbatch v01_57_00

-   [changes since v01_56_02](https://github.com/LArSoft/larbatch/compare/v01_56_02...v01_57_00)

## larutils v1_28_02
