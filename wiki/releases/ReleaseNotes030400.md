# LArSoft v03_04_00 Release Notes



[list of LArSoft releases](LArSoft_release_list)  
[Download instructions](https://scisoft.fnal.gov/scisoft/projects/larsoft/v03_04_00/larsoft-v03_04_00.html)

## Purpose

-   Include changes in development since v03_03_02.

## New features

-   lardata, larreco, and larana now include code necessary for including a plane ID in the anab::Calorimetry data product.

## Bug fixes

## Updated dependencies

|              |          |           |       |
|--------------|----------|-----------|-------|
| Product      | Version  | Qualifier | Notes |
| larsoft_data | v0_03_01 |           |       |

# Change List

## larsoft v03_04_00

-   2014-11-04 Lynn Garren : laroft v03_04_00
-   use larsoft_data v0_03_01

## lareventdisplay v03_02_03

-   2014-11-04 Lynn Garren : lareventdisplay v03_02_03

## larexamples v03_02_03

-   2014-11-04 Lynn Garren : larexamples v03_02_03

## larpandora v03_03_02

-   2014-11-04 Lynn Garren : larpandora v03_03_02

## larana v03_03_00

-   2014-11-04 Wesley Ketchum : fix a typo, and normalize the KDE estimates
-   2014-11-04 Wesley Ketchum : put in all the fcl files, make a tree to look at output more easily, and do a little debugging
-   2014-11-04 Wesley Ketchum : fill in all the fhicl files
-   2014-11-01 Wesley Ketchum : write some code so I can print the PIDA to screen and check on the values
-   2014-11-01 Wesley Ketchum : add in an analyzer module for looking at the PIDAAlg
-   2014-11-01 Wesley Ketchum : handle the PIDA distribution in a more sophisticated way: get most probable value (more suitable if it is a landau shape, and less likely to be influenced by bad dEdx) via a kernel density estimation process
-   2014-11-01 Wesley Ketchum : add in a normal distribution class, so i dont have to evaluate guassians every time i need to for the KDE stuff ima gonna write soon
-   2014-11-01 Wesley Ketchum : add in a minimum residual range option
-   2014-11-01 Wesley Ketchum : do the meat of the algorithm … first the simple functions
-   2014-11-01 Wesley Ketchum : make a little PIDA standalong algorithm
-   2014-10-31 Wesley Ketchum : fix association making, and print all calorimetry objects per track
-   2014-10-30 Wesley Ketchum : update calorimetry modules to use a plane ID
-   2014-10-29 Wesley Ketchum : fix a bug in the direction of the track (actually, filling of residual range vector, etc.)
-   2014-10-29 Wesley Ketchum : fixes to get it to build
-   2014-10-29 Wesley Ketchum : make a very simple analyzer to just print out the calorimetry objects for comparison
-   2014-10-29 Wesley Ketchum : start on an analyzer to simply print calorimetry objects for direct comparison
-   2014-10-28 Wesley Ketchum : fix path length fraction function, and remove some cout statements
-   2014-10-28 Wesley Ketchum : comment out a bad clear of the multiseet
-   2014-10-28 Wesley Ketchum : put in a print function for debugging

## larreco v03_03_00

-   2014-11-04 Wesley Ketchum : Merge branch 'feature/wketchum_CalorimetryPlaneID' into develop
-   2014-11-04 Bruce Baller : CCTrackMaker module + ClusterCrawler mods + new algs
-   2014-11-04 Bruce Baller : CCTrackMaker module addition plus ClusterCrawler mods and new algs
-   2014-10-30 Wesley Ketchum : update shower reco to use a plane ID when it makes its calo objects

## larsim v03_02_03

-   2014-11-04 Lynn Garren : larsim v03_02_03
-   use larsoft_data v0_03_01

## larevt v03_02_03

-   2014-11-04 Lynn Garren : larevt v03_02_03

## lardata v03_03_00

-   2014-11-04 Wesley Ketchum : Merge branch 'feature/wketchum_CalorimetryPlaneID' into develop
-   2014-11-04 Herbert Greenlee : Add comment to the effect that FileCatalogMetadataExtras is depracated.
-   2014-10-30 Wesley Ketchum : add in a PlaneID for the calorimetry object
-   2014-10-29 Wesley Ketchum : add a few other elements to be printed out with Calorimetry object

## larcore v03_03_00

-   2014-10-31 Gianluca Petrillo : Removed spurious file
-   2014-10-31 Gianluca Petrillo : Merge branch 'feature/bb_wirework' into develop
-   2014-09-18 Gianluca Petrillo : Forgot to remove one noisy line from GeometryTest
-   2014-09-18 Gianluca Petrillo : One of the wire test in GeometryTest can now be disabled.
-   2014-09-18 Gianluca Petrillo : Reduced the output of geometry test in profiling mode.
-   2014-09-17 Gianluca Petrillo : Added PlaneGeo::WireIDincreasesWithZ()
-   2014-09-17 Gianluca Petrillo : Added methods to compute normal direction and increasing wire direction to geo::PlaneGeo. Added constructors to geo::XxxID and more object retrieval to geometry iterators. Made the GeometryTest module code more generic.
-   2014-09-16 Gianluca Petrillo : Make TPCID compatible with the one in develop
-   2014-08-27 Gianluca Petrillo : Made WireCoordinate() test optional. LBNE fails the test (at least in part, the test fails LBNE).
-   2014-08-27 Gianluca Petrillo : Added extensive NearestWire() geometry test
-   2014-09-04 Lynn Garren : for larsoft v02_06_00
-   2014-09-03 Lynn Garren : for larsoft v02_05_03
-   2014-09-02 Corey Adams : Removing lar1 files from larcore.
-   2014-08-26 Lynn Garren : for larsoft v02_05_02
-   2014-08-25 Brian Rebel : add a warning message to indicate that the geometry is using the detector id rather than the detector name
-   2014-08-25 Brian Rebel : add a warning message to indicate that the geometry is using the detector id rather than the detector name
-   2014-08-14 Brian Rebel : remove the use of DetId from most code. The enumeration still exists, along with a new kUnknownDetId to enable a cascade for use with files already on disk. When necessary, compare the value returned by DetectorName - mostly done in either very experiment specific code (ie MicroBooNEPandora_module.cc) or in the GeometryTest_module.cc. Remove some unused functions from Geometry, GetGDMLPath and GetROOTPath as they return the same value as the ROOTFile and GMDLFile methods. Changed GetDetectorName to DetectorName as the Get is just 3 characters of extra typing.
-   2014-08-13 Brian Rebel : changes to remove the use of DetId_t from LArSoft. Add an enumeration for kUnknownDetId for the time being. Prefer to work with strings of the detector name in RunData and Geometry vs the old DetId_t, but cascade to the old way of doing thing for files that already exist on disk
-   2014-08-27 Gianluca Petrillo : Fixing bugs from the last commit
-   2014-08-27 Gianluca Petrillo : Fixing a bug in the new Geometry::WireCoordinate()
-   2014-08-26 Gianluca Petrillo : Formal interface change in ChannelMapAlg::WireCoordinate()
-   2014-08-25 Gianluca Petrillo : Fixed the y shift in the WireCoordinate() test
-   2014-08-25 Gianluca Petrillo : Added test to Geometry::WireCoordinate() (debug version, needs to be made quiet)
-   2014-08-25 Gianluca Petrillo : Added cryostat, TPC, plane and wire iterators to iterate though the whole detector.
-   2014-08-22 Bruce Baller : Add WireCoordinate and ThirdPlaneSlope methods
