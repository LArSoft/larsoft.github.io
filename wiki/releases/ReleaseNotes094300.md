# LArSoft v09_43_00 Release Notes



[list of LArSoft releases](LArSoft_release_list)  
Download instructions for [larsoft v09_43_00](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v09_43_00/larsoft-v09_43_00.html)  
Download instructions for [just larsoftobj v09_17_00](http://scisoft.fnal.gov/scisoft/bundles/larsoftobj/v09_17_00/larsoftobj-v09_17_00.html)

## Purpose

-   changes in develop
-   approved PRs

## New features

-   the larsoftobj suite is built with cetmodules
-   **IMPORTANT:** find_ups_product/find_package calls must be executed in the correct order.
    -   sbncode and icarusalg need the small changes in feature/lg_for_v09_43_00

## Bug fixes

-   lardataalg PR 29
    -   updates DetectorClocksStandardTriggerLoader.h documentation

## Possible [breaking change](Breaking_Changes#larsoft-v09_43_00)

Symptom:

    635: CMake Error at /cvmfs/larsoft.opensciencegrid.org/products/cetmodules/v3_06_01/Modules/private/CetOverrideFindPackage.cmake:174 (_find_package):
    636:   Found package configuration file:
    637: 
    638:     /cvmfs/larsoft-ib.opensciencegrid.org/LArSoft/LArSoft_custom_slf7_e20_prof_20220223_171203/localProducts_LArSoft_LArSoft_lar_ci_e20_prof/lardataobj/v09_05_01/slf7.x86_64.e20.prof/lib/lardataobj/cmake/lardataobjConfig.cmake
    639: 
    640:   but it set lardataobj_FOUND to FALSE so package "lardataobj" is considered
    641:   to be NOT FOUND.  Reason given by package:
    642: 
    643:   The following imported targets are referenced, but are missing:
    644:   larcoreobj::SummaryData

  
Fix:  
Use this call order in the top level CMakeLists.txt file.

    find_ups_product(larcoreobj)
    find_ups_product(larcorealg)
    find_ups_product(lardataobj)
    find_ups_product(lardataalg)

## Updated dependencies

-   ifdhc_config v2_6_1c
    -   Making gridftp the default without re-enabling door rotation caused the default door to become congested (oops), so we’re going to fix that by hard-coding more default doors (which dCache is adding) and re-enabling rotation without discovery (since that’s still broken).
-   gh v2_5_1b
    -   The GitHub CLI, gh, is now available as an alternative to hub. See [this talk](https://indico.fnal.gov/event/53302/contributions/234977/attachments/152351/197249/gh-feb22.pdf) for more info.
-   mrb v6_03_01
-   cetmodules v3_06_01
-   cmake v3_22_2

# Change List

## larsoft v09_43_00

-   [changes since v09_42_04](https://github.com/LArSoft/larsoft/compare/v09_42_04...v09_43_00)

## lareventdisplay v09_03_08

-   [changes since v09_03_07](https://github.com/LArSoft/lareventdisplay/compare/v09_03_07...v09_03_08)

## larexamples v09_03_08

-   [changes since v09_03_07](https://github.com/LArSoft/larexamples/compare/v09_03_07...v09_03_08)

## larpandora v09_12_06

-   [changes since v09_12_05](https://github.com/LArSoft/larpandora/compare/v09_12_05...v09_12_06)

## larsimrad v09_04_08

-   [changes since v09_04_07](https://github.com/LArSoft/larsimrad/compare/v09_04_07...v09_04_08)

## larrecodnn v09_10_09

-   [changes since v09_10_08](https://github.com/LArSoft/larrecodnn/compare/v09_10_08...v09_10_09)

## larwirecell v09_06_02

-   [changes since v09_06_01](https://github.com/LArSoft/larwirecell/compare/v09_06_01...v09_06_02)

## larana v09_05_05

-   [changes since v09_05_04](https://github.com/LArSoft/larana/compare/v09_05_04...v09_05_05)

## larreco v09_09_05

-   [changes since v09_09_04](https://github.com/LArSoft/larreco/compare/v09_09_04...v09_09_05)

## larsim v09_22_04

-   [changes since v09_22_03](https://github.com/LArSoft/larsim/compare/v09_22_03...v09_22_04)

## larg4 v09_07_06

-   [changes since v09_07_05](https://github.com/LArSoft/larg4/compare/v09_07_05...v09_07_06)

## larevt v09_04_05

-   [changes since v09_04_04](https://github.com/LArSoft/larevt/compare/v09_04_04...v09_04_05)

## lardata v09_07_02

-   [changes since v09_07_01](https://github.com/LArSoft/lardata/compare/v09_07_01...v09_07_02)

## larcore v09_04_01

-   [changes since v09_04_00](https://github.com/LArSoft/larcore/compare/v09_04_00...v09_04_01)

## larpandoracontent v03_26_04

## larsoftobj v09_17_00

-   [changes since v09_16_01](https://github.com/LArSoft/larsoftobj/compare/v09_16_01...v09_17_00)

## larvecutils v09_01_00

-   [changes since v09_00_01](https://github.com/LArSoft/larvecutils/compare/v09_00_01...v09_01_00)

## lardataobj v09_06_00

-   [changes since v09_05_01](https://github.com/LArSoft/lardataobj/compare/v09_05_01...v09_06_00)

## lardataalg v09_10_00

-   [changes since v09_09_02](https://github.com/LArSoft/lardataalg/compare/v09_09_02...v09_10_00)

## larcorealg v09_06_00

-   [changes since v09_05_00](https://github.com/LArSoft/larcorealg/compare/v09_05_00...v09_06_00)

## larcoreobj v09_05_00

-   [changes since v09_04_00](https://github.com/LArSoft/larcoreobj/compare/v09_04_00...v09_05_00)

## webevd v09_08_04

-   [changes since v09_08_03](https://github.com/LArSoft/webevd/compare/v09_08_03...v09_08_04)

## larbatch v01_56_02

## larutils v1_28_02
