LArSoft v09\_22\_02 Release Notes
======================================================================

-   **Table of contents**
-   [LArSoft v09\_22\_02 Release Notes](#LArSoft-v09_22_02-Release-Notes)
    -   [Purpose](#Purpose)
    -   [New features](#New-features)
    -   [Bug fixes](#Bug-fixes)
    -   [Updated dependencies](#Updated-dependencies)
-   [Change List](#Change-List)
    -   [larsoft v09\_22\_02](#larsoft-v09_22_02)
    -   [lareventdisplay v09\_01\_09](#lareventdisplay-v09_01_09)
    -   [larexamples v09\_01\_09](#larexamples-v09_01_09)
    -   [larpandora v09\_05\_10](#larpandora-v09_05_10)
    -   [larsimrad v09\_01\_09](#larsimrad-v09_01_09)
    -   [larrecodnn v09\_06\_08](#larrecodnn-v09_06_08)
    -   [larwirecell v09\_02\_06](#larwirecell-v09_02_06)
    -   [larana v09\_02\_05](#larana-v09_02_05)
    -   [larreco v09\_06\_05](#larreco-v09_06_05)
    -   [larsim v09\_13\_02](#larsim-v09_13_02)
    -   [larg4 v09\_03\_06](#larg4-v09_03_06)
    -   [larevt v09\_02\_05](#larevt-v09_02_05)
    -   [lardata v09\_02\_03](#lardata-v09_02_03)
    -   [larcore v09\_02\_01](#larcore-v09_02_01)
    -   [larpandoracontent v03\_22\_10](#larpandoracontent-v03_22_10)
    -   [larsoftobj v09\_05\_03](#larsoftobj-v09_05_03)
    -   [lardataobj v09\_01\_02](#lardataobj-v09_01_02)
    -   [lardataalg v09\_04\_03](#lardataalg-v09_04_03)
    -   [larcorealg v09\_01\_01](#larcorealg-v09_01_01)
    -   [larcoreobj v09\_02\_00](#larcoreobj-v09_02_00)
    -   [webevd v09\_05\_04](#webevd-v09_05_04)
    -   [larbatch v01\_56\_01](#larbatch-v01_56_01)
    -   [larutils v1\_28\_00](#larutils-v1_28_00)

[list of LArSoft releases](LArSoft_release_list)
Download instructions for [larsoft v09\_22\_02](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v09_22_02/larsoft-v09_22_02.html)
Download instructions for [just larsoftobj v09\_05\_03](http://scisoft.fnal.gov/scisoft/bundles/larsoftobj/v09_05_03/larsoftobj-v09_05_03.html)

Purpose
--------------------

-   changes in develop
-   approved PRs

New features
------------------------------

-   larpandoracontent PR 22
    -   feature/larpandoracontent\_v03\_22\_10
    -   This PR contains a new algorithm that grows any shower particles to incorporate particles marked as being downstream (of the shower) in the particle hierarchy. The particle growing proceeds automatically, decoupling this algorithm from the precise logic used to form the hierarchy itself.
    -   The algorithm is not yet active in any experimental configuration, and so no product changes are expected with this PR.

Bug fixes
------------------------

-   lareventdisplay PR 11
    -   Use fSimChannelLabel to get LArVoxel list
    -   resolution for [\#25780](/redmine/issues/25780 "Bug: Event Display Malfunction (Closed)")
-   larbatch PR 16
    -   Fix dags singularity image
-   larevt PR 11
    -   Update LArG4ParticleFilter\_module.cc
    -   Added missing call to StartInTPCCheck
    -   **NOTE:** This PR will affect post G4 particle filtering. I am working with kaons which are starting in TPC post G4, and without this line I ended up with large number of events where kaons are not inside TPC.

Updated dependencies
----------------------------------------------

Change List
============================

larsoft v09\_22\_02
------------------------------------------

-   2021-04-29 Lynn Garren : larsoft v09\_22\_02 for larsoft v09\_22\_02
-   2021-04-29 Lynn Garren : product versions

lareventdisplay v09\_01\_09
----------------------------------------------------------

-   2021-04-29 Lynn Garren : lareventdisplay v09\_01\_09 for larsoft v09\_22\_02
-   2021-04-28 Lynn Garren : Merge pull request \#11 from yangtj207/develop
-   2021-04-28 Tingjun Yang : Add a comment that GetLarVoxelList should be adjusted to take an InputTag instead of strange.
-   2021-04-28 Tingjun Yang : Remove unsupported labels.
-   2021-04-28 Tingjun Yang : Use fSimChannelLabel to get LArVoxel list.

larexamples v09\_01\_09
--------------------------------------------------

-   2021-04-29 Lynn Garren : larexamples v09\_01\_09 for larsoft v09\_22\_02

larpandora v09\_05\_10
------------------------------------------------

-   2021-04-29 Lynn Garren : larpandora v09\_05\_10 for larsoft v09\_22\_02

larsimrad v09\_01\_09
----------------------------------------------

-   2021-04-29 Lynn Garren : larsimrad v09\_01\_09 for larsoft v09\_22\_02

larrecodnn v09\_06\_08
------------------------------------------------

-   2021-04-29 Lynn Garren : larrecodnn v09\_06\_08 for larsoft v09\_22\_02

larwirecell v09\_02\_06
--------------------------------------------------

-   2021-04-29 Lynn Garren : larwirecell v09\_02\_06 for larsoft v09\_22\_02

larana v09\_02\_05
----------------------------------------

-   2021-04-29 Lynn Garren : larana v09\_02\_05 for larsoft v09\_22\_02

larreco v09\_06\_05
------------------------------------------

-   2021-04-29 Lynn Garren : larreco v09\_06\_05 for larsoft v09\_22\_02

larsim v09\_13\_02
----------------------------------------

-   2021-04-29 Lynn Garren : larsim v09\_13\_02 for larsoft v09\_22\_02

larg4 v09\_03\_06
--------------------------------------

-   2021-04-29 Lynn Garren : larg4 v09\_03\_06 for larsoft v09\_22\_02

larevt v09\_02\_05
----------------------------------------

-   2021-04-29 Lynn Garren : larevt v09\_02\_05 for larsoft v09\_22\_02
-   2021-04-26 imranyusuff : Update LArG4ParticleFilter\_module.cc

lardata v09\_02\_03
------------------------------------------

larcore v09\_02\_01
------------------------------------------

larpandoracontent v03\_22\_10
--------------------------------------------------------------

-   2021-04-29 Lynn Garren : larpandoracontent v03\_22\_10 for larsoft v09\_22\_02
-   2021-04-26 Andrew Chappell : Update version and ChangeLog
-   2021-04-26 AndyChappell : Merge pull request [\#166](/redmine/issues/166 "Feature: Correctly handle all signals of interest (Closed)") from johnmarshall80/feature/ShowerHierarchyMopUp
-   2021-04-21 John Marshall : Run clang format.
-   2021-04-21 John Marshall : Remove debug visualisation.
-   2021-04-21 John Marshall : Initial commit of ShowerHierarchyMopUp algorithm, including visualisation.

larsoftobj v09\_05\_03
------------------------------------------------

lardataobj v09\_01\_02
------------------------------------------------

lardataalg v09\_04\_03
------------------------------------------------

larcorealg v09\_01\_01
------------------------------------------------

larcoreobj v09\_02\_00
------------------------------------------------

webevd v09\_05\_04
----------------------------------------

larbatch v01\_56\_01
--------------------------------------------

-   2021-04-29 Lynn Garren : larbatch v01\_56\_01 for larsoft v09\_22\_02
-   2021-04-26 Lynn Garren : Merge pull request \#16 from hgreenlee/develop
-   2021-04-23 Herbert Greenlee : Fix singularity image.

larutils v1\_28\_00
------------------------------------------
