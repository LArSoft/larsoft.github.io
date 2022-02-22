# LArSoft v09_39_00 Release Notes



[list of LArSoft releases](LArSoft_release_list)  
Download instructions for [larsoft v09_39_00](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v09_39_00/larsoft-v09_39_00.html)  
Download instructions for [just larsoftobj v09_14_00](http://scisoft.fnal.gov/scisoft/bundles/larsoftobj/v09_14_00/larsoftobj-v09_14_00.html)

## Purpose

-   use nutools v3_12_01 and related packages
    -   nutools v3_12_01 and related packages are built with cetmodules
-   use find_package() and target libraries in the larsoft CMakeLists.txt files

## Experiment code

-   feature branch feature/lg_nutools_v3_12_00 is provided for experiment code
-   Script updateLAr_v3_39.sh is also available. This is not a replacement for the feature branches.

## Updated dependencies

-   ifdh_art v2_13_00
    -   restructured to match conventions
    -   headers should now be included with the full path.
-   nutools v3_12_01
-   nusimdata v1_25_01
-   nuevdb v1_06_01
-   nug4 v1_12_01
-   geant4reweight v01_11_00
-   nugen v1_15_01
-   nurandom v1_08_01
-   ppfx v02_14_06
-   cetbuildtools v8_18_09

# Change List

## larsoft v09_39_00

-   2021-12-06 Lynn Garren : also cmake v3_21_4
-   2021-12-06 Lynn Garren : need cmake v3_22_0
-   2021-12-06 Lynn Garren : larsoft v09_39_00 for larsoft v09_39_00
-   2021-12-06 Lynn Garren : larsoft v09_39_00 for larsoft v09_39_00
-   2021-12-06 Lynn Garren : product list
-   2021-12-06 Lynn Garren : add extension
-   2021-12-06 Lynn Garren : update scripts for larsoft v09_39_00

## lareventdisplay v09_03_00

-   2021-12-06 Lynn Garren : lareventdisplay v09_03_00 for larsoft v09_39_00
-   2021-12-06 Lynn Garren : lareventdisplay v09_03_00 for larsoft v09_39_00
-   2021-12-04 Lynn Garren : use find_package
-   2021-12-03 Lynn Garren : update library names

## larexamples v09_03_00

-   2021-12-06 Lynn Garren : larexamples v09_03_00 for larsoft v09_39_00
-   2021-12-06 Lynn Garren : larexamples v09_03_00 for larsoft v09_39_00
-   2021-12-04 Lynn Garren : use find_package
-   2021-12-04 Lynn Garren : there is only a dictionary here
-   2021-12-04 Lynn Garren : update library names

## larpandora v09_11_00

-   2021-12-06 Lynn Garren : larpandora v09_11_00 for larsoft v09_39_00
-   2021-12-06 Lynn Garren : larpandora v09_11_00 for larsoft v09_39_00
-   2021-12-03 Lynn Garren : use find_package
-   2021-12-03 Lynn Garren : update library names

## larsimrad v09_04_00

-   2021-12-06 Lynn Garren : larsimrad v09_04_00 for larsoft v09_39_00
-   2021-12-06 Lynn Garren : larsimrad v09_04_00 for larsoft v09_39_00
-   2021-12-03 Lynn Garren : using find_package
-   2021-12-03 Lynn Garren : update library names

## larrecodnn v09_10_00

-   2021-12-06 Lynn Garren : larrecodnn v09_10_00 for larsoft v09_39_00
-   2021-12-06 Lynn Garren : larrecodnn v09_10_00 for larsoft v09_39_00
-   2021-12-04 Lynn Garren : use find_package
-   2021-12-03 Lynn Garren : update library names

## larwirecell v09_05_00

-   2021-12-06 Lynn Garren : larwirecell v09_05_00 for larsoft v09_39_00
-   2021-12-06 Lynn Garren : larwirecell v09_05_00 for larsoft v09_39_00
-   2021-12-03 Lynn Garren : use find_package
-   2021-12-03 Lynn Garren : update library names

## larana v09_04_00

-   2021-12-06 Lynn Garren : larana v09_04_00 for larsoft v09_39_00
-   2021-12-06 Lynn Garren : larana v09_04_00 for larsoft v09_39_00
-   2021-12-04 Lynn Garren : use find_package
-   2021-12-03 Lynn Garren : update library names

## larreco v09_08_00

-   2021-12-06 Lynn Garren : larreco v09_08_00 for larsoft v09_39_00
-   2021-12-06 Lynn Garren : larreco v09_08_00 for larsoft v09_39_00
-   2021-12-04 Lynn Garren : use find_package
-   2021-12-03 Lynn Garren : update library names

## larsim v09_20_00

-   2021-12-06 Lynn Garren : larsim v09_20_00 for larsoft v09_39_00
-   2021-12-06 Lynn Garren : larsim v09_20_00 for larsoft v09_39_00
-   2021-12-03 Lynn Garren : using find_package
-   2021-12-03 Lynn Garren : update library names

## larg4 v09_07_00

-   2021-12-06 Lynn Garren : larg4 v09_07_00 for larsoft v09_39_00
-   2021-12-06 Lynn Garren : larg4 v09_07_00 for larsoft v09_39_00
-   2021-12-04 Lynn Garren : range-v3
-   2021-12-03 Lynn Garren : use find_package

## larevt v09_04_00

-   2021-12-06 Lynn Garren : larevt v09_04_00 for larsoft v09_39_00
-   2021-12-06 Lynn Garren : larevt v09_04_00 for larsoft v09_39_00
-   2021-12-02 Lynn Garren : use find_package
-   2021-12-02 Lynn Garren : library names

## lardata v09_05_00

-   2021-12-06 Lynn Garren : lardata v09_05_00 for larsoft v09_39_00
-   2021-12-06 Lynn Garren : lardata v09_05_00 for larsoft v09_39_00
-   2021-12-03 Lynn Garren : use find_package
-   2021-12-02 Lynn Garren : proper use of find_package(PostgreSQL
-   2021-12-02 Lynn Garren : using find_package
-   2021-12-01 Lynn Garren : library names

## larcore v09_04_00

-   2021-12-06 Lynn Garren : larcore v09_04_00 for larsoft v09_39_00
-   2021-12-06 Lynn Garren : larcore v09_04_00 for larsoft v09_39_00
-   2021-12-03 Lynn Garren : use find_package
-   2021-12-01 Lynn Garren : using find_package
-   2021-12-01 Lynn Garren : update library names

## larpandoracontent v03_26_02

## larsoftobj v09_14_00

-   2021-12-06 Lynn Garren : also cmake v3_21_4
-   2021-12-06 Lynn Garren : spell v3_22_0 correctly
-   2021-12-06 Lynn Garren : need cmake v3_22_00
-   2021-12-06 Lynn Garren : larsoftobj v09_14_00 for larsoft v09_39_00
-   2021-12-06 Lynn Garren : larsoftobj v09_14_00 for larsoft v09_39_00
-   2021-12-06 Lynn Garren : product list

## lardataobj v09_04_00

-   2021-12-06 Lynn Garren : lardataobj v09_04_00 for larsoft v09_39_00
-   2021-12-06 Lynn Garren : lardataobj v09_04_00 for larsoft v09_39_00
-   2021-12-03 Lynn Garren : use find_package
-   2021-12-01 Lynn Garren : use find_package
-   2021-12-01 Lynn Garren : library names

## lardataalg v09_09_00

-   2021-12-06 Lynn Garren : lardataalg v09_09_00 for larsoft v09_39_00
-   2021-12-06 Lynn Garren : lardataalg v09_09_00 for larsoft v09_39_00
-   2021-12-03 Lynn Garren : use find_package
-   2021-12-01 Lynn Garren : use find_package
-   2021-12-01 Lynn Garren : library names

## larcorealg v09_05_00

-   2021-12-06 Lynn Garren : larcorealg v09_05_00 for larsoft v09_39_00
-   2021-12-06 Lynn Garren : larcorealg v09_05_00 for larsoft v09_39_00
-   2021-12-03 Lynn Garren : use find_package
-   2021-12-01 Lynn Garren : using find_package where we can
-   2021-12-01 Lynn Garren : update library names

## larcoreobj v09_04_00

-   2021-12-06 Lynn Garren : larcoreobj v09_04_00 for larsoft v09_39_00
-   2021-12-06 Lynn Garren : larcoreobj v09_04_00 for larsoft v09_39_00
-   2021-12-03 Lynn Garren : use find_package
-   2021-12-01 Lynn Garren : use find_package

## webevd v09_08_00

-   2021-12-06 Lynn Garren : webevd v09_08_00 for larsoft v09_39_00
-   2021-12-06 Lynn Garren : webevd v09_08_00 for larsoft v09_39_00
-   2021-12-03 Lynn Garren : use find_package
-   2021-12-03 Lynn Garren : update library names

## larbatch v01_56_02

## larutils v1_28_02
