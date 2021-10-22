LArSoft v08\_14\_00 Release Notes[¶](#LArSoft-v08_14_00-Release-Notes)
======================================================================

-   **Table of contents**
-   [LArSoft v08\_14\_00 Release Notes](#LArSoft-v08_14_00-Release-Notes)
    -   [Purpose](#Purpose)
    -   [New features](#New-features)
    -   [Bug fixes](#Bug-fixes)
    -   [Updated dependencies](#Updated-dependencies)
-   [Change List](#Change-List)
    -   [larsoft v08\_14\_00](#larsoft-v08_14_00)
    -   [lareventdisplay v08\_04\_00](#lareventdisplay-v08_04_00)
    -   [larexamples v08\_01\_12](#larexamples-v08_01_12)
    -   [larg4 v08\_01\_11](#larg4-v08_01_11)
    -   [larpandora v08\_05\_05](#larpandora-v08_05_05)
    -   [larwirecell v08\_03\_04](#larwirecell-v08_03_04)
    -   [larana v08\_04\_03](#larana-v08_04_03)
    -   [larreco v08\_10\_04](#larreco-v08_10_04)
    -   [larsim v08\_04\_03](#larsim-v08_04_03)
    -   [larevt v08\_02\_07](#larevt-v08_02_07)
    -   [lardata v08\_03\_08](#lardata-v08_03_08)
    -   [larcore v08\_02\_04](#larcore-v08_02_04)
    -   [larpandoracontent v03\_14\_05](#larpandoracontent-v03_14_05)
    -   [larsoftobj v08\_09\_00](#larsoftobj-v08_09_00)
    -   [lardataobj v08\_02\_05](#lardataobj-v08_02_05)
    -   [lardataalg v08\_04\_04](#lardataalg-v08_04_04)
    -   [larcorealg v08\_06\_00](#larcorealg-v08_06_00)
    -   [larcoreobj v08\_02\_02](#larcoreobj-v08_02_02)
    -   [larbatch v01\_50\_00](#larbatch-v01_50_00)
    -   [larutils v1\_23\_13](#larutils-v1_23_13)

[list of LArSoft releases](LArSoft_release_list)\
Download instructions for [larsoft v08\_14\_00](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v08_14_00/larsoft-v08_14_00.html)\
Download instructions for [just larsoftobj v08\_09\_00](http://scisoft.fnal.gov/scisoft/bundles/larsoftobj/v08_09_00/larsoftobj-v08_09_00.html)


Purpose[¶](#Purpose)
--------------------

-   changes in develop
-   approved feature branches


New features[¶](#New-features)
------------------------------

-   lareventdisplay
    -   feature/usher\_wiredatadrawer
    -   proposed cleanup of TQPad
    -   3D SpacePoint drawing
    -   [https://indico.fnal.gov/event/20287/contribution/3/material/slides/0.pdf](https://indico.fnal.gov/event/20287/contribution/3/material/slides/0.pdf)
-   larg4 feature\_wenzel\_fix\_build\_again


Bug fixes[¶](#Bug-fixes)
------------------------


Updated dependencies[¶](#Updated-dependencies)
----------------------------------------------

-   artg4tk v09\_03\_01
-   mrb v3\_00\_12


Change List[¶](#Change-List)
============================


larsoft v08\_14\_00[¶](#larsoft-v08_14_00)
------------------------------------------

-   2019-03-27 Lynn Garren : artg4tk v09\_03\_01
-   2019-03-27 Lynn Garren : larsoft v08\_14\_00 for larsoft v08\_14\_00
-   2019-03-27 Lynn Garren : product versions
-   2019-03-20 Lynn Garren : marley v1\_1\_0


lareventdisplay v08\_04\_00[¶](#lareventdisplay-v08_04_00)
----------------------------------------------------------

-   2019-03-27 Lynn Garren : lareventdisplay v08\_04\_00 for larsoft v08\_14\_00
-   2019-03-27 Usher, Tracy L : More cleanup, should be good to go
-   2019-03-27 Usher, Tracy L : Making dual phase work correctly and then doing some overall cleanup
-   2019-03-27 Usher, Tracy L : Change strategy for multiple hits to accommodate differences in the way hit producers fill hit parameters
-   2019-03-26 Usher, Tracy L : Discover that some hit finding algorithms violate convention on the start/end of a hit and the ordering of the hits in the collection. This can be partially fixed by including an otherwise needless sort. I have to think about the solution to the start/end problem.
-   2019-03-21 Usher, Tracy L : Merge branch ‘master’ into feature/usher\_wiredatadrawer
-   2019-03-20 Usher, Tracy L : Trying to consolidate both the SP and DP waveform drawing into separate tools and then try to clean up some of the surrounding code in the hope of simplifying…
-   2019-03-17 Usher, Tracy L : Merge branch ‘develop’ into feature/usher\_wiredatadrawer
-   2019-03-05 Usher, Tracy L : Swapping default for drawing hits, color scheme for drawing hits in waveform display
-   2019-02-28 Usher, Tracy L : Merge branch ‘master’ into feature/usher\_wiredatadrawer
-   2019-02-23 Usher, Tracy L : Merge branch ‘master’ into feature/usher\_wiredatadrawer
-   2019-02-23 Usher, Tracy L : Updates for building
-   2019-02-23 Usher, Tracy L : Update fhicl parameters
-   2019-02-23 Usher, Tracy L : Formatting, add parameter for the raw waveform drawing
-   2019-02-23 Usher, Tracy L : Add more definitions
-   2019-02-23 Usher, Tracy L : Formatting, add parameter for the raw waveform drawing
-   2019-02-23 Usher, Tracy L : Modifications to use tools instead of containing the histograms directly… now have a top level, otherwise empty, “container” histogram which defines the scales. The rest are drawn “same” into this one
-   2019-02-23 Usher, Tracy L : Draw Wire data with polyline - work in progress
-   2019-02-23 Usher, Tracy L : Draw the “skew” hits, work in progress
-   2019-02-23 Usher, Tracy L : Draw Wire data in histogram form (as opposed to a polyline)
-   2019-02-23 Usher, Tracy L : Output the raw waveforms
-   2019-02-23 Usher, Tracy L : Renamed version, more generic with this name (ie both raw and wire data can go through this)
-   2019-02-23 Usher, Tracy L : Use charge in common overlap region to determine color
-   2019-02-23 Usher, Tracy L : Changing the name to protect the innocent
-   2019-02-21 Usher, Tracy L : Switch to using the art tools for drawing space points in the 3D display
-   2019-02-21 Usher, Tracy L : Get rid of bad fist attempt
-   2019-02-21 Usher, Tracy L : Include the 3D Space Point drawers in the fhicl definitions
-   2019-02-21 Usher, Tracy L : Create a set of art tools to handle the display of space points in the 3D viewer
-   2019-02-18 Usher, Tracy L : Merge branch ‘master’ into feature/usher\_wiredatadrawer
-   2019-02-05 Usher, Tracy L : Merge branch ‘master’ into feature/usher\_wiredatadrawer
-   2019-02-01 Usher, Tracy L : Merge branch ‘master’ into feature/usher\_wiredatadrawer
-   2019-02-01 Usher, Tracy L : Modification to the “Wire” data drawing in the waveform display box to allow multiple Wire data to be overlaid (and not simply added to the histogram). To facilitate create a new Wire drawing tool and associated updates to make this all happen…


larexamples v08\_01\_12[¶](#larexamples-v08_01_12)
--------------------------------------------------

-   2019-03-27 Lynn Garren : larexamples v08\_01\_12 for larsoft v08\_14\_00


larg4 v08\_01\_11[¶](#larg4-v08_01_11)
--------------------------------------

-   2019-03-27 Lynn Garren : larg4 v08\_01\_11 for larsoft v08\_14\_00
-   2019-03-27 Lynn Garren : find headers
-   2019-03-27 Lynn Garren : use artg4tk v09\_03\_01
-   2019-03-27 Lynn Garren : cannot find itself
-   2019-03-27 Lynn Garren : fix CMakeLists.txt
-   2019-03-27 Lynn Garren : fix version and remove trailing spaces
-   2019-03-26 Hans-Joachim Wenzel : Fix CMakeLists.txt and restore missing test fcl.


larpandora v08\_05\_05[¶](#larpandora-v08_05_05)
------------------------------------------------

-   2019-03-27 Lynn Garren : larpandora v08\_05\_05 for larsoft v08\_14\_00


larwirecell v08\_03\_04[¶](#larwirecell-v08_03_04)
--------------------------------------------------

-   2019-03-27 Lynn Garren : larwirecell v08\_03\_04 for larsoft v08\_14\_00


larana v08\_04\_03[¶](#larana-v08_04_03)
----------------------------------------

-   2019-03-27 Lynn Garren : larana v08\_04\_03 for larsoft v08\_14\_00


larreco v08\_10\_04[¶](#larreco-v08_10_04)
------------------------------------------

-   2019-03-27 Lynn Garren : larreco v08\_10\_04 for larsoft v08\_14\_00


larsim v08\_04\_03[¶](#larsim-v08_04_03)
----------------------------------------

-   2019-03-27 Lynn Garren : larsim v08\_04\_03 for larsoft v08\_14\_00
-   2019-03-22 Steven Gardiner : Update MARLEYHelper validated FHiCL configuration for marley v1\_1\_0. Also update reaction data file names in marley.fcl.
-   2019-03-21 Lynn Garren : larsoft v08\_13\_02
-   2019-03-19 Gianluca Petrillo : Minor bug fix on photon visibility voxelisation.


larevt v08\_02\_07[¶](#larevt-v08_02_07)
----------------------------------------

-   2019-03-27 Lynn Garren : larevt v08\_02\_07 for larsoft v08\_14\_00


lardata v08\_03\_08[¶](#lardata-v08_03_08)
------------------------------------------

-   2019-03-27 Lynn Garren : lardata v08\_03\_08 for larsoft v08\_14\_00


larcore v08\_02\_04[¶](#larcore-v08_02_04)
------------------------------------------

-   2019-03-27 Lynn Garren : larcore v08\_02\_04 for larsoft v08\_14\_00
-   2019-03-27 Lynn Garren : larcore v08\_02\_04 for larsoft v08\_14\_00


larpandoracontent v03\_14\_05[¶](#larpandoracontent-v03_14_05)
--------------------------------------------------------------


larsoftobj v08\_09\_00[¶](#larsoftobj-v08_09_00)
------------------------------------------------

-   2019-03-27 Lynn Garren : larsoftobj v08\_09\_00 for larsoft v08\_14\_00
-   2019-03-27 Lynn Garren : product versions


lardataobj v08\_02\_05[¶](#lardataobj-v08_02_05)
------------------------------------------------

-   2019-03-27 Lynn Garren : lardataobj v08\_02\_05 for larsoft v08\_14\_00


lardataalg v08\_04\_04[¶](#lardataalg-v08_04_04)
------------------------------------------------

-   2019-03-27 Lynn Garren : lardataalg v08\_04\_04 for larsoft v08\_14\_00


larcorealg v08\_06\_00[¶](#larcorealg-v08_06_00)
------------------------------------------------

-   2019-03-27 Lynn Garren : larcorealg v08\_06\_00 for larsoft v08\_14\_00
-   2019-03-27 Lynn Garren : larcorealg v08\_06\_00 for larsoft v08\_14\_00
-   2019-03-22 Gianluca Petrillo : Fixed anothere problem from Clang bug 21629.
-   2019-03-22 Gianluca Petrillo : Added metaprogramming utility to determine if object is \`std::array\`.
-   2019-03-20 Gianluca Petrillo : \`geo::vect::convertTo()\` now accepts arrays as data source.


larcoreobj v08\_02\_02[¶](#larcoreobj-v08_02_02)
------------------------------------------------


larbatch v01\_50\_00[¶](#larbatch-v01_50_00)
--------------------------------------------

-   2019-03-27 Lynn Garren : larbatch v01\_50\_00 for larsoft v08\_14\_00
-   2019-03-22 Herbert Greenlee : Move batch scripts down from project to stage level.


larutils v1\_23\_13[¶](#larutils-v1_23_13)
------------------------------------------
