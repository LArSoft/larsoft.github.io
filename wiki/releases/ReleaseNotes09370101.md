# LArSoft v09_37_01_01 Release Notes



[list of LArSoft releases](LArSoft_release_list)  
Download instructions for [larsoft v09_37_01_01](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v09_37_01_01/larsoft-v09_37_01_01.html)  
Download instructions for [just larsoftobj v09_12_00](http://scisoft.fnal.gov/scisoft/bundles/larsoftobj/v09_12_00/larsoftobj-v09_12_00.html)

## Purpose

-   production release for SBN2021C (see \#26513)
-   This release is on the v09_37_01_br branch

## New features

## Bug fixes

-   larsim PR 83
    -   Fix AuxDetHits and SimEnergyDeposits types
    -   This PR contains fixes for a bug introduced with PR \#81 .
-   larsim PR 82
    -   Map SimChannels by Cryostat only to prevent extra SimChannels from being created when a channel is associated with multiple TPCs
    -   Part of redmine issue \#26453
-   larsim PR 79
    -   Removed spurious configuration parameter
    -   Parameter UseModLarqlRecomb does not belong to LegacyLArG4, so it should not be in its configuration.  
        It is, in fact, supported by LArG4Parameters “service”.
    -   Note that this PR was included as part of larsim PR 82

## Updated dependencies

# Change List

## larsoft v09_37_01_01

-   2021-12-10 Lynn Garren : larsoft v09_37_01_01 for larsoft v09_37_01_01
-   2021-12-10 Lynn Garren : larsoft v09_37_01_01 for larsoft v09_37_01_01
-   2021-12-10 Lynn Garren : we do not distribute larbatch or larutils with patch releases

## lareventdisplay v09_02_08_01

-   2021-12-10 Lynn Garren : lareventdisplay v09_02_08_01 for larsoft v09_37_01_01
-   2021-12-10 Lynn Garren : lareventdisplay v09_02_08_01 for larsoft v09_37_01_01

## larexamples v09_02_08_01

-   2021-12-10 Lynn Garren : larexamples v09_02_08_01 for larsoft v09_37_01_01
-   2021-12-10 Lynn Garren : larexamples v09_02_08_01 for larsoft v09_37_01_01

## larpandora v09_10_02_01

-   2021-12-10 Lynn Garren : larpandora v09_10_02_01 for larsoft v09_37_01_01
-   2021-12-10 Lynn Garren : larpandora v09_10_02_01 for larsoft v09_37_01_01

## larsimrad v09_03_07_01

-   2021-12-10 Lynn Garren : larsimrad v09_03_07_01 for larsoft v09_37_01_01
-   2021-12-10 Lynn Garren : larsimrad v09_03_07_01 for larsoft v09_37_01_01

## larrecodnn v09_09_09_01

-   2021-12-10 Lynn Garren : larrecodnn v09_09_09_01 for larsoft v09_37_01_01
-   2021-12-10 Lynn Garren : larrecodnn v09_09_09_01 for larsoft v09_37_01_01

## larwirecell v09_04_05

## larana v09_03_09_01

-   2021-12-10 Lynn Garren : larana v09_03_09_01 for larsoft v09_37_01_01
-   2021-12-10 Lynn Garren : larana v09_03_09_01 for larsoft v09_37_01_01

## larreco v09_07_08_01

-   2021-12-10 Lynn Garren : larreco v09_07_08_01 for larsoft v09_37_01_01
-   2021-12-10 Lynn Garren : larreco v09_07_08_01 for larsoft v09_37_01_01

## larsim v09_19_01_01

-   2021-12-10 Lynn Garren : larsim v09_19_01_01 for larsoft v09_37_01_01
-   2021-12-10 Lynn Garren : Merge branch 'mdeltutt_mergesimsources_fix' into v09_37_01_br
-   2021-11-29 Marco Del Tutto : Fix AuxDetHits and SimEnergyDeposits types
-   2021-11-22 James Shen : Map SimChannels by Cryostat only to prevent extra SimChannels from being created when a channel is associated with multiple TPCs
-   2021-11-22 Lynn Garren : Merge pull request \#79 from PetrilloAtWork/patch-2
-   2021-11-16 Gianluca Petrillo : Removed spurious configuration parameter

## larg4 v09_06_02

## larevt v09_03_05

## lardata v09_04_02

## larcore v09_03_02

## larsoftobj v09_12_00

## lardataobj v09_03_05

## lardataalg v09_07_02

## larcorealg v09_04_00

## larcoreobj v09_03_01

## webevd v09_06_05
