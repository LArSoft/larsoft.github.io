# LArSoft v09_27_00_03 Release Notes



[list of LArSoft releases](LArSoft_release_list)  
Download instructions for [larsoft v09_27_00_03](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v09_27_00_03/larsoft-v09_27_00_03.html)  
Download instructions for [just larsoftobj v09_06_01_03](http://scisoft.fnal.gov/scisoft/bundles/larsoftobj/v09_06_01_03/larsoftobj-v09_06_01_03.html)

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

\* necessary changes will be provided in feature/team_for_art_v3_09 branches

\* argoneutcode feature/team_for_art_v3_09

CI tests [pass](https://dbweb8.fnal.gov:8443/LarCI/app/ns:ArgoNeuT/view_builds/index?offset=0&amp;builds=lar_ci/12128&amp;builds=)

    trigger --build-delay 0 --cert /tmp/x509up_u1147 --version ci_mrb5 --workflow argoneutcodestandalone_wf --revisions "argoneutcode@feature/team_for_art_v3_09" 

-   uboone suite feature/team_for_art_v3_09
    -   unit tests pass
-   SBN
    -   feature/team_for_art_v3_09 available for sbnanaobj, sbncode, sbnobj, and sbndaq_artdaq_core

## Updated dependencies

-   mrb v5_15_02 (NOT the default)
-   cetbuildtools v8_14_02
-   [ReleaseNotes09270001#Updated-dependencies](ReleaseNotes09270001#Updated-dependencies)

# Change List

## larsoft v09_27_00_03

-   2021-08-07 Lynn Garren : moving argoneut libraries
-   2021-08-07 Lynn Garren : larsoft v09_27_00_03 for larsoft v09_27_00_03
-   2021-08-07 Lynn Garren : larsoft v09_27_00_03 for larsoft v09_27_00_03
-   2021-08-07 Lynn Garren : add nusimdata_SimulationBase
-   2021-08-07 Lynn Garren : cetbuildtools v8_14_02

## lareventdisplay v09_01_14_03

-   2021-08-07 Lynn Garren : lareventdisplay v09_01_14_03 for larsoft v09_27_00_03
-   2021-08-07 Lynn Garren : lareventdisplay v09_01_14_03 for larsoft v09_27_00_03

## larexamples v09_01_13_03

-   2021-08-07 Lynn Garren : larexamples v09_01_13_03 for larsoft v09_27_00_03
-   2021-08-07 Lynn Garren : larexamples v09_01_13_03 for larsoft v09_27_00_03

## larpandora v09_07_00_03

-   2021-08-07 Lynn Garren : larpandora v09_07_00_03 for larsoft v09_27_00_03
-   2021-08-07 Lynn Garren : larpandora v09_07_00_03 for larsoft v09_27_00_03

## larsimrad v09_01_13_03

-   2021-08-07 Lynn Garren : larsimrad v09_01_13_03 for larsoft v09_27_00_03
-   2021-08-07 Lynn Garren : larsimrad v09_01_13_03 for larsoft v09_27_00_03

## larrecodnn v09_08_00_03

-   2021-08-07 Lynn Garren : larrecodnn v09_08_00_03 for larsoft v09_27_00_03
-   2021-08-07 Lynn Garren : larrecodnn v09_08_00_03 for larsoft v09_27_00_03

## larwirecell v09_02_10_03

-   2021-08-07 Lynn Garren : larwirecell v09_02_10_03 for larsoft v09_27_00_03
-   2021-08-07 Lynn Garren : larwirecell v09_02_10_03 for larsoft v09_27_00_03

## larana v09_02_10_03

-   2021-08-07 Lynn Garren : larana v09_02_10_03 for larsoft v09_27_00_03
-   2021-08-07 Lynn Garren : larana v09_02_10_03 for larsoft v09_27_00_03

## larreco v09_06_10_03

-   2021-08-07 Lynn Garren : larreco v09_06_10_03 for larsoft v09_27_00_03
-   2021-08-07 Lynn Garren : larreco v09_06_10_03 for larsoft v09_27_00_03

## larsim v09_14_02_03

-   2021-08-07 Lynn Garren : larsim v09_14_02_03 for larsoft v09_27_00_03
-   2021-08-07 Lynn Garren : larsim v09_14_02_03 for larsoft v09_27_00_03

## larg4 v09_03_09_03

-   2021-08-07 Lynn Garren : larg4 v09_03_09_03 for larsoft v09_27_00_03
-   2021-08-07 Lynn Garren : larg4 v09_03_09_03 for larsoft v09_27_00_03

## larevt v09_02_08_03

-   2021-08-07 Lynn Garren : larevt v09_02_08_03 for larsoft v09_27_00_03
-   2021-08-07 Lynn Garren : larevt v09_02_08_03 for larsoft v09_27_00_03

## lardata v09_02_06_03

-   2021-08-07 Lynn Garren : lardata v09_02_06_03 for larsoft v09_27_00_03
-   2021-08-07 Lynn Garren : lardata v09_02_06_03 for larsoft v09_27_00_03
-   2021-08-07 Lynn Garren : this code has been moved to argoneutcode in feature/team_for_art_v3_09
-   2021-08-07 Lynn Garren : move argoneut code into a subdirectory

## larcore v09_02_02_03

-   2021-08-07 Lynn Garren : larcore v09_02_02_03 for larsoft v09_27_00_03
-   2021-08-07 Lynn Garren : larcore v09_02_02_03 for larsoft v09_27_00_03

## larpandoracontent v03_24_00_03

-   2021-08-07 Lynn Garren : larpandoracontent v03_24_00_03 for larsoft v09_27_00_03
-   2021-08-07 Lynn Garren : larpandoracontent v03_24_00_03 for larsoft v09_27_00_03

## larsoftobj v09_06_01_03

-   2021-08-07 Lynn Garren : larsoftobj v09_06_01_03 for larsoft v09_27_00_03
-   2021-08-07 Lynn Garren : larsoftobj v09_06_01_03 for larsoft v09_27_00_03
-   2021-08-07 Lynn Garren : cetbuildtools v8_14_02

## lardataobj v09_01_04_03

-   2021-08-07 Lynn Garren : lardataobj v09_01_04_03 for larsoft v09_27_00_03
-   2021-08-07 Lynn Garren : lardataobj v09_01_04_03 for larsoft v09_27_00_03

## lardataalg v09_04_05_03

-   2021-08-07 Lynn Garren : lardataalg v09_04_05_03 for larsoft v09_27_00_03
-   2021-08-07 Lynn Garren : lardataalg v09_04_05_03 for larsoft v09_27_00_03

## larcorealg v09_01_02_03

-   2021-08-07 Lynn Garren : larcorealg v09_01_02_03 for larsoft v09_27_00_03
-   2021-08-07 Lynn Garren : larcorealg v09_01_02_03 for larsoft v09_27_00_03

## larcoreobj v09_02_01_03

-   2021-08-07 Lynn Garren : larcoreobj v09_02_01_03 for larsoft v09_27_00_03
-   2021-08-07 Lynn Garren : larcoreobj v09_02_01_03 for larsoft v09_27_00_03

## webevd v09_05_07_03

-   2021-08-07 Lynn Garren : webevd v09_05_07_03 for larsoft v09_27_00_03
-   2021-08-07 Lynn Garren : webevd v09_05_07_03 for larsoft v09_27_00_03
