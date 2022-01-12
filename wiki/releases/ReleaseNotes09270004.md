LArSoft v09\_27\_00\_04 Release Notes
=============================================================================

-   **Table of contents**
-   [LArSoft v09\_27\_00\_04 Release Notes](#LArSoft-v09_27_00_04-Release-Notes)
    -   [Purpose](#Purpose)
    -   [Working with mrb 5 and cetbuildtools 8](#Working-with-mrb-5-and-cetbuildtools-8)
    -   [New features](#New-features)
    -   [Updates for experiment code](#Updates-for-experiment-code)
    -   [Updated dependencies](#Updated-dependencies)
-   [Change List](#Change-List)
    -   [larsoft v09\_27\_00\_04](#larsoft-v09_27_00_04)
    -   [lareventdisplay v09\_01\_14\_04](#lareventdisplay-v09_01_14_04)
    -   [larexamples v09\_01\_13\_04](#larexamples-v09_01_13_04)
    -   [larpandora v09\_07\_00\_04](#larpandora-v09_07_00_04)
    -   [larsimrad v09\_01\_13\_04](#larsimrad-v09_01_13_04)
    -   [larrecodnn v09\_08\_00\_04](#larrecodnn-v09_08_00_04)
    -   [larwirecell v09\_02\_10\_04](#larwirecell-v09_02_10_04)
    -   [larana v09\_02\_10\_04](#larana-v09_02_10_04)
    -   [larreco v09\_06\_10\_04](#larreco-v09_06_10_04)
    -   [larsim v09\_14\_02\_04](#larsim-v09_14_02_04)
    -   [larg4 v09\_03\_09\_04](#larg4-v09_03_09_04)
    -   [larevt v09\_02\_08\_04](#larevt-v09_02_08_04)
    -   [lardata v09\_02\_06\_04](#lardata-v09_02_06_04)
    -   [larcore v09\_02\_02\_04](#larcore-v09_02_02_04)
    -   [larpandoracontent v03\_24\_00\_04](#larpandoracontent-v03_24_00_04)
    -   [larsoftobj v09\_06\_01\_03](#larsoftobj-v09_06_01_03)
    -   [lardataobj v09\_01\_04\_03](#lardataobj-v09_01_04_03)
    -   [lardataalg v09\_04\_05\_03](#lardataalg-v09_04_05_03)
    -   [larcorealg v09\_01\_02\_03](#larcorealg-v09_01_02_03)
    -   [larcoreobj v09\_02\_01\_03](#larcoreobj-v09_02_01_03)
    -   [webevd v09\_05\_07\_04](#webevd-v09_05_07_04)

[list of LArSoft releases](LArSoft_release_list)
Download instructions for [larsoft v09\_27\_00\_04](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v09_27_00_04/larsoft-v09_27_00_04.html)
Download instructions for [just larsoftobj v09\_06\_01\_03](http://scisoft.fnal.gov/scisoft/bundles/larsoftobj/v09_06_01_03/larsoftobj-v09_06_01_03.html)

Purpose
--------------------

-   **THIS IS A TEST RELEASE**
-   This is a test release with art v3\_09\_03.
    -   This release uses cetbuildtools 8
    -   All code used for this release is on temporary branch v09\_30\_00\_rc\_br
    -   mrb 5 **MUST** be used when working with this release
        -   setup -t mrb
-   This release is based off of larsoft v09\_27\_00

Working with mrb 5 and cetbuildtools 8
----------------------------------------------------------------------------------

-   Cetbuildtools 8 is a thin wrapper for cetmodules. Using cetbuildtools 8 means that the required changes to the CMakeLists.txt files are minimal.
    -   Switching to cetmodules explicitly will require more extensive changes.
-   Build order matters.
    -   To that end, mrbsetenv will complain if the repoisitories are not listed in optimal order in \$MRB\_SOURCE/CMakeLists.txt.
    -   Anytime you change the contents of \$MRB\_SOURCE, including a fresh start, you must run mrb uc AFTER running mrbsetenv:

            mrbsetenv
            mrb uc

    -   Once this is done, you do not need to do it again unless you add or remove a package from \$MRB\_SOURCE.

New features
------------------------------

-   See the art 3.09 [release notes](/redmine/projects/art/wiki/Series_309) and [breaking changes](/redmine/projects/art/wiki/309_breaking_changes)

Updates for experiment code
------------------------------------------------------------

-   necessary changes will be provided in feature/team\_for\_art\_v3\_09 branches
-   argoneutcode feature/team\_for\_art\_v3\_09
    -   [CI tests](https://dbweb8.fnal.gov:8443/LarCI/app/ns:ArgoNeuT/view_builds/index?offset=0&builds=lar_ci/12161&builds=) pass
    -   trigger --build-delay 0 --cert /tmp/x509up_u1147 --version ci_mrb5 --workflow argoneutcodestandalone_wf --revisions "argoneutcode@feature/team_for_art_v3_09" 

-   uboone suite feature/team\_for\_art\_v3\_09
    -   most [unit tests](https://dbweb8.fnal.gov:8443/LarCI/app/ns:uBooNE/view_builds/index?offset=0&builds=lar_ci/12232&builds=) pass
-   SBN
    -   feature/team\_for\_art\_v3\_09 available for sbnanaobj, sbncode, sbnobj, and sbndaq\_artdaq\_core
-   ICARUS
    -   feature/team\_for\_art\_v3\_09 available for icarusalg, icaruscode, icarus\_signal\_processing, and icarusutil
    -   unit tests pass
-   SBND
    -   feature/team\_for\_art\_v3\_09 available for sbndcode and sbndutil
    -   unit tests pass

Updated dependencies
----------------------------------------------

-   mrb v5\_15\_02 (NOT the default)
-   cetbuildtools v8\_14\_02
-   [ReleaseNotes09270001](ReleaseNotes09270001#Updated-dependencies)

Change List
============================

larsoft v09\_27\_00\_04
-------------------------------------------------

-   2021-08-10 Lynn Garren : product versions
-   2021-08-10 Lynn Garren : larsoft v09\_27\_00\_04 for larsoft v09\_27\_00\_04
-   2021-08-10 Lynn Garren : larsoft v09\_27\_00\_04 for larsoft v09\_27\_00\_04

lareventdisplay v09\_01\_14\_04
-----------------------------------------------------------------

-   2021-08-10 Lynn Garren : lareventdisplay v09\_01\_14\_04 for larsoft v09\_27\_00\_04
-   2021-08-10 Lynn Garren : lareventdisplay v09\_01\_14\_04 for larsoft v09\_27\_00\_04

larexamples v09\_01\_13\_04
---------------------------------------------------------

-   2021-08-10 Lynn Garren : larexamples v09\_01\_13\_04 for larsoft v09\_27\_00\_04
-   2021-08-10 Lynn Garren : larexamples v09\_01\_13\_04 for larsoft v09\_27\_00\_04
-   2021-08-10 Lynn Garren : add missing header

larpandora v09\_07\_00\_04
-------------------------------------------------------

-   2021-08-10 Lynn Garren : larpandora v09\_07\_00\_04 for larsoft v09\_27\_00\_04
-   2021-08-10 Lynn Garren : larpandora v09\_07\_00\_04 for larsoft v09\_27\_00\_04

larsimrad v09\_01\_13\_04
-----------------------------------------------------

-   2021-08-10 Lynn Garren : larsimrad v09\_01\_13\_04 for larsoft v09\_27\_00\_04
-   2021-08-10 Lynn Garren : larsimrad v09\_01\_13\_04 for larsoft v09\_27\_00\_04

larrecodnn v09\_08\_00\_04
-------------------------------------------------------

-   2021-08-10 Lynn Garren : larrecodnn v09\_08\_00\_04 for larsoft v09\_27\_00\_04
-   2021-08-10 Lynn Garren : larrecodnn v09\_08\_00\_04 for larsoft v09\_27\_00\_04

larwirecell v09\_02\_10\_04
---------------------------------------------------------

-   2021-08-10 Lynn Garren : larwirecell v09\_02\_10\_04 for larsoft v09\_27\_00\_04
-   2021-08-10 Lynn Garren : larwirecell v09\_02\_10\_04 for larsoft v09\_27\_00\_04

larana v09\_02\_10\_04
-----------------------------------------------

-   2021-08-10 Lynn Garren : larana v09\_02\_10\_04 for larsoft v09\_27\_00\_04
-   2021-08-10 Lynn Garren : larana v09\_02\_10\_04 for larsoft v09\_27\_00\_04

larreco v09\_06\_10\_04
-------------------------------------------------

-   2021-08-10 Lynn Garren : larreco v09\_06\_10\_04 for larsoft v09\_27\_00\_04
-   2021-08-10 Lynn Garren : larreco v09\_06\_10\_04 for larsoft v09\_27\_00\_04

larsim v09\_14\_02\_04
-----------------------------------------------

-   2021-08-10 Lynn Garren : larsim v09\_14\_02\_04 for larsoft v09\_27\_00\_04
-   2021-08-10 Lynn Garren : larsim v09\_14\_02\_04 for larsoft v09\_27\_00\_04
-   2021-08-10 Lynn Garren : add missing header

larg4 v09\_03\_09\_04
---------------------------------------------

-   2021-08-10 Lynn Garren : larg4 v09\_03\_09\_04 for larsoft v09\_27\_00\_04
-   2021-08-10 Lynn Garren : larg4 v09\_03\_09\_04 for larsoft v09\_27\_00\_04
-   2021-08-10 Lynn Garren : add missing header

larevt v09\_02\_08\_04
-----------------------------------------------

-   2021-08-10 Lynn Garren : larevt v09\_02\_08\_04 for larsoft v09\_27\_00\_04
-   2021-08-10 Lynn Garren : larevt v09\_02\_08\_04 for larsoft v09\_27\_00\_04
-   2021-08-10 Lynn Garren : add missing header

lardata v09\_02\_06\_04
-------------------------------------------------

-   2021-08-10 Lynn Garren : lardata v09\_02\_06\_04 for larsoft v09\_27\_00\_04
-   2021-08-10 Lynn Garren : lardata v09\_02\_06\_04 for larsoft v09\_27\_00\_04
-   2021-08-10 Lynn Garren : add missing header

larcore v09\_02\_02\_04
-------------------------------------------------

-   2021-08-10 Lynn Garren : larcore v09\_02\_02\_04 for larsoft v09\_27\_00\_04
-   2021-08-10 Lynn Garren : larcore v09\_02\_02\_04 for larsoft v09\_27\_00\_04
-   2021-08-10 Lynn Garren : add missing header

larpandoracontent v03\_24\_00\_04
---------------------------------------------------------------------

-   2021-08-10 Lynn Garren : larpandoracontent v03\_24\_00\_04 for larsoft v09\_27\_00\_04
-   2021-08-10 Lynn Garren : larpandoracontent v03\_24\_00\_04 for larsoft v09\_27\_00\_04

larsoftobj v09\_06\_01\_03
-------------------------------------------------------

lardataobj v09\_01\_04\_03
-------------------------------------------------------

lardataalg v09\_04\_05\_03
-------------------------------------------------------

larcorealg v09\_01\_02\_03
-------------------------------------------------------

larcoreobj v09\_02\_01\_03
-------------------------------------------------------

webevd v09\_05\_07\_04
-----------------------------------------------

-   2021-08-10 Lynn Garren : webevd v09\_05\_07\_04 for larsoft v09\_27\_00\_04
-   2021-08-10 Lynn Garren : webevd v09\_05\_07\_04 for larsoft v09\_27\_00\_04
