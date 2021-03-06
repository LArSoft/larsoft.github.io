# LArSoft v09_28_05 Release Notes



[list of LArSoft releases](LArSoft_release_list)  
Download instructions for [larsoft v09_28_05](https://scisoft.fnal.gov/scisoft/bundles/larsoft/v09_28_05/larsoft-v09_28_05.html)  
Download instructions for [just larsoftobj v09_07_01](https://scisoft.fnal.gov/scisoft/bundles/larsoftobj/v09_07_01/larsoftobj-v09_07_01.html)

## Purpose

-   changes in develop
-   approved PRs

## New features

## Bug fixes

-   larg4 PR 26
    -   Handle post step-points with no process-defined steps
    -   This PR addresses redmine issue \#26221, where segmentation violations were occurring due to post step-points that have no process-defined step. The cause for this is not yet understood, but the recommendation from @hanswenzel is to simply handle/side-step these cases.

## Updated dependencies

# Change List

## larsoft v09_28_05

-   2021-09-07 Lynn Garren : larsoft v09_28_05 for larsoft v09_28_05
-   2021-09-07 Lynn Garren : product versions

## lareventdisplay v09_01_19

-   2021-09-07 Lynn Garren : lareventdisplay v09_01_19 for larsoft v09_28_05

## larexamples v09_01_18

-   2021-09-07 Lynn Garren : larexamples v09_01_18 for larsoft v09_28_05

## larpandora v09_07_05

-   2021-09-07 Lynn Garren : larpandora v09_07_05 for larsoft v09_28_05

## larsimrad v09_01_18

-   2021-09-07 Lynn Garren : larsimrad v09_01_18 for larsoft v09_28_05

## larrecodnn v09_08_05

-   2021-09-07 Lynn Garren : larrecodnn v09_08_05 for larsoft v09_28_05

## larwirecell v09_02_13

## larana v09_02_15

-   2021-09-07 Lynn Garren : larana v09_02_15 for larsoft v09_28_05

## larreco v09_06_15

-   2021-09-07 Lynn Garren : larreco v09_06_15 for larsoft v09_28_05

## larsim v09_14_07

-   2021-09-07 Lynn Garren : larsim v09_14_07 for larsoft v09_28_05

## larg4 v09_03_14

-   2021-09-07 Lynn Garren : larg4 v09_03_14 for larsoft v09_28_05
-   2021-09-07 Lynn Garren : Merge pull request \#26 from knoepfel/bugfix/knoepfel_handle_segfault_again
-   2021-09-03 Kyle Knoepfel : Resolve bug \#26221: Handle post step-points with no process-defined step.

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

## larutils v1_28_02
