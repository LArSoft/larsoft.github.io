# LArSoft v09_23_00 Release Notes



[list of LArSoft releases](LArSoft_release_list)  
Download instructions for [larsoft v09_23_00](https://scisoft.fnal.gov/scisoft/bundles/larsoft/v09_23_00/larsoft-v09_23_00.html)  
Download instructions for [just larsoftobj v09_05_03](https://scisoft.fnal.gov/scisoft/bundles/larsoftobj/v09_05_03/larsoftobj-v09_05_03.html)

## Purpose

-   changes in develop
-   approved PRs
-   **This is the last release with e19 support.**

## New features

-   larrecodnn PR 19
    -   changes needed for tensorflow v2_3_1a and triton v2_3_0b
-   larpandoracontent PR 23
    -   use libtorch v1_6_0b

## Bug fixes

## Updated dependencies

-   libtorch v1_6_0b
-   protobuf v3_12_3a
-   triton v2_3_0b
    -   replaces trtis_clients
-   tensorflow v2_3_1a

# Change List

## larsoft v09_23_00

-   2021-05-17 Lynn Garren : triton uses grpc
-   2021-05-17 Lynn Garren : larrecodnn v09_07_00
-   2021-05-17 Lynn Garren : larsoft v09_23_00 for larsoft v09_23_00
-   2021-05-17 Lynn Garren : product versions
-   2021-05-17 Lynn Garren : protobuf v3_12_3a, libtorch v1_6_0b, tensorflow v2_3_1a, and triton v2_3_0b
-   2021-05-17 Lynn Garren : build triton and drop obsolete py2qual

## lareventdisplay v09_01_09

## larexamples v09_01_09

## larpandora v09_05_11

-   2021-05-17 Lynn Garren : larpandora v09_05_11 for larsoft v09_23_00

## larsimrad v09_01_09

## larrecodnn v09_07_00

-   2021-05-18 Lynn Garren : add missing larcorealg_Geometry library
-   2021-05-17 Lynn Garren : larrecodnn v09_07_00
-   2021-05-17 Lynn Garren : larrecodnn v09_06_09 for larsoft v09_23_00
-   2021-05-17 Lynn Garren : tensorflow and triton available for all build combos
-   2021-05-17 Lynn Garren : add protobuf and cleanup the cmake
-   2021-05-17 Lynn Garren : deal with c7 warning
-   2021-05-17 Lynn Garren : find grpc
-   2021-05-07 Michael Wang : more changes for Triton v2 api support
-   2021-05-05 Michael WAng : more changes for tensorflow v2
-   2021-05-02 Michael WAng : implement new triton v2 api

## larwirecell v09_02_07

## larana v09_02_05

## larreco v09_06_05

## larsim v09_13_02

## larg4 v09_03_06

## larevt v09_02_05

## lardata v09_02_03

## larcore v09_02_01

## larpandoracontent v03_22_11

-   2021-05-17 Lynn Garren : larpandoracontent v03_22_11 for larsoft v09_23_00
-   2021-05-17 Lynn Garren : larpandoracontent v03_22_11
-   2021-05-13 Lynn Garren : use libtorch v1_6_0b to pick up protobuf v3_12_3a

## larsoftobj v09_05_03

## lardataobj v09_01_02

## lardataalg v09_04_03

## larcorealg v09_01_01

## larcoreobj v09_02_00

## webevd v09_05_04

## larbatch v01_56_01

## larutils v1_28_00
