LArSoft v04_18_00 Release Notes
======================================================================

[list of LArSoft releases](LArSoft_release_list)
[Download instructions](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v04_18_00/larsoft-v04_18_00.html)

Purpose
--------------------

New features
------------------------------

-   larcore feature/gp_FixGeometryTestSelector
    -   lariatsoft, lbnecode, uboonecode, and argoneutcode will also need to merge this branch with develop
-   lardata feature/wallbank_ShowerAssociation
-   larreco
    -   changes to projection matching algorithm
-   larana feature/tjyang_t0finder
    -   the new library is named T0Finder_MCTruthT0Matching_module

Bug fixes
------------------------

Updated dependencies
----------------------------------------------

||
|Product|Version|Qualifier|Notes|
|mrb|v1_05_00||remove unused dependency_list from \$MRB_SOURCE|

Change List
============================

larsoft v04_18_00
------------------------------------------

-   2015-08-04 Lynn Garren : larsoft v04_18_00 for larsoft v04_18_00
-   2015-08-04 Lynn Garren : update dependency database
-   2015-07-23 Lynn Garren : cstxsd v4_0_0c

lareventdisplay v04_06_02
----------------------------------------------------------

-   2015-08-04 Lynn Garren : lareventdisplay v04_06_02 for larsoft v04_18_00
-   2015-07-30 Gianluca Petrillo : Modified event display configuration evd.fcl suitable for events simulated with prodsingle.fcl

larexamples v04_05_00
--------------------------------------------------

-   2015-08-04 Lynn Garren : larexamples v04_05_00 for larsoft v04_18_00
-   2015-08-03 Gianluca Petrillo : Updaing commects in ADDITIONAL_NOTES.txt
-   2015-08-03 Gianluca Petrillo : Further “good practise” changes
-   2015-08-03 Gianluca Petrillo : Using ValidHandle when a data product is required; changing names to variables that were used multiple times with different meanings
-   2015-08-03 Gianluca Petrillo : Updated comments
-   2015-07-31 Gianluca Petrillo : Changed one of the branches of the example tree to use std::vector\<\> directly
-   2015-07-30 Gianluca Petrillo : Fixed example configuration to be used with events generated with prodsingle.fcl
-   2015-07-30 Gianluca Petrillo : Updated example to use services for the “generic” LAr TPC detector. Currently unusable.

larpandora v04_05_00
------------------------------------------------

-   2015-08-04 Lynn Garren : larpandora v04_05_00 for larsoft v04_18_00
-   2015-07-30 Andrew Blake : adjusting PFParticle monitoring module to allow analysis of decay photons from pi-zeros and decay electrons from muons
-   2015-07-28 Andrew Blake : Updates to analyzer module that quantifies reconstruction performance for PFParticles: (1) implement recursive matching of reconstructed and true particles, (2) skip over hits without MC truth information, (3) put switches around print statements (should switch to message service for these statements in the future).
-   2015-07-28 Andrew Blake : Updating cosmic subtraction analyzer module in LArPandoraInterface, and tweaking ‘LArPandoraParticleCreator’ module for compatibility with downstream cosmic tagging modules.
-   2015-07-24 Lynn Garren : use gdmldir and install_gdml to the xml files will be copied during a build

larana v04_10_00
----------------------------------------

-   2015-08-04 Lynn Garren : larana v04_10_00 for larsoft v04_18_00
-   2015-08-03 Lynn Garren : use a fully qualified library name to avoid confusion
-   2015-07-30 Tingjun Yang : Check if art::Handle is valid before using FindMany.
-   2015-07-30 Tingjun Yang : Add T0 association to recoB::Shower, implemented by Karl Warburton.
-   2015-07-27 Thomas Warburton : Adding file description to MCTruthT0Matching_module
-   2015-07-23 Tingjun Yang : Add T0Finder and a module to find t0 using MC truth.

larreco v04_14_00
------------------------------------------

-   2015-08-04 Lynn Garren : larreco v04_14_00 for larsoft v04_18_00
-   2015-07-31 Robert Sulej : configure lower than default PMA node position margin, helps going through large EM cascades
-   2015-07-31 Robert Sulej : fix not deleted track candidates based on code from Tracy, add wire-drift limit on searched hits in validation, lowered threshold for min hits in the track (go to shorter tracks), configurable margin around tpc for node positions, few other minor improvments
-   2015-07-31 Kalousis Leonidas : Add projection seg. alg.
-   2015-07-30 Kalousis Leonidas : Add particle direction function - fix errors
-   2015-07-30 Kalousis Leonidas : Add particle direction function
-   2015-07-30 Gianluca Petrillo : Standard primary reconstruction for “generic” LAr TPC detector. Currently broken for lack of calibration module.
-   2015-07-29 Robert Sulej : check if wire plane exists when asking for X sizes
-   2015-07-29 Robert Sulej : Merge branch ‘develop’ of ssh://cdcvs.fnal.gov/cvs/projects/larreco into develop
-   2015-07-29 Robert Sulej : use X size of TPCs based on drift range instead of geometry
-   2015-07-29 Bruce Baller : Merge branch ‘feature/bb_ccwork’ into develop
-   2015-07-29 Bruce Baller : Fixed typo
-   2015-07-29 Herbert Greenlee : Revert to not use pfparticle seeds.
-   2015-07-28 Robert Sulej : add prototypes for the track wire and drift range in selected tpc - to be used by validation
-   2015-07-28 Robert Sulej : as Tracy noticed - check track validation only if MSE cut is passing
-   2015-07-28 Herbert Greenlee : Add plots of efficiency vs. kinetic energy.
-   2015-07-27 Robert Sulej : avoid some redundant calculations during track validation
-   2015-07-27 Robert Sulej : fix terribly stupid awful lack of releasing the memory; add helper (still testing) for cascade-track distinction
-   2015-07-21 Herbert Greenlee : Add ability to use seeds associated with PFParticles.
-   2015-07-27 Tracy Usher : Updating the 2D doca determination
-   2015-07-27 Robert Sulej : set equal default weights for hits in all 2D planes for PMA
-   2015-07-25 Tingjun Yang : fcl update
-   2015-07-25 Tingjun Yang : fcl updates for dunefd
-   2015-07-24 Bruce Baller : Merge branch ‘develop’ into feature/bb_ccwork
-   2015-07-24 Bruce Baller : Add output to aid in code development
-   2015-07-24 Bruce Baller : Add fcl parameters
-   2015-07-23 Tingjun Yang : Merge branch ‘develop’ of ssh://cdcvs.fnal.gov/cvs/projects/larreco into develop
-   2015-07-23 Tingjun Yang : small bug fix.
-   2015-07-23 Kalousis Leonidas : MCS: Full volume errors treated - all angles and directions
-   2015-07-23 Gianluca Petrillo : larsoft v04_17_00
-   2015-07-23 Tingjun Yang : add pmalgtrackmaker configuration in microboone
-   2015-07-22 Tingjun Yang : Temporary fix so job won’t crash. Need more investigation on why this happened.
-   2015-07-22 Robert Sulej : fix producer to put also empty containers to the event, add one more TTree with info to inspect tracks
-   2015-07-22 Robert Sulej : add fn to returns mean angle between consecutive segments

larsim v04_09_00
----------------------------------------

-   2015-08-04 Lynn Garren : larsim v04_09_00 for larsoft v04_18_00
-   2015-07-30 Gianluca Petrillo : Using specific LArProperties service configuration for singel particle production with the “standard” LAr TPC detector
-   2015-07-30 Gianluca Petrillo : Adding configuration for the “generic” LAr TPC detector, contained in LArSoft

larevt v04_08_08
----------------------------------------

-   2015-08-04 Lynn Garren : larevt v04_08_08 for larsoft v04_18_00

lardata v04_11_02
------------------------------------------

-   2015-08-04 Lynn Garren : lardata v04_11_02 for larsoft v04_18_00
-   2015-08-03 Lynn Garren : Merge branch ‘feature/wallbank_ShowerAssociations’ into release/v04_18_00
-   2015-07-30 Gianluca Petrillo : Added specific LArProperties service configuration for the “standard” LAr TPC detector
-   2015-07-30 Gianluca Petrillo : Adding configuration for the “generic” LAr TPC detector, contained in LArSoft
-   2015-07-29 Herbert Greenlee : Fix pointing error.
-   2015-07-27 Mike Wallbank : Added associations between shower and track for shower reconstruction

larcore v04_15_00
------------------------------------------

-   2015-08-04 Lynn Garren : larcore v04_15_00 for larsoft v04_18_00
-   2015-07-25 Gianluca Petrillo : Fixed a minor bug in the name selector
-   2015-07-25 Gianluca Petrillo : Replaced the parser of geometry tests to be run. FHiCL configuration may be affected.
-   2015-07-25 Gianluca Petrillo : Added class to parse a list of names to accept or reject from configuration (used for example in a test to learn which checks to run and which ones to skip)

larbatch v01_13_00
--------------------------------------------

-   2015-08-04 Lynn Garren : larbatch v01_13_00 for larsoft v04_18_00
-   2015-07-23 Herbert Greenlee : Add more possibilities for a default scratch area.
-   2015-07-23 Herbert Greenlee : Make temporary directory name unique.
-   2015-07-23 Herbert Greenlee : Add ability to specify scratch directory (for merging dCache histograms).

larutils v1_02_01
------------------------------------------
