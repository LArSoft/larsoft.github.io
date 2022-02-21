# LArSoft v09_42_03 Release Notes



[list of LArSoft releases](LArSoft_release_list)  
Download instructions for [larsoft v09_42_03](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v09_42_03/larsoft-v09_42_03.html)  
Download instructions for [just larsoftobj v09_16_01](http://scisoft.fnal.gov/scisoft/bundles/larsoftobj/v09_16_01/larsoftobj-v09_16_01.html)

## Purpose

-   changes in develop
-   approved PRs

## New features

## Bug fixes

-   larg4 PR 33
    -   Add a pointer check when looping over processes at post step loop

## Updated dependencies

-   nugen v1_15_05
    -   https://github.com/NuSoftHEP/nugen/compare/v1_15_04…v1_15_05
    -   Fix a long standing bug (typo).
    -   Expected to be low impact in that
        -   the module is not frequently used
        -   the line processes a list of file patterns to add
            -   often the patterns are just described by the first entry with wildcards, so often there aren’t additional entries (which would have been missed)
-   nusystematics v01_00_09
    -   https://github.com/LArSoft/nusystematics/compare/v01_00_08…v01_00_09

# Change List

## larsoft v09_42_03

-   [changes since v09_42_02](https://github.com/LArSoft/larsoft/compare/v09_42_02...v09_42_03)

## lareventdisplay v09_03_06

-   [changes since v09_03_05](https://github.com/LArSoft/lareventdisplay/compare/v09_03_05...v09_03_06)

## larexamples v09_03_06

-   [changes since v09_03_05](https://github.com/LArSoft/larexamples/compare/v09_03_05...v09_03_06)

## larpandora v09_12_04

-   [changes since v09_12_03](https://github.com/LArSoft/larpandora/compare/v09_12_03...v09_12_04)

## larsimrad v09_04_06

-   [changes since v09_04_05](https://github.com/LArSoft/larsimrad/compare/v09_04_05...v09_04_06)

## larrecodnn v09_10_07

-   [changes since v09_10_06](https://github.com/LArSoft/larrecodnn/compare/v09_10_06...v09_10_07)

## larwirecell v09_06_01

## larana v09_05_03

-   [changes since v09_05_02](https://github.com/LArSoft/larana/compare/v09_05_02...v09_05_03)

## larreco v09_09_03

-   [changes since v09_09_02](https://github.com/LArSoft/larreco/compare/v09_09_02...v09_09_03)

## larsim v09_22_02

-   [changes since v09_22_01](https://github.com/LArSoft/larsim/compare/v09_22_01...v09_22_02)

## larg4 v09_07_05

-   [changes since v09_07_04](https://github.com/LArSoft/larg4/compare/v09_07_04...v09_07_05)

## larevt v09_04_04

## lardata v09_07_01

## larcore v09_04_00

## larpandoracontent v03_26_03

## larsoftobj v09_16_01

## larvecutils v09_00_01

## lardataobj v09_05_01

## lardataalg v09_09_02

## larcorealg v09_05_00

## larcoreobj v09_04_00

## webevd v09_08_03

## larbatch v01_56_02

## larutils v1_28_02
