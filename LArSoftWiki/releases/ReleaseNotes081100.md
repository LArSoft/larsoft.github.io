# LArSoft v08_11_00 Release Notes



[list of LArSoft releases](LArSoft_release_list)  
Download instructions for [larsoft v08_11_00](https://scisoft.fnal.gov/scisoft/bundles/larsoft/v08_11_00/larsoft-v08_11_00.html)  
Download instructions for [just larsoftobj v08_07_01](https://scisoft.fnal.gov/scisoft/bundles/larsoftobj/v08_07_01/larsoftobj-v08_07_01.html)

## Purpose

-   changes in develop
-   approved feature branches

## New features

-   larpandora feature/sgreen_DualPhaseTrackCreation
    -   These changes allows the Pandora track creation module to produce tracks for the dual phase use case. Previously, tracks could not be created as the module expected a three view scenario, which this change has now addressed.
    -   I have performed some extensive testing of this feature branch for the current Pandora use cases (MicroBooNE, ICARUS, SBND, DUNEFD-SP, ProtoDUNE-SP) and, as expected, there were no changes to the output data products.
-   larwirecell feature/bviren_nticks
    -   FYI, it adds a small feature to the “raw” and “cooked” frame sources to  
        let the user choose between configured waveform length (which was the  
        only, previous behavior) and letting the input waveforms' native length  
        stand (configured with nticks=0). This will simplify processing  
        protoDUNE's mix of 6000 and 15000 ticks data.

## Bug fixes

## Updated dependencies

-   ifdhc v2_4_1
-   nutools v2_26_10

# Change List

## larsoft v08_11_00

-   2019-02-26 Lynn Garren : larsoft v08_11_00 for larsoft v08_11_00
-   2019-02-26 Lynn Garren : product versions

## lareventdisplay v08_03_07

-   2019-02-26 Lynn Garren : lareventdisplay v08_03_07 for larsoft v08_11_00

## larexamples v08_01_07

-   2019-02-26 Lynn Garren : larexamples v08_01_07 for larsoft v08_11_00

## larg4 v08_01_07

-   2019-02-26 Lynn Garren : larg4 v08_01_07 for larsoft v08_11_00

## larpandora v08_05_00

-   2019-02-26 Lynn Garren : larpandora v08_05_00 for larsoft v08_11_00
-   2019-02-26 Lynn Garren : Merge branch 'feature/sgreen_DualPhaseTrackCreation' into release/v08_11_00
-   2019-02-22 Steven Green : Modifications to LArPandoraTrackCreation module to allow track building in dual phase scenario.

## larwirecell v08_03_00

-   2019-02-26 Lynn Garren : larwirecell v08_03_00 for larsoft v08_11_00
-   2019-02-25 Lynn Garren : Merge branch 'feature/bviren_nticks' into release/v08_11_00
-   2019-02-20 Brett Viren : Honor user config 'nticks=0' to let input size pass through.

## larana v08_02_04

-   2019-02-26 Lynn Garren : larana v08_02_04 for larsoft v08_11_00

## larreco v08_09_00

-   2019-02-26 Lynn Garren : larreco v08_09_00 for larsoft v08_11_00
-   2019-02-26 Usher, Tracy L : Added some optional histogram output to the hit3d builder, add fhicl to turn on/off
-   2019-02-26 Usher, Tracy L : Add the calculation of the charge in the region of overlap of the hits comprising a triplet and “hide” this in the second element of the SpacePoint's hit position error matrix (bad me…)

## larsim v08_03_04

-   2019-02-26 Lynn Garren : larsim v08_03_04 for larsoft v08_11_00

## larevt v08_02_03

-   2019-02-26 Lynn Garren : larevt v08_02_03 for larsoft v08_11_00

## lardata v08_03_04

-   2019-02-26 Lynn Garren : lardata v08_03_04 for larsoft v08_11_00

## larcore v08_02_01

## larpandoracontent v03_14_05

## larsoftobj v08_07_01

## lardataobj v08_02_02

## lardataalg v08_04_01

## larcorealg v08_04_01

## larcoreobj v08_02_02

## larbatch v01_48_00

## larutils v1_23_12
