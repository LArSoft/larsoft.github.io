# LArSoft v08_48_00 Release Notes



[list of LArSoft releases](LArSoft_release_list)  
Download instructions for [larsoft v08_48_00](https://scisoft.fnal.gov/scisoft/bundles/larsoft/v08_48_00/larsoft-v08_48_00.html)  
Download instructions for [just larsoftobj v08_27_03](https://scisoft.fnal.gov/scisoft/bundles/larsoftobj/v08_27_03/larsoftobj-v08_27_03.html)

## Purpose

-   changes in develop
-   approved PRs

## New features

-   Changing services from LEGACY to SHARED
    -   https://indico.fnal.gov/event/23808/contribution/4/material/slides/0.pdf
    -   changes in larreco, larana, lardata, larevt, and larsim
    -   **experiments will need feature/knoepfel_shared_services**
-   Disable real data checks
    -   larpandora PR 6

## Bug fixes

-   fix larrecodnn build
-   lardataalg: add a missing header

## Updated dependencies

-   geant4reweight v01_00_06

# Change List

## larsoft v08_48_00

-   2020-03-25 Lynn Garren : larsoft v08_48_00 for larsoft v08_48_00
-   2020-03-25 Lynn Garren : product versions
-   2020-03-25 Lynn Garren : nulite v3_06_02a with geant4reweight v01_00_06
-   2020-03-21 Lynn Garren : Merge pull request \#10 from lgarren/feature/lg_for_larrecodnn
-   2020-03-21 Lynn Garren : remove some whitespace
-   2020-03-21 Lynn Garren : py2 qual for trtis_clients
-   2020-03-21 Lynn Garren : build trtis_clients for py2

## lareventdisplay v08_12_08

-   2020-03-25 Lynn Garren : lareventdisplay v08_12_08 for larsoft v08_48_00

## larexamples v08_06_08

-   2020-03-25 Lynn Garren : larexamples v08_06_08 for larsoft v08_48_00

## larg4 v08_12_06

-   2020-03-25 Lynn Garren : larg4 v08_12_06 for larsoft v08_48_00

## larpandora v08_12_00

-   2020-03-25 Lynn Garren : larpandora v08_12_00 for larsoft v08_48_00
-   2020-03-25 Lynn Garren : Merge pull request \#6 from a-d-smith/feature/asmith_disableRealDataChecks
-   2020-03-24 Andrew Smith : Added FHiCL flag to enable or diable real data checks in PFParticle monitoring module
-   2020-03-24 Andrew Smith : Added FHiCL flag to enable or disable real data checks
-   2020-03-23 Andrew Smith : removed is real data checks

## larrecodnn v08_01_01

-   2020-03-25 Lynn Garren : larrecodnn v08_01_01 for larsoft v08_48_00

## larwirecell v08_12_07

-   2020-03-25 Lynn Garren : larwirecell v08_12_07 for larsoft v08_48_00

## larana v08_17_00

-   2020-03-25 Lynn Garren : larana v08_17_00 for larsoft v08_48_00
-   2020-03-23 Kyle Knoepfel : Accommodate breaking changes.
-   2020-03-23 Kyle Knoepfel : Apply clang-format.

## larreco v08_30_00

-   2020-03-25 Lynn Garren : larreco v08_30_00 for larsoft v08_48_00
-   2020-03-23 Kyle Knoepfel : Accommodate breaking changes.
-   2020-03-23 Kyle Knoepfel : Apply clang-format.

## larsim v08_22_00

-   2020-03-25 Lynn Garren : larsim v08_22_00 for larsoft v08_48_00
-   2020-03-24 Kyle Knoepfel : Whitespace fixes.
-   2020-03-23 Kyle Knoepfel : Add missing header file.

## larevt v08_11_00

-   2020-03-25 Lynn Garren : larevt v08_11_00 for larsoft v08_48_00
-   2020-03-23 Kyle Knoepfel : Make SpaceChargeService SHARED.
-   2020-03-23 Kyle Knoepfel : Apply clang-format.

## lardata v08_15_00

-   2020-03-25 Lynn Garren : lardata v08_15_00 for larsoft v08_48_00
-   2020-03-23 Kyle Knoepfel : Make various services SHARED.
-   2020-03-23 Kyle Knoepfel : Apply clang-format.

## larcore v08_11_02

## larpandoracontent v03_15_15

## larsoftobj v08_27_03

-   2020-03-25 Lynn Garren : larsoftobj v08_27_03 for larsoft v08_48_00
-   2020-03-25 Lynn Garren : product versions
-   2020-03-25 Lynn Garren : whitespace

## lardataobj v08_10_05

## lardataalg v08_13_06

-   2020-03-25 Lynn Garren : lardataalg v08_13_06 for larsoft v08_48_00
-   2020-03-23 Lynn Garren : Merge pull request \#4 from PetrilloAtWork/develop
-   2020-03-18 Gianluca Petrillo : Added missing header.

## larcorealg v08_21_02

## larcoreobj v08_10_04

## larbatch v01_52_02

## larutils v1_25_08
