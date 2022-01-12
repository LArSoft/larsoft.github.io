LArSoft v04_07_00 Release Notes
======================================================================

-   **Table of contents**
-   [LArSoft v04_07_00 Release Notes](#LArSoft-v04_07_00-Release-Notes)
    -   [Purpose](#Purpose)
    -   [New features](#New-features)
    -   [Bug fixes](#Bug-fixes)
    -   [Updated dependencies](#Updated-dependencies)
-   [Change List](#Change-List)
    -   [larsoft v04_07_00](#larsoft-v04_07_00)
    -   [lareventdisplay v04_04_03](#lareventdisplay-v04_04_03)
    -   [larexamples v04_04_03](#larexamples-v04_04_03)
    -   [larana v04_06_01](#larana-v04_06_01)
    -   [larreco v04_05_00](#larreco-v04_05_00)
    -   [larsim v04_06_00](#larsim-v04_06_00)
    -   [larevt v04_06_00](#larevt-v04_06_00)
    -   [lardata v04_06_00](#lardata-v04_06_00)
    -   [larcore v04_06_00](#larcore-v04_06_00)
    -   [larbatch v01_06_01](#larbatch-v01_06_01)
    -   [larutils v1_00_09](#larutils-v1_00_09)

[list of LArSoft releases](LArSoft_release_list)
[Download instructions](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v04_07_00/larsoft-v04_07_00.html)

Purpose
--------------------

New features
------------------------------

-   [T0 data product and Gaisser muon generator](https://indico.fnal.gov/getFile.py/access?contribId=3&resId=0&materialId=slides&confId=9922)
-   [Cluster Crawler updates](https://indico.fnal.gov/getFile.py/access?contribId=4&resId=0&materialId=slides&confId=9819)

Bug fixes
------------------------

Updated dependencies
----------------------------------------------

||
|Product|Version|Qualifier|Notes|
|larsoft_data|v0_04_00||new pdf/Gaisser directory|

Change List
============================

larsoft v04_07_00
------------------------------------------

-   2015-05-07 Lynn Garren : larsoft v04_07_00 for larsoft v04_07_00
-   2015-05-07 Lynn Garren : update product versions
-   2015-05-07 Lynn Garren : update dependency database

lareventdisplay v04_04_03
----------------------------------------------------------

-   2015-05-07 Lynn Garren : lareventdisplay v04_04_03 for larsoft v04_07_00

larexamples v04_04_03
--------------------------------------------------

-   2015-05-07 Lynn Garren : larexamples v04_04_03 for larsoft v04_07_00

larpandora v04_04_03
----------------------

-   2015-05-07 Lynn Garren : larpandora v04_04_03 for larsoft v04_07_00

larana v04_06_01
----------------------------------------

-   2015-05-07 Lynn Garren : larana v04_06_01 for larsoft v04_07_00
-   2015-05-05 Thomas Warburton : Merge branch ‘develop’ into feature/php13tkw_CaloT0
-   2015-05-04 Thomas Warburton : New constants for 35t calorimetry
-   2015-05-04 Thomas Warburton : New constants
-   2015-05-03 Gleb Sinev : Removing a factor of 2 in SimPhotonCounter_module.cc for SimPhotonsLite arrival time. I don’t know why it was there to begin with, it recorded correct time times 2 in the trees.
-   2015-05-03 Alex Himmel : Add a missing check for a valid handle.
-   2015-05-01 Thomas Warburton : Merge branch ‘develop’ into feature/php13tkw_CaloT0
-   2015-04-28 Thomas Warburton : Merging develop into my feature branch, as haven’t done for a while and finished one aspect of work doing on it (retuning cal constants), which is now in develop
-   2015-04-28 Thomas Warburton : Merge branch ‘develop’ into feature/php13tkw_CaloT0
-   2015-04-24 Thomas Warburton : Chaning cal constants
-   2015-04-24 Thomas Warburton : Merge branch ‘develop’ into feature/php13tkw_CaloT0
-   2015-04-20 Thomas Warburton : Merge branch ‘develop’ into feature/php13tkw_CaloT0
-   2015-04-20 Thomas Warburton : Addding T0 information to calorimetry module
-   2015-04-02 Thomas Warburton : Merge branch ‘develop’ into feature/php13tkw_CaloT0
-   2015-03-31 Thomas Warburton : Adding T0 correction to XYZ
-   2015-03-30 Thomas Warburton : Changing Calorimetry to accomodate a T0

larreco v04_05_00
------------------------------------------

-   2015-05-07 Lynn Garren : larreco v04_05_00 for larsoft v04_07_00
-   2015-05-01 Tingjun Yang : fcl updates
-   2015-05-01 Tingjun Yang : Merge branch ‘develop’ into feature/gp_BreakCrawler
-   2015-04-29 Tingjun Yang : Merge branch ‘develop’ into feature/gp_BreakCrawler
-   2015-04-27 Tingjun Yang : Merge branch ‘develop’ into feature/gp_BreakCrawler
-   2015-04-23 Tingjun Yang : Make the sizes of trkPos and trkDir equal.
-   2015-04-22 Tingjun Yang : Change unsigned short to unsigned int since size of matcomb can exceed 65534.
-   2015-04-20 Tingjun Yang : Add protection.
-   2015-04-19 Tingjun Yang : Check trk[itr].nDtr is less than 20 (the array size).
-   2015-04-17 Tingjun Yang : Merge branch ‘develop’ into feature/gp_BreakCrawler
-   2015-04-17 Gianluca Petrillo : ClusterCrawlerAlg: reduced the amount of debug information
-   2015-04-17 Gianluca Petrillo : ClusterCrawlerAlg: added debug output
-   2015-04-17 Gianluca Petrillo : ClusterCrawlerAlg: make sure that all the hits are released when a cluster is obsoleted
-   2015-04-17 Gianluca Petrillo : ClusterCrawlerAlg: fixed a bug in sorting hits by index
-   2015-04-15 Tingjun Yang : change wirehitrange from short to int
-   2015-04-15 Tingjun Yang : Merge branch ‘develop’ into feature/gp_BreakCrawler
-   2015-04-15 Tingjun Yang : revert change
-   2015-04-14 Tingjun Yang : Commit for Bruce:fixed some problems in FindMaybeVertices and re-wrote some of it to make it clearer.
-   2015-04-14 Gianluca Petrillo : Added deprecation warning to ClusterCrawler module
-   2015-04-14 Tingjun Yang : Remvoe comments.
-   2015-04-14 Tingjun Yang : Merge branch ‘develop’ into feature/gp_BreakCrawler
-   2015-04-11 Gianluca Petrillo : Fixed a problem for compilation in profiling mode; debugging of vectors removed
-   2015-04-10 Gianluca Petrillo : Merge branch ‘feature/gp_BreakCrawler’ of ssh://cdcvs.fnal.gov/cvs/projects/larreco into feature/gp_BreakCrawler
-   2015-04-10 Gianluca Petrillo : ClusterCrawlerAlg: fixed two vector out-of-range bugs. Debugging code still in place (disabled)
-   2015-04-10 Tingjun Yang : Merge branch ‘feature/gp_BreakCrawler’ of ssh://cdcvs.fnal.gov/cvs/projects/larreco into feature/gp_BreakCrawler
-   2015-04-10 Gianluca Petrillo : ClusterCrawlerAlg: fix to the fix
-   2015-04-10 Tingjun Yang : Merge branch ‘feature/gp_BreakCrawler’ of ssh://cdcvs.fnal.gov/cvs/projects/larreco into feature/gp_BreakCrawler
-   2015-04-10 Tingjun Yang : Use the new MinX/Y/Z() functions.
-   2015-04-10 Gianluca Petrillo : ClusterCrawlerAlg: replaced logging string from “ClusterCrawler” to “ClusterCrawlerAlg”
-   2015-04-10 Gianluca Petrillo : ClusterCrawlerAlg: fixed the hit multiplicity when merging hits
-   2015-04-10 Tingjun Yang : Merge branch ‘feature/gp_BreakCrawler’ of ssh://cdcvs.fnal.gov/cvs/projects/larreco into feature/gp_BreakCrawler
-   2015-04-10 Tingjun Yang : Fix one indexing bug and add protection for another one.
-   2015-04-09 Gianluca Petrillo : HitFinder now prints a few fit statistics at the end of the job
-   2015-04-08 Tingjun Yang : Use the new ContainsYZ function.
-   2015-04-08 Tingjun Yang : Change the way to get detector boundaries and fix a typo.
-   2015-04-08 Gianluca Petrillo : CCTrackFinder: process vertices per TPC
-   2015-04-08 Gianluca Petrillo : ClusterCrawlerAlg: added check on wire intersection being within the (right) TPC
-   2015-04-07 Tingjun Yang : Merge branch ‘develop’ into feature/gp_BreakCrawler
-   2015-04-06 Tingjun Yang : Merge branch ‘develop’ into feature/gp_BreakCrawler
-   2015-04-06 Tingjun Yang : Refix bug.
-   2015-04-06 Tingjun Yang : Merge branch ‘develop’ into feature/gp_BreakCrawler
-   2015-04-06 Tingjun Yang : Merge branch ‘feature/gp_BreakCrawler’ of ssh://cdcvs.fnal.gov/cvs/projects/larreco into feature/gp_BreakCrawler
-   2015-04-06 Tingjun Yang : make tpcSizeY and tpcSizeZ TPC dependent, a few other tweaks to make cctrack maker work for 35t.
-   2015-04-06 Gianluca Petrillo : Disabling speed optimizations in CCHitFinderAlg, pending physics validation.
-   2015-04-03 Gianluca Petrillo : Added the option to use a fast sigle-Gaussian fit in CCHitFinder
-   2015-04-01 Tingjun Yang : Merge branch ‘develop’ into feature/gp_BreakCrawler
-   2015-04-01 Tingjun Yang : fix conflict
-   2015-04-01 Gianluca Petrillo : Changed the configuration parameter name for input hits in LineCluster
-   2015-03-26 Gianluca Petrillo : Enabled use of cached multi-Gaussian functions in HitFinder. Additional options are implemented: compiled Gaussians, complete or approximate. Unit test added to the GausFitCache library.
-   2015-03-26 Gianluca Petrillo : Added a stub for use of cached multi-Gaussian functions in HitFinder
-   2015-03-25 Gianluca Petrillo : Avoiding double configuration of LineCluster and HitFinder algorithms
-   2015-03-25 Gianluca Petrillo : Internal changes to ClusterCrawlerAlg
-   2015-03-30 Tingjun Yang : Compare the plane number in debug code.
-   2015-03-26 Tingjun Yang : Add protection for the case where there is no hit on one plane. Also make sure the vtx is on the correct TPC before going forward.
-   2015-03-24 Gianluca Petrillo : ClusterCrawler: removed the expectation of all hits in a multiplet being present and in order (maybe)
-   2015-03-24 Gianluca Petrillo : ClusterCrawlerAlg: sort input hits as needed before starting
-   2015-03-20 Tingjun Yang : Add clustercrawler configurations for lbne.
-   2015-03-20 Gianluca Petrillo : Fixed a very minor detail (affects about 0.0001% of hits). Fixed a compilation error showing only in profiling mode.
-   2015-03-19 Gianluca Petrillo : ClusterCrawler module split into HitFinder and LineCluster modules
-   2015-03-19 Gianluca Petrillo : ClusterCrawler: qualified standard math functions with std; explicited float to int conversions (some of them likely bugs).
-   2015-03-19 Gianluca Petrillo : Changed TPC loop to use range-for loop
-   2015-03-18 Gianluca Petrillo : Revamped the internal interface of ClusterCrawler algorithms.
-   2015-03-16 Gianluca Petrillo : ClusterCrawler module split in two; default configuration added; old module still there…
-   2015-03-16 Gianluca Petrillo : Two more steps in conversion of ClusterCrawlerAlg to recob::Hit. Schroedinbug did manifest (log 0316-04).
-   2015-03-16 Gianluca Petrillo : Some more steps in conversion of ClusterCrawlerAlg to recob::Hit. Schroedinbug did not manifest (log 0316-02).
-   2015-03-14 Gianluca Petrillo : ClusterCrawlerAlg now directly outputs recob::Hit
-   2015-03-13 Gianluca Petrillo : ClusterCrawlerAlg now internally removes the obsolete hits
-   2015-03-13 Gianluca Petrillo : Make ClusterCrawlerAlg produce and yield recob::Hit
-   2015-03-13 Gianluca Petrillo : Use of CCHit::InClus eradicated from ClusterCrawler
-   2015-03-11 Gianluca Petrillo : CCHitFinder creates recob::Hit directly
-   2015-03-10 Gianluca Petrillo : CCHitFinder: interface with recob::Wire instead of art::Event
-   2015-03-10 Gianluca Petrillo : Bug fix in DumpHits association check
-   2015-03-10 Gianluca Petrillo : Added option in DumpHit module to check wire and raw digit associations to hits
-   2015-03-10 Gianluca Petrillo : CCHitFinder: cleaned included headers
-   2015-03-10 Gianluca Petrillo : Added simple module to dump recob:Hit content on screen for test purposes

larsim v04_06_00
----------------------------------------

-   2015-05-07 Lynn Garren : larsim v04_06_00 for larsoft v04_07_00
-   2015-05-07 Thomas Warburton : Changing naming conventions
-   2015-05-07 Thomas Warburton : Correcting + character in PDF name
-   2015-05-05 Thomas Warburton : fcl description
-   2015-05-01 Thomas Warburton : Merge branch ‘develop’ into feature/php13tkw_GaisserParam
-   2015-04-30 Alex Himmel : When asking for number of channels in the library, load the library first.
-   2015-04-28 Thomas Warburton : Merge branch ‘develop’ into feature/php13tkw_GaisserParam
-   2015-04-24 Thomas Warburton : Merge branch ‘develop’ into feature/php13tkw_GaisserParam
-   2015-04-20 Thomas Warburton : Merge branch ‘develop’ into feature/php13tkw_GaisserParam
-   2015-04-20 Thomas Warburton : Additions to GaisserParameterisation module and fcl files
-   2015-04-02 Thomas Warburton : Merge branch ‘develop’ into feature/php13tkw_GaisserParam
-   2015-03-30 Thomas Warburton : Changes needed for adding a new event generator based on gaissers parameterisation.
-   2015-03-30 Thomas Warburton : Changes needed for adding a new event generator based on gaissers parameterisation.

larevt v04_06_00
----------------------------------------

-   2015-05-07 Lynn Garren : larevt v04_06_00 for larsoft v04_07_00
-   2015-04-30 Brandon Eberly : Merge branch ‘develop’ of ssh://cdcvs.fnal.gov/cvs/projects/larevt into develop
-   2015-04-30 Brandon Eberly : remove art dependency from IOVTimeStamp
-   2015-04-30 Brandon Eberly : Snapshot no longer inherits from std::vector

lardata v04_06_00
------------------------------------------

-   2015-05-07 Lynn Garren : lardata v04_06_00 for larsoft v04_07_00
-   2015-05-07 Lynn Garren : Merge branch ‘feature/php13tkw_CaloT0’ into release/v04_07_00
-   2015-05-01 Tingjun Yang : Merge branch ‘develop’ into feature/gp_BreakCrawler
-   2015-05-01 Thomas Warburton : Merge branch ‘develop’ into feature/php13tkw_CaloT0
-   2015-04-29 Tingjun Yang : Merge branch ‘develop’ into feature/gp_BreakCrawler
-   2015-04-28 Thomas Warburton : Merge branch ‘develop’ into feature/php13tkw_CaloT0
-   2015-04-27 Tingjun Yang : Merge branch ‘develop’ into feature/gp_BreakCrawler
-   2015-04-24 Thomas Warburton : Merge branch ‘develop’ into feature/php13tkw_CaloT0
-   2015-04-20 Thomas Warburton : Merge branch ‘develop’ into feature/php13tkw_CaloT0
-   2015-04-17 Tingjun Yang : Merge branch ‘develop’ into feature/gp_BreakCrawler
-   2015-04-14 Tingjun Yang : Merge branch ‘develop’ into feature/gp_BreakCrawler
-   2015-04-08 Gianluca Petrillo : Fixed Track::operator\<\< ()
-   2015-04-06 Tingjun Yang : Merge branch ‘develop’ into feature/gp_BreakCrawler
-   2015-04-06 Tingjun Yang : Merge branch ‘feature/gp_BreakCrawler’ of ssh://cdcvs.fnal.gov/cvs/projects/lardata into feature/gp_BreakCrawler
-   2015-04-01 Gianluca Petrillo : Added faed: Utilities/SimpleFits.h cilities for linear, quadratic and Gaussian fits
-   2015-04-02 Thomas Warburton : Merge branch ‘develop’ into feature/php13tkw_CaloT0
-   2015-04-01 Tingjun Yang : Merge branch ‘develop’ into feature/gp_BreakCrawler
-   2015-04-01 Tingjun Yang : Merge branch ‘develop’ into feature/gp_BreakCrawler
-   2015-03-31 Thomas Warburton : Adding T0 correction to XYZ
-   2015-03-30 Thomas Warburton : Changing Calorimetry to accomodate a T0
-   2015-03-19 Gianluca Petrillo : Extended DetectorProperties interface to use geometry ID structures
-   2015-03-16 Gianluca Petrillo : Added end-line to exception messages
-   2015-03-16 Gianluca Petrillo : Added a class “copying” the associations from an existing recob::Hit data product into a new one
-   2015-03-13 Gianluca Petrillo : Added a utility to help create a map of object indices (e.g. a map channel ID -\> raw digits)
-   2015-03-13 Gianluca Petrillo : Added a HitCollectionAssociator creating the associations of a existing collection of hits with wires and raw digits
-   2015-03-10 Gianluca Petrillo : Added two fields to the output of recob::Hit::operator\<\<

larcore v04_06_00
------------------------------------------

-   2015-05-07 Lynn Garren : larcore v04_06_00 for larsoft v04_07_00
-   2015-04-27 Tingjun Yang : Merge branch ‘develop’ into feature/gp_BreakCrawler
-   2015-04-22 Tingjun Yang : Clean up comments.
-   2015-04-22 Tingjun Yang : Changed the behavior of WireIdsIntersect(). It will always calculate wires interesection. It will return true if the two wires do crosss, return false if they do not. ChannelsIntersect() has the same behavior. IntersectionPoint() does not check if the wires cross.
-   2015-04-20 Tingjun Yang : Revert changes to IntersectionPoint.
-   2015-04-19 Tingjun Yang : 1. Change the way to get wire angles in ThirdPlaneSlope. 2. Relax the cut on (y,z) in WireIDsIntersect to be within the TPC volume.
-   2015-04-17 Tingjun Yang : Merge branch ‘develop’ into feature/gp_BreakCrawler
-   2015-04-15 Tingjun Yang : Check wire range.
-   2015-04-14 Tingjun Yang : Merge branch ‘develop’ into feature/gp_BreakCrawler
-   2015-04-10 Gianluca Petrillo : Extended TPCGeo interface for coordinate containment queries.
-   2015-04-08 Tingjun Yang : Make default wiggle to 1.
-   2015-04-08 Tingjun Yang : Merge branch ‘feature/gp_BreakCrawler’ of ssh://cdcvs.fnal.gov/cvs/projects/larcore into feature/gp_BreakCrawler
-   2015-04-08 Tingjun Yang : Use the same method to calculate wires intersection point.
-   2015-04-08 Gianluca Petrillo : Added TPC interface to query for containment of X, Y, Z or (Y,Z) world coordinates
-   2015-04-06 Tingjun Yang : Fix a mistake.
-   2015-04-06 Tingjun Yang : Merge branch ‘develop’ into feature/gp_BreakCrawler
-   2015-04-06 Tingjun Yang : Merge branch ‘feature/gp_BreakCrawler’ of ssh://cdcvs.fnal.gov/cvs/projects/larcore into feature/gp_BreakCrawler
-   2015-04-06 Tingjun Yang : Rewrite ThirdPlaneSlope using an queation Herb worked out. This version seems to work for 35t.
-   2015-04-01 Tingjun Yang : Merge branch ‘develop’ into feature/gp_BreakCrawler
-   2015-03-27 Gianluca Petrillo : Added a three-way comparison function for geo::WireID
-   2015-03-26 Gianluca Petrillo : Fixed a (not relevant) memory leak.
-   2015-03-19 Gianluca Petrillo : Extended the Geometry interface using geometry ID structures
-   2015-03-19 Gianluca Petrillo : Added facility for range-loops over all cryostats, TPCs, planes and wires

larbatch v01_06_01
--------------------------------------------

-   2015-05-07 Lynn Garren : larbatch v01_06_01 for larsoft v04_07_00
-   2015-05-06 Tingjun Yang : Fix indent.
-   2015-05-05 Tingjun Yang : Add script make_tarball.sh (written by Herb) to make tarball of localProducts directory.
-   2015-05-05 Tingjun Yang : Use ifdh cp (without –force=expgridftp) to copy input tarball and input files as suggested by Marc Mengel.
-   2015-05-01 Herbert Greenlee : Add list of (run, subrun) pairs to metadata generated by root_metadata.py.

larutils v1_00_09
------------------------------------------
