# LArSoft v09_24_01 Release Notes



[list of LArSoft releases](LArSoft_release_list)  
Download instructions for [larsoft v09_24_01](https://scisoft.fnal.gov/scisoft/bundles/larsoft/v09_24_01/larsoft-v09_24_01.html)  
Download instructions for [just larsoftobj v09_05_03](https://scisoft.fnal.gov/scisoft/bundles/larsoftobj/v09_05_03/larsoftobj-v09_05_03.html)

## Purpose

-   changes in develop
-   approved PRs

## New features

-   larpandoracontent PR 25
    -   This PR introduces a new tool for the two-view 2D-\>3D matching, and minor fixes to delta ray matching. The new tool performs cluster merging and splitting based on whether a kink is found in 3D, similarly to existing three-view tools, and making use of calorimetric information.

## Bug fixes

## Updated dependencies

# Change List

## larsoft v09_24_01

-   2021-06-01 Lynn Garren : larsoft v09_24_01 for larsoft v09_24_01
-   2021-06-01 Lynn Garren : product versions
-   2021-05-26 Lynn Garren : thought this was already done

## lareventdisplay v09_01_09

## larexamples v09_01_09

## larpandora v09_06_01

-   2021-06-01 Lynn Garren : larpandora v09_06_01 for larsoft v09_24_01

## larsimrad v09_01_09

## larrecodnn v09_07_00

## larwirecell v09_02_07

## larana v09_02_05

## larreco v09_06_05

## larsim v09_13_02

## larg4 v09_03_06

## larevt v09_02_05

## lardata v09_02_03

## larcore v09_02_01

## larpandoracontent v03_23_01

-   2021-06-01 Lynn Garren : larpandoracontent v03_23_01 for larsoft v09_24_01
-   2021-06-01 Lynn Garren : Merge pull request \#25 from PandoraPFA/feature/larpandoracontent_v03_23_01
-   2021-05-28 Isobel Mawby : coverity fixes
-   2021-05-26 Maria Brigida Brunetti : Merge branch 'feature/ChangeLogAndVersion' into feature/larpandoracontent_v03_23_01
-   2021-05-26 Maria Brigida Brunetti : Update CMakeLists.txt and ChangeLog.txt
-   2021-05-26 Maria Brigida Brunetti : Merge branch 'feature/twoViewMergingTool_updated_clean' into feature/larpandoracontent_v03_23_01
-   2021-05-26 Maria Brigida Brunetti : A couple of further minor changes
-   2021-05-04 Maria Brigida Brunetti : Clang changes
-   2021-05-04 Maria Brigida Brunetti : Remove useless comments
-   2021-05-04 Maria Brigida Brunetti : Minor change: revert struct to class in header file of TwoViewThreeDKinkTool
-   2021-04-30 Maria Brigida Brunetti : Drop split mode option: the decision on whether to merge or split is always based on 3D kink information
-   2021-04-30 Maria Brigida Brunetti : More minor changes
-   2021-04-28 Maria Brigida Brunetti : Minor changes
-   2021-04-28 Maria Brigida Brunetti : Apply more cosmetic changes
-   2021-04-28 Maria Brigida Brunetti : Cosmetic adjustments
-   2021-04-28 Maria Brigida Brunetti : Remove TwoViewThreeDKinkBaseTool
-   2021-04-27 Maria Brigida Brunetti : Merge TwoViewUndershootTracksTool, TwoViewOvershootTracksTool and TwoViewThreeDKinkBaseTool in single tool TwoViewThreeDKinkTool, simplified for the two-view case
-   2021-04-21 Maria Brigida Brunetti : Remove comments
-   2021-04-21 Maria Brigida Brunetti : Cleanup
-   2021-02-23 Maria Brigida Brunetti : Add Two view overshoot tracks tool
-   2021-02-18 Maria Brigida Brunetti : Add TwoViewThreeDKinkBaseTool and TwoViewUndershootTracksTool
-   2021-02-01 Maria Brigida Brunetti : Add some debugging printouts

## larsoftobj v09_05_03

## lardataobj v09_01_02

## lardataalg v09_04_03

## larcorealg v09_01_01

## larcoreobj v09_02_00

## webevd v09_05_04

## larbatch v01_56_01

## larutils v1_28_00
