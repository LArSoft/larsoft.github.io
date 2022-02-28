# LArSoft v09_28_00 Release Notes



[list of LArSoft releases](LArSoft_release_list)  
Download instructions for [larsoft v09_28_00](https://scisoft.fnal.gov/scisoft/bundles/larsoft/v09_28_00/larsoft-v09_28_00.html)  
Download instructions for [just larsoftobj v09_07_00](https://scisoft.fnal.gov/scisoft/bundles/larsoftobj/v09_07_00/larsoftobj-v09_07_00.html)

## Purpose

-   changes in develop
-   approved PRs

## New features

-   larcorealg PR 17
    -   Resolve Redmine issue \#25977.
    -   Discussion and description of the design can be found in that ticket. As usual, the core new features are unit-tested, and all the new functions and methods are Doxygen-documented. In particular, unit testing covers the lowest level free functions (intersection of lines) and the top level (geo::GeometryCore methods).
    -   In addition, a commit is updating the Doxygen format of geo::WireGeo, which was somehow broken with methods escaping their documentation group.

## Bug fixes

## Updated dependencies

# Change List

## larsoft v09_28_00

-   2021-08-04 Lynn Garren : larsoft v09_28_00 for larsoft v09_28_00
-   2021-08-04 Lynn Garren : product versions

## lareventdisplay v09_01_15

-   2021-08-04 Lynn Garren : lareventdisplay v09_01_15 for larsoft v09_28_00

## larexamples v09_01_14

-   2021-08-04 Lynn Garren : larexamples v09_01_14 for larsoft v09_28_00

## larpandora v09_07_01

-   2021-08-04 Lynn Garren : larpandora v09_07_01 for larsoft v09_28_00

## larsimrad v09_01_14

-   2021-08-04 Lynn Garren : larsimrad v09_01_14 for larsoft v09_28_00

## larrecodnn v09_08_01

-   2021-08-04 Lynn Garren : larrecodnn v09_08_01 for larsoft v09_28_00

## larwirecell v09_02_11

-   2021-08-04 Lynn Garren : larwirecell v09_02_11 for larsoft v09_28_00

## larana v09_02_11

-   2021-08-04 Lynn Garren : larana v09_02_11 for larsoft v09_28_00

## larreco v09_06_11

-   2021-08-04 Lynn Garren : larreco v09_06_11 for larsoft v09_28_00

## larsim v09_14_03

-   2021-08-04 Lynn Garren : larsim v09_14_03 for larsoft v09_28_00

## larg4 v09_03_10

-   2021-08-04 Lynn Garren : larg4 v09_03_10 for larsoft v09_28_00

## larevt v09_02_09

-   2021-08-04 Lynn Garren : larevt v09_02_09 for larsoft v09_28_00

## lardata v09_02_07

-   2021-08-04 Lynn Garren : lardata v09_02_07 for larsoft v09_28_00

## larcore v09_02_03

-   2021-08-04 Lynn Garren : larcore v09_02_03 for larsoft v09_28_00

## larpandoracontent v03_24_01

-   2021-08-04 Lynn Garren : larpandoracontent v03_24_01 for larsoft v09_28_00

## larsoftobj v09_07_00

-   2021-08-04 Lynn Garren : larsoftobj v09_07_00 for larsoft v09_28_00
-   2021-08-04 Lynn Garren : product versions

## lardataobj v09_01_05

-   2021-08-04 Lynn Garren : lardataobj v09_01_05 for larsoft v09_28_00

## lardataalg v09_04_06

-   2021-08-04 Lynn Garren : lardataalg v09_04_06 for larsoft v09_28_00

## larcorealg v09_02_00

-   2021-08-04 Lynn Garren : larcorealg v09_02_00 for larsoft v09_28_00
-   2021-08-04 Lynn Garren : Merge pull request \#17 from PetrilloAtWork/feature/gp_issue25977
-   2021-07-29 Gianluca Petrillo : Removed geo::GeometryCore::WiresIntersection() method.
-   2021-07-22 Gianluca Petrillo : Workaround to assign from intersection result struct with std::tie()
-   2021-07-21 Gianluca Petrillo : Wire intersection functions now return a struct.
-   2021-07-21 Gianluca Petrillo : Updated test to use BOOST_TEST()
-   2021-07-21 Gianluca Petrillo : Wire intersection utility interface split.
-   2021-07-21 Gianluca Petrillo : Minor change from review of issue 25977
-   2021-06-30 Gianluca Petrillo : Added unit test of intermediate wire intersection functions
-   2021-06-30 Gianluca Petrillo : Format update for geo::WireGeo documentation
-   2021-06-30 Gianluca Petrillo : Added intersection functions for geo::WireGeo.
-   2021-06-24 Gianluca Petrillo : Added \`geo::GeometryCore::WiresIntersect()\` for unchecked wire intersection

## larcoreobj v09_02_01

## webevd v09_05_08

-   2021-08-04 Lynn Garren : webevd v09_05_08 for larsoft v09_28_00

## larbatch v01_56_01

## larutils v1_28_00
