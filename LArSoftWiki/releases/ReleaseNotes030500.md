# LArSoft v03_05_00 Release Notes



[list of LArSoft releases](LArSoft_release_list)  
[Download instructions](https://scisoft.fnal.gov/scisoft/bundles/larsoft/v03_05_00/larsoft-v03_05_00.html)

## Purpose

-   Changes in develop since v03_04_06
-   MicroBoone request

## New features

-   UniqueRangeSet object in lardata
-   AuxDetGeo trapezoid implimentation change
-   \#7532: make DumpWires module independent of geometry

## Bug fixes

## Updated dependencies

|          |           |           |                                                  |
|----------|-----------|-----------|--------------------------------------------------|
| Product  | Version   | Qualifier | Notes                                            |
| larbatch | v01_00_01 |           | build with cetbuildtools v4_04_03                |
| git      | v1_8_5_6 |           | security update                                  |
| mrb      | v1_03_04  |           | improvements for building null flavored products |

# Change List

## larsoft v03_05_00

-   2015-01-05 Lynn Garren : make sure cetbuildtools v4_04_03 is available
-   2015-01-05 Lynn Garren : larsoft v03_05_00 product list
-   2015-01-05 Lynn Garren : lardata Range.h and UniqueRangeSet.h

## lareventdisplay v03_03_00

-   2015-01-05 Lynn Garren : lareventdisplay v03_03_00 for larsoft v03_05_00
-   2015-01-02 Tingjun Yang : Display all possible wire segments for each wire. This is only relevant for wrapped wires.
-   2014-12-30 Bruce Baller : Prevent accessing nonsensical color values

## larexamples v03_02_10

-   2015-01-05 Lynn Garren : larexamples v03_02_10 for larsoft v03_05_00

## larpandora v03_04_03

-   2015-01-05 Lynn Garren : larpandora v03_04_03 for larsoft v03_05_00

## larana v03_03_07

-   2015-01-05 Lynn Garren : for larsoft v03_05_00
-   2014-12-21 Alex Himmel : Add an “instance name” to the parameter list for this module. This is blank in the default setup of the module, but needs to be set to a value in order to read in data products from the LBNE 35ton data.
-   2014-12-18 Lynn Garren : larsoft v03_04_06
-   2014-12-16 Sarah Lockwitz : Added error score values for tracks with poorly found end points… just in case

## larreco v03_04_02

-   2015-01-05 Lynn Garren : larreco v03_04_02 for larsoft v03_05_00
-   2015-01-02 Tingjun Yang : Change SeedFinderAlgorithm to SeedFinder.
-   2015-01-02 Tingjun Yang : Clean up fcl files.
-   2014-12-29 Tingjun Yang : use ConvertTicksToX to get x coordinate for each spacepoint

## larsim v03_03_02

-   2015-01-05 Lynn Garren : larsim v03_03_02 for larsoft v03_05_00
-   2014-12-30 Lynn Garren : using ROOT_EGPYTHIA6 which is now properly defined by cetbuildtools v4_04_02
-   2014-12-29 Lynn Garren : use the predefined library name
-   2014-12-22 Gianluca Petrillo : Added explicit link to Root Pytia6 library, silently needed by Genie

## larevt v03_03_00

-   2015-01-05 Lynn Garren : larevt v03_03_00 for larsoft v03_05_00
-   2014-12-18 Lynn Garren : larsoft v03_04_06
-   2014-12-17 Gianluca Petrillo : Issue \#7532: make DumpWires module independent of geometry

## lardata v03_05_00

-   2015-01-05 Lynn Garren : lardata v03_05_00 for larsoft v03_05_00
-   2015-01-02 Wesley Ketchum : allow ranges to have same start and end
-   2015-01-01 Wesley Ketchum : add in range tool written by kazu

## larcore v03_04_00

-   2015-01-05 Lynn Garren : larcore v03_04_00 for larsoft v03_05_00
-   2014-12-24 Tyler Alion : Merge branch 'feature/AuxDetTrap' into develop. This generalizes the AuxDetGeo object to handle trapezoids differeing in x dimension but not y (local coordinates). In the case of a box, the two width dimensions are the same and all behaves as before, which has been thoroughly tested in the microboone geometry, which is the only other user. A bug was fixed in Geometry::FindAuxDetAtPosition, so microboone will see a difference in their muon counter simulation; the local coordinates system used to be applied where a world coordinate system should have. Now the input position is transformed to local coordinates. lbne35t jobs should keep using the default v2 geometry until larsim/LArG4/AuxDetReadoutGeometry.cxx can be rewritten to be less limiting — a **necessary** change to be able to use lbne35t4apa_v3.
-   2014-12-24 Tyler Alion : Change the AuxDetGeo trapezoid implimentation to not assume the smaller width to be at local coordinate +z/2, instead using HalfWidth1 and HalfWidth2.
-   2014-12-19 Tyler Alion : Merge branch 'develop' into feature/AuxDetTrap
-   2014-12-19 Tyler Alion : rge branch 'develop' of ssh://cdcvs.fnal.gov/cvs/projects/larcore into develop
-   2014-12-17 Gianluca Petrillo : Issue 7531: add a new “standard” geometry
-   2014-12-12 Tyler Alion : add comment to the one new AuxDetGeo data member that facilitates trapezoidal AuxDets
-   2014-12-04 Tyler Alion : Generalize AuxDetGeo and FindAuxDetAtPosition to handle trapezoidal AuxDets. This fixes a bug which before overlooked any rotation the AuxDets have in local coordinates.
