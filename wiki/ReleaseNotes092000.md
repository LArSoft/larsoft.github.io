LArSoft v09\_20\_00 Release Notes(#LArSoft-v09_20_00-Release-Notes)
======================================================================

-   **Table of contents**
-   [LArSoft v09\_20\_00 Release Notes](#LArSoft-v09_20_00-Release-Notes)
    -   [Purpose](#Purpose)
    -   [New features](#New-features)
    -   [Bug fixes](#Bug-fixes)
    -   [Updated dependencies](#Updated-dependencies)
-   [Change List](#Change-List)
    -   [larsoft v09\_20\_00](#larsoft-v09_20_00)
    -   [lareventdisplay v09\_01\_05](#lareventdisplay-v09_01_05)
    -   [larexamples v09\_01\_05](#larexamples-v09_01_05)
    -   [larpandora v09\_05\_06](#larpandora-v09_05_06)
    -   [larsimrad v09\_01\_05](#larsimrad-v09_01_05)
    -   [larrecodnn v09\_06\_04](#larrecodnn-v09_06_04)
    -   [larwirecell v09\_02\_03](#larwirecell-v09_02_03)
    -   [larana v09\_02\_01](#larana-v09_02_01)
    -   [larreco v09\_06\_01](#larreco-v09_06_01)
    -   [larsim v09\_11\_00](#larsim-v09_11_00)
    -   [larg4 v09\_03\_03](#larg4-v09_03_03)
    -   [larevt v09\_02\_02](#larevt-v09_02_02)
    -   [lardata v09\_02\_01](#lardata-v09_02_01)
    -   [larcore v09\_02\_01](#larcore-v09_02_01)
    -   [larpandoracontent v03\_22\_09](#larpandoracontent-v03_22_09)
    -   [larsoftobj v09\_05\_01](#larsoftobj-v09_05_01)
    -   [lardataobj v09\_01\_01](#lardataobj-v09_01_01)
    -   [lardataalg v09\_04\_01](#lardataalg-v09_04_01)
    -   [larcorealg v09\_01\_01](#larcorealg-v09_01_01)
    -   [larcoreobj v09\_02\_00](#larcoreobj-v09_02_00)
    -   [webevd v09\_05\_02](#webevd-v09_05_02)
    -   [larbatch v01\_55\_00](#larbatch-v01_55_00)
    -   [larutils v1\_27\_04](#larutils-v1_27_04)

[list of LArSoft releases](LArSoft_release_list)\
Download instructions for [larsoft v09\_20\_00](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v09_20_00/larsoft-v09_20_00.html)\
Download instructions for [just larsoftobj v09\_05\_01](http://scisoft.fnal.gov/scisoft/bundles/larsoftobj/v09_05_01/larsoftobj-v09_05_01.html)

Purpose(#Purpose)
--------------------

-   changes in develop
-   approved PRs

New features(#New-features)
------------------------------

-   larsim PR 66
    -   Inclusion of LArQL model, a model for correlated charge and light, dependent on the electric field.
    -   More details can be found on the [LArQL](LArQL_algorithm) wiki page
-   larpandoracontent PR 21
    -   This PR is composed of two principal changes: the first is the application of a Pandora .clang-format file across the entire repository to aid with style maintenance in future merges (hence the reason for the number of files altered by this PR). The second, small change, affects only the ClusterAssociationAlgorithm.cc and .h files.
    -   This latter change simplifies the handling of ambiguously-merged clusters such that they are now entirely removed from the cluster association map, avoiding a problem in which such clusters could be further processed and result in some V-shaped clusters.
    -   Given that this update affects the clustering we expect to see modest changes in Pandora product sizes and for this to propagate to downstream modules using these products. These changes are evident in CI run using the DUNE workflow: dune\_ci/11100

Bug fixes(#Bug-fixes)
------------------------

Updated dependencies(#Updated-dependencies)
----------------------------------------------

Change List(#Change-List)
============================

larsoft v09\_20\_00(#larsoft-v09_20_00)
------------------------------------------

-   2021-03-31 Lynn Garren : larsoft v09\_20\_00 for larsoft v09\_20\_00
-   2021-03-31 Lynn Garren : product versions

lareventdisplay v09\_01\_05(#lareventdisplay-v09_01_05)
----------------------------------------------------------

-   2021-03-31 Lynn Garren : lareventdisplay v09\_01\_05 for larsoft v09\_20\_00

larexamples v09\_01\_05(#larexamples-v09_01_05)
--------------------------------------------------

-   2021-03-31 Lynn Garren : larexamples v09\_01\_05 for larsoft v09\_20\_00

larpandora v09\_05\_06(#larpandora-v09_05_06)
------------------------------------------------

-   2021-03-31 Lynn Garren : larpandora v09\_05\_06 for larsoft v09\_20\_00

larsimrad v09\_01\_05(#larsimrad-v09_01_05)
----------------------------------------------

-   2021-03-31 Lynn Garren : larsimrad v09\_01\_05 for larsoft v09\_20\_00

larrecodnn v09\_06\_04(#larrecodnn-v09_06_04)
------------------------------------------------

-   2021-03-31 Lynn Garren : larrecodnn v09\_06\_04 for larsoft v09\_20\_00

larwirecell v09\_02\_03(#larwirecell-v09_02_03)
--------------------------------------------------

larana v09\_02\_01(#larana-v09_02_01)
----------------------------------------

-   2021-03-31 Lynn Garren : larana v09\_02\_01 for larsoft v09\_20\_00

larreco v09\_06\_01(#larreco-v09_06_01)
------------------------------------------

-   2021-03-31 Lynn Garren : larreco v09\_06\_01 for larsoft v09\_20\_00

larsim v09\_11\_00(#larsim-v09_11_00)
----------------------------------------

-   2021-03-31 Lynn Garren : larsim v09\_11\_00 for larsoft v09\_20\_00
-   2021-03-31 Laura Paulucci : Corrections to make the code more readable and updated reference
-   2021-03-25 Laura Paulucci : Removing trailing whitespace
-   2021-03-25 Laura Paulucci : Inclusion of LArQL model

larg4 v09\_03\_03(#larg4-v09_03_03)
--------------------------------------

larevt v09\_02\_02(#larevt-v09_02_02)
----------------------------------------

lardata v09\_02\_01(#lardata-v09_02_01)
------------------------------------------

larcore v09\_02\_01(#larcore-v09_02_01)
------------------------------------------

larpandoracontent v03\_22\_09(#larpandoracontent-v03_22_09)
--------------------------------------------------------------

-   2021-03-31 Lynn Garren : larpandoracontent v03\_22\_09 for larsoft v09\_20\_00
-   2021-03-30 Andrew Chappell : Update version and ChangeLog
-   2021-03-29 AndyChappell : Merge pull request \#163 from PandoraPFA/feature/v\_shape\_clusters
-   2021-03-22 Andy Blake : Change “UpdateForAmbiguousMerge” method so that chains of merged clusters are removed from the cluster association map after merges have been identified.
-   2021-03-29 AndyChappell : Merge pull request \#162 from PandoraPFA/feature/ClangFormat
-   2021-03-26 John Marshall : Apply the .clang-format file, maintained in the PandoraPFA repository, using clang 7.0.0.

larsoftobj v09\_05\_01(#larsoftobj-v09_05_01)
------------------------------------------------

lardataobj v09\_01\_01(#lardataobj-v09_01_01)
------------------------------------------------

lardataalg v09\_04\_01(#lardataalg-v09_04_01)
------------------------------------------------

larcorealg v09\_01\_01(#larcorealg-v09_01_01)
------------------------------------------------

larcoreobj v09\_02\_00(#larcoreobj-v09_02_00)
------------------------------------------------

webevd v09\_05\_02(#webevd-v09_05_02)
----------------------------------------

larbatch v01\_55\_00(#larbatch-v01_55_00)
--------------------------------------------

larutils v1\_27\_04(#larutils-v1_27_04)
------------------------------------------
