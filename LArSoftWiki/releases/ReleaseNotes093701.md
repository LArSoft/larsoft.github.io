# LArSoft v09_37_01 Release Notes



[list of LArSoft releases](LArSoft_release_list)  
Download instructions for [larsoft v09_37_01](https://scisoft.fnal.gov/scisoft/bundles/larsoft/v09_37_01/larsoft-v09_37_01.html)  
Download instructions for [just larsoftobj v09_12_00](https://scisoft.fnal.gov/scisoft/bundles/larsoftobj/v09_12_00/larsoftobj-v09_12_00.html)

## Purpose

-   pickup larsim PR 81 at the request of SBND

## New features

-   larsim PR 81
    -   This PR adds the option to merge sim::AuxDetHits from different streams in the MergeSimSources modules. This is needed when we run more than one instance of LArG4 and we then want to merge the output.
    -   The default behavior of MergeSimSources is unchanged, this PR only adds an additional option that right now we need in SBND.

## Bug fixes

## Updated dependencies

# Change List

## larsoft v09_37_01

-   2021-11-19 Lynn Garren : larsoft v09_37_01 for larsoft v09_37_01
-   2021-11-19 Lynn Garren : larsoft v09_37_01 for larsoft v09_37_01
-   2021-11-19 Lynn Garren : product versions

## lareventdisplay v09_02_08

-   2021-11-19 Lynn Garren : lareventdisplay v09_02_08 for larsoft v09_37_01
-   2021-11-19 Lynn Garren : lareventdisplay v09_02_08 for larsoft v09_37_01

## larexamples v09_02_08

-   2021-11-19 Lynn Garren : larexamples v09_02_08 for larsoft v09_37_01
-   2021-11-19 Lynn Garren : larexamples v09_02_08 for larsoft v09_37_01

## larpandora v09_10_02

-   2021-11-19 Lynn Garren : larpandora v09_10_02 for larsoft v09_37_01
-   2021-11-19 Lynn Garren : larpandora v09_10_02 for larsoft v09_37_01

## larsimrad v09_03_07

-   2021-11-19 Lynn Garren : larsimrad v09_03_07 for larsoft v09_37_01
-   2021-11-19 Lynn Garren : larsimrad v09_03_07 for larsoft v09_37_01

## larrecodnn v09_09_09

-   2021-11-19 Lynn Garren : larrecodnn v09_09_09 for larsoft v09_37_01
-   2021-11-19 Lynn Garren : larrecodnn v09_09_09 for larsoft v09_37_01

## larwirecell v09_04_05

## larana v09_03_09

-   2021-11-19 Lynn Garren : larana v09_03_09 for larsoft v09_37_01
-   2021-11-19 Lynn Garren : larana v09_03_09 for larsoft v09_37_01

## larreco v09_07_08

-   2021-11-19 Lynn Garren : larreco v09_07_08 for larsoft v09_37_01
-   2021-11-19 Lynn Garren : larreco v09_07_08 for larsoft v09_37_01

## larsim v09_19_01

-   2021-11-19 Lynn Garren : larsim v09_19_01 for larsoft v09_37_01
-   2021-11-19 Lynn Garren : Merge pull request \#81 from SBNSoftware/mdeltutt_mergesimsources
-   2021-11-19 Marco Del Tutto : Move the use of std::unique_ptr to e.put
-   2021-11-17 Marco Del Tutto : Add option to merge AuxDetHits

## larg4 v09_06_02

## larevt v09_03_05

## lardata v09_04_02

## larcore v09_03_02

## larpandoracontent v03_26_01

## larsoftobj v09_12_00

## lardataobj v09_03_05

## lardataalg v09_07_02

## larcorealg v09_04_00

## larcoreobj v09_03_01

## webevd v09_06_05

## larbatch v01_56_02

## larutils v1_28_02
