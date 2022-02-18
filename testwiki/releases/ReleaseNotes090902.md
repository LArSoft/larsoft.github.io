# LArSoft v09_09_02 Release Notes



[list of LArSoft releases](LArSoft_release_list)  
Download instructions for [larsoft v09_09_02](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v09_09_02/larsoft-v09_09_02.html)  
Download instructions for [just larsoftobj v09_03_00](http://scisoft.fnal.gov/scisoft/bundles/larsoftobj/v09_03_00/larsoftobj-v09_03_00.html)

## Purpose

-   changes in develop
-   approved PRs

## New features

## Bug fixes

-   larsim PR 47
    -   Fix misleading message in PhotonVisibilityService
    -   A message about photon library build mode appeared even in some cases when library build mode was not active. This simple fix (to an issue that I suspect I may have introduced long ago) prevents that.
-   larana PR 9
    -   Optical hit sliding window algoritmh won't set hit end to inifinite
    -   Bug fix for a corner case documented in ICARUS GitHub issue 94: SBNSoftware/icaruscode#94.

## Updated dependencies

-   mrb v4_03_00

# Change List

## larsoft v09_09_02

-   2020-11-11 Lynn Garren : larsoft v09_09_02 for larsoft v09_09_02
-   2020-11-11 Lynn Garren : cannot build libtorch on u18
-   2020-11-11 Lynn Garren : removing mac and slf6
-   2020-11-11 Lynn Garren : product versions

## lareventdisplay v09_00_12

-   2020-11-11 Lynn Garren : lareventdisplay v09_00_12 for larsoft v09_09_02

## larexamples v09_00_11

-   2020-11-11 Lynn Garren : larexamples v09_00_11 for larsoft v09_09_02

## larg4 v09_01_03

## larpandora v09_03_03

-   2020-11-11 Lynn Garren : larpandora v09_03_03 for larsoft v09_09_02

## larsimrad v09_00_11

-   2020-11-11 Lynn Garren : larsimrad v09_00_11 for larsoft v09_09_02

## larrecodnn v09_02_03

-   2020-11-11 Lynn Garren : larrecodnn v09_02_03 for larsoft v09_09_02

## larwirecell v09_01_05

## larana v09_00_12

-   2020-11-11 Lynn Garren : larana v09_00_12 for larsoft v09_09_02
-   2020-11-11 Lynn Garren : Merge pull request \#9 from PetrilloAtWork/feature/gp_icarusIssue94
-   2020-11-05 Gianluca Petrillo : Optical hit sliding window algoritmh won't set hit end to inifinite

## larreco v09_04_02

-   2020-11-11 Lynn Garren : larreco v09_04_02 for larsoft v09_09_02

## larsim v09_06_01

-   2020-11-11 Lynn Garren : larsim v09_06_01 for larsoft v09_09_02
-   2020-11-11 Lynn Garren : Merge pull request \#47 from PetrilloAtWork/patch-1
-   2020-11-03 Gianluca Petrillo : Fix misleading message in PhotonVisibilityService

## larevt v09_00_08

## lardata v09_01_03

## larcore v09_00_01

## larpandoracontent v03_22_02

## larsoftobj v09_03_00

## lardataobj v09_00_02

## lardataalg v09_03_00

## larcorealg v09_00_01

## larcoreobj v09_00_00

## webevd v09_00_08

## larbatch v01_54_01

## larutils v1_27_02
