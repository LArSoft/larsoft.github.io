LArSoft v07\_08\_00 Release Notes
======================================================================

-   **Table of contents**
-   [LArSoft v07\_08\_00 Release Notes](#LArSoft-v07_08_00-Release-Notes)
    -   [Purpose](#Purpose)
    -   [New features](#New-features)
    -   [Bug fixes](#Bug-fixes)
    -   [Updated dependencies](#Updated-dependencies)
-   [Change List](#Change-List)
    -   [larsoft v07\_08\_00](#larsoft-v07_08_00)
    -   [lareventdisplay v07\_01\_10](#lareventdisplay-v07_01_10)
    -   [larexamples v07\_00\_13](#larexamples-v07_00_13)
    -   [larg4 v07\_01\_08](#larg4-v07_01_08)
    -   [larpandora v07\_02\_00](#larpandora-v07_02_00)
    -   [larwirecell v07\_02\_03](#larwirecell-v07_02_03)
    -   [larana v07\_02\_06](#larana-v07_02_06)
    -   [larreco v07\_06\_00](#larreco-v07_06_00)
    -   [larsim v07\_04\_03](#larsim-v07_04_03)
    -   [larevt v07\_01\_00](#larevt-v07_01_00)
    -   [lardata v07\_00\_12](#lardata-v07_00_12)
    -   [larcore v07\_00\_04](#larcore-v07_00_04)
    -   [larpandoracontent v03\_14\_02](#larpandoracontent-v03_14_02)
    -   [larsoftobj v07\_05\_02](#larsoftobj-v07_05_02)
    -   [lardataobj v07\_02\_04](#lardataobj-v07_02_04)
    -   [lardataalg v07\_02\_03](#lardataalg-v07_02_03)
    -   [larcorealg v07\_02\_01](#larcorealg-v07_02_01)
    -   [larcoreobj v07\_00\_01](#larcoreobj-v07_00_01)
    -   [larbatch v01\_46\_02](#larbatch-v01_46_02)
    -   [larutils v1\_23\_04](#larutils-v1_23_04)

[list of LArSoft releases](LArSoft_release_list)
Download instructions for [larsoft v07\_08\_00](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v07_08_00/larsoft-v07_08_00.html)
Download instructions for [just larsoftobj v07\_05\_02](http://scisoft.fnal.gov/scisoft/bundles/larsoftobj/v07_05_02/larsoftobj-v07_05_02.html)

Purpose
--------------------

-   approved feature branches
-   changes in develop

New features
------------------------------

-   larpandora feature/sgreen\_ICARUSWireAngle
    -   allow Pandora to correctly read in the ICARUS geometry
-   larreco feature/knoepfel\_remove\_TGeant3
    -   [https://indico.fnal.gov/event/18801/contribution/3/material/slides/0.pdf](https://indico.fnal.gov/event/18801/contribution/3/material/slides/0.pdf)
-   larevt EventTimeFilter added

Bug fixes
------------------------

-   fix for [\#21041](/redmine/issues/21041 "Bug: Segfault in BlurredClusteringAlg (larreco) (Closed)")

Updated dependencies
----------------------------------------------

-   ifdhc v2\_3\_8
-   nutools v2\_24\_05

Change List
============================

larsoft v07\_08\_00
------------------------------------------

-   2018-10-24 Lynn Garren : larsoft v07\_08\_00 for larsoft v07\_08\_00
-   2018-10-24 Lynn Garren : update products
-   2018-10-24 Lynn Garren : update dependency database

lareventdisplay v07\_01\_10
----------------------------------------------------------

-   2018-10-24 Lynn Garren : lareventdisplay v07\_01\_10 for larsoft v07\_08\_00

larexamples v07\_00\_13
--------------------------------------------------

-   2018-10-24 Lynn Garren : larexamples v07\_00\_13 for larsoft v07\_08\_00

larg4 v07\_01\_08
--------------------------------------

-   2018-10-24 Lynn Garren : larg4 v07\_01\_08 for larsoft v07\_08\_00

larpandora v07\_02\_00
------------------------------------------------

-   2018-10-24 Lynn Garren : larpandora v07\_02\_00 for larsoft v07\_08\_00
-   2018-10-23 Lynn Garren : Merge branch ‘sgreen\_ICARUSWireAngle’ into release/v07\_08\_00
-   2018-10-17 Steven Green : Input wire angle modification for ICARUS use case.

larwirecell v07\_02\_03
--------------------------------------------------

-   2018-10-24 Lynn Garren : larwirecell v07\_02\_03 for larsoft v07\_08\_00

larana v07\_02\_06
----------------------------------------

-   2018-10-24 Lynn Garren : larana v07\_02\_06 for larsoft v07\_08\_00

larreco v07\_06\_00
------------------------------------------

-   2018-10-24 Lynn Garren : larreco v07\_06\_00 for larsoft v07\_08\_00
-   2018-10-24 Lynn Garren : larreco v07\_06\_00 for larsoft v07\_08\_00
-   2018-10-23 Lynn Garren : Merge branch ‘feature/knoepfel\_remove\_TGeant3’ into release/v07\_08\_00
-   2018-10-17 Kyle Knoepfel : Reresolve bug [\#21041](/redmine/issues/21041 "Bug: Segfault in BlurredClusteringAlg (larreco) (Closed)"): Illegal memory access in BlurredClusterAlg.
-   2018-10-16 Kyle Knoepfel : Remove all references to TGeant3 and GeanaTrackRep2.

larsim v07\_04\_03
----------------------------------------

-   2018-10-24 Lynn Garren : larsim v07\_04\_03 for larsoft v07\_08\_00
-   2018-10-23 Jose Soto : removing a segfault when ParPropTimeTF1 is not defined
-   2018-10-17 Lynn Garren : larsoft v07\_07\_02
-   2018-10-15 Alex Himmel : Add an option (default false) to reflect voxels over X = 0 (allows time savings when generating a library.

larevt v07\_01\_00
----------------------------------------

-   2018-10-24 Lynn Garren : larevt v07\_01\_00 for larsoft v07\_08\_00
-   2018-10-23 Aidan Lewis Reynolds : Fixed bug in timestamps
-   2018-10-22 Aidan Lewis Reynolds : A filter to select events by passing a UTC time range

lardata v07\_00\_12
------------------------------------------

-   2018-10-24 Lynn Garren : lardata v07\_00\_12 for larsoft v07\_08\_00

larcore v07\_00\_04
------------------------------------------

larpandoracontent v03\_14\_02
--------------------------------------------------------------

larsoftobj v07\_05\_02
------------------------------------------------

-   2018-10-24 Lynn Garren : larsoftobj v07\_05\_02 for larsoft v07\_08\_00
-   2018-10-24 Lynn Garren : update products

lardataobj v07\_02\_04
------------------------------------------------

lardataalg v07\_02\_03
------------------------------------------------

-   2018-10-24 Lynn Garren : lardataalg v07\_02\_03 for larsoft v07\_08\_00
-   2018-10-17 Lynn Garren : larsoft v07\_07\_02
-   2018-10-16 Gianluca Petrillo : Fixed missing headers.

larcorealg v07\_02\_01
------------------------------------------------

larcoreobj v07\_00\_01
------------------------------------------------

larbatch v01\_46\_02
--------------------------------------------

-   2018-10-24 Lynn Garren : larbatch v01\_46\_02 for larsoft v07\_08\_00
-   2018-10-19 Herbert Greenlee : Filter celltree from next stage input.
-   2018-10-18 Herbert Greenlee : Fix base stage bug.

larutils v1\_23\_04
------------------------------------------
