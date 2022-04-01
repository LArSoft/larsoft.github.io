# LArSoft v06_06_00 Release Notes



[list of LArSoft releases](LArSoft_release_list)  
[Download instructions](https://scisoft.fnal.gov/scisoft/bundles/larsoft/v06_06_00/larsoft-v06_06_00.html)

## Purpose

-   changes to develop
-   larsim feature/gp_QuieterCORSIKAGen
-   lardata feature/gp_RecoBaseDumpers

## New features

-   lardata feature/gp_RecoBaseDumpers
    -   dumpers

## Bug fixes

-   documentation \#11627
-   larsim feature/gp_QuieterCORSIKAGen \#13750
    -   remove unnecessary information from the console log

## Updated dependencies

|         |          |            |       |
|---------|----------|------------|-------|
| Product | Version  | Qualifiers | Notes |
| mrb     | v1_08_02 |            |       |

# Change List

## larsoft v06_06_00

-   2016-09-08 Lynn Garren : larsoft v06_06_00 for larsoft v06_05_01
-   2016-09-08 Lynn Garren : update product versions
-   2016-09-08 Lynn Garren : update dependency database
-   2016-09-01 Lynn Garren : skip if already fixed

## lareventdisplay v06_01_03

-   2016-09-08 Lynn Garren : lareventdisplay v06_01_03 for larsoft v06_05_01

## larexamples v06_00_07

-   2016-09-08 Lynn Garren : larexamples v06_00_07 for larsoft v06_05_01

## larpandora v06_00_08

-   2016-09-08 Lynn Garren : larpandora v06_00_08 for larsoft v06_05_01

## larana v06_01_04

-   2016-09-08 Lynn Garren : larana v06_01_04 for larsoft v06_05_01

## larreco v06_04_01

-   2016-09-08 Lynn Garren : larreco v06_04_01 for larsoft v06_05_01
-   2016-09-02 Tingjun Yang : Fix memory leaks. Thanks to Kyle Knoepfel.

## larsim v06_03_03

-   2016-09-08 Lynn Garren : larsim v06_03_03 for larsoft v06_05_01
-   2016-09-07 Lynn Garren : Merge branch 'feature/gp_QuieterCORSIKAGen' into release/v06_05_01
-   2016-09-06 Gianluca Petrillo : This addresses LArSoft issue \#13750.
-   2016-08-23 Gianluca Petrillo : Reduced the amount of CORSIKAGen output on screen

## larevt v06_01_02

-   2016-09-08 Lynn Garren : larevt v06_01_02 for larsoft v06_05_01

## lardata v06_04_00

-   2016-09-08 Lynn Garren : lardata v06_04_00 for larsoft v06_05_01
-   2016-09-01 Gianluca Petrillo : Updated new code to LArSoft 6.x
-   2016-09-01 Gianluca Petrillo : Merge remote-tracking branch 'origin/develop' into feature/gp_RecoBaseDumpers
-   2016-05-02 Gianluca Petrillo : One fix to documentation of SpacePointDumpers
-   2016-04-30 Gianluca Petrillo : Added option PrintHexFloats to some dumpers
-   2016-04-29 Gianluca Petrillo : Optional base 16 printing of real numbers in DumpPFParticles and DumpPCAxes modules.
-   2016-04-29 Gianluca Petrillo : Merge remote-tracking branch 'origin/develop' into feature/gp_RecoBaseDumpers
-   2016-04-28 Gianluca Petrillo : recob::Seed error arguments made “optional” for getters
-   2016-04-21 Gianluca Petrillo : Removed time stamps from messages in DumpPFParticles
-   2016-04-21 Gianluca Petrillo : Added a set of dumpers for RecoBase objects

## larcore v06_02_01

## larsoftobj v1_06_01

-   2016-09-08 Lynn Garren : larsoftobj v1_06_01 for larsoft v06_05_01

## lardataobj v1_06_01

-   2016-09-08 Lynn Garren : lardataobj v1_06_01 for larsoft v06_05_01
-   2016-09-01 Gianluca Petrillo : The commit was a fix for issue \#11627
-   2016-09-01 Gianluca Petrillo : This should be addressing \#11627 .
-   2016-09-01 Gianluca Petrillo : Added documentation to PFParticle
-   2016-09-01 Gianluca Petrillo : Allow recob::Seed methods to get its quantities without their uncertainty

## larcoreobj v1_04_02

## larbatch v01_23_05

## larutils v1_08_04
