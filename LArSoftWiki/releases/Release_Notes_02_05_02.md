# LArSoft v02_05_02 Release Notes

[list of LArSoft releases](LArSoft_release_list)

## larsoft v02_05_02

-   2014-08-26 Lynn Garren : releaseDB/base_dependency_database for v02_05_02

## lareventdisplay v02_05_02

-   2014-08-26 Tingjun Yang : Merge branch 'feature/fclupdates' into develop
-   2014-08-13 Tingjun Yang : fix calorimetry display, clean up fcl files

## larexamples v02_05_02

-   2014-08-26 William Seligman : Update .fcl file with current style of services include.

## larpandora v02_05_02

-   2014-08-26 Brian Rebel : Merge branch 'develop' of ssh://cdcvs.fnal.gov/cvs/projects/larpandora into develop
-   2014-08-15 Andrew Blake : Use integers rather than floats when looping. To make this change, I made the 'XOverlap' objects (which store the information used to sample events or compare views using the X coordinate) return their own integer 'xBin' values.
-   2014-08-15 Andrew Blake : Fixing loop in ThreeDTransverseTracksAlgorithm when separation in X drops below floating point precision
-   2014-08-14 Brian Rebel : remove use of Geometry::DetId() throughout the code. Use instead the Geometry::DetectorName() to store the string of the detector.

## larana v02_05_02

-   2014-08-25 Wesley Ketchum : Merge remote-tracking branch 'origin/develop' into feature/wketchum_CosmicTag
-   2014-08-24 Wesley Ketchum : forgot to put hit\<—\>tag assns on event! how ridiculous!
-   2014-08-24 Wesley Ketchum : forgot the produces line for hit\<—\>tag assns
-   2014-08-24 Wesley Ketchum : add in a hit\<—\>tag associator alg, using track is intermediate
-   2014-08-23 Sowjanya Gollapinni : Removing a line in CosmicTrackTagger that was creating additional tags. Also putting a generic cosmictagger fhicl file
-   2014-08-22 Wesley Ketchum : fix a few spots where I missed the new CosmicTagID_t
-   2014-08-22 Wesley Ketchum : make cosmic taggers use new CosmicTagID_t enum; also, mv the older CosmicTagger_module but leave it here just in case we need it
-   2014-08-22 Wesley Ketchum : Merge branch 'develop' of ssh://cdcvs.fnal.gov/cvs/projects/larana into develop
-   2014-08-22 Wesley Ketchum : Merge branch 'feature/wketchum_bftmUpdates' into develop
-   2014-08-22 Wesley Ketchum : add a few extra options to BFTMT: normalize the hypothesis to compare to flash, and minimum track length to compare —- also, change some default fcl parameters
-   2014-08-22 Sarah Lockwitz : fixed how single boundary tracks are handled
-   2014-08-22 Wesley Ketchum : add in option for making outside drift window tags
-   2014-08-22 Wesley Ketchum : Merge branch 'develop' of ssh://cdcvs.fnal.gov/cvs/projects/larana into develop
-   2014-08-22 Wesley Ketchum : Merge branch 'feature/wketchum_CosmicTagAnaSpeedy' into develop
-   2014-08-22 Wesley Ketchum : fix some typos
-   2014-08-22 Wesley Ketchum : remove the timing stuff, and do some general cleaning —- prepare to merge this thing!
-   2014-08-21 Wesley Ketchum : some timing stuff
-   2014-08-20 Sowjanya Gollapinni : putting some code in to tag delta rays associated to a already cosmic tagged track
-   2014-08-18 Wesley Ketchum : fix a bug on flash integral, check for photon visbility vector size to prevent crashes, and skip tracks outside drift window; also, update default settings in fcl file
-   2014-08-17 Wesley Ketchum : Merge branch 'feature/wketchum_BeamFlashTrackMatch' into develop
-   2014-08-17 Wesley Ketchum : add in some debugging/information functions to BeamFlashTrackMatchTagger
-   2014-08-17 Wesley Ketchum : put the module and alg parameters in the fcl file
-   2014-08-17 Wesley Ketchum : fixes to make it compile
-   2014-08-16 Wesley Ketchum : BeamFlashCompatibility for nonBezierTracks
-   2014-08-16 Wesley Ketchum : quick fix on typo of association utility call
-   2014-08-16 Wesley Ketchum : Merge branch 'develop' into feature/wketchum_CosmicTagAnaSpeedy
-   2014-08-16 Wesley Ketchum : use the new utilities, and remove a bunch of unnecessary headers
-   2014-08-15 Wesley Ketchum : remove all the old to make room for the new
-   2014-08-15 Wesley Ketchum : adjust ordering of getting assoiciations
-   2014-08-15 Wesley Ketchum : adding in a bunch of new ways of doing things to improve timing; this is all very dirty code right now, but useful for doing timing comparisons
-   2014-08-15 Sarah Lockwitz : cleaned up the tagger code a bit
-   2014-08-14 Wesley Ketchum : Merge branch 'develop' into feature/wketchum_CosmicTagMCTest
-   2014-08-14 Wesley Ketchum : put in use of mchitcollection on cosmic ana

## larreco v02_05_02

-   2014-08-26 Lynn Garren : d5 and d6 need to be initialized
-   2014-08-26 Brian Rebel : Merge branch 'develop' of ssh://cdcvs.fnal.gov/cvs/projects/larreco into develop
-   2014-08-26 Brian Rebel : Merge branch 'feature/NoDetId' into develop
-   2014-08-25 Brian Rebel : remove commented out include
-   2014-08-21 Herbert Greenlee : Add ability of Track3DKalmanHit to use PFParticle hits as input (from Tracy Usher).
-   2014-08-23 Bruce Baller : Numerous improvements to cluster crawling and vertex finding
-   2014-08-17 Muhammad Elnimr : Updates to TrackAnaCT.
-   2014-08-14 Brian Rebel : remove use of Geometry::DetId() throughout the code. Use instead the Geometry::DetectorName() to store the string of the detector.

## larsim v02_05_02

-   2014-08-26 Tingjun Yang : Merge branch 'develop' of ssh://cdcvs.fnal.gov/cvs/projects/larsim into develop
-   2014-08-26 Brian Rebel : Merge branch 'develop' of ssh://cdcvs.fnal.gov/cvs/projects/larsim into develop
-   2014-08-26 Brian Rebel : Merge branch 'feature/NoDetId' into develop
-   2014-08-25 Brian Rebel : remove use of ChannelFilter as it is undefined for most detectors
-   2014-08-22 Thomas Junk : fix bug in bugfix — uniform in sin(thetaYZ) (mistakenly had been switched to uniform in thetaYZ). Keep the bounds checking to ensure that the interval stays in -pi/2 to pi/2 for all user input.
-   2014-08-21 Tristan Blackburn : Fixed bug in uniform thetaYZ
-   2014-08-21 Tristan Blackburn : Fixed bug in uniform thetaYZ
-   2014-08-15 Tingjun Yang : clean up fcl files
-   2014-08-14 Brian Rebel : remove use of Geometry::DetId() throughout the code. Use instead the Geometry::DetectorName() to store the string of the detector.

## larevt v02_05_02

-   2014-08-26 Brian Rebel : fix a bad commit that failed to compile
-   2014-08-26 Brian Rebel : Merge branch 'develop' of ssh://cdcvs.fnal.gov/cvs/projects/larevt into develop
-   2014-08-26 Brian Rebel : Merge branch 'feature/NoDetId' into develop
-   2014-08-25 Brian Rebel : remove use of ChannelFilter as it is undefined for most detectors
-   2014-08-14 Brian Rebel : remove use of Geometry::DetId() throughout the code. Use instead the Geometry::DetectorName() to store the string of the detector name in the RunSummary object.

## lardata v02_05_02

-   2014-08-26 Tingjun Yang : remove signalservices.fcl from services_csu40L.fcl
-   2014-08-26 Tingjun Yang : Merge branch 'feature/fclupdates' into develop
-   2014-08-26 Tingjun Yang : Merge branch 'feature/fclupdates' of ssh://cdcvs.fnal.gov/cvs/projects/lardata into feature/fclupdates
-   2014-08-15 Tingjun Yang : add configurations for csu40L
-   2014-08-14 Tingjun Yang : move experiment fcl parameters out of standard fcl files
-   2014-08-14 Tingjun Yang : move experiment fcl parameters out of standard fcl files
-   2014-08-14 Tingjun Yang : move experiment fcl parameters out of standard fcl files
-   2014-08-14 Tingjun Yang : clean up fcl files
-   2014-08-25 Wesley Ketchum : Merge remote-tracking branch 'origin/develop' into feature/wketchum_CosmicTag
-   2014-08-24 Wesley Ketchum : forgot some updates to classes_def for doing hit\<—\>tag associations
-   2014-08-22 Wesley Ketchum : update classes_def.xml (calling this CosmicTag v2), and add in a few single boundary types to the CosmicTag enum
-   2014-08-22 Wesley Ketchum : Merge branch 'develop' into feature/wketchum_CosmicTag
-   2014-08-22 Wesley Ketchum : version number in anab::CosmicTag classdef
-   2014-08-16 Wesley Ketchum : Merge branch 'develop' into feature/wketchum_NewAssocUtils
-   2014-08-15 Wesley Ketchum : add in some simple and useful utilities for making simple vectors and vector of vectors from assns
-   2014-08-15 Tingjun Yang : add configurations for csu40L
-   2014-08-14 Tingjun Yang : move experiment fcl parameters out of standard fcl files
-   2014-08-14 Tingjun Yang : move experiment fcl parameters out of standard fcl files
-   2014-08-14 Tingjun Yang : move experiment fcl parameters out of standard fcl files
-   2014-08-14 Tingjun Yang : clean up fcl files
-   2014-08-07 Wesley Ketchum : put in CosmicTagID_t

## larcore v02_05_02

-   2014-08-26 Brian Rebel : Merge branch 'develop' of ssh://cdcvs.fnal.gov/cvs/projects/larcore into develop
-   2014-08-26 Brian Rebel : Merge branch 'feature/NoDetId' into develop
-   2014-08-25 Brian Rebel : add a warning message to indicate that the geometry is using the detector id rather than the detector name
-   2014-08-25 Brian Rebel : add a warning message to indicate that the geometry is using the detector id rather than the detector name
-   2014-08-14 Brian Rebel : remove the use of DetId from most code. The enumeration still exists, along with a new kUnknownDetId to enable a cascade for use with files already on disk. When necessary, compare the value returned by DetectorName - mostly done in either very experiment specific code (ie MicroBooNEPandora_module.cc) or in the GeometryTest_module.cc. Remove some unused functions from Geometry, GetGDMLPath and GetROOTPath as they return the same value as the ROOTFile and GMDLFile methods. Changed GetDetectorName to DetectorName as the Get is just 3 characters of extra typing.
-   2014-08-13 Brian Rebel : changes to remove the use of DetId_t from LArSoft. Add an enumeration for kUnknownDetId for the time being. Prefer to work with strings of the detector name in RunData and Geometry vs the old DetId_t, but cascade to the old way of doing thing for files that already exist on disk
