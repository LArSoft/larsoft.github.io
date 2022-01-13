LArSoft v09_22_02 Release Notes
======================================================================

[list of LArSoft releases](LArSoft_release_list)
Download instructions for [larsoft v09_22_02](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v09_22_02/larsoft-v09_22_02.html)
Download instructions for [just larsoftobj v09_05_03](http://scisoft.fnal.gov/scisoft/bundles/larsoftobj/v09_05_03/larsoftobj-v09_05_03.html)

Purpose
--------------------

-   changes in develop
-   approved PRs

New features
------------------------------

-   larpandoracontent PR 22
    -   feature/larpandoracontent_v03_22_10
    -   This PR contains a new algorithm that grows any shower particles to incorporate particles marked as being downstream (of the shower) in the particle hierarchy. The particle growing proceeds automatically, decoupling this algorithm from the precise logic used to form the hierarchy itself.
    -   The algorithm is not yet active in any experimental configuration, and so no product changes are expected with this PR.

Bug fixes
------------------------

-   lareventdisplay PR 11
    -   Use fSimChannelLabel to get LArVoxel list
    -   resolution for [redmine issue 25780](https://cdcvs.fnal.gov/redmine/issues/25780)
-   larbatch PR 16
    -   Fix dags singularity image
-   larevt PR 11
    -   Update LArG4ParticleFilter_module.cc
    -   Added missing call to StartInTPCCheck
    -   **NOTE:** This PR will affect post G4 particle filtering. I am working with kaons which are starting in TPC post G4, and without this line I ended up with large number of events where kaons are not inside TPC.

Updated dependencies
----------------------------------------------

Change List
============================

larsoft v09_22_02
------------------------------------------

-   2021-04-29 Lynn Garren : larsoft v09_22_02 for larsoft v09_22_02
-   2021-04-29 Lynn Garren : product versions

lareventdisplay v09_01_09
----------------------------------------------------------

-   2021-04-29 Lynn Garren : lareventdisplay v09_01_09 for larsoft v09_22_02
-   2021-04-28 Lynn Garren : Merge pull request \#11 from yangtj207/develop
-   2021-04-28 Tingjun Yang : Add a comment that GetLarVoxelList should be adjusted to take an InputTag instead of strange.
-   2021-04-28 Tingjun Yang : Remove unsupported labels.
-   2021-04-28 Tingjun Yang : Use fSimChannelLabel to get LArVoxel list.

larexamples v09_01_09
--------------------------------------------------

-   2021-04-29 Lynn Garren : larexamples v09_01_09 for larsoft v09_22_02

larpandora v09_05_10
------------------------------------------------

-   2021-04-29 Lynn Garren : larpandora v09_05_10 for larsoft v09_22_02

larsimrad v09_01_09
----------------------------------------------

-   2021-04-29 Lynn Garren : larsimrad v09_01_09 for larsoft v09_22_02

larrecodnn v09_06_08
------------------------------------------------

-   2021-04-29 Lynn Garren : larrecodnn v09_06_08 for larsoft v09_22_02

larwirecell v09_02_06
--------------------------------------------------

-   2021-04-29 Lynn Garren : larwirecell v09_02_06 for larsoft v09_22_02

larana v09_02_05
----------------------------------------

-   2021-04-29 Lynn Garren : larana v09_02_05 for larsoft v09_22_02

larreco v09_06_05
------------------------------------------

-   2021-04-29 Lynn Garren : larreco v09_06_05 for larsoft v09_22_02

larsim v09_13_02
----------------------------------------

-   2021-04-29 Lynn Garren : larsim v09_13_02 for larsoft v09_22_02

larg4 v09_03_06
--------------------------------------

-   2021-04-29 Lynn Garren : larg4 v09_03_06 for larsoft v09_22_02

larevt v09_02_05
----------------------------------------

-   2021-04-29 Lynn Garren : larevt v09_02_05 for larsoft v09_22_02
-   2021-04-26 imranyusuff : Update LArG4ParticleFilter_module.cc

lardata v09_02_03
------------------------------------------

larcore v09_02_01
------------------------------------------

larpandoracontent v03_22_10
--------------------------------------------------------------

-   2021-04-29 Lynn Garren : larpandoracontent v03_22_10 for larsoft v09_22_02
-   2021-04-26 Andrew Chappell : Update version and ChangeLog
-   2021-04-26 AndyChappell : Merge pull request [redmine issue 166](https://cdcvs.fnal.gov/redmine/issues/166) from johnmarshall80/feature/ShowerHierarchyMopUp
-   2021-04-21 John Marshall : Run clang format.
-   2021-04-21 John Marshall : Remove debug visualisation.
-   2021-04-21 John Marshall : Initial commit of ShowerHierarchyMopUp algorithm, including visualisation.

larsoftobj v09_05_03
------------------------------------------------

lardataobj v09_01_02
------------------------------------------------

lardataalg v09_04_03
------------------------------------------------

larcorealg v09_01_01
------------------------------------------------

larcoreobj v09_02_00
------------------------------------------------

webevd v09_05_04
----------------------------------------

larbatch v01_56_01
--------------------------------------------

-   2021-04-29 Lynn Garren : larbatch v01_56_01 for larsoft v09_22_02
-   2021-04-26 Lynn Garren : Merge pull request \#16 from hgreenlee/develop
-   2021-04-23 Herbert Greenlee : Fix singularity image.

larutils v1_28_00
------------------------------------------
