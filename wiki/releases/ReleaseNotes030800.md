LArSoft v03_08_00 Release Notes
======================================================================

-   **Table of contents**
-   [LArSoft v03_08_00 Release Notes](#LArSoft-v03_08_00-Release-Notes)
    -   [Purpose](#Purpose)
    -   [New features](#New-features)
    -   [Bug fixes](#Bug-fixes)
    -   [Updated dependencies](#Updated-dependencies)
-   [Change List](#Change-List)
    -   [larsoft v03_08_00](#larsoft-v03_08_00)
    -   [lareventdisplay v03_04_00](#lareventdisplay-v03_04_00)
    -   [larexamples v03_02_13](#larexamples-v03_02_13)
    -   [larpandora v03_07_00](#larpandora-v03_07_00)
    -   [larana v03_04_00](#larana-v03_04_00)
    -   [larreco v03_07_00](#larreco-v03_07_00)
    -   [larsim v03_06_00](#larsim-v03_06_00)
    -   [larevt v03_04_01](#larevt-v03_04_01)
    -   [lardata v03_08_00](#lardata-v03_08_00)
    -   [larcore v03_05_00](#larcore-v03_05_00)
    -   [larbatch v01_03_00](#larbatch-v01_03_00)
    -   [larutils v1_00_01](#larutils-v1_00_01)

[list of LArSoft releases](LArSoft_release_list)
[Download instructions](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v03_08_00/larsoft-v03_08_00.html)

Purpose
--------------------

Working towards MicroBooNE MCC6

New features
------------------------------

Bug fixes
------------------------

Updated dependencies
----------------------------------------------

||
|Product|Version|Qualifier|Notes|
|ups|v5_1_3||works as expected with sh, zsh, and tcsh|

Change List
============================

larsoft v03_08_00
------------------------------------------

-   2015-01-28 Lynn Garren : package versions
-   2015-01-28 Lynn Garren : headers for larsoft v03_08_00

lareventdisplay v03_04_00
----------------------------------------------------------

-   2015-01-28 Wesley Ketchum : Merge remote-tracking branch ‘origin/ub_showerreco’ into develop
-   2015-01-27 Tracy Usher : Include options for drawing PFParticles from 3D display into the Ortho display
-   2015-01-26 Tracy Usher : Update to include recent changes by others and to use new options for PFParticle 3D display
-   2015-01-26 Tracy Usher : Add options for 3D PFParticle drawing: 1) if two PCA axes present, draw only best or both, 2) if SpacePoints have been “tagged” then draw only “skeleton” points or “all” points
-   2015-01-26 Tracy Usher : Merge branch ‘develop’ into feature/usher_development_v03_05_01
-   2015-01-23 Tingjun Yang : Use trackfinderalgorithms.fcl.
-   2015-01-15 Andrzej Szelc : adjustments to make GeometryUtilities fmwk independent
-   2015-01-13 Tracy Usher : Lots of updates aimed at displaying PFParticles in 2D and 3D, also taking into account their associations to clusters, hits, tracks, PCAxes, etc.
-   2015-01-13 Tracy Usher : Add the ability to display PFParticles
-   2015-01-13 Tracy Usher : Several fixes to the simulation drawer: 1) reorganize how the voxel display is done to make it faster and able to draw all the uboone MCparticles in reasonable time, 2) add display of MCTrajectories, 3) reference to t0 from timing service in order to get the CR backgrounds to display in the “correct” place, 3) finally, fix simulation display for the ortho view as well.
-   2015-01-13 Tracy Usher : Adding the options to draw PFParticles, small changes to simply add references to the objects
-   2015-01-06 Andrzej Szelc : temporary fixes to be inline with the branch
-   2015-01-06 Andrzej Szelc : Merge branch ‘develop’ into ub_showerreco
-   2014-08-22 Ben Carls : Merge branch ‘develop’ into ub_showerreco
-   2014-08-11 Andrzej Szelc : Merge branch ‘develop’ into ub_showerreco merging with develop
-   2014-05-24 drinkingkazu : Propagate change in PxUtil (name change, no effect in functionality) –kazu

larexamples v03_02_13
--------------------------------------------------

-   2015-01-28 Lynn Garren : larexamples v03_02_13

larpandora v03_07_00
------------------------------------------------

-   2015-01-24 Andrew Blake : Merge branch ‘feature/blake_updateCosmics’ into develop, updating track-building mdoule for use on cosmics, and adding information to PFParticle analysis module.
-   2015-01-24 Andrew Blake : Adding track end vertex and direction to PFParticle analysis module
-   2015-01-24 Andrew Blake : Add a cosmic flag to the track building, which sets the track vertex to be the highest end of the track trajectory.
-   2015-01-24 Andrew Blake : Adding more information to analysis modules

larana v03_04_00
----------------------------------------

-   2015-01-29 Alex Himmel : Merge branch ‘feature/OpDetResponseService’ into develop
-   2015-01-24 Alex Himmel : Add method to convert readout channel to geometry channel for determining position. By default it returns the same number since by default the mapping is one-to-one.
-   2015-01-23 Alex Himmel : Merge remote-tracking branch ‘origin/develop’ into feature/OpDetResponseService
-   2015-01-22 Wesley Ketchum : Merge remote-tracking branch ‘origin/develop’ into feature/wketchum_CosmicTagWork
-   2015-01-22 Wesley Ketchum : fix bug: check mctrack size on comparison, and do not make flash hypothesis for mctrack with zero size
-   2015-01-21 Wesley Ketchum : fix bug in dEdx vector for FlashHypothesisCreator
-   2015-01-21 Alex Himmel : Return the number of optical channels. Defaults to the number of channels in the geometry unless doNOpChannels is otherwise implemented in the experiment-specific service.
-   2015-01-21 Alex Himmel : Extend the OpDetResponseInterface to allow photons which occur on one geometric channel to be detected on another. Allows cross talk and other complicated relationships (e.g. 2 or 3 SiPM’s on a single LBNE light guide).
-   2015-01-20 Alex Himmel : Add in OpDetResponse for Microboone (previous behavior) and Default (does nothing).
-   2015-01-20 Alex Himmel : Use detected photons when creating a photon library.
-   2014-12-16 Alex Himmel : - Create OpDetResponseInterface service interface which handles the response of the optical detectors to photons. Each experiment implements their own optical detector response or uses the default which does nothing. - Use OpDetResponseInterface when reading in photon collections in OpMCDigi - Use OpDetResponseInterface when reading in photon collections in the SimPhotonCounter.
-   2015-01-20 Wesley Ketchum : update fcl files
-   2015-01-20 Wesley Ketchum : move creation of total photon vector to SimPhotonCounter
-   2015-01-20 Wesley Ketchum : add in total hypothesis comparisons
-   2015-01-20 Wesley Ketchum : fill module analyze function
-   2015-01-20 Wesley Ketchum : update interface to simphotons: use simphotons vector, not the simphotons collection
-   2015-01-20 Wesley Ketchum : removing the FlashHypothesisAna in CosmicRemoval, and updates to FlashHypothesis in OpticalDetector to make it compile properly
-   2015-01-20 Wesley Ketchum : Merge branch ‘feature/wketchum_CosmicTagWork’ of ssh://oppenheimer.fnal.gov/home/wketchum/larsoft/larsoft_development/srcs/larana into feature/wketchum_CosmicTagWork
-   2015-01-20 Wesley Ketchum : add in a FlashHypothesisAna module
-   2015-01-20 Wesley Ketchum : fix typo in mctrack loop, and prefer [] to .at
-   2015-01-20 Wesley Ketchum : add in MCBase-based flash hypothesis, and give optionin AnaAlg for setting dEdx
-   2015-01-19 Wesley Ketchum : finish the FlashHypothesisAnaAlg, and get it to compile
-   2015-01-19 Wesley Ketchum : rename FlashHypothesisAlg to FlashHypothesisCreator
-   2015-01-19 Wesley Ketchum : new FlashUtilties, and a FlashHypothesisComparison object that creates a tree with results, to be used in an ana module
-   2015-01-18 Wesley Ketchum : add in FlashHypothesisAnaAlg, initial commit
-   2015-01-18 Wesley Ketchum : remove GetFlashHypothesis from SimPhotonCounterAlg
-   2015-01-18 Wesley Ketchum : remove FlashHypothesisCollection from SimPhotonCounter; add in Compare method for FlashHypothesis
-   2015-01-17 Wesley Ketchum : initial commit for SimPhotonCounter utitlities: a counter utility class, and an alg class that can interface that with LArSoft
-   2015-01-16 Wesley Ketchum : Merge remote-tracking branch ‘origin/develop’ into feature/wketchum_CosmicTagWork
-   2015-01-15 Wesley Ketchum : minor compiling fixes, with updating Cmake commands to make extra FlashHypothesis library
-   2015-01-15 Wesley Ketchum : add in a constructor with size for HypothesisCollection, and finish refactoring flash alg
-   2015-01-15 Wesley Ketchum : more refactoring: add in addition rule for hypothesis collection, and allow normalization, and rework the flash alg a little
-   2015-01-15 Wesley Ketchum : refactoring the alg a little: fully added a FlashHypothesisCollection
-   2015-01-14 Wesley Ketchum : include guard on flash hypothesis, and a quick little standalone flash hypothesis calculator helper
-   2015-01-14 Wesley Ketchum : update constructor to use SetHypothesisVectorAndErrorVector method
-   2015-01-14 Wesley Ketchum : SetHypothesisVectorAndError method added
-   2015-01-14 Wesley Ketchum : add empty FlashHypothesis.cxx file, and make fixes to FlashHypothesis object
-   2015-01-09 Wesley Ketchum : separate the FlashHypothesis (simple and testable on its own) from the rest
-   2015-01-09 Wesley Ketchum : refactor FlashHypothesis code to live in Optical detector, and provide both late and prompt hypotheses
-   2015-01-08 Wesley Ketchum : Merge branch ‘feature/wketchum_BezierTrack’ into feature/wketchum_CosmicTagWork
-   2015-01-06 Wesley Ketchum : removing the deprecated CosmicTagger module file
-   2014-11-24 Wesley Ketchum : add in histograms for comparisons

larreco v03_07_00
------------------------------------------

-   2015-01-29 Lynn Garren : add missing libraries to link list
-   2015-01-28 Wesley Ketchum : Merge branch ‘develop’ of ssh://cdcvs.fnal.gov/cvs/projects/larreco into develop
-   2015-01-28 Wesley Ketchum : Merge remote-tracking branch ‘origin/ub_showerreco’ into develop
-   2015-01-28 Herbert Greenlee : Merge branch ‘feature/greenlee_mcreco_trackana’ into develop
-   2015-01-28 Tingjun Yang : Merge branch ‘develop’ of ssh://cdcvs.fnal.gov/cvs/projects/larreco into develop
-   2015-01-28 Tingjun Yang : Move TrackAnaCT_module.cc to lbnecode.
-   2015-01-28 Gianluca Petrillo : ClusterMergeAlg depends on SimulationBase (nutools): added in CMakeLists.txt
-   2015-01-28 Herbert Greenlee : Merge remote-tracking branch ‘origin/develop’ into feature/greenlee_mcreco_trackana
-   2015-01-28 drinkingkazu : Adding CMergeHelper and removed ClusterMergeHelper under RecoAlg –kazu
-   2015-01-27 Tracy Usher : Merge branch ‘develop’ into feature/usher_cluster3d
-   2015-01-27 Tracy Usher : Don’t skeletonize for parallelograms of death to improve performance
-   2015-01-27 drinkingkazu : Merge branch ‘develop’ into ub_showerreco
-   2015-01-27 drinkingkazu : Update in MCComp –kazu
-   2015-01-27 Herbert Greenlee : Merge remote-tracking branch ‘origin/develop’ into feature/greenlee_mcreco_trackana
-   2015-01-26 Tracy Usher : Move seed start position of beginning of seed hits, use PCA axis position at arc length to first hit.
-   2015-01-26 Tracy Usher : Change assignment of PCA axis id to help event display “get the right one”
-   2015-01-25 Eric Church : Spacepoint-Hit Assns are properly created by TrackStitcher so that only Assns for SpacePoints used by desired Tracker, not necessarily all those output by the SpacePoint creater module (which may or may not be the same as the Tracker module), are produced. Accomodation is made also for the fact that the SpacePoints may be read in as a vector\<PtrVector\<\>\> as come from SpacePointFinder or as a flattened vector\<\> as come from CosmicTracker.
-   2015-01-24 Tingjun Yang : Move hitfindermodules_lbne.fcl to lbnecode.
-   2015-01-24 Eric Church : Different CreateAssns() constructor.
-   2015-01-22 Tingjun Yang : Sort spacepoints in vertical directory.
-   2015-01-22 Tingjun Yang : Move lbne35t configuration to lbnecode. If you include hitfindermodules_lbne.fcl for your 35t job, you need to include hitfindermodules_lbne35t.fcl from now on, which lives in lbnecode/lbne/HitFinderLBNE/hitfindermodules_lbne35t.fcl.
-   2015-01-22 Eric Church : Add creation of Assns:Sppts,Hits in Stitcher. May still be buggy…
-   2015-01-21 Lynn Garren : larreco v03_06_00 for larsoft v03_07_00
-   2015-01-14 Lynn Garren : larreco v03_05_00 for larsoft v03_06_00
-   2015-01-14 Tingjun Yang : Make sure bin is at least 2 before subtracting 2.
-   2015-01-13 Tingjun Yang : Update fcl parameters for fasthitfinder.
-   2015-01-13 Michelle Stancari : add default threshold values
-   2015-01-13 Michelle Stancari : add default threshold values
-   2015-01-13 Michelle Stancari : new hitfinder that runs on rawdata
-   2015-01-13 Michelle Stancari : Add RawData for rawhitfinder
-   2015-01-13 Michelle Stancari : Add RawHitFinder configuration
-   2015-01-13 Michelle Stancari : Add switch for hit constructor
-   2015-01-11 Michelle Stancari : add switch to choose appropriate hit constructor
-   2015-01-07 Wesley Ketchum : remove some couts, and make all the instance labels good
-   2015-01-07 Wesley Ketchum : bunch of cout statements for debugging
-   2015-01-06 Wesley Ketchum : add in creation og ub_style tracks in bezier tracker
-   2015-01-25 Eric Church : Merge branch ‘develop’ of ssh://cdcvs.fnal.gov/cvs/projects/larreco into develop
-   2015-01-25 Eric Church : Spacepoint-Hit Assns are properly created by TrackStitcher so that only Assns for SpacePoints used by desired Tracker, not necessarily all those output by the SpacePoint creater module (which may or may not be the same as the Tracker module), are produced. Accomodation is made also for the fact that the SpacePoints may be read in as a vector\<PtrVector\<\>\> as come from SpacePointFinder or as a flattened vector\<\> as come from CosmicTracker.
-   2015-01-24 Tracy Usher : Include the 3D clustering fhicl parameters
-   2015-01-24 Tracy Usher : Make cmake aware of the 3d clustering algorithms in the RecoAlg/Cluster3D folder
-   2015-01-24 Tracy Usher : Add the 3D clustering producer module
-   2015-01-24 Tracy Usher : Include definition of fhicl parameters used by the 3d clustering algorithms
-   2015-01-24 Tracy Usher : Make cmake aware of the subfolder Cluster3DAlgs
-   2015-01-24 Tracy Usher : Initial import of algorithms to be employed by the 3D clustering, including the creation of 3D hits from 2D hits, their clustering and then processing to do some forms of feature extraction.
-   2015-01-24 Tingjun Yang : Move hitfindermodules_lbne.fcl to lbnecode.
-   2015-01-24 Eric Church : Merge branch ‘develop’ of ssh://cdcvs.fnal.gov/cvs/projects/larreco into develop
-   2015-01-24 Eric Church : Different CreateAssns() constructor.
-   2015-01-22 Tingjun Yang : Sort spacepoints in vertical directory.
-   2015-01-22 Tingjun Yang : Move lbne35t configuration to lbnecode. If you include hitfindermodules_lbne.fcl for your 35t job, you need to include hitfindermodules_lbne35t.fcl from now on, which lives in lbnecode/lbne/HitFinderLBNE/hitfindermodules_lbne35t.fcl.
-   2015-01-22 Eric Church : Add creation of Assns:Sppts,Hits in Stitcher. May still be buggy…
-   2015-01-21 drinkingkazu : Merge branch ‘feature/mccomp’ into ub_showerreco
-   2015-01-21 drinkingkazu : add energy correction handle –kazu
-   2015-01-21 drinkingkazu : reorganize fcl file location –kazu
-   2015-01-21 drinkingkazu : Importing ShowerReco3D package. Currently only ShowerRecoAlg is imported as an algorithm. Pi0ShowerRecoAlg needs to be fixed/updated in LarLite (temporaily placed under arxiv dir but don’t attempt to compile or use it…) –kazu
-   2015-01-21 drinkingkazu : TEMPORARY: updated producers to be compatible w/ an updated recob::Shower. Need to be fixed although original producers weren’t storing aal producers’ output was not really useful and I highly doubt anyone used it… –kazu
-   2015-01-21 drinkingkazu : Updated producers for an updated CMTool
-   2015-01-21 drinkingkazu : Updated Polygon2D –kazu
-   2015-01-21 drinkingkazu : Updated ClusterMergeHelper for an updated CMTool –kazu
-   2015-01-21 drinkingkazu : Implemented CMTool in LArSoft (actually an updated version in showerreco branch) –kazu
-   2015-01-19 drinkingkazu : Merge branch ‘develop’ into ub_showerreco
-   2015-01-15 Andrzej Szelc : bringing ClusterParamsAlg to newest version
-   2015-01-09 Herbert Greenlee : Merge branch ‘develop’ into feature/greenlee_mcreco_trackana
-   2015-01-08 Herbert Greenlee : Update SeedAna to use MCTracks instead of MCParticles.
-   2015-01-08 Herbert Greenlee : Technical change remove some unnecessary use of pointers.
-   2015-01-08 Herbert Greenlee : Remove debugging printout.
-   2015-01-08 Herbert Greenlee : Modify TrackAna to use MCTracks instead of MCParticles.
-   2015-01-08 drinkingkazu : comment not yet done but a working version of purity/efficiency calculator –kazu
-   2015-01-05 Andrzej Szelc : merge develop into ub_showerreco
-   2014-08-22 Ben Carls : Cleaning up ClusterFinder directory, removing \~ files
-   2014-08-22 Ben Carls : Merge branch ‘develop’ into ub_showerreco
-   2014-08-11 Andrzej Szelc : merging ub_showerreco with develop
-   2014-07-21 Ben Carls : Updating cluster crawler shower stuff
-   2014-07-21 Ben Carls : Updating cluster crawler shower stuff
-   2014-06-13 drinkingkazu : Adding a handle to control \# of minimum hits (to be passed onto ClusterParamsAlg) –kazu
-   2014-06-13 drinkingkazu : Update: (**) More algorithms added (**) Implement SetVerbose() in CBoolAlgoBase … CMergeManager will call this if verbosity level is set to \<= kPerMerging (**) Implement Report() function call (CBoolAlgoBase) in CMergeManager … called after each iteration if level \<= kPerIteration (**) Fixed seg-fault in ClusterParamsAlg that is caused when \# hits \< 1
-   2014-06-03 drinkingkazu : Adding script to generate new CMAlgo class –kazu
-   2014-06-02 Ben Carls : Saving the new clusters to the event
-   2014-06-02 drinkingkazu : example module to run cluster merging –kazu
-   2014-06-02 drinkingkazu : Updated ClusterMergeHelper to be more helpful –kazu
-   2014-06-02 drinkingkazu : Updating … renaming ClusterMergeTool to CMTool as matching stuff also goes in there. Added ClusterMergeHelper as a new version of ClusterMergeAlg .. this serves as an interface to LArSoft data products –kazu
-   2014-05-24 drinkingkazu : Something that shouldn’t have been added … kazu
-   2014-05-24 drinkingkazu : Cluster merge tool (clustering of clusters) added –kazu
-   2014-05-24 drinkingkazu : Updated ClusterParamsAlg to the latest version… took out some modules from compilation as they are either deprecated or need modification to accommodate update –kazu
-   2014-05-23 drinkingkazu : Modifying according to an update on GeometeryUtilities –kazu

larsim v03_06_00
----------------------------------------

-   2015-01-29 Lynn Garren : add missing root library to the link list
-   2015-01-28 Lynn Garren : cleanup CMakeLists.txt
-   2015-01-28 Herbert Greenlee : Remove -r dynamic.
-   2015-01-27 Herbert Greenlee : Add subdirectory MCSTReco.

larevt v03_04_01
----------------------------------------

-   2015-01-28 Lynn Garren : larevt v03_04_01

lardata v03_08_00
------------------------------------------

-   2015-01-28 Lynn Garren : cleanup CMakeLists.txt
-   2015-01-28 Wesley Ketchum : Merge remote-tracking branch ‘origin/ub_showerreco’ into develop
-   2015-01-28 drinkingkazu : Adding shower length –kazu
-   2015-01-27 drinkingkazu : Merge branch ‘develop’ into ub_showerreco
-   2015-01-24 Tracy Usher : Import definition of some utility classes for use by the 3D clustering code. This includes several class definitions that all for volatile data members while the 3D clustering algorithms operate.
-   2015-01-21 drinkingkazu : bug fix in hit vector creation –kazu
-   2015-01-21 drinkingkazu : Update CalorimetryAlg to enhance updates in LArLite –kazu
-   2015-01-19 drinkingkazu : merge conflict resolved
-   2015-01-16 Andrzej Szelc : implement new definition of shower object
-   2015-01-15 Andrzej Szelc : removing fmwk dependency from Geometryutilities
-   2015-01-06 Andrzej Szelc : adding interfaced to newest version of GeometryUtilities in order to get event display to compile
-   2015-01-05 Andrzej Szelc : bring GeometryUtilities up to newest LArLite version. This temporarily breaks code downstream until porting is complete
-   2015-01-05 Andrzej Szelc : Merge branch ‘develop’ into ub_showerreco
-   2014-08-22 Ben Carls : Merge branch ‘develop’ into ub_showerreco
-   2014-08-11 Andrzej Szelc : Merge branch ‘develop’ into ub_showerreco getting ub_showerreco up to date
-   2014-06-13 drinkingkazu : Making a shared instance available –kazu
-   2014-05-23 drinkingkazu : Merging development from ShowerReco group –kazu

larcore v03_05_00
------------------------------------------

-   unchanged

larbatch v01_03_00
--------------------------------------------

-   2015-01-28 Herbert Greenlee : Get rid of unused override_merge argument from ProjectDef constructor.
-   2015-01-28 Herbert Greenlee : Add comment.
-   2015-01-28 Herbert Greenlee : Modularize audit.
-   2015-01-28 Herbert Greenlee : Modularize histogram merging.
-   2015-01-28 Herbert Greenlee : Move some functionality out of the main program in project.py into functions. Add support for querying status of the batch system (jobsub_q).
-   2015-01-23 Herbert Greenlee : Do some more tweaks related to log directories.
-   2015-01-23 Herbert Greenlee : Add concept of log directory.
-   2015-01-23 Herbert Greenlee : Add log directory.
-   2015-01-23 Sowjanya Gollapinni : Add \<TFileName\> element to specify TFileName (files modified: project.py, stagedef.py and condor_lar.sh). Also modify project.py to accommodate merging TFile related json information coming from various sources to form a final TFile json file (files modified: project.py)
-   2015-01-22 Herbert Greenlee : Add ProjectStatus and StageStatus python classes.

larutils v1_00_01
------------------------------------------

-   2015-01-28 Lynn Garren : larutils v1_00_01 for larsoft v03_08_00
-   2015-01-28 Tingjun Yang : Add buildLBNEutil.sh.
