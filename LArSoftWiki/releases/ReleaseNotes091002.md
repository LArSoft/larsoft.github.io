# LArSoft v09_10_02 Release Notes



[list of LArSoft releases](LArSoft_release_list)  
Download instructions for [larsoft v09_10_02](https://scisoft.fnal.gov/scisoft/bundles/larsoft/v09_10_02/larsoft-v09_10_02.html)  
Download instructions for [just larsoftobj v09_03_02](https://scisoft.fnal.gov/scisoft/bundles/larsoftobj/v09_03_02/larsoftobj-v09_03_02.html)

## Purpose

-   changes in develop
-   approved PRs

## New features

## Bug fixes

-   lardataobj PR 10
    -   Remove unnecessary type-conversion operator
    -   Discovered with an e20 build while working towards using art 3.06
-   larsim PR 57
    -   Fix MCShower's Ancestor Start and End
    -   It looks like there is a typo where the MCShower's ancestor particle Start and End MCSteps are filled. They are filled with the MCShower's mother, instead of the ancestor. This PR fixes this.

## Updated dependencies

-   nusimdata v1_21_04 for \#25273
    -   includes changes that allow steps with transportation to be saved in the process map, and thus preserved with sparsification.
    -   The relevant 'Adding' methods in MCParticle and MCtrajectory simply take a flag that determines if the point with transportation is saved. Default behavior is to not save, in order to avoid many points being saved in certain situations (i.e. NOvA).
-   nuevdb v1_02_08
-   nug4 v1_05_03
-   nugen v1_10_11
-   nurandom v1_04_04
-   nutools v3_07_04
-   geant4reweight v01_06_02
-   nusystematics v00_10_07
-   mrb v4_04_00
    -   add sbn_suite and sbndaq_suite

# Change List

## larsoft v09_10_02

-   2020-12-10 Lynn Garren : larsoft v09_10_02 for larsoft v09_10_02
-   2020-12-10 Lynn Garren : product versions

## lareventdisplay v09_00_15

-   2020-12-10 Lynn Garren : lareventdisplay v09_00_15 for larsoft v09_10_02

## larexamples v09_00_14

-   2020-12-10 Lynn Garren : larexamples v09_00_14 for larsoft v09_10_02

## larpandora v09_03_06

-   2020-12-10 Lynn Garren : larpandora v09_03_06 for larsoft v09_10_02

## larsimrad v09_00_14

-   2020-12-10 Lynn Garren : larsimrad v09_00_14 for larsoft v09_10_02

## larrecodnn v09_02_06

-   2020-12-10 Lynn Garren : larrecodnn v09_02_06 for larsoft v09_10_02

## larwirecell v09_01_08

-   2020-12-10 Lynn Garren : larwirecell v09_01_08 for larsoft v09_10_02

## larana v09_00_15

-   2020-12-10 Lynn Garren : larana v09_00_15 for larsoft v09_10_02

## larreco v09_04_05

-   2020-12-10 Lynn Garren : larreco v09_04_05 for larsoft v09_10_02

## larsim v09_07_02

-   2020-12-10 Lynn Garren : larsim v09_07_02 for larsoft v09_10_02
-   2020-12-10 Lynn Garren : Merge pull request \#57 from SBNSoftware/mdeltutt_mcshower
-   2020-12-09 Marco Del Tutto : Changing mother_part to ancestor_part for MCShower ancestor start and end MCSteps.

## larg4 v09_01_06

-   2020-12-10 Lynn Garren : larg4 v09_01_06 for larsoft v09_10_02

## larevt v09_01_02

-   2020-12-10 Lynn Garren : larevt v09_01_02 for larsoft v09_10_02

## lardata v09_01_05

-   2020-12-10 Lynn Garren : lardata v09_01_05 for larsoft v09_10_02

## larcore v09_00_01

## larpandoracontent v03_22_03

## larsoftobj v09_03_02

-   2020-12-10 Lynn Garren : larsoftobj v09_03_02 for larsoft v09_10_02
-   2020-12-10 Lynn Garren : product versions

## lardataobj v09_00_04

-   2020-12-10 Lynn Garren : lardataobj v09_00_04 for larsoft v09_10_02
-   2020-12-08 Lynn Garren : Merge pull request \#10 from knoepfel/bugfix/knoepfel_rm_type_conversion
-   2020-12-07 Kyle Knoepfel : Remove unnecessary type-conversion operator.

## lardataalg v09_03_02

-   2020-12-10 Lynn Garren : lardataalg v09_03_02 for larsoft v09_10_02

## larcorealg v09_00_01

## larcoreobj v09_00_00

## webevd v09_00_10

-   2020-12-10 Lynn Garren : webevd v09_00_10 for larsoft v09_10_02

## larbatch v01_54_01

## larutils v1_27_03

-   2020-12-10 Lynn Garren : larutils v1_27_03 for larsoft v09_10_02
-   2020-12-07 Lynn Garren : get buildFW from artutilscripts
-   2020-12-07 Lynn Garren : recognize e20
-   2020-12-07 Lynn Garren : recognize e20
