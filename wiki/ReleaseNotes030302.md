LArSoft v03\_03\_02 Release Notes(#LArSoft-v03_03_02-Release-Notes)
======================================================================

-   **Table of contents**
-   [LArSoft v03\_03\_02 Release Notes](#LArSoft-v03_03_02-Release-Notes)
    -   [Purpose](#Purpose)
    -   [Bug fixes](#Bug-fixes)
    -   [Updated dependencies](#Updated-dependencies)
-   [Change List](#Change-List)
    -   [larsoft v03\_03\_02](#larsoft-v03_03_02)
    -   [lareventdisplay v03\_02\_02](#lareventdisplay-v03_02_02)
    -   [larexamples v03\_02\_02](#larexamples-v03_02_02)
    -   [larpandora v03\_03\_01](#larpandora-v03_03_01)
    -   [larana v03\_02\_03](#larana-v03_02_03)
    -   [larreco v03\_02\_03](#larreco-v03_02_03)
    -   [larsim v03\_02\_02](#larsim-v03_02_02)
    -   [larevt v03\_02\_02](#larevt-v03_02_02)
    -   [lardata v03\_02\_02](#lardata-v03_02_02)
    -   [larcore v03\_02\_02](#larcore-v03_02_02)

[list of LArSoft releases](LArSoft_release_list)\
[Download instructions](http://scisoft.fnal.gov/scisoft/projects/larsoft/v03_03_02/larsoft-v03_03_02.html)

Purpose(#Purpose)
--------------------

Include changes in development since v03\_03\_01.

Bug fixes(#Bug-fixes)
------------------------

Updated dependencies(#Updated-dependencies)
----------------------------------------------

The head of develop for all larsoft packages now uses bug fix release cetbuildtools v4\_03\_01.

Change List(#Change-List)
============================

larsoft v03\_03\_02(#larsoft-v03_03_02)
------------------------------------------

-   2014-10-28 Lynn Garren : larsoft v03\_03\_02
-   2014-10-28 Lynn Garren : new file Calorimetry/TrackCalorimetryAlg.h

lareventdisplay v03\_02\_02(#lareventdisplay-v03_02_02)
----------------------------------------------------------

-   2014-10-28 Lynn Garren : for larsoft v03\_03\_02

larexamples v03\_02\_02(#larexamples-v03_02_02)
--------------------------------------------------

-   2014-10-28 Lynn Garren : for larsoft v03\_03\_02

larpandora v03\_03\_01(#larpandora-v03_03_01)
------------------------------------------------

-   2014-10-28 Lynn Garren : for larsoft v03\_03\_02

larana v03\_02\_03(#larana-v03_02_03)
----------------------------------------

-   2014-10-28 Lynn Garren : for larsoft v03\_03\_02
-   2014-10-26 Wesley Ketchum : Merge branch ‘feature/wketchum\_FindManyPCalo’ into develop
-   2014-10-26 Wesley Ketchum : fix a typo
-   2014-10-26 Wesley Ketchum : remove spacepoint parts, as I do not end up using them
-   2014-10-26 Wesley Ketchum : add in elemetns of the fhicl files
-   2014-10-26 Wesley Ketchum : function for making the calorimetry object
-   2014-10-26 Wesley Ketchum : add in a function to determine what direction track is going based on charge at track endpoints
-   2014-10-26 Wesley Ketchum : change the hit analysis part to use a multiset, so the outcome is sorted based on location in track
-   2014-10-26 Wesley Ketchum : updates to path length vector
-   2014-10-24 Wesley Ketchum : add in a vector to calculate fraction of path length traversed, for doing residual range later
-   2014-10-22 Wesley Ketchum : fill other vectors per hit, and add in CalorimetryAlg object and use it to get dEdx—note, assuming area for all calculations here
-   2014-10-22 Wesley Ketchum : uncomment the track pitch part, and fix some typos
-   2014-10-22 Wesley Ketchum : add in retrieval of pitch from track object
-   2014-10-22 Wesley Ketchum : add in comparison class to find nearest trajectory point to each hit
-   2014-10-22 Wesley Ketchum : change detprop to non-const object, since ConvertXtoTicks can change detprop internally!!!
-   2014-10-22 Wesley Ketchum : start fleshing out the TrackCalorimetryAlg: set up the loops over tracks and planes, and start to map out looping over the hits to get track pitch
-   2014-10-21 Wesley Ketchum : start refactoring track calorimetry

larreco v03\_02\_03(#larreco-v03_02_03)
------------------------------------------

-   2014-10-28 Lynn Garren : for larsoft v03\_03\_02
-   2014-10-24 Herbert Greenlee : Add ability in Track3DKalmanHit to only store trajectory points corresponding to the preferred plane. When enabled, this produces smoother tracks. Enabled by default.
-   2014-10-24 Herbert Greenlee : Add some commented out debug messages.
-   2014-10-23 Herbert Greenlee : Fix distance calculation.
-   2014-10-23 Herbert Greenlee : Change some debugging output. Change slope cut from dx/dz to dx/ds.
-   2014-10-23 Gianluca Petrillo : DumpClusters and DumpTracks modules now write the name of the collection on output
-   2014-10-22 Gianluca Petrillo : LineMerger module: moved FindManyP query out of loop (issue [\#7058](/redmine/issues/7058 "Bug: FindManyP() usage in LineMerger module (Closed)")); also removed dependency on Geometry service and changed constantness of some elements and minor technical details.
-   2014-10-17 Herbert Greenlee : Update debugging output.

larsim v03\_02\_02(#larsim-v03_02_02)
----------------------------------------

-   2014-10-28 Lynn Garren : for larsoft v03\_03\_02
-   2014-10-23 Alex Himmel : Make the new x-axis in the y-z projection plots of the photon library analyzer configurable. Default behavior is unchanged. Needed since LBNE and MicroBooNE seem to prefer different orientations here.

larevt v03\_02\_02(#larevt-v03_02_02)
----------------------------------------

-   2014-10-28 Lynn Garren : for larsoft v03\_03\_02

lardata v03\_02\_02(#lardata-v03_02_02)
------------------------------------------

-   2014-10-28 Lynn Garren : for larsoft v03\_03\_02
-   2014-10-24 Herbert Greenlee : Add preferred plane as attribute of KGTrack. Add ability to only genearte trajectory points for hits from the preferred plane.
-   2014-10-24 Herbert Greenlee : Add print method and output stream operator for KGTrack.
-   2014-10-22 Wesley Ketchum : add option in Track::PitchInView for getting pitch at arbitrary point along trajectory, instead of only at beginning of track
-   2014-10-22 Wesley Ketchum : Revert “make const function for convert X to ticks and vice versa”
-   2014-10-22 Wesley Ketchum : make const function for convert X to ticks and vice versa

larcore v03\_02\_02(#larcore-v03_02_02)
------------------------------------------

-   2014-10-28 Lynn Garren : for larsoft v03\_03\_02
-   2014-10-23 Tyler Alion : Change the use of std::string::find to its intended use in GeometryTest when testing pitches depending on detector.
