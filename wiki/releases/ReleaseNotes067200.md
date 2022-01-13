LArSoft v06_72_00 Release Notes
======================================================================

-   **Table of contents**
-   [LArSoft v06_72_00 Release Notes](#LArSoft-v06_72_00-Release-Notes)
    -   [Purpose](#Purpose)
    -   [New features](#New-features)
    -   [Bug fixes](#Bug-fixes)
    -   [Updated dependencies](#Updated-dependencies)
-   [Change List](#Change-List)
    -   [larsoft v06_72_00](#larsoft-v06_72_00)
    -   [lareventdisplay v06_18_04](#lareventdisplay-v06_18_04)
    -   [larexamples v06_12_00](#larexamples-v06_12_00)
    -   [larpandora v06_25_04](#larpandora-v06_25_04)
    -   [larwirecell v06_11_04](#larwirecell-v06_11_04)
    -   [larana v06_18_04](#larana-v06_18_04)
    -   [larreco v06_57_00](#larreco-v06_57_00)
    -   [larsim v06_42_04](#larsim-v06_42_04)
    -   [larevt v06_19_04](#larevt-v06_19_04)
    -   [lardata v06_42_00](#lardata-v06_42_00)
    -   [larcore v06_18_01](#larcore-v06_18_01)
    -   [larpandoracontent v03_11_00](#larpandoracontent-v03_11_00)
    -   [larsoftobj v1_41_02](#larsoftobj-v1_41_02)
    -   [lardataobj v1_29_01](#lardataobj-v1_29_01)
    -   [larcorealg v1_18_01](#larcorealg-v1_18_01)
    -   [larcoreobj v1_22_00](#larcoreobj-v1_22_00)
    -   [larbatch v01_38_01](#larbatch-v01_38_01)
    -   [larutils v1_22_00](#larutils-v1_22_00)

[list of LArSoft releases](LArSoft_release_list)
Download instructions for [larsoft v06_72_00](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v06_72_00/larsoft-v06_72_00.html)
Download instructions for [just larsoftobj v1_41_02](http://scisoft.fnal.gov/scisoft/bundles/larsoftobj/v1_41_02/larsoftobj-v1_41_02.html)

Purpose
--------------------

-   changes in develop
-   larpandoracontent update

New features
------------------------------

-   new tutorial in [larexamples:source:larexamples/DebuggingExamples/CatchException](https://cdcvs.fnal.gov/redmine/projects/larexamples/repository/entry/larexamples/DebuggingExamples/CatchException) on how to interactively capture exception throwing in a *art* job with a debugger
-   updated documentation for `detutil::DetectorClocks` service provider
-   `lardata` `feature/gp_TPCTime` (addition of `DetectorClocks::TPCTime()`)
-   [Changes in LArPandoraContent v3.11](https://indico.fnal.gov/event/16752/contribution/0/material/slides/0.pdf)
    -   feature/larpandoracontent_v03_11_00
    -   larpandoracontent, larpandora
    -   uboonecode, uboonedata, dunetpc

Bug fixes
------------------------

Updated dependencies
----------------------------------------------

-   cetpkgsupport v1_14_01

Change List
============================

larsoft v06_72_00
------------------------------------------

-   2018-03-28 Lynn Garren : larsoft v06_72_00 for larsoft v06_72_00
-   2018-03-28 Lynn Garren : cetpkgsupport v1_14_01
-   2018-03-28 Lynn Garren : product versions and cetpkgsupport

lareventdisplay v06_18_04
----------------------------------------------------------

-   2018-03-28 Lynn Garren : lareventdisplay v06_18_04 for larsoft v06_72_00

larexamples v06_12_00
--------------------------------------------------

-   2018-03-28 Lynn Garren : larexamples v06_12_00 for larsoft v06_72_00
-   2018-03-22 Gianluca Petrillo : Fixed Doxygen glitches
-   2018-03-22 Gianluca Petrillo : Added tutorial to use debugger to catch exceptions

larpandora v06_25_04
------------------------------------------------

-   2018-03-28 Lynn Garren : larpandora v06_25_04 for larsoft v06_72_00
-   2018-03-22 a-d-smith : Switched settings from neutrino id tool to simple neutrino id tool

larwirecell v06_11_04
--------------------------------------------------

-   2018-03-28 Lynn Garren : larwirecell v06_11_04 for larsoft v06_72_00

larana v06_18_04
----------------------------------------

-   2018-03-28 Lynn Garren : larana v06_18_04 for larsoft v06_72_00

larreco v06_57_00
------------------------------------------

-   2018-03-28 Lynn Garren : larreco v06_57_00 for larsoft v06_72_00
-   2018-03-24 Christoph Alt : Update handling of long pulse trains

larsim v06_42_04
----------------------------------------

-   2018-03-28 Lynn Garren : larsim v06_42_04 for larsoft v06_72_00

larevt v06_19_04
----------------------------------------

-   2018-03-28 Lynn Garren : larevt v06_19_04 for larsoft v06_72_00
-   2018-03-24 Dominic Brailsford : Add functionality to require that any of the particles in the fcl list need to be found in the event for the event to be saved, rather than demanding ALL of them be found. The default fcl functionality is to require all be found. This is controlled via a bool fcl parameters called RequireAllInterestingParticles.

lardata v06_42_00
------------------------------------------

-   2018-03-28 Lynn Garren : lardata v06_42_00 for larsoft v06_72_00
-   2018-03-26 Gianluca Petrillo : Added DetectorClocks::TPCTime() and implementation.
-   2018-03-21 Gianluca Petrillo : Detached procedures for trigger time loading
-   2018-03-21 Gianluca Petrillo : New method to set default trigger times in DetectorClocksStandard
-   2018-03-20 Gianluca Petrillo : Updated documentation of DetectorClocksStandard and its art service
-   2018-03-16 Gianluca Petrillo : Updated DetectorClocks documentation.
-   2018-03-16 Gianluca Petrillo : Minor fixes to Doxygen documentation
-   2018-02-01 Gianluca Petrillo : Added an introduction to DetectorClocks times.
-   2018-01-31 Gianluca Petrillo : Added drift output to DetectorPropertiesStandard test
-   2017-05-11 Gianluca Petrillo : Updated DetectorClocks documentation.

larcore v06_18_01
------------------------------------------

larpandoracontent v03_11_00
--------------------------------------------------------------

-   2018-03-28 Lynn Garren : larpandoracontent v03_11_00 for larsoft v06_72_00
-   2018-03-23 John Marshall : Merge branch ‘a-d-smith/coverityDefects’
-   2018-03-22 loressa : Type change picked up by gcc 6.4.0.
-   2018-03-20 a-d-smith : Fixed small coverity defects
-   2018-03-16 John Marshall : Merge branch ‘updates’
-   2018-03-16 John Marshall : Update version and change log.
-   2018-03-12 John Marshall : Merge branch ‘feature/ControlFlowUpdates’
-   2017-12-19 John Marshall : Maximum allowed difference between like wire (u and v) angles between volumes is now configurable and carries a larger default value.
-   2018-03-08 John Marshall : Print out only if algorithm information enabled.
-   2018-03-08 John Marshall : Drop current list names in PostProcessing algorithm.
-   2018-03-07 Steven Green : Redesigned method for vetoing stitched particles in nu/beam particle id.
-   2018-03-05 John Marshall : Cosmic-ray candidate pfos stitched between drift volumes are now automatically tagged as clear cosmic rays.
-   2018-03-12 John Marshall : Merge branch ‘feature/CheatingIdTools’
-   2018-03-12 John Marshall : Rename CheatingParticleIdBaseTool as CheatingSliceIdBaseTool.
-   2018-03-07 Steven Green : Created a base tool for cheating particle id.
-   2018-03-06 Steven Green : Created cheating beam particle id tool.
-   2018-03-05 Steven Green : Added new interaction types to the interaction type helper class.
-   2018-03-01 John Marshall : Access MCParticles via CaloHits in master, rather than via named MCParticle list.
-   2018-03-01 John Marshall : CaloHits assessed by CosmicRayTaggingTool are those in the master Pandora instance.
-   2018-03-02 John Marshall : Merge pull request \#27 from a-d-smith/feature/NeutrinoIdTool
-   2018-02-26 a-d-smith : Added function to monitoring helper to print raw matching tables
-   2018-02-23 a-d-smith : Fixed unused travis variable error
-   2018-02-23 a-d-smith : Added the simple neutrino id tool
-   2018-02-23 a-d-smith : Fixed a typo
-   2018-02-23 a-d-smith : Some small updates to NeutrinoIdTool following code review
-   2018-02-21 a-d-smith : Fixed conflicts rebasing on master
-   2018-02-21 a-d-smith : Addressed subtlety when training with slices in which the neutrino hypothesis produced no output
-   2018-02-21 a-d-smith : Changed default behaviour to always select the single most probable neutrino
-   2018-02-21 a-d-smith : Implemented changes following code review
-   2018-02-21 a-d-smith : Now slice id tool only requires an Algorithm, not MasterAlgorithm
-   2018-02-19 a-d-smith : added a few doxygen comments
-   2018-02-09 a-d-smith : removed some unnecessary comments
-   2018-02-09 a-d-smith : Fixed bug in calcualtion of cosmic ray direction, and made the main function more readable
-   2018-02-08 a-d-smith : Added some features and output training examples file
-   2018-02-07 a-d-smith : Started working on the NeutrinoFeatures class
-   2018-02-07 a-d-smith : Exposed the slice id base tool to the master algorithm to access the MCParticle list. Needed to filter events by nuance code when training
-   2018-02-07 a-d-smith : Added functionality to select the slice with the most neutrino induced hits
-   2018-02-07 a-d-smith : Started changes to neutrino ID too
-   2018-03-02 John Marshall : Merge branch ‘feature/MonitoringRemaster’
-   2018-02-21 John Marshall : Ensure compilation without warning in case when PandoraMonitoring is disabled.
-   2018-02-19 John Marshall : Ensure all final state particles are considered in event validation.
-   2018-02-19 John Marshall : Overhaul cheating reconstruction.
-   2018-02-16 John Marshall : Add target nu losses to tree.
-   2018-02-16 John Marshall : Add target and reco vertex information.
-   2018-02-14 John Marshall : Write additional information to tree.
-   2018-02-13 John Marshall : Switch to single ProcessInformation function.
-   2018-02-13 John Marshall : Restructure.
-   2018-02-13 John Marshall : Update list of interaction types.
-   2018-02-12 John Marshall : Placeholder null values for cases where there are no matched pfos.
-   2018-02-09 John Marshall : Alter treatment for handling e.g. mu_minus vs. mu_plus. Add whether pfo reco’d as neutrino to tree.
-   2018-02-09 John Marshall : Add GetNeutrinoWeight functionality to CheatingNeutrinoId tool.
-   2018-02-09 John Marshall : Restore LArMCParticleHelper::GetMainMCParticle, some work to do for GetMainMCPrimary.
-   2018-02-08 John Marshall : Add number of pfo matches to tree.
-   2018-02-07 John Marshall : Improvements to labelling of reconstruction targets by interaction type.
-   2018-01-23 John Marshall : Handle multiple reconstructed neutrinos.
-   2018-01-23 John Marshall : Tidying of LArMCParticle helper.
-   2018-01-19 John Marshall : Add mcNuanceCode to print out and tree.
-   2018-01-19 John Marshall : Add TODOs regarding LArMCParticleHelper::GetMainMCParticle.
-   2018-01-19 John Marshall : First version of output ROOT tree.
-   2018-01-18 John Marshall : Use ValidationInfo instance throughout EventValidation algorithm.
-   2018-01-17 John Marshall : Track all primaries, only applying quality cuts at point of matching, as with previous metrics.
-   2018-01-15 John Marshall : Add first print out of number of correct event elements.
-   2018-01-15 John Marshall : Add matching quality cuts.
-   2018-01-15 John Marshall : Add raw and interpreted matching outputs.
-   2018-01-15 John Marshall : Development motivated by needs of remastered EventValidation algorithm.
-   2018-01-11 John Marshall : Begin to use new LArMCParticle helper functionality in algorithms.
-   2018-01-10 John Marshall : Redistribution of functionality between helper classes.
-   2018-01-10 John Marshall : Move monitoring-only algorithms and tools into LArMonitoring.
-   2017-12-13 a-d-smith : Added the cosmic ray tagging monitoring tool
-   2017-12-12 a-d-smith : Moved typedefs from LArMonitoringHelper to LArMCParticleHelper
-   2017-12-08 a-d-smith : Handle samples with and without nuance codes set for cosmic rays
-   2017-12-08 a-d-smith : Can now print details on MCParticles and Pfos to a table
-   2017-12-07 a-d-smith : Added PfoValidationAlgorithm to test the helper functions
-   2017-12-07 a-d-smith : Added the ability to draw tables of selected MCParticles in the LArMonitoringHelper
-   2017-12-07 a-d-smith : Added functionality to LArMCParticleHelper to find the number of hits shared between Pfos and MCParticles
-   2017-12-07 a-d-smith : Added functionality to LArMCParticleHelper to select reconstructable MCParticles with a given condition
-   2017-12-01 a-d-smith : Added the LArFormattingHelper class to print coloured tables to the terminal

larsoftobj v1_41_02
----------------------------------------------

lardataobj v1_29_01
----------------------------------------------

larcorealg v1_18_01
----------------------------------------------

larcoreobj v1_22_00
----------------------------------------------

larbatch v01_38_01
--------------------------------------------

-   2018-03-28 Lynn Garren : larbatch v01_38_01 for larsoft v06_72_00
-   2018-03-21 Herbert Greenlee : Merge branch ‘develop’ of ssh://cdcvs.fnal.gov/cvs/projects/larbatch into develop
-   2018-03-21 Herbert Greenlee : Add prestagefraction.
-   2018-03-21 Lynn Garren : larsoft v06_71_00
-   2018-03-20 Herbert Greenlee : Don’t make out/log directory more times than necessary.

larutils v1_22_00
------------------------------------------

-   2018-03-28 Lynn Garren : larutils v1_22_00 for larsoft v06_72_00
-   2018-03-26 Lynn Garren : adding c2 support
-   2018-03-20 Herbert Greenlee : Check out uboonedata.
-   2018-03-20 Herbert Greenlee : Add build_uboonedata.sh.
