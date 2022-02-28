# LArSoft v07_07_01 Release Notes



[list of LArSoft releases](LArSoft_release_list)  
Download instructions for [larsoft v07_07_01](https://scisoft.fnal.gov/scisoft/bundles/larsoft/v07_07_01/larsoft-v07_07_01.html)  
Download instructions for [just larsoftobj v07_05_00](https://scisoft.fnal.gov/scisoft/bundles/larsoftobj/v07_05_00/larsoftobj-v07_05_00.html)

## Purpose

-   changes in develop
-   approved feature branches

## New features

-   larsim feature/jsoto_maxrange_in_extendedphotlib
    -   It only affects the extended photon libraries, to make the range modified by fhcl parameters (since before was hard-coded).
-   larbatch grid_setup.sh
    -   behaves like mrbslp, but does not require mrb

## Bug fixes

-   larreco feature/bb_TCWork
    -   bug fix for TrajCluster_module
-   larsim \#15727
    -   Fixing a segfault when interpolation between voxels and time propagation are activated.

## Updated dependencies

-   wirecell v0_9_1a
    -   improved build, no changes to code

# Change List

## larsoft v07_07_01

-   2018-10-10 Lynn Garren : larsoft v07_07_01 for larsoft v07_07_01
-   2018-10-10 Lynn Garren : product versions

## lareventdisplay v07_01_08

-   2018-10-10 Lynn Garren : lareventdisplay v07_01_08 for larsoft v07_07_01
-   2018-10-04 Lynn Garren : larsoft v07_07_00
-   2018-10-03 Christoph Alt : Fixing the reco hit drawer for dual phase. This is necessary because the definition of the start and end time of individual hits in a group of multiple hits has changed.

## larexamples v07_00_11

-   2018-10-10 Lynn Garren : larexamples v07_00_11 for larsoft v07_07_01

## larg4 v07_01_06

-   2018-10-10 Lynn Garren : larg4 v07_01_06 for larsoft v07_07_01

## larpandora v07_01_08

-   2018-10-10 Lynn Garren : larpandora v07_01_08 for larsoft v07_07_01

## larwirecell v07_02_01

-   2018-10-10 Lynn Garren : larwirecell v07_02_01 for larsoft v07_07_01

## larana v07_02_04

-   2018-10-10 Lynn Garren : larana v07_02_04 for larsoft v07_07_01

## larreco v07_04_04

-   2018-10-10 Lynn Garren : larreco v07_04_04 for larsoft v07_07_01
-   2018-10-10 Lynn Garren : larreco v07_04_04 for larsoft v07_07_01
-   2018-10-08 baller : fixed bugs
-   2018-10-08 baller : Fix bug indexing into the output vertex collections.

## larsim v07_04_01

-   2018-10-10 Lynn Garren : larsim v07_04_01 for larsoft v07_07_01
-   2018-10-09 Jose Soto : Fixing a segfault when interpolation between voxels and time propagation are activated.
-   2018-10-09 Jose Soto : Merge branch 'develop' into feature/jsoto_maxrange_in_extendedphotlib
-   2018-10-04 Jose Soto : Feature in extended photonlibraries: Now time range can be change in a fhcl parameter

## larevt v07_00_10

-   2018-10-10 Lynn Garren : larevt v07_00_10 for larsoft v07_07_01

## lardata v07_00_10

-   2018-10-10 Lynn Garren : lardata v07_00_10 for larsoft v07_07_01

## larcore v07_00_03

-   2018-10-10 Lynn Garren : larcore v07_00_03 for larsoft v07_07_01

## larpandoracontent v03_14_02

## larsoftobj v07_05_00

-   2018-10-10 Lynn Garren : larsoftobj v07_05_00 for larsoft v07_07_01
-   2018-10-10 Lynn Garren : product versions

## lardataobj v07_02_03

## lardataalg v07_02_01

-   2018-10-10 Lynn Garren : lardataalg v07_02_01 for larsoft v07_07_01

## larcorealg v07_02_00

-   2018-10-10 Lynn Garren : larcorealg v07_02_00 for larsoft v07_07_01
-   2018-10-04 Gianluca Petrillo : Added \`geo::GeometryCore::DetectorEnclosureBox()\` for detector enclosure coordinates

## larcoreobj v07_00_01

## larbatch v01_46_00

-   2018-10-10 Lynn Garren : larbatch v01_46_00 for larsoft v07_07_01
-   2018-10-03 Lynn Garren : improve the logic
-   2018-10-03 Lynn Garren : grid_setup.sh will setup all products it finds

## larutils v1_23_04
