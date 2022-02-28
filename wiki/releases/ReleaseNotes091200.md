# LArSoft v09_12_00 Release Notes



[list of LArSoft releases](LArSoft_release_list)  
Download instructions for [larsoft v09_12_00](https://scisoft.fnal.gov/scisoft/bundles/larsoft/v09_12_00/larsoft-v09_12_00.html)  
Download instructions for [just larsoftobj v09_04_00](https://scisoft.fnal.gov/scisoft/bundles/larsoftobj/v09_04_00/larsoftobj-v09_04_00.html)

## Purpose

-   changes in develop
-   approved PRs

## Breaking Change

Most changes in this release are related to the resolution for \#24328  
**This is a [breaking change](Breaking_Changes#Geometry-configuration-check). The branch feature/gp_issue24328 is provided for experiment code.**  
The complete write up is [here](Geometry_configuration_check_breaking_change_documentation)

-   larcoreobj PR 9
-   larcorealg PR 12
-   lardataalg PR 18
-   larcore PR 6
-   lardata PR 12
-   larevt PR 10
-   larsim PR 56
-   larreco PR 24
-   larexamples PR 5
-   lareventdisplay PR 10

feature/gp_issue24328 available for

-   ArgoNeuT: argoneutcode
-   DUNE: dunetpc
-   ICARUS: sbncode, icarusalg, icaruscode
-   SBND: sbncode, sbndcode
-   MicroBooNE: uboonecode, ubana, ubcrt, ubcv, ubevt, ublite, ubraw, ubreco, ubsim

## Bug fixes

-   lardataalg PR 19
    -   Fix OpDetWavedform dumper console output
    -   The ADC count range printout was wrong, it's now fixed.

## Updated dependencies

# Change List

## larsoft v09_12_00

-   2021-01-07 Lynn Garren : larsoft v09_12_00 for larsoft v09_12_00
-   2021-01-07 Lynn Garren : product versions

## lareventdisplay v09_00_17

-   2021-01-07 Lynn Garren : lareventdisplay v09_00_17 for larsoft v09_12_00
-   2021-01-06 Lynn Garren : Merge branch 'feature/gp_issue24328' into release/v09_12_00
-   2020-12-15 Gianluca Petrillo : Merge remote-tracking branch 'upstream/develop' into feature/gp_issue24328
-   2020-12-14 Gianluca Petrillo : Configuration updates related to issue \#24328

## larexamples v09_00_16

-   2021-01-07 Lynn Garren : larexamples v09_00_16 for larsoft v09_12_00
-   2021-01-06 Lynn Garren : Merge branch 'feature/gp_issue24328' into release/v09_12_00
-   2020-12-15 Gianluca Petrillo : Merge remote-tracking branch 'upstream/develop' into feature/gp_issue24328
-   2020-12-07 Gianluca Petrillo : Configuration updates related to issue \#24328

## larpandora v09_03_08

-   2021-01-07 Lynn Garren : larpandora v09_03_08 for larsoft v09_12_00

## larsimrad v09_00_16

-   2021-01-07 Lynn Garren : larsimrad v09_00_16 for larsoft v09_12_00

## larrecodnn v09_02_08

-   2021-01-07 Lynn Garren : larrecodnn v09_02_08 for larsoft v09_12_00

## larwirecell v09_01_10

-   2021-01-07 Lynn Garren : larwirecell v09_01_10 for larsoft v09_12_00

## larana v09_00_17

-   2021-01-07 Lynn Garren : larana v09_00_17 for larsoft v09_12_00

## larreco v09_04_07

-   2021-01-07 Lynn Garren : larreco v09_04_07 for larsoft v09_12_00
-   2021-01-06 Lynn Garren : Merge branch 'feature/gp_issue24328' into release/v09_12_00
-   2020-12-15 Gianluca Petrillo : Merge remote-tracking branch 'upstream/develop' into feature/gp_issue24328
-   2020-12-07 Gianluca Petrillo : Configuration updates related to issue \#24328

## larsim v09_07_04

-   2021-01-07 Lynn Garren : larsim v09_07_04 for larsoft v09_12_00
-   2021-01-06 Lynn Garren : Merge branch 'feature/gp_issue24328' into release/v09_12_00
-   2020-12-15 Gianluca Petrillo : Merge remote-tracking branch 'upstream/develop' into feature/gp_issue24328
-   2020-12-07 Gianluca Petrillo : Configuration updates related to issue \#24328

## larg4 v09_02_01

-   2021-01-07 Lynn Garren : larg4 v09_02_01 for larsoft v09_12_00

## larevt v09_01_04

-   2021-01-07 Lynn Garren : larevt v09_01_04 for larsoft v09_12_00
-   2021-01-06 Lynn Garren : Merge branch 'feature/gp_issue24328' into release/v09_12_00
-   2020-12-15 Gianluca Petrillo : Merge remote-tracking branch 'upstream/develop' into feature/gp_issue24328
-   2020-12-07 Gianluca Petrillo : Configuration updates related to issue \#24328

## lardata v09_01_07

-   2021-01-07 Lynn Garren : lardata v09_01_07 for larsoft v09_12_00
-   2021-01-06 Lynn Garren : Merge branch 'feature/gp_issue24328' into release/v09_12_00
-   2020-12-15 Gianluca Petrillo : Merge remote-tracking branch 'upstream/develop' into feature/gp_issue24328
-   2020-12-14 Gianluca Petrillo : More configuration updates related to issue \#24328
-   2020-12-07 Gianluca Petrillo : Configuration updates related to issue \#24328

## larcore v09_01_00

-   2021-01-07 Lynn Garren : larcore v09_01_00 for larsoft v09_12_00
-   2020-12-07 Gianluca Petrillo : Configuration updates related to issue \#24328
-   2020-12-07 Gianluca Petrillo : Fix to unit test.
-   2020-11-23 Gianluca Petrillo : Merge remote-tracking branch 'upstream/develop' into feature/gp_issue24328
-   2020-11-23 Gianluca Petrillo : Adopted some suggestions from review.
-   2020-11-23 Gianluca Petrillo : Geometry information from legacy RunData has its own version now
-   2020-11-23 Gianluca Petrillo : Fixed some typos and an unnecessary header inclusion.
-   2020-11-12 Gianluca Petrillo : Added geometry check unit test.
-   2020-11-12 Gianluca Petrillo : Added unit tests for geometry version check.
-   2020-10-08 Gianluca Petrillo : Alternative implementation of GeometryConfigurationWriter.
-   2020-10-07 Gianluca Petrillo : Replaced geometry reload on new run with configuration compatibility check.

## larpandoracontent v03_22_03

## larsoftobj v09_04_00

-   2021-01-07 Lynn Garren : larsoftobj v09_04_00 for larsoft v09_12_00
-   2021-01-07 Lynn Garren : product versions

## lardataobj v09_00_06

-   2021-01-07 Lynn Garren : lardataobj v09_00_06 for larsoft v09_12_00

## lardataalg v09_03_04

-   2021-01-07 Lynn Garren : lardataalg v09_03_04 for larsoft v09_12_00
-   2021-01-06 Lynn Garren : Merge branch 'feature/gp_issue24328' into release/v09_12_00
-   2020-12-17 Lynn Garren : Merge pull request \#19 from PetrilloAtWork/feature/gp_OpDetWaveformDumperOutput
-   2020-12-17 Gianluca Petrillo : Fix OpDetWavedform dumper console output.
-   2020-10-15 Gianluca Petrillo : Standardized DetectorClocksStandardTriggerLoader.h include guard
-   2020-12-15 Gianluca Petrillo : Merge remote-tracking branch 'upstream/develop' into feature/gp_issue24328
-   2020-12-07 Gianluca Petrillo : Configuration updates related to issue \#24328

## larcorealg v09_00_02

-   2021-01-07 Lynn Garren : larcorealg v09_00_02 for larsoft v09_12_00
-   2020-11-23 Gianluca Petrillo : Merge remote-tracking branch 'upstream/develop' into feature/gp_issue24328
-   2020-11-12 Gianluca Petrillo : Update for issue \#24328 breaking change

## larcoreobj v09_01_00

-   2021-01-07 Lynn Garren : larcoreobj v09_01_00 for larsoft v09_12_00
-   2021-01-07 Lynn Garren : GeometryConfigurationInfo is declared as a struct
-   2020-11-23 Gianluca Petrillo : Added support for version 1 of geo::GeometryConfigurationInfo.
-   2020-11-23 Gianluca Petrillo : Added \`noexcept\` specifier.
-   2020-10-07 Gianluca Petrillo : Added data product with geometry information for configuration checks.

## webevd v09_01_01

-   2021-01-07 Lynn Garren : webevd v09_01_01 for larsoft v09_12_00

## larbatch v01_54_01

## larutils v1_27_03
