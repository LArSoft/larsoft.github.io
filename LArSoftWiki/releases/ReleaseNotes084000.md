# LArSoft v08_40_00 Release Notes



[list of LArSoft releases](LArSoft_release_list)  
Download instructions for [larsoft v08_40_00](https://scisoft.fnal.gov/scisoft/bundles/larsoft/v08_40_00/larsoft-v08_40_00.html)  
Download instructions for [just larsoftobj v08_25_00](https://scisoft.fnal.gov/scisoft/bundles/larsoftobj/v08_25_00/larsoftobj-v08_25_00.html)

## Purpose

-   changes in develop
-   approved feature branches

## New features

-   larpandoracontent
    -   Change the Pandora Neutrino ID tool to use a template so that it can be used with an arbitrary MVA, in this case an SVM or a BDT.
    -   “feature/larpandoracontent_v03_15_12” for larpandoracontent
    -   sbndcode, ubreco feature/larpandoracontent_v03_15_12
-   lardata feature/gp_EnergyDepositDumper
    -   The \`DumpSimEnergyDeposits\` module prints on screen the content of one data product collection of \`sim::SimEnergyDeposits\`.

## Bug fixes

-   feature/gp_sharedOpDetDict (bug fix)
    -   icaruscode, sbndcode, lardataobj
    -   One of the objects necessary for a optical hit/flash association was missing a  
        dictionary. That dictionary specification was added in \`icaruscode\` by ICARUS people  
        during optical flash code development, and it never made to where it belongs  
        (\`lardataobj\`). SBND then copied that code into \`sbndcode\`. The result is that this dictionary is present in two separate libraries and  
        when both \`icaruscode\` and \`sbndcode\` are set up ROOT is not happy and *art*  
        sympathises (at least on SLF7).
    -   This bug fix moves the dictionary from experiment code to lardataobj.

## Updated dependencies

-   nulite v3_05_01b
    -   nurandom v1_03_02 with bug fix
    -   artdaq_core v3_05_09
-   geant4reweight v01_00_01 (#23835)

# Change List

## larsoft v08_40_00

-   2020-01-15 Lynn Garren : fixing the geant4reweight build
-   2020-01-14 Lynn Garren : larsoft v08_40_00
-   2020-01-14 Lynn Garren : larsoft v08_39_01 for larsoft v08_40_00
-   2020-01-14 Lynn Garren : product versions
-   2020-01-14 Lynn Garren : add geant4reweight
-   2020-01-13 Lynn Garren : nulite v3_05_01b

## lareventdisplay v08_11_01

-   2020-01-14 Lynn Garren : lareventdisplay v08_11_01 for larsoft v08_40_00

## larexamples v08_05_01

-   2020-01-14 Lynn Garren : larexamples v08_05_01 for larsoft v08_40_00

## larg4 v08_10_00

-   2020-01-14 Lynn Garren : larg4 v08_10_00 for larsoft v08_40_00
-   2020-01-12 David Rivera : MessageFacility and general cleanup in ParticleListAction_service
-   2019-12-17 David Rivera : Example fhicl incorporating multiple generators in order to test the effectiveness of the multigenerator ParticleListAction fix.
-   2019-12-17 David Rivera : Added a Map to store the PrimaryParticleInformation::MCTIndex() for each particle. For secondaries, the MCTIndex is inherited from it's primary ancestor. This is required to properly generate the Truth-MCParticle Assns produced by the larg4 ParticleListAction_service. Previously the Assns were being created multiple times (once per generator) and the MCTruth Index was not determined this led to issue with the ParticleInventory creation since there were multiple particles that had the same TrackID and the wrong MCT associations. This is a first attempt at fixing this bug.
-   2019-12-17 David Rivera : Include the GeneratedParticleInfo object in the Truth-MCParticle Assn. generated in the ParticleListAction_service. Added some debug messages.

## larpandora v08_10_01

-   2020-01-14 Lynn Garren : larpandora v08_10_01 for larsoft v08_40_00

## larwirecell v08_11_01

-   2020-01-14 Lynn Garren : larwirecell v08_11_01 for larsoft v08_40_00

## larana v08_15_01

-   2020-01-14 Lynn Garren : larana v08_15_01 for larsoft v08_40_00

## larreco v08_26_01

-   2020-01-14 Lynn Garren : larreco v08_26_01 for larsoft v08_40_00

## larsim v08_18_01

-   2020-01-14 Lynn Garren : larsim v08_18_01 for larsoft v08_40_00
-   2020-01-13 Lynn Garren : nurandom v1_03_02

## larevt v08_09_01

-   2020-01-14 Lynn Garren : larevt v08_09_01 for larsoft v08_40_00

## lardata v08_13_00

-   2020-01-14 Lynn Garren : lardata v08_13_00 for larsoft v08_40_00
-   2020-01-13 Gianluca Petrillo : Added event summary to DumpSimEnergyDeposits output.
-   2020-01-12 Gianluca Petrillo : Added DumpSimEnergyDeposits module for dump of \`sim::SimEnergyDeposit\` objects on screen.

## larcore v08_09_00

## larpandoracontent v03_15_12

-   2020-01-14 Lynn Garren : larpandoracontent v03_15_12 for larsoft v08_40_00
-   2020-01-09 John Marshall : Merge branch 'updates'
-   2019-12-17 John Marshall : Update version and change log.
-   2020-01-09 John Marshall : Merge branch 'feature/etyley_SliceIDMVA'
-   2019-12-13 etyley : Templated NeutrinoIdTool to use MVA and fixed training by getting parent address of calo hit
-   2020-01-09 John Marshall : Merge branch 'feature/cerati_shouldRemoveOutOfTimeHits'
-   2019-08-21 Giuseppe Cerati : add option to decide whether to remove out time hits
-   2020-01-09 John Marshall : Merge branch 'feature/X0Validation'
-   2019-10-23 StevenGreen1 : Set default value of X0 to max, to distinguish from stitches without shifting.
-   2019-10-23 StevenGreen1 : Adding X0 to output validation root trees.

## larsoftobj v08_25_00

-   2020-01-14 Lynn Garren : larsoftobj v08_25_00 for larsoft v08_40_00
-   2020-01-14 Lynn Garren : product versions

## lardataobj v08_09_01

-   2020-01-14 Lynn Garren : lardataobj v08_09_01 for larsoft v08_40_00
-   2020-01-10 Gianluca Petrillo : Added missing data product dictionaries.
-   2020-01-10 Gianluca Petrillo : Sorted XML dictionary specifications for easier maintenance.
-   2020-01-10 Gianluca Petrillo : Added missing dictionary for \<OpHit,OpFlash\> pairs

## lardataalg v08_12_00

-   2020-01-14 Lynn Garren : lardataalg v08_12_00 for larsoft v08_40_00
-   2020-01-13 Gianluca Petrillo : Added space quantities based on meter.
-   2020-01-11 Gianluca Petrillo : Added electronvolt-based quantities (no points or intervals).
-   2020-01-10 Gianluca Petrillo : Added DetectorTimings::toSimulationTime() as convenience alias.

## larcorealg v08_19_00

## larcoreobj v08_09_00

## larbatch v01_51_12

## larutils v1_25_04

-   2020-01-14 Lynn Garren : larutils v1_25_04 for larsoft v08_40_00
-   2020-01-08 Herbert Greenlee : Add offline to tarball name.
-   2020-01-08 Thomas Junk : switch repo to dune/dunepdsprce from slaclab/proto-dune-dam-lib
