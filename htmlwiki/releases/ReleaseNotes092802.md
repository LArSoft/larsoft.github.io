LArSoft v09_28_02 Release Notes
======================================================================

[list of LArSoft releases](LArSoft_release_list)
Download instructions for [larsoft v09_28_02](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v09_28_02/larsoft-v09_28_02.html)
Download instructions for [just larsoftobj v09_07_01](http://scisoft.fnal.gov/scisoft/bundles/larsoftobj/v09_07_01/larsoftobj-v09_07_01.html)

Purpose
--------------------

-   changes in develop
-   approved PRs

New features
------------------------------

-   larpandoracontent PR 31
    -   This PR addresses an issue that can arise where the standard (non-mva) vertexing algorithm (not present in any current experimental configuration) would fail due to the AsymmetryFeatureBaseTool handling of cases where there are no shower clusters present.
    -   It also introduces a new algorithm which refines vertex candidate positions based on the directions of nearby clusters. This is not yet active in any experimental configuration.
    -   No changes are expected in products.

Bug fixes
------------------------

-   larcorealg PR 20
    -   This is the proposed resolution for Redmine issue [redmine issue 26127](https://cdcvs.fnal.gov/redmine/issues/26127).
    -   A part of the wire intersection test is supposed to pick two wires from different TPC, that are not parallel, and return that the intersection is not possible (or something like that) because belonging on different TPC. The code picking the wire was quite lazy and relied on a situation that SBND does not fall into any more. This pull request should rectify that.
    -   It also contains minor changes that I made while working on the resolution. Another commit attempts to clarify the language of geo::GeometryCore::WireIDsIntersect() documentation explaining the domain of the method and its possible return values.

Updated dependencies
----------------------------------------------

-   nurandom v1_05_04 for [redmine issue 26116](https://cdcvs.fnal.gov/redmine/issues/26116)

Change List
============================

larsoft v09_28_02
------------------------------------------

-   2021-08-18 Lynn Garren : larsoft v09_28_02 for larsoft v09_28_02
-   2021-08-18 Lynn Garren : nulite v3_09_04a

lareventdisplay v09_01_16
----------------------------------------------------------

-   2021-08-18 Lynn Garren : lareventdisplay v09_01_16 for larsoft v09_28_02

larexamples v09_01_15
--------------------------------------------------

-   2021-08-18 Lynn Garren : larexamples v09_01_15 for larsoft v09_28_02

larpandora v09_07_02
------------------------------------------------

-   2021-08-18 Lynn Garren : larpandora v09_07_02 for larsoft v09_28_02

larsimrad v09_01_15
----------------------------------------------

-   2021-08-18 Lynn Garren : larsimrad v09_01_15 for larsoft v09_28_02

larrecodnn v09_08_02
------------------------------------------------

-   2021-08-18 Lynn Garren : larrecodnn v09_08_02 for larsoft v09_28_02

larwirecell v09_02_13
--------------------------------------------------

-   2021-08-18 Lynn Garren : larwirecell v09_02_13 for larsoft v09_28_02

larana v09_02_12
----------------------------------------

-   2021-08-18 Lynn Garren : larana v09_02_12 for larsoft v09_28_02

larreco v09_06_12
------------------------------------------

-   2021-08-18 Lynn Garren : larreco v09_06_12 for larsoft v09_28_02

larsim v09_14_04
----------------------------------------

-   2021-08-18 Lynn Garren : larsim v09_14_04 for larsoft v09_28_02

larg4 v09_03_11
--------------------------------------

-   2021-08-18 Lynn Garren : larg4 v09_03_11 for larsoft v09_28_02

larevt v09_02_10
----------------------------------------

-   2021-08-18 Lynn Garren : larevt v09_02_10 for larsoft v09_28_02

lardata v09_02_08
------------------------------------------

-   2021-08-18 Lynn Garren : lardata v09_02_08 for larsoft v09_28_02

larcore v09_02_04
------------------------------------------

-   2021-08-18 Lynn Garren : larcore v09_02_04 for larsoft v09_28_02

larpandoracontent v03_24_02
--------------------------------------------------------------

-   2021-08-18 Lynn Garren : larpandoracontent v03_24_02 for larsoft v09_28_02
-   2021-08-18 Lynn Garren : Merge pull request \#31 from PandoraPFA/feature/larpandoracontent_v03_24_02
-   2021-08-17 Andrew Chappell : Update version and ChangeLog
-   2021-08-17 AndyChappell : Merge pull request [redmine issue 181](https://cdcvs.fnal.gov/redmine/issues/181) from henrylay97/feature/hlay_vertex_refinement_algorithm
-   2021-08-16 Henry Lay : Further review comments
-   2021-08-16 Henry Lay : Address review comments
-   2021-07-01 Henry Lay : Create vertex refinement algorithm
-   2021-08-11 AndyChappell : Merge pull request [redmine issue 180](https://cdcvs.fnal.gov/redmine/issues/180) from etyley/bugfix/etyley_vertexAsymmetry
-   2021-08-04 Edward Tyley : Fix vertex asymmetry tools when no shower clusters are present

larsoftobj v09_07_01
------------------------------------------------

-   2021-08-18 Lynn Garren : larsoftobj v09_07_01 for larsoft v09_28_02
-   2021-08-18 Lynn Garren : product versions

lardataobj v09_01_06
------------------------------------------------

-   2021-08-18 Lynn Garren : lardataobj v09_01_06 for larsoft v09_28_02

lardataalg v09_04_07
------------------------------------------------

-   2021-08-18 Lynn Garren : lardataalg v09_04_07 for larsoft v09_28_02

larcorealg v09_02_01
------------------------------------------------

-   2021-08-18 Lynn Garren : larcorealg v09_02_01 for larsoft v09_28_02
-   2021-08-18 Lynn Garren : Merge pull request \#20 from PetrilloAtWork/feature/gp_issue26127
-   2021-08-17 Gianluca Petrillo : Removed confusing comments
-   2021-08-12 Gianluca Petrillo : Simplified wire/plane alignment in wire intersection geometry test
-   2021-08-12 Gianluca Petrillo : Tightened alignment check in wire intersection geometry test
-   2021-08-11 Gianluca Petrillo : Clarification on the intended behaviour of GeometryCore::WireIDsIntersect().
-   2021-08-11 Gianluca Petrillo : Geometry test: mass computation skipping extended to TPC
-   2021-08-11 Gianluca Petrillo : Geometry wire intersection test code trimmed a bit.
-   2021-08-11 Gianluca Petrillo : Geometry wire intersection test logic revised for issue [redmine issue 26127](https://cdcvs.fnal.gov/redmine/issues/26127)

larcoreobj v09_02_01
------------------------------------------------

webevd v09_05_09
----------------------------------------

-   2021-08-18 Lynn Garren : webevd v09_05_09 for larsoft v09_28_02

larbatch v01_56_01
--------------------------------------------

larutils v1_28_00
------------------------------------------
