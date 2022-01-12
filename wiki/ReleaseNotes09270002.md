LArSoft v09\_27\_00\_02 Release Notes
=============================================================================

-   **Table of contents**
-   [LArSoft v09\_27\_00\_02 Release Notes](#LArSoft-v09_27_00_02-Release-Notes)
    -   [Purpose](#Purpose)
    -   [New features](#New-features)
    -   [Updates for experiment code](#Updates-for-experiment-code)
    -   [Updated dependencies](#Updated-dependencies)
-   [Change List](#Change-List)
    -   [larsoft v09\_27\_00\_02](#larsoft-v09_27_00_02)
    -   [lareventdisplay v09\_01\_14\_02](#lareventdisplay-v09_01_14_02)
    -   [larexamples v09\_01\_13\_02](#larexamples-v09_01_13_02)
    -   [larpandora v09\_07\_00\_02](#larpandora-v09_07_00_02)
    -   [larsimrad v09\_01\_13\_02](#larsimrad-v09_01_13_02)
    -   [larrecodnn v09\_08\_00\_02](#larrecodnn-v09_08_00_02)
    -   [larwirecell v09\_02\_10\_02](#larwirecell-v09_02_10_02)
    -   [larana v09\_02\_10\_02](#larana-v09_02_10_02)
    -   [larreco v09\_06\_10\_02](#larreco-v09_06_10_02)
    -   [larsim v09\_14\_02\_02](#larsim-v09_14_02_02)
    -   [larg4 v09\_03\_09\_02](#larg4-v09_03_09_02)
    -   [larevt v09\_02\_08\_02](#larevt-v09_02_08_02)
    -   [lardata v09\_02\_06\_02](#lardata-v09_02_06_02)
    -   [larcore v09\_02\_02\_02](#larcore-v09_02_02_02)
    -   [larpandoracontent v03\_24\_00\_02](#larpandoracontent-v03_24_00_02)
    -   [larsoftobj v09\_06\_01\_02](#larsoftobj-v09_06_01_02)
    -   [lardataobj v09\_01\_04\_02](#lardataobj-v09_01_04_02)
    -   [lardataalg v09\_04\_05\_02](#lardataalg-v09_04_05_02)
    -   [larcorealg v09\_01\_02\_02](#larcorealg-v09_01_02_02)
    -   [larcoreobj v09\_02\_01\_02](#larcoreobj-v09_02_01_02)
    -   [webevd v09\_05\_07\_02](#webevd-v09_05_07_02)

[list of LArSoft releases](LArSoft_release_list)
Download instructions for [larsoft v09\_27\_00\_02](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v09_27_00_02/larsoft-v09_27_00_02.html)
Download instructions for [just larsoftobj v09\_06\_01\_02](http://scisoft.fnal.gov/scisoft/bundles/larsoftobj/v09_06_01_02/larsoftobj-v09_06_01_02.html)

Purpose
--------------------

-   **THIS IS A TEST RELEASE**
-   This is a test release with art v3\_09\_03.
    -   This release uses cetbuildtools 8
    -   All code used for this release is on temporary branch v09\_30\_00\_rc\_br
    -   mrb 5 **MUST** be used when working with this release
        -   setup -t mrb
-   This release is based off of larsoft v09\_27\_00

New features
------------------------------

-   See the art 3.09 [release notes](/redmine/projects/art/wiki/Series_309) and [breaking changes](/redmine/projects/art/wiki/309_breaking_changes)

Updates for experiment code
------------------------------------------------------------

-   necessary changes will be provided in feature/team\_for\_art\_v3\_09 branches
-   argoneutcode feature/team\_for\_art\_v3\_09
    -   [CI tests](https://dbweb0.fnal.gov/LarCI/app/ns:ArgoNeuT/view_builds/index?offset=0&builds=lar_ci/12079&builds=)
        -   the test has pointed out a problem in the generated larg4 table file
    -   trigger --build-delay 0 --cert /tmp/x509up_u1147 --version ci_mrb5 --workflow argoneutcodestandalone_wf --revisions "argoneutcode@feature/team_for_art_v3_09" 

Updated dependencies
----------------------------------------------

-   mrb v5\_14\_03 (NOT the default)
-   cetbuildtools v8\_13\_03
-   [ReleaseNotes09270001](ReleaseNotes09270001#Updated-dependencies)

Change List
============================

larsoft v09\_27\_00\_02
-------------------------------------------------

-   2021-08-04 Lynn Garren : larsoft v09\_27\_00\_02 for larsoft v09\_27\_00\_02
-   2021-08-04 Lynn Garren : larsoft v09\_27\_00\_02 for larsoft v09\_27\_00\_02
-   2021-08-04 Lynn Garren : cetbuildtools v8\_13\_03
-   2021-08-03 Lynn Garren : cleanup and provide cetbuildtools
-   2021-08-02 Chris Green : Resolve downstream issues with hardwired paths to transitive dependencies
-   2021-08-02 Chris Green : Use cetbuildtools v8\_13\_01
-   2021-08-02 Kyle Knoepfel : Alphabetized replacements for sanity; and a couple corrections.
-   2021-07-28 Lynn Garren : a couple more
-   2021-07-28 Lynn Garren : adding some root libraries
-   2021-07-28 Lynn Garren : updating library names - incomplete

lareventdisplay v09\_01\_14\_02
-----------------------------------------------------------------

-   2021-08-04 Lynn Garren : lareventdisplay v09\_01\_14\_02 for larsoft v09\_27\_00\_02
-   2021-08-04 Lynn Garren : lareventdisplay v09\_01\_14\_02 for larsoft v09\_27\_00\_02
-   2021-08-02 Chris Green : Use cetbuildtools v8\_13\_01
-   2021-07-28 Lynn Garren : update library names
-   2021-07-28 Lynn Garren : lareventdisplay v09\_01\_14\_01 for larsoft v09\_27\_00\_01
-   2021-07-28 Lynn Garren : cmake\_minimum\_required
-   2021-07-28 Lynn Garren : project version
-   2021-07-27 Lynn Garren : lareventdisplay v09\_30\_00\_rc1 for larsoft v09\_30\_00\_rc1
-   2021-07-27 Lynn Garren : CMAKE\_PROJECT\_VERSION\_STRING
-   2021-07-27 Kyle Knoepfel : Update service-macro headers.
-   2021-07-26 Lynn Garren : nuevdb v1\_05\_04
-   2021-07-26 Lynn Garren : getManyByType
-   2021-07-26 Lynn Garren : find eigen headers

larexamples v09\_01\_13\_02
---------------------------------------------------------

-   2021-08-04 Lynn Garren : larexamples v09\_01\_13\_02 for larsoft v09\_27\_00\_02
-   2021-08-04 Lynn Garren : larexamples v09\_01\_13\_02 for larsoft v09\_27\_00\_02
-   2021-08-02 Chris Green : Use cetbuildtools v8\_13\_01
-   2021-07-29 Kyle Knoepfel : Fix typo
-   2021-07-28 Lynn Garren : update library names
-   2021-07-28 Lynn Garren : larexamples v09\_01\_13\_01 for larsoft v09\_27\_00\_01
-   2021-07-28 Lynn Garren : cmake\_minimum\_required
-   2021-07-28 Lynn Garren : project version
-   2021-07-27 Lynn Garren : larexamples v09\_30\_00\_rc1 for larsoft v09\_30\_00\_rc1
-   2021-07-27 Lynn Garren : CMAKE\_PROJECT\_VERSION\_STRING
-   2021-07-27 Kyle Knoepfel : Update service-macro headers.
-   2021-07-27 Kyle Knoepfel : Add missing BOOST\_TEST\_MODULE definition.
-   2021-07-26 Lynn Garren : cetbuildtools v8\_11\_02
-   2021-07-26 Lynn Garren : find packages

larpandora v09\_07\_00\_02
-------------------------------------------------------

-   2021-08-04 Lynn Garren : larpandora v09\_07\_00\_02 for larsoft v09\_27\_00\_02
-   2021-08-04 Lynn Garren : larpandora v09\_07\_00\_02 for larsoft v09\_27\_00\_02
-   2021-08-02 Chris Green : Resolve downstream issues with hardwired paths to transitive dependencies
-   2021-08-02 Chris Green : Use cetbuildtools v8\_13\_01
-   2021-07-28 Lynn Garren : fix library name
-   2021-07-28 Lynn Garren : cleanup - for now at least
-   2021-07-28 Lynn Garren : library names
-   2021-07-28 Lynn Garren : larpandora v09\_07\_00\_01 for larsoft v09\_27\_00\_01
-   2021-07-28 Lynn Garren : cmake\_minimum\_required
-   2021-07-28 Lynn Garren : project version
-   2021-07-27 Lynn Garren : larpandora v09\_30\_00\_rc1 for larsoft v09\_30\_00\_rc1
-   2021-07-27 Lynn Garren : CMAKE\_PROJECT\_VERSION\_STRING
-   2021-07-26 Lynn Garren : cetbuildtools v8\_11\_02
-   2021-07-26 Lynn Garren : add missing headers
-   2021-07-26 Lynn Garren : find packages and headers
-   2021-07-26 Lynn Garren : Merge branch ‘develop’ into v09\_30\_00\_rc\_br
-   2021-07-26 Lynn Garren : fix exclude
-   2021-06-25 Lynn Garren : spell it right
-   2021-06-25 Lynn Garren : make sure we do not try to build the tool twice

larsimrad v09\_01\_13\_02
-----------------------------------------------------

-   2021-08-04 Lynn Garren : larsimrad v09\_01\_13\_02 for larsoft v09\_27\_00\_02
-   2021-08-04 Lynn Garren : larsimrad v09\_01\_13\_02 for larsoft v09\_27\_00\_02
-   2021-08-02 Chris Green : Resolve downstream issues with hardwired paths to transitive dependencies
-   2021-08-02 Chris Green : Use cetbuildtools v8\_13\_01
-   2021-07-28 Lynn Garren : update library names
-   2021-07-28 Lynn Garren : larsimrad v09\_01\_13\_01 for larsoft v09\_27\_00\_01
-   2021-07-28 Lynn Garren : cmake\_minimum\_required
-   2021-07-28 Lynn Garren : project version
-   2021-07-27 Lynn Garren : larsimrad v09\_30\_00\_rc1 for larsoft v09\_30\_00\_rc1
-   2021-07-27 Lynn Garren : CMAKE\_PROJECT\_VERSION\_STRING
-   2021-07-26 Lynn Garren : cetbuildtools v8\_11\_02
-   2021-07-26 Lynn Garren : Merge branch ‘develop’ into v09\_30\_00\_rc\_br
-   2021-07-26 Lynn Garren : bxdecay0 v1\_0\_9
-   2021-07-26 Lynn Garren : coping with gsl issues

larrecodnn v09\_08\_00\_02
-------------------------------------------------------

-   2021-08-04 Lynn Garren : larrecodnn v09\_08\_00\_02 for larsoft v09\_27\_00\_02
-   2021-08-04 Lynn Garren : larrecodnn v09\_08\_00\_02 for larsoft v09\_27\_00\_02
-   2021-08-02 Chris Green : Resolve downstream issues with hardwired paths to transitive dependencies
-   2021-08-02 Chris Green : Use cetbuildtools v8\_13\_01
-   2021-07-28 Lynn Garren : update library names
-   2021-07-28 Lynn Garren : larrecodnn v09\_08\_00\_01 for larsoft v09\_27\_00\_01
-   2021-07-28 Lynn Garren : cmake\_minimum\_required
-   2021-07-28 Lynn Garren : project version
-   2021-07-27 Lynn Garren : larrecodnn v09\_30\_00\_rc1 for larsoft v09\_30\_00\_rc1
-   2021-07-27 Lynn Garren : CMAKE\_PROJECT\_VERSION\_STRING
-   2021-07-26 Lynn Garren : cetbuildtools v8\_11\_02
-   2021-07-26 Lynn Garren : getManyByType
-   2021-07-26 Lynn Garren : find packages
-   2021-07-26 Lynn Garren : Merge branch ‘develop’ into v09\_30\_00\_rc\_br
-   2021-07-26 Lynn Garren : triton v2\_3\_0d

larwirecell v09\_02\_10\_02
---------------------------------------------------------

-   2021-08-04 Lynn Garren : larwirecell v09\_02\_10\_02 for larsoft v09\_27\_00\_02
-   2021-08-04 Lynn Garren : larwirecell v09\_02\_10\_02 for larsoft v09\_27\_00\_02
-   2021-08-02 Chris Green : Resolve downstream issues with hardwired paths to transitive dependencies
-   2021-08-02 Chris Green : Use cetbuildtools v8\_13\_01
-   2021-08-02 Lynn Garren : explicit fcldir definition
-   2021-07-28 Lynn Garren : update library names
-   2021-07-28 Lynn Garren : larwirecell v09\_02\_10\_01 for larsoft v09\_27\_00\_01
-   2021-07-28 Lynn Garren : cmake\_minimum\_required
-   2021-07-28 Lynn Garren : project version
-   2021-07-27 Lynn Garren : larwirecell v09\_30\_00\_rc1 for larsoft v09\_30\_00\_rc1
-   2021-07-27 Lynn Garren : CMAKE\_PROJECT\_VERSION\_STRING
-   2021-07-26 Lynn Garren : wirecell v0\_14\_0j
-   2021-07-26 Lynn Garren : add missing headers
-   2021-07-26 Lynn Garren : Merge branch ‘develop’ into v09\_30\_00\_rc\_br
-   2021-07-15 Lynn Garren : find eigen headers
-   2021-07-15 Lynn Garren : wirecell v0\_15\_0

larana v09\_02\_10\_02
-----------------------------------------------

-   2021-08-04 Lynn Garren : larana v09\_02\_10\_02 for larsoft v09\_27\_00\_02
-   2021-08-04 Lynn Garren : larana v09\_02\_10\_02 for larsoft v09\_27\_00\_02
-   2021-08-02 Chris Green : Resolve downstream issues with hardwired paths to transitive dependencies
-   2021-08-02 Chris Green : Use cetbuildtools v8\_13\_01
-   2021-07-28 Lynn Garren : update library names
-   2021-07-28 Lynn Garren : larana v09\_02\_10\_01 for larsoft v09\_27\_00\_01
-   2021-07-28 Lynn Garren : cmake\_minimum\_required
-   2021-07-28 Lynn Garren : project version
-   2021-07-27 Lynn Garren : larana v09\_30\_00\_rc1 for larsoft v09\_30\_00\_rc1
-   2021-07-27 Lynn Garren : CMAKE\_PROJECT\_VERSION\_STRING
-   2021-07-27 Kyle Knoepfel : Update service-macro headers.
-   2021-07-26 Lynn Garren : for art 3.09

larreco v09\_06\_10\_02
-------------------------------------------------

-   2021-08-04 Lynn Garren : larreco v09\_06\_10\_02 for larsoft v09\_27\_00\_02
-   2021-08-04 Lynn Garren : larreco v09\_06\_10\_02 for larsoft v09\_27\_00\_02
-   2021-08-02 Chris Green : Resolve downstream issues with hardwired paths to transitive dependencies
-   2021-08-02 Chris Green : Use cetbuildtools v8\_13\_01
-   2021-07-28 Lynn Garren : update library names
-   2021-07-28 Lynn Garren : larreco v09\_06\_10\_01 for larsoft v09\_27\_00\_01
-   2021-07-28 Lynn Garren : cmake\_minimum\_required
-   2021-07-28 Lynn Garren : project version
-   2021-07-27 Lynn Garren : larreco v09\_30\_00\_rc1 for larsoft v09\_30\_00\_rc1
-   2021-07-27 Lynn Garren : CMAKE\_PROJECT\_VERSION\_STRING
-   2021-07-27 Kyle Knoepfel : Update service-macro headers.
-   2021-07-27 Kyle Knoepfel : Add missing header.
-   2021-07-26 Lynn Garren : cetbuildtools v8\_11\_02
-   2021-07-26 Lynn Garren : add missing headers
-   2021-07-26 Lynn Garren : find eigen headers

larsim v09\_14\_02\_02
-----------------------------------------------

-   2021-08-04 Lynn Garren : larsim v09\_14\_02\_02 for larsoft v09\_27\_00\_02
-   2021-08-04 Lynn Garren : larsim v09\_14\_02\_02 for larsoft v09\_27\_00\_02
-   2021-08-02 Chris Green : Resolve downstream issues with hardwired paths to transitive dependencies
-   2021-08-02 Chris Green : Use cetbuildtools v8\_13\_01
-   2021-07-28 Lynn Garren : update library names
-   2021-07-28 Lynn Garren : larsim v09\_14\_02\_01 for larsoft v09\_27\_00\_01
-   2021-07-28 Lynn Garren : cmake\_minimum\_required
-   2021-07-28 Lynn Garren : project version
-   2021-07-27 Lynn Garren : larsim v09\_30\_00\_rc1 for larsoft v09\_30\_00\_rc1
-   2021-07-27 Lynn Garren : CMAKE\_PROJECT\_VERSION\_STRING
-   2021-07-27 Kyle Knoepfel : Update service-macro headers.
-   2021-07-26 Lynn Garren : nutools v3\_11\_04
-   2021-07-26 Lynn Garren : add missing header
-   2021-07-26 Lynn Garren : Merge branch ‘develop’ into v09\_30\_00\_rc\_br
-   2021-07-20 Lynn Garren : xml2 problem
-   2021-07-20 Kyle Knoepfel : More tweaks to support art 3.09
-   2021-07-19 Lynn Garren : missing headers
-   2021-07-19 Lynn Garren : nugen v1\_14\_03
-   2021-07-19 Lynn Garren : fixes for art 3.09

larg4 v09\_03\_09\_02
---------------------------------------------

-   2021-08-04 Lynn Garren : larg4 v09\_03\_09\_02 for larsoft v09\_27\_00\_02
-   2021-08-04 Lynn Garren : larg4 v09\_03\_09\_02 for larsoft v09\_27\_00\_02
-   2021-08-02 Chris Green : Resolve downstream issues with hardwired paths to transitive dependencies
-   2021-08-02 Chris Green : Use cetbuildtools v8\_13\_01
-   2021-07-30 Kyle Knoepfel : Adjust library dependencies.
-   2021-07-28 Lynn Garren : update library names
-   2021-07-28 Lynn Garren : update library names
-   2021-07-28 Lynn Garren : find package
-   2021-07-28 Lynn Garren : larg4 v09\_03\_09\_01 for larsoft v09\_27\_00\_01
-   2021-07-28 Lynn Garren : cmake\_minimum\_required
-   2021-07-28 Lynn Garren : project version
-   2021-07-27 Lynn Garren : larg4 v09\_30\_00\_rc1 for larsoft v09\_30\_00\_rc1
-   2021-07-27 Lynn Garren : CMAKE\_PROJECT\_VERSION\_STRING
-   2021-07-27 Kyle Knoepfel : Update service-macro headers.
-   2021-07-26 Lynn Garren : artg4tk v10\_03\_00 and nug4 v1\_09\_04
-   2021-07-26 Lynn Garren : Merge branch ‘develop’ into v09\_30\_00\_rc\_br
-   2021-07-19 Kyle Knoepfel : Adjust getMany call.
-   2021-07-19 Lynn Garren : nug4 v1\_09\_03
-   2021-07-19 Lynn Garren : replace getManyByType

larevt v09\_02\_08\_02
-----------------------------------------------

-   2021-08-04 Lynn Garren : larevt v09\_02\_08\_02 for larsoft v09\_27\_00\_02
-   2021-08-04 Lynn Garren : larevt v09\_02\_08\_02 for larsoft v09\_27\_00\_02
-   2021-08-02 Chris Green : Resolve downstream issues with hardwired paths to transitive dependencies
-   2021-08-02 Chris Green : Use cetbuildtools v8\_13\_01
-   2021-07-28 Lynn Garren : update library names
-   2021-07-28 Lynn Garren : larevt v09\_02\_08\_01 for larsoft v09\_27\_00\_01
-   2021-07-28 Lynn Garren : cmake\_minimum\_required
-   2021-07-28 Lynn Garren : project version
-   2021-07-27 Lynn Garren : larevt v09\_30\_00\_rc1 for larsoft v09\_30\_00\_rc1
-   2021-07-27 Lynn Garren : CMAKE\_PROJECT\_VERSION\_STRING
-   2021-07-27 Kyle Knoepfel : Update service-macro headers.
-   2021-07-26 Lynn Garren : cetbuildtools v8\_11\_02
-   2021-07-26 Lynn Garren : Merge branch ‘develop’ into v09\_30\_00\_rc\_br
-   2021-07-14 Lynn Garren : cetbuildtools v8\_10\_01
-   2021-07-14 Lynn Garren : remove obsolete header
-   2021-07-14 Lynn Garren : find headers

lardata v09\_02\_06\_02
-------------------------------------------------

-   2021-08-04 Lynn Garren : lardata v09\_02\_06\_02 for larsoft v09\_27\_00\_02
-   2021-08-04 Lynn Garren : lardata v09\_02\_06\_02 for larsoft v09\_27\_00\_02
-   2021-08-02 Chris Green : Resolve downstream issues with hardwired paths to transitive dependencies
-   2021-08-02 Chris Green : Use cetbuildtools v8\_13\_01
-   2021-07-28 Lynn Garren : remove unused library
-   2021-07-28 Lynn Garren : library names
-   2021-07-28 Lynn Garren : lardata v09\_02\_06\_01 for larsoft v09\_27\_00\_01
-   2021-07-28 Lynn Garren : cmake\_minimum\_required
-   2021-07-28 Lynn Garren : project version
-   2021-07-27 Lynn Garren : lardata v09\_30\_00\_rc1 for larsoft v09\_30\_00\_rc1
-   2021-07-27 Lynn Garren : CMAKE\_PROJECT\_VERSION\_STRING
-   2021-07-27 Kyle Knoepfel : Update service-macro headers.
-   2021-07-26 Lynn Garren : cetbuildtools v8\_11\_02
-   2021-07-26 Lynn Garren : add Assns.h
-   2021-07-26 Lynn Garren : Merge branch ‘develop’ into v09\_30\_00\_rc\_br
-   2021-07-14 Lynn Garren : no semi colon here
-   2021-07-14 Kyle Knoepfel : Re-enable (and simplify) RangeForWrapper test
-   2021-07-14 Lynn Garren : adding parentheses
-   2021-07-14 Lynn Garren : add missing header
-   2021-07-14 Lynn Garren : add missing header
-   2021-07-14 Lynn Garren : temporarily disable RangeForWrapper\_test
-   2021-07-14 Lynn Garren : cetbuildtools v8\_10\_01
-   2021-07-14 Lynn Garren : for art 3.09

larcore v09\_02\_02\_02
-------------------------------------------------

-   2021-08-04 Lynn Garren : larcore v09\_02\_02\_02 for larsoft v09\_27\_00\_02
-   2021-08-04 Lynn Garren : larcore v09\_02\_02\_02 for larsoft v09\_27\_00\_02
-   2021-08-02 Chris Green : Use cetbuildtools v8\_13\_01
-   2021-07-28 Lynn Garren : update library names
-   2021-07-28 Lynn Garren : fix build
-   2021-07-28 Lynn Garren : larcore v09\_02\_02\_01 for larsoft v09\_27\_00\_01
-   2021-07-28 Lynn Garren : cmake\_minimum\_required
-   2021-07-28 Lynn Garren : project version
-   2021-07-27 Lynn Garren : larcore v09\_30\_00\_rc1 for larsoft v09\_30\_00\_rc1
-   2021-07-27 Lynn Garren : CMAKE\_PROJECT\_VERSION\_STRING
-   2021-07-27 Kyle Knoepfel : Update service-macro headers.
-   2021-07-26 Lynn Garren : art\_root\_io v1\_08\_03
-   2021-07-26 Lynn Garren : Merge branch ‘develop’ into v09\_30\_00\_rc\_br
-   2021-07-14 Lynn Garren : cetbuildtools v8\_10\_01
-   2021-07-14 Lynn Garren : add cetlib
-   2021-07-14 Lynn Garren : for art 3.09
-   2021-07-14 Lynn Garren : for art 3.09

larpandoracontent v03\_24\_00\_02
---------------------------------------------------------------------

-   2021-08-04 Lynn Garren : larpandoracontent v03\_24\_00\_02 for larsoft v09\_27\_00\_02
-   2021-08-04 Lynn Garren : larpandoracontent v03\_24\_00\_02 for larsoft v09\_27\_00\_02
-   2021-08-02 Chris Green : Resolve downstream issues with hardwired paths to transitive dependencies
-   2021-08-02 Chris Green : Use cetbuildtools v8\_13\_01
-   2021-07-28 Lynn Garren : larpandoracontent v03\_24\_00\_01 for larsoft v09\_27\_00\_01
-   2021-07-28 Lynn Garren : cmake\_minimum\_required
-   2021-07-28 Lynn Garren : project version
-   2021-07-27 Lynn Garren : larpandoracontent v09\_30\_00\_rc1 for larsoft v09\_30\_00\_rc1
-   2021-07-27 Lynn Garren : CMAKE\_PROJECT\_VERSION\_STRING
-   2021-07-26 Lynn Garren : pandora v03\_16\_00f
-   2021-07-26 Lynn Garren : Merge branch ‘develop’ into v09\_30\_00\_rc\_br
-   2021-07-26 Lynn Garren : libtorch v1\_6\_0d

larsoftobj v09\_06\_01\_02
-------------------------------------------------------

-   2021-08-04 Lynn Garren : larsoftobj v09\_06\_01\_02 for larsoft v09\_27\_00\_02
-   2021-08-04 Lynn Garren : larsoftobj v09\_06\_01\_02 for larsoft v09\_27\_00\_02
-   2021-08-04 Lynn Garren : cetbuildtools v8\_13\_03
-   2021-08-03 Lynn Garren : cleanup and provide cetbuildtools
-   2021-08-02 Chris Green : Resolve downstream issues with hardwired paths to transitive dependencies
-   2021-08-02 Chris Green : Use cetbuildtools v8\_13\_01
-   2021-07-28 Lynn Garren : cmake\_minimum\_required
-   2021-07-27 Lynn Garren : larsoftobj v09\_06\_01\_01 for larsoft v09\_06\_01\_01
-   2021-07-27 Lynn Garren : versions
-   2021-07-27 Lynn Garren : project version
-   2021-07-27 Lynn Garren : larsoftobj v09\_30\_00\_rc1 for larsoft v09\_30\_00\_rc1
-   2021-07-27 Lynn Garren : product versions
-   2021-07-27 Lynn Garren : CMAKE\_PROJECT\_VERSION\_STRING
-   2021-07-26 Lynn Garren : gallery v1\_18\_04
-   2021-07-26 Lynn Garren : product versions
-   2021-07-26 Lynn Garren : Merge branch ‘develop’ into v09\_30\_00\_rc\_br
-   2021-07-12 Lynn Garren : v09\_30\_00\_rc0
-   2021-07-12 Lynn Garren : v09\_30\_00\_rc0
-   2021-07-12 Lynn Garren : hub v2\_14\_2
-   2021-07-09 Lynn Garren : Merge branch ‘develop’ into v09\_30\_00\_rc\_br
-   2021-07-09 Lynn Garren : for root v6\_22\_08c

lardataobj v09\_01\_04\_02
-------------------------------------------------------

-   2021-08-04 Lynn Garren : lardataobj v09\_01\_04\_02 for larsoft v09\_27\_00\_02
-   2021-08-04 Lynn Garren : lardataobj v09\_01\_04\_02 for larsoft v09\_27\_00\_02
-   2021-08-02 Chris Green : Use cetbuildtools v8\_13\_01
-   2021-07-28 Lynn Garren : update library names
-   2021-07-28 Lynn Garren : cmake\_minimum\_required
-   2021-07-27 Lynn Garren : lardataobj v09\_01\_04\_01 for larsoft v09\_06\_01\_01
-   2021-07-27 Lynn Garren : project version
-   2021-07-27 Lynn Garren : lardataobj v09\_30\_00\_rc1 for larsoft v09\_30\_00\_rc1
-   2021-07-27 Lynn Garren : CMAKE\_PROJECT\_VERSION\_STRING
-   2021-07-26 Lynn Garren : nusimdata v1\_24\_04
-   2021-07-12 Lynn Garren : v09\_30\_00\_rc0
-   2021-07-09 Lynn Garren : find cetlib
-   2021-07-09 Lynn Garren : need extra parentheses
-   2021-07-09 Lynn Garren : Merge branch ‘develop’ into v09\_30\_00\_rc\_br
-   2021-07-09 Lynn Garren : cetbuildtools v8\_10\_01
-   2021-07-09 Lynn Garren : find product

lardataalg v09\_04\_05\_02
-------------------------------------------------------

-   2021-08-04 Lynn Garren : lardataalg v09\_04\_05\_02 for larsoft v09\_27\_00\_02
-   2021-08-04 Lynn Garren : lardataalg v09\_04\_05\_02 for larsoft v09\_27\_00\_02
-   2021-08-02 Chris Green : Resolve downstream issues with hardwired paths to transitive dependencies
-   2021-08-02 Chris Green : Use cetbuildtools v8\_13\_01
-   2021-07-29 Kyle Knoepfel : Adjust targets
-   2021-07-28 Lynn Garren : update library names
-   2021-07-28 Lynn Garren : cmake\_minimum\_required
-   2021-07-27 Lynn Garren : lardataalg v09\_04\_05\_01 for larsoft v09\_06\_01\_01
-   2021-07-27 Lynn Garren : project version
-   2021-07-27 Lynn Garren : lardataalg v09\_30\_00\_rc1 for larsoft v09\_30\_00\_rc1
-   2021-07-27 Lynn Garren : CMAKE\_PROJECT\_VERSION\_STRING
-   2021-07-26 Lynn Garren : cetbuildtools v8\_11\_02
-   2021-07-12 Lynn Garren : v09\_30\_00\_rc0
-   2021-07-12 Kyle Knoepfel : Reenable Boost unit tests.
-   2021-07-09 Lynn Garren : find cetlib and clhep
-   2021-07-09 Lynn Garren : Merge branch ‘develop’ into v09\_30\_00\_rc\_br
-   2021-07-09 Lynn Garren : find product
-   2021-07-09 Lynn Garren : cetbuildtools v8\_10\_01
-   2021-07-09 Lynn Garren : ParameterSet

larcorealg v09\_01\_02\_02
-------------------------------------------------------

-   2021-08-04 Lynn Garren : larcorealg v09\_01\_02\_02 for larsoft v09\_27\_00\_02
-   2021-08-04 Lynn Garren : larcorealg v09\_01\_02\_02 for larsoft v09\_27\_00\_02
-   2021-08-02 Chris Green : Resolve downstream issues with hardwired paths to transitive dependencies
-   2021-08-02 Chris Green : Use cetbuildtools v8\_13\_01
-   2021-07-28 Lynn Garren : update library names
-   2021-07-28 Lynn Garren : update library names
-   2021-07-28 Lynn Garren : cmake\_minimum\_required
-   2021-07-27 Lynn Garren : larcorealg v09\_01\_02\_01 for larsoft v09\_06\_01\_01
-   2021-07-27 Lynn Garren : project version
-   2021-07-27 Lynn Garren : larcorealg v09\_30\_00\_rc1 for larsoft v09\_30\_00\_rc1
-   2021-07-27 Lynn Garren : CMAKE\_PROJECT\_VERSION\_STRING
-   2021-07-26 Lynn Garren : cetbuildtools v8\_11\_02
-   2021-07-15 Kyle Knoepfel : Setup FW\_SEARCH\_PATH for gdml access.
-   2021-07-14 Kyle Knoepfel : Enable/fix some more unit tests.
-   2021-07-12 Lynn Garren : larcorealg v09\_30\_00\_rc0
-   2021-07-12 Kyle Knoepfel : Reenable Boost unit tests.
-   2021-07-12 Kyle Knoepfel : Resolve dependency-ordering issue.
-   2021-07-09 Lynn Garren : temporarily disabling problematic tests
-   2021-07-09 Lynn Garren : need extra parentheses when using or
-   2021-07-09 Lynn Garren : parse\_document has a new format
-   2021-07-09 Lynn Garren : find boost
-   2021-07-09 Lynn Garren : Merge branch ‘develop’ into v09\_30\_00\_rc\_br
-   2021-07-09 Lynn Garren : ParameterSet
-   2021-07-09 Lynn Garren : ParameterSet
-   2021-07-09 Lynn Garren : cetbuildtools v8\_10\_01
-   2021-07-09 Lynn Garren : find products

larcoreobj v09\_02\_01\_02
-------------------------------------------------------

-   2021-08-04 Lynn Garren : larcoreobj v09\_02\_01\_02 for larsoft v09\_27\_00\_02
-   2021-08-04 Lynn Garren : larcoreobj v09\_02\_01\_02 for larsoft v09\_27\_00\_02
-   2021-08-02 Chris Green : Use cetbuildtools v8\_13\_01
-   2021-07-29 Kyle Knoepfel : Add missing target
-   2021-07-28 Lynn Garren : library names
-   2021-07-28 Lynn Garren : cmake\_minimum\_required
-   2021-07-27 Lynn Garren : larcoreobj v09\_02\_01\_01 for larsoft v09\_06\_01\_01
-   2021-07-27 Lynn Garren : project version
-   2021-07-27 Lynn Garren : larcoreobj v09\_30\_00\_rc1 for larsoft v09\_30\_00\_rc1
-   2021-07-27 Lynn Garren : CMAKE\_PROJECT\_VERSION\_STRING
-   2021-07-26 Lynn Garren : canvas\_root\_io v1\_09\_04
-   2021-07-12 Lynn Garren : v09\_30\_00\_rc0
-   2021-07-09 Lynn Garren : Merge branch ‘develop’ into v09\_30\_00\_rc\_br
-   2021-07-09 Lynn Garren : for root v6\_22\_08c
-   2021-07-09 Lynn Garren : find cetlib
-   2021-07-09 Lynn Garren : ParameterSet

webevd v09\_05\_07\_02
-----------------------------------------------

-   2021-08-04 Lynn Garren : webevd v09\_05\_07\_02 for larsoft v09\_27\_00\_02
-   2021-08-04 Lynn Garren : webevd v09\_05\_07\_02 for larsoft v09\_27\_00\_02
-   2021-07-28 Lynn Garren : update library names
-   2021-07-28 Lynn Garren : webevd v09\_05\_07\_01 for larsoft v09\_27\_00\_01
-   2021-07-28 Lynn Garren : cmake\_minimum\_required
-   2021-07-27 Lynn Garren : webevd v09\_30\_00\_rc1 for larsoft v09\_30\_00\_rc1
-   2021-07-27 Lynn Garren : CMAKE\_PROJECT\_VERSION\_STRING
-   2021-07-27 Kyle Knoepfel : Update service-macro headers.
-   2021-07-27 Kyle Knoepfel : Accommodate breaking changes for art 3.09
-   2021-07-26 Lynn Garren : gallery v1\_18\_04
-   2021-07-26 Lynn Garren : add missing header
-   2021-07-26 Lynn Garren : new parse\_document format
-   2021-07-26 Lynn Garren : Merge branch ‘develop’ into v09\_30\_00\_rc\_br
-   2021-07-26 Lynn Garren : for gallery v1\_18\_02
-   2021-07-26 Lynn Garren : ParameterSet
