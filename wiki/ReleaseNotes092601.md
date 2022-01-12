LArSoft v09\_26\_01 Release Notes
======================================================================

-   **Table of contents**
-   [LArSoft v09\_26\_01 Release Notes](#LArSoft-v09_26_01-Release-Notes)
    -   [Purpose](#Purpose)
    -   [New features](#New-features)
    -   [Bug fixes](#Bug-fixes)
    -   [Updated dependencies](#Updated-dependencies)
-   [Change List](#Change-List)
    -   [larsoft v09\_26\_01](#larsoft-v09_26_01)
    -   [lareventdisplay v09\_01\_13](#lareventdisplay-v09_01_13)
    -   [larexamples v09\_01\_13](#larexamples-v09_01_13)
    -   [larpandora v09\_06\_05](#larpandora-v09_06_05)
    -   [larsimrad v09\_01\_13](#larsimrad-v09_01_13)
    -   [larrecodnn v09\_07\_04](#larrecodnn-v09_07_04)
    -   [larwirecell v09\_02\_10](#larwirecell-v09_02_10)
    -   [larana v09\_02\_09](#larana-v09_02_09)
    -   [larreco v09\_06\_09](#larreco-v09_06_09)
    -   [larsim v09\_14\_02](#larsim-v09_14_02)
    -   [larg4 v09\_03\_09](#larg4-v09_03_09)
    -   [larevt v09\_02\_08](#larevt-v09_02_08)
    -   [lardata v09\_02\_06](#lardata-v09_02_06)
    -   [larcore v09\_02\_02](#larcore-v09_02_02)
    -   [larpandoracontent v03\_23\_05](#larpandoracontent-v03_23_05)
    -   [larsoftobj v09\_06\_01](#larsoftobj-v09_06_01)
    -   [lardataobj v09\_01\_04](#lardataobj-v09_01_04)
    -   [lardataalg v09\_04\_05](#lardataalg-v09_04_05)
    -   [larcorealg v09\_01\_02](#larcorealg-v09_01_02)
    -   [larcoreobj v09\_02\_01](#larcoreobj-v09_02_01)
    -   [webevd v09\_05\_07](#webevd-v09_05_07)
    -   [larbatch v01\_56\_01](#larbatch-v01_56_01)
    -   [larutils v1\_28\_00](#larutils-v1_28_00)

[list of LArSoft releases](LArSoft_release_list)
Download instructions for [larsoft v09\_26\_01](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v09_26_01/larsoft-v09_26_01.html)
Download instructions for [just larsoftobj v09\_06\_01](http://scisoft.fnal.gov/scisoft/bundles/larsoftobj/v09_06_01/larsoftobj-v09_06_01.html)

Purpose
--------------------

-   changes in develop
-   approved PRs

New features
------------------------------

Bug fixes
------------------------

-   lardata PR 16
    -   A memory black hole was reported in Redmine issue [\#26029](/redmine/issues/26029 "Bug: problem building larcorealg tests with art 3.09 (Closed)").
    -   It turns out to be a memory leak because of a “grievous error for the application”.
    -   This commit should resolve said Redmine issue [\#26029](/redmine/issues/26029 "Bug: problem building larcorealg tests with art 3.09 (Closed)").
-   larsim PR 70
    -   This is a proposed solution to Redmine issue [\#26010](/redmine/issues/26010 "Necessary Maintenance: Flood of BackTracker warnings "No sim::SimChannel corresponding to channel" (Closed)").
    -   The method cheat::BackTracker::ChannelToTrackIDEs() uses a new method cheat::BackTracker::FindSimChannelPtr() which is quiet and reports errors by a special return value (null art::Ptr).
-   larpandoracontent PR 29
    -   This PR adds libtorch support to Pandora for the c7 build. This addresses the issue raised in [redmine issue 26016](https://cdcvs.fnal.gov/redmine/issues/26016#change-84368)
    -   The ups/product\_deps file is modified to include the c7 build. No other modifications are made to this file.

Updated dependencies
----------------------------------------------

-   hub v2\_14\_2

Change List
============================

larsoft v09\_26\_01
------------------------------------------

-   2021-07-14 Lynn Garren : larsoft v09\_26\_01 for larsoft v09\_26\_01
-   2021-07-14 Lynn Garren : product versions
-   2021-07-14 Lynn Garren : hub v2\_14\_2

lareventdisplay v09\_01\_13
----------------------------------------------------------

-   2021-07-14 Lynn Garren : lareventdisplay v09\_01\_13 for larsoft v09\_26\_01

larexamples v09\_01\_13
--------------------------------------------------

-   2021-07-14 Lynn Garren : larexamples v09\_01\_13 for larsoft v09\_26\_01

larpandora v09\_06\_05
------------------------------------------------

-   2021-07-14 Lynn Garren : larpandora v09\_06\_05 for larsoft v09\_26\_01

larsimrad v09\_01\_13
----------------------------------------------

-   2021-07-14 Lynn Garren : larsimrad v09\_01\_13 for larsoft v09\_26\_01
-   2021-07-14 Lynn Garren : find headers

larrecodnn v09\_07\_04
------------------------------------------------

-   2021-07-14 Lynn Garren : larrecodnn v09\_07\_04 for larsoft v09\_26\_01

larwirecell v09\_02\_10
--------------------------------------------------

-   2021-07-14 Lynn Garren : larwirecell v09\_02\_10 for larsoft v09\_26\_01

larana v09\_02\_09
----------------------------------------

-   2021-07-14 Lynn Garren : larana v09\_02\_09 for larsoft v09\_26\_01

larreco v09\_06\_09
------------------------------------------

-   2021-07-14 Lynn Garren : larreco v09\_06\_09 for larsoft v09\_26\_01

larsim v09\_14\_02
----------------------------------------

-   2021-07-14 Lynn Garren : larsim v09\_14\_02 for larsoft v09\_26\_01
-   2021-07-13 Lynn Garren : Merge pull request \#70 from PetrilloAtWork/feature/gp\_issue26010
-   2021-07-07 Gianluca Petrillo : Make cheat::BackTracker::ChannelToTrackIDEs() quiet

larg4 v09\_03\_09
--------------------------------------

-   2021-07-14 Lynn Garren : larg4 v09\_03\_09 for larsoft v09\_26\_01

larevt v09\_02\_08
----------------------------------------

-   2021-07-14 Lynn Garren : larevt v09\_02\_08 for larsoft v09\_26\_01

lardata v09\_02\_06
------------------------------------------

-   2021-07-14 Lynn Garren : lardata v09\_02\_06 for larsoft v09\_26\_01
-   2021-07-14 Lynn Garren : Merge pull request \#16 from PetrilloAtWork/feature/gp\_issue26029
-   2021-07-13 Gianluca Petrillo : Releasing memory after a SQL query.

larcore v09\_02\_02
------------------------------------------

larpandoracontent v03\_23\_05
--------------------------------------------------------------

-   2021-07-14 Lynn Garren : larpandoracontent v03\_23\_05 for larsoft v09\_26\_01
-   2021-07-10 Andrew Chappell : Update version and ChangeLog
-   2021-07-10 Andrew Chappell : Add libtorch support for c7 build

larsoftobj v09\_06\_01
------------------------------------------------

-   2021-07-14 Lynn Garren : larsoftobj v09\_06\_01 for larsoft v09\_26\_01
-   2021-07-14 Lynn Garren : product versions
-   2021-07-14 Lynn Garren : hub v2\_14\_2

lardataobj v09\_01\_04
------------------------------------------------

lardataalg v09\_04\_05
------------------------------------------------

larcorealg v09\_01\_02
------------------------------------------------

larcoreobj v09\_02\_01
------------------------------------------------

webevd v09\_05\_07
----------------------------------------

-   2021-07-14 Lynn Garren : webevd v09\_05\_07 for larsoft v09\_26\_01

larbatch v01\_56\_01
--------------------------------------------

larutils v1\_28\_00
------------------------------------------
