LArSoft v09\_24\_01 Release Notes(#LArSoft-v09_24_01-Release-Notes)
======================================================================

-   **Table of contents**
-   [LArSoft v09\_24\_01 Release Notes](#LArSoft-v09_24_01-Release-Notes)
    -   [Purpose](#Purpose)
    -   [New features](#New-features)
    -   [Bug fixes](#Bug-fixes)
    -   [Updated dependencies](#Updated-dependencies)
-   [Change List](#Change-List)
    -   [larsoft v09\_24\_01](#larsoft-v09_24_01)
    -   [lareventdisplay v09\_01\_09](#lareventdisplay-v09_01_09)
    -   [larexamples v09\_01\_09](#larexamples-v09_01_09)
    -   [larpandora v09\_06\_01](#larpandora-v09_06_01)
    -   [larsimrad v09\_01\_09](#larsimrad-v09_01_09)
    -   [larrecodnn v09\_07\_00](#larrecodnn-v09_07_00)
    -   [larwirecell v09\_02\_07](#larwirecell-v09_02_07)
    -   [larana v09\_02\_05](#larana-v09_02_05)
    -   [larreco v09\_06\_05](#larreco-v09_06_05)
    -   [larsim v09\_13\_02](#larsim-v09_13_02)
    -   [larg4 v09\_03\_06](#larg4-v09_03_06)
    -   [larevt v09\_02\_05](#larevt-v09_02_05)
    -   [lardata v09\_02\_03](#lardata-v09_02_03)
    -   [larcore v09\_02\_01](#larcore-v09_02_01)
    -   [larpandoracontent v03\_23\_01](#larpandoracontent-v03_23_01)
    -   [larsoftobj v09\_05\_03](#larsoftobj-v09_05_03)
    -   [lardataobj v09\_01\_02](#lardataobj-v09_01_02)
    -   [lardataalg v09\_04\_03](#lardataalg-v09_04_03)
    -   [larcorealg v09\_01\_01](#larcorealg-v09_01_01)
    -   [larcoreobj v09\_02\_00](#larcoreobj-v09_02_00)
    -   [webevd v09\_05\_04](#webevd-v09_05_04)
    -   [larbatch v01\_56\_01](#larbatch-v01_56_01)
    -   [larutils v1\_28\_00](#larutils-v1_28_00)

[list of LArSoft releases](LArSoft_release_list)\
Download instructions for [larsoft v09\_24\_01](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v09_24_01/larsoft-v09_24_01.html)\
Download instructions for [just larsoftobj v09\_05\_03](http://scisoft.fnal.gov/scisoft/bundles/larsoftobj/v09_05_03/larsoftobj-v09_05_03.html)

Purpose(#Purpose)
--------------------

-   changes in develop
-   approved PRs

New features(#New-features)
------------------------------

-   larpandoracontent PR 25
    -   This PR introduces a new tool for the two-view 2D-\>3D matching, and minor fixes to delta ray matching. The new tool performs cluster merging and splitting based on whether a kink is found in 3D, similarly to existing three-view tools, and making use of calorimetric information.

Bug fixes(#Bug-fixes)
------------------------

Updated dependencies(#Updated-dependencies)
----------------------------------------------

Change List(#Change-List)
============================

larsoft v09\_24\_01(#larsoft-v09_24_01)
------------------------------------------

-   2021-06-01 Lynn Garren : larsoft v09\_24\_01 for larsoft v09\_24\_01
-   2021-06-01 Lynn Garren : product versions
-   2021-05-26 Lynn Garren : thought this was already done

lareventdisplay v09\_01\_09(#lareventdisplay-v09_01_09)
----------------------------------------------------------

larexamples v09\_01\_09(#larexamples-v09_01_09)
--------------------------------------------------

larpandora v09\_06\_01(#larpandora-v09_06_01)
------------------------------------------------

-   2021-06-01 Lynn Garren : larpandora v09\_06\_01 for larsoft v09\_24\_01

larsimrad v09\_01\_09(#larsimrad-v09_01_09)
----------------------------------------------

larrecodnn v09\_07\_00(#larrecodnn-v09_07_00)
------------------------------------------------

larwirecell v09\_02\_07(#larwirecell-v09_02_07)
--------------------------------------------------

larana v09\_02\_05(#larana-v09_02_05)
----------------------------------------

larreco v09\_06\_05(#larreco-v09_06_05)
------------------------------------------

larsim v09\_13\_02(#larsim-v09_13_02)
----------------------------------------

larg4 v09\_03\_06(#larg4-v09_03_06)
--------------------------------------

larevt v09\_02\_05(#larevt-v09_02_05)
----------------------------------------

lardata v09\_02\_03(#lardata-v09_02_03)
------------------------------------------

larcore v09\_02\_01(#larcore-v09_02_01)
------------------------------------------

larpandoracontent v03\_23\_01(#larpandoracontent-v03_23_01)
--------------------------------------------------------------

-   2021-06-01 Lynn Garren : larpandoracontent v03\_23\_01 for larsoft v09\_24\_01
-   2021-06-01 Lynn Garren : Merge pull request \#25 from PandoraPFA/feature/larpandoracontent\_v03\_23\_01
-   2021-05-28 Isobel Mawby : coverity fixes
-   2021-05-26 Maria Brigida Brunetti : Merge branch ‘feature/ChangeLogAndVersion’ into feature/larpandoracontent\_v03\_23\_01
-   2021-05-26 Maria Brigida Brunetti : Update CMakeLists.txt and ChangeLog.txt
-   2021-05-26 Maria Brigida Brunetti : Merge branch ‘feature/twoViewMergingTool\_updated\_clean’ into feature/larpandoracontent\_v03\_23\_01
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

larsoftobj v09\_05\_03(#larsoftobj-v09_05_03)
------------------------------------------------

lardataobj v09\_01\_02(#lardataobj-v09_01_02)
------------------------------------------------

lardataalg v09\_04\_03(#lardataalg-v09_04_03)
------------------------------------------------

larcorealg v09\_01\_01(#larcorealg-v09_01_01)
------------------------------------------------

larcoreobj v09\_02\_00(#larcoreobj-v09_02_00)
------------------------------------------------

webevd v09\_05\_04(#webevd-v09_05_04)
----------------------------------------

larbatch v01\_56\_01(#larbatch-v01_56_01)
--------------------------------------------

larutils v1\_28\_00(#larutils-v1_28_00)
------------------------------------------
