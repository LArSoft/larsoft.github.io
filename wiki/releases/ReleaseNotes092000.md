# LArSoft v09_20_00 Release Notes



[list of LArSoft releases](LArSoft_release_list)  
Download instructions for [larsoft v09_20_00](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v09_20_00/larsoft-v09_20_00.html)  
Download instructions for [just larsoftobj v09_05_01](http://scisoft.fnal.gov/scisoft/bundles/larsoftobj/v09_05_01/larsoftobj-v09_05_01.html)

## Purpose

-   changes in develop
-   approved PRs

## New features

-   larsim PR 66
    -   Inclusion of LArQL model, a model for correlated charge and light, dependent on the electric field.
    -   More details can be found on the [LArQL](LArQL_algorithm) wiki page
-   larpandoracontent PR 21
    -   This PR is composed of two principal changes: the first is the application of a Pandora .clang-format file across the entire repository to aid with style maintenance in future merges (hence the reason for the number of files altered by this PR). The second, small change, affects only the ClusterAssociationAlgorithm.cc and .h files.
    -   This latter change simplifies the handling of ambiguously-merged clusters such that they are now entirely removed from the cluster association map, avoiding a problem in which such clusters could be further processed and result in some V-shaped clusters.
    -   Given that this update affects the clustering we expect to see modest changes in Pandora product sizes and for this to propagate to downstream modules using these products. These changes are evident in CI run using the DUNE workflow: dune_ci/11100

## Bug fixes

## Updated dependencies

# Change List

## larsoft v09_20_00

-   2021-03-31 Lynn Garren : larsoft v09_20_00 for larsoft v09_20_00
-   2021-03-31 Lynn Garren : product versions

## lareventdisplay v09_01_05

-   2021-03-31 Lynn Garren : lareventdisplay v09_01_05 for larsoft v09_20_00

## larexamples v09_01_05

-   2021-03-31 Lynn Garren : larexamples v09_01_05 for larsoft v09_20_00

## larpandora v09_05_06

-   2021-03-31 Lynn Garren : larpandora v09_05_06 for larsoft v09_20_00

## larsimrad v09_01_05

-   2021-03-31 Lynn Garren : larsimrad v09_01_05 for larsoft v09_20_00

## larrecodnn v09_06_04

-   2021-03-31 Lynn Garren : larrecodnn v09_06_04 for larsoft v09_20_00

## larwirecell v09_02_03

## larana v09_02_01

-   2021-03-31 Lynn Garren : larana v09_02_01 for larsoft v09_20_00

## larreco v09_06_01

-   2021-03-31 Lynn Garren : larreco v09_06_01 for larsoft v09_20_00

## larsim v09_11_00

-   2021-03-31 Lynn Garren : larsim v09_11_00 for larsoft v09_20_00
-   2021-03-31 Laura Paulucci : Corrections to make the code more readable and updated reference
-   2021-03-25 Laura Paulucci : Removing trailing whitespace
-   2021-03-25 Laura Paulucci : Inclusion of LArQL model

## larg4 v09_03_03

## larevt v09_02_02

## lardata v09_02_01

## larcore v09_02_01

## larpandoracontent v03_22_09

-   2021-03-31 Lynn Garren : larpandoracontent v03_22_09 for larsoft v09_20_00
-   2021-03-30 Andrew Chappell : Update version and ChangeLog
-   2021-03-29 AndyChappell : Merge pull request \#163 from PandoraPFA/feature/v_shape_clusters
-   2021-03-22 Andy Blake : Change “UpdateForAmbiguousMerge” method so that chains of merged clusters are removed from the cluster association map after merges have been identified.
-   2021-03-29 AndyChappell : Merge pull request \#162 from PandoraPFA/feature/ClangFormat
-   2021-03-26 John Marshall : Apply the .clang-format file, maintained in the PandoraPFA repository, using clang 7.0.0.

## larsoftobj v09_05_01

## lardataobj v09_01_01

## lardataalg v09_04_01

## larcorealg v09_01_01

## larcoreobj v09_02_00

## webevd v09_05_02

## larbatch v01_55_00

## larutils v1_27_04
