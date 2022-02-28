# LArSoft v08_31_00 Release Notes



[list of LArSoft releases](LArSoft_release_list)  
Download instructions for [larsoft v08_31_00](https://scisoft.fnal.gov/scisoft/bundles/larsoft/v08_31_00/larsoft-v08_31_00.html)  
Download instructions for [just larsoftobj v08_18_00](https://scisoft.fnal.gov/scisoft/bundles/larsoftobj/v08_18_00/larsoftobj-v08_18_00.html)

## Purpose

-   changes in develop
-   built with root v6_18_04

## Bug fixes

-   This release resolves issue \#23013
    -   Please see the issue for further information
    -   [Breaking_Changes#root-IO-rules](Breaking_Changes#root-IO-rules)

## Breaking changes

-   [macOS root graphics](Breaking_Changes#macOS-missing-TGX11)
    -   larpandora needs updating before it will build on macOS
-   [I/O rules](Breaking_Changes#root-IO-rules)
-   artdaq_core (3.05 and up) now calls [clock_gettime](Breaking_Changes#artdaq_core-calls-clock_gettime)
    -   link with ${ARTDAQ-CORE_UTILITIES}, which is defined in artdaq_coreConfig.cmake
    -   see feature/team_for_root_v6_18 for experiment code

## Updated dependencies

-   root v6_18_04
-   art_root_io v1_00_09
-   canvas_root_io v1_03_06
-   dk2nudata v01_08_00c
-   dk2nugenie v01_08_00d
-   nusimdata v1_19_01
-   artg4tk v09_05_01
-   gallery v1_12_06
-   artdaq_core v3_05_02
-   ifdh_art v2_08_09
-   nutools v3_04_02
-   genie v3_00_06b
-   nugen v1_05_01
-   nug4 v1_01_01
-   nurandom v1_01_01
-   systematicstools v00_04_01
-   nusystematics v00_06_01
-   wirecell v0_12_4b
-   marley v1_1_1b
-   pandora v03_11_01d

# Change List

## larsoft v08_31_00

-   2019-09-19 Lynn Garren : s91
-   2019-09-19 Lynn Garren : dk2nudata
-   2019-09-19 Lynn Garren : larsoft v08_31_00 for larsoft v08_31_00
-   2019-09-19 Lynn Garren : update versions
-   2019-09-18 Lynn Garren : larbase product update

## lareventdisplay v08_08_13

-   2019-09-19 Lynn Garren : lareventdisplay v08_08_13 for larsoft v08_31_00

## larexamples v08_02_19

-   2019-09-19 Lynn Garren : larexamples v08_02_19 for larsoft v08_31_00

## larg4 v08_04_00

-   2019-09-19 Lynn Garren : larg4 v08_04_00 for larsoft v08_31_00
-   2019-09-18 Lynn Garren : nug4 v1_01_01, nutools v3_04_02, artg4tk v09_05_01
-   2019-09-16 David Rivera : Merge branch 'develop' into feature/drivera_backtracker_larg4_compatibility
-   2019-09-16 David Rivera : Code cleanup and fixes to messagelogger printouts.
-   2019-08-15 David Rivera : Merge tag 'v08_03_11' into feature/drivera_backtracker_larg4_compatibility
-   2019-08-15 David Rivera : Inserted a call to the ResetTrackIDOffset function at the end of ParticleListActionService::endOfEventAction function in order to match the way trackIDs are assigned in Legacy (larsim/LArG4). This is necessary for the MCCheater backtracker to work identically in larg4.

## larpandora v08_07_17

-   2019-09-19 Lynn Garren : larpandora v08_07_17 for larsoft v08_31_00

## larwirecell v08_05_17

-   2019-09-19 Lynn Garren : larwirecell v08_05_17 for larsoft v08_31_00
-   2019-09-18 Lynn Garren : wirecell v0_12_4b

## larana v08_10_13

-   2019-09-19 Lynn Garren : larana v08_10_13 for larsoft v08_31_00

## larreco v08_18_03

-   2019-09-19 Lynn Garren : larreco v08_18_03 for larsoft v08_31_00

## larsim v08_13_00

-   2019-09-19 Lynn Garren : larsim v08_13_00 for larsoft v08_31_00
-   2019-09-19 Lynn Garren : for root v6_18_04
-   2019-09-16 David Rivera : Fixed hearder merge conflicts.
-   2019-09-15 David Rivera : Final cleanup for the addition of an optional BackTracker SimChannelModuleLabel.
-   2019-08-26 Jason Stock : My reccomendations to D Rivera for his dedicated SimChannelsModuleLabel additino to the backtracker.
-   2019-08-19 David Rivera : Converted SimChannelModuleLabel to an fhicl OptionalAtom and created method to handle the case where it's not provided.
-   2019-08-15 David Rivera : Merge tag 'v08_11_01' into feature/drivera_backtracker_larg4_compatibility
-   2019-08-15 David Rivera : Introduced a separate module label for the sim::SimChannel objects. In larg4 these are produced by the elecDrift module rather than within largeant (Legacy). The backtracker needs both the largeant and elecDrift module labels to work properly within larg4. The default is for the fsimChannelModuleLabel to default to largeant, so as to avoid breaking Legacy (larsim/LArG4).

## larevt v08_06_10

-   2019-09-19 Lynn Garren : larevt v08_06_10 for larsoft v08_31_00

## lardata v08_07_08

-   2019-09-19 Lynn Garren : lardata v08_07_08 for larsoft v08_31_00

## larcore v08_05_01

-   2019-09-19 Lynn Garren : larcore v08_05_01 for larsoft v08_31_00
-   2019-09-18 Lynn Garren : art_root_io v1_00_09

## larpandoracontent v03_15_05

-   2019-09-19 Lynn Garren : larpandoracontent v03_15_05 for larsoft v08_31_00
-   2019-09-19 Lynn Garren : v03_15_05
-   2019-09-18 Lynn Garren : pandora v03_11_01d

## larsoftobj v08_18_00

-   2019-09-19 Lynn Garren : larsoftobj v08_18_00 for larsoft v08_31_00
-   2019-09-19 Lynn Garren : update versions
-   2019-09-19 Lynn Garren : dk2nudata
-   2019-09-18 Lynn Garren : gallery v1_12_06, nusimdata v1_19_01

## lardataobj v08_05_00

-   2019-09-19 Lynn Garren : lardataobj v08_05_00 for larsoft v08_31_00
-   2019-09-19 Chris Green : Fix for \#23013 in conjunction with ROOT 6.18/04.
-   2019-09-18 Lynn Garren : Merge branch 'release/v08_31_00' into feature/team_for_root_v6_18
-   2019-09-18 Lynn Garren : nusimdata v1_19_01
-   2019-09-12 Lynn Garren : nusimdata v1_19_00

## lardataalg v08_08_06

-   2019-09-19 Lynn Garren : lardataalg v08_08_06 for larsoft v08_31_00

## larcorealg v08_14_03

-   2019-09-19 Lynn Garren : larcorealg v08_14_03 for larsoft v08_31_00

## larcoreobj v08_05_04

-   2019-09-19 Lynn Garren : larcoreobj v08_05_04 for larsoft v08_31_00
-   2019-09-18 Lynn Garren : canvas_root_io v1_03_06

## larbatch v01_51_07

## larutils v1_24_04

-   2019-09-19 Lynn Garren : larutils v1_24_04 for larsoft v08_31_00
-   2019-09-13 Herbert Greenlee : Merge branch 'develop' of ssh://cdcvs.fnal.gov/cvs/projects/larutils into develop
-   2019-09-13 Herbert Greenlee : Switch repos.
