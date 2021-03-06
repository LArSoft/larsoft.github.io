# LArSoft v04_20_00 Release Notes



[list of LArSoft releases](LArSoft_release_list)  
[Download instructions](https://scisoft.fnal.gov/scisoft/bundles/larsoft/v04_20_00/larsoft-v04_20_00.html)

## Purpose

Production release for DUNE MCC4.

## New features

-   build with art v1_15_02 (s15)
-   larana feature/warburton_PhotonMatching
-   larreco blurred clustering

## Bug fixes

## Updated dependencies

|               |          |                |                                 |
|---------------|----------|----------------|---------------------------------|
| Product       | Version  | Qualifier      | Notes                           |
| art           | v1_15_02 | e7:nu          | [art:Release_Notes_11502](https://cdcvs.fnal.gov/redmine/projects/art/wiki/Release_Notes_11502) |
| ifdh_art      | v1_12_02 | e7:nu:s15      |                                 |
| nutools       | v1_14_02 | e7 & e7:noifdh |                                 |
| artdaq_core   | v1_04_17 | e7:nu:s15      |                                 |
| artextensions | v1_01_08 | e7:nu:s15      |                                 |
| ifdhc         | v1_8_5  | e7:p279        |                                 |
| git           | v2_4_6  |                |                                 |
| cetbuildtools | v4_12_06 |                |                                 |

# Change List

## larsoft v04_20_00

-   2015-08-19 Lynn Garren : changes to git and ifdhc
-   2015-08-19 Lynn Garren : s15 for art v1_15_02
-   2015-08-19 Lynn Garren : larsoft v04_20_00 for larsoft v04_20_00
-   2015-08-19 Lynn Garren : update product versions

## lareventdisplay v04_06_04

-   2015-08-19 Lynn Garren : lareventdisplay v04_06_04 for larsoft v04_20_00
-   2015-08-17 Gianluca Petrillo : Fixed syntax of message facility debug specification

## larexamples v04_05_02

-   2015-08-19 Lynn Garren : larexamples v04_05_02 for larsoft v04_20_00

## larpandora v04_05_02

-   2015-08-19 Lynn Garren : larpandora v04_05_02 for larsoft v04_20_00

## larana v04_11_00

-   2015-08-19 Lynn Garren : larana v04_11_00 for larsoft v04_20_00
-   2015-08-14 Thomas Warburton : Merge branch 'develop' into feature/warburton_PhotonMatching
-   2015-08-14 Thomas Warburton : Further changes
-   2015-08-13 Thomas Warburton : Adding functionality, and correcting timings
-   2015-08-12 Thomas Warburton : Adding a module to find T0 data products from photon dietectors.

## larreco v04_15_00

-   2015-08-19 Lynn Garren : larreco v04_15_00 for larsoft v04_20_00
-   2015-08-18 Mike Wallbank : Improved merging, with support for global TPC reconstruction
-   2015-08-18 Mike Wallbank : Updates to blurred clustering: tidied the code up, added support for global TPC reconstruction
-   2015-08-14 Lynn Garren : larsoft v04_19_00
-   2015-08-13 Robert Sulej : add option to pass hits from all views in a single vector

## larsim v04_09_02

-   2015-08-19 Lynn Garren : larsim v04_09_0 for larsoft v04_20_00

## larevt v04_09_01

-   2015-08-19 Lynn Garren : larevt v04_09_01 for larsoft v04_20_00

## lardata v04_12_01

-   2015-08-19 Lynn Garren : lardata v04_12_01 for larsoft v04_20_00
-   2015-08-17 Gianluca Petrillo : Fixed syntax of message facility debug specification

## larcore v04_16_01

-   2015-08-19 Lynn Garren : larcore v04_16_01 for larsoft v04_20_0

## larbatch v01_13_00

## larutils v1_03_00

-   2015-08-19 Lynn Garren : add support for building with art v1_15_02
-   2015-08-19 Lynn Garren : larutils v1_03_00 for larsoft v04_20_00
-   2015-08-13 Tingjun Yang : add scripts to build dunetpc and duneutil
