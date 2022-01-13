LArSoft v09_28_02_01 Release Notes
=============================================================================

-   **Table of contents**
-   [LArSoft v09_28_02_01 Release Notes](#LArSoft-v09_28_02_01-Release-Notes)
    -   [Purpose](#Purpose)
    -   [Working with mrb 5 and cetbuildtools 8](#Working-with-mrb-5-and-cetbuildtools-8)
    -   [New features](#New-features)
    -   [Updates for experiment code](#Updates-for-experiment-code)
    -   [Updated dependencies](#Updated-dependencies)
-   [Change List](#Change-List)
    -   [larsoft v09_28_02_01](#larsoft-v09_28_02_01)
    -   [lareventdisplay v09_01_16_01](#lareventdisplay-v09_01_16_01)
    -   [larexamples v09_01_15_01](#larexamples-v09_01_15_01)
    -   [larpandora v09_07_02_01](#larpandora-v09_07_02_01)
    -   [larsimrad v09_01_15_01](#larsimrad-v09_01_15_01)
    -   [larrecodnn v09_08_02_01](#larrecodnn-v09_08_02_01)
    -   [larwirecell v09_02_13_01](#larwirecell-v09_02_13_01)
    -   [larana v09_02_12_01](#larana-v09_02_12_01)
    -   [larreco v09_06_12_01](#larreco-v09_06_12_01)
    -   [larsim v09_14_04_01](#larsim-v09_14_04_01)
    -   [larg4 v09_03_11_01](#larg4-v09_03_11_01)
    -   [larevt v09_02_10_01](#larevt-v09_02_10_01)
    -   [lardata v09_02_08_01](#lardata-v09_02_08_01)
    -   [larcore v09_02_04_01](#larcore-v09_02_04_01)
    -   [larpandoracontent v03_24_02_01](#larpandoracontent-v03_24_02_01)
    -   [larsoftobj v09_07_01_01](#larsoftobj-v09_07_01_01)
    -   [lardataobj v09_01_06_01](#lardataobj-v09_01_06_01)
    -   [lardataalg v09_04_07_01](#lardataalg-v09_04_07_01)
    -   [larcorealg v09_02_01_01](#larcorealg-v09_02_01_01)
    -   [larcoreobj v09_02_01_04](#larcoreobj-v09_02_01_04)
    -   [webevd v09_05_09_01](#webevd-v09_05_09_01)

[list of LArSoft releases](LArSoft_release_list)
Download instructions for [larsoft v09_28_02_01](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v09_28_02_01/larsoft-v09_28_02_01.html)
Download instructions for [just larsoftobj v09_07_01_01](http://scisoft.fnal.gov/scisoft/bundles/larsoftobj/v09_07_01_01/larsoftobj-v09_07_01_01.html)

Purpose
--------------------

-   **THIS IS A TEST RELEASE**
-   This is a test release with art v3_09_03.
    -   This release uses cetbuildtools 8
    -   All code used for this release is on temporary branch v09_30_00_rc_br
    -   mrb 5 **MUST** be used when working with this release
        -   setup -t mrb
-   This release is based off of larsoft v09_28_02

Working with mrb 5 and cetbuildtools 8
----------------------------------------------------------------------------------

-   Cetbuildtools 8 is a thin wrapper for cetmodules. Using cetbuildtools 8 means that the required changes to the CMakeLists.txt files are minimal.
    -   Switching to cetmodules explicitly will require more extensive changes.
-   Build order matters.
    -   To that end, mrbsetenv will complain if the repoisitories are not listed in optimal order in \$MRB_SOURCE/CMakeLists.txt.
    -   Anytime you change the contents of \$MRB_SOURCE, including a fresh start, you must run mrb uc AFTER running mrbsetenv:

            mrbsetenv
            mrb uc

    -   Once this is done, you do not need to do it again unless you add or remove a package from \$MRB_SOURCE.

New features
------------------------------

-   See the art 3.09 [release notes](https://cdcvs.fnal.gov/redmine/projects/art/wiki/Series_309) and [breaking changes](https://cdcvs.fnal.gov/redmine/projects/art/wiki/309_breaking_changes)

Updates for experiment code
------------------------------------------------------------

-   necessary changes will be provided in feature/team_for_art_v3_09 branches
-   argoneutcode feature/team_for_art_v3_09
    -   [CI tests](https://dbweb8.fnal.gov:8443/LarCI/app/ns:ArgoNeuT/view_builds/index?offset=0&builds=lar_ci/12161&builds=) pass
    -   trigger --build-delay 0 --cert /tmp/x509up_u1147 --version ci_mrb5 --workflow argoneutcodestandalone_wf --revisions "argoneutcode@feature/team_for_art_v3_09" 

-   uboone suite feature/team_for_art_v3_09
    -   unit test issues resolved
    -   [CI output](https://dbweb8.fnal.gov:8443/LarCI/app/ns:uBooNE/view_builds/index?offset=0&builds=lar_ci/12490&builds=)
-   DUNE
    -   feature/team_for_art_v3_09 available for dunetpc, duneutil, and protoduneana
    -   [CI output](https://dbweb8.fnal.gov:8443/LarCI/app/ns:DUNE/view_builds/index?offset=0&builds=lar_ci/12528&builds=)
-   SBN
    -   feature/team_for_art_v3_09 available for sbnanaobj, sbncode, sbnobj, and sbndaq_artdaq_core
-   ICARUS
    -   feature/team_for_art_v3_09 available for icarusalg, icaruscode, icarus_signal_processing, and icarusutil
    -   unit tests pass
-   SBND
    -   feature/team_for_art_v3_09 available for sbndcode and sbndutil
    -   unit tests pass

Updated dependencies
----------------------------------------------

-   mrb v5_16_00 (NOT the default)
-   cetbuildtools v8_15_00

-   MANY dependencies are updated. A few are listed here.
-   art v3_09_03 (s112)
-   art_root_io v1_08_03
-   boost v1_75_0
-   canvas_root_io v1_09_04
-   clhep v2_4_4_1
-   ifdh_art v2_12_04
-   nutools v3_11_04
-   python v3_9_2
-   root v6_22_08d

Change List
============================

larsoft v09_28_02_01
-------------------------------------------------

-   2021-08-25 Lynn Garren : larsoft v09_28_02_01 for larsoft v09_28_02_01
-   2021-08-25 Lynn Garren : larsoft v09_28_02_01 for larsoft v09_28_02_01
-   2021-08-25 Lynn Garren : product versions
-   2021-08-25 Lynn Garren : Merge branch ‘master’ into v09_30_00_rc_br
-   2021-08-20 Lynn Garren : for nurandom v1_07_05
-   2021-08-19 Lynn Garren : wirecell v0_16_0
-   2021-08-16 Lynn Garren : larsoft v09_27_00_05 for larsoft v09_27_00_05
-   2021-08-16 Lynn Garren : larsoft v09_27_00_05 for larsoft v09_27_00_05
-   2021-08-16 Lynn Garren : wirecell v0_15_0 and jsonnet v0_17_0
-   2021-08-10 Lynn Garren : product versions
-   2021-08-10 Lynn Garren : larsoft v09_27_00_04 for larsoft v09_27_00_04
-   2021-08-10 Lynn Garren : larsoft v09_27_00_04 for larsoft v09_27_00_04
-   2021-08-07 Lynn Garren : moving argoneut libraries
-   2021-08-07 Lynn Garren : larsoft v09_27_00_03 for larsoft v09_27_00_03
-   2021-08-07 Lynn Garren : larsoft v09_27_00_03 for larsoft v09_27_00_03
-   2021-08-07 Lynn Garren : add nusimdata_SimulationBase
-   2021-08-07 Lynn Garren : cetbuildtools v8_14_02
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
-   2021-07-26 Lynn Garren : Merge branch ‘develop’ into v09_30_00_rc_br
-   2021-07-26 Lynn Garren : product updates

lareventdisplay v09_01_16_01
-----------------------------------------------------------------

-   2021-08-25 Lynn Garren : lareventdisplay v09_01_16_01 for larsoft v09_28_02_01
-   2021-08-25 Lynn Garren : lareventdisplay v09_01_16_01 for larsoft v09_28_02_01
-   2021-08-25 Lynn Garren : Merge branch ‘master’ into v09_30_00_rc_br
-   2021-08-10 Lynn Garren : lareventdisplay v09_01_14_04 for larsoft v09_27_00_04
-   2021-08-10 Lynn Garren : lareventdisplay v09_01_14_04 for larsoft v09_27_00_04
-   2021-08-07 Lynn Garren : lareventdisplay v09_01_14_03 for larsoft v09_27_00_03
-   2021-08-07 Lynn Garren : lareventdisplay v09_01_14_03 for larsoft v09_27_00_03
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

larexamples v09_01_15_01
---------------------------------------------------------

-   2021-08-25 Lynn Garren : larexamples v09_01_15_01 for larsoft v09_28_02_01
-   2021-08-25 Lynn Garren : larexamples v09_01_15_01 for larsoft v09_28_02_01
-   2021-08-25 Lynn Garren : Merge branch ‘master’ into v09_30_00_rc_br
-   2021-08-10 Lynn Garren : larexamples v09_01_13_04 for larsoft v09_27_00_04
-   2021-08-10 Lynn Garren : larexamples v09_01_13_04 for larsoft v09_27_00_04
-   2021-08-10 Lynn Garren : add missing header
-   2021-08-07 Lynn Garren : larexamples v09_01_13_03 for larsoft v09_27_00_03
-   2021-08-07 Lynn Garren : larexamples v09_01_13_03 for larsoft v09_27_00_03
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

larpandora v09_07_02_01
-------------------------------------------------------

-   2021-08-25 Lynn Garren : larpandora v09_07_02_01 for larsoft v09_28_02_01
-   2021-08-25 Lynn Garren : larpandora v09_07_02_01 for larsoft v09_28_02_01
-   2021-08-25 Lynn Garren : Merge branch ‘master’ into v09_30_00_rc_br
-   2021-08-10 Lynn Garren : larpandora v09_07_00_04 for larsoft v09_27_00_04
-   2021-08-10 Lynn Garren : larpandora v09_07_00_04 for larsoft v09_27_00_04
-   2021-08-07 Lynn Garren : larpandora v09_07_00_03 for larsoft v09_27_00_03
-   2021-08-07 Lynn Garren : larpandora v09_07_00_03 for larsoft v09_27_00_03
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
-   2021-07-26 Lynn Garren : Merge branch ‘develop’ into v09_30_00_rc_br
-   2021-07-26 Lynn Garren : fix exclude
-   2021-06-25 Lynn Garren : spell it right
-   2021-06-25 Lynn Garren : make sure we do not try to build the tool twice

larsimrad v09_01_15_01
-----------------------------------------------------

-   2021-08-25 Lynn Garren : larsimrad v09_01_15_01 for larsoft v09_28_02_01
-   2021-08-25 Lynn Garren : larsimrad v09_01_15_01 for larsoft v09_28_02_01
-   2021-08-25 Lynn Garren : Merge branch ‘master’ into v09_30_00_rc_br
-   2021-08-10 Lynn Garren : larsimrad v09_01_13_04 for larsoft v09_27_00_04
-   2021-08-10 Lynn Garren : larsimrad v09_01_13_04 for larsoft v09_27_00_04
-   2021-08-07 Lynn Garren : larsimrad v09_01_13_03 for larsoft v09_27_00_03
-   2021-08-07 Lynn Garren : larsimrad v09_01_13_03 for larsoft v09_27_00_03
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
-   2021-07-26 Lynn Garren : Merge branch ‘develop’ into v09_30_00_rc_br
-   2021-07-26 Lynn Garren : bxdecay0 v1_0_9
-   2021-07-26 Lynn Garren : coping with gsl issues

larrecodnn v09_08_02_01
-------------------------------------------------------

-   2021-08-25 Lynn Garren : larrecodnn v09_08_02_01 for larsoft v09_28_02_01
-   2021-08-25 Lynn Garren : larrecodnn v09_08_02_01 for larsoft v09_28_02_01
-   2021-08-25 Lynn Garren : Merge branch ‘master’ into v09_30_00_rc_br
-   2021-08-10 Lynn Garren : larrecodnn v09_08_00_04 for larsoft v09_27_00_04
-   2021-08-10 Lynn Garren : larrecodnn v09_08_00_04 for larsoft v09_27_00_04
-   2021-08-07 Lynn Garren : larrecodnn v09_08_00_03 for larsoft v09_27_00_03
-   2021-08-07 Lynn Garren : larrecodnn v09_08_00_03 for larsoft v09_27_00_03
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
-   2021-07-26 Lynn Garren : Merge branch ‘develop’ into v09_30_00_rc_br
-   2021-07-26 Lynn Garren : triton v2_3_0d

larwirecell v09_02_13_01
---------------------------------------------------------

-   2021-08-25 Lynn Garren : larwirecell v09_02_13_01 for larsoft v09_28_02_01
-   2021-08-25 Lynn Garren : larwirecell v09_02_13_01 for larsoft v09_28_02_01
-   2021-08-25 Lynn Garren : Merge branch ‘master’ into v09_30_00_rc_br
-   2021-08-19 Lynn Garren : wirecell v0_16_0
-   2021-08-16 Lynn Garren : larwirecell v09_02_10_05 for larsoft v09_27_00_05
-   2021-08-16 Lynn Garren : larwirecell v09_02_10_05 for larsoft v09_27_00_05
-   2021-08-10 Lynn Garren : larwirecell v09_02_10_04 for larsoft v09_27_00_04
-   2021-08-10 Lynn Garren : larwirecell v09_02_10_04 for larsoft v09_27_00_04
-   2021-08-07 Lynn Garren : larwirecell v09_02_10_03 for larsoft v09_27_00_03
-   2021-08-07 Lynn Garren : larwirecell v09_02_10_03 for larsoft v09_27_00_03
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
-   2021-07-26 Lynn Garren : Merge branch ‘develop’ into v09_30_00_rc_br
-   2021-07-15 Lynn Garren : find eigen headers
-   2021-07-15 Lynn Garren : wirecell v0_15_0

larana v09_02_12_01
-----------------------------------------------

-   2021-08-25 Lynn Garren : larana v09_02_12_01 for larsoft v09_28_02_01
-   2021-08-25 Lynn Garren : larana v09_02_12_01 for larsoft v09_28_02_01
-   2021-08-25 Lynn Garren : Merge branch ‘master’ into v09_30_00_rc_br
-   2021-08-10 Lynn Garren : larana v09_02_10_04 for larsoft v09_27_00_04
-   2021-08-10 Lynn Garren : larana v09_02_10_04 for larsoft v09_27_00_04
-   2021-08-07 Lynn Garren : larana v09_02_10_03 for larsoft v09_27_00_03
-   2021-08-07 Lynn Garren : larana v09_02_10_03 for larsoft v09_27_00_03
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

larreco v09_06_12_01
-------------------------------------------------

-   2021-08-25 Lynn Garren : larreco v09_06_12_01 for larsoft v09_28_02_01
-   2021-08-25 Lynn Garren : larreco v09_06_12_01 for larsoft v09_28_02_01
-   2021-08-25 Lynn Garren : Merge branch ‘master’ into v09_30_00_rc_br
-   2021-08-10 Lynn Garren : larreco v09_06_10_04 for larsoft v09_27_00_04
-   2021-08-10 Lynn Garren : larreco v09_06_10_04 for larsoft v09_27_00_04
-   2021-08-07 Lynn Garren : larreco v09_06_10_03 for larsoft v09_27_00_03
-   2021-08-07 Lynn Garren : larreco v09_06_10_03 for larsoft v09_27_00_03
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

larsim v09_14_04_01
-----------------------------------------------

-   2021-08-25 Lynn Garren : larsim v09_14_04_01 for larsoft v09_28_02_01
-   2021-08-25 Lynn Garren : larsim v09_14_04_01 for larsoft v09_28_02_01
-   2021-08-25 Lynn Garren : Merge branch ‘master’ into v09_30_00_rc_br
-   2021-08-20 Lynn Garren : use nurandom v1_07_05
-   2021-08-10 Lynn Garren : larsim v09_14_02_04 for larsoft v09_27_00_04
-   2021-08-10 Lynn Garren : larsim v09_14_02_04 for larsoft v09_27_00_04
-   2021-08-10 Lynn Garren : add missing header
-   2021-08-07 Lynn Garren : larsim v09_14_02_03 for larsoft v09_27_00_03
-   2021-08-07 Lynn Garren : larsim v09_14_02_03 for larsoft v09_27_00_03
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
-   2021-07-26 Lynn Garren : Merge branch ‘develop’ into v09_30_00_rc_br
-   2021-07-20 Lynn Garren : xml2 problem
-   2021-07-20 Kyle Knoepfel : More tweaks to support art 3.09
-   2021-07-19 Lynn Garren : missing headers
-   2021-07-19 Lynn Garren : nugen v1_14_03
-   2021-07-19 Lynn Garren : fixes for art 3.09

larg4 v09_03_11_01
---------------------------------------------

-   2021-08-25 Lynn Garren : larg4 v09_03_11_01 for larsoft v09_28_02_01
-   2021-08-25 Lynn Garren : larg4 v09_03_11_01 for larsoft v09_28_02_01
-   2021-08-25 Lynn Garren : Merge branch ‘master’ into v09_30_00_rc_br
-   2021-08-20 Lynn Garren : use nurandom v1_07_05
-   2021-08-10 Lynn Garren : larg4 v09_03_09_04 for larsoft v09_27_00_04
-   2021-08-10 Lynn Garren : larg4 v09_03_09_04 for larsoft v09_27_00_04
-   2021-08-10 Lynn Garren : add missing header
-   2021-08-07 Lynn Garren : larg4 v09_03_09_03 for larsoft v09_27_00_03
-   2021-08-07 Lynn Garren : larg4 v09_03_09_03 for larsoft v09_27_00_03
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
-   2021-07-26 Lynn Garren : Merge branch ‘develop’ into v09_30_00_rc_br
-   2021-07-19 Kyle Knoepfel : Adjust getMany call.
-   2021-07-19 Lynn Garren : nug4 v1_09_03
-   2021-07-19 Lynn Garren : replace getManyByType

larevt v09_02_10_01
-----------------------------------------------

-   2021-08-25 Lynn Garren : larevt v09_02_10_01 for larsoft v09_28_02_01
-   2021-08-25 Lynn Garren : larevt v09_02_10_01 for larsoft v09_28_02_01
-   2021-08-25 Lynn Garren : Merge branch ‘master’ into v09_30_00_rc_br
-   2021-08-10 Lynn Garren : larevt v09_02_08_04 for larsoft v09_27_00_04
-   2021-08-10 Lynn Garren : larevt v09_02_08_04 for larsoft v09_27_00_04
-   2021-08-10 Lynn Garren : add missing header
-   2021-08-07 Lynn Garren : larevt v09_02_08_03 for larsoft v09_27_00_03
-   2021-08-07 Lynn Garren : larevt v09_02_08_03 for larsoft v09_27_00_03
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
-   2021-07-26 Lynn Garren : Merge branch ‘develop’ into v09_30_00_rc_br
-   2021-07-14 Lynn Garren : cetbuildtools v8_10_01
-   2021-07-14 Lynn Garren : remove obsolete header
-   2021-07-14 Lynn Garren : find headers

lardata v09_02_08_01
-------------------------------------------------

-   2021-08-25 Lynn Garren : lardata v09_02_08_01 for larsoft v09_28_02_01
-   2021-08-25 Lynn Garren : lardata v09_02_08_01 for larsoft v09_28_02_01
-   2021-08-25 Lynn Garren : Merge branch ‘master’ into v09_30_00_rc_br
-   2021-08-10 Lynn Garren : lardata v09_02_06_04 for larsoft v09_27_00_04
-   2021-08-10 Lynn Garren : lardata v09_02_06_04 for larsoft v09_27_00_04
-   2021-08-10 Lynn Garren : add missing header
-   2021-08-07 Lynn Garren : lardata v09_02_06_03 for larsoft v09_27_00_03
-   2021-08-07 Lynn Garren : lardata v09_02_06_03 for larsoft v09_27_00_03
-   2021-08-07 Lynn Garren : this code has been moved to argoneutcode in feature/team_for_art_v3_09
-   2021-08-07 Lynn Garren : move argoneut code into a subdirectory
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
-   2021-07-26 Lynn Garren : Merge branch ‘develop’ into v09_30_00_rc_br
-   2021-07-14 Lynn Garren : no semi colon here
-   2021-07-14 Kyle Knoepfel : Re-enable (and simplify) RangeForWrapper test
-   2021-07-14 Lynn Garren : adding parentheses
-   2021-07-14 Lynn Garren : add missing header
-   2021-07-14 Lynn Garren : add missing header
-   2021-07-14 Lynn Garren : temporarily disable RangeForWrapper_test
-   2021-07-14 Lynn Garren : cetbuildtools v8_10_01
-   2021-07-14 Lynn Garren : for art 3.09

larcore v09_02_04_01
-------------------------------------------------

-   2021-08-25 Lynn Garren : larcore v09_02_04_01 for larsoft v09_28_02_01
-   2021-08-25 Lynn Garren : larcore v09_02_04_01 for larsoft v09_28_02_01
-   2021-08-24 Lynn Garren : Merge branch ‘master’ into v09_30_00_rc_br
-   2021-08-10 Lynn Garren : larcore v09_02_02_04 for larsoft v09_27_00_04
-   2021-08-10 Lynn Garren : larcore v09_02_02_04 for larsoft v09_27_00_04
-   2021-08-10 Lynn Garren : add missing header
-   2021-08-07 Lynn Garren : larcore v09_02_02_03 for larsoft v09_27_00_03
-   2021-08-07 Lynn Garren : larcore v09_02_02_03 for larsoft v09_27_00_03
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
-   2021-07-26 Lynn Garren : Merge branch ‘develop’ into v09_30_00_rc_br
-   2021-07-14 Lynn Garren : cetbuildtools v8_10_01
-   2021-07-14 Lynn Garren : add cetlib
-   2021-07-14 Lynn Garren : for art 3.09
-   2021-07-14 Lynn Garren : for art 3.09

larpandoracontent v03_24_02_01
---------------------------------------------------------------------

-   2021-08-25 Lynn Garren : larpandoracontent v03_24_02_01 for larsoft v09_28_02_01
-   2021-08-25 Lynn Garren : larpandoracontent v03_24_02_01 for larsoft v09_28_02_01
-   2021-08-25 Lynn Garren : Merge branch ‘master’ into v09_30_00_rc_br
-   2021-08-10 Lynn Garren : larpandoracontent v03_24_00_04 for larsoft v09_27_00_04
-   2021-08-10 Lynn Garren : larpandoracontent v03_24_00_04 for larsoft v09_27_00_04
-   2021-08-07 Lynn Garren : larpandoracontent v03_24_00_03 for larsoft v09_27_00_03
-   2021-08-07 Lynn Garren : larpandoracontent v03_24_00_03 for larsoft v09_27_00_03
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
-   2021-07-26 Lynn Garren : Merge branch ‘develop’ into v09_30_00_rc_br
-   2021-07-26 Lynn Garren : libtorch v1_6_0d

larsoftobj v09_07_01_01
-------------------------------------------------------

-   2021-08-25 Lynn Garren : larsoftobj v09_07_01_01 for larsoft v09_28_02_01
-   2021-08-25 Lynn Garren : larsoftobj v09_07_01_01 for larsoft v09_28_02_01
-   2021-08-25 Lynn Garren : product versions
-   2021-08-25 Lynn Garren : Merge branch ‘master’ into v09_30_00_rc_br
-   2021-08-07 Lynn Garren : larsoftobj v09_06_01_03 for larsoft v09_27_00_03
-   2021-08-07 Lynn Garren : larsoftobj v09_06_01_03 for larsoft v09_27_00_03
-   2021-08-07 Lynn Garren : cetbuildtools v8_14_02
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
-   2021-07-26 Lynn Garren : Merge branch ‘develop’ into v09_30_00_rc_br
-   2021-07-12 Lynn Garren : v09_30_00_rc0
-   2021-07-12 Lynn Garren : v09_30_00_rc0
-   2021-07-12 Lynn Garren : hub v2_14_2
-   2021-07-09 Lynn Garren : Merge branch ‘develop’ into v09_30_00_rc_br
-   2021-07-09 Lynn Garren : for root v6_22_08c

lardataobj v09_01_06_01
-------------------------------------------------------

-   2021-08-25 Lynn Garren : lardataobj v09_01_06_01 for larsoft v09_28_02_01
-   2021-08-25 Lynn Garren : lardataobj v09_01_06_01 for larsoft v09_28_02_01
-   2021-08-25 Lynn Garren : Merge branch ‘master’ into v09_30_00_rc_br
-   2021-08-07 Lynn Garren : lardataobj v09_01_04_03 for larsoft v09_27_00_03
-   2021-08-07 Lynn Garren : lardataobj v09_01_04_03 for larsoft v09_27_00_03
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
-   2021-07-09 Lynn Garren : Merge branch ‘develop’ into v09_30_00_rc_br
-   2021-07-09 Lynn Garren : cetbuildtools v8_10_01
-   2021-07-09 Lynn Garren : find product

lardataalg v09_04_07_01
-------------------------------------------------------

-   2021-08-25 Lynn Garren : lardataalg v09_04_07_01 for larsoft v09_28_02_01
-   2021-08-25 Lynn Garren : lardataalg v09_04_07_01 for larsoft v09_28_02_01
-   2021-08-25 Lynn Garren : Merge branch ‘master’ into v09_30_00_rc_br
-   2021-08-07 Lynn Garren : lardataalg v09_04_05_03 for larsoft v09_27_00_03
-   2021-08-07 Lynn Garren : lardataalg v09_04_05_03 for larsoft v09_27_00_03
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
-   2021-07-09 Lynn Garren : Merge branch ‘develop’ into v09_30_00_rc_br
-   2021-07-09 Lynn Garren : find product
-   2021-07-09 Lynn Garren : cetbuildtools v8_10_01
-   2021-07-09 Lynn Garren : ParameterSet

larcorealg v09_02_01_01
-------------------------------------------------------

-   2021-08-25 Lynn Garren : larcorealg v09_02_01_01 for larsoft v09_28_02_01
-   2021-08-25 Lynn Garren : larcorealg v09_02_01_01 for larsoft v09_28_02_01
-   2021-08-24 Lynn Garren : Merge branch ‘master’ into v09_30_00_rc_br
-   2021-08-07 Lynn Garren : larcorealg v09_01_02_03 for larsoft v09_27_00_03
-   2021-08-07 Lynn Garren : larcorealg v09_01_02_03 for larsoft v09_27_00_03
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
-   2021-07-09 Lynn Garren : Merge branch ‘develop’ into v09_30_00_rc_br
-   2021-07-09 Lynn Garren : ParameterSet
-   2021-07-09 Lynn Garren : ParameterSet
-   2021-07-09 Lynn Garren : cetbuildtools v8_10_01
-   2021-07-09 Lynn Garren : find products

larcoreobj v09_02_01_04
-------------------------------------------------------

-   2021-08-25 Lynn Garren : larcoreobj v09_02_01_04 for larsoft v09_28_02_01
-   2021-08-25 Lynn Garren : larcoreobj v09_02_01_04 for larsoft v09_28_02_01
-   2021-08-07 Lynn Garren : larcoreobj v09_02_01_03 for larsoft v09_27_00_03
-   2021-08-07 Lynn Garren : larcoreobj v09_02_01_03 for larsoft v09_27_00_03
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
-   2021-07-09 Lynn Garren : Merge branch ‘develop’ into v09_30_00_rc_br
-   2021-07-09 Lynn Garren : for root v6_22_08c
-   2021-07-09 Lynn Garren : find cetlib
-   2021-07-09 Lynn Garren : ParameterSet

webevd v09_05_09_01
-----------------------------------------------

-   2021-08-25 Lynn Garren : webevd v09_05_09_01 for larsoft v09_28_02_01
-   2021-08-25 Lynn Garren : webevd v09_05_09_01 for larsoft v09_28_02_01
-   2021-08-25 Lynn Garren : Merge branch ‘master’ into v09_30_00_rc_br
-   2021-08-10 Lynn Garren : webevd v09_05_07_04 for larsoft v09_27_00_04
-   2021-08-10 Lynn Garren : webevd v09_05_07_04 for larsoft v09_27_00_04
-   2021-08-07 Lynn Garren : webevd v09_05_07_03 for larsoft v09_27_00_03
-   2021-08-07 Lynn Garren : webevd v09_05_07_03 for larsoft v09_27_00_03
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
-   2021-07-26 Lynn Garren : Merge branch ‘develop’ into v09_30_00_rc_br
-   2021-07-26 Lynn Garren : for gallery v1_18_02
-   2021-07-26 Lynn Garren : ParameterSet
