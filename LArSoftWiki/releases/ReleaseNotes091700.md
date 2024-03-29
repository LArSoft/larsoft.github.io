# LArSoft v09_17_00 Release Notes



[list of LArSoft releases](LArSoft_release_list)  
Download instructions for [larsoft v09_17_00](https://scisoft.fnal.gov/scisoft/bundles/larsoft/v09_17_00/larsoft-v09_17_00.html)  
Download instructions for [just larsoftobj v09_05_00](https://scisoft.fnal.gov/scisoft/bundles/larsoftobj/v09_05_00/larsoftobj-v09_05_00.html)

## Purpose

-   changes in develop
-   approved PRs

## New features

-   larrecodnn PR 17
    -   replaced hard-coded producer label for MCParticle in RawWaveformDump with fcl specified param
    -   in the original code, the producer for MCParticles was hardcoded as 'largeant'. In this PR, this has been replaced with the existing 'SimulationProducerLabel' fcl parameter.
    -   a new SimChannelLabel fcl parameter was also introduced to differentiate the producers for MCParticles and SimChannels, which, in the case of the refactored larg4, unlike in the legacy larg4, no longer have the same producer.
    -   the default values for the following fcl parameters specifying the producers have been changed to typical values for the refactored larg4 case:
        -   SimulationProducerLabel: from largeant -\> larg4Main
        -   DigitModuleLabel: from daq -\> simWire
        -   users should make sure these fcl parameters are set appropriately in their config files if necessary
    -   the default value for the new fcl parameter SimChannelLabel is set to 'elecDrift'. Legacy larg4 users should make sure this is set to the same label as that of the producer for MCParticles, e.g. 'largeant'.
-   larpandoracontent PR 19
    -   This PR introduces new visualisation tools for MC particles and PFOs to provide more coherent and comprehensive information to aid assessment of reconstructed events. MC particles are presented with PDG information and matched between views, PFOs are presented with track/shower characterisation, are matched between views and can be linked to their best matched MC particle.
    -   These changes will not alter product outputs for any experiment.
-   larsim PR 60
    -   Added SimEnergyDeposits support in MergeSimSources
    -   The module MergeSimSources is used to merge together the simulation results of multiple LArG4 (legacy) module sessions. One common use is to simulate only part of an event through GEANT4, evaluate some requirements and if the event passes them, proceed simulating the rest of the event and eventually merging all together. Given the random nature of GEANT4 simulation, it is necessary for the first, partial simulation to be preserved, since simulating it anew might result in the requirements not being satisfied any more (for example, a particle close to the border of the TPC might cross it in the partial simulation, but then miss it in the second one).
    -   MergeSimSources can manage almost all LArG4 data products, with the noticeable exception of sim::SimEnergyDeposit. This commit fills that gap.
    -   The pull request also includes two commits aimed to “refresh” the coding style of the module to reflect more modern practices enabled by newer art and LArSoft versions.
-   larsim PR 62
    -   added new toy larg4 detector based on refactored larg4 and updated SimWire_module with new noise models and response functions
-   webevd PR 24
    -   Workaround JSON having no way to represent inf/nan
-   webevd PR 25
    -   gallery::Event is not designed to be threadsafe. Serialize calls through a wrapper
-   webevd PR 27
    -   Add MCTruth text to display
-   webevd PR 28
    -   Fix mixmerge in traces code, and protection against inf/nan hit times

## Bug fixes

-   larreco PR 27
    -   Bug fix in PFPUtils

## Updated dependencies

-   ifdhc_config v2_5_12

# Change List

## larsoft v09_17_00

-   2021-02-17 Lynn Garren : larsoft v09_17_00 for larsoft v09_17_00
-   2021-02-17 Lynn Garren : product versions

## lareventdisplay v09_01_01

-   2021-02-17 Lynn Garren : lareventdisplay v09_01_01 for larsoft v09_17_00

## larexamples v09_01_01

-   2021-02-17 Lynn Garren : larexamples v09_01_01 for larsoft v09_17_00

## larpandora v09_05_02

-   2021-02-17 Lynn Garren : larpandora v09_05_02 for larsoft v09_17_00

## larsimrad v09_01_01

-   2021-02-17 Lynn Garren : larsimrad v09_01_01 for larsoft v09_17_00

## larrecodnn v09_06_00

-   2021-02-17 Lynn Garren : larrecodnn v09_06_00 for larsoft v09_17_00
-   2021-02-12 Michael WAng : fixed hard-coded prod label for MCParticles
-   2021-02-12 Kyle Knoepfel : Use header that silences TensorFlow comparison warnings.

## larwirecell v09_02_00

## larana v09_01_01

-   2021-02-17 Lynn Garren : larana v09_01_01 for larsoft v09_17_00

## larreco v09_05_01

-   2021-02-17 Lynn Garren : larreco v09_05_01 for larsoft v09_17_00
-   2021-02-17 Lynn Garren : Merge pull request \#27 from brballer/bb_BugFixFeb12
-   2021-02-12 Kyle Knoepfel : Fix sign comparison.
-   2021-02-12 Bruce Baller : Bug fix in PFPUtils.

## larsim v09_10_00

-   2021-02-17 Lynn Garren : larsim v09_10_00 for larsoft v09_17_00
-   2021-02-17 Lynn Garren : add missing library
-   2021-02-15 Lynn Garren : Merge pull request \#62 from mhlswang/develop
-   2021-02-15 Lynn Garren : Merge pull request \#60 from PetrilloAtWork/feature/gp_mergeSimSources
-   2021-02-12 Michael WAng : Added refactored gdml schemas, updated cmakelists and product_deps to install gdml & schemas
-   2021-02-12 Kyle Knoepfel : Fix sign comparison.
-   2021-02-10 Gianluca Petrillo : Fixed bad typo in MergeSimSources module
-   2021-02-10 Michael WAng : remove unused variable
-   2021-02-05 Michael WAng : modified evdservices file for toy detector visualization
-   2021-02-05 mhlswang : added new refactored larg4 toy detector, updated SimWire_module with new response functions and noise models
-   2021-02-04 Gianluca Petrillo : MergeSimSources now supports SimEnergyDeposits.
-   2021-02-04 Gianluca Petrillo : MergeSimSources module made multithread-safe.
-   2021-02-04 Gianluca Petrillo : MergeSimSource module art/C updated

## larg4 v09_03_00

## larevt v09_02_00

## lardata v09_02_00

## larcore v09_02_00

## larpandoracontent v03_22_07

-   2021-02-17 Lynn Garren : larpandoracontent v03_22_07 for larsoft v09_17_00
-   2021-02-16 Andrew Chappell : Update version and ChangeLog
-   2021-02-12 Andrew Chappell : Address review comments
-   2021-02-10 Andrew Chappell : Visualise best MC matches to PFOs
-   2021-02-09 Andrew Chappell : Add PFO visualisation
-   2021-02-08 Andrew Chappell : New visualisation of MC particles

## larsoftobj v09_05_00

## lardataobj v09_01_00

## lardataalg v09_04_00

## larcorealg v09_01_00

## larcoreobj v09_02_00

## webevd v09_05_00

-   2021-02-17 Lynn Garren : webevd v09_05_00 for larsoft v09_17_00
-   2021-02-17 Lynn Garren : Merge pull request \#28 from cjbackhouse/bugfix/traces
-   2021-02-17 Lynn Garren : Merge pull request \#27 from cjbackhouse/feature/mctruth
-   2021-02-16 Christopher Backhouse : Fix mixmerge in traces code, and protection against inf/nan hit times.
-   2021-02-15 Christopher Backhouse : HTML formatting of truth text
-   2021-02-15 Christopher Backhouse : Add MCTruth text to the display. Still needs to be reformatted for html rather than latex.
-   2021-02-15 Christopher Backhouse : Add truth text function adapted from NOvA's EventDisplay
-   2021-02-15 Lynn Garren : Merge pull request \#25 from cjbackhouse/feature/gallery_threadsafety
-   2021-02-15 Lynn Garren : Merge pull request \#24 from cjbackhouse/bugfix/infinities
-   2021-02-11 Christopher Backhouse : gallery::Event is not designed to be threadsafe. Serialize calls through a wrapper.
-   2021-02-11 Christopher Backhouse : Workaround JSON having no way to represent inf/nan. Otherwise serialization of any object containing inf/nan makes the whole json it's contained in malformed.

## larbatch v01_54_01

## larutils v1_27_04
