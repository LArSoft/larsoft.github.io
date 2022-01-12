LArSoft v04_00_00_rc1 Release Notes
===============================================================================

-   **Table of contents**
-   [LArSoft v04_00_00_rc1 Release Notes](#LArSoft-v04_00_00_rc1-Release-Notes)
    -   [Purpose](#Purpose)
    -   [About this release](#About-this-release)
    -   [Using v04_00_00_rc1](#Using-v04_00_00_rc1)
-   [Change List](#Change-List)
    -   [larsoft v04_00_00_rc1](#larsoft-v04_00_00_rc1)
    -   [lareventdisplay v04_00_00_rc1](#lareventdisplay-v04_00_00_rc1)
    -   [larexamples v04_00_00_rc1](#larexamples-v04_00_00_rc1)
    -   [larpandora v04_00_00_rc1](#larpandora-v04_00_00_rc1)
    -   [larana v04_00_00_rc1](#larana-v04_00_00_rc1)
    -   [larreco v04_00_00_rc1](#larreco-v04_00_00_rc1)
    -   [larsim v04_00_00_rc1](#larsim-v04_00_00_rc1)
    -   [larevt v04_00_00_rc1](#larevt-v04_00_00_rc1)
    -   [lardata v04_00_00_rc1](#lardata-v04_00_00_rc1)
    -   [larcore v04_00_00_rc1](#larcore-v04_00_00_rc1)

[list of LArSoft releases](LArSoft_release_list)
[Download instructions](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v04_00_00_rc1/larsoft-v04_00_00_rc1.html)

Purpose
--------------------

Release candidate 1 for MicroBooNE MCC6

About this release
------------------------------------------

Branch v04_00_rc started as a copy of the LARSOFT_SUITE_v03_08_01 tag. We then merged the feature/DataProductRevision branch. No other changes were made. The v04_00_00_rc1 tag was made on the v04_00_rc branch. This tag is not merged with master.

Using v04_00_00_rc1
-----------------------------------------------

-   This release candidate is NOT MERGED with develop.
-   In order to work with this release, you MUST checkout the v04_00_rc branch.
-   **mrb g -b v04_00_rc \<gitRepositoryName\>**

Change List
============================

larsoft v04_00_00_rc1
---------------------------------------------------

-   2015-02-05 Lynn Garren : larsoft v04_00_00_rc1
-   2015-02-05 Lynn Garren : adding a source code manifest template
-   2015-02-05 Lynn Garren : DataProduct changes
-   2015-02-05 Lynn Garren : Merge branch ‘feature/DataProductRevision’ into v04_00_rc
-   2015-01-30 Gianluca Petrillo : Merge tag ‘LARSOFT_SUITE_v03_08_00’ into feature/DataProductRevision

lareventdisplay v04_00_00_rc1
-------------------------------------------------------------------

-   2015-02-05 Lynn Garren : lareventdisplay v04_00_00_rc1
-   2015-02-05 Lynn Garren : Merge branch ‘feature/DataProductRevision’ into v04_00_rc
-   2015-02-02 Gianluca Petrillo : Merge tag ‘LARSOFT_SUITE_v03_08_00’ into feature/DataProductRevisionNewCluster
-   2015-01-30 Gianluca Petrillo : recob::Cluster member renamed to MultipleHitWires(), its algorithm defined.
-   2015-01-28 Gianluca Petrillo : Updated for the new recob::Cluster v14. Some shortcuts have been taken, and the clusters produced by GraphCluster module are not as shiny as the ones from larreco.
-   2015-01-28 Gianluca Petrillo : Merge ub_showerreco branch
-   2015-01-15 Gianluca Petrillo : Merge remote-tracking branch ‘origin/develop’ into feature/DataProductRevision This synchronizes to larsoft v03_06_00 .
-   2015-01-07 Gianluca Petrillo : Merge remote-tracking branch ‘origin/develop’ into feature/DataProductRevision
-   2014-12-30 Gianluca Petrillo : Merge remote-tracking branch ‘origin/develop’ into feature/DataProductRevision
-   2014-12-26 Gianluca Petrillo : Merge branch ‘develop’ into feature/DataProductRevision
-   2014-12-23 Gianluca Petrillo : Update for the new recob::Hit. Test needed.
-   2014-12-10 Gianluca Petrillo : Changes for data product review: raw::RawData (lardata commit b4b4d04)

larexamples v04_00_00_rc1
-----------------------------------------------------------

-   2015-02-05 Lynn Garren : larexamples v04_00_00_rc1
-   2015-01-30 Gianluca Petrillo : Merge tag ‘LARSOFT_SUITE_v03_08_00’ into feature/DataProductRevision
-   2015-01-15 Gianluca Petrillo : Merge remote-tracking branch ‘origin/develop’ into feature/DataProductRevision This synchronizes to larsoft v03_06_00 .
-   2015-01-07 Gianluca Petrillo : Merge remote-tracking branch ‘origin/develop’ into feature/DataProductRevision
-   2015-01-02 Gianluca Petrillo : Using the old semantic for what was Hit::\<Start|End\>Time()
-   2014-12-26 Gianluca Petrillo : Merge branch ‘develop’ into feature/DataProductRevision
-   2014-12-23 Gianluca Petrillo : Update for the new recob::Hit.

larpandora v04_00_00_rc1
---------------------------------------------------------

-   2015-02-06 Lynn Garren : new dependency on larreco
-   2015-02-05 Lynn Garren : larpandora v04_00_00_rc1
-   2015-02-04 Wesley Ketchum : Merge remote-tracking branch ‘origin/feature/DataProductRevision’ into feature/DataProductRevision
-   2015-02-02 Wesley Ketchum : update for new hit object
-   2015-02-02 Gianluca Petrillo : Updated code from develop to new data products
-   2015-02-02 Gianluca Petrillo : Merge tag ‘LARSOFT_SUITE_v03_08_00’ into feature/DataProductRevisionNewCluster
-   2015-02-02 Wesley Ketchum : Merge remote-tracking branch ‘origin/develop’ into feature/DataProductRevision
-   2015-01-30 Gianluca Petrillo : Added structure to allow to skip non-core hits in cluster creation
-   2015-01-28 Gianluca Petrillo : Removed old code from LArPandoraHelper
-   2015-01-28 Gianluca Petrillo : Update for the new recob::Cluster definition (old code commented out)
-   2015-01-20 Gianluca Petrillo : Update for the new recob::Cluster
-   2015-01-15 Gianluca Petrillo : Merge remote-tracking branch ‘origin/develop’ into feature/DataProductRevision This synchronizes to larsoft v03_06_00 .
-   2015-01-14 Gianluca Petrillo : Merge branch ‘develop’ into feature/DataProductRevision
-   2015-01-07 Gianluca Petrillo : Merge remote-tracking branch ‘origin/develop’ into feature/DataProductRevision
-   2015-01-02 Gianluca Petrillo : Using the old semantic for what was Hit::\<Start|End\>Time()
-   2014-12-26 Gianluca Petrillo : Merge branch ‘develop’ into feature/DataProductRevision
-   2014-12-23 Gianluca Petrillo : Update for the new recob::Hit. Compiles, needs testing.

larana v04_00_00_rc1
-------------------------------------------------

-   2015-02-05 Lynn Garren : larana v04_00_00_rc1
-   2015-02-05 Lynn Garren : Merge branch ‘feature/DataProductRevision’ into v04_00_rc
-   2015-01-30 Gianluca Petrillo : Merge tag ‘LARSOFT_SUITE_v03_08_00’ into feature/DataProductRevisionNewCluster
-   2015-01-16 Gianluca Petrillo : Update for new recob::Cluster object
-   2015-01-15 Gianluca Petrillo : Merge remote-tracking branch ‘origin/feature/DataProductRevision’ into feature/DataProductRevision
-   2014-12-23 Gianluca Petrillo : Using TimeService to define the spill window in CRHitRemoval
-   2014-12-19 Gianluca Petrillo : Code updated with new RawDigit, Wire and Hit.
-   2015-01-08 Gianluca Petrillo : Merge branch ‘develop’ into feature/DataProductRevision
-   2015-01-07 Gianluca Petrillo : Merge branch ‘develop’ into feature/DataProductRevision
-   2014-12-30 Gianluca Petrillo : Merge remote-tracking branch ‘origin/develop’ into feature/DataProductRevision
-   2014-12-23 Gianluca Petrillo : Using TimeService to define the spill window in CRHitRemoval
-   2014-12-19 Gianluca Petrillo : Code updated with new RawDigit, Wire and Hit.

larreco v04_00_00_rc1
---------------------------------------------------

-   2015-02-06 Lynn Garren : adding fhiclcpp to the link list
-   2015-02-05 Lynn Garren : larreco v04_00_00_rc1
-   2015-02-05 Lynn Garren : Merge branch ‘feature/DataProductRevision’ into v04_00_rc
-   2015-02-04 Gianluca Petrillo : Fixed declaration of associations produced by ClusterCrawler
-   2015-02-04 Gianluca Petrillo : Merge remote-tracking branch ‘origin/feature/DataProductRevisionNewCluster’ into feature/DataProductRevision
-   2015-02-04 Gianluca Petrillo : Fixed a comment in fuzzyCluster module
-   2015-02-04 Bruce Baller : Merge branch ‘feature/DataProductRevisionNewCluster’ of ssh://cdcvs.fnal.gov/cvs/projects/larreco into feature/DataProductRevisionNewCluster
-   2015-02-04 Bruce Baller : Modify ClusterCrawler_module and CCTrackMaker_module for new hit and cluster objects
-   2015-02-03 Gianluca Petrillo : Fixed another merge problem on cluster_microboone.fcl (shoudl not this stuff be in uboonecode instead?)
-   2015-02-03 Gianluca Petrillo : Fixed merge problem on clustermodules.fcl
-   2015-02-03 Gianluca Petrillo : Cluster3D now uses again its own dTdW for the cluster angles
-   2015-02-02 Gianluca Petrillo : Merge branch ‘feature/DataProductRevision’ of ssh://cdcvs.fnal.gov/cvs/projects/larreco into feature/DataProductRevision
-   2015-02-02 Gianluca Petrillo : Updated code from develop to new data products
-   2015-02-02 Gianluca Petrillo : Merge tag ‘LARSOFT_SUITE_v03_08_00’ into feature/DataProductRevisionNewCluster
-   2015-02-02 Wesley Ketchum : make it so hitanamodule works even if hitfinder does not make wire assocs
-   2015-02-02 Wesley Ketchum : bug fix to prevent seg fault on merging signal set, and fcl files
-   2015-02-02 Wesley Ketchum : fill out the module code now
-   2015-02-02 Wesley Ketchum : add in an AmplitudeVector, and put in the EmplaceHit function in RFFHitFinderAlg, and additions to CMake list to build
-   2015-02-02 Wesley Ketchum : add in a bunch of new files for the RFF HitFinder overhaul
-   2015-01-30 Gianluca Petrillo : recob::Cluster member renamed to MultipleHitWires(), its algorithm defined.
-   2015-01-29 Bruce Baller : Merge branch ‘feature/DataProductRevisionNewCluster’ of ssh://cdcvs.fnal.gov/cvs/projects/larreco into feature/DataProductRevisionNewCluster
-   2015-01-29 Bruce Baller : in-progress commit
-   2015-01-29 Gianluca Petrillo : Removing ShowerAngleCluster module (dropped from ub_showerreco branch too)
-   2015-01-29 Gianluca Petrillo : Merge branch ‘feature/DataProductRevision’ into feature/DataProductRevisionNewCluster This updates recob::Hit to version 15.
-   2015-01-29 Gianluca Petrillo : Update for recob::Hit version 15
-   2015-01-28 Gianluca Petrillo : LineMerger module updated for new recob::Cluster v14.
-   2015-01-28 Gianluca Petrillo : Update of ClusterCrawler to the new recob::Cluster v14. Still work to be done on it.
-   2015-01-28 Gianluca Petrillo : Removed ClusterCrawlerShower and KingaCluster cluster finders.
-   2015-01-28 Gianluca Petrillo : ClusterMergeAlg depends on SimulationBase (nutools): added in CMakeLists.txt
-   2015-01-28 Gianluca Petrillo : First commit for updates for recob::Cluster v14. Not everything fixed yet
-   2015-01-26 Gianluca Petrillo : New cluster algorithm interface, plus standard implementation. NWiresOverNHits() still missing.
-   2015-01-23 Wesley Ketchum : updates to fill some elements of RFF hitfinder more better
-   2015-01-22 Eric Church : slightly altered hitana.fcl
-   2015-01-20 Eric Church : Add a vector of TTrees: one TTree for each HitFinder, each with one single branch that is a recob::Hit.
-   2015-01-15 Gianluca Petrillo : Merge remote-tracking branch ‘origin/develop’ into feature/DataProductRevision This synchronizes to larsoft v03_06_00 .
-   2015-01-15 Gianluca Petrillo : Bug fix on ClusterCrawler module - I was using the wrong constructor
-   2015-01-15 Gianluca Petrillo : Updated new version of RawHitFinder module to new recob::Hit
-   2015-01-14 Gianluca Petrillo : Merge branch ‘develop’ into feature/DataProductRevision
-   2015-01-08 Gianluca Petrillo : Merge branch ‘develop’ into feature/DataProductRevision
-   2015-01-07 Gianluca Petrillo : Merge remote-tracking branch ‘origin/develop’ into feature/DataProductRevision
-   2015-01-02 Gianluca Petrillo : Using the old semantic for what was Hit::\<Start|End\>Time()
-   2014-12-30 Gianluca Petrillo : Merge remote-tracking branch ‘origin/develop’ into feature/DataProductRevision
-   2014-12-23 Gianluca Petrillo : Updated for new recob::Hit . The code compiles, but many to-do’s are left
-   2014-12-19 Gianluca Petrillo : Code updated for new RawDigit, Wire and Hit. A bit log of it does not compile yet. RecoAlg and VertexFinder libraries fully compile, as GausHitFinder module does.

larsim v04_00_00_rc1
-------------------------------------------------

-   2015-02-05 Lynn Garren : larsim v04_00_00_rc1
-   2015-01-30 Gianluca Petrillo : Merge tag ‘LARSOFT_SUITE_v03_08_00’ into feature/DataProductRevision
-   2015-01-15 Gianluca Petrillo : Updated DumpRawDigits module for new RawDigit
-   2015-01-15 Gianluca Petrillo : Merge branch ‘develop’ into feature/DataProductRevision
-   2015-01-15 Gianluca Petrillo : Merge remote-tracking branch ‘origin/develop’ into feature/DataProductRevision This synchronizes to larsoft v03_06_00 .
-   2015-01-14 Gianluca Petrillo : Merge branch ‘develop’ into feature/DataProductRevision
-   2015-01-07 Gianluca Petrillo : Merge remote-tracking branch ‘origin/develop’ into feature/DataProductRevision
-   2014-12-30 Gianluca Petrillo : Merge remote-tracking branch ‘origin/develop’ into feature/DataProductRevision
-   2014-12-23 Gianluca Petrillo : Channel ID variables now of type raw::ChannelID_t instead of uint32_t
-   2014-12-19 Gianluca Petrillo : Code updated for new RawDigit, Wire and Hit.

larevt v04_00_00_rc1
-------------------------------------------------

-   2015-02-06 Lynn Garren : need RawData in link list
-   2015-02-05 Lynn Garren : larevt v04_00_00_rc1
-   2015-01-30 Gianluca Petrillo : Merge tag ‘LARSOFT_SUITE_v03_08_00’ into feature/DataProductRevisionNewCluster
-   2015-01-15 Gianluca Petrillo : Updated for new recob::Cluster
-   2015-01-15 Gianluca Petrillo : Merge branch ‘develop’ into feature/DataProductRevision
-   2015-01-15 Gianluca Petrillo : Merge remote-tracking branch ‘origin/develop’ into feature/DataProductRevision This synchronizes to larsoft v03_06_00 .
-   2015-01-07 Gianluca Petrillo : Merge remote-tracking branch ‘origin/develop’ into feature/DataProductRevision
-   2014-12-19 Gianluca Petrillo : Code updated for new RawDigit, Wire and Hit.
-   2014-12-10 Gianluca Petrillo : Changes for data product review: raw::RawData (lardata commit b4b4d04); also added support for compressed raw digits in ArgoNeuT CalData

lardata v04_00_00_rc1
---------------------------------------------------

-   2015-02-05 Lynn Garren : lardata v04_00_00_rc1
-   2015-02-04 Gianluca Petrillo : Added dictionaries for the many classes needed by new ClusterCrawler associations
-   2015-02-04 Gianluca Petrillo : Renamed the /implementation/ of the function to create associations with metadata
-   2015-02-04 Gianluca Petrillo : Merge branch ‘feature/DataProductRevision’ of ssh://cdcvs.fnal.gov/cvs/projects/lardata into feature/DataProductRevision
-   2015-02-04 Gianluca Petrillo : Renamed the function to create associations with metadata
-   2015-02-04 Wesley Ketchum : Merge remote-tracking branch ‘origin/feature/DataProductRevision’ into feature/DataProductRevision
-   2015-02-02 Gianluca Petrillo : Added a CreateAssn() function with associated data
-   2015-02-02 Wesley Ketchum : update for new hit object
-   2015-02-02 Wesley Ketchum : Merge remote-tracking branch ‘origin/develop’ into feature/DataProductRevision
-   2015-01-30 Gianluca Petrillo : Removed unnecessary art dependency
-   2015-01-30 Gianluca Petrillo : Merge tag ‘LARSOFT_SUITE_v03_08_00’ into feature/DataProductRevisionNewCluster
-   2015-01-30 Gianluca Petrillo : recob::Cluster member renamed to MultipleHitWires(), its algorithm defined.
-   2015-01-29 Gianluca Petrillo : Added a CreateAssn() taking only indices of future data products as input
-   2015-01-29 Gianluca Petrillo : Hit test updated for recob::Hit v15.
-   2015-01-29 Gianluca Petrillo : Merge branch ‘feature/DataProductRevision’ into feature/DataProductRevisionNewCluster This updates recob::Hit to version 15.
-   2015-01-29 Gianluca Petrillo : Removed fHitSignal from recob::Hit (now version 15)
-   2015-01-29 Gianluca Petrillo : Added Cluster::isValid() member returning if cluster ID is valid
-   2015-01-27 Gianluca Petrillo : Minor changes to LinearFir object
-   2015-01-27 Gianluca Petrillo : Added move operations to recob::Cluster
-   2015-01-26 Gianluca Petrillo : Added a C++ class for simple linear fit
-   2015-01-25 Gianluca Petrillo : Added sumADC to PxHit object; extended interface to convert from recob::Hit
-   2015-01-25 Gianluca Petrillo : Added utilities to automatically dereference a variable if it is a pointer
-   2015-01-21 Gianluca Petrillo : Updated imported utilities to new Hit object
-   2015-01-21 Gianluca Petrillo : Import utilities from ub_showerreco branch (Terao/Szelc)
-   2015-01-20 Gianluca Petrillo : Fixed a bug in raw::RawData constructor moving the ADC vector
-   2015-01-20 Gianluca Petrillo : Merge branch ‘feature/DataProductRevisionNewCluster’ of ssh://cdcvs.fnal.gov/cvs/projects/lardata into feature/DataProductRevisionNewCluster
-   2015-01-20 Gianluca Petrillo : Added back uncertainties on the start and end position of the cluster
-   2015-01-16 Gianluca Petrillo : Added new functionalities to lar::util::StatCollector
-   2015-01-16 Gianluca Petrillo : Added new functionalities to lar::util::StatCollector
-   2015-01-15 Gianluca Petrillo : Merge branch ‘feature/DataProductRevision’ into feature/DataProductRevisionNewCluster
-   2015-01-15 Gianluca Petrillo : Fixed the move constructors for hits and wires
-   2015-01-15 Gianluca Petrillo : Completed tests on Hit, Wire, RawDigit data products
-   2015-01-15 Gianluca Petrillo : Fixed some definitions
-   2015-01-15 Gianluca Petrillo : Merge branch ‘feature/DataProductRevision’ into feature/DataProductRevisionNewCluster This synchronizes to larsoft v03_06_00 .
-   2015-01-15 Gianluca Petrillo : Merge remote-tracking branch ‘origin/develop’ into feature/DataProductRevision This synchronizes to larsoft v03_06_00 .
-   2015-01-15 Gianluca Petrillo : Added a new Hit construction method using RawDigit
-   2015-01-14 Gianluca Petrillo : Merge branch ‘develop’ into feature/DataProductRevision
-   2015-01-14 Gianluca Petrillo : New recob::Cluster (and unit test)
-   2015-01-14 Gianluca Petrillo : Added data product tests (recob::Hit and recob::Cluster just place holders so far)
-   2015-01-14 Gianluca Petrillo : Added constructor to move data into RawDigit
-   2015-01-14 Gianluca Petrillo : Fixed (probably) a bug crashing the program on read/write access to sparse_vector void areas
-   2015-01-07 Gianluca Petrillo : Merge remote-tracking branch ‘origin/develop’ into feature/DataProductRevision
-   2015-01-02 Gianluca Petrillo : Added ROOT dictionaries for the new associations
-   2014-12-30 Gianluca Petrillo : Fixed cosmetic typo
-   2014-12-29 Gianluca Petrillo : Added StatCollector test suite
-   2014-12-26 Gianluca Petrillo : Added a class to keep track of maximum and minimum of a sample
-   2014-12-23 Gianluca Petrillo : CreateAssn() now take constant pointers; added StatCollector to accumulate simple statistics (average, RMS)
-   2014-12-19 Gianluca Petrillo : Code updated with new RawDigit, Wire and Hit and utilities.
-   2014-12-10 Gianluca Petrillo : Data product review: raw::RawData - fADC made private, interface added - added bitset and interface; currently one bit is supported: saturation - added aliases for types - pedestal and its RMS transformed from double to float - documentation added

larcore v04_00_00_rc1
---------------------------------------------------

-   2015-02-05 Lynn Garren : larcore v04_00_00_rc1
-   2015-01-25 Gianluca Petrillo : Added pi constant and degree-to-radians conversion functions in PhysicalConstants.h
-   2015-01-25 Gianluca Petrillo : Removed “static” keyword from constants in PhysicsConstants.h
-   2015-01-15 Gianluca Petrillo : Merge remote-tracking branch ‘origin/develop’ into feature/DataProductRevision This synchronizes to larsoft v03_06_00 .
-   2015-01-14 Gianluca Petrillo : Merge branch ‘develop’ into feature/DataProductRevision
-   2015-01-07 Gianluca Petrillo : Merge remote-tracking branch ‘origin/develop’ into feature/DataProductRevision
-   2014-12-30 Gianluca Petrillo : Merge remote-tracking branch ‘origin/develop’ into feature/DataProductRevision
-   2014-12-26 Gianluca Petrillo : Cosmetic changes
-   2014-12-23 Gianluca Petrillo : Replaced the channel IDs with variables of raw::ChannelID_t type
-   2014-12-19 Gianluca Petrillo : Added TDC tick and channel ID types into raw namespace.
