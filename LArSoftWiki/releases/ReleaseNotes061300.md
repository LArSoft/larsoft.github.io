# LArSoft v06_13_00 Release Notes



[list of LArSoft releases](LArSoft_release_list)  
[Download instructions for larsoft](https://scisoft.fnal.gov/scisoft/bundles/larsoft/v06_13_00/larsoft-v06_13_00.html)  
[Download instructions for larsoftobj](https://scisoft.fnal.gov/scisoft/bundles/larsoftobj/v1_08_01/larsoftobj-v1_08_01.html)

## Purpose

-   Changes in develop
-   Use art 2.05.00

## New features

-   art 2.05.00 (s43)
    -   bug fix for Johnny Ho problem \#14160
    -   Herb MixFilter feature request \#13766
    -   artmod is explicitly deprecated \#13654
    -   deprecated [art features](https://cdcvs.fnal.gov/redmine/projects/art/wiki/wiki#Deprecations) have been removed
    -   feature/lg_for_art_v2_05_00 provided for argoneutcode, dunetpc, lariatsoft, and uboonecode
-   larevt
    -   general service+provider for pmt gain calibration information
-   tests moved from lardata to argoneutcode
    -   LArPropertiesServiceArgoNeuT_test and DetectorPropertiesServiceArgoNeuT
    -   see feature/lg_for_art_v2_05_00 for argoneutcode

## Breaking Changes

-   deprecated [art features](https://cdcvs.fnal.gov/redmine/projects/art/wiki/wiki#Deprecations) have been removed
-   updates were required for fcl files
    -   Timing -\> TimeTracker
    -   SimpleMemoryCheck -\> MemoryTracker
    -   services.user.MyService: -\> services.MyService:
        -   Please use RemoveUserFromServiceConfig.py (available since larsoft v06_04_00) for user code

## Updated dependencies

|               |          |            |                                                        |
|---------------|----------|------------|--------------------------------------------------------|
| Product       | Version  | Qualifiers | Notes                                                  |
| nutools       | v2_06_02 | e10        | [nutools:NuTools_Release_Notes#nutools-v2_06_02](https://cdcvs.fnal.gov/redmine/projects/nutools/wiki/NuTools_Release_Notes#nutools-v2_06_02) |
| nusimdata     | v1_06_01 | e10        |                                                        |
| ifdh_art      | v2_00_01 | e10:nu:s43 |                                                        |
| artdaq_core   | v1_05_08 | e10:nu:s43 |                                                        |
| art           | v2_05_00 | e10:nu     | [art:Release Notes 2.05.00](https://cdcvs.fnal.gov/redmine/projects/art/wiki/Release_Notes_2.05.00)                      |
| canvas        | v1_05_01 | e10:nu     |                                                        |
| cetpkgsupport | v1_11_00 |            |                                                        |
| git           | v2_10_0  |            |                                                        |
| gitflow       | v1_10_1  |            |                                                        |
| mrb           | v1_08_03 |            |                                                        |

# Change List

## larsoft v06_13_00

-   2016-10-26 Lynn Garren : larsoft v06_13_00 for larsoft v06_13_00
-   2016-10-26 Lynn Garren : update product versions
-   2016-10-25 Lynn Garren : updating html files
-   2016-10-25 Lynn Garren : adding larsoftobj.html.in
-   2016-10-24 Lynn Garren : updating for art v2_05_00 and nutools v2_06_02

## lareventdisplay v06_01_10

-   2016-10-26 Lynn Garren : lareventdisplay v06_01_10 for larsoft v06_13_00
-   2016-10-24 Lynn Garren : replace Timing: with TimeTracker:
-   2016-10-21 Lynn Garren : run larsoft/bin/RemoveUserFromServiceConfig.py

## larexamples v06_01_00

-   2016-10-26 Lynn Garren : larexamples v06_01_00 for larsoft v06_13_00
-   2016-10-20 Gianluca Petrillo : Merge branch 'develop' of ssh://cdcvs.fnal.gov/cvs/projects/larexamples into develop
-   2016-10-20 Gianluca Petrillo : Added a doxygen introduction page to the examples.

## larpandora v06_02_01

-   2016-10-26 Lynn Garren : larpandora v06_02_01 for larsoft v06_13_00
-   2016-10-21 Lynn Garren : run larsoft/bin/RemoveUserFromServiceConfig.py

## larana v06_03_02

-   2016-10-26 Lynn Garren : larana v06_03_02 for larsoft v06_13_00
-   2016-10-21 Lynn Garren : replace Timing and SimpleMemoryCheck with TimeTracker and MemoryTracker
-   2016-10-21 Lynn Garren : run larsoft/bin/RemoveUserFromServiceConfig.py

## larreco v06_09_01

-   2016-10-26 Lynn Garren : larreco v06_09_01 for larsoft v06_13_00
-   2016-10-24 Lynn Garren : replace Timing and SimpleMemoryCheck with TimeTracker and MemoryTracker
-   2016-10-21 Lynn Garren : using nutools v2_06_02
-   2016-10-21 Lynn Garren : run larsoft/bin/RemoveUserFromServiceConfig.py
-   2016-10-19 Lynn Garren : fix typo for doxgen end of group
-   2016-10-19 Lynn Garren : Merge branch 'develop' of ssh://cdcvs.fnal.gov/cvs/projects/larreco into develop
-   2016-10-18 Lynn Garren : Merge branch 'feature/tjyang_lifetimedb' into develop

## larsim v06_05_02

-   2016-10-26 Lynn Garren : larsim v06_05_02 for larsoft v06_13_00
-   2016-10-26 Lynn Garren : Merge branch 'feature/lg_for_art_v2_05_00' into release/v06_13_00
-   2016-10-21 Lynn Garren : replace Timing and SimpleMemoryCheck with TimeTracker and MemoryTracker
-   2016-10-21 Lynn Garren : run larsoft/bin/RemoveUserFromServiceConfig.py
-   2016-10-21 Bruce Baller : Merge branch 'feature/bb_MCCheaterFix' into develop
-   2016-10-20 Bruce Baller : Change name of ChannelToTrackID to ChannelToTrackIDEs for clarity.
-   2016-10-20 Bruce Baller : Change name of ChannelToTrackID to ChannelToTrackIDEs for clarity.

## larevt v06_05_00

-   2016-10-26 Lynn Garren : larevt v06_05_00 for larsoft v06_13_00
-   2016-10-24 Lynn Garren : replace Timing: with TimeTracker:
-   2016-10-21 Lynn Garren : run larsoft/bin/RemoveUserFromServiceConfig.py
-   2016-10-20 Brandon Eberly : Merge remote-tracking branch 'origin/feature/eberly_PmtGainDBI' into develop
-   2016-10-18 Brandon Eberly : Update PmtGain retrieval framework to include access to an ExtraData object that stores experiment dependent information related to the calibration technique
-   2016-10-17 Brandon Eberly : Moved files to new larevt subdirectory
-   2016-10-14 Brandon Eberly : Merge branch 'develop' into feature/eberly_PmtGainDBI
-   2015-08-31 Brandon Eberly : PMT gain retrieval service interface and SIOV implementation

## lardata v06_08_00

-   2016-10-26 Lynn Garren : lardata v06_08_00 for larsoft v06_13_00
-   2016-10-26 Lynn Garren : Merge branch 'feature/lg_for_art_v2_05_00' into release/v06_13_00
-   2016-10-26 Lynn Garren : using nutools v2_06_02
-   2016-10-26 Lynn Garren : moving DetectorPropertiesServiceArgoNeuT_test and LArPropertiesServiceArgoNeuT_test out of lardata
-   2016-10-24 Lynn Garren : use lardataobj v1_07_02
-   2016-10-24 Lynn Garren : replace Timing: with TimeTracker:
-   2016-10-22 Tingjun Yang : Throw if no password is found.
-   2016-10-22 Tingjun Yang : Merge remote-tracking branch 'origin/feature/gp_Issue14013' into develop
-   2016-10-21 Lynn Garren : using nutools v2_06_02
-   2016-10-21 Lynn Garren : run larsoft/bin/RemoveUserFromServiceConfig.py
-   2016-10-03 Gianluca Petrillo : DatabaseUtil now loudly reacts to the absence of password file.

## larcore v06_03_01

-   2016-10-26 Lynn Garren : larcore v06_03_01 for larsoft v06_13_00

## larsoftobj v1_08_01

-   2016-10-24 Lynn Garren : larsoftobj v1_08_01 for larsoft v1_08_01

## lardataobj v1_07_02

-   2016-10-24 Lynn Garren : lardataobj v1_07_02 for larsoft v1_08_01

## larcoreobj v1_06_01

-   2016-10-24 Lynn Garren : larcoreobj v1_06_01 for larsoft v1_08_01

## larbatch v01_23_07

## larutils v1_10_01

-   2016-10-26 Lynn Garren : larutils v1_10_01 for larsoft v06_13_00
-   2016-10-26 Lynn Garren : add s43:e10
