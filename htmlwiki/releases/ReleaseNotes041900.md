LArSoft v04_19_00 Release Notes
======================================================================

[list of LArSoft releases](LArSoft_release_list)
[Download instructions](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v04_19_00/larsoft-v04_19_00.html)

Purpose
--------------------

New features
------------------------------

-   larevt, lareventdisplay feature/eberly_dbinterface
    -   updated interface for pedestal database retrieval
    -   [Aug. 11 slides](https://indico.fnal.gov/getFile.py/access?contribId=6&resId=0&materialId=slides&confId=10257)
-   larcore feature/brebel_AuxDetGeometry
-   Names changed from lbne to dune
-   remove all sample files [redmine issue 9754](https://cdcvs.fnal.gov/redmine/issues/9754)
-   remove old SRT GNUmakefiles
-   Starting with this release, you must use /cvmfs/fermilab.opensciencegrid.org/products

Bug fixes
------------------------

Updated dependencies
----------------------------------------------

Change List
============================

larsoft v04_19_00
------------------------------------------

-   2015-08-13 Lynn Garren : larsoft v04_19_00 for larsoft v04_19_00
-   2015-08-13 Lynn Garren : update product versions
-   2015-08-13 Lynn Garren : update dependency database
-   2015-08-13 Lynn Garren : remove obsolete SRT scripts
-   2015-08-04 Lynn Garren : update product versions

lareventdisplay v04_06_03
----------------------------------------------------------

-   2015-08-13 Lynn Garren : lareventdisplay v04_06_03 for larsoft v04_19_00
-   2015-08-13 Lynn Garren : Merge branch ‘feature/eberly_dbinterface’ into release/v04_19_00
-   2015-08-13 Lynn Garren : remove SRT GNUmakefile
-   2015-08-13 Lynn Garren : remove sample files
-   2015-08-13 Lynn Garren : remove unmaintained sample files
-   2015-08-13 Lynn Garren : remove SRT GNUmakefiles
-   2015-08-10 Gianluca Petrillo : Caching wire pitch in a tight loop.
-   2015-08-06 Brandon Eberly : Remove some unnecessary dependencies
-   2015-07-10 Brandon Eberly : Use pedestal conditions service

larexamples v04_05_01
--------------------------------------------------

-   2015-08-13 Lynn Garren : larexamples v04_05_01 for larsoft v04_19_00

larpandora v04_05_01
------------------------------------------------

-   2015-08-13 Lynn Garren : larpandora v04_05_01 for larsoft v04_19_00
-   2015-08-13 Lynn Garren : remove SRT GNUmakefiles

larana v04_10_01
----------------------------------------

-   2015-08-13 Lynn Garren : larana v04_10_01 for larsoft v04_19_00
-   2015-08-13 Lynn Garren : Merge branch ‘feature/tjyang_duneification’ into release/v04_19_00
-   2015-08-13 Lynn Garren : remove SRT GNUmakefile
-   2015-08-13 Lynn Garren : remove SRT GNUmakefiles
-   2015-08-09 Tingjun Yang : Add protection when particle is null.
-   2015-08-07 Tingjun Yang : Replace lbne with dune.

larreco v04_14_01
------------------------------------------

-   2015-08-13 Lynn Garren : larreco v04_14_01 for larsoft v04_19_00
-   2015-08-13 Lynn Garren : Merge branch ‘feature/tjyang_duneification’ into release/v04_19_00
-   2015-08-13 Lynn Garren : remove SRT GNUmakefile
-   2015-08-13 Lynn Garren : remove sample files
-   2015-08-13 Lynn Garren : remove unmaintained sample files
-   2015-08-13 Lynn Garren : remove SRT GNUmakefiles
-   2015-08-12 Tingjun Yang : Merge branch ‘develop’ into feature/tjyang_duneification
-   2015-08-12 Tracy Usher : Include a test on last candidate peak for the “refit” case to suppress lots of root info messages that arrived with the real data
-   2015-08-11 Tingjun Yang : Do not subtract pedestal saved in the raw digit.
-   2015-08-11 Robert Sulej : adjust validation to new disabiguation
-   2015-08-10 Robert Sulej : minor change in track tagging
-   2015-08-09 Robert Sulej : Merge branch ‘develop’ of ssh://cdcvs.fnal.gov/cvs/projects/larreco into develop
-   2015-08-09 Robert Sulej : configurable minimum size of clusters used to initialize tracks
-   2015-08-07 Tingjun Yang : Replace lbne with dune.
-   2015-08-05 Mike Wallbank : MW: Updated the parameter describing the maximum cluster separation for merging so that the separation is found by considering all hits in both clusters

larsim v04_09_01
----------------------------------------

-   2015-08-13 Lynn Garren : larsim v04_09_01 for larsoft v04_19_00
-   2015-08-13 Lynn Garren : Merge branch ‘feature/tjyang_duneification’ into release/v04_19_00
-   2015-08-13 Lynn Garren : remove sample files
-   2015-08-13 Lynn Garren : remove SRT GNUmakefile
-   2015-08-13 Lynn Garren : remove SRT GNUmakefiles
-   2015-08-13 Lynn Garren : remove unmaintained sample files
-   2015-08-07 Tingjun Yang : Replace lbne with dune.

larevt v04_09_00
----------------------------------------

-   2015-08-13 Lynn Garren : install all the headers
-   2015-08-13 Lynn Garren : larevt v04_09_00 for larsoft v04_19_00
-   2015-08-13 Lynn Garren : Merge branch ‘feature/tjyang_duneification’ into release/v04_19_00
-   2015-08-13 Lynn Garren : remove sample files
-   2015-08-13 Lynn Garren : remove SRT GNUmakefile
-   2015-08-13 Lynn Garren : Merge branch ‘feature/eberly_dbinterface’ into release/v04_19_00
-   2015-08-13 Lynn Garren : remove sample files
-   2015-08-13 Lynn Garren : remove SRT GNUmakefile
-   2015-08-13 Lynn Garren : remove SRT GNUmakefiles
-   2015-08-13 Lynn Garren : remove unmaintained sample files
-   2015-08-12 Tingjun Yang : Merge branch ‘feature/eberly_dbinterface’ into feature/tjyang_duneification
-   2015-08-12 Brandon Eberly : Fix std::sort channel assignment bug
-   2015-08-11 Eberly : Remove uboone-specific hack
-   2015-08-07 Tingjun Yang : Replace lbne with dune.
-   2015-07-10 Brandon Eberly : Merge into develop and move time stamp kludge for early uboone data into SIOVDetPedestalService
-   2015-07-09 Brandon Eberly : Can’t add a uint64_t to a string
-   2015-07-09 Brandon Eberly : Massive reorganization in anticipation of new conditions service interface
-   2015-07-09 Brandon Eberly : Working commit: trying to get the new service interface to work
-   2015-07-07 Brandon Eberly : Added service interface and implementation for detector pedestals
-   2015-07-01 Brandon Eberly : New TimeStampDecoder and IDetPedestalProvider classes

lardata v04_12_00
------------------------------------------

-   2015-08-13 Lynn Garren : lardata v04_12_00 for larsoft v04_19_00
-   2015-08-13 Mike Kirby : New channel mapping query in DatabaseUtil_service.cc to do swizzling after the cable swap this evening.
-   2015-08-13 Lynn Garren : remove SRT GNUmakefiles
-   2015-08-13 Lynn Garren : remove unmaintained sample files
-   2015-08-11 Mike Kirby : Gotta pull develop to get the channel mapping fix going.
-   2015-08-11 Mike Kirby : This is the greatest fix in the history of databases\\! All hail our new database overlord, Dr. Jason St. John\\!
-   2015-08-10 Gianluca Petrillo : Caching settings from DatabaseUtil.

larcore v04_16_00
------------------------------------------

-   2015-08-13 Lynn Garren : larcore v04_16_00 for larsoft v04_19_00
-   2015-08-13 Lynn Garren : Merge branch ‘feature/tjyang_duneification’ into release/v04_19_00
-   2015-08-13 Lynn Garren : remove SRT GNUmakefile
-   2015-08-13 Lynn Garren : remove sample files
-   2015-08-13 Lynn Garren : cleanup gdml/CMakeLists.txt
-   2015-08-13 Lynn Garren : remove unmaintained sample files
-   2015-08-13 Lynn Garren : remove SRT GNUmakefiles
-   2015-08-12 Christoph Rudolf Von Rohr : Merge branch ‘feature/crohr_hitbox’ into develop
-   2015-08-12 Christoph Rudolf Von Rohr : Implemented the GetIntersections member to BoxBoundedGeo; it calculates the intersection of a box volume with a given trajectory
-   2015-08-12 Christoph Rudolf Von Rohr : Added a second ContainsPosition function with TVectro3 as an input
-   2015-07-29 Christoph Rudolf Von Rohr : Started implementing GetBoxEntryPoint function
-   2015-07-27 Christoph Rudolf Von Rohr : Added GetEntryPoint function in BoxBoundedGeo.h and added empty BoxBoundedGeo.cxx
-   2015-08-04 Lynn Garren : larcore v04_15_00 for larsoft v04_18_00
-   2015-07-31 Brian Rebel : check in both GeometryCore and AuxDetGeometryCore that the gGeoManager has not already been set. If that is the case in either, import the gdml file and then lock the geometry to prevent loading any additional files
-   2015-07-25 Gianluca Petrillo : Fixed a minor bug in the name selector
-   2015-07-25 Gianluca Petrillo : Replaced the parser of geometry tests to be run. FHiCL configuration may be affected.
-   2015-07-25 Gianluca Petrillo : Added class to parse a list of names to accept or reject from configuration (used for example in a test to learn which checks to run and which ones to skip)
-   2015-07-15 Gianluca Petrillo : Changing AuxDetGeometry art service and provider from inheritance to containment model
-   2015-07-15 Gianluca Petrillo : Severed the links between AuxDetGeometry and AuxDetGeometryCore
-   2015-07-15 Gianluca Petrillo : Removed unnecessary included headers
-   2015-07-15 Gianluca Petrillo : Removed outdated comments
-   2015-07-15 Gianluca Petrillo : Fixed include paths
-   2015-07-15 Brian Rebel : first commit of new files related to AuxDetGeometry navigation. The objects defined by these files are analogs to the traditional Geometry navigation objects.
-   2015-08-07 Tingjun Yang : Replace lbne with dune.
-   2015-08-06 Brian Rebel : Merge branch ‘feature/brebel_AuxDetGeometry’ into develop
-   2015-07-31 Brian Rebel : check in both GeometryCore and AuxDetGeometryCore that the gGeoManager has not already been set. If that is the case in either, import the gdml file and then lock the geometry to prevent loading any additional files
-   2015-07-31 Brian Rebel : Merge branch ‘feature/brebel_AuxDetGeometry’ of ssh://cdcvs.fnal.gov/cvs/projects/larcore into feature/brebel_AuxDetGeometry
-   2015-07-31 Brian Rebel : Merge branch ‘develop’ of ssh://cdcvs.fnal.gov/cvs/projects/larcore into feature/brebel_AuxDetGeometry
-   2015-07-15 Gianluca Petrillo : Changing AuxDetGeometry art service and provider from inheritance to containment model
-   2015-07-15 Gianluca Petrillo : Severed the links between AuxDetGeometry and AuxDetGeometryCore
-   2015-07-15 Gianluca Petrillo : Removed unnecessary included headers
-   2015-07-15 Gianluca Petrillo : Removed outdated comments
-   2015-07-15 Gianluca Petrillo : Fixed include paths
-   2015-07-15 Brian Rebel : first commit of new files related to AuxDetGeometry navigation. The objects defined by these files are analogs to the traditional Geometry navigation objects.

larbatch v01_13_00
--------------------------------------------

larutils v1_02_02
------------------------------------------

-   2015-08-13 Lynn Garren : larutils v1_02_02 for larsoft v04_19_00
-   2015-07-24 Lynn Garren : spell fcldir correctly
