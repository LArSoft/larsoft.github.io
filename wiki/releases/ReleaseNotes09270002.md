# LArSoft v09_27_00_02 Release Notes



[list of LArSoft releases](LArSoft_release_list)  
Download instructions for [larsoft v09_27_00_02](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v09_27_00_02/larsoft-v09_27_00_02.html)  
Download instructions for [just larsoftobj v09_06_01_02](http://scisoft.fnal.gov/scisoft/bundles/larsoftobj/v09_06_01_02/larsoftobj-v09_06_01_02.html)

## Purpose

-   **THIS IS A TEST RELEASE**
-   This is a test release with art v3_09_03.
    -   This release uses cetbuildtools 8
    -   All code used for this release is on temporary branch v09_30_00_rc_br
    -   mrb 5 **MUST** be used when working with this release
        -   setup -t mrb
-   This release is based off of larsoft v09_27_00

## New features

-   See the art 3.09 [release notes](https://cdcvs.fnal.gov/redmine/projects/art/wiki/Series_309) and \[\[art:309_breaking_changes\|breaking changes\]\]

## Updates for experiment code

- necessary changes will be provided in feature/team_for_art_v3_09 branches

- argoneutcode feature/team_for_art_v3_09

[CI tests](https://dbweb0.fnal.gov/LarCI/app/ns:ArgoNeuT/view_builds/index?offset=0&amp;builds=lar_ci/12079&amp;builds=)

- the test has pointed out a problem in the generated larg4 table file

    trigger --build-delay 0 --cert /tmp/x509up_u1147 --version ci_mrb5 --workflow argoneutcodestandalone_wf --revisions "argoneutcode@feature/team_for_art_v3_09" 

## Updated dependencies

-   mrb v5_14_03 (NOT the default)
-   cetbuildtools v8_13_03
-   [ReleaseNotes09270001#Updated-dependencies](ReleaseNotes09270001#Updated-dependencies)

# Change List

## larsoft v09_27_00_02

-   2021-08-04 Lynn Garren : larsoft v09_27_00_02 for larsoft v09_27_00_02
-   2021-08-04 Lynn Garren : larsoft v09_27_00_02 for larsoft v09_27_00_02
-   2021-08-04 Lynn Garren : cetbuildtools v8_13_03
-   2021-08-03 Lynn Garren : cleanup and provide cetbuildtools
-   2021-08-02 Chris Green : Resolve downstream issues with hardwired paths to transitive dependencies
-   2021-08-02 Chris Green : Use cetbuildtools v8_13_01
-   2021-08-02 Kyle Knoepfel : Alphabetized replacements for sanity; and a couple corrections.
-   2021-07-28 Lynn Garren : a couple more
-   2021-07-28 Lynn Garren : adding some root libraries
-   2021-07-28 Lynn Garren : updating library names - incomplete

## lareventdisplay v09_01_14_02

-   2021-08-04 Lynn Garren : lareventdisplay v09_01_14_02 for larsoft v09_27_00_02
-   2021-08-04 Lynn Garren : lareventdisplay v09_01_14_02 for larsoft v09_27_00_02
-   2021-08-02 Chris Green : Use cetbuildtools v8_13_01
-   2021-07-28 Lynn Garren : update library names
-   2021-07-28 Lynn Garren : lareventdisplay v09_01_14_01 for larsoft v09_27_00_01
-   2021-07-28 Lynn Garren : cmake_minimum_required
-   2021-07-28 Lynn Garren : project version
-   2021-07-27 Lynn Garren : lareventdisplay v09_30_00_rc1 for larsoft v09_30_00_rc1
-   2021-07-27 Lynn Garren : CMAKE_PROJECT_VERSION_STRING
-   2021-07-27 Kyle Knoepfel : Update service-macro headers.
-   2021-07-26 Lynn Garren : nuevdb v1_05_04
-   2021-07-26 Lynn Garren : getManyByType
-   2021-07-26 Lynn Garren : find eigen headers

## larexamples v09_01_13_02

-   2021-08-04 Lynn Garren : larexamples v09_01_13_02 for larsoft v09_27_00_02
-   2021-08-04 Lynn Garren : larexamples v09_01_13_02 for larsoft v09_27_00_02
-   2021-08-02 Chris Green : Use cetbuildtools v8_13_01
-   2021-07-29 Kyle Knoepfel : Fix typo
-   2021-07-28 Lynn Garren : update library names
-   2021-07-28 Lynn Garren : larexamples v09_01_13_01 for larsoft v09_27_00_01
-   2021-07-28 Lynn Garren : cmake_minimum_required
-   2021-07-28 Lynn Garren : project version
-   2021-07-27 Lynn Garren : larexamples v09_30_00_rc1 for larsoft v09_30_00_rc1
-   2021-07-27 Lynn Garren : CMAKE_PROJECT_VERSION_STRING
-   2021-07-27 Kyle Knoepfel : Update service-macro headers.
-   2021-07-27 Kyle Knoepfel : Add missing BOOST_TEST_MODULE definition.
-   2021-07-26 Lynn Garren : cetbuildtools v8_11_02
-   2021-07-26 Lynn Garren : find packages

## larpandora v09_07_00_02

-   2021-08-04 Lynn Garren : larpandora v09_07_00_02 for larsoft v09_27_00_02
-   2021-08-04 Lynn Garren : larpandora v09_07_00_02 for larsoft v09_27_00_02
-   2021-08-02 Chris Green : Resolve downstream issues with hardwired paths to transitive dependencies
-   2021-08-02 Chris Green : Use cetbuildtools v8_13_01
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

## larsimrad v09_01_13_02

-   2021-08-04 Lynn Garren : larsimrad v09_01_13_02 for larsoft v09_27_00_02
-   2021-08-04 Lynn Garren : larsimrad v09_01_13_02 for larsoft v09_27_00_02
-   2021-08-02 Chris Green : Resolve downstream issues with hardwired paths to transitive dependencies
-   2021-08-02 Chris Green : Use cetbuildtools v8_13_01
-   2021-07-28 Lynn Garren : update library names
-   2021-07-28 Lynn Garren : larsimrad v09_01_13_01 for larsoft v09_27_00_01
-   2021-07-28 Lynn Garren : cmake_minimum_required
-   2021-07-28 Lynn Garren : project version
-   2021-07-27 Lynn Garren : larsimrad v09_30_00_rc1 for larsoft v09_30_00_rc1
-   2021-07-27 Lynn Garren : CMAKE_PROJECT_VERSION_STRING
-   2021-07-26 Lynn Garren : cetbuildtools v8_11_02
-   2021-07-26 Lynn Garren : Merge branch 'develop' into v09_30_00_rc_br
-   2021-07-26 Lynn Garren : bxdecay0 v1_0_9
-   2021-07-26 Lynn Garren : coping with gsl issues

## larrecodnn v09_08_00_02

-   2021-08-04 Lynn Garren : larrecodnn v09_08_00_02 for larsoft v09_27_00_02
-   2021-08-04 Lynn Garren : larrecodnn v09_08_00_02 for larsoft v09_27_00_02
-   2021-08-02 Chris Green : Resolve downstream issues with hardwired paths to transitive dependencies
-   2021-08-02 Chris Green : Use cetbuildtools v8_13_01
-   2021-07-28 Lynn Garren : update library names
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

## larwirecell v09_02_10_02

-   2021-08-04 Lynn Garren : larwirecell v09_02_10_02 for larsoft v09_27_00_02
-   2021-08-04 Lynn Garren : larwirecell v09_02_10_02 for larsoft v09_27_00_02
-   2021-08-02 Chris Green : Resolve downstream issues with hardwired paths to transitive dependencies
-   2021-08-02 Chris Green : Use cetbuildtools v8_13_01
-   2021-08-02 Lynn Garren : explicit fcldir definition
-   2021-07-28 Lynn Garren : update library names
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

## larana v09_02_10_02

-   2021-08-04 Lynn Garren : larana v09_02_10_02 for larsoft v09_27_00_02
-   2021-08-04 Lynn Garren : larana v09_02_10_02 for larsoft v09_27_00_02
-   2021-08-02 Chris Green : Resolve downstream issues with hardwired paths to transitive dependencies
-   2021-08-02 Chris Green : Use cetbuildtools v8_13_01
-   2021-07-28 Lynn Garren : update library names
-   2021-07-28 Lynn Garren : larana v09_02_10_01 for larsoft v09_27_00_01
-   2021-07-28 Lynn Garren : cmake_minimum_required
-   2021-07-28 Lynn Garren : project version
-   2021-07-27 Lynn Garren : larana v09_30_00_rc1 for larsoft v09_30_00_rc1
-   2021-07-27 Lynn Garren : CMAKE_PROJECT_VERSION_STRING
-   2021-07-27 Kyle Knoepfel : Update service-macro headers.
-   2021-07-26 Lynn Garren : for art 3.09

## larreco v09_06_10_02

-   2021-08-04 Lynn Garren : larreco v09_06_10_02 for larsoft v09_27_00_02
-   2021-08-04 Lynn Garren : larreco v09_06_10_02 for larsoft v09_27_00_02
-   2021-08-02 Chris Green : Resolve downstream issues with hardwired paths to transitive dependencies
-   2021-08-02 Chris Green : Use cetbuildtools v8_13_01
-   2021-07-28 Lynn Garren : update library names
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

## larsim v09_14_02_02

-   2021-08-04 Lynn Garren : larsim v09_14_02_02 for larsoft v09_27_00_02
-   2021-08-04 Lynn Garren : larsim v09_14_02_02 for larsoft v09_27_00_02
-   2021-08-02 Chris Green : Resolve downstream issues with hardwired paths to transitive dependencies
-   2021-08-02 Chris Green : Use cetbuildtools v8_13_01
-   2021-07-28 Lynn Garren : update library names
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

## larg4 v09_03_09_02

-   2021-08-04 Lynn Garren : larg4 v09_03_09_02 for larsoft v09_27_00_02
-   2021-08-04 Lynn Garren : larg4 v09_03_09_02 for larsoft v09_27_00_02
-   2021-08-02 Chris Green : Resolve downstream issues with hardwired paths to transitive dependencies
-   2021-08-02 Chris Green : Use cetbuildtools v8_13_01
-   2021-07-30 Kyle Knoepfel : Adjust library dependencies.
-   2021-07-28 Lynn Garren : update library names
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

## larevt v09_02_08_02

-   2021-08-04 Lynn Garren : larevt v09_02_08_02 for larsoft v09_27_00_02
-   2021-08-04 Lynn Garren : larevt v09_02_08_02 for larsoft v09_27_00_02
-   2021-08-02 Chris Green : Resolve downstream issues with hardwired paths to transitive dependencies
-   2021-08-02 Chris Green : Use cetbuildtools v8_13_01
-   2021-07-28 Lynn Garren : update library names
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

## lardata v09_02_06_02

-   2021-08-04 Lynn Garren : lardata v09_02_06_02 for larsoft v09_27_00_02
-   2021-08-04 Lynn Garren : lardata v09_02_06_02 for larsoft v09_27_00_02
-   2021-08-02 Chris Green : Resolve downstream issues with hardwired paths to transitive dependencies
-   2021-08-02 Chris Green : Use cetbuildtools v8_13_01
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

## larcore v09_02_02_02

-   2021-08-04 Lynn Garren : larcore v09_02_02_02 for larsoft v09_27_00_02
-   2021-08-04 Lynn Garren : larcore v09_02_02_02 for larsoft v09_27_00_02
-   2021-08-02 Chris Green : Use cetbuildtools v8_13_01
-   2021-07-28 Lynn Garren : update library names
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

## larpandoracontent v03_24_00_02

-   2021-08-04 Lynn Garren : larpandoracontent v03_24_00_02 for larsoft v09_27_00_02
-   2021-08-04 Lynn Garren : larpandoracontent v03_24_00_02 for larsoft v09_27_00_02
-   2021-08-02 Chris Green : Resolve downstream issues with hardwired paths to transitive dependencies
-   2021-08-02 Chris Green : Use cetbuildtools v8_13_01
-   2021-07-28 Lynn Garren : larpandoracontent v03_24_00_01 for larsoft v09_27_00_01
-   2021-07-28 Lynn Garren : cmake_minimum_required
-   2021-07-28 Lynn Garren : project version
-   2021-07-27 Lynn Garren : larpandoracontent v09_30_00_rc1 for larsoft v09_30_00_rc1
-   2021-07-27 Lynn Garren : CMAKE_PROJECT_VERSION_STRING
-   2021-07-26 Lynn Garren : pandora v03_16_00f
-   2021-07-26 Lynn Garren : Merge branch 'develop' into v09_30_00_rc_br
-   2021-07-26 Lynn Garren : libtorch v1_6_0d

## larsoftobj v09_06_01_02

-   2021-08-04 Lynn Garren : larsoftobj v09_06_01_02 for larsoft v09_27_00_02
-   2021-08-04 Lynn Garren : larsoftobj v09_06_01_02 for larsoft v09_27_00_02
-   2021-08-04 Lynn Garren : cetbuildtools v8_13_03
-   2021-08-03 Lynn Garren : cleanup and provide cetbuildtools
-   2021-08-02 Chris Green : Resolve downstream issues with hardwired paths to transitive dependencies
-   2021-08-02 Chris Green : Use cetbuildtools v8_13_01
-   2021-07-28 Lynn Garren : cmake_minimum_required
-   2021-07-27 Lynn Garren : larsoftobj v09_06_01_01 for larsoft v09_06_01_01
-   2021-07-27 Lynn Garren : versions
-   2021-07-27 Lynn Garren : project version
-   2021-07-27 Lynn Garren : larsoftobj v09_30_00_rc1 for larsoft v09_30_00_rc1
-   2021-07-27 Lynn Garren : product versions
-   2021-07-27 Lynn Garren : CMAKE_PROJECT_VERSION_STRING
-   2021-07-26 Lynn Garren : gallery v1_18_04
-   2021-07-26 Lynn Garren : product versions
-   2021-07-26 Lynn Garren : Merge branch 'develop' into v09_30_00_rc_br
-   2021-07-12 Lynn Garren : v09_30_00_rc0
-   2021-07-12 Lynn Garren : v09_30_00_rc0
-   2021-07-12 Lynn Garren : hub v2_14_2
-   2021-07-09 Lynn Garren : Merge branch 'develop' into v09_30_00_rc_br
-   2021-07-09 Lynn Garren : for root v6_22_08c

## lardataobj v09_01_04_02

-   2021-08-04 Lynn Garren : lardataobj v09_01_04_02 for larsoft v09_27_00_02
-   2021-08-04 Lynn Garren : lardataobj v09_01_04_02 for larsoft v09_27_00_02
-   2021-08-02 Chris Green : Use cetbuildtools v8_13_01
-   2021-07-28 Lynn Garren : update library names
-   2021-07-28 Lynn Garren : cmake_minimum_required
-   2021-07-27 Lynn Garren : lardataobj v09_01_04_01 for larsoft v09_06_01_01
-   2021-07-27 Lynn Garren : project version
-   2021-07-27 Lynn Garren : lardataobj v09_30_00_rc1 for larsoft v09_30_00_rc1
-   2021-07-27 Lynn Garren : CMAKE_PROJECT_VERSION_STRING
-   2021-07-26 Lynn Garren : nusimdata v1_24_04
-   2021-07-12 Lynn Garren : v09_30_00_rc0
-   2021-07-09 Lynn Garren : find cetlib
-   2021-07-09 Lynn Garren : need extra parentheses
-   2021-07-09 Lynn Garren : Merge branch 'develop' into v09_30_00_rc_br
-   2021-07-09 Lynn Garren : cetbuildtools v8_10_01
-   2021-07-09 Lynn Garren : find product

## lardataalg v09_04_05_02

-   2021-08-04 Lynn Garren : lardataalg v09_04_05_02 for larsoft v09_27_00_02
-   2021-08-04 Lynn Garren : lardataalg v09_04_05_02 for larsoft v09_27_00_02
-   2021-08-02 Chris Green : Resolve downstream issues with hardwired paths to transitive dependencies
-   2021-08-02 Chris Green : Use cetbuildtools v8_13_01
-   2021-07-29 Kyle Knoepfel : Adjust targets
-   2021-07-28 Lynn Garren : update library names
-   2021-07-28 Lynn Garren : cmake_minimum_required
-   2021-07-27 Lynn Garren : lardataalg v09_04_05_01 for larsoft v09_06_01_01
-   2021-07-27 Lynn Garren : project version
-   2021-07-27 Lynn Garren : lardataalg v09_30_00_rc1 for larsoft v09_30_00_rc1
-   2021-07-27 Lynn Garren : CMAKE_PROJECT_VERSION_STRING
-   2021-07-26 Lynn Garren : cetbuildtools v8_11_02
-   2021-07-12 Lynn Garren : v09_30_00_rc0
-   2021-07-12 Kyle Knoepfel : Reenable Boost unit tests.
-   2021-07-09 Lynn Garren : find cetlib and clhep
-   2021-07-09 Lynn Garren : Merge branch 'develop' into v09_30_00_rc_br
-   2021-07-09 Lynn Garren : find product
-   2021-07-09 Lynn Garren : cetbuildtools v8_10_01
-   2021-07-09 Lynn Garren : ParameterSet

## larcorealg v09_01_02_02

-   2021-08-04 Lynn Garren : larcorealg v09_01_02_02 for larsoft v09_27_00_02
-   2021-08-04 Lynn Garren : larcorealg v09_01_02_02 for larsoft v09_27_00_02
-   2021-08-02 Chris Green : Resolve downstream issues with hardwired paths to transitive dependencies
-   2021-08-02 Chris Green : Use cetbuildtools v8_13_01
-   2021-07-28 Lynn Garren : update library names
-   2021-07-28 Lynn Garren : update library names
-   2021-07-28 Lynn Garren : cmake_minimum_required
-   2021-07-27 Lynn Garren : larcorealg v09_01_02_01 for larsoft v09_06_01_01
-   2021-07-27 Lynn Garren : project version
-   2021-07-27 Lynn Garren : larcorealg v09_30_00_rc1 for larsoft v09_30_00_rc1
-   2021-07-27 Lynn Garren : CMAKE_PROJECT_VERSION_STRING
-   2021-07-26 Lynn Garren : cetbuildtools v8_11_02
-   2021-07-15 Kyle Knoepfel : Setup FW_SEARCH_PATH for gdml access.
-   2021-07-14 Kyle Knoepfel : Enable/fix some more unit tests.
-   2021-07-12 Lynn Garren : larcorealg v09_30_00_rc0
-   2021-07-12 Kyle Knoepfel : Reenable Boost unit tests.
-   2021-07-12 Kyle Knoepfel : Resolve dependency-ordering issue.
-   2021-07-09 Lynn Garren : temporarily disabling problematic tests
-   2021-07-09 Lynn Garren : need extra parentheses when using or
-   2021-07-09 Lynn Garren : parse_document has a new format
-   2021-07-09 Lynn Garren : find boost
-   2021-07-09 Lynn Garren : Merge branch 'develop' into v09_30_00_rc_br
-   2021-07-09 Lynn Garren : ParameterSet
-   2021-07-09 Lynn Garren : ParameterSet
-   2021-07-09 Lynn Garren : cetbuildtools v8_10_01
-   2021-07-09 Lynn Garren : find products

## larcoreobj v09_02_01_02

-   2021-08-04 Lynn Garren : larcoreobj v09_02_01_02 for larsoft v09_27_00_02
-   2021-08-04 Lynn Garren : larcoreobj v09_02_01_02 for larsoft v09_27_00_02
-   2021-08-02 Chris Green : Use cetbuildtools v8_13_01
-   2021-07-29 Kyle Knoepfel : Add missing target
-   2021-07-28 Lynn Garren : library names
-   2021-07-28 Lynn Garren : cmake_minimum_required
-   2021-07-27 Lynn Garren : larcoreobj v09_02_01_01 for larsoft v09_06_01_01
-   2021-07-27 Lynn Garren : project version
-   2021-07-27 Lynn Garren : larcoreobj v09_30_00_rc1 for larsoft v09_30_00_rc1
-   2021-07-27 Lynn Garren : CMAKE_PROJECT_VERSION_STRING
-   2021-07-26 Lynn Garren : canvas_root_io v1_09_04
-   2021-07-12 Lynn Garren : v09_30_00_rc0
-   2021-07-09 Lynn Garren : Merge branch 'develop' into v09_30_00_rc_br
-   2021-07-09 Lynn Garren : for root v6_22_08c
-   2021-07-09 Lynn Garren : find cetlib
-   2021-07-09 Lynn Garren : ParameterSet

## webevd v09_05_07_02

-   2021-08-04 Lynn Garren : webevd v09_05_07_02 for larsoft v09_27_00_02
-   2021-08-04 Lynn Garren : webevd v09_05_07_02 for larsoft v09_27_00_02
-   2021-07-28 Lynn Garren : update library names
-   2021-07-28 Lynn Garren : webevd v09_05_07_01 for larsoft v09_27_00_01
-   2021-07-28 Lynn Garren : cmake_minimum_required
-   2021-07-27 Lynn Garren : webevd v09_30_00_rc1 for larsoft v09_30_00_rc1
-   2021-07-27 Lynn Garren : CMAKE_PROJECT_VERSION_STRING
-   2021-07-27 Kyle Knoepfel : Update service-macro headers.
-   2021-07-27 Kyle Knoepfel : Accommodate breaking changes for art 3.09
-   2021-07-26 Lynn Garren : gallery v1_18_04
-   2021-07-26 Lynn Garren : add missing header
-   2021-07-26 Lynn Garren : new parse_document format
-   2021-07-26 Lynn Garren : Merge branch 'develop' into v09_30_00_rc_br
-   2021-07-26 Lynn Garren : for gallery v1_18_02
-   2021-07-26 Lynn Garren : ParameterSet
