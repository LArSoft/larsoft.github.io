LArSoft v09\_28\_00 Release Notes[¶](#LArSoft-v09_28_00-Release-Notes)
======================================================================

-   **Table of contents**
-   [LArSoft v09\_28\_00 Release Notes](#LArSoft-v09_28_00-Release-Notes)
    -   [Purpose](#Purpose)
    -   [New features](#New-features)
    -   [Bug fixes](#Bug-fixes)
    -   [Updated dependencies](#Updated-dependencies)
-   [Change List](#Change-List)
    -   [larsoft v09\_28\_00](#larsoft-v09_28_00)
    -   [lareventdisplay v09\_01\_15](#lareventdisplay-v09_01_15)
    -   [larexamples v09\_01\_14](#larexamples-v09_01_14)
    -   [larpandora v09\_07\_01](#larpandora-v09_07_01)
    -   [larsimrad v09\_01\_14](#larsimrad-v09_01_14)
    -   [larrecodnn v09\_08\_01](#larrecodnn-v09_08_01)
    -   [larwirecell v09\_02\_11](#larwirecell-v09_02_11)
    -   [larana v09\_02\_11](#larana-v09_02_11)
    -   [larreco v09\_06\_11](#larreco-v09_06_11)
    -   [larsim v09\_14\_03](#larsim-v09_14_03)
    -   [larg4 v09\_03\_10](#larg4-v09_03_10)
    -   [larevt v09\_02\_09](#larevt-v09_02_09)
    -   [lardata v09\_02\_07](#lardata-v09_02_07)
    -   [larcore v09\_02\_03](#larcore-v09_02_03)
    -   [larpandoracontent v03\_24\_01](#larpandoracontent-v03_24_01)
    -   [larsoftobj v09\_07\_00](#larsoftobj-v09_07_00)
    -   [lardataobj v09\_01\_05](#lardataobj-v09_01_05)
    -   [lardataalg v09\_04\_06](#lardataalg-v09_04_06)
    -   [larcorealg v09\_02\_00](#larcorealg-v09_02_00)
    -   [larcoreobj v09\_02\_01](#larcoreobj-v09_02_01)
    -   [webevd v09\_05\_08](#webevd-v09_05_08)
    -   [larbatch v01\_56\_01](#larbatch-v01_56_01)
    -   [larutils v1\_28\_00](#larutils-v1_28_00)

[list of LArSoft releases](LArSoft_release_list)\
Download instructions for [larsoft v09\_28\_00](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v09_28_00/larsoft-v09_28_00.html)\
Download instructions for [just larsoftobj v09\_07\_00](http://scisoft.fnal.gov/scisoft/bundles/larsoftobj/v09_07_00/larsoftobj-v09_07_00.html)


Purpose[¶](#Purpose)
--------------------

-   changes in develop
-   approved PRs


New features[¶](#New-features)
------------------------------

-   larcorealg PR 17
    -   Resolve Redmine issue [\#25977](/redmine/issues/25977 "Feature: Intersection of wires from different TPC (Assigned)").
    -   Discussion and description of the design can be found in that ticket. As usual, the core new features are unit-tested, and all the new functions and methods are Doxygen-documented. In particular, unit testing covers the lowest level free functions (intersection of lines) and the top level (geo::GeometryCore methods).
    -   In addition, a commit is updating the Doxygen format of geo::WireGeo, which was somehow broken with methods escaping their documentation group.


Bug fixes[¶](#Bug-fixes)
------------------------


Updated dependencies[¶](#Updated-dependencies)
----------------------------------------------


Change List[¶](#Change-List)
============================


larsoft v09\_28\_00[¶](#larsoft-v09_28_00)
------------------------------------------

-   2021-08-04 Lynn Garren : larsoft v09\_28\_00 for larsoft v09\_28\_00
-   2021-08-04 Lynn Garren : product versions


lareventdisplay v09\_01\_15[¶](#lareventdisplay-v09_01_15)
----------------------------------------------------------

-   2021-08-04 Lynn Garren : lareventdisplay v09\_01\_15 for larsoft v09\_28\_00


larexamples v09\_01\_14[¶](#larexamples-v09_01_14)
--------------------------------------------------

-   2021-08-04 Lynn Garren : larexamples v09\_01\_14 for larsoft v09\_28\_00


larpandora v09\_07\_01[¶](#larpandora-v09_07_01)
------------------------------------------------

-   2021-08-04 Lynn Garren : larpandora v09\_07\_01 for larsoft v09\_28\_00


larsimrad v09\_01\_14[¶](#larsimrad-v09_01_14)
----------------------------------------------

-   2021-08-04 Lynn Garren : larsimrad v09\_01\_14 for larsoft v09\_28\_00


larrecodnn v09\_08\_01[¶](#larrecodnn-v09_08_01)
------------------------------------------------

-   2021-08-04 Lynn Garren : larrecodnn v09\_08\_01 for larsoft v09\_28\_00


larwirecell v09\_02\_11[¶](#larwirecell-v09_02_11)
--------------------------------------------------

-   2021-08-04 Lynn Garren : larwirecell v09\_02\_11 for larsoft v09\_28\_00


larana v09\_02\_11[¶](#larana-v09_02_11)
----------------------------------------

-   2021-08-04 Lynn Garren : larana v09\_02\_11 for larsoft v09\_28\_00


larreco v09\_06\_11[¶](#larreco-v09_06_11)
------------------------------------------

-   2021-08-04 Lynn Garren : larreco v09\_06\_11 for larsoft v09\_28\_00


larsim v09\_14\_03[¶](#larsim-v09_14_03)
----------------------------------------

-   2021-08-04 Lynn Garren : larsim v09\_14\_03 for larsoft v09\_28\_00


larg4 v09\_03\_10[¶](#larg4-v09_03_10)
--------------------------------------

-   2021-08-04 Lynn Garren : larg4 v09\_03\_10 for larsoft v09\_28\_00


larevt v09\_02\_09[¶](#larevt-v09_02_09)
----------------------------------------

-   2021-08-04 Lynn Garren : larevt v09\_02\_09 for larsoft v09\_28\_00


lardata v09\_02\_07[¶](#lardata-v09_02_07)
------------------------------------------

-   2021-08-04 Lynn Garren : lardata v09\_02\_07 for larsoft v09\_28\_00


larcore v09\_02\_03[¶](#larcore-v09_02_03)
------------------------------------------

-   2021-08-04 Lynn Garren : larcore v09\_02\_03 for larsoft v09\_28\_00


larpandoracontent v03\_24\_01[¶](#larpandoracontent-v03_24_01)
--------------------------------------------------------------

-   2021-08-04 Lynn Garren : larpandoracontent v03\_24\_01 for larsoft v09\_28\_00


larsoftobj v09\_07\_00[¶](#larsoftobj-v09_07_00)
------------------------------------------------

-   2021-08-04 Lynn Garren : larsoftobj v09\_07\_00 for larsoft v09\_28\_00
-   2021-08-04 Lynn Garren : product versions


lardataobj v09\_01\_05[¶](#lardataobj-v09_01_05)
------------------------------------------------

-   2021-08-04 Lynn Garren : lardataobj v09\_01\_05 for larsoft v09\_28\_00


lardataalg v09\_04\_06[¶](#lardataalg-v09_04_06)
------------------------------------------------

-   2021-08-04 Lynn Garren : lardataalg v09\_04\_06 for larsoft v09\_28\_00


larcorealg v09\_02\_00[¶](#larcorealg-v09_02_00)
------------------------------------------------

-   2021-08-04 Lynn Garren : larcorealg v09\_02\_00 for larsoft v09\_28\_00
-   2021-08-04 Lynn Garren : Merge pull request [\#17](/redmine/issues/17 "Support: Email setup (Closed)") from PetrilloAtWork/feature/gp\_issue25977
-   2021-07-29 Gianluca Petrillo : Removed geo::GeometryCore::WiresIntersection() method.
-   2021-07-22 Gianluca Petrillo : Workaround to assign from intersection result struct with std::tie()
-   2021-07-21 Gianluca Petrillo : Wire intersection functions now return a struct.
-   2021-07-21 Gianluca Petrillo : Updated test to use BOOST\_TEST()
-   2021-07-21 Gianluca Petrillo : Wire intersection utility interface split.
-   2021-07-21 Gianluca Petrillo : Minor change from review of issue 25977
-   2021-06-30 Gianluca Petrillo : Added unit test of intermediate wire intersection functions
-   2021-06-30 Gianluca Petrillo : Format update for geo::WireGeo documentation
-   2021-06-30 Gianluca Petrillo : Added intersection functions for geo::WireGeo.
-   2021-06-24 Gianluca Petrillo : Added \`geo::GeometryCore::WiresIntersect()\` for unchecked wire intersection


larcoreobj v09\_02\_01[¶](#larcoreobj-v09_02_01)
------------------------------------------------


webevd v09\_05\_08[¶](#webevd-v09_05_08)
----------------------------------------

-   2021-08-04 Lynn Garren : webevd v09\_05\_08 for larsoft v09\_28\_00


larbatch v01\_56\_01[¶](#larbatch-v01_56_01)
--------------------------------------------


larutils v1\_28\_00[¶](#larutils-v1_28_00)
------------------------------------------
