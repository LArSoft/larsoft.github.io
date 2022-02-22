# LArSoft v08_32_01 Release Notes



[list of LArSoft releases](LArSoft_release_list)  
Download instructions for [larsoft v08_32_01](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v08_32_01/larsoft-v08_32_01.html)  
Download instructions for [just larsoftobj v08_18_01](http://scisoft.fnal.gov/scisoft/bundles/larsoftobj/v08_18_01/larsoftobj-v08_18_01.html)

## Purpose

-   changes in develop
-   approved feature branches

## New features

-   larpandoracontent and larpandora feature/larpandoracontent_v03_15_07
    -   An option persisting the Pandora test beam interaction vertex, in a separate collection, for ProtoDUNE has been included. By default this option is off though and so no output data products should change size in the ci tests.
    -   An update has been made to the algorithm allowing a user to cheat the test beam particle ID in ProtoDUNE (not used by default).
    -   A fix for an unchecked return type error was made.
    -   An additional variable has been added to the output root tree for the algorithm used for internal validation of the reconstructed test beam particle hierarchy.

## Bug fixes

## Updated dependencies

# Change List

## larsoft v08_32_01

-   2019-10-08 Lynn Garren : larsoft v08_32_01 for larsoft v08_32_01
-   2019-10-08 Lynn Garren : update versions
-   2019-10-08 Lynn Garren : s92

## lareventdisplay v08_08_16

-   2019-10-08 Lynn Garren : lareventdisplay v08_08_16 for larsoft v08_32_01

## larexamples v08_02_22

-   2019-10-08 Lynn Garren : larexamples v08_02_22 for larsoft v08_32_01

## larg4 v08_04_01

## larpandora v08_07_20

-   2019-10-08 Lynn Garren : larpandora v08_07_20 for larsoft v08_32_01
-   2019-10-02 Steven Green : Adding configurable test beam interaction vertices instance label and improved memory management.
-   2019-09-30 Steven Green : Configurable option for writing out the test beam interaction vertices.
-   2019-09-30 Steven Green : Registering test beam interaction vertices output product.
-   2019-09-27 Steven Green : Writing out test beam interaction vertices.

## larwirecell v08_06_00

## larana v08_10_16

-   2019-10-08 Lynn Garren : larana v08_10_16 for larsoft v08_32_01

## larreco v08_19_01

-   2019-10-08 Lynn Garren : larreco v08_19_01 for larsoft v08_32_01
-   2019-10-03 Lynn Garren : larsoft v08_32_00
-   2019-10-03 Christopher Backhouse : Revert “Initial commit of QuadVtx vertexing algorithm”
-   2019-10-03 Christopher Backhouse : Initial commit of QuadVtx vertexing algorithm https://indico.fnal.gov/event/21520/contribution/0

## larsim v08_13_03

-   2019-10-08 Lynn Garren : larsim v08_13_03 for larsoft v08_32_01
-   2019-10-04 Robert Hatcher : cleanup NeutronOsc and NucleonDecay fcl scripts ; add (commented out) examples how to print generated events and/or switch between uboone and dune
-   2019-10-04 Robert Hatcher : update NeutronOsc and NucleonDecay modules so that actually work under GENIE v3

## larevt v08_06_11

## lardata v08_08_00

## larcore v08_05_02

## larpandoracontent v03_15_07

-   2019-10-08 Lynn Garren : larpandoracontent v03_15_07 for larsoft v08_32_01
-   2019-10-04 Steven Green : Merge branch 'updates'
-   2019-10-04 Steven Green : Update version and change log.
-   2019-10-04 Steven Green : Merge branch 'feature/TestBeamVertexPersistence'
-   2019-09-30 Steven Green : Cosmetic improvements.
-   2019-09-27 Steven Green : Modification to reco vertex in test beam event validation algorithms.
-   2019-09-27 Steven Green : Account for test beam parent vertex having multiple vertices in LArPfoHelper.
-   2019-09-27 Steven Green : Retain both the start and interaction vertex for parent test beam particles.
-   2019-09-25 Steven Green : Merge branch 'feature/CoverityReturnTypeCheck'
-   2019-09-16 Steven Green : Merge branch 'feature/PfoTestBeamHierarchy'
-   2019-08-09 StevenGreen1 : Check return type of GetGlobalFitDirection function in shower asymmetry feature tool.
-   2019-09-16 Steven Green : Merge branch 'feature/CheatingBeamParticleId'
-   2019-09-11 Steven Green : Add pfo variable is test beam hiererachy to tree.
-   2019-09-03 StevenGreen1 : Cosmetic change.
-   2019-08-23 Steven Green : Remove references to neutrinos in cheated test beam particle id tool.

## larsoftobj v08_18_01

## lardataobj v08_05_01

## lardataalg v08_08_07

## larcorealg v08_14_04

## larcoreobj v08_05_05

## larbatch v01_51_08

## larutils v1_24_04
