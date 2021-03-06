# LArSoft v09_17_02 Release Notes



[list of LArSoft releases](LArSoft_release_list)  
Download instructions for [larsoft v09_17_02](https://scisoft.fnal.gov/scisoft/bundles/larsoft/v09_17_02/larsoft-v09_17_02.html)  
Download instructions for [just larsoftobj v09_05_01](https://scisoft.fnal.gov/scisoft/bundles/larsoftobj/v09_05_01/larsoftobj-v09_05_01.html)

## Purpose

-   changes in develop
-   approved PRs

## New features

-   larcorealg PR 15
    -   Avoid domain errors in computing TPC wire angles.
    -   This solves issue \#25559.
-   use nug4 v1_07_00
    -   larg4 PR 22 (update ups/product_deps)
    -   larsim PR 65 (update ups/product_deps)
    -   lardata PR 14
        -   Added the MagneticField service provider in magfield_larsoft.fcl
    -   larreco PR 28
        -   Fixed MagneticField service for nug4 v1_07_00
        -   Fix MagneticField service in TrackFinder due to modifications of the MagneticField service in the nug4 package (v1_07_00)  
            See issue \#25534

## Bug fixes

-   webevd PR 29
    -   Variety of small fixes allowing SBND and Icarus to work more smoothly.

## Updated dependencies

-   nug4 v1_07_00 per \#25534
    -   Re-implemented the MagneticFieldService to be able to override it with a custom service and added the handling on non-uniform Bfields in the Detector Construction. Default behavior should not change.
-   geant4reweight v01_06_06

# Change List

## larsoft v09_17_02

-   2021-03-03 Lynn Garren : larsoft v09_17_02 for larsoft v09_17_02
-   2021-03-03 Lynn Garren : product versions

## lareventdisplay v09_01_03

-   2021-03-03 Lynn Garren : lareventdisplay v09_01_03 for larsoft v09_17_02

## larexamples v09_01_03

-   2021-03-03 Lynn Garren : larexamples v09_01_03 for larsoft v09_17_02

## larpandora v09_05_04

-   2021-03-03 Lynn Garren : larpandora v09_05_04 for larsoft v09_17_02

## larsimrad v09_01_03

-   2021-03-03 Lynn Garren : larsimrad v09_01_03 for larsoft v09_17_02

## larrecodnn v09_06_02

-   2021-03-03 Lynn Garren : larrecodnn v09_06_02 for larsoft v09_17_02

## larwirecell v09_02_02

-   2021-03-03 Lynn Garren : larwirecell v09_02_02 for larsoft v09_17_02

## larana v09_01_03

-   2021-03-03 Lynn Garren : larana v09_01_03 for larsoft v09_17_02

## larreco v09_05_03

-   2021-03-03 Lynn Garren : larreco v09_05_03 for larsoft v09_17_02
-   2021-02-25 Eldwan Brianne : Fixed MagneticField service for nug4 v1_07_00

## larsim v09_10_02

-   2021-03-03 Lynn Garren : larsim v09_10_02 for larsoft v09_17_02
-   2021-02-25 Lynn Garren : pickup nug4 from larg4

## larg4 v09_03_02

-   2021-03-03 Lynn Garren : larg4 v09_03_02 for larsoft v09_17_02
-   2021-02-25 Lynn Garren : nug4 v1_07_00

## larevt v09_02_02

-   2021-03-03 Lynn Garren : larevt v09_02_02 for larsoft v09_17_02

## lardata v09_02_01

-   2021-03-03 Lynn Garren : lardata v09_02_01 for larsoft v09_17_02
-   2021-02-26 Eldwan Brianne : Added the MagneticField service provider in magfield_larsoft.fcl

## larcore v09_02_01

-   2021-03-03 Lynn Garren : larcore v09_02_01 for larsoft v09_17_02

## larpandoracontent v03_22_07

## larsoftobj v09_05_01

-   2021-03-03 Lynn Garren : larsoftobj v09_05_01 for larsoft v09_17_02
-   2021-03-03 Lynn Garren : product versions

## lardataobj v09_01_01

-   2021-03-03 Lynn Garren : lardataobj v09_01_01 for larsoft v09_17_02

## lardataalg v09_04_01

-   2021-03-03 Lynn Garren : lardataalg v09_04_01 for larsoft v09_17_02

## larcorealg v09_01_01

-   2021-03-03 Lynn Garren : larcorealg v09_01_01 for larsoft v09_17_02
-   2021-03-02 Lynn Garren : Merge pull request \#15 from PetrilloAtWork/feature/gp_issue25559
-   2021-02-25 Gianluca Petrillo : Avoid domain errors in computing TPC wire angles.

## larcoreobj v09_02_00

## webevd v09_05_01

-   2021-03-03 Lynn Garren : webevd v09_05_01 for larsoft v09_17_02
-   2021-03-02 Lynn Garren : Merge pull request \#29 from cjbackhouse/feature/sbn
-   2021-02-26 Christopher Backhouse : More principled implementation of U/V and V/U views
-   2021-02-26 Christopher Backhouse : Update to correct service fcls
-   2021-02-26 Christopher Backhouse : Sort out some confusions with the YUV view combo
-   2021-02-26 Christopher Backhouse : fcl for Icarus
-   2021-02-25 Christopher Backhouse : Don't show MCTruth for cosmic rays, which can be extremely lengthy.
-   2021-02-25 Christopher Backhouse : Fix formatting, including British spellings, in color code.
-   2021-02-25 Christopher Backhouse : Fix algorithm that produced a huge amount of GC activity when there were many trajectories/trajectory points.
-   2021-02-25 Christopher Backhouse : fcl file with SBND geometry

## larbatch v01_54_01

## larutils v1_27_04
