# LArSoft v06_77_00 Release Notes



[list of LArSoft releases](LArSoft_release_list)  
Download instructions for [larsoft v06_77_00](https://scisoft.fnal.gov/scisoft/bundles/larsoft/v06_77_00/larsoft-v06_77_00.html)  
Download instructions for [just larsoftobj v1_44_01](https://scisoft.fnal.gov/scisoft/bundles/larsoftobj/v1_44_01/larsoftobj-v1_44_01.html)

## Purpose

-   changes in develop and approved feature branch merges

## New features

-   larwirecell feature/bv_simint
    -   add “L1 signal processing” needed to process channels covering MicroBooNE's shorted wire regions as well as a new detector response simulation.
-   larsim feature/jsoto_dphase_timing3x1x1
    -   [May 8 talk](https://indico.fnal.gov/event/17099/contribution/3/material/slides/0.pdf)

## Bug fixes

## Updated dependencies

-   wirecell v0_7_0

# Change List

## larsoft v06_77_00

-   2018-05-15 Lynn Garren : larsoft v06_77_00 for larsoft v06_77_00
-   2018-05-15 Lynn Garren : update product versions

## lareventdisplay v06_19_06

-   2018-05-15 Lynn Garren : lareventdisplay v06_19_06 for larsoft v06_77_00

## larexamples v06_13_05

-   2018-05-15 Lynn Garren : larexamples v06_13_05 for larsoft v06_77_00

## larpandora v06_27_00

-   2018-05-15 Lynn Garren : larpandora v06_27_00 for larsoft v06_77_00
-   2018-05-11 a-d-smith : Added the consolidated PFParticle analysis template module

## larwirecell v06_13_00

-   2018-05-15 Lynn Garren : larwirecell v06_13_00 for larsoft v06_77_00
-   2018-05-15 Lynn Garren : Merge branch 'feature/bv_simint' into release/v06_77_00
-   2018-05-09 Brett Viren : Add support for new ability to provide external data structure to the WCT configuration.
-   2018-05-08 Brett Viren : Make the raw data source play nice with eos protocol.
-   2018-05-04 Brett Viren : More testing.
-   2018-05-04 Brett Viren : Apply pimpl pattern to channel noise DB objects to support 'hard coded' run-based switches.
-   2018-04-26 Brett Viren : Tweaks while validating.
-   2018-04-26 Brett Viren : Turn on noise based on a high level config param and save bogodata also as Numpy arrays.
-   2018-04-25 Brett Viren : Add ionization/recombination option.
-   2018-04-05 Brett Viren : First run of Wire Cell Toolkit simulation as called by an art module.
-   2018-04-03 Brett Viren : Implement depo source.
-   2018-04-03 Brett Viren : Make some depos.

## larana v06_19_06

-   2018-05-15 Lynn Garren : larana v06_19_06 for larsoft v06_77_00

## larreco v06_60_03

-   2018-05-15 Lynn Garren : larreco v06_60_03 for larsoft v06_77_00

## larsim v06_47_00

-   2018-05-15 Lynn Garren : larsim v06_47_00 for larsoft v06_77_00
-   2018-05-15 Lynn Garren : Merge branch 'feature/jsoto_dphase_timing3x1x1' into release/v06_77_00
-   2018-04-26 Jose Soto : Adding a parameter to define the rangge of the light time propagation function
-   2018-04-23 Jose Soto : Timing parameterization function variable initialized
-   2018-04-22 Jose Soto : Photon Library Extension to light propagation time parameters. Fit function parameterized by the user with a fcl parameter.
-   2018-04-18 Jose Soto : Merge branch 'develop' into feature/jsoto_dphase_timing
-   2018-04-18 Jose Soto : Implementation of the photon time distribution from a Landau parameters library.

## larevt v06_20_05

-   2018-05-15 Lynn Garren : larevt v06_20_05 for larsoft v06_77_00

## lardata v06_44_01

-   2018-05-15 Lynn Garren : lardata v06_44_01 for larsoft v06_77_00

## larcore v06_19_02

## larpandoracontent v03_12_00

## larsoftobj v1_44_01

-   2018-05-15 Lynn Garren : larsoftobj v1_44_01 for larsoft v06_77_00
-   2018-05-15 Lynn Garren : update versions

## lardataobj v1_32_01

-   2018-05-15 Lynn Garren : lardataobj v1_32_01 for larsoft v06_77_00
-   2018-05-10 Lynn Garren : larsoft v06_76_00
-   2018-05-09 Jason Stock : Merge remote branch 'origin/develop' into develop Update OpDetBacktrackerRecords documentation. No material changes.
-   2018-05-09 Jason Stock : Updating documentation for OpDetBTRs to more clearly describe what SDP.energy is.
-   2018-02-19 Jason Stock : Merge commit 'LARSOFT_SUITE_v06_67_00' into develop
-   2018-01-29 Jason Stock : Merge tag 'LARSOFT_SUITE_v06_66_00' into develop

## larcorealg v1_20_00

## larcoreobj v1_23_00

## larbatch v01_39_02

-   2018-05-15 Lynn Garren : larbatch v01_39_02 for larsoft v06_77_00
-   2018-05-14 Herbert Greenlee : Better error handling.
-   2018-05-10 Herbert Greenlee : Add xml elements for start project and stop project scripts.

## larutils v1_22_06

-   2018-05-15 Lynn Garren : larutils v1_22_06 for larsoft v06_77_00
-   2018-05-15 Lynn Garren : add s68
