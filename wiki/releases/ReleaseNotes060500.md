# LArSoft v06_05_00 Release Notes



[list of LArSoft releases](LArSoft_release_list)  
[Download instructions](https://scisoft.fnal.gov/scisoft/bundles/larsoft/v06_05_00/larsoft-v06_05_00.html)

## Purpose

-   changes to develop since v06_04_01
-   merge files in larsimobj with lardataobj

## New features

-   larsimobj has been removed
    -   larsimobj/Simulation is now lardataobj/Simulation
    -   The UpdateToLArSoftObj.sh script can be run to fix user code
    -   The feature/without_larsimobj branch is provided for argoneutcode, dunetpc, lariatsoft, and uboonecode

## Bug fixes

## Updated dependencies

# Change List

## larsoft v06_05_00

-   2016-08-31 Lynn Garren : Merge branch 'release/v06_05_00'
-   2016-08-31 Lynn Garren : update product versions
-   2016-08-31 Lynn Garren : larsoft v06_05_00 for larsoft v06_05_00
-   2016-08-31 Lynn Garren : update dependency database
-   2016-08-30 Lynn Garren : larsimobj/Simulation is now in lardataobj
-   2016-08-30 Lynn Garren : move scripts for the v05_00_00 refactoring into their own directory
-   2016-08-30 Lynn Garren : the nightly build has been replaced by the CI system

## lareventdisplay v06_01_02

-   2016-08-31 Lynn Garren : lareventdisplay v06_01_02 for larsoft v06_05_00
-   2016-08-30 Lynn Garren : larsimobj no longer exists
-   2016-08-30 Lynn Garren : larsimobj/Simulation moved to lardataobj/Simulation

## larexamples v06_00_06

-   2016-08-31 Lynn Garren : larexamples v06_00_06 for larsoft v06_05_00
-   2016-08-30 Lynn Garren : using cetlib/quiet_unit_test.hpp
-   2016-08-30 Lynn Garren : larsimobj no longer exists
-   2016-08-30 Lynn Garren : larsimobj/Simulation moved to lardataobj/Simulation

## larpandora v06_00_07

-   2016-08-31 Lynn Garren : larpandora v06_00_07 for larsoft v06_05_00
-   2016-08-30 Lynn Garren : larsimobj/Simulation moved to lardataobj/Simulation
-   2016-08-30 Lynn Garren : larsimobj no longer exists

## larana v06_01_03

-   2016-08-31 Lynn Garren : larana v06_01_03 for larsoft v06_05_00
-   2016-08-30 Lynn Garren : Merge branch 'develop' into release/v06_05_00
-   2016-08-30 Lynn Garren : larsimobj no longer exists
-   2016-08-30 Lynn Garren : larsimobj/Simulation moved to lardataobj/Simulation
-   2016-08-30 Gianluca Petrillo : Removed outdated comment.

## larreco v06_04_00

-   2016-08-31 Lynn Garren : larreco v06_04_00 for larsoft v06_05_00
-   2016-08-30 Lynn Garren : larsimobj/Simulation moved to lardataobj/Simulation
-   2016-08-30 Lynn Garren : larsimobj no longer exists
-   2016-08-27 Robert Sulej : add (mmissed after refactoring) protection against empty clusters that may appear if em-like parts are subtracted
-   2016-08-26 Robert Sulej : fix more stupid condition on background selection - now produces good training set
-   2016-08-26 Robert Sulej : minor fix, no changes to results
-   2016-08-26 Robert Sulej : script to make patches for vertex id (really first attempt)
-   2016-08-26 Robert Sulej : set types in vertex info array to int
-   2016-08-26 Robert Sulej : minor adjusments to reading in files
-   2016-08-26 Robert Sulej : add separated fn for nu vertex and other interactions and decays
-   2016-08-25 Robert Sulej : Merge branch 'develop' of ssh://cdcvs.fnal.gov/cvs/projects/larreco into develop
-   2016-08-25 Robert Sulej : fn to get info for neutrino vertices
-   2016-08-25 Robert Sulej : minor add to configuration
-   2016-08-24 Robert Sulej : fix a bug in em-track patch making script
-   2016-08-24 Lynn Garren : larsoft v06_04_01
-   2016-08-24 Robert Sulej : Merge branch 'develop' of ssh://cdcvs.fnal.gov/cvs/projects/larreco into develop
-   2016-08-24 Robert Sulej : em-trakc patch selection improved
-   2016-08-24 Dorota Stefan : change setting: segment of shower will be reconstructed as default

## larsim v06_03_02

-   2016-08-31 Lynn Garren : larsim v06_03_02 for larsoft v06_05_00
-   2016-08-30 Lynn Garren : larsimobj no longer exists
-   2016-08-30 Lynn Garren : larsimobj no longer exists
-   2016-08-30 Lynn Garren : larsimobj/Simulation moved to lardataobj/Simulation

## larevt v06_01_01

-   2016-08-31 Lynn Garren : larevt v06_01_01 for larsoft v06_05_00

## lardata v06_03_01

-   2016-08-31 Lynn Garren : lardata v06_03_01 for larsoft v06_05_00
-   2016-08-30 Lynn Garren : using cetlib/quiet_unit_test.hpp
-   2016-08-24 Gianluca Petrillo : DetectorPropertiesStandard.cxx was also including the wrong header
-   2016-08-24 Gianluca Petrillo : Removed unused type defs, and the flag which allowed that to pass.
-   2016-08-24 Gianluca Petrillo : Removed debug output from DetectorPropertiesStandard and its test helpers
-   2016-08-24 Gianluca Petrillo : DetectorProperties.h was including the wrong header

## larcore v06_02_01

-   2016-08-31 Lynn Garren : larcore v06_02_01 for larsoft v06_05_00
-   2016-08-29 Gianluca Petrillo : Added “override” declarations to ChannelMapStandardAlg
-   2016-07-29 Gianluca Petrillo : Documentation and cosmetic changes.
-   2016-07-29 Gianluca Petrillo : Added a geometry configuration bundle for teh “standard” LArTPC geometry.
-   2016-07-29 Gianluca Petrillo : Added a few utility related to provider packs
-   2016-07-27 Gianluca Petrillo : Added lar::providersFrom() to ServiceUtil.h
-   2016-07-27 Gianluca Petrillo : Fixed typos in documentation.

## larsoftobj v1_06_00

-   2016-08-31 Lynn Garren : larsoftobj v1_06_00 for larsoft v06_05_00
-   2016-08-30 Lynn Garren : larsimobj/Simulation is now in lardataobj

## lardataobj v1_06_00

-   2016-08-31 Lynn Garren : lardataobj v1_06_00 for larsoft v06_05_00
-   2016-08-30 Lynn Garren : larsimobj/Simulation moved to lardataobj/Simulation
-   2016-08-30 Lynn Garren : add Simulation directory
-   2016-08-30 Lynn Garren : Merge branch 'release/v06_05_00' of /home/garren/scratch/larsoft/v06_05_00/nobuild/larsimobj-stripped into feature/with_Simulation
-   2016-08-30 Lynn Garren : ready to move
-   2016-08-19 Gianluca Petrillo : Fixed documentation of sim::IDE
-   2016-08-05 Lynn Garren : larsimobj v1_05_00 for larsoft v06_02_00
-   2016-07-22 Gianluca Petrillo : sim::SimChannel: minor optimisations
-   2016-07-22 Gianluca Petrillo : sim::SimChannel: documentation and meaningful type definitions
-   2016-07-22 Gianluca Petrillo : Bug fixes to IDE and channel merging algorithms in sim::SimChannel
-   2016-07-21 Brian Rebel : build the dictionary for the sim::TDCIDE
-   2016-07-21 Brian Rebel : Make some changes suggested by Gianluca
-   2016-07-21 Brian Rebel : put the changes to SimChannel into this repository now. Change map\<unsigned short, std::vector<sim::IDE> \> to vector\<pair\<unsigned short, std::vector<sim::IDE> \> \>.
-   2016-07-18 Lynn Garren : Merge branch 'v06_00_00_art2' into develop
-   2016-07-18 Lynn Garren : Merge branch 'v06_00_00_art2'
-   2016-06-28 Lynn Garren : remove old comments
-   2016-06-28 Lynn Garren : remove unnecessary template instantiations
-   2016-06-28 Lynn Garren : remove unnecessary template instantiations
-   2016-05-17 Lynn Garren : use cet_make and art_dictionary
-   2016-04-18 Patrick Gartung : updates from v06_00_00_rc1
-   2016-04-07 Patrick Gartung : initial commit

## larcoreobj v1_04_02

## larbatch v01_23_05

-   2016-08-31 Lynn Garren : larbatch v01_23_05 for larsoft v06_05_00
-   2016-08-30 Herbert Greenlee : Allow stages to override <numevents>.
-   2016-08-29 Herbert Greenlee : Clean up after makeup jobs.
-   2016-08-26 Herbert Greenlee : Revamp how services are configured in fcl wrapper.

## larutils v1_08_04

2016-08-31 Lynn Garren : larutils v1_08_04 for larsoft v06_05_00

-   2016-08-31 Lynn Garren : update larsoftobj version
