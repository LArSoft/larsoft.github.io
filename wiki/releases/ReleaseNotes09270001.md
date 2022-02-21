# LArSoft v09_27_00_01 Release Notes



[list of LArSoft releases](LArSoft_release_list)  
Download instructions for [larsoft v09_27_00_01](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v09_27_00_01/larsoft-v09_27_00_01.html)  
Download instructions for [just larsoftobj v09_06_01](http://scisoft.fnal.gov/scisoft/bundles/larsoftobj/v09_06_01/larsoftobj-v09_06_01.html)

## Purpose

-   **THIS IS A TEST RELEASE**
-   This is a test release with art v3_09_03.
    -   This release uses cetbuildtools 8
    -   All code used for this release is on temporary branch v09_30_00_rc_br
    -   mrb 5 **MUST** be used when working with this release
        -   setup -t mrb
-   experiment code will appear on feature/team_for_art309 branches
-   This release is based off of larsoft v09_27_00

## New features

-   See the art 3.09 [release notes](https://cdcvs.fnal.gov/redmine/projects/art/wiki/Series_309) and \[\[art:309_breaking_changes\|breaking changes\]\]

## Bug fixes

## Updated dependencies

-   MANY dependencies are updated. A few are listed here.
-   art v3_09_03 (s112)
-   art_root_io v1_08_03
-   boost v1_75_0
-   canvas_root_io v1_09_04
-   cetbuildtools v8_12_00
-   clhep v2_4_4_1
-   ifdh_art v2_12_04
-   mrb v5_13_02 (NOT the default)
-   nutools v3_11_04
-   python v3_9_2
-   root v6_22_08d

# Change List

## larsoft v09_27_00_01

-   2021-07-28 Lynn Garren : larsoft v09_27_00_01 for larsoft v09_27_00_01
-   2021-07-28 Lynn Garren : cmake_minimum_required
-   2021-07-28 Lynn Garren : test versions
-   2021-07-28 Lynn Garren : project version
-   2021-07-27 Lynn Garren : need hep_hpc_toolkit v0_14_01_03
-   2021-07-27 Lynn Garren : larsoft v09_30_00_rc1 for larsoft v09_30_00_rc1
-   2021-07-27 Lynn Garren : product versions
-   2021-07-27 Lynn Garren : CMAKE_PROJECT_VERSION_STRING
-   2021-07-26 Lynn Garren : cetbuildtools v8_11_02
-   2021-07-26 Lynn Garren : product versions
-   2021-07-26 Lynn Garren : Merge branch 'develop' into v09_30_00_rc_br
-   2021-07-26 Lynn Garren : product updates

## lareventdisplay v09_01_14_01

-   2021-07-28 Lynn Garren : lareventdisplay v09_01_14_01 for larsoft v09_27_00_01
-   2021-07-28 Lynn Garren : cmake_minimum_required
-   2021-07-28 Lynn Garren : project version
-   2021-07-27 Lynn Garren : lareventdisplay v09_30_00_rc1 for larsoft v09_30_00_rc1
-   2021-07-27 Lynn Garren : CMAKE_PROJECT_VERSION_STRING
-   2021-07-27 Kyle Knoepfel : Update service-macro headers.
-   2021-07-26 Lynn Garren : nuevdb v1_05_04
-   2021-07-26 Lynn Garren : getManyByType
-   2021-07-26 Lynn Garren : find eigen headers

## larexamples v09_01_13_01

-   2021-07-28 Lynn Garren : larexamples v09_01_13_01 for larsoft v09_27_00_01
-   2021-07-28 Lynn Garren : cmake_minimum_required
-   2021-07-28 Lynn Garren : project version
-   2021-07-27 Lynn Garren : larexamples v09_30_00_rc1 for larsoft v09_30_00_rc1
-   2021-07-27 Lynn Garren : CMAKE_PROJECT_VERSION_STRING
-   2021-07-27 Kyle Knoepfel : Update service-macro headers.
-   2021-07-27 Kyle Knoepfel : Add missing BOOST_TEST_MODULE definition.
-   2021-07-26 Lynn Garren : cetbuildtools v8_11_02
-   2021-07-26 Lynn Garren : find packages

## larpandora v09_07_00_01

-   2021-07-28 Lynn Garren : fix library name
-   2021-07-28 Lynn Garren : cleanup - for now at least
-   2021-07-28 Lynn Garren : library names
-   2021-07-28 Lynn Garren : larpandora v09_07_00_01 for larsoft v09_27_00_01
-   2021-07-28 Lynn Garren : cmake_minimum_required
-   2021-07-28 Lynn Garren : project version
-   2021-07-27 Lynn Garren : larpandora v09_30_00_rc1 for larsoft v09_30_00_rc1
-   2021-07-27 Lynn Garren : CMAKE_PROJECT_VERSION_STRING
-   2021-07-26 Lynn Garren : cetbuildtools v8_11_02
-   2021-07-26 Lynn Garren : add missing headers
-   2021-07-26 Lynn Garren : find packages and headers
-   2021-07-26 Lynn Garren : Merge branch 'develop' into v09_30_00_rc_br
-   2021-07-26 Lynn Garren : fix exclude
-   2021-06-25 Lynn Garren : spell it right
-   2021-06-25 Lynn Garren : make sure we do not try to build the tool twice

## larsimrad v09_01_13_01

-   2021-07-28 Lynn Garren : larsimrad v09_01_13_01 for larsoft v09_27_00_01
-   2021-07-28 Lynn Garren : cmake_minimum_required
-   2021-07-28 Lynn Garren : project version
-   2021-07-27 Lynn Garren : larsimrad v09_30_00_rc1 for larsoft v09_30_00_rc1
-   2021-07-27 Lynn Garren : CMAKE_PROJECT_VERSION_STRING
-   2021-07-26 Lynn Garren : cetbuildtools v8_11_02
-   2021-07-26 Lynn Garren : Merge branch 'develop' into v09_30_00_rc_br
-   2021-07-26 Lynn Garren : bxdecay0 v1_0_9
-   2021-07-26 Lynn Garren : coping with gsl issues

## larrecodnn v09_08_00_01

-   2021-07-28 Lynn Garren : larrecodnn v09_08_00_01 for larsoft v09_27_00_01
-   2021-07-28 Lynn Garren : cmake_minimum_required
-   2021-07-28 Lynn Garren : project version
-   2021-07-27 Lynn Garren : larrecodnn v09_30_00_rc1 for larsoft v09_30_00_rc1
-   2021-07-27 Lynn Garren : CMAKE_PROJECT_VERSION_STRING
-   2021-07-26 Lynn Garren : cetbuildtools v8_11_02
-   2021-07-26 Lynn Garren : getManyByType
-   2021-07-26 Lynn Garren : find packages
-   2021-07-26 Lynn Garren : Merge branch 'develop' into v09_30_00_rc_br
-   2021-07-26 Lynn Garren : triton v2_3_0d

## larwirecell v09_02_10_01

-   2021-07-28 Lynn Garren : larwirecell v09_02_10_01 for larsoft v09_27_00_01
-   2021-07-28 Lynn Garren : cmake_minimum_required
-   2021-07-28 Lynn Garren : project version
-   2021-07-27 Lynn Garren : larwirecell v09_30_00_rc1 for larsoft v09_30_00_rc1
-   2021-07-27 Lynn Garren : CMAKE_PROJECT_VERSION_STRING
-   2021-07-26 Lynn Garren : wirecell v0_14_0j
-   2021-07-26 Lynn Garren : add missing headers
-   2021-07-26 Lynn Garren : Merge branch 'develop' into v09_30_00_rc_br
-   2021-07-15 Lynn Garren : find eigen headers
-   2021-07-15 Lynn Garren : wirecell v0_15_0

## larana v09_02_10_01

-   2021-07-28 Lynn Garren : larana v09_02_10_01 for larsoft v09_27_00_01
-   2021-07-28 Lynn Garren : cmake_minimum_required
-   2021-07-28 Lynn Garren : project version
-   2021-07-27 Lynn Garren : larana v09_30_00_rc1 for larsoft v09_30_00_rc1
-   2021-07-27 Lynn Garren : CMAKE_PROJECT_VERSION_STRING
-   2021-07-27 Kyle Knoepfel : Update service-macro headers.
-   2021-07-26 Lynn Garren : for art 3.09

## larreco v09_06_10_01

-   2021-07-28 Lynn Garren : larreco v09_06_10_01 for larsoft v09_27_00_01
-   2021-07-28 Lynn Garren : cmake_minimum_required
-   2021-07-28 Lynn Garren : project version
-   2021-07-27 Lynn Garren : larreco v09_30_00_rc1 for larsoft v09_30_00_rc1
-   2021-07-27 Lynn Garren : CMAKE_PROJECT_VERSION_STRING
-   2021-07-27 Kyle Knoepfel : Update service-macro headers.
-   2021-07-27 Kyle Knoepfel : Add missing header.
-   2021-07-26 Lynn Garren : cetbuildtools v8_11_02
-   2021-07-26 Lynn Garren : add missing headers
-   2021-07-26 Lynn Garren : find eigen headers

## larsim v09_14_02_01

-   2021-07-28 Lynn Garren : larsim v09_14_02_01 for larsoft v09_27_00_01
-   2021-07-28 Lynn Garren : cmake_minimum_required
-   2021-07-28 Lynn Garren : project version
-   2021-07-27 Lynn Garren : larsim v09_30_00_rc1 for larsoft v09_30_00_rc1
-   2021-07-27 Lynn Garren : CMAKE_PROJECT_VERSION_STRING
-   2021-07-27 Kyle Knoepfel : Update service-macro headers.
-   2021-07-26 Lynn Garren : nutools v3_11_04
-   2021-07-26 Lynn Garren : add missing header
-   2021-07-26 Lynn Garren : Merge branch 'develop' into v09_30_00_rc_br
-   2021-07-20 Lynn Garren : xml2 problem
-   2021-07-20 Kyle Knoepfel : More tweaks to support art 3.09
-   2021-07-19 Lynn Garren : missing headers
-   2021-07-19 Lynn Garren : nugen v1_14_03
-   2021-07-19 Lynn Garren : fixes for art 3.09

## larg4 v09_03_09_01

-   2021-07-28 Lynn Garren : update library names
-   2021-07-28 Lynn Garren : find package
-   2021-07-28 Lynn Garren : larg4 v09_03_09_01 for larsoft v09_27_00_01
-   2021-07-28 Lynn Garren : cmake_minimum_required
-   2021-07-28 Lynn Garren : project version
-   2021-07-27 Lynn Garren : larg4 v09_30_00_rc1 for larsoft v09_30_00_rc1
-   2021-07-27 Lynn Garren : CMAKE_PROJECT_VERSION_STRING
-   2021-07-27 Kyle Knoepfel : Update service-macro headers.
-   2021-07-26 Lynn Garren : artg4tk v10_03_00 and nug4 v1_09_04
-   2021-07-26 Lynn Garren : Merge branch 'develop' into v09_30_00_rc_br
-   2021-07-19 Kyle Knoepfel : Adjust getMany call.
-   2021-07-19 Lynn Garren : nug4 v1_09_03
-   2021-07-19 Lynn Garren : replace getManyByType

## larevt v09_02_08_01

-   2021-07-28 Lynn Garren : larevt v09_02_08_01 for larsoft v09_27_00_01
-   2021-07-28 Lynn Garren : cmake_minimum_required
-   2021-07-28 Lynn Garren : project version
-   2021-07-27 Lynn Garren : larevt v09_30_00_rc1 for larsoft v09_30_00_rc1
-   2021-07-27 Lynn Garren : CMAKE_PROJECT_VERSION_STRING
-   2021-07-27 Kyle Knoepfel : Update service-macro headers.
-   2021-07-26 Lynn Garren : cetbuildtools v8_11_02
-   2021-07-26 Lynn Garren : Merge branch 'develop' into v09_30_00_rc_br
-   2021-07-14 Lynn Garren : cetbuildtools v8_10_01
-   2021-07-14 Lynn Garren : remove obsolete header
-   2021-07-14 Lynn Garren : find headers

## lardata v09_02_06_01

-   2021-07-28 Lynn Garren : remove unused library
-   2021-07-28 Lynn Garren : library names
-   2021-07-28 Lynn Garren : lardata v09_02_06_01 for larsoft v09_27_00_01
-   2021-07-28 Lynn Garren : cmake_minimum_required
-   2021-07-28 Lynn Garren : project version
-   2021-07-27 Lynn Garren : lardata v09_30_00_rc1 for larsoft v09_30_00_rc1
-   2021-07-27 Lynn Garren : CMAKE_PROJECT_VERSION_STRING
-   2021-07-27 Kyle Knoepfel : Update service-macro headers.
-   2021-07-26 Lynn Garren : cetbuildtools v8_11_02
-   2021-07-26 Lynn Garren : add Assns.h
-   2021-07-26 Lynn Garren : Merge branch 'develop' into v09_30_00_rc_br
-   2021-07-14 Lynn Garren : no semi colon here
-   2021-07-14 Kyle Knoepfel : Re-enable (and simplify) RangeForWrapper test
-   2021-07-14 Lynn Garren : adding parentheses
-   2021-07-14 Lynn Garren : add missing header
-   2021-07-14 Lynn Garren : add missing header
-   2021-07-14 Lynn Garren : temporarily disable RangeForWrapper_test
-   2021-07-14 Lynn Garren : cetbuildtools v8_10_01
-   2021-07-14 Lynn Garren : for art 3.09

## larcore v09_02_02_01

-   2021-07-28 Lynn Garren : fix build
-   2021-07-28 Lynn Garren : larcore v09_02_02_01 for larsoft v09_27_00_01
-   2021-07-28 Lynn Garren : cmake_minimum_required
-   2021-07-28 Lynn Garren : project version
-   2021-07-27 Lynn Garren : larcore v09_30_00_rc1 for larsoft v09_30_00_rc1
-   2021-07-27 Lynn Garren : CMAKE_PROJECT_VERSION_STRING
-   2021-07-27 Kyle Knoepfel : Update service-macro headers.
-   2021-07-26 Lynn Garren : art_root_io v1_08_03
-   2021-07-26 Lynn Garren : Merge branch 'develop' into v09_30_00_rc_br
-   2021-07-14 Lynn Garren : cetbuildtools v8_10_01
-   2021-07-14 Lynn Garren : add cetlib
-   2021-07-14 Lynn Garren : for art 3.09
-   2021-07-14 Lynn Garren : for art 3.09

## larpandoracontent v03_24_00

## larsoftobj v09_06_01

## lardataobj v09_01_04

## lardataalg v09_04_05

## larcorealg v09_01_02

## larcoreobj v09_02_01

## webevd v09_05_07

## larbatch v01_56_01

## larutils v1_28_00
