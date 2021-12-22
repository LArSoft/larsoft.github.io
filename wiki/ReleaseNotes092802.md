LArSoft v09\_28\_02 Release Notes(#LArSoft-v09_28_02-Release-Notes)
======================================================================

-   **Table of contents**
-   [LArSoft v09\_28\_02 Release Notes](#LArSoft-v09_28_02-Release-Notes)
    -   [Purpose](#Purpose)
    -   [New features](#New-features)
    -   [Bug fixes](#Bug-fixes)
    -   [Updated dependencies](#Updated-dependencies)
-   [Change List](#Change-List)
    -   [larsoft v09\_28\_02](#larsoft-v09_28_02)
    -   [lareventdisplay v09\_01\_16](#lareventdisplay-v09_01_16)
    -   [larexamples v09\_01\_15](#larexamples-v09_01_15)
    -   [larpandora v09\_07\_02](#larpandora-v09_07_02)
    -   [larsimrad v09\_01\_15](#larsimrad-v09_01_15)
    -   [larrecodnn v09\_08\_02](#larrecodnn-v09_08_02)
    -   [larwirecell v09\_02\_13](#larwirecell-v09_02_13)
    -   [larana v09\_02\_12](#larana-v09_02_12)
    -   [larreco v09\_06\_12](#larreco-v09_06_12)
    -   [larsim v09\_14\_04](#larsim-v09_14_04)
    -   [larg4 v09\_03\_11](#larg4-v09_03_11)
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
    -   [larutils v1\_28\_00](#larutils-v1_28_00)

[list of LArSoft releases](LArSoft_release_list)\
Download instructions for [larsoft v09\_28\_02](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v09_28_02/larsoft-v09_28_02.html)\
Download instructions for [just larsoftobj v09\_07\_01](http://scisoft.fnal.gov/scisoft/bundles/larsoftobj/v09_07_01/larsoftobj-v09_07_01.html)

Purpose(#Purpose)
--------------------

-   changes in develop
-   approved PRs

New features(#New-features)
------------------------------

-   larpandoracontent PR 31
    -   This PR addresses an issue that can arise where the standard (non-mva) vertexing algorithm (not present in any current experimental configuration) would fail due to the AsymmetryFeatureBaseTool handling of cases where there are no shower clusters present.
    -   It also introduces a new algorithm which refines vertex candidate positions based on the directions of nearby clusters. This is not yet active in any experimental configuration.
    -   No changes are expected in products.

Bug fixes(#Bug-fixes)
------------------------

-   larcorealg PR 20
    -   This is the proposed resolution for Redmine issue [\#26127](/redmine/issues/26127 "Bug: Geometry WireIntersect Test (Closed)").
    -   A part of the wire intersection test is supposed to pick two wires from different TPC, that are not parallel, and return that the intersection is not possible (or something like that) because belonging on different TPC. The code picking the wire was quite lazy and relied on a situation that SBND does not fall into any more. This pull request should rectify that.
    -   It also contains minor changes that I made while working on the resolution. Another commit attempts to clarify the language of geo::GeometryCore::WireIDsIntersect() documentation explaining the domain of the method and its possible return values.

Updated dependencies(#Updated-dependencies)
----------------------------------------------

-   nurandom v1\_05\_04 for [\#26116](/redmine/issues/26116 "Bug: CORSIKAGen not compatible with NuRandomService "perEvent" policy (Closed)")

Change List(#Change-List)
============================

larsoft v09\_28\_02(#larsoft-v09_28_02)
------------------------------------------

-   2021-08-18 Lynn Garren : larsoft v09\_28\_02 for larsoft v09\_28\_02
-   2021-08-18 Lynn Garren : nulite v3\_09\_04a

lareventdisplay v09\_01\_16(#lareventdisplay-v09_01_16)
----------------------------------------------------------

-   2021-08-18 Lynn Garren : lareventdisplay v09\_01\_16 for larsoft v09\_28\_02

larexamples v09\_01\_15(#larexamples-v09_01_15)
--------------------------------------------------

-   2021-08-18 Lynn Garren : larexamples v09\_01\_15 for larsoft v09\_28\_02

larpandora v09\_07\_02(#larpandora-v09_07_02)
------------------------------------------------

-   2021-08-18 Lynn Garren : larpandora v09\_07\_02 for larsoft v09\_28\_02

larsimrad v09\_01\_15(#larsimrad-v09_01_15)
----------------------------------------------

-   2021-08-18 Lynn Garren : larsimrad v09\_01\_15 for larsoft v09\_28\_02

larrecodnn v09\_08\_02(#larrecodnn-v09_08_02)
------------------------------------------------

-   2021-08-18 Lynn Garren : larrecodnn v09\_08\_02 for larsoft v09\_28\_02

larwirecell v09\_02\_13(#larwirecell-v09_02_13)
--------------------------------------------------

-   2021-08-18 Lynn Garren : larwirecell v09\_02\_13 for larsoft v09\_28\_02

larana v09\_02\_12(#larana-v09_02_12)
----------------------------------------

-   2021-08-18 Lynn Garren : larana v09\_02\_12 for larsoft v09\_28\_02

larreco v09\_06\_12(#larreco-v09_06_12)
------------------------------------------

-   2021-08-18 Lynn Garren : larreco v09\_06\_12 for larsoft v09\_28\_02

larsim v09\_14\_04(#larsim-v09_14_04)
----------------------------------------

-   2021-08-18 Lynn Garren : larsim v09\_14\_04 for larsoft v09\_28\_02

larg4 v09\_03\_11(#larg4-v09_03_11)
--------------------------------------

-   2021-08-18 Lynn Garren : larg4 v09\_03\_11 for larsoft v09\_28\_02

larevt v09\_02\_10(#larevt-v09_02_10)
----------------------------------------

-   2021-08-18 Lynn Garren : larevt v09\_02\_10 for larsoft v09\_28\_02

lardata v09\_02\_08(#lardata-v09_02_08)
------------------------------------------

-   2021-08-18 Lynn Garren : lardata v09\_02\_08 for larsoft v09\_28\_02

larcore v09\_02\_04(#larcore-v09_02_04)
------------------------------------------

-   2021-08-18 Lynn Garren : larcore v09\_02\_04 for larsoft v09\_28\_02

larpandoracontent v03\_24\_02(#larpandoracontent-v03_24_02)
--------------------------------------------------------------

-   2021-08-18 Lynn Garren : larpandoracontent v03\_24\_02 for larsoft v09\_28\_02
-   2021-08-18 Lynn Garren : Merge pull request \#31 from PandoraPFA/feature/larpandoracontent\_v03\_24\_02
-   2021-08-17 Andrew Chappell : Update version and ChangeLog
-   2021-08-17 AndyChappell : Merge pull request [\#181](/redmine/issues/181 "Bug: Properly handle Activity status change (Closed)") from henrylay97/feature/hlay\_vertex\_refinement\_algorithm
-   2021-08-16 Henry Lay : Further review comments
-   2021-08-16 Henry Lay : Address review comments
-   2021-07-01 Henry Lay : Create vertex refinement algorithm
-   2021-08-11 AndyChappell : Merge pull request [\#180](/redmine/issues/180 "Feature: Provide web interface and code to enable Activity deletion (Closed)") from etyley/bugfix/etyley\_vertexAsymmetry
-   2021-08-04 Edward Tyley : Fix vertex asymmetry tools when no shower clusters are present

larsoftobj v09\_07\_01(#larsoftobj-v09_07_01)
------------------------------------------------

-   2021-08-18 Lynn Garren : larsoftobj v09\_07\_01 for larsoft v09\_28\_02
-   2021-08-18 Lynn Garren : product versions

lardataobj v09\_01\_06(#lardataobj-v09_01_06)
------------------------------------------------

-   2021-08-18 Lynn Garren : lardataobj v09\_01\_06 for larsoft v09\_28\_02

lardataalg v09\_04\_07(#lardataalg-v09_04_07)
------------------------------------------------

-   2021-08-18 Lynn Garren : lardataalg v09\_04\_07 for larsoft v09\_28\_02

larcorealg v09\_02\_01(#larcorealg-v09_02_01)
------------------------------------------------

-   2021-08-18 Lynn Garren : larcorealg v09\_02\_01 for larsoft v09\_28\_02
-   2021-08-18 Lynn Garren : Merge pull request \#20 from PetrilloAtWork/feature/gp\_issue26127
-   2021-08-17 Gianluca Petrillo : Removed confusing comments
-   2021-08-12 Gianluca Petrillo : Simplified wire/plane alignment in wire intersection geometry test
-   2021-08-12 Gianluca Petrillo : Tightened alignment check in wire intersection geometry test
-   2021-08-11 Gianluca Petrillo : Clarification on the intended behaviour of GeometryCore::WireIDsIntersect().
-   2021-08-11 Gianluca Petrillo : Geometry test: mass computation skipping extended to TPC
-   2021-08-11 Gianluca Petrillo : Geometry wire intersection test code trimmed a bit.
-   2021-08-11 Gianluca Petrillo : Geometry wire intersection test logic revised for issue [\#26127](/redmine/issues/26127 "Bug: Geometry WireIntersect Test (Closed)")

larcoreobj v09\_02\_01(#larcoreobj-v09_02_01)
------------------------------------------------

webevd v09\_05\_09(#webevd-v09_05_09)
----------------------------------------

-   2021-08-18 Lynn Garren : webevd v09\_05\_09 for larsoft v09\_28\_02

larbatch v01\_56\_01(#larbatch-v01_56_01)
--------------------------------------------

larutils v1\_28\_00(#larutils-v1_28_00)
------------------------------------------
