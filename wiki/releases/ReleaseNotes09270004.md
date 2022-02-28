# LArSoft v09_27_00_04 Release Notes



[list of LArSoft releases](LArSoft_release_list)  
Download instructions for [larsoft v09_27_00_04](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v09_27_00_04/larsoft-v09_27_00_04.html)  
Download instructions for [just larsoftobj v09_06_01_03](http://scisoft.fnal.gov/scisoft/bundles/larsoftobj/v09_06_01_03/larsoftobj-v09_06_01_03.html)

## Purpose

-   **THIS IS A TEST RELEASE**
-   This is a test release with art v3_09_03.
    -   This release uses cetbuildtools 8
    -   All code used for this release is on temporary branch v09_30_00_rc_br
    -   mrb 5 **MUST** be used when working with this release
        -   setup -t mrb
-   This release is based off of larsoft v09_27_00

## Working with mrb 5 and cetbuildtools 8

- Cetbuildtools 8 is a thin wrapper for cetmodules. Using cetbuildtools 8 means that the required changes to the CMakeLists.txt files are minimal.

Switching to cetmodules explicitly will require more extensive changes.

- Build order matters.

To that end, mrbsetenv will complain if the repoisitories are not listed in optimal order in $MRB_SOURCE/CMakeLists.txt.

Anytime you change the contents of $MRB_SOURCE, including a fresh start, you must run mrb uc AFTER running mrbsetenv:

    mrbsetenv
    mrb uc

Once this is done, you do not need to do it again unless you add or remove a package from $MRB_SOURCE.

## New features

-   See the art 3.09 [release notes](https://cdcvs.fnal.gov/redmine/projects/art/wiki/Series_309) and \[\[art:309_breaking_changes\|breaking changes\]\]

## Updates for experiment code

- necessary changes will be provided in feature/team_for_art_v3_09 branches

- argoneutcode feature/team_for_art_v3_09

[CI tests](https://dbweb8.fnal.gov:8443/LarCI/app/ns:ArgoNeuT/view_builds/index?offset=0&amp;builds=lar_ci/12161&amp;builds=) pass

    trigger --build-delay 0 --cert /tmp/x509up_u1147 --version ci_mrb5 --workflow argoneutcodestandalone_wf --revisions "argoneutcode@feature/team_for_art_v3_09" 

-   uboone suite feature/team_for_art_v3_09
    -   most [unit tests](https://dbweb8.fnal.gov:8443/LarCI/app/ns:uBooNE/view_builds/index?offset=0&amp;builds=lar_ci/12232&amp;builds=) pass
-   SBN
    -   feature/team_for_art_v3_09 available for sbnanaobj, sbncode, sbnobj, and sbndaq_artdaq_core
-   ICARUS
    -   feature/team_for_art_v3_09 available for icarusalg, icaruscode, icarus_signal_processing, and icarusutil
    -   unit tests pass
-   SBND
    -   feature/team_for_art_v3_09 available for sbndcode and sbndutil
    -   unit tests pass

## Updated dependencies

-   mrb v5_15_02 (NOT the default)
-   cetbuildtools v8_14_02
-   [ReleaseNotes09270001#Updated-dependencies](ReleaseNotes09270001#Updated-dependencies)

# Change List

## larsoft v09_27_00_04

-   2021-08-10 Lynn Garren : product versions
-   2021-08-10 Lynn Garren : larsoft v09_27_00_04 for larsoft v09_27_00_04
-   2021-08-10 Lynn Garren : larsoft v09_27_00_04 for larsoft v09_27_00_04

## lareventdisplay v09_01_14_04

-   2021-08-10 Lynn Garren : lareventdisplay v09_01_14_04 for larsoft v09_27_00_04
-   2021-08-10 Lynn Garren : lareventdisplay v09_01_14_04 for larsoft v09_27_00_04

## larexamples v09_01_13_04

-   2021-08-10 Lynn Garren : larexamples v09_01_13_04 for larsoft v09_27_00_04
-   2021-08-10 Lynn Garren : larexamples v09_01_13_04 for larsoft v09_27_00_04
-   2021-08-10 Lynn Garren : add missing header

## larpandora v09_07_00_04

-   2021-08-10 Lynn Garren : larpandora v09_07_00_04 for larsoft v09_27_00_04
-   2021-08-10 Lynn Garren : larpandora v09_07_00_04 for larsoft v09_27_00_04

## larsimrad v09_01_13_04

-   2021-08-10 Lynn Garren : larsimrad v09_01_13_04 for larsoft v09_27_00_04
-   2021-08-10 Lynn Garren : larsimrad v09_01_13_04 for larsoft v09_27_00_04

## larrecodnn v09_08_00_04

-   2021-08-10 Lynn Garren : larrecodnn v09_08_00_04 for larsoft v09_27_00_04
-   2021-08-10 Lynn Garren : larrecodnn v09_08_00_04 for larsoft v09_27_00_04

## larwirecell v09_02_10_04

-   2021-08-10 Lynn Garren : larwirecell v09_02_10_04 for larsoft v09_27_00_04
-   2021-08-10 Lynn Garren : larwirecell v09_02_10_04 for larsoft v09_27_00_04

## larana v09_02_10_04

-   2021-08-10 Lynn Garren : larana v09_02_10_04 for larsoft v09_27_00_04
-   2021-08-10 Lynn Garren : larana v09_02_10_04 for larsoft v09_27_00_04

## larreco v09_06_10_04

-   2021-08-10 Lynn Garren : larreco v09_06_10_04 for larsoft v09_27_00_04
-   2021-08-10 Lynn Garren : larreco v09_06_10_04 for larsoft v09_27_00_04

## larsim v09_14_02_04

-   2021-08-10 Lynn Garren : larsim v09_14_02_04 for larsoft v09_27_00_04
-   2021-08-10 Lynn Garren : larsim v09_14_02_04 for larsoft v09_27_00_04
-   2021-08-10 Lynn Garren : add missing header

## larg4 v09_03_09_04

-   2021-08-10 Lynn Garren : larg4 v09_03_09_04 for larsoft v09_27_00_04
-   2021-08-10 Lynn Garren : larg4 v09_03_09_04 for larsoft v09_27_00_04
-   2021-08-10 Lynn Garren : add missing header

## larevt v09_02_08_04

-   2021-08-10 Lynn Garren : larevt v09_02_08_04 for larsoft v09_27_00_04
-   2021-08-10 Lynn Garren : larevt v09_02_08_04 for larsoft v09_27_00_04
-   2021-08-10 Lynn Garren : add missing header

## lardata v09_02_06_04

-   2021-08-10 Lynn Garren : lardata v09_02_06_04 for larsoft v09_27_00_04
-   2021-08-10 Lynn Garren : lardata v09_02_06_04 for larsoft v09_27_00_04
-   2021-08-10 Lynn Garren : add missing header

## larcore v09_02_02_04

-   2021-08-10 Lynn Garren : larcore v09_02_02_04 for larsoft v09_27_00_04
-   2021-08-10 Lynn Garren : larcore v09_02_02_04 for larsoft v09_27_00_04
-   2021-08-10 Lynn Garren : add missing header

## larpandoracontent v03_24_00_04

-   2021-08-10 Lynn Garren : larpandoracontent v03_24_00_04 for larsoft v09_27_00_04
-   2021-08-10 Lynn Garren : larpandoracontent v03_24_00_04 for larsoft v09_27_00_04

## larsoftobj v09_06_01_03

## lardataobj v09_01_04_03

## lardataalg v09_04_05_03

## larcorealg v09_01_02_03

## larcoreobj v09_02_01_03

## webevd v09_05_07_04

-   2021-08-10 Lynn Garren : webevd v09_05_07_04 for larsoft v09_27_00_04
-   2021-08-10 Lynn Garren : webevd v09_05_07_04 for larsoft v09_27_00_04
