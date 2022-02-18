# LArSoft v06_37_00 Release Notes



[list of LArSoft releases](LArSoft_release_list)  
Download instructions for [larsoft v06_37_00](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v06_37_00/larsoft-v06_37_00.html)  
Download instructions for [just larsoftobj v1_20_00](http://scisoft.fnal.gov/scisoft/bundles/larsoftobj/v1_20_00/larsoftobj-v1_20_00.html)

## Purpose

-   changes to develop
-   larpandora improvement

## New features

-   feature/blake_multidrift
    -   larpandoracontent, larpandora and dunetpc
    -   New Pandora code for [multi-TPC reconstruction](https://indico.fnal.gov/getFile.py/access?contribId=3&amp;resId=0&amp;materialId=slides&amp;confId=14583)

## Bug fixes

-   \#16627 (argoneutcode)
-   \#16641

## Updated dependencies

# Change List

## larsoft v06_37_00

-   2017-05-23 Lynn Garren : larsoft v06_37_00 for larsoft v06_37_00
-   2017-05-23 Lynn Garren : update product versions

## lareventdisplay v06_05_06

-   2017-05-23 Lynn Garren : lareventdisplay v06_05_06 for larsoft v06_37_00

## larexamples v06_03_06

-   2017-05-23 Lynn Garren : larexamples v06_03_06 for larsoft v06_37_00

## larpandora v06_11_00

-   2017-05-23 Lynn Garren : larpandora v06_11_00 for larsoft v06_37_00
-   2017-05-23 Lynn Garren : Merge branch 'feature/blake_multiDrift' into release/v06_37_00
-   2017-05-11 Andrew Blake : Rebase CMakeLists.txt files to reflect recent changes, add an extra stitching flag to PFParticleMonitoring analyser to assess performance of stitching code; fix unique identifiers in LArPandoraInput.
-   2017-03-30 Andrew Blake : Making the following minor change to the multi-drift branch: 1) Replace Pandora StatusCode exceptions with ART CET exceptions, 2) Fix crashes when shower reconstruction is switched off, 3) Disable T0 output if Pandora stitching hasn't been run.
-   2017-03-26 Andrew Blake : Updating LArPandoraInterface package to handle multiple drift volumes (and associated changes to LArPandoraAnalysis). Minor edit to PCAShowerParticleBuildingAlgorithm to address a Pandora exception.

## larwirecell v06_04_06

-   2017-05-23 Lynn Garren : larwirecell v06_04_06 for larsoft v06_37_00

## larana v06_06_01

-   2017-05-23 Lynn Garren : larana v06_06_01 for larsoft v06_37_00

## larreco v06_29_00

-   2017-05-23 Lynn Garren : larreco v06_29_00 for larsoft v06_37_00
-   2017-05-22 Herbert Greenlee : Add hit amplitude histograms.
-   2017-05-19 Tingjun Yang : Merge remote-tracking branch 'origin/feature/reddypg_ShowerEfficiency' into develop
-   2017-05-19 Reddy Pratap Gandrajula : reconstructed photon shower start position vs true photon end position comparison
-   2017-05-15 Reddy Pratap Gandrajula : addition of shower direction and shower start postion calculations

## larsim v06_22_01

-   2017-05-23 Lynn Garren : larsim v06_22_01 for larsoft v06_37_00
-   2017-05-23 Jason Stock : Small change to ParticleListAction to assure that the fTrackIDOffset is only changed when in fact a track exists from a given generator. This addressed LArSoft issue \#16641.

## larevt v06_13_04

-   2017-05-23 Lynn Garren : larevt v06_13_04 for larsoft v06_37_00

## lardata v06_21_01

-   2017-05-23 Lynn Garren : lardata v06_21_01 for larsoft v06_37_00
-   2017-05-23 Tingjun Yang : Set electron lifetime and temperature to the default values if query of database fails. Prevously existing values (sometimes from a previous run will be used.
-   2017-05-23 Tingjun Yang : Read in fcl parameter LoadExtraMatProperties in LArPropertiesServiceArgoNeuT_service.cc.

## larcore v06_09_02

## larpandoracontent v03_06_00

-   2017-05-23 Lynn Garren : larpandoracontent v03_06_00 for larsoft v06_37_00
-   2017-05-23 Lynn Garren : larpandoracontent v03_06_00
-   2017-05-08 John Marshall : Update list of factories.
-   2017-04-30 Andy Blake : Fixing the issues identified by John M!
-   2017-03-30 Andy Blake : Modifying stitching helpers to enable running with multiple Pandora passes (sorry for breaking that!)
-   2017-03-26 Andy Blake : Adjusting track-building algorithm to enable running in stitching environment (dQ/dx will now be calculated in LArSoft).
-   2017-03-11 Andy Blake : Helpers and cosmic-ray stitching for detectors with multiple drift volumes

## larsoftobj v1_20_00

## lardataobj v1_16_00

## larcoreobj v1_13_01

## larbatch v01_32_00

## larutils v1_13_00
