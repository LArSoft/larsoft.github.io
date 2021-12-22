LArSoft v07\_07\_01 Release Notes
======================================================================

-   **Table of contents**
-   [LArSoft v07\_07\_01 Release Notes](#LArSoft-v07_07_01-Release-Notes)
    -   [Purpose](#Purpose)
    -   [New features](#New-features)
    -   [Bug fixes](#Bug-fixes)
    -   [Updated dependencies](#Updated-dependencies)
-   [Change List](#Change-List)
    -   [larsoft v07\_07\_01](#larsoft-v07_07_01)
    -   [lareventdisplay v07\_01\_08](#lareventdisplay-v07_01_08)
    -   [larexamples v07\_00\_11](#larexamples-v07_00_11)
    -   [larg4 v07\_01\_06](#larg4-v07_01_06)
    -   [larpandora v07\_01\_08](#larpandora-v07_01_08)
    -   [larwirecell v07\_02\_01](#larwirecell-v07_02_01)
    -   [larana v07\_02\_04](#larana-v07_02_04)
    -   [larreco v07\_04\_04](#larreco-v07_04_04)
    -   [larsim v07\_04\_01](#larsim-v07_04_01)
    -   [larevt v07\_00\_10](#larevt-v07_00_10)
    -   [lardata v07\_00\_10](#lardata-v07_00_10)
    -   [larcore v07\_00\_03](#larcore-v07_00_03)
    -   [larpandoracontent v03\_14\_02](#larpandoracontent-v03_14_02)
    -   [larsoftobj v07\_05\_00](#larsoftobj-v07_05_00)
    -   [lardataobj v07\_02\_03](#lardataobj-v07_02_03)
    -   [lardataalg v07\_02\_01](#lardataalg-v07_02_01)
    -   [larcorealg v07\_02\_00](#larcorealg-v07_02_00)
    -   [larcoreobj v07\_00\_01](#larcoreobj-v07_00_01)
    -   [larbatch v01\_46\_00](#larbatch-v01_46_00)
    -   [larutils v1\_23\_04](#larutils-v1_23_04)

[list of LArSoft releases](LArSoft_release_list)\
Download instructions for [larsoft v07\_07\_01](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v07_07_01/larsoft-v07_07_01.html)\
Download instructions for [just larsoftobj v07\_05\_00](http://scisoft.fnal.gov/scisoft/bundles/larsoftobj/v07_05_00/larsoftobj-v07_05_00.html)

Purpose
--------------------

-   changes in develop
-   approved feature branches

New features
------------------------------

-   larsim feature/jsoto\_maxrange\_in\_extendedphotlib
    -   It only affects the extended photon libraries, to make the range modified by fhcl parameters (since before was hard-coded).
-   larbatch grid\_setup.sh
    -   behaves like mrbslp, but does not require mrb

Bug fixes
------------------------

-   larreco feature/bb\_TCWork
    -   bug fix for TrajCluster\_module
-   larsim [\#15727](/redmine/issues/15727 "Task: Update simulation to support arbitrary drift direction (Closed)")
    -   Fixing a segfault when interpolation between voxels and time propagation are activated.

Updated dependencies
----------------------------------------------

-   wirecell v0\_9\_1a
    -   improved build, no changes to code

Change List
============================

larsoft v07\_07\_01
------------------------------------------

-   2018-10-10 Lynn Garren : larsoft v07\_07\_01 for larsoft v07\_07\_01
-   2018-10-10 Lynn Garren : product versions

lareventdisplay v07\_01\_08
----------------------------------------------------------

-   2018-10-10 Lynn Garren : lareventdisplay v07\_01\_08 for larsoft v07\_07\_01
-   2018-10-04 Lynn Garren : larsoft v07\_07\_00
-   2018-10-03 Christoph Alt : Fixing the reco hit drawer for dual phase. This is necessary because the definition of the start and end time of individual hits in a group of multiple hits has changed.

larexamples v07\_00\_11
--------------------------------------------------

-   2018-10-10 Lynn Garren : larexamples v07\_00\_11 for larsoft v07\_07\_01

larg4 v07\_01\_06
--------------------------------------

-   2018-10-10 Lynn Garren : larg4 v07\_01\_06 for larsoft v07\_07\_01

larpandora v07\_01\_08
------------------------------------------------

-   2018-10-10 Lynn Garren : larpandora v07\_01\_08 for larsoft v07\_07\_01

larwirecell v07\_02\_01
--------------------------------------------------

-   2018-10-10 Lynn Garren : larwirecell v07\_02\_01 for larsoft v07\_07\_01

larana v07\_02\_04
----------------------------------------

-   2018-10-10 Lynn Garren : larana v07\_02\_04 for larsoft v07\_07\_01

larreco v07\_04\_04
------------------------------------------

-   2018-10-10 Lynn Garren : larreco v07\_04\_04 for larsoft v07\_07\_01
-   2018-10-10 Lynn Garren : larreco v07\_04\_04 for larsoft v07\_07\_01
-   2018-10-08 baller : fixed bugs
-   2018-10-08 baller : Fix bug indexing into the output vertex collections.

larsim v07\_04\_01
----------------------------------------

-   2018-10-10 Lynn Garren : larsim v07\_04\_01 for larsoft v07\_07\_01
-   2018-10-09 Jose Soto : Fixing a segfault when interpolation between voxels and time propagation are activated.
-   2018-10-09 Jose Soto : Merge branch ‘develop’ into feature/jsoto\_maxrange\_in\_extendedphotlib
-   2018-10-04 Jose Soto : Feature in extended photonlibraries: Now time range can be change in a fhcl parameter

larevt v07\_00\_10
----------------------------------------

-   2018-10-10 Lynn Garren : larevt v07\_00\_10 for larsoft v07\_07\_01

lardata v07\_00\_10
------------------------------------------

-   2018-10-10 Lynn Garren : lardata v07\_00\_10 for larsoft v07\_07\_01

larcore v07\_00\_03
------------------------------------------

-   2018-10-10 Lynn Garren : larcore v07\_00\_03 for larsoft v07\_07\_01

larpandoracontent v03\_14\_02
--------------------------------------------------------------

larsoftobj v07\_05\_00
------------------------------------------------

-   2018-10-10 Lynn Garren : larsoftobj v07\_05\_00 for larsoft v07\_07\_01
-   2018-10-10 Lynn Garren : product versions

lardataobj v07\_02\_03
------------------------------------------------

lardataalg v07\_02\_01
------------------------------------------------

-   2018-10-10 Lynn Garren : lardataalg v07\_02\_01 for larsoft v07\_07\_01

larcorealg v07\_02\_00
------------------------------------------------

-   2018-10-10 Lynn Garren : larcorealg v07\_02\_00 for larsoft v07\_07\_01
-   2018-10-04 Gianluca Petrillo : Added \`geo::GeometryCore::DetectorEnclosureBox()\` for detector enclosure coordinates

larcoreobj v07\_00\_01
------------------------------------------------

larbatch v01\_46\_00
--------------------------------------------

-   2018-10-10 Lynn Garren : larbatch v01\_46\_00 for larsoft v07\_07\_01
-   2018-10-03 Lynn Garren : improve the logic
-   2018-10-03 Lynn Garren : grid\_setup.sh will setup all products it finds

larutils v1\_23\_04
------------------------------------------
