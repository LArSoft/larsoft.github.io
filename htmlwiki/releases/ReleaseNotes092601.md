LArSoft v09_26_01 Release Notes
======================================================================

[list of LArSoft releases](LArSoft_release_list)
Download instructions for [larsoft v09_26_01](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v09_26_01/larsoft-v09_26_01.html)
Download instructions for [just larsoftobj v09_06_01](http://scisoft.fnal.gov/scisoft/bundles/larsoftobj/v09_06_01/larsoftobj-v09_06_01.html)

Purpose
--------------------

-   changes in develop
-   approved PRs

New features
------------------------------

Bug fixes
------------------------

-   lardata PR 16
    -   A memory black hole was reported in Redmine issue [redmine issue 26029](https://cdcvs.fnal.gov/redmine/issues/26029).
    -   It turns out to be a memory leak because of a “grievous error for the application”.
    -   This commit should resolve said Redmine issue [redmine issue 26029](https://cdcvs.fnal.gov/redmine/issues/26029).
-   larsim PR 70
    -   This is a proposed solution to Redmine issue [redmine issue 26010](https://cdcvs.fnal.gov/redmine/issues/26010).
    -   The method cheat::BackTracker::ChannelToTrackIDEs() uses a new method cheat::BackTracker::FindSimChannelPtr() which is quiet and reports errors by a special return value (null art::Ptr).
-   larpandoracontent PR 29
    -   This PR adds libtorch support to Pandora for the c7 build. This addresses the issue raised in [redmine issue 26016](https://cdcvs.fnal.govhttps://cdcvs.fnal.gov/redmine/issues/26016#change-84368)
    -   The ups/product_deps file is modified to include the c7 build. No other modifications are made to this file.

Updated dependencies
----------------------------------------------

-   hub v2_14_2

Change List
============================

larsoft v09_26_01
------------------------------------------

-   2021-07-14 Lynn Garren : larsoft v09_26_01 for larsoft v09_26_01
-   2021-07-14 Lynn Garren : product versions
-   2021-07-14 Lynn Garren : hub v2_14_2

lareventdisplay v09_01_13
----------------------------------------------------------

-   2021-07-14 Lynn Garren : lareventdisplay v09_01_13 for larsoft v09_26_01

larexamples v09_01_13
--------------------------------------------------

-   2021-07-14 Lynn Garren : larexamples v09_01_13 for larsoft v09_26_01

larpandora v09_06_05
------------------------------------------------

-   2021-07-14 Lynn Garren : larpandora v09_06_05 for larsoft v09_26_01

larsimrad v09_01_13
----------------------------------------------

-   2021-07-14 Lynn Garren : larsimrad v09_01_13 for larsoft v09_26_01
-   2021-07-14 Lynn Garren : find headers

larrecodnn v09_07_04
------------------------------------------------

-   2021-07-14 Lynn Garren : larrecodnn v09_07_04 for larsoft v09_26_01

larwirecell v09_02_10
--------------------------------------------------

-   2021-07-14 Lynn Garren : larwirecell v09_02_10 for larsoft v09_26_01

larana v09_02_09
----------------------------------------

-   2021-07-14 Lynn Garren : larana v09_02_09 for larsoft v09_26_01

larreco v09_06_09
------------------------------------------

-   2021-07-14 Lynn Garren : larreco v09_06_09 for larsoft v09_26_01

larsim v09_14_02
----------------------------------------

-   2021-07-14 Lynn Garren : larsim v09_14_02 for larsoft v09_26_01
-   2021-07-13 Lynn Garren : Merge pull request \#70 from PetrilloAtWork/feature/gp_issue26010
-   2021-07-07 Gianluca Petrillo : Make cheat::BackTracker::ChannelToTrackIDEs() quiet

larg4 v09_03_09
--------------------------------------

-   2021-07-14 Lynn Garren : larg4 v09_03_09 for larsoft v09_26_01

larevt v09_02_08
----------------------------------------

-   2021-07-14 Lynn Garren : larevt v09_02_08 for larsoft v09_26_01

lardata v09_02_06
------------------------------------------

-   2021-07-14 Lynn Garren : lardata v09_02_06 for larsoft v09_26_01
-   2021-07-14 Lynn Garren : Merge pull request \#16 from PetrilloAtWork/feature/gp_issue26029
-   2021-07-13 Gianluca Petrillo : Releasing memory after a SQL query.

larcore v09_02_02
------------------------------------------

larpandoracontent v03_23_05
--------------------------------------------------------------

-   2021-07-14 Lynn Garren : larpandoracontent v03_23_05 for larsoft v09_26_01
-   2021-07-10 Andrew Chappell : Update version and ChangeLog
-   2021-07-10 Andrew Chappell : Add libtorch support for c7 build

larsoftobj v09_06_01
------------------------------------------------

-   2021-07-14 Lynn Garren : larsoftobj v09_06_01 for larsoft v09_26_01
-   2021-07-14 Lynn Garren : product versions
-   2021-07-14 Lynn Garren : hub v2_14_2

lardataobj v09_01_04
------------------------------------------------

lardataalg v09_04_05
------------------------------------------------

larcorealg v09_01_02
------------------------------------------------

larcoreobj v09_02_01
------------------------------------------------

webevd v09_05_07
----------------------------------------

-   2021-07-14 Lynn Garren : webevd v09_05_07 for larsoft v09_26_01

larbatch v01_56_01
--------------------------------------------

larutils v1_28_00
------------------------------------------
