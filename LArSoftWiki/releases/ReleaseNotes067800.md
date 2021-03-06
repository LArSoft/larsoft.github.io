# LArSoft v06_78_00 Release Notes



[list of LArSoft releases](LArSoft_release_list)  
Download instructions for [larsoft v06_78_00](https://scisoft.fnal.gov/scisoft/bundles/larsoft/v06_78_00/larsoft-v06_78_00.html)  
Download instructions for [just larsoftobj v1_45_00](https://scisoft.fnal.gov/scisoft/bundles/larsoftobj/v1_45_00/larsoftobj-v1_45_00.html)

## Purpose

## New features

-   lardataalg
    -   move lardata/DetectorInfo to lardataalg/DetectorInfo
    -   This allows gallery to use the services
    -   The migration script is UpdateLArDataAlg.sh
    -   feature/ss_issue17179 is provided for argoneutcode, dunetpc, lariatsoft, sbndcode, and uboonecode

## Bug fixes

-   feature/russo_ticket_19313
    -   larsim
-   feature/russo_ticket_18136
    -   larcorealg
    -   dunetpc, icaruscode, lariatsoft

## Updated dependencies

-   nutools v2_21_04
    -   bug fix for atmospheric flux
-   mrb v1_15_01

# Change List

## larsoft v06_78_00

-   2018-05-24 Lynn Garren : larsoft v06_78_00 for larsoft v06_78_00
-   2018-05-24 Lynn Garren : add lardataalg and use nutools v2_21_04
-   2018-05-24 Lynn Garren : update dependency database
-   2018-05-24 Lynn Garren : script for lardataalg

## lareventdisplay v06_19_07

-   2018-05-24 Lynn Garren : lareventdisplay v06_19_07 for larsoft v06_78_00
-   2018-05-24 Lynn Garren : using lardataalg

## larexamples v06_13_06

-   2018-05-24 Lynn Garren : larexamples v06_13_06 for larsoft v06_78_00

## larpandora v06_27_01

-   2018-05-24 Lynn Garren : larpandora v06_27_01 for larsoft v06_78_00

## larwirecell v06_13_01

-   2018-05-24 Lynn Garren : larwirecell v06_13_01 for larsoft v06_78_00

## larana v06_19_07

-   2018-05-24 Lynn Garren : larana v06_19_07 for larsoft v06_78_00
-   2018-05-22 Saba Sehrish : header changes as a result of moving DetectorInfo to lardataalg

## larreco v06_60_04

-   2018-05-24 Lynn Garren : larreco v06_60_04 for larsoft v06_78_00
-   2018-05-22 Saba Sehrish : header changes as a result of moving DetectorInfo to lardataalg
-   2018-05-19 Tingjun Yang : Fix compiling errors.
-   2018-05-18 baller : cast to int
-   2018-05-18 baller : remove debug statements
-   2018-05-18 baller : move debugMode from FillWireHitRange call
-   2018-05-18 baller : Remove debugMode
-   2018-05-18 baller : Merge branch 'develop' into feature/bb_TCWork
-   2018-05-18 baller : Move fDebugMode to tjs.DebugMode
-   2018-05-18 baller : Move fDebugMode to tjs.DebugMode
-   2018-05-18 baller : Move fDebug to tjs.DebugMode
-   2018-05-18 baller : Fix ShowerTag\[0\] selection.
-   2018-05-18 baller : Move fDebug to tjs.DebugMode
-   2018-05-18 baller : Move fDebug to tjs.DebugMode
-   2018-05-18 baller : Check for an invalid ID.
-   2018-05-18 baller : Pass IDs instead of indices. Ongoing shower reconstruction development.
-   2018-05-18 baller : Pass IDs instead of indices
-   2018-05-18 baller : Pass IDs instead of indices
-   2018-05-18 baller : Change TagInShowerTjs to TagShowerLike. Add kShowerLike AlgMod bit. Convert all IDs to ints. Protect against invalid TrajPoint Pos.
-   2018-05-18 baller : Change TagInShowerTjs to TagShowerLike. Add kShowerLike AlgMod bit. Convert all IDs to ints. Protect against invalid TrajPoint Pos. Set default ParentID to 0.
-   2018-05-18 baller : Add GetAssns.
-   2018-05-18 baller : Change TagInShowerTjs to TagShowerLike. Add kShowerLike AlgMod bit. Convert all IDs to ints. Protect against invalid TrajPoint Pos.
-   2018-05-18 baller : Change TagInShowerTjs to TagShowerLike. Add kShowerLike AlgMod bit.
-   2018-05-18 baller : Change TagInShowerTjs to TagShowerLike. Add kShowerLike AlgMod bit. Change all IDs to ints.
-   2018-05-18 baller : Change TagInShowerTjs to TagShowerLike. Add kShowerLike AlgMod bit.
-   2018-05-16 baller : Add utility functions.
-   2018-05-16 baller : Add utility functions.
-   2018-05-16 baller : Tweak debug printout cuts
-   2018-05-16 baller : Ongoing shower reconstruction development
-   2018-05-16 baller : Ongoing shower reconstruction development
-   2018-05-16 baller : Add FilldEdx for pfps. Set default pfp to 0. Tweak cuts in InsideTPC.
-   2018-05-16 baller : Add FilldEdx for pfps
-   2018-05-16 baller : Edit comments
-   2018-05-16 baller : Print 3D showers
-   2018-05-04 baller : Merge branch 'develop' into feature/bb_TCWork
-   2018-05-04 baller : Add NeutralVxCuts
-   2018-05-04 baller : Add 3D functions
-   2018-05-04 baller : Add 3D functions
-   2018-05-04 baller : Tweak cuts for creating a neutrino pop
-   2018-05-04 baller : Add NeutralVxCuts
-   2018-05-04 baller : Add NeutralVxCuts
-   2018-05-04 baller : Add NeutralVxCuts

## larsim v06_48_00

-   2018-05-24 Lynn Garren : larsim v06_48_00 for larsoft v06_78_00
-   2018-05-23 Lynn Garren : Merge branch 'feature/russo_ticket_19313' into release/v06_78_00
-   2018-05-23 Lynn Garren : using lardataalg
-   2018-05-22 Paul Russo : Use FW_SEARCH_PATH to find the HistogramFile.

## larevt v06_20_06

-   2018-05-24 Lynn Garren : larevt v06_20_06 for larsoft v06_78_00

## lardata v06_45_00

-   2018-05-24 Lynn Garren : lardata v06_45_00 for larsoft v06_78_00
-   2018-05-24 Lynn Garren : retain DetectorPropertiesBo_test for now
-   2018-05-22 Saba Sehrish : move lardata/DetectorInfo to lardataalg/DetectorInfo

## larcore v06_19_03

-   2018-05-24 Lynn Garren : larcore v06_19_03 for larsoft v06_78_00

## larpandoracontent v03_12_00

## larsoftobj v1_45_00

-   2018-05-24 Lynn Garren : larsoftobj v1_45_00 for larsoft v06_78_00
-   2018-05-24 Lynn Garren : adding lardataalg

## lardataalg v1_00_00

-   2018-05-24 Lynn Garren : lardataalg v1_00_00 for larsoft v06_78_00
-   2018-05-23 Lynn Garren : lardataalg depends on larcorealg
-   2018-05-22 Saba Sehrish : move lardata/DetectorInfo to lardataalg/DetectorInfo

## lardataobj v1_32_02

-   2018-05-24 Lynn Garren : lardataobj v1_32_02 for larsoft v06_78_00

## larcorealg v1_21_00

-   2018-05-24 Lynn Garren : larcorealg v1_21_00 for larsoft v06_78_00
-   2018-05-22 Paul Russo : Fix design flaw in geo::ChannelMapAlg interface.

## larcoreobj v1_23_00

## larbatch v01_40_00

-   2018-05-24 Lynn Garren : larbatch v01_40_00 for larsoft v06_78_00
-   2018-05-21 Herbert Greenlee : Merge branch 'feature/greenlee_test' into develop
-   2018-05-21 Herbert Greenlee : Fix tarball time stemp.
-   2018-05-21 Herbert Greenlee : Fix job status.
-   2018-05-16 Herbert Greenlee : Force use of dag if start/stop script is overridden.

## larutils v1_22_06
