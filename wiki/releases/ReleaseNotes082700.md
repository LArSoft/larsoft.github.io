# LArSoft v08_27_00 Release Notes



[list of LArSoft releases](LArSoft_release_list)  
Download instructions for [larsoft v08_27_00](https://scisoft.fnal.gov/scisoft/bundles/larsoft/v08_27_00/larsoft-v08_27_00.html)  
Download instructions for [just larsoftobj v08_17_00](https://scisoft.fnal.gov/scisoft/bundles/larsoftobj/v08_17_00/larsoftobj-v08_17_00.html)

## Purpose

-   changes in develop
-   approved feature branches
-   nutools v3_02_00 with nug4

## New features

-   larpandoracontent
    -   feature/larpandoracontent_v03_15_02
    -   The changes in this release allows the Pandora MVA vertexing to be trained for test beam particle interactions at ProtoDUNE, resolve a reproducibility issue we noted (affecting \~1 in 10,000 events) and allows a used to register a custom algorithm in the LArSoft framework in algorithms deriving from the Pandora master algorithm.

## Breaking changes

-   With this release, the geant4 parts of nutools are split out into nug4  
    v1_00_00. Please see the [breaking changes for nug4](Breaking_Changes#nutools-v3_02_00).
-   Feature branches feature/team_for_nug4 are available for experiment code.

## Bug fixes

## Updated dependencies

-   ifdhc_config v2_4_6
-   marley v1_1_1
-   nutools v3_02_00
-   nug4 v1_00_00

# Change List

## larsoft v08_27_00

-   2019-07-24 Lynn Garren : larsoft v08_27_00 for larsoft v08_27_00
-   2019-07-24 Lynn Garren : larsoft v08_27_00 for larsoft v08_27_00
-   2019-07-24 Lynn Garren : update products

## lareventdisplay v08_08_04

-   2019-07-24 Lynn Garren : lareventdisplay v08_08_04 for larsoft v08_27_00
-   2019-07-24 Lynn Garren : using nutools v3_02_00 and nug4 v1_00_00

## larexamples v08_02_12

-   2019-07-24 Lynn Garren : larexamples v08_02_12 for larsoft v08_27_00

## larg4 v08_03_10

-   2019-07-24 Lynn Garren : larg4 v08_03_10 for larsoft v08_27_00
-   2019-07-24 Lynn Garren : using nutools v3_02_00 and nug4 v1_00_00

## larpandora v08_07_08

-   2019-07-24 Lynn Garren : larpandora v08_07_08 for larsoft v08_27_00
-   2019-07-24 Lynn Garren : using nutools v3_02_00 and nug4 v1_00_00

## larwirecell v08_05_10

-   2019-07-24 Lynn Garren : larwirecell v08_05_10 for larsoft v08_27_00

## larana v08_10_04

-   2019-07-24 Lynn Garren : larana v08_10_04 for larsoft v08_27_00
-   2019-07-24 Lynn Garren : using nutools v3_02_00 and nug4 v1_00_00

## larreco v08_16_01

-   2019-07-24 Lynn Garren : larreco v08_16_01 for larsoft v08_27_00
-   2019-07-24 Lynn Garren : change comment
-   2019-07-24 Lynn Garren : Merge branch 'develop' into release/v08_27_00
-   2019-07-24 Lynn Garren : using nutools v3_02_00 and nug4 v1_00_00
-   2019-07-23 Usher, Tracy L : Merge branch 'develop' of ssh://cdcvs.fnal.gov/cvs/projects/larreco into develop
-   2019-07-23 Usher, Tracy L : Add tuple output for diagnostic purposes
-   2019-07-22 Tingjun Yang : Revert “Add an option to specify an input rawdigit collection. Turn off by default.”
-   2019-07-20 Tingjun Yang : Add an option to specify an input rawdigit collection. Turn off by default.

## larsim v08_11_00

-   2019-07-24 Lynn Garren : larsim v08_11_00 for larsoft v08_27_00
-   2019-07-24 Lynn Garren : using nutools v3_02_00 and nug4 v1_00_00
-   2019-06-11 Gianluca Petrillo : DumpSimPhotons: print the ID of parent track
-   2019-06-11 Gianluca Petrillo : DumpSimPhotons module now sorts the photons (mostly, in time)

## larevt v08_06_03

-   2019-07-24 Lynn Garren : larevt v08_06_03 for larsoft v08_27_00

## lardata v08_07_01

-   2019-07-24 Lynn Garren : lardata v08_07_01 for larsoft v08_27_00

## larcore v08_04_07

-   2019-07-24 Lynn Garren : larcore v08_04_07 for larsoft v08_27_00

## larpandoracontent v03_15_02

-   2019-07-24 Lynn Garren : larpandoracontent v03_15_02 for larsoft v08_27_00
-   2019-07-19 StevenGreen1 : Merge branch 'updates'
-   2019-07-19 StevenGreen1 : Merge branch 'feature/ShowerOverlapResultOrdering'
-   2019-07-19 StevenGreen1 : Update version and change log.
-   2019-07-19 StevenGreen1 : Alter the comparison operator in the LArShowerOverlapResult to compare span in W before span in U/V.
-   2019-07-18 StevenGreen1 : Extending the variables used in the comparison operator of the LArShowerOverlapResult class.
-   2019-07-19 John Marshall : Merge branch 'feature/RegisterCustomContent'
-   2019-07-18 StevenGreen1 : Merge branch 'feature/ProtoDUNE_BDTVertex'
-   2019-07-18 John Marshall : Add ability to register custom content in algorithms deriving from the LArMaster algorithm.
-   2019-07-15 StevenGreen1 : Cosmetic changes.
-   2019-07-11 Steven Green : Adding test beam mode to MVA vertex selection algorithm.
-   2019-05-01 Steven Green : Adding triggered beam helper functions in LArMCParticleHelper.

## larsoftobj v08_17_00

-   2019-07-24 Lynn Garren : larsoftobj v08_17_00 for larsoft v08_27_00
-   2019-07-24 Lynn Garren : update products

## lardataobj v08_04_06

-   2019-07-24 Lynn Garren : lardataobj v08_04_06 for larsoft v08_27_00

## lardataalg v08_08_01

-   2019-07-24 Lynn Garren : lardataalg v08_08_01 for larsoft v08_27_00
-   2019-07-23 Gianluca Petrillo : Added readout window information in DetectorPropertiesStandard unit test.
-   2019-07-18 Gianluca Petrillo : Bug fix: functions defined in header are now inlined.

## larcorealg v08_14_00

-   2019-07-24 Lynn Garren : larcorealg v08_14_00 for larsoft v08_27_00
-   2019-07-23 Gianluca Petrillo : Added utility to process all the nodes of ROOT geometry.

## larcoreobj v08_05_01

## larbatch v01_51_05

-   2019-07-24 Lynn Garren : larbatch v01_51_05 for larsoft v08_27_00
-   2019-07-23 Herbert Greenlee : Merge branch 'develop' of ssh://cdcvs.fnal.gov/cvs/projects/larbatch into develop
-   2019-07-23 Herbert Greenlee : Streamline input dataset checking.
-   2019-07-22 Herbert Greenlee : Derive limited dataset name from project name.

## larutils v1_24_00
