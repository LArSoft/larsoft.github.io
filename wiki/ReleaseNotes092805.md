LArSoft v09\_28\_05 Release Notes
======================================================================

-   **Table of contents**
-   [LArSoft v09\_28\_05 Release Notes](#LArSoft-v09_28_05-Release-Notes)
    -   [Purpose](#Purpose)
    -   [New features](#New-features)
    -   [Bug fixes](#Bug-fixes)
    -   [Updated dependencies](#Updated-dependencies)
-   [Change List](#Change-List)
    -   [larsoft v09\_28\_05](#larsoft-v09_28_05)
    -   [lareventdisplay v09\_01\_19](#lareventdisplay-v09_01_19)
    -   [larexamples v09\_01\_18](#larexamples-v09_01_18)
    -   [larpandora v09\_07\_05](#larpandora-v09_07_05)
    -   [larsimrad v09\_01\_18](#larsimrad-v09_01_18)
    -   [larrecodnn v09\_08\_05](#larrecodnn-v09_08_05)
    -   [larwirecell v09\_02\_13](#larwirecell-v09_02_13)
    -   [larana v09\_02\_15](#larana-v09_02_15)
    -   [larreco v09\_06\_15](#larreco-v09_06_15)
    -   [larsim v09\_14\_07](#larsim-v09_14_07)
    -   [larg4 v09\_03\_14](#larg4-v09_03_14)
    -   [larevt v09\_02\_10](#larevt-v09_02_10)
    -   [lardata v09\_02\_08](#lardata-v09_02_08)
    -   [larcore v09\_02\_04](#larcore-v09_02_04)
    -   [larpandoracontent v03\_24\_02](#larpandoracontent-v03_24_02)
    -   [larsoftobj v09\_07\_01](#larsoftobj-v09_07_01)
    -   [lardataobj v09\_01\_06](#lardataobj-v09_01_06)
    -   [lardataalg v09\_04\_07](#lardataalg-v09_04_07)
    -   [larcorealg v09\_02\_01](#larcorealg-v09_02_01)
    -   [larcoreobj v09\_02\_01](#larcoreobj-v09_02_01)
    -   [webevd v09\_05\_09](#webevd-v09_05_09)
    -   [larbatch v01\_56\_01](#larbatch-v01_56_01)
    -   [larutils v1\_28\_02](#larutils-v1_28_02)

[list of LArSoft releases](LArSoft_release_list)\
Download instructions for [larsoft v09\_28\_05](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v09_28_05/larsoft-v09_28_05.html)\
Download instructions for [just larsoftobj v09\_07\_01](http://scisoft.fnal.gov/scisoft/bundles/larsoftobj/v09_07_01/larsoftobj-v09_07_01.html)

Purpose
--------------------

-   changes in develop
-   approved PRs

New features
------------------------------

Bug fixes
------------------------

-   larg4 PR 26
    -   Handle post step-points with no process-defined steps
    -   This PR addresses redmine issue [\#26221](/redmine/issues/26221 "Bug: LArG4 Seg fault in SBND: can't access process information? (Closed)"), where segmentation violations were occurring due to post step-points that have no process-defined step. The cause for this is not yet understood, but the recommendation from @hanswenzel is to simply handle/side-step these cases.

Updated dependencies
----------------------------------------------

Change List
============================

larsoft v09\_28\_05
------------------------------------------

-   2021-09-07 Lynn Garren : larsoft v09\_28\_05 for larsoft v09\_28\_05
-   2021-09-07 Lynn Garren : product versions

lareventdisplay v09\_01\_19
----------------------------------------------------------

-   2021-09-07 Lynn Garren : lareventdisplay v09\_01\_19 for larsoft v09\_28\_05

larexamples v09\_01\_18
--------------------------------------------------

-   2021-09-07 Lynn Garren : larexamples v09\_01\_18 for larsoft v09\_28\_05

larpandora v09\_07\_05
------------------------------------------------

-   2021-09-07 Lynn Garren : larpandora v09\_07\_05 for larsoft v09\_28\_05

larsimrad v09\_01\_18
----------------------------------------------

-   2021-09-07 Lynn Garren : larsimrad v09\_01\_18 for larsoft v09\_28\_05

larrecodnn v09\_08\_05
------------------------------------------------

-   2021-09-07 Lynn Garren : larrecodnn v09\_08\_05 for larsoft v09\_28\_05

larwirecell v09\_02\_13
--------------------------------------------------

larana v09\_02\_15
----------------------------------------

-   2021-09-07 Lynn Garren : larana v09\_02\_15 for larsoft v09\_28\_05

larreco v09\_06\_15
------------------------------------------

-   2021-09-07 Lynn Garren : larreco v09\_06\_15 for larsoft v09\_28\_05

larsim v09\_14\_07
----------------------------------------

-   2021-09-07 Lynn Garren : larsim v09\_14\_07 for larsoft v09\_28\_05

larg4 v09\_03\_14
--------------------------------------

-   2021-09-07 Lynn Garren : larg4 v09\_03\_14 for larsoft v09\_28\_05
-   2021-09-07 Lynn Garren : Merge pull request \#26 from knoepfel/bugfix/knoepfel\_handle\_segfault\_again
-   2021-09-03 Kyle Knoepfel : Resolve bug [\#26221](/redmine/issues/26221 "Bug: LArG4 Seg fault in SBND: can't access process information? (Closed)"): Handle post step-points with no process-defined step.

larevt v09\_02\_10
----------------------------------------

lardata v09\_02\_08
------------------------------------------

larcore v09\_02\_04
------------------------------------------

larpandoracontent v03\_24\_02
--------------------------------------------------------------

larsoftobj v09\_07\_01
------------------------------------------------

lardataobj v09\_01\_06
------------------------------------------------

lardataalg v09\_04\_07
------------------------------------------------

larcorealg v09\_02\_01
------------------------------------------------

larcoreobj v09\_02\_01
------------------------------------------------

webevd v09\_05\_09
----------------------------------------

larbatch v01\_56\_01
--------------------------------------------

larutils v1\_28\_02
------------------------------------------
