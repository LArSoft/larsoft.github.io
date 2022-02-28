# LArSoft v08_62_00 Release Notes



[list of LArSoft releases](LArSoft_release_list)  
Download instructions for [larsoft v08_62_00](https://scisoft.fnal.gov/scisoft/bundles/larsoft/v08_62_00/larsoft-v08_62_00.html)  
Download instructions for [just larsoftobj v08_29_03](https://scisoft.fnal.gov/scisoft/bundles/larsoftobj/v08_29_03/larsoftobj-v08_29_03.html)

## Purpose

-   use geant4 v4_10_6_p01

## New features

-   code changes were only needed in larg4 and larsim
    -   larg4Main_module.cc : ensure that the Geant4 units table is properly initialized
    -   LArG4Detector_service.cc: visualization removed

<!-- -->

-   The only required change in experiment code is to use this release of larsoft.

## Bug fixes

## Updated dependencies

-   geant4 v4_10_6_p01
-   nug4 v1_05_01
-   geant4reweight v01_01_01
-   nutools v3_07_02
-   artg4tk v10_00_02

# Change List

## larsoft v08_62_00

-   2020-08-06 Lynn Garren : larsoft v08_62_00 for larsoft v08_62_00
-   2020-08-06 Lynn Garren : product versions

## lareventdisplay v08_12_25

-   2020-08-06 Lynn Garren : lareventdisplay v08_12_25 for larsoft v08_62_00

## larexamples v08_06_25

-   2020-08-06 Lynn Garren : larexamples v08_06_25 for larsoft v08_62_00

## larg4 v08_15_00

-   2020-08-06 Lynn Garren : larg4 v08_15_00 for larsoft v08_62_00
-   2020-08-05 Lynn Garren : Merge branch 'v08_55_00_g4_test_br' into release/v08_62_00
-   2020-06-12 Lynn Garren : larg4 v08_14_03_01 for larsoft v08_55_00_01
-   2020-06-12 Lynn Garren : artg4tk v10_00_02 and nug4 v1_05_01
-   2020-06-11 Lynn Garren : Merge branch 'v08_48_01_g4_test_br' into v08_55_00_g4_test_br
-   2020-04-09 Lynn Garren : larg4 v08_12_07_02 for larsoft v08_48_01_02
-   2020-04-09 Lynn Garren : Merge pull request \#8 from hanswenzel/mynewbranch
-   2020-04-08 Hans : fix runtime errors, remove all references to visualization
-   2020-04-06 Lynn Garren : larg4 v08_12_07_01 for larsoft v08_48_01_01

## larpandora v08_13_05

-   2020-08-06 Lynn Garren : larpandora v08_13_05 for larsoft v08_62_00

## larsimrad v08_00_03

-   2020-08-06 Lynn Garren : larsimrad v08_00_03 for larsoft v08_62_00

## larrecodnn v08_06_05

-   2020-08-06 Lynn Garren : larrecodnn v08_06_05 for larsoft v08_62_00

## larwirecell v08_12_17

## larana v08_17_17

-   2020-08-06 Lynn Garren : larana v08_17_17 for larsoft v08_62_00

## larreco v08_32_10

-   2020-08-06 Lynn Garren : larreco v08_32_10 for larsoft v08_62_00

## larsim v08_33_00

-   2020-08-06 Lynn Garren : larsim v08_33_00 for larsoft v08_62_00

## larevt v08_12_01

## lardata v08_15_10

## larcore v08_11_10

## larpandoracontent v03_19_01

## larsoftobj v08_29_03

## lardataobj v08_11_03

## lardataalg v08_13_15

## larcorealg v08_22_02

## larcoreobj v08_12_01

## webevd v08_01_00

## larbatch v01_52_02

## larutils v1_26_01
