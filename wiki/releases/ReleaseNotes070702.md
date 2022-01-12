LArSoft v07_07_02 Release Notes
======================================================================

-   **Table of contents**
-   [LArSoft v07_07_02 Release Notes](#LArSoft-v07_07_02-Release-Notes)
    -   [Purpose](#Purpose)
    -   [New features](#New-features)
    -   [Bug fixes](#Bug-fixes)
    -   [Updated dependencies](#Updated-dependencies)
-   [Change List](#Change-List)
    -   [larsoft v07_07_02](#larsoft-v07_07_02)
    -   [lareventdisplay v07_01_09](#lareventdisplay-v07_01_09)
    -   [larexamples v07_00_12](#larexamples-v07_00_12)
    -   [larg4 v07_01_07](#larg4-v07_01_07)
    -   [larpandora v07_01_09](#larpandora-v07_01_09)
    -   [larwirecell v07_02_02](#larwirecell-v07_02_02)
    -   [larana v07_02_05](#larana-v07_02_05)
    -   [larreco v07_05_00](#larreco-v07_05_00)
    -   [larsim v07_04_02](#larsim-v07_04_02)
    -   [larevt v07_00_11](#larevt-v07_00_11)
    -   [lardata v07_00_11](#lardata-v07_00_11)
    -   [larcore v07_00_04](#larcore-v07_00_04)
    -   [larpandoracontent v03_14_02](#larpandoracontent-v03_14_02)
    -   [larsoftobj v07_05_01](#larsoftobj-v07_05_01)
    -   [lardataobj v07_02_04](#lardataobj-v07_02_04)
    -   [lardataalg v07_02_02](#lardataalg-v07_02_02)
    -   [larcorealg v07_02_01](#larcorealg-v07_02_01)
    -   [larcoreobj v07_00_01](#larcoreobj-v07_00_01)
    -   [larbatch v01_46_01](#larbatch-v01_46_01)
    -   [larutils v1_23_04](#larutils-v1_23_04)

[list of LArSoft releases](LArSoft_release_list)
Download instructions for [larsoft v07_07_02](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v07_07_02/larsoft-v07_07_02.html)
Download instructions for [just larsoftobj v07_05_01](http://scisoft.fnal.gov/scisoft/bundles/larsoftobj/v07_05_01/larsoftobj-v07_05_01.html)

Purpose
--------------------

-   changes to develop
-   bug fixes

New features
------------------------------

-   TCShower updates
    -   larreco feature/rsf_tcshowerPFP

Bug fixes
------------------------

-   bug fix for [\#19386](/redmine/issues/19386 "Bug: raw::OpDetPulse does not have accessors to its waveform (Closed)")
    -   merged to develop
-   wirecell 0.9.2
    -   changes in larwirecell develop

Updated dependencies
----------------------------------------------

-   wirecell v0_9_2

Change List
============================

larsoft v07_07_02
------------------------------------------

-   2018-10-17 Lynn Garren : larsoft v07_07_02 for larsoft v07_07_02
-   2018-10-17 Lynn Garren : product versions
-   2018-10-16 Lynn Garren : wirecell v0_9_2

lareventdisplay v07_01_09
----------------------------------------------------------

-   2018-10-17 Lynn Garren : lareventdisplay v07_01_09 for larsoft v07_07_02

larexamples v07_00_12
--------------------------------------------------

-   2018-10-17 Lynn Garren : larexamples v07_00_12 for larsoft v07_07_02

larg4 v07_01_07
--------------------------------------

-   2018-10-17 Lynn Garren : larg4 v07_01_07 for larsoft v07_07_02

larpandora v07_01_09
------------------------------------------------

-   2018-10-17 Lynn Garren : larpandora v07_01_09 for larsoft v07_07_02

larwirecell v07_02_02
--------------------------------------------------

-   2018-10-17 Lynn Garren : larwirecell v07_02_02 for larsoft v07_07_02
-   2018-10-16 Brooke Russell : speedup SimChannelSink
-   2018-10-15 Brooke Russell : improvements to speed and memory

larana v07_02_05
----------------------------------------

-   2018-10-17 Lynn Garren : larana v07_02_05 for larsoft v07_07_02

larreco v07_05_00
------------------------------------------

-   2018-10-17 Lynn Garren : larreco v07_05_00 for larsoft v07_07_02
-   2018-10-17 Lynn Garren : larreco v07_05_00 for larsoft v07_07_02
-   2018-10-16 Lynn Garren : add missing override
-   2018-10-16 Lynn Garren : Merge branch ‘feature/rsf_tcshowerPFP’ into release/v07_07_02
-   2018-10-16 Kyle Knoepfel : Revert "Fix bug [\#21041](/redmine/issues/21041 "Bug: Segfault in BlurredClusteringAlg (larreco) (Closed)"): Illegal memory accessing in BlurredClusterAlg."
-   2018-10-16 Rory Fitzpatrick : minor updates
-   2018-10-16 Rory Fitzpatrick : avoid redudant hit checking
-   2018-10-16 Rory Fitzpatrick : Merge remote-tracking branch ‘origin/feature/tjyang_db3d’ into feature/rsf_tcshowerPFP
-   2018-10-15 Tingjun Yang : Add xhit offset to break tracks parallel to wire planes.
-   2018-10-15 Rory Fitzpatrick : code cleanup
-   2018-10-15 Rory Fitzpatrick : added shower efficiency modules
-   2018-10-15 Rory Fitzpatrick : Merge remote-tracking branch ‘origin/feature/tjyang_db3d’ into feature/rsf_tcshowerPFP
-   2018-10-14 Tingjun Yang : Set max iterations fcl parameteres. Add configuration for uboone.
-   2018-10-12 Rory Fitzpatrick : optimizing reco thresholds
-   2018-10-11 Kyle Knoepfel : Fix bug [\#21041](/redmine/issues/21041 "Bug: Segfault in BlurredClusteringAlg (larreco) (Closed)"): Illegal memory accessing in BlurredClusterAlg.
-   2018-10-11 Kyle Knoepfel : Fix out-of-bounds dereferencing.
-   2018-10-12 Rory Fitzpatrick : improved completeness and code cleanup
-   2018-10-12 Rory Fitzpatrick : Merge remote-tracking branch ‘origin/feature/cerati_tcshowerPFP’ into feature/rsf_tcshowerPFP
-   2018-10-11 Giuseppe Cerati : fix bug related to illegal use of util::groupByIndex
-   2018-10-11 Rory Fitzpatrick : Merge remote-tracking branch ‘origin/feature/cerati_tcshowerPFP’ into feature/rsf_tcshowerPFP
-   2018-10-11 Giuseppe Cerati : fix track ID
-   2018-10-11 Rory Fitzpatrick : improvements to completeness
-   2018-10-10 Giuseppe Cerati : add seeds associated to trajcluster pfps and enable kalman track fits of trajcluster pfps
-   2018-10-10 Rory Fitzpatrick : code cleanup
-   2018-10-09 Rory Fitzpatrick : Merge remote-tracking branch ‘origin’ into feature/rsf_tcshowerPFP
-   2018-10-09 Rory Fitzpatrick : build 3D tracks starting from pfp vertex
-   2018-10-09 Rory Fitzpatrick : choose shower direction based on z position
-   2018-10-09 Rory Fitzpatrick : using ProjectionMatchingAlg for shower vertexc and direction
-   2018-10-08 Rory Fitzpatrick : fixed bug in pfp-vtx associations and minor updates to sorting in tcshower
-   2018-10-08 Rory Fitzpatrick : some couts added
-   2018-10-05 Rory Fitzpatrick : added EndPoint2D information
-   2018-10-05 Rory Fitzpatrick : lots of print statements added for debugging
-   2018-10-04 Rory Fitzpatrick : code cleanup
-   2018-10-04 Rory Fitzpatrick : initial semicomplete implementation of tcshower using pfparticles
-   2018-10-04 Rory Fitzpatrick : more work on replacing tracks with pfparticles
-   2018-09-25 Rory Fitzpatrick : more pfp replacement. need to define an angle for the pfp
-   2018-09-24 Rory Fitzpatrick : more pfparticles replacing tracks
-   2018-09-24 Rory Fitzpatrick : began replacing tracks with pfparticles. no showers produced right now

larsim v07_04_02
----------------------------------------

-   2018-10-17 Lynn Garren : larsim v07_04_02 for larsoft v07_07_02

larevt v07_00_11
----------------------------------------

-   2018-10-17 Lynn Garren : larevt v07_00_11 for larsoft v07_07_02

lardata v07_00_11
------------------------------------------

-   2018-10-17 Lynn Garren : lardata v07_00_11 for larsoft v07_07_02

larcore v07_00_04
------------------------------------------

-   2018-10-17 Lynn Garren : larcore v07_00_04 for larsoft v07_07_02

larpandoracontent v03_14_02
--------------------------------------------------------------

larsoftobj v07_05_01
------------------------------------------------

-   2018-10-17 Lynn Garren : larsoftobj v07_05_01 for larsoft v07_07_02
-   2018-10-17 Lynn Garren : product versions

lardataobj v07_02_04
------------------------------------------------

-   2018-10-17 Lynn Garren : lardataobj v07_02_04 for larsoft v07_07_02
-   2018-10-12 Saba Sehrish : added an overload to provide const accessor for Waveform

lardataalg v07_02_02
------------------------------------------------

-   2018-10-17 Lynn Garren : lardataalg v07_02_02 for larsoft v07_07_02

larcorealg v07_02_01
------------------------------------------------

-   2018-10-17 Lynn Garren : larcorealg v07_02_01 for larsoft v07_07_02
-   2018-10-10 Kyle Knoepfel : Fix memory-error-prone sorting code.

larcoreobj v07_00_01
------------------------------------------------

larbatch v01_46_01
--------------------------------------------

-   2018-10-17 Lynn Garren : larbatch v01_46_01 for larsoft v07_07_02
-   2018-10-12 Jeremy Hewes : Updated documentation for datafiletypes in project.py

larutils v1_23_04
------------------------------------------
