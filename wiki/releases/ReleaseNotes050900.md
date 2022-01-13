LArSoft v05_09_00 Release Notes
======================================================================

-   **Table of contents**
-   [LArSoft v05_09_00 Release Notes](#LArSoft-v05_09_00-Release-Notes)
    -   [Purpose](#Purpose)
    -   [New features](#New-features)
    -   [Breaking changes](#Breaking-changes)
    -   [Bug fixes](#Bug-fixes)
    -   [Updated dependencies](#Updated-dependencies)
-   [Change List](#Change-List)
    -   [larsoft v05_09_00](#larsoft-v05_09_00)
    -   [lareventdisplay v05_06_03](#lareventdisplay-v05_06_03)
    -   [larexamples v05_06_03](#larexamples-v05_06_03)
    -   [larpandora v05_09_00](#larpandora-v05_09_00)
    -   [larana v05_08_00](#larana-v05_08_00)
    -   [larreco v05_09_00](#larreco-v05_09_00)
    -   [larsim v05_09_00](#larsim-v05_09_00)
    -   [larevt v05_06_03](#larevt-v05_06_03)
    -   [lardata v05_07_02](#lardata-v05_07_02)
    -   [larcore v05_07_00](#larcore-v05_07_00)
    -   [larbatch v01_21_00](#larbatch-v01_21_00)
    -   [larutils v1_06_00](#larutils-v1_06_00)

[list of LArSoft releases](LArSoft_release_list)
[Download instructions](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v05_09_00/larsoft-v05_09_00.html)

Purpose
--------------------

-   merge approved feature branches

New features
------------------------------

-   larcore feature/gp_DebuggingTools
-   genie v2_10_6
-   memory optimization changes
    -   feature/gp_MemoryOptimization in larsim, larreco, larana
    -   dunetpc also needs feature/gp_MemoryOptimization
-   larsim feature/gp_Issue12197

Breaking changes
--------------------------------------

-   Because of the way GENIE decides what part of the spline file to use, it isn’t necessary to have a “default” and a “defaultplusccmec” genie_xsec file, just the later. The users control which types of events to generate with the EventGeneratorList flag (fcl parameter for ART/NuTools/GENIEHelper or command level flag for base GENIE executables).

Bug fixes
------------------------

-   [redmine issue 12197](https://cdcvs.fnal.gov/redmine/issues/12197)

Updated dependencies
----------------------------------------------

||
|Product|Version|Qualifiers|Notes|
|nutools|v1_24_02|e9||
|genie|v2_10_6|e9:r5||
|genie_phyopt|v2_10_6|dkcharm||
|genie_phyopt|v2_10_6|dkcharmtau||
|genie_xsec|v2_10_6|defaultplusccmec|see breaking changes note|
|dk2nu|v1_03_00c|e9:r5||
|cetbuildtools|v4_19_04|||

Change List
============================

larsoft v05_09_00
------------------------------------------

-   2016-04-14 Lynn Garren : dk2nu v01_03_00c
-   2016-04-14 Lynn Garren : larsoft v05_09_00 for larsoft v05_09_00
-   2016-04-14 Lynn Garren : no special cetbuildtools release
-   2016-04-14 Lynn Garren : update product versions
-   2016-04-14 Lynn Garren : update product dependencies
-   2016-04-14 Lynn Garren : nutools v1_24_02 with genie v2_10_6
-   2016-04-13 Lynn Garren : make sure we have cetbuildtools v4_19_04
-   2016-04-08 Gianluca Petrillo : Merge branch ‘develop’ of ssh://cdcvs.fnal.gov/cvs/projects/larsoft into develop
-   2016-04-08 Gianluca Petrillo : RemoveMathFromGDML.py (v. 1.6) bug fixes and new options. I claim it should work.

lareventdisplay v05_06_03
----------------------------------------------------------

-   2016-04-14 Lynn Garren : lareventdisplay v05_06_03 for larsoft v05_09_00

larexamples v05_06_03
--------------------------------------------------

-   2016-04-14 Lynn Garren : larexamples v05_06_03 for larsoft v05_09_00

larpandora v05_09_00
------------------------------------------------

-   2016-04-14 Lynn Garren : larpandora v05_09_00 for larsoft v05_09_00

larana v05_08_00
----------------------------------------

-   2016-04-14 Lynn Garren : larana v05_08_00 for larsoft v05_09_00
-   2016-04-14 Lynn Garren : Merge branch ‘feature/gp_MemoryOptimization’ into release/v05_09_00
-   2016-04-14 Lynn Garren : cetbuildtools v4_19_04
-   2016-04-12 Gianluca Petrillo : Interface update after Geant4 job memory optimization
-   2016-03-29 Gianluca Petrillo : Update after photon library interface change

larreco v05_09_00
------------------------------------------

-   2016-04-14 Lynn Garren : larreco v05_09_00 for larsoft v05_09_00
-   2016-04-14 Lynn Garren : Merge branch ‘develop’ into release/v05_09_00
-   2016-04-14 Lynn Garren : Merge branch ‘feature/gp_MemoryOptimization’ into release/v05_09_00
-   2016-04-14 Lynn Garren : nutools v1_24_02 and cetbuildtools v4_19_04
-   2016-04-14 Alexander Booth : Merge branch ‘develop’ of ssh://cdcvs.fnal.gov/cvs/projects/larreco into develop
-   2016-04-14 Alexander Booth : Made changes to the calculation of hit RMS, this has greatly improved the estimation of hit width. Also done some general tidying.
-   2016-04-14 Dorota Stefan : protection against missing vtx in pfp
-   2016-04-14 Dorota Stefan : correction of validation
-   2016-04-14 Dorota Stefan : fix possibility of using hits from wrong tpc; add some optimizations to validate functions
-   2016-04-14 Michael Wallbank : Fix issue which was causing seg fault since the recent changes – better deal with cases of infinite gradient
-   2016-04-12 Gianluca Petrillo : Merge remote-tracking branch ‘origin/v04_36_00_branch’ into feature/gp_MemoryOptimization
-   2016-04-12 Michael Wallbank : Fix bug in track direction finding. Added levels of debugging to make output cleaner for production
-   2016-04-12 Michael Wallbank : Retuned 2D parameters
-   2016-04-11 Michael Wallbank : Merge branch ‘develop’ into feature/wallbank_EMShowerImprovements
-   2016-04-11 Michael Wallbank : Fix small bug when converting from pma::Track3D to recob::Track object. Follows the change Robert made to the PMAlg recently
-   2016-04-11 Michael Wallbank : Improve shower start finding when the shower travels more in the tick direction
-   2016-04-09 Robert Sulej : Merge branch ‘develop’ of ssh://cdcvs.fnal.gov/cvs/projects/larreco into develop
-   2016-04-09 Robert Sulej : fix a bug in trajectory direction calculation when converting pma tracks to dataproducts
-   2016-04-08 Lynn Garren : larsoft v05_08_00
-   2016-04-08 Tingjun Yang : Merge branch ‘feature/rnd_PmaImprovements’ into develop
-   2016-04-08 Tingjun Yang : Quit if it is data.
-   2016-04-08 Michael Wallbank : Fixed big bug which was affecting which views were considered for making the initial track-like part. Also tidied the code
-   2016-04-07 Michael Wallbank : Improve the identification of a 2D bad view before making the 3D showers. During the course of today I’ve realised the current method is far far from optimal and needs serious reconsideration. Next week I’ll come back to this…
-   2016-04-06 Michael Wallbank : Hugely improved the dynamic blurring using the hit ‘width’; now use a convolution of the regular Gaussian with the hit RMS. Also rewrote large parts (GaussianBlur and Convolve functions are now one, since I don’t make a new kernel each hit map any more…) and all the kernels which could possibly be needed are created by the class constructor and owned by the class before any events are received. The process of all this has further optimised: fHitMap is now a 2D vector of fixed size rather than 2D map, speed has increased by factor of \~5
-   2016-04-06 Michael Wallbank : Merge branch ‘develop’ into feature/wallbank_EMShowerImprovements
-   2016-04-04 Michael Wallbank : Merge branch ‘feature/wallbank_EMShowerImprovements’ of [http://cdcvs.fnal.gov/projects/larreco](http://cdcvs.fnal.gov/projects/larreco) into feature/wallbank_EMShowerImprovements
-   2016-04-04 Michael Wallbank : Merge branch ‘develop’ into feature/wallbank_EMShowerImprovements
-   2016-04-01 Tingjun Yang : Merge branch ‘develop’ of ssh://cdcvs.fnal.gov/cvs/projects/larreco into feature/rnd_PmaImprovements
-   2016-03-29 Mike Wallbank : Improved dynamic blurring: take into account the hit ‘width’, its spread in time, when applying the blurring to even better apply the Gaussian smear
-   2016-03-29 Mike Wallbank : Merge branch ‘develop’ into feature/wallbank_EMShowerImprovements
-   2016-03-28 Gianluca Petrillo : Replaced copies of ParticleList from backtracker with references.
-   2016-03-18 Mike Wallbank : recob::Track methods moved to TrackUtils library
-   2016-03-16 Mike Wallbank : Merge branch ‘develop’ into feature/wallbank_EMShowerImprovements
-   2016-03-13 Mike Wallbank : Rewritten parts of the clustering code ready for changes to come. The blurring is now done slightly differently; instead of looping through each bin and taking contributions from nearby bins, now we loop over all bins and spread the charge out to neighbouring bins. This has the exact same effect but will allow me to change the amount of blurring even more dynamically depending on the distribution of charge in a ‘hit’. Also, the functionality to increase the size of the kernel beyond the nominal blurring range has been added
-   2016-03-08 Mike Wallbank : Added functionality to adjust the blurring sigma in the wire and tick directions separately
-   2016-03-08 Mike Wallbank : Merge branch ‘develop’ into feature/wallbank_EMShowerImprovements
-   2016-03-08 Mike Wallbank : Merge branch ‘develop’ into feature/wallbank_EMShowerImprovements
-   2016-03-07 Mike Wallbank : Merge branch ‘develop’ into feature/wallbank_EMShowerImprovements
-   2016-02-28 Mike Wallbank : Merge branch ‘develop’ into feature/wallbank_EMShowerImprovements
-   2016-02-21 Mike Wallbank : Final improvements to the shower direction finding algorithm. Gets the direction correct almost every time now. Unfortunately, recent changes to the hit finding has completely messed up the 2D reconstruction and so I will now work on this again
-   2016-02-19 Mike Wallbank : Updated for v5
-   2016-02-19 Mike Wallbank : Improved shower start finding for showers with one bad view
-   2016-02-17 Mike Wallbank : Retuned and slightly improved efficiency of BlurredCluster
-   2016-02-10 Mike Wallbank : Merge branch ‘develop’ into feature/wallbank_EMShowerImprovements
-   2016-02-10 Mike Wallbank : Changed the way the shower direction is found; use RMS of the hit distribution along the length of the shower
-   2016-02-08 Mike Wallbank : Initial improvements to EMShowerAlg. Started writing new algorithm to determine the direction of the shower

larsim v05_09_00
----------------------------------------

-   2016-04-14 Lynn Garren : Merge branch ‘feature/gp_MemoryOptimization’ into release/v05_09_00
-   2016-04-14 Gianluca Petrillo : Moving or removing some files that git did not figure out how to correctly merge.
-   2016-04-14 Lynn Garren : larsim v05_09_00 for larsoft v05_09_00
-   2016-04-14 Lynn Garren : Merge branch ‘feature/gp_MemoryOptimization’ into release/v05_09_00
-   2016-04-14 Lynn Garren : cetbuildtools v4_19_04
-   2016-04-14 Lynn Garren : Merge branch ‘feature/gp_Issue12197’ into release/v05_09_00
-   2016-04-14 Lynn Garren : genie_xsec only has the defaultplusccmec qualifier now
-   2016-04-14 Lynn Garren : genie_xsec, genie_phyopt v2_10_6
-   2016-04-12 Gianluca Petrillo : Geant4 job memory optimization
-   2016-04-12 Gleb Sinev : Change the default supernova spectrum in supernova.fcl.
-   2016-04-08 Gianluca Petrillo : LArG4: explicitly removed the old ‘Seed’ parameter
-   2016-04-08 Gianluca Petrillo : Removed debug structures.
-   2016-04-08 Gianluca Petrillo : Split LArG4 random number stream into three: generation, propagation and radiodecay
-   2016-04-07 Gianluca Petrillo : Removed unused service and header inclusion
-   2016-04-06 Saba Sehrish : constructors cleanup
-   2016-04-06 Saba Sehrish : two constructors for deposit and MCEdep structs instead of one
-   2016-04-05 Saba Sehrish : added constructors to deposit and MCEdep, and moved deposit to MCEdep
-   2016-04-05 Saba Sehrish : Merge branch ‘v04_36_00_branch’ of ssh://cdcvs.fnal.gov/cvs/projects/larsim into v04_36_00_branch
-   2016-04-05 Saba Sehrish : added create index map function to a namespace
-   2016-04-04 Gianluca Petrillo : Merge branch ‘v04_36_00_branch’ of ssh://cdcvs.fnal.gov/cvs/projects/larsim into v04_36_00_branch
-   2016-04-04 Gianluca Petrillo : Removed useless inclusion of iostream
-   2016-04-03 Saba Sehrish : Merge branch ‘v04_36_00_branch’ of ssh://cdcvs.fnal.gov/cvs/projects/larsim into v04_36_00_branch
-   2016-04-03 Saba Sehrish : minor change
-   2016-04-01 Gianluca Petrillo : Removed obsolete code.
-   2016-03-31 Saba Sehrish : renamed map variable, removed mchits and comments
-   2016-03-31 Gianluca Petrillo : Removed old piece of code
-   2016-03-30 Gianluca Petrillo : Merge branch ‘v04_36_00_branch’ into feature_v04_36_00/gp_MemoryOptimizationG4
-   2016-03-30 Gianluca Petrillo : Adapted dumpers from v5
-   2016-03-30 Gianluca Petrillo : Added dumpers for sim::SimChannel and sim::SimPhotons data products
-   2016-03-30 Gianluca Petrillo : Minor changes
-   2016-03-29 Gianluca Petrillo : Trivial interface change.
-   2016-03-29 Gianluca Petrillo : Flattened nested vector in photon library. Breaking change: some PhotonVisibilityService methods have changed signature.
-   2016-03-29 Gianluca Petrillo : In some way v5 version of dumper module ended up in v4 branch. Fixed.
-   2016-03-29 Gianluca Petrillo : Merge remote-tracking branch ‘origin/gp_MemoryOptimizationLArG4’ into v04_36_00_branch
-   2016-03-29 Saba Sehrish : added clear function for _mc_edeps
-   2016-03-28 Saba Sehrish : minor change to add mcparticles name
-   2016-03-28 Saba Sehrish : Remove an unexisting test directory from CMakeLists.txt
-   2016-03-28 Saba Sehrish : Merge remote branch ‘origin/gp_MemoryOptimizationLArG4’ into all_MemoryOptimization
-   2016-03-28 Saba Sehrish : used pair key
-   2016-03-27 Gianluca Petrillo : Merged two maps into one in LArVoxelReadout, and given more meaningful names to a bunch of variables.
-   2016-03-27 Gianluca Petrillo : During data transfer to data product, each particle is deleted as soon as it’s moved, to avoid memory spikes. A bug fix in nutools will make this almost completely redundant.
-   2016-03-27 Gianluca Petrillo : ParticleListAction now deletes a particle as soon as it knows it wouldn’t be saved. A complete revision of ParticleListAction is desireable to make this mechanism more robust.
-   2016-03-27 Saba Sehrish : uncommented _mc_edep and _track_index
-   2016-03-27 Saba Sehrish : minor cleanup
-   2016-03-26 Gianluca Petrillo : Flush the output buffer at every particle, preventing it from becoming huge.
-   2016-03-26 Saba Sehrish : replaced map of struct with a smaller map of index and a vector of structs
-   2016-03-25 Gianluca Petrillo : Track filtering moved early so that tracks are dropped as soon as we know we don’t want them. “Dropped” tracks are actually kept in the list, but pruned of most of the information.
-   2016-03-25 Saba Sehrish : changed the name of energycharge to deposit
-   2016-03-25 Saba Sehrish : minor cleanup
-   2016-03-25 Saba Sehrish : merged two maps into one with energy and charge as struct, step 1
-   2016-03-24 Saba Sehrish : added std::unique_ptr return type
-   2016-03-24 Gianluca Petrillo : Removed the ability to copy ParticleList containers. Added the ability to move ParticleList containers. MCParticle objects are now moved out of ParticleListAction, and into the data product when needed.
-   2016-03-24 Gianluca Petrillo : Particle and particle list objects moved from static to ParticleListAction members
-   2016-03-24 Gianluca Petrillo : Moved the filtering logic into an object (also propagated to ParticleListAction)
-   2016-03-24 Saba Sehrish : changed to unique ptr
-   2016-03-23 Saba Sehrish : one fcl file to create all three output files
-   2016-03-23 Saba Sehrish : Changed return types ofMCTrack and MCShower Reconstruct functions, remove destructor, added explict to constructor
-   2016-03-22 Saba Sehrish : added const ref and remove virtual destructors
-   2016-03-22 larsoft User : change the return type of Reconstruct in MCShowerRecoAlg
-   2016-02-04 Lynn Garren : larsim v04_21_00 for larsoft v04_36_00

larevt v05_06_03
----------------------------------------

-   2016-04-14 Lynn Garren : larevt v05_06_03 for larsoft v05_09_00

lardata v05_07_02
------------------------------------------

-   2016-04-14 Lynn Garren : lardata v05_07_02 for larsoft v05_09_00
-   2016-04-14 Lynn Garren : nutools v1_24_02

larcore v05_07_00
------------------------------------------

-   2016-04-14 Lynn Garren : larcore v05_07_00 for larsoft v05_09_00
-   2016-04-08 Hamlet : printBacktrace() now supports OSX (tested only on Darwin 14/Yosemite)
-   2016-04-08 Gianluca Petrillo : Make it easier to change default options in printBacktrace()
-   2016-04-08 Gianluca Petrillo : Added backtrace printing utility (need to be tested on OSX)

larbatch v01_21_00
--------------------------------------------

-   2016-04-14 Lynn Garren : larbatch v01_21_00 for larsoft v05_09_00
-   2016-04-13 yuntse : Improve error detection for analysis files.
-   2016-04-11 yuntse : Add timeouts for access to dCache files. Reduce the number of “addLayerTwo” calls.

larutils v1_06_00
------------------------------------------

-   2016-04-14 Lynn Garren : larutils v1_06_00 for larsoft v05_09_00
-   2016-04-13 Lynn Garren : add s30 and s31
-   2016-04-13 Lynn Garren : adding s31
