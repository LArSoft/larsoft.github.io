# LArSoft v08_48_01_01 Release Notes



[list of LArSoft releases](LArSoft_release_list)  
Download instructions for [larsoft v08_48_01_01](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v08_48_01_01/larsoft-v08_48_01_01.html)  
Download instructions for [just larsoftobj v08_27_04](http://scisoft.fnal.gov/scisoft/bundles/larsoftobj/v08_27_04/larsoftobj-v08_27_04.html)

## Purpose

-   **This is a test release**
-   build with geant4 v4_10_6_p01
-   additionally pick up libwda v2_28_0 and related updates

## Caveats

-   This is a test release. The experiments will need to test and provide their own feature branches.
-   The larsoft code is on the v08_48_01_g4_test_br branch.
-   PhysicsList was removed from larsim LegacyLArG4
    -   see https://geant4-forum.web.cern.ch/t/missing-header-in-application/1622
-   The build of larsim GDMLUtils was disabled. It will need modification to build with geant4 v4_10_6_p01.
-   There is no matching release of geant4reweight
    -   geant4reweight v01_01_00 is now available, but is not part of the v08_48_01_01 distribution.
-   see \#24284 and \#24283

## Updated dependencies

-   geant4 v4_10_6_p01
-   nug4 v1_05_00
-   nutools v3_07_00
-   artg4tk v10_00_01
-   updated packages for libwda
    -   libwda v2_28_0
    -   ifdh_art v2_10_04
    -   nuevdb v1_02_04
    -   nugen v1_10_04
    -   nusystematics v00_10_01

# Change List

## larsoft v08_48_01_01

-   2020-04-06 Lynn Garren : larsoft v08_48_01_01 for larsoft v08_48_01_01
-   2020-04-06 Lynn Garren : product versions

## lareventdisplay v08_12_09_01

-   2020-04-06 Lynn Garren : lareventdisplay v08_12_09_01 for larsoft v08_48_01_01

## larexamples v08_06_09_01

-   2020-04-06 Lynn Garren : larexamples v08_06_09_01 for larsoft v08_48_01_01

## larg4 v08_12_07_01

-   2020-04-06 Lynn Garren : larg4 v08_12_07_01 for larsoft v08_48_01_01

## larpandora v08_12_01_01

-   2020-04-06 Lynn Garren : larpandora v08_12_01_01 for larsoft v08_48_01_01

## larrecodnn v08_01_02_01

-   2020-04-06 Lynn Garren : larrecodnn v08_01_02_01 for larsoft v08_48_01_01

## larwirecell v08_12_08_01

-   2020-04-06 Lynn Garren : larwirecell v08_12_08_01 for larsoft v08_48_01_01

## larana v08_17_01_01

-   2020-04-06 Lynn Garren : larana v08_17_01_01 for larsoft v08_48_01_01

## larreco v08_30_01_01

-   2020-04-06 Lynn Garren : larreco v08_30_01_01 for larsoft v08_48_01_01

## larsim v08_22_01_01

-   2020-04-06 Lynn Garren : larsim v08_22_01_01 for larsoft v08_48_01_01
-   2020-04-06 Lynn Garren : build without ConfigurablePhysicsList, PhysicsList, and GDMLUtils

## larevt v08_11_01_01

-   2020-04-06 Lynn Garren : larevt v08_11_01_01 for larsoft v08_48_01_01

## lardata v08_15_01

## larcore v08_11_02

## larpandoracontent v03_15_16

## larsoftobj v08_27_04

## lardataobj v08_10_05

## lardataalg v08_13_07

## larcorealg v08_21_02

## larcoreobj v08_10_04

## larbatch v01_52_02

## larutils v1_25_09
