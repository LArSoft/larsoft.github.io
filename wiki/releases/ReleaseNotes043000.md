LArSoft v04_30_00 Release Notes
======================================================================

-   **Table of contents**
-   [LArSoft v04_30_00 Release Notes](#LArSoft-v04_30_00-Release-Notes)
    -   [Purpose](#Purpose)
    -   [New features](#New-features)
    -   [Bug fixes](#Bug-fixes)
    -   [Updated dependencies](#Updated-dependencies)
-   [Change List](#Change-List)
    -   [larsoft v04_30_00](#larsoft-v04_30_00)
    -   [lareventdisplay v04_12_05](#lareventdisplay-v04_12_05)
    -   [larexamples v04_06_05](#larexamples-v04_06_05)
    -   [larpandora v04_08_06](#larpandora-v04_08_06)
    -   [larana v04_16_02](#larana-v04_16_02)
    -   [larreco v04_24_00](#larreco-v04_24_00)
    -   [larsim v04_15_00](#larsim-v04_15_00)
    -   [larevt v04_13_05](#larevt-v04_13_05)
    -   [lardata v04_19_00](#lardata-v04_19_00)
    -   [larcore v04_21_00](#larcore-v04_21_00)
    -   [larbatch v01_19_01](#larbatch-v01_19_01)
    -   [larutils v1_04_03](#larutils-v1_04_03)

[list of LArSoft releases](LArSoft_release_list)
[Download instructions](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v04_30_00/larsoft-v04_30_00.html)

Purpose
--------------------

-   changes to develop since v04_29_02
-   features requested by DUNE
-   bug fix

New features
------------------------------

-   larsim feature/gvsinev_SupernovaGenerator
-   larreco feature/dstefan_TrackShowerSplitter
-   new DetectorInfo directory in lardata
-   The ifdh suite (ifdhc, ifbeam, nucondb, ifdh_art) is built for OSX.
    -   The noifdh build is no longer necessary.
    -   Athough building with ifdhc is supported, using ifdhc needs to be tested.
    -   The optional ifdh_platform_pkgs product, found in the “common” ups db is required to use ifdhc, but is not yet thouroughly tested.
    -   [SupportedPlatforms](/redmine/projects/ifdhc/wiki/SupportedPlatforms)

Bug fixes
------------------------

-   lareventdisplay feature/aolivier_FixRecoSegFaults

Updated dependencies
----------------------------------------------

||
|Product|Version|Qualifiers|Notes|
|ifdh_art|v1_14_01|e9:nu:s21||
|nutools|v1_17_00|e9||
|larsoft_data|v0_06_00||new SupernovaNeutrinos directory|
|cetbuildtools|v4_17_03|||
|cetpkgsupport|v1_10_01||**IMPORTANT:** [UpdatingToNewRelease](UpdatingToNewRelease#If-cetpkgsupport-was-updated)|

Change List
============================

larsoft v04_30_00
------------------------------------------

-   2015-11-19 Lynn Garren : fix libwda version
-   2015-11-19 Lynn Garren : larsoft v04_30_00 for larsoft v04_30_00
-   2015-11-19 Lynn Garren : update dependency database
-   2015-11-19 Lynn Garren : can build ifdhc on OSX now
-   2015-11-19 Lynn Garren : update product versions

lareventdisplay v04_12_05
----------------------------------------------------------

-   2015-11-19 Lynn Garren : lareventdisplay v04_12_05 for larsoft v04_30_00
-   2015-11-17 Andrew Olivier : Merge branch ‘develop’ into feature/aolivier_FixRecoSegFaults
-   2015-11-10 Andrew Olivier : Protect against events with no tracks in 3D viewer and prevent display from crashing when the main window is closed.

larexamples v04_06_05
--------------------------------------------------

-   2015-11-19 Lynn Garren : larexamples v04_06_05 for larsoft v04_30_00
-   2015-11-12 Brian Rebel : Merge branch ‘develop’ of ssh://cdcvs.fnal.gov/cvs/projects/larexamples into develop
-   2015-10-28 Brian Rebel : Merge branch ‘develop’ of ssh://cdcvs.fnal.gov/cvs/projects/larexamples into develop
-   2015-10-28 Brian Rebel : change product versions

larpandora v04_08_06
------------------------------------------------

-   2015-11-19 Lynn Garren : larpandora v04_08_06 for larsoft v04_30_00

larana v04_16_02
----------------------------------------

-   2015-11-19 Lynn Garren : larana v04_16_02 for larsoft v04_30_00

larreco v04_24_00
------------------------------------------

-   2015-11-19 Lynn Garren : larreco v04_24_00 for larsoft v04_30_00
-   2015-11-18 Lynn Garren : Merge branch ‘feature/dstefan_TrackShowerSplitter’ into release/v04_30_00
-   2015-11-18 Mike Wallbank : Merge branch ‘develop’ of ssh://cdcvs.fnal.gov/cvs/projects/larreco into develop
-   2015-11-18 Mike Wallbank : Further improvements to the track/shower separation algorithm
-   2015-11-18 Tingjun Yang : Merge branch ‘develop’ of ssh://cdcvs.fnal.gov/cvs/projects/larreco into feature/dstefan_TrackShowerSplitter
-   2015-11-18 Robert Sulej : Merge branch ‘develop’ of ssh://cdcvs.fnal.gov/cvs/projects/larreco into develop
-   2015-11-18 Tingjun Yang : Merge branch ‘develop’ of ssh://cdcvs.fnal.gov/cvs/projects/larreco into feature/dstefan_TrackShowerSplitter
-   2015-11-18 Mike Wallbank : Updates and new tuning for the track/shower separation module
-   2015-11-17 Tingjun Yang : Merge branch ‘develop’ of ssh://cdcvs.fnal.gov/cvs/projects/larreco into feature/dstefan_TrackShowerSplitter
-   2015-11-17 Mike Wallbank : Re-fixed bug which I fixed a couple of commits ago. It appears in two places in the code\\!
-   2015-11-17 Tingjun Yang : Merge branch ‘develop’ of ssh://cdcvs.fnal.gov/cvs/projects/larreco into feature/dstefan_TrackShowerSplitter
-   2015-11-17 Mike Wallbank : Improved the track shower separation; added option to remove tracks near previously found tracks. Tuned further.
-   2015-11-17 Tingjun Yang : Merge branch ‘develop’ of ssh://cdcvs.fnal.gov/cvs/projects/larreco into feature/dstefan_TrackShowerSplitter
-   2015-11-17 Mike Wallbank : Fixed some bugs with the track shower separation alg and added method to find further tracks near previously identified tracks
-   2015-11-17 Mike Wallbank : Restructured the module and massively simplified it. Now only one loop is needed regardless of using global TPC recon or classic recon. Also provided support for track shower separation module
-   2015-11-17 Robert Sulej : fixes for vertexing (still some to be done)
-   2015-11-17 Tingjun Yang : Merge branch ‘develop’ of ssh://cdcvs.fnal.gov/cvs/projects/larreco into feature/dstefan_TrackShowerSplitter
-   2015-11-17 Jonathan Davies : declare_products default arguments were creating wire assns. Set this to false explicitly as the raw hit finder should not make these
-   2015-11-17 Jonathan Davies : Merge branch ‘develop’ into feature/jpdavies_fasthitfinder
-   2015-11-17 Jonathan Davies : Replace getByLabel calls from using strings to art::InputTag, allowing for product module instance specification. Also remove pass output messages through message logger
-   2015-11-17 Tingjun Yang : Merge branch ‘develop’ into feature/dstefan_TrackShowerSplitter
-   2015-11-17 Tingjun Yang : Check if input dqdx is great than 0, if not, set dedx to 0.
-   2015-11-17 Tingjun Yang : Merge branch ‘develop’ of ssh://cdcvs.fnal.gov/cvs/projects/larreco into feature/dstefan_TrackShowerSplitter
-   2015-11-17 Dorota Stefan : protection against 0 value for dedx; code prepared to save energy of shower (availale in future)
-   2015-11-17 Robert Sulej : Merge branch ‘develop’ of ssh://cdcvs.fnal.gov/cvs/projects/larreco into develop
-   2015-11-17 Robert Sulej : throw on tracks destroyed in optimization
-   2015-11-17 Robert Sulej : implemented optimization of vtxs on inner nodes of tracks
-   2015-11-16 Mike Wallbank : Made vertex label a configurable parameter
-   2015-11-16 Tingjun Yang : Merge branch ‘develop’ of ssh://cdcvs.fnal.gov/cvs/projects/larreco into feature/dstefan_TrackShowerSplitter
-   2015-11-16 Mike Wallbank : Merge branch ‘develop’ of ssh://cdcvs.fnal.gov/cvs/projects/larreco into develop
-   2015-11-16 Mike Wallbank : Removed hard-coded variables and replaced with those provided by art services
-   2015-11-16 Tingjun Yang : Merge branch ‘develop’ into feature/dstefan_TrackShowerSplitter
-   2015-11-16 Tingjun Yang : add back pedestal in uncompression and subtract it later
-   2015-11-16 Tingjun Yang : Merge branch ‘develop’ of ssh://cdcvs.fnal.gov/cvs/projects/larreco into feature/dstefan_TrackShowerSplitter
-   2015-11-16 Mike Wallbank : Fixed bug which led to exceptions occassionally being thrown and, in doing so, improved the track shower separation determination
-   2015-11-16 Mike Wallbank : MW: updates to clustering and showering modules. Made the shower energy determination an alg so it can be used externally. Added a new alg to assist in separation of track and shower objects. Found the conversion from charge to energy for the DUNE fd.
-   2015-11-14 Dorota Stefan : move to another dir
-   2015-11-14 Dorota Stefan : Merge branch ‘develop’ into feature/dstefan_TrackShowerSplitter
-   2015-11-13 Kalousis Leonidas : hot fix for MCS crash bug
-   2015-11-13 Dorota Stefan : Merge branch ‘develop’ into feature/dstefan_TrackShowerSplitter
-   2015-11-13 Dorota Stefan : fix conflicts
-   2015-11-12 Lynn Garren : larsoft v04_29_02
-   2015-11-11 Mike Wallbank : Fixed bug in vertex/direction finding – wire/tick coordinates were being implemented in the incorrect order
-   2015-11-11 Tingjun Yang : Change ConvertTicksToX to ConvertXToTicks
-   2015-11-09 Dorota Stefan : new functions for better splitting
-   2015-11-06 Robert Sulej : clusters instead of hits copy for em tagging
-   2015-11-05 Robert Sulej : complete configuration in fcl
-   2015-11-04 Robert Sulej : combine splitter with tracking
-   2015-11-04 Dorota Stefan : Merge branch ‘feature/dstefan_TrackShowerSplitter’ of ssh://cdcvs.fnal.gov/cvs/projects/larreco into feature/dstefan_TrackShowerSplitter
-   2015-11-04 Dorota Stefan : change values of parameters
-   2015-11-04 Robert Sulej : create only em showers, remove some log
-   2015-11-04 Dorota Stefan : Merge branch ‘feature/dstefan_TrackShowerSplitter’ of ssh://cdcvs.fnal.gov/cvs/projects/larreco into feature/dstefan_TrackShowerSplitter
-   2015-11-04 Dorota Stefan : new function needed for shower extension
-   2015-11-03 Robert Sulej : add merging helpers
-   2015-11-03 Robert Sulej : once again conflicts…
-   2015-11-03 Robert Sulej : add parameter for naive test
-   2015-11-03 Robert Sulej : merge conflicts…
-   2015-11-03 Dorota Stefan : add reference
-   2015-11-02 Dorota Stefan : bug fix
-   2015-11-02 Robert Sulej : bug fix
-   2015-11-02 Dorota Stefan : add subdir dirofgamma
-   2015-11-01 Robert Sulej : code done, now trying to find params
-   2015-11-01 Robert Sulej : just naive tagging to fill functions
-   2015-10-27 Robert Sulej : segmentation done
-   2015-10-27 Robert Sulej : add segmentation class
-   2015-10-23 Robert Sulej : add cluster class
-   2015-10-19 Robert Sulej : refactor, add initial sorting
-   2015-10-18 Robert Sulej : basic functions
-   2015-09-29 Dorota Stefan : add module for track-shower hit splitter

larsim v04_15_00
----------------------------------------

-   2015-11-19 Lynn Garren : larsim v04_15_00 for larsoft v04_30_00
-   2015-11-18 Lynn Garren : Merge branch ‘feature/gvsinev_SupernovaGenerator’ into release/v04_30_00
-   2015-11-18 Gleb Sinev : Add a configuration table for dunefd_workspace in supernova.fcl.
-   2015-11-18 Gleb Sinev : Change directory where the algorithm is looking for the energy spectrum in NueAr40CCGenerator to SupernovaNeutrinos.
-   2015-11-18 Gleb Sinev : Use the random number generator service in NueAr40CCGenerator.
-   2015-11-18 Gleb Sinev : Add SNNueAr40CCGen supernova generator.
-   2015-11-16 Thomas Warburton : Tyler made the 10kt geometry larger to accomodate the 5 m required for MUSUN in the Z direction. Changing the defualt positions to reflet that change.
-   2015-11-16 Matthew Bas : Merge branch ‘feature/mibass_CorsikaGen’ into develop
-   2015-11-16 Matthew Bas : Fixed exception error messages.
-   2015-11-16 Matthew Bas : Added default fcl’s for CMC and proton only models. Misc changes/bug fixes to module.
-   2015-11-07 Matthew Bass : Fixed particles being propagated to ylo instead of yhi.
-   2015-11-06 Matthew Bass : Added RandomXZShift parameter to randomize shower starting points
-   2015-11-06 Matthew Bass : Troubleshooting run parameters
-   2015-11-04 Matthew Bass : Updated CMakeLists.txt to include CORSIKA subdir
-   2015-11-04 Matthew Bass : Initial commit of CORSIKA based generator
-   2015-11-06 Gianluca Petrillo : Fixed bug on algorithm used by MCShowerReco manifesting on empty events
-   2015-11-11 Thomas Warburton : Adding a zoomed in energy histogram.

larevt v04_13_05
----------------------------------------

-   2015-11-19 Lynn Garren : larevt v04_13_05 for larsoft v04_30_00
-   2015-11-12 Brian Rebel : Merge branch ‘develop’ of ssh://cdcvs.fnal.gov/cvs/projects/larevt into develop
-   2015-10-28 Brian Rebel : Merge branch ‘develop’ of ssh://cdcvs.fnal.gov/cvs/projects/larevt into develop
-   2015-10-28 Brian Rebel : update product version

lardata v04_19_00
------------------------------------------

-   2015-11-19 Lynn Garren : lardata v04_19_00 for larsoft v04_30_00
-   2015-11-18 Lynn Garren : Merge branch ‘feature/jpaley_dunePedDev_2015_11_16’ into release/v04_30_00
-   2015-11-18 Lynn Garren : detinfo namespace, etc.
-   2015-11-18 Lynn Garren : the directory will be named DetectorInfo
-   2015-11-16 Jonathan Paley : Add DataProviders package, which is currently completely decoupled from the rest of LArSoft. Needed for new code in dunesoft.
-   2015-11-15 Brian Rebel : finally purge the DetId_t type from LArSoft
-   2015-11-12 Brian Rebel : Merge branch ‘develop’ of ssh://cdcvs.fnal.gov/cvs/projects/lardata into develop
-   2015-10-28 Brian Rebel : Merge branch ‘develop’ of ssh://cdcvs.fnal.gov/cvs/projects/lardata into develop
-   2015-10-28 Brian Rebel : update a product version

larcore v04_21_00
------------------------------------------

-   2015-11-19 Lynn Garren : larcore v04_21_00 for larsoft v04_30_00
-   2015-11-15 Brian Rebel : finally purge the DetId_t type from LArSoft
-   2015-11-12 Brian Rebel : Merge branch ‘develop’ of ssh://cdcvs.fnal.gov/cvs/projects/larcore into develop
-   2015-10-28 Brian Rebel : Merge branch ‘develop’ of ssh://cdcvs.fnal.gov/cvs/projects/larcore into develop
-   2015-10-28 Brian Rebel : update cetbuildtools

larbatch v01_19_01
--------------------------------------------

larutils v1_04_03
------------------------------------------
