LArSoft v06\_59\_00 Release Notes(#LArSoft-v06_59_00-Release-Notes)
======================================================================

-   **Table of contents**
-   [LArSoft v06\_59\_00 Release Notes](#LArSoft-v06_59_00-Release-Notes)
    -   [Purpose](#Purpose)
    -   [New features](#New-features)
    -   [Bug fixes](#Bug-fixes)
    -   [Updated dependencies](#Updated-dependencies)
-   [Change List](#Change-List)
    -   [larsoft v06\_59\_00](#larsoft-v06_59_00)
    -   [lareventdisplay v06\_15\_04](#lareventdisplay-v06_15_04)
    -   [larexamples v06\_07\_12](#larexamples-v06_07_12)
    -   [larpandora v06\_17\_09](#larpandora-v06_17_09)
    -   [larwirecell v06\_08\_06](#larwirecell-v06_08_06)
    -   [larana v06\_13\_01](#larana-v06_13_01)
    -   [larreco v06\_48\_00](#larreco-v06_48_00)
    -   [larsim v06\_37\_00](#larsim-v06_37_00)
    -   [larevt v06\_16\_11](#larevt-v06_16_11)
    -   [lardata v06\_33\_01](#lardata-v06_33_01)
    -   [larcore v06\_15\_07](#larcore-v06_15_07)
    -   [larpandoracontent v03\_08\_01](#larpandoracontent-v03_08_01)
    -   [larsoftobj v1\_32\_00](#larsoftobj-v1_32_00)
    -   [lardataobj v1\_23\_00](#lardataobj-v1_23_00)
    -   [larcorealg v1\_11\_00](#larcorealg-v1_11_00)
    -   [larcoreobj v1\_17\_00](#larcoreobj-v1_17_00)
    -   [larbatch v01\_34\_02](#larbatch-v01_34_02)
    -   [larutils v1\_20\_02](#larutils-v1_20_02)

[list of LArSoft releases](LArSoft_release_list)\
Download instructions for [larsoft v06\_59\_00](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v06_59_00/larsoft-v06_59_00.html)\
Download instructions for [just larsoftobj v1\_32\_00](http://scisoft.fnal.gov/scisoft/bundles/larsoftobj/v1_32_00/larsoftobj-v1_32_00.html)

Purpose(#Purpose)
--------------------

-   changes in develop
-   approved feature branches

New features(#New-features)
------------------------------

-   extended version of the recob::Vertex.
    -   feature/cerati\_new-recob-vertex-and-fitter for lardataobj and larreco
-   changes to facilitate the use of GenVector vectors
    -   feature/gp\_GenVectorTransition
    -   larcoreobj and larcorealg (where the change are)
    -   larsoft (for the update script)
    -   larsim and larreco (where some breakage happened)
    -   uboonecode (where some breakage happened)

Bug fixes(#Bug-fixes)
------------------------

Updated dependencies(#Updated-dependencies)
----------------------------------------------

Change List(#Change-List)
============================

larsoft v06\_59\_00(#larsoft-v06_59_00)
------------------------------------------

-   2017-12-06 Lynn Garren : larsoft v06\_59\_00 for larsoft v06\_59\_00
-   2017-12-06 Lynn Garren : update versions
-   2017-12-04 Gianluca Petrillo : Update script for changes related to GenVector adoption.

lareventdisplay v06\_15\_04(#lareventdisplay-v06_15_04)
----------------------------------------------------------

-   2017-12-06 Lynn Garren : lareventdisplay v06\_15\_04 for larsoft v06\_59\_00

larexamples v06\_07\_12(#larexamples-v06_07_12)
--------------------------------------------------

-   2017-12-06 Lynn Garren : larexamples v06\_07\_12 for larsoft v06\_59\_00
-   2017-12-05 Gianluca Petrillo : Introduced “consumes()” calls in the examples.

larpandora v06\_17\_09(#larpandora-v06_17_09)
------------------------------------------------

-   2017-12-06 Lynn Garren : larpandora v06\_17\_09 for larsoft v06\_59\_00

larwirecell v06\_08\_06(#larwirecell-v06_08_06)
--------------------------------------------------

-   2017-12-06 Lynn Garren : larwirecell v06\_08\_06 for larsoft v06\_59\_00

larana v06\_13\_01(#larana-v06_13_01)
----------------------------------------

-   2017-12-06 Lynn Garren : larana v06\_13\_01 for larsoft v06\_59\_00

larreco v06\_48\_00(#larreco-v06_48_00)
------------------------------------------

-   2017-12-06 Lynn Garren : larreco v06\_48\_00 for larsoft v06\_59\_00
-   2017-12-06 Lynn Garren : larreco v06\_48\_00 for larsoft v06\_59\_00
-   2017-12-06 Lynn Garren : fix file name
-   2017-12-06 Lynn Garren : Merge branch ‘feature/gp\_GenVectorTransition’ into release/v06\_59\_00
-   2017-12-06 Lynn Garren : Merge branch ‘feature/cerati\_new-recob-vertex-and-fitter’ into release/v06\_59\_00
-   2017-12-05 Giuseppe Cerati : run asserts only in debug mode
-   2017-12-05 baller : Set default association types for TrajCluster and LineCluster
-   2017-12-05 baller : Allow user definition of Cluster -\> Wire and RawDigit
-   2017-12-04 Gianluca Petrillo : Update script for changes related to GenVector adoption.
-   2017-12-01 Robert Sulej : if-else instead of switch in saving the cosmic tag (still single flag)
-   2017-11-30 Giuseppe Cerati : add documentation to VertexFitter\_module.cc
-   2017-11-30 Giuseppe Cerati : rename TrackVertexMeta to VertexAssnMeta
-   2017-11-30 Giuseppe Cerati : remove asserts
-   2017-11-30 Giuseppe Cerati : add closestPointAlongTrack
-   2017-11-29 Lynn Garren : larsoft v06\_58\_00
-   2017-11-28 Tingjun Yang : Fix bug. Do not continue if hit is associated to an invalid point.
-   2017-11-28 Chris Backhouse : Merge branch ‘develop’ of ssh://cdcvs.fnal.gov/cvs/projects/larreco into develop
-   2017-11-28 Chris Backhouse : Merge branch ‘bckhouse/feature\_reco3d’ into develop
-   2017-11-28 Chris Backhouse : DP’s other view is kY, not kU.
-   2017-11-27 Giuseppe Cerati : add fcl plus small updates/fixes
-   2017-11-26 Giuseppe Cerati : vertex fitter

larsim v06\_37\_00(#larsim-v06_37_00)
----------------------------------------

-   2017-12-06 Lynn Garren : larsim v06\_37\_00 for larsoft v06\_59\_00
-   2017-12-06 Lynn Garren : Merge branch ‘feature/gp\_GenVectorTransition’ into release/v06\_59\_00
-   2017-12-06 Tingjun Yang : Get the correct start\_tdc and end\_tdc accounting for the trigger offset etc.
-   2017-12-06 Jason Stock : Minor fix. const sim::SimChannel\* replaced with art::Ptr\<sim::SimChannel\>
-   2017-12-06 Jason Stock : Update to BackTracker service provider to make sure SimChannels are sorted when prepped.
-   2017-12-06 Jason Stock : Fixed HitToXYZ bug causing segfault.
-   2017-12-04 Gianluca Petrillo : Update script for changes related to GenVector adoption.

larevt v06\_16\_11(#larevt-v06_16_11)
----------------------------------------

-   2017-12-06 Lynn Garren : larevt v06\_16\_11 for larsoft v06\_59\_00

lardata v06\_33\_01(#lardata-v06_33_01)
------------------------------------------

-   2017-12-06 Lynn Garren : lardata v06\_33\_01 for larsoft v06\_59\_00

larcore v06\_15\_07(#larcore-v06_15_07)
------------------------------------------

-   2017-12-06 Lynn Garren : larcore v06\_15\_07 for larsoft v06\_59\_00

larpandoracontent v03\_08\_01(#larpandoracontent-v03_08_01)
--------------------------------------------------------------

larsoftobj v1\_32\_00(#larsoftobj-v1_32_00)
----------------------------------------------

-   2017-12-06 Lynn Garren : larsoftobj v1\_32\_00 for larsoft v06\_59\_00
-   2017-12-06 Lynn Garren : update versions

lardataobj v1\_23\_00(#lardataobj-v1_23_00)
----------------------------------------------

-   2017-12-06 Lynn Garren : lardataobj v1\_23\_00 for larsoft v06\_59\_00
-   2017-11-30 Giuseppe Cerati : rename TrackVertexStatus as VertexAssnStatus
-   2017-11-30 Giuseppe Cerati : rename TrackVertexMeta to VertexAssnMeta
-   2017-11-27 Giuseppe Cerati : fix bug
-   2017-11-27 Giuseppe Cerati : add schema evolution rules
-   2017-11-26 Giuseppe Cerati : new recob::Vertex and TrackVertexMeta

larcorealg v1\_11\_00(#larcorealg-v1_11_00)
----------------------------------------------

-   2017-12-06 Lynn Garren : larcorealg v1\_11\_00 for larsoft v06\_59\_00
-   2017-12-06 Lynn Garren : fix file name
-   2017-12-06 Lynn Garren : fix file name
-   2017-12-04 Gianluca Petrillo : Amend
-   2017-12-04 Gianluca Petrillo : Refurbished the algorithm for geo::GeometryCore::GetTPCFrontFaceCenter
-   2017-12-04 Gianluca Petrillo : Extending geometry interface for the adoption of GenVector
-   2017-11-17 Gianluca Petrillo : Doxygen fixes to GeometryCore.h documentation.
-   2017-11-17 Gianluca Petrillo : Revised documentation of some geo::GeoemtryCore methods.

larcoreobj v1\_17\_00(#larcoreobj-v1_17_00)
----------------------------------------------

-   2017-12-06 Lynn Garren : larcoreobj v1\_17\_00 for larsoft v06\_59\_00
-   2017-12-04 Gianluca Petrillo : Moved utilities to larcorealg/Geometry/geo\_vectors\_utils.h

larbatch v01\_34\_02(#larbatch-v01_34_02)
--------------------------------------------

-   2017-12-06 Lynn Garren : larbatch v01\_34\_02 for larsoft v06\_59\_00
-   2017-12-06 Herbert Greenlee : Tweak multistage data selection.
-   2017-12-04 Herbert Greenlee : Fix memory override bug.

larutils v1\_20\_02(#larutils-v1_20_02)
------------------------------------------

-   2017-12-06 Lynn Garren : larutils v1\_20\_02 for larsoft v06\_59\_00
-   2017-12-06 Thomas Junk : remove .upsfiles once we’re done with them
-   2017-12-06 Thomas Junk : fix missing \_FQ in a loop test
-   2017-12-06 Thomas Junk : put back .upsfiles/dbconfig so ups declare works as expected
-   2017-12-06 Thomas Junk : change definition of DUNEPDSPRCE\_DIR to point to the top level (so source and include make sense), and define a new DUNEPDSPRCE\_FQ\_DIR
-   2017-12-05 Thomas Junk : redo the sed ~~i -~~ gave an extra copy of the table file on mac before replacement of the string
-   2017-12-05 Thomas Junk : don’t make .upsfiles
-   2017-12-01 Thomas Junk : replace the qualifier in the table file – some symbols need to be translated, others not
-   2017-12-01 Thomas Junk : disable parameter substitution in the table file here document
-   2017-12-01 Thomas Junk : tar up the upsfiles directory too
-   2017-12-01 Thomas Junk : follow more symlinks
-   2017-12-01 Thomas Junk : clean up, and restore some link-following options to the copy of header files
-   2017-11-30 Thomas Junk : remove recursive readlink – not allowed on mac
-   2017-11-30 Thomas Junk : capture stderr too
-   2017-11-29 Thomas Junk : print out g++ version
-   2017-11-29 Thomas Junk : mac doesn’t like cp -r -L though linux does
-   2017-11-29 Thomas Junk : Jenkins build script for JJ Russell’s access class
