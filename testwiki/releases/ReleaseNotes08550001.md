# LArSoft v08_55_00_01 Release Notes



[list of LArSoft releases](LArSoft_release_list)  
Download instructions for [larsoft v08_55_00_01](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v08_55_00_01/larsoft-v08_55_00_01.html)  
Download instructions for [just larsoftobj v08_29_01](http://scisoft.fnal.gov/scisoft/bundles/larsoftobj/v08_29_01/larsoftobj-v08_29_01.html)

## Purpose

-   **This is a test release**
-   build with geant4 v4_10_6_p01

## New features

-   **This is a test release.** The experiments will need to test and provide their own feature branches.
-   The larsoft code is on the v08_55_00_g4_test_br branch.

<!-- -->

-   LArG4Detector_service.cc: visualization removed

## Bug fixes

-   larsim issues have been resolved. See \#24283

## Experiment code

The only required change is the larsoft version. We have made simple feature branches with this change and run the CI.

-   argoneutcode feature/team_for_g4_10_6
    -   https://dbweb5.fnal.gov:8443/LarCI/app/ns:ArgoNeuT/view_builds/index?offset=0&amp;builds=lar_ci/8958&amp;builds=
-   dunetpc feature/team_for_g4_10_6
    -   https://dbweb5.fnal.gov:8443/LarCI/app/ns:DUNE/view_builds/index?offset=0&amp;builds=lar_ci/8957&amp;builds=
-   sbndcode PR 10
    -   https://github.com/SBNSoftware/sbndcode/pull/10
    -   https://dbweb0.fnal.gov/LarCI/app/ns:SBND/view_builds/index?offset=0&amp;builds=lar_ci/8959&amp;builds=
-   icaruscode PR 24
    -   https://github.com/SBNSoftware/icaruscode/pull/24
    -   https://dbweb5.fnal.gov:8443/LarCI/app/ns:ICARUS/view_builds/index?offset=0&amp;builds=lar_ci/8960&amp;builds=

## Updated dependencies

-   geant4 v4_10_6_p01
-   nug4 v1_05_01
-   geant4reweight v01_01_01
-   nutools v3_07_02
-   artg4tk v10_00_02

# Change List

## larsoft v08_55_00_01

-   2020-06-12 Lynn Garren : larsoft v08_55_00_01 for larsoft v08_55_00_01
-   2020-06-12 Lynn Garren : product versions
-   2020-06-12 Lynn Garren : nulite v3_07_02a

## lareventdisplay v08_12_18_01

-   2020-06-12 Lynn Garren : lareventdisplay v08_12_18_01 for larsoft v08_55_00_01

## larexamples v08_06_18_01

-   2020-06-12 Lynn Garren : larexamples v08_06_18_01 for larsoft v08_55_00_01
-   2020-06-11 Lynn Garren : Merge branch 'v08_48_01_g4_test_br' into v08_55_00_g4_test_br
-   2020-04-06 Lynn Garren : larexamples v08_06_09_01 for larsoft v08_48_01_01

## larg4 v08_14_03_01

-   2020-06-12 Lynn Garren : larg4 v08_14_03_01 for larsoft v08_55_00_01
-   2020-06-12 Lynn Garren : artg4tk v10_00_02 and nug4 v1_05_01
-   2020-06-11 Lynn Garren : Merge branch 'v08_48_01_g4_test_br' into v08_55_00_g4_test_br
-   2020-04-09 Lynn Garren : larg4 v08_12_07_02 for larsoft v08_48_01_02
-   2020-04-09 Lynn Garren : Merge pull request \#8 from hanswenzel/mynewbranch
-   2020-04-08 Hans : fix runtime errors, remove all references to visualization
-   2020-04-06 Lynn Garren : larg4 v08_12_07_01 for larsoft v08_48_01_01

## larpandora v08_12_10_01

-   2020-06-12 Lynn Garren : larpandora v08_12_10_01 for larsoft v08_55_00_01
-   2020-06-11 Lynn Garren : Merge branch 'v08_48_01_g4_test_br' into v08_55_00_g4_test_br
-   2020-04-06 Lynn Garren : larpandora v08_12_01_01 for larsoft v08_48_01_01

## larrecodnn v08_04_03_01

-   2020-06-12 Lynn Garren : larrecodnn v08_04_03_01 for larsoft v08_55_00_01
-   2020-06-11 Lynn Garren : Merge branch 'v08_48_01_g4_test_br' into v08_55_00_g4_test_br
-   2020-04-06 Lynn Garren : larrecodnn v08_01_02_01 for larsoft v08_48_01_01

## larwirecell v08_12_15

## larana v08_17_10_01

-   2020-06-12 Lynn Garren : larana v08_17_10_01 for larsoft v08_55_00_01
-   2020-06-11 Lynn Garren : Merge branch 'v08_48_01_g4_test_br' into v08_55_00_g4_test_br
-   2020-04-06 Lynn Garren : larana v08_17_01_01 for larsoft v08_48_01_01

## larreco v08_32_03_01

-   2020-06-12 Lynn Garren : larreco v08_32_03_01 for larsoft v08_55_00_01
-   2020-06-11 Lynn Garren : Merge branch 'v08_48_01_g4_test_br' into v08_55_00_g4_test_br
-   2020-04-06 Lynn Garren : larreco v08_30_01_01 for larsoft v08_48_01_01

## larsim v08_27_00_01

-   2020-06-12 Lynn Garren : larsim v08_27_00_01 for larsoft v08_55_00_01
-   2020-06-12 Lynn Garren : renable full build
-   2020-06-12 Lynn Garren : nug4 v1_05_01 and nutools v3_07_02
-   2020-06-11 Lynn Garren : Merge branch 'v08_48_01_g4_test_br' into v08_55_00_g4_test_br
-   2020-04-06 Lynn Garren : larsim v08_22_01_01 for larsoft v08_48_01_01
-   2020-04-06 Lynn Garren : build without ConfigurablePhysicsList, PhysicsList, and GDMLUtils

## larevt v08_11_08

## lardata v08_15_08

## larcore v08_11_09

## larpandoracontent v03_16_01

## larsoftobj v08_29_01

## lardataobj v08_11_01

## lardataalg v08_13_13

## larcorealg v08_22_01

## larcoreobj v08_12_00

## webevd v08_00_05

## larbatch v01_52_02

## larutils v1_25_09
