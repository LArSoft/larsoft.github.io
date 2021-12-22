LArSoft v04\_16\_00 Release Notes(#LArSoft-v04_16_00-Release-Notes)
======================================================================

-   **Table of contents**
-   [LArSoft v04\_16\_00 Release Notes](#LArSoft-v04_16_00-Release-Notes)
    -   [Purpose](#Purpose)
    -   [New features](#New-features)
    -   [Bug fixes](#Bug-fixes)
    -   [Updated dependencies](#Updated-dependencies)
-   [Change List](#Change-List)
    -   [larsoft v04\_16\_00](#larsoft-v04_16_00)
    -   [lareventdisplay v04\_06\_00](#lareventdisplay-v04_06_00)
    -   [larexamples v04\_04\_16](#larexamples-v04_04_16)
    -   [larpandora v04\_04\_16](#larpandora-v04_04_16)
    -   [larana v04\_08\_00](#larana-v04_08_00)
    -   [larreco v04\_12\_00](#larreco-v04_12_00)
    -   [larsim v04\_08\_03](#larsim-v04_08_03)
    -   [larevt v04\_08\_06](#larevt-v04_08_06)
    -   [lardata v04\_11\_00](#lardata-v04_11_00)
    -   [larcore v04\_13\_00](#larcore-v04_13_00)
    -   [larbatch v01\_12\_01](#larbatch-v01_12_01)
    -   [larutils v1\_02\_01](#larutils-v1_02_01)

[list of LArSoft releases](LArSoft_release_list)\
[Download instructions](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v04_16_00/larsoft-v04_16_00.html)

Purpose(#Purpose)
--------------------

New features(#New-features)
------------------------------

-   First release with art v1\_15\_01 (s14)
-   Integrate larreco feature/bb\_ccwork
-   Builds of various products have been improved.

Bug fixes(#Bug-fixes)
------------------------

Updated dependencies(#Updated-dependencies)
----------------------------------------------

  --------------- ---------------- ---------------- -------------------------------------------------------------------------
  Product         Version          Qualifier        Notes
  art             v1\_15\_01       e7:nu            [Release\_Notes\_11501](/redmine/projects/art/wiki/Release_Notes_11501)
  ifdh\_art       v1\_12\_01       e7:nu:s14        
  nutools         v1\_14\_01       e7 & e7:noifdh   
  artdaq\_core    v1\_04\_15       e7:nu:s14        
  artextensions   v1\_01\_07       e7:nu:s14        
  ninja           v1\_6\_0                          
  xerces\_c       v3\_1\_1d        e7               
  cry             v1\_7d           e7               
  lhapdf          v5\_9\_1c        e7               
  log4cpp         v1\_1\_1c        e7               
  geant4          v4\_9\_6\_p04b   e7               
  genie           v2\_8\_6c        e7               
  dk2nu           v01\_01\_03c     e7               
  --------------- ---------------- ---------------- -------------------------------------------------------------------------

Change List(#Change-List)
============================

larsoft v04\_16\_00(#larsoft-v04_16_00)
------------------------------------------

-   2015-07-16 Lynn Garren : larsoft v04\_16\_00 for larsoft v04\_16\_00
-   2015-07-16 Lynn Garren : update manifest and buildcfg for art v1\_15\_01
-   2015-07-16 Lynn Garren : update product versions
-   2015-07-16 Lynn Garren : update dependency database

lareventdisplay v04\_06\_00(#lareventdisplay-v04_06_00)
----------------------------------------------------------

-   2015-07-16 Lynn Garren : lareventdisplay v04\_06\_00 for larsoft v04\_16\_00
-   2015-07-14 Thomas Warburton : Adding Optical Flash information to the Ortho3D view of event display
-   2015-07-10 Tracy Usher : Improvements to 3D simulation display: include display of incident neutrino trajectory, options to “gray out” MCParticles in order to emphasize other objects (e.g. recon items)
-   2015-07-08 bcarls : Merge branch ‘feature/bcarls\_cosmicEventDisplay’ into develop
-   2015-07-08 bcarls : Adding check in case a cosmic tagger label fcl parameter is missing
-   2015-07-06 bcarls : Added check to make sure cosmic tags exist before trying to grab one for a track
-   2015-07-06 bcarls : Added check to make sure cosmic tags exist before trying to grab one for a track
-   2015-07-06 bcarls : Merge tag ‘tags/v04\_05\_04’ into feature/bcarls\_cosmicEventDisplay
-   2015-07-06 Benjamin Carls : Adding fcl options
-   2015-06-29 Benjamin Carls : Taking out cout statements
-   2015-06-29 Benjamin Carls : Merge remote-tracking branch ‘origin’ into feature/bcarls\_cosmicEventDisplay
-   2015-06-29 Benjamin Carls : Correcting the cosmic event display code
-   2015-06-23 bcarls : Merge tag ‘tags/v04\_05\_01’ into feature/bcarls\_cosmicEventDisplay
-   2015-03-03 Ben Carls : Merge tag ‘tags/v04\_01\_00’ into feature/bcarls\_cosmicEventDisplay
-   2015-03-03 Ben Carls : Merging with develop
-   2015-02-12 Ben Carls : Correcting conflicts from merge
-   2015-02-12 Ben Carls : Correcting conflicts from merge
-   2015-02-11 Ben Carls : Merge tag ‘tags/v03\_04\_01’ into feature/bcarls\_cosmicEventDisplay
-   2015-01-22 Ben Carls : Merging with v03\_03\_02
-   2015-01-20 bcarls : Adding Sarah’s modifications that show which clusters have been tagged as cosmic

larexamples v04\_04\_16(#larexamples-v04_04_16)
--------------------------------------------------

-   2015-07-16 Lynn Garren : larexamples v04\_04\_16 for larsoft v04\_16\_00

larpandora v04\_04\_16(#larpandora-v04_04_16)
------------------------------------------------

-   2015-07-16 Lynn Garren : larpandora v04\_04\_16 for larsoft v04\_16\_00

larana v04\_08\_00(#larana-v04_08_00)
----------------------------------------

-   2015-07-16 Lynn Garren : larana v04\_08\_00 for larsoft v04\_16\_00
-   2015-07-15 Taritree Wongjirad : removed internal channel map stored by opflashfinder\_module. moved microboone specific opticaldetectormodules\_microboone.fcl to uboonecode
-   2015-07-14 Thomas Warburton : Fixing bug with calculate width
-   2015-07-08 Thomas Warburton : Changing simulation model to Modified Box from Birks.
-   2015-07-08 Lynn Garren : larsoft v04\_15\_00
-   2015-07-08 Tracy Usher : Fix bug which caused skipping of non-primary PFParticles, add associations between PFParticles and CosmicTags

larreco v04\_12\_00(#larreco-v04_12_00)
------------------------------------------

-   2015-07-16 Lynn Garren : larreco v04\_12\_00 for larsoft v04\_16\_00
-   2015-07-16 Lynn Garren : initialize some local variables to zero
-   2015-07-16 Lynn Garren : Merge branch ‘feature/bb\_ccwork’ into release/v04\_16\_00
-   2015-07-16 Bruce Baller : Replace lost code fragment and code cleanup
-   2015-07-16 Bruce Baller : Loosen matching cuts
-   2015-07-15 Mike Wallbank : Merge branch ‘develop’ of ssh://cdcvs.fnal.gov/cvs/projects/larreco into develop
-   2015-07-14 Mike Wallbank : MW: updated parameters for Blurred Clustering
-   2015-07-14 Herbert Greenlee : Fix bug in previous commit.
-   2015-07-14 Mike Wallbank : Updated the debug event display
-   2015-07-14 Bruce Baller : Add fHitFitErrFac
-   2015-07-14 Bruce Baller : add fMaxTrajPoints, fHitWidthFactor
-   2015-07-14 Bruce Baller : code cleanup
-   2015-07-14 Herbert Greenlee : Add histograms for short/low-momentum tracks. Tighten matching cuts.
-   2015-07-13 Mike Wallbank : Fixed a bug and removed a line of output from the previous commit
-   2015-07-13 Mike Wallbank : Added cluster merging stage – takes clusters after they are made and uses a PCA to merge clusters which lie on a straight line together
-   2015-07-13 Mike Wallbank : MW: updates to validation module – added completeness\*cleanliness histogram; option to only consider views with a minimum number of hits in; weight all histograms by size of cluster
-   2015-07-13 Robert Sulej : add function to correct spurious merging of tracks on 2D level (if two tracks are linear in 2D); this improves tracks in decay chains and also a bit in EM cascades;
-   2015-07-11 Robert Sulej : fix missing hits sorting along trajectory after track merging (only some configurations were affected, mostly in cascades)
-   2015-07-11 Robert Sulej : fix missing hits sorting along trajectory after track merging (only some configurations were affected, mostly in cascades)
-   2015-07-10 Robert Sulej : add helper function to find vtx initial position
-   2015-07-10 Bruce Baller : Merge branch ‘develop’ into feature/bb\_ccwork
-   2015-07-09 Mike Wallbank : MW: changes to blurred: dynamic blurring to assign the blur radii uniquely for each tpc/plane; fixed a bug with the minimum size of cluster
-   2015-07-09 Mike Wallbank : MW: updates to the validation module; can specify how many hits can be in a plane before analysing and makes a completeness\*cleanliness histogram
-   2015-07-09 Bruce Baller : Comment out print statements
-   2015-07-09 Bruce Baller : comment out message facility
-   2015-07-09 Bruce Baller : removed print statements
-   2015-07-09 Bruce Baller : Comment out print statements
-   2015-07-08 Robert Sulej : fix bug in numerical calculations causing endless loop
-   2015-07-08 Lynn Garren : larsoft v04\_15\_00
-   2015-07-08 Mike Wallbank : MW: Updates to the validation module
-   2015-07-08 Robert Sulej : Merge branch ‘develop’ of ssh://cdcvs.fnal.gov/cvs/projects/larreco into develop
-   2015-07-08 Robert Sulej : add optimization of tracks crossing tpcs, merging of track fragments within tpc (if happens at all), stitching of tracks across tpcs
-   2015-07-08 Bruce Baller : Added cosmic ray fiducial cut fcl parameter
-   2015-07-08 Bruce Baller : Update default tracking parameters
-   2015-07-07 Bruce Baller : Improve error handling
-   2015-07-06 Bruce Baller : Change MergeOverlap to angle cut
-   2015-07-06 Bruce Baller : Changed MergeOverlap to angle cut. Clean up code. Add error checking and recovery.
-   2015-07-06 Bruce Baller : Changed MergeOverlap to angle cut
-   2015-07-06 Bruce Baller : Comment out print and debugging statements
-   2015-07-02 Bruce Baller : product\_deps incompatible versions for larsim and nutools
-   2015-07-02 Bruce Baller : removed CCHitRefinerAlg
-   2015-07-02 Bruce Baller : Merge branch ‘feature/bb\_ccwork’ of ssh://cdcvs.fnal.gov/cvs/projects/larreco into feature/bb\_ccwork
-   2015-07-02 Bruce Baller : renamed trackfindermodules\_argoneut.fcl
-   2015-07-02 Bruce Baller : Change commented out print statements
-   2015-07-02 Bruce Baller : Replace fHitInCluster with inClus
-   2015-07-02 Bruce Baller : Replace fHitInCluster with inClus.
-   2015-07-02 Bruce Baller : Change default ClusterCrawlerAlg fcl setttings
-   2015-07-02 Bruce Baller : Replace GetHitInCluster with GetinClus
-   2015-07-02 Bruce Baller : Replace GetHitInCluster with GetInClus
-   2015-06-23 Tingjun Yang : Merge branch ‘feature/bb\_ccwork’ of ssh://cdcvs.fnal.gov/cvs/projects/larreco into feature/bb\_ccwork
-   2015-06-23 Bruce Baller : Merge branch ‘feature/bb\_ccwork’ of ssh://cdcvs.fnal.gov/cvs/projects/larreco into feature/bb\_ccwork
-   2015-06-23 Bruce Baller : comment out print statements
-   2015-06-23 Bruce Baller : Add RestoreObsoleteCluster
-   2015-06-23 Bruce Baller : Fix SplitCluster
-   2015-06-23 Bruce Baller : Fix SplitCluster
-   2015-06-23 Bruce Baller : Merge branch ‘feature/bb\_ccwork’ of ssh://cdcvs.fnal.gov/cvs/projects/larreco into feature/bb\_ccwork
-   2015-06-23 Tingjun Yang : Merge branch ‘develop’ into feature/bb\_ccwork
-   2015-06-23 Tingjun Yang : Check for number of trajectory points.
-   2015-06-22 Bruce Baller : Merge branch ‘develop’ into feature/bb\_ccwork
-   2015-06-22 Bruce Baller : code fixes
-   2015-06-22 Tingjun Yang : Merge branch ‘develop’ into feature/bb\_ccwork
-   2015-06-22 Bruce Baller : Minor changes
-   2015-06-22 Bruce Baller : Handle 2-plane TPCs
-   2015-06-22 Bruce Baller : Add vertex fitting parameters
-   2015-06-20 Bruce Baller : Fix error weighting formula
-   2015-06-20 Bruce Baller : Vertex fit algorithm
-   2015-06-20 Bruce Baller : Add vertex fit fcl parameter
-   2015-06-20 Bruce Baller : Fit vertices and put into the event record
-   2015-06-17 Bruce Baller : Changed calling arguments
-   2015-06-17 Bruce Baller : Simplified and improved the algorithm.
-   2015-06-17 Bruce Baller : Change calling arguments
-   2015-06-17 Bruce Baller : Change calling arguments. Add hit error weighting.
-   2015-06-16 Bruce Baller : Replace hit unsigned short with unsigned int. Vertex finding improvements.
-   2015-06-16 Bruce Baller : Change vtx Wght to NClusters. Add vtx ProcCode. Replace VtxWghtAndFit with FitAllVtx. Add vertex chisq routines
-   2015-06-16 Bruce Baller : Save EndPoints to the event
-   2015-06-11 Bruce Baller : change std::cout to mf::LogError
-   2015-06-10 Bruce Baller : Add PrintAllClusters
-   2015-06-08 Bruce Baller : add new fcl parameter
-   2015-06-08 Bruce Baller : Change std::cout to mf::LogError
-   2015-06-08 Bruce Baller : Change short to int for hit indices
-   2015-06-08 Bruce Baller : Set MergeOverlap true
-   2015-06-02 Bruce Baller : Add hits analysis routine that is normally commented out
-   2015-06-02 Bruce Baller : Change seed cluster cuts and clean up code
-   2015-06-01 Bruce Baller : Merge branch ‘develop’ into feature/bb\_ccwork
-   2015-06-01 Bruce Baller : add error checking
-   2015-06-01 Bruce Baller : Use IterateTPCIDs
-   2015-05-30 Bruce Baller : temp commit
-   2015-05-29 Bruce Baller : Add cctrackmaker fcl parameters
-   2015-05-29 Bruce Baller : Major re-write
-   2015-05-28 Bruce Baller : Add new ClusterCrawler fcl parameters and adjust the default setting for others
-   2015-05-28 Bruce Baller : Merge code improvements with gp\_breakcrawler
-   2015-05-28 Bruce Baller : Merge code improvements with gp\_breakcrawler
-   2015-05-28 Bruce Baller : Add channel filter header file
-   2015-05-28 Bruce Baller : Add bad channel check
-   2015-05-28 Bruce Baller : convert floats to doubles

larsim v04\_08\_03(#larsim-v04_08_03)
----------------------------------------

-   2015-07-16 Lynn Garren : larsim v04\_08\_03 for larsoft v04\_16\_00
-   2015-07-14 Gleb Sinev : Fix a bug in printVecs method of SingleGen\_module.

larevt v04\_08\_06(#larevt-v04_08_06)
----------------------------------------

-   2015-07-16 Lynn Garren : larevt v04\_08\_06 for larsoft v04\_16\_00

lardata v04\_11\_00(#lardata-v04_11_00)
------------------------------------------

-   2015-07-16 Lynn Garren : lardata v04\_11\_00 for larsoft v04\_16\_00
-   2015-07-09 Matthew Thiesse : Add new clock for external muon counter system (orig. 35ton)

larcore v04\_13\_00(#larcore-v04_13_00)
------------------------------------------

-   2015-07-16 Lynn Garren : larcore v04\_13\_00 for larsoft v04\_16\_00
-   2015-07-15 Gianluca Petrillo : Fixed a bug in the selection of geometry tests (another)
-   2015-06-25 Gianluca Petrillo : Fixed a bug in the selection of geometry tests

larbatch v01\_12\_01(#larbatch-v01_12_01)
--------------------------------------------

-   2015-07-16 Lynn Garren : larbatch v01\_12\_01 for larsoft v04\_16\_00
-   2015-07-11 Herbert Greenlee : Don’t allow duplicate process number for generator stages.
-   2015-07-11 Herbert Greenlee : Delete jobids.list before rewriting it.
-   2015-06-26 Herbert Greenlee : Add lar command line option –rethrow-default.

larutils v1\_02\_01(#larutils-v1_02_01)
------------------------------------------

-   2015-07-16 Lynn Garren : larutils v1\_02\_01 for larsoft v04\_16\_00
-   2015-07-16 Lynn Garren : support s14
-   2015-07-03 Herbert Greenlee : Use uboone.opensciencegrid.org instead of oasis.opensciencegrid.org.
-   2015-07-09 Herbert Greenlee : Revert “Use uboone.opensciencegrid.org instead of oasis.opensciencegrid.org.”
-   2015-07-08 Lynn Garren : using nu-v1\_13\_01
