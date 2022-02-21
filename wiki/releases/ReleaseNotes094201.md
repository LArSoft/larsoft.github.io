# LArSoft v09_42_01 Release Notes



[list of LArSoft releases](LArSoft_release_list)  
Download instructions for [larsoft v09_42_01](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v09_42_01/larsoft-v09_42_01.html)  
Download instructions for [just larsoftobj v09_16_01](http://scisoft.fnal.gov/scisoft/bundles/larsoftobj/v09_16_01/larsoftobj-v09_16_01.html)

## Purpose

-   changes in develop
-   approved PRs

## New features

-   larrecodnn PR 25
    -   Add code to produce training sample for trkshowermichelid.
-   larpandoracontent PR 36
    -   This PR contains a fix to avoid writing feature vectors containing NaNs into PF particle characterisation BDT training files. This change only affects training file production, so no product changes are expected.

## Bug fixes

## Updated dependencies

-   ifdhc_config v2_6_1a
-   geant4reweight v01_13_00
    -   [changes since v01_12_00](https://github.com/NuSoftHEP/Geant4Reweight/compare/v01_12_00...v01_13_00)
-   cetbuildtools v8_19_01

# Change List

## larsoft v09_42_01

-   2022-01-26 Lynn Garren : larsoft v09_42_01 for larsoft v09_42_01
-   2022-01-26 Lynn Garren : larsoft v09_42_01 for larsoft v09_42_01
-   2022-01-26 Lynn Garren : geant4reweight, ifdhc_config, packages

## lareventdisplay v09_03_04

## larexamples v09_03_04

## larpandora v09_12_02

-   2022-01-26 Lynn Garren : larpandora v09_12_02 for larsoft v09_42_01
-   2022-01-26 Lynn Garren : larpandora v09_12_02 for larsoft v09_42_01

## larsimrad v09_04_04

## larrecodnn v09_10_05

-   2022-01-26 Lynn Garren : larrecodnn v09_10_05 for larsoft v09_42_01
-   2022-01-26 Lynn Garren : Merge pull request \#25 from yangtj207/develop
-   2022-01-25 Tingjun Yang : Address Kyle's comments.
-   2022-01-20 Tingjun Yang : Merge branch 'develop' of https://github.com/LArSoft/larrecodnn into feature/tjyang_emtrkmichel
-   2021-03-05 Tingjun Yang : Add code to save images of clean tracks.
-   2021-02-27 Tingjun Yang : Merge branch 'develop' of https://github.com/LArSoft/larrecodnn into feature/tjyang_emtrkmichel
-   2021-02-27 Tingjun Yang : Update fcl file
-   2021-02-27 Tingjun Yang : Add code to save information to numpy file.
-   2021-02-27 Tingjun Yang : Make the module more general.
-   2021-02-27 Tingjun Yang : Add NuRandomService

## larwirecell v09_06_00

## larana v09_05_01

## larreco v09_09_01

## larsim v09_22_00

## larg4 v09_07_03

## larevt v09_04_03

## lardata v09_07_01

## larcore v09_04_00

## larpandoracontent v03_26_03

-   2022-01-24 Andrew Chappell : Update version and ChangeLog
-   2022-01-24 AndyChappell : Merge pull request \#187 from VCLanNguyen/bugfix/lnguyen_nan_feature_check
-   2021-12-02 Vu Chi Lan Nguyen : move checking feature vectore code block before writing train data

## larsoftobj v09_16_01

## larvecutils v09_00_01

## lardataobj v09_05_01

## lardataalg v09_09_02

## larcorealg v09_05_00

## larcoreobj v09_04_00

## webevd v09_08_03

## larbatch v01_56_02

## larutils v1_28_02
