# LArSoft v09_28_03 Release Notes



[list of LArSoft releases](LArSoft_release_list)  
Download instructions for [larsoft v09_28_03](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v09_28_03/larsoft-v09_28_03.html)  
Download instructions for [just larsoftobj v09_07_01](http://scisoft.fnal.gov/scisoft/bundles/larsoftobj/v09_07_01/larsoftobj-v09_07_01.html)

## Purpose

-   changes in develop
-   approved PRs

## New features

-   larutils PR 11
    -   add sbndqm build script

## Bug fixes

-   larg4 PR 24
    -   Fix segmentation violation from MCParticles with duplicate track IDs
    -   This PR resolves Redmine issue \#26197, where a segmentation violation is reported due to attempting to access a trajectory point in an MCParticle that had none. The basic problem is that the larg4 services were not implemented to support reading multiple MCTruth collections where one of those collections has multiple MCTruth objects in it. This PR enables that behavior.

## Updated dependencies

# Change List

## larsoft v09_28_03

-   2021-08-31 Lynn Garren : larsoft v09_28_03 for larsoft v09_28_03
-   2021-08-31 Lynn Garren : product versions

## lareventdisplay v09_01_17

-   2021-08-31 Lynn Garren : lareventdisplay v09_01_17 for larsoft v09_28_03

## larexamples v09_01_16

-   2021-08-31 Lynn Garren : larexamples v09_01_16 for larsoft v09_28_03

## larpandora v09_07_03

-   2021-08-31 Lynn Garren : larpandora v09_07_03 for larsoft v09_28_03

## larsimrad v09_01_16

-   2021-08-31 Lynn Garren : larsimrad v09_01_16 for larsoft v09_28_03

## larrecodnn v09_08_03

-   2021-08-31 Lynn Garren : larrecodnn v09_08_03 for larsoft v09_28_03

## larwirecell v09_02_13

## larana v09_02_13

-   2021-08-31 Lynn Garren : larana v09_02_13 for larsoft v09_28_03

## larreco v09_06_13

-   2021-08-31 Lynn Garren : larreco v09_06_13 for larsoft v09_28_03

## larsim v09_14_05

-   2021-08-31 Lynn Garren : larsim v09_14_05 for larsoft v09_28_03

## larg4 v09_03_12

-   2021-08-31 Lynn Garren : larg4 v09_03_12 for larsoft v09_28_03
-   2021-08-31 Lynn Garren : Merge pull request \#24 from knoepfel/bugfix/knoepfel_fix_segfault
-   2021-08-31 Kyle Knoepfel : Skip particles with generator-specific PDG codes.
-   2021-08-31 Kyle Knoepfel : Support multiple MCTruth objects in the same MCTruth collection.
-   2021-08-31 Kyle Knoepfel : Cleanups only.

## larevt v09_02_10

## lardata v09_02_08

## larcore v09_02_04

## larpandoracontent v03_24_02

## larsoftobj v09_07_01

## lardataobj v09_01_06

## lardataalg v09_04_07

## larcorealg v09_02_01

## larcoreobj v09_02_01

## webevd v09_05_09

## larbatch v01_56_01

## larutils v1_28_01

-   2021-08-31 Lynn Garren : larutils v1_28_01 for larsoft v09_28_03
-   2021-08-25 Lynn Garren : Merge pull request \#11 from SBNSoftware/develop
-   2021-08-24 Wesley : remove sbncode from build, fix manifest typo
-   2021-08-24 Wesley : more typos
-   2021-08-24 Wesley : fix artdaq products path
-   2021-08-24 Wesley : give execute permission
-   2021-08-24 Wesley : new sbndqm build script
