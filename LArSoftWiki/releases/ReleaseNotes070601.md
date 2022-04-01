# LArSoft v07_06_01 Release Notes



[list of LArSoft releases](LArSoft_release_list)  
Download instructions for [larsoft v07_06_01](https://scisoft.fnal.gov/scisoft/bundles/larsoft/v07_06_01/larsoft-v07_06_01.html)  
Download instructions for [just larsoftobj v07_03_01](https://scisoft.fnal.gov/scisoft/bundles/larsoftobj/v07_03_01/larsoftobj-v07_03_01.html)

## Purpose

-   changes in develop

## New features

-   point-like light source
    -   larsim feature/jsoto_lightsource_pointsource
    -   enabled with fhicl parameter PointSource, which is false by default

## Bug fixes

## Updated dependencies

-   artdaq_core v3_04_01

# Change List

## larsoft v07_06_01

-   2018-09-17 Lynn Garren : larsoft v07_06_01 for larsoft v07_07_00
-   2018-09-17 Lynn Garren : product versions

## lareventdisplay v07_01_05

-   2018-09-17 Lynn Garren : lareventdisplay v07_01_05 for larsoft v07_07_00
-   2018-09-13 Thomas Junk : be kinder and gentler with misconfiguration — don't crash but emit a warning
-   2018-09-13 Thomas Junk : Merge branch 'develop' of ssh://cdcvs.fnal.gov/cvs/projects/lareventdisplay into develop
-   2018-09-13 Thomas Junk : add an option to subtract the pedestal from raw::RawDigit data products

## larexamples v07_00_08

-   2018-09-17 Lynn Garren : larexamples v07_00_08 for larsoft v07_07_00

## larg4 v07_01_03

-   2018-09-17 Lynn Garren : larg4 v07_01_03 for larsoft v07_07_00
-   2018-09-14 Beatriz Tapia Oregui : Fixed an infinite loop and added searching for gdml files.

## larpandora v07_01_05

-   2018-09-17 Lynn Garren : larpandora v07_01_05 for larsoft v07_07_00

## larwirecell v07_01_02

-   2018-09-17 Lynn Garren : larwirecell v07_01_02 for larsoft v07_07_00

## larana v07_02_01

-   2018-09-17 Lynn Garren : larana v07_02_01 for larsoft v07_07_00

## larreco v07_04_01

-   2018-09-17 Lynn Garren : larreco v07_04_01 for larsoft v07_07_00
-   2018-09-17 Lynn Garren : larreco v07_04_01 for larsoft v07_07_00

## larsim v07_03_01

-   2018-09-17 Lynn Garren : larsim v07_03_01 for larsoft v07_07_00
-   2018-09-17 Lynn Garren : Merge branch 'feature/jsoto_lightsource_pointsource' into release/v07_07_00
-   2018-09-17 Lynn Garren : remove unused variable
-   2018-09-14 Beatriz Tapia Oregui : This is a fix to an infinite loop in GetScintTime and the addition of SimPhotonsLite, which now gets produced as a dataproduct.
-   2018-09-13 Lynn Garren : larsoft v07_06_00
-   2018-09-12 Jose Soto : Added a point-like light source option
-   2018-09-12 Jason Stock : Fixing a syntax error. Corrections for new flag in RadioGen.
-   2018-09-12 Jason Stock : Updating a comment in RadioGen.
-   2018-09-11 Jason Stock : Update to name of new fcl flag in RadioGen to make it a bit more clear what it does, and to prevent users from accidentally enabling it for their backgrounds.
-   2018-09-11 Jason Stock : Adding fIsSignal flag and conditional assignment to the LorentzVector Time so that signal radiologicals can be set at T0.

## larevt v07_00_08

-   2018-09-17 Lynn Garren : larevt v07_00_08 for larsoft v07_07_00

## lardata v07_00_08

-   2018-09-17 Lynn Garren : lardata v07_00_08 for larsoft v07_07_00

## larcore v07_00_02

## larpandoracontent v03_14_01

## larsoftobj v07_03_01

-   2018-09-17 Lynn Garren : larsoftobj v07_03_01 for larsoft v07_07_00
-   2018-09-17 Lynn Garren : product versions

## lardataobj v07_02_03

-   2018-09-17 Lynn Garren : lardataobj v07_02_03 for larsoft v07_07_00
-   2018-09-10 Rory Fitzpatrick : added slice-shower association

## lardataalg v07_01_01

-   2018-09-17 Lynn Garren : lardataalg v07_01_01 for larsoft v07_07_00

## larcorealg v07_01_01

## larcoreobj v07_00_01

## larbatch v01_45_00

-   2018-09-17 Lynn Garren : larbatch v01_45_00 for larsoft v07_07_00
-   2018-09-13 Lynn Garren : larsoft v07_06_00
-   2018-09-11 Herbert Greenlee : Add data file type option.

## larutils v1_23_02

-   2018-09-17 Lynn Garren : larutils v1_23_02 for larsoft v07_07_00
-   2018-09-14 Thomas Junk : update artdaq_core line in the manifest from what's set up during build. Assume same qualifiers, just different version
