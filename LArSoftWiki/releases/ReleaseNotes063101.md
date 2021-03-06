# LArSoft v06_31_01 Release Notes



[list of LArSoft releases](LArSoft_release_list)  
Download instructions for [larsoft v06_31_01](https://scisoft.fnal.gov/scisoft/bundles/larsoft/v06_31_01/larsoft-v06_31_01.html)  
Download instructions for [just larsoftobj v1_17_01](https://scisoft.fnal.gov/scisoft/bundles/larsoftobj/v1_17_01/larsoftobj-v1_17_01.html)

## Purpose

-   changes to develop since v06_30_00
-   include changes required to support gcc 6.3.0

## New features

## Bug fixes

## Updated dependencies

|          |            |            |                      |
|----------|------------|------------|----------------------|
| Product  | Version    | Qualifiers | Notes                |
| wirecell | v0_5_2b   | e10        |                      |
| eigen    | v3_3_3    |            | works with gcc 6.3.0 |
| pandora  | v03_00_00c | e10:nu     |                      |

# Change List

## larsoft v06_31_01

-   2017-04-12 Lynn Garren : larsoft v06_31_01 for larsoft v06_31_01
-   2017-04-12 Lynn Garren : update product versions
-   2017-04-11 Lynn Garren : larpandoracontent is part of larsoft, not larbase

## lareventdisplay v06_04_02

-   2017-04-12 Lynn Garren : lareventdisplay v06_04_02 for larsoft v06_31_01
-   2017-04-11 Lynn Garren : make sure the code is interpreted correctly

## larexamples v06_02_02

-   2017-04-12 Lynn Garren : larexamples v06_02_02 for larsoft v06_31_01
-   2017-04-06 Lynn Garren : add missing header

## larpandora v06_09_02

-   2017-04-12 Lynn Garren : larpandora v06_09_02 for larsoft v06_31_01

## larwirecell v06_03_01

-   2017-04-12 Lynn Garren : larwirecell v06_03_01 for larsoft v06_31_01

## larana v06_04_02

-   2017-04-12 Lynn Garren : larana v06_04_02 for larsoft v06_31_01
-   2017-04-11 Lynn Garren : include missing header

## larreco v06_24_02

-   2017-04-12 Lynn Garren : larreco v06_24_02 for larsoft v06_31_01
-   2017-04-09 Lynn Garren : vla fixes from Robert
-   2017-04-11 Gianluca Petrillo : Removing variable length array.
-   2017-04-11 Lynn Garren : fixes from Christolph Alt for variable lenght array problems
-   2017-04-06 Lynn Garren : fix misleading indentation
-   2017-04-07 Giuseppe Cerati : fix compilation for gcc630
-   2017-04-06 Lynn Garren : making gcc 6.3.0 happy
-   2017-04-06 Lynn Garren : fix confusing template instantiation
-   2017-04-06 Lynn Garren : add curly braces
-   2017-04-06 Lynn Garren : adding curly braces
-   2017-04-12 Leigh Whitehead : Bugfix to setup the track treeIDs before running the stitching.

## larsim v06_17_01

-   2017-04-12 Lynn Garren : larsim v06_17_01 for larsoft v06_31_01
-   2017-04-06 Lynn Garren : cast stringstream to string
-   2017-04-06 Lynn Garren : use curly braces
-   2017-04-06 Lynn Garren : add implied curly braces

## larevt v06_10_01

-   2017-04-12 Lynn Garren : larevt v06_10_01 for larsoft v06_31_01

## lardata v06_18_01

-   2017-04-12 Lynn Garren : lardata v06_18_01 for larsoft v06_31_01
-   2017-04-05 Lynn Garren : use curly braces
-   2017-04-05 Gianluca Petrillo : Reworked constructors of supporting classes in dumper modules.
-   2017-04-05 Gianluca Petrillo : Made static a method that should have been.
-   2017-04-05 Gianluca Petrillo : Solved issue \#16107 .
-   2017-04-05 Lynn Garren : use the correct header
-   2017-04-06 Lynn Garren : removing old code so it doesn't confuse anyone

## larcore v06_07_02

-   2017-04-12 Lynn Garren : larcore v06_07_02 for larsoft v06_31_01
-   2017-04-05 Gianluca Petrillo : Added missing headers. Solves issue \#16112 .
-   2017-04-05 Gianluca Petrillo : Fixed bug on erase of items from a provider list.
-   2017-04-05 Lynn Garren : add missing headers

## larpandoracontent v03_03_01

-   2017-04-12 Lynn Garren : larpandoracontent v03_03_01 for larsoft v06_31_01
-   2017-04-12 Lynn Garren : larpandoracontent v03_03_01

## larsoftobj v1_17_01

-   2017-04-12 Lynn Garren : larsoftobj v1_17_01 for larsoft v06_31_01
-   2017-04-12 Lynn Garren : update product versions

## lardataobj v1_14_02

-   2017-04-12 Lynn Garren : lardataobj v1_14_02 for larsoft v06_31_01
-   2017-04-10 Lynn Garren : Merge branch 'develop' of ssh://cdcvs.fnal.gov/cvs/projects/lardataobj into develop
-   2017-04-05 Lynn Garren : add missing header
-   2017-04-05 Lynn Garren : add missing headers
-   2017-04-05 Lynn Garren : add missing headers
-   2017-04-05 Lynn Garren : use curly braces
-   2017-04-10 Gianluca Petrillo : Fixed typo in sim::SimChannel dump.

## larcoreobj v1_11_00

## larbatch v01_30_00

-   2017-04-12 Lynn Garren : larbatch v01_30_00 for larsoft v06_31_01
-   2017-04-10 Herbert Greenlee : Add ability to specify alternate art-like executable (other than lar).

## larutils v1_12_03

-   2017-04-12 Lynn Garren : larutils v1_12_03 for larsoft v06_31_01
-   2017-04-11 Lynn Garren : add e14
-   2017-04-11 Lynn Garren : got carried away
-   2017-04-11 Lynn Garren : update build-larbase.sh
