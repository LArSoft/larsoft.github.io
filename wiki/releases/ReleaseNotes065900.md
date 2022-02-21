# LArSoft v06_59_00 Release Notes



[list of LArSoft releases](LArSoft_release_list)  
Download instructions for [larsoft v06_59_00](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v06_59_00/larsoft-v06_59_00.html)  
Download instructions for [just larsoftobj v1_32_00](http://scisoft.fnal.gov/scisoft/bundles/larsoftobj/v1_32_00/larsoftobj-v1_32_00.html)

## Purpose

-   changes in develop
-   approved feature branches

## New features

-   extended version of the recob::Vertex.
    -   feature/cerati_new-recob-vertex-and-fitter for lardataobj and larreco
-   changes to facilitate the use of GenVector vectors
    -   feature/gp_GenVectorTransition
    -   larcoreobj and larcorealg (where the change are)
    -   larsoft (for the update script)
    -   larsim and larreco (where some breakage happened)
    -   uboonecode (where some breakage happened)

## Bug fixes

## Updated dependencies

# Change List

## larsoft v06_59_00

-   2017-12-06 Lynn Garren : larsoft v06_59_00 for larsoft v06_59_00
-   2017-12-06 Lynn Garren : update versions
-   2017-12-04 Gianluca Petrillo : Update script for changes related to GenVector adoption.

## lareventdisplay v06_15_04

-   2017-12-06 Lynn Garren : lareventdisplay v06_15_04 for larsoft v06_59_00

## larexamples v06_07_12

-   2017-12-06 Lynn Garren : larexamples v06_07_12 for larsoft v06_59_00
-   2017-12-05 Gianluca Petrillo : Introduced “consumes()” calls in the examples.

## larpandora v06_17_09

-   2017-12-06 Lynn Garren : larpandora v06_17_09 for larsoft v06_59_00

## larwirecell v06_08_06

-   2017-12-06 Lynn Garren : larwirecell v06_08_06 for larsoft v06_59_00

## larana v06_13_01

-   2017-12-06 Lynn Garren : larana v06_13_01 for larsoft v06_59_00

## larreco v06_48_00

-   2017-12-06 Lynn Garren : larreco v06_48_00 for larsoft v06_59_00
-   2017-12-06 Lynn Garren : larreco v06_48_00 for larsoft v06_59_00
-   2017-12-06 Lynn Garren : fix file name
-   2017-12-06 Lynn Garren : Merge branch 'feature/gp_GenVectorTransition' into release/v06_59_00
-   2017-12-06 Lynn Garren : Merge branch 'feature/cerati_new-recob-vertex-and-fitter' into release/v06_59_00
-   2017-12-05 Giuseppe Cerati : run asserts only in debug mode
-   2017-12-05 baller : Set default association types for TrajCluster and LineCluster
-   2017-12-05 baller : Allow user definition of Cluster -\> Wire and RawDigit
-   2017-12-04 Gianluca Petrillo : Update script for changes related to GenVector adoption.
-   2017-12-01 Robert Sulej : if-else instead of switch in saving the cosmic tag (still single flag)
-   2017-11-30 Giuseppe Cerati : add documentation to VertexFitter_module.cc
-   2017-11-30 Giuseppe Cerati : rename TrackVertexMeta to VertexAssnMeta
-   2017-11-30 Giuseppe Cerati : remove asserts
-   2017-11-30 Giuseppe Cerati : add closestPointAlongTrack
-   2017-11-29 Lynn Garren : larsoft v06_58_00
-   2017-11-28 Tingjun Yang : Fix bug. Do not continue if hit is associated to an invalid point.
-   2017-11-28 Chris Backhouse : Merge branch 'develop' of ssh://cdcvs.fnal.gov/cvs/projects/larreco into develop
-   2017-11-28 Chris Backhouse : Merge branch 'bckhouse/feature_reco3d' into develop
-   2017-11-28 Chris Backhouse : DP's other view is kY, not kU.
-   2017-11-27 Giuseppe Cerati : add fcl plus small updates/fixes
-   2017-11-26 Giuseppe Cerati : vertex fitter

## larsim v06_37_00

-   2017-12-06 Lynn Garren : larsim v06_37_00 for larsoft v06_59_00
-   2017-12-06 Lynn Garren : Merge branch 'feature/gp_GenVectorTransition' into release/v06_59_00
-   2017-12-06 Tingjun Yang : Get the correct start_tdc and end_tdc accounting for the trigger offset etc.
-   2017-12-06 Jason Stock : Minor fix. const sim::SimChannel\* replaced with art::Ptr<sim::SimChannel>
-   2017-12-06 Jason Stock : Update to BackTracker service provider to make sure SimChannels are sorted when prepped.
-   2017-12-06 Jason Stock : Fixed HitToXYZ bug causing segfault.
-   2017-12-04 Gianluca Petrillo : Update script for changes related to GenVector adoption.

## larevt v06_16_11

-   2017-12-06 Lynn Garren : larevt v06_16_11 for larsoft v06_59_00

## lardata v06_33_01

-   2017-12-06 Lynn Garren : lardata v06_33_01 for larsoft v06_59_00

## larcore v06_15_07

-   2017-12-06 Lynn Garren : larcore v06_15_07 for larsoft v06_59_00

## larpandoracontent v03_08_01

## larsoftobj v1_32_00

-   2017-12-06 Lynn Garren : larsoftobj v1_32_00 for larsoft v06_59_00
-   2017-12-06 Lynn Garren : update versions

## lardataobj v1_23_00

-   2017-12-06 Lynn Garren : lardataobj v1_23_00 for larsoft v06_59_00
-   2017-11-30 Giuseppe Cerati : rename TrackVertexStatus as VertexAssnStatus
-   2017-11-30 Giuseppe Cerati : rename TrackVertexMeta to VertexAssnMeta
-   2017-11-27 Giuseppe Cerati : fix bug
-   2017-11-27 Giuseppe Cerati : add schema evolution rules
-   2017-11-26 Giuseppe Cerati : new recob::Vertex and TrackVertexMeta

## larcorealg v1_11_00

-   2017-12-06 Lynn Garren : larcorealg v1_11_00 for larsoft v06_59_00
-   2017-12-06 Lynn Garren : fix file name
-   2017-12-06 Lynn Garren : fix file name
-   2017-12-04 Gianluca Petrillo : Amend
-   2017-12-04 Gianluca Petrillo : Refurbished the algorithm for geo::GeometryCore::GetTPCFrontFaceCenter
-   2017-12-04 Gianluca Petrillo : Extending geometry interface for the adoption of GenVector
-   2017-11-17 Gianluca Petrillo : Doxygen fixes to GeometryCore.h documentation.
-   2017-11-17 Gianluca Petrillo : Revised documentation of some geo::GeoemtryCore methods.

## larcoreobj v1_17_00

-   2017-12-06 Lynn Garren : larcoreobj v1_17_00 for larsoft v06_59_00
-   2017-12-04 Gianluca Petrillo : Moved utilities to larcorealg/Geometry/geo_vectors_utils.h

## larbatch v01_34_02

-   2017-12-06 Lynn Garren : larbatch v01_34_02 for larsoft v06_59_00
-   2017-12-06 Herbert Greenlee : Tweak multistage data selection.
-   2017-12-04 Herbert Greenlee : Fix memory override bug.

## larutils v1_20_02

-   2017-12-06 Lynn Garren : larutils v1_20_02 for larsoft v06_59_00
-   2017-12-06 Thomas Junk : remove .upsfiles once we're done with them
-   2017-12-06 Thomas Junk : fix missing _FQ in a loop test
-   2017-12-06 Thomas Junk : put back .upsfiles/dbconfig so ups declare works as expected
-   2017-12-06 Thomas Junk : change definition of DUNEPDSPRCE_DIR to point to the top level (so source and include make sense), and define a new DUNEPDSPRCE_FQ_DIR
-   2017-12-05 Thomas Junk : redo the sed -i — gave an extra copy of the table file on mac before replacement of the string
-   2017-12-05 Thomas Junk : don't make .upsfiles
-   2017-12-01 Thomas Junk : replace the qualifier in the table file — some symbols need to be translated, others not
-   2017-12-01 Thomas Junk : disable parameter substitution in the table file here document
-   2017-12-01 Thomas Junk : tar up the upsfiles directory too
-   2017-12-01 Thomas Junk : follow more symlinks
-   2017-12-01 Thomas Junk : clean up, and restore some link-following options to the copy of header files
-   2017-11-30 Thomas Junk : remove recursive readlink — not allowed on mac
-   2017-11-30 Thomas Junk : capture stderr too
-   2017-11-29 Thomas Junk : print out g version
-   2017-11-29 Thomas Junk : mac doesn't like cp -r -L though linux does
-   2017-11-29 Thomas Junk : Jenkins build script for JJ Russell's access class
