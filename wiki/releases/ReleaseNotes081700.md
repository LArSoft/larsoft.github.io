# LArSoft v08_17_00 Release Notes



[list of LArSoft releases](LArSoft_release_list)  
Download instructions for [larsoft v08_17_00](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v08_17_00/larsoft-v08_17_00.html)  
Download instructions for [just larsoftobj v08_12_00](http://scisoft.fnal.gov/scisoft/bundles/larsoftobj/v08_12_00/larsoftobj-v08_12_00.html)

## Purpose

-   changes in develop
-   approved feature branches

## New features

-   space point solver update from MicroBooNE MCC9
    -   larreco, uboonecode, ubevt feature/tjyang_spsmove
-   wirecell updates
    -   wirecell 0.11
    -   larwirecell feature/bviren_imaging

## Bug fixes

-   more work on \#22339

## Updated dependencies

-   wirecell v0_11_2

# Change List

## larsoft v08_17_00

-   2019-04-24 Lynn Garren : larsoft v08_17_00 for larsoft v08_17_00
-   2019-04-24 Lynn Garren : product versions

## lareventdisplay v08_06_01

-   2019-04-24 Lynn Garren : lareventdisplay v08_06_01 for larsoft v08_17_00
-   2019-04-22 Lynn Garren : larsoft v08_16_00
-   2019-04-19 Gianluca Petrillo : Why did I even think of adding \`—all\` to my push??
-   2019-04-19 Gianluca Petrillo : Replacing deprecated call to \`geo::CryostatGeo::TPCs()\`.

## larexamples v08_02_01

-   2019-04-24 Lynn Garren : larexamples v08_02_01 for larsoft v08_17_00

## larg4 v08_03_00

-   2019-04-24 Lynn Garren : larg4 v08_03_00 for larsoft v08_17_00
-   2019-04-12 Kyle Knoepfel : Remove unnecessary headers and some cleanups.
-   2019-04-12 Kyle Knoepfel : Remove unused functions.

## larpandora v08_06_01

-   2019-04-24 Lynn Garren : larpandora v08_06_01 for larsoft v08_17_00

## larwirecell v08_05_00

-   2019-04-24 Lynn Garren : larwirecell v08_05_00 for larsoft v08_17_00
-   2019-04-24 Lynn Garren : use wirecell v0_11_2
-   2019-04-24 Lynn Garren : Merge branch 'feature/bviren_imaging' into release/v08_16_01
-   2019-04-18 Brett Viren : Add support for wct logging.

## larana v08_06_00

-   2019-04-24 Lynn Garren : larana v08_06_00 for larsoft v08_17_00
-   2019-04-12 Kyle Knoepfel : Remove unused functions/header dependencies.

## larreco v08_12_01

-   2019-04-24 Lynn Garren : larreco v08_12_01 for larsoft v08_17_00
-   2019-04-23 Lynn Garren : Merge branch 'feature/tjyang_spsmove' into release/v08_16_01
-   2019-02-18 Tingjun Yang : Move microboone configuration to ubevt.

## larsim v08_06_01

-   2019-04-24 Lynn Garren : larsim v08_06_01 for larsoft v08_17_00
-   2019-04-24 Jason Stock : Larsoft Issue \#22339 I am revisiting this issue after a report from ProtoDUNE that they see this message often with high energy tracks.
-   2019-04-18 Gianluca Petrillo : \`gensingle_test.fcl\`: removed unnecessary services.

## larevt v08_04_00

-   2019-04-24 Lynn Garren : larevt v08_04_00 for larsoft v08_17_00
-   2019-04-12 Kyle Knoepfel : Remove unused functions/header dependencies.
-   2019-04-19 Kyle Knoepfel : More removal of reconfigure functions.

## lardata v08_04_01

-   2019-04-24 Lynn Garren : lardata v08_04_01 for larsoft v08_17_00

## larcore v08_04_00

-   2019-04-24 Lynn Garren : larcore v08_04_00 for larsoft v08_17_00
-   2019-04-22 Gianluca Petrillo : \`lar::providerFrom()\` now asks art for constant service classes.

## larpandoracontent v03_14_07

## larsoftobj v08_12_00

-   2019-04-24 Lynn Garren : larsoftobj v08_12_00 for larsoft v08_17_00
-   2019-04-24 Lynn Garren : product versions

## lardataobj v08_03_01

-   2019-04-24 Lynn Garren : lardataobj v08_03_01 for larsoft v08_17_00

## lardataalg v08_06_01

-   2019-04-24 Lynn Garren : lardataalg v08_06_01 for larsoft v08_17_00

## larcorealg v08_09_00

-   2019-04-24 Lynn Garren : larcorealg v08_09_00 for larsoft v08_17_00
-   2019-04-22 Gianluca Petrillo : Undeprecating \`geo::CryostatGeo::TPCs()\`. But it's still deprecated.
-   2019-04-22 Lynn Garren : larsoft v08_16_00
-   2019-04-19 Gianluca Petrillo : Added \`IterateElement()\` and \`IterateXxx()\` to all geo::XxxGeo objects.
-   2019-04-19 Gianluca Petrillo : Added features to geometry data containers.
-   2019-04-19 Gianluca Petrillo : Reordered private members of \`geo::GeometryCore\`
-   2019-04-18 Gianluca Petrillo : Changed \`geo::GeometryCore\` internals, now using \`util::span\` for iteration.
-   2019-04-17 Lynn Garren : larsoft v08_15_01
-   2019-04-15 Gianluca Petrillo : Added helper utilities for range-for iteration.

## larcoreobj v08_05_00

-   2019-04-24 Lynn Garren : larcoreobj v08_05_00 for larsoft v08_17_00
-   2019-04-22 Lynn Garren : larsoft v08_16_00
-   2019-04-19 Gianluca Petrillo : Added element level information to geometry and readout IDs.

## larbatch v01_51_02

-   2019-04-24 Lynn Garren : larbatch v01_51_02 for larsoft v08_17_00
-   2019-04-17 Lynn Garren : larsoft v08_15_01
-   2019-04-16 Herbert Greenlee : Get rid of useless cd's to home directory.

## larutils v1_23_15

-   2019-04-24 Lynn Garren : larutils v1_23_15 for larsoft v08_17_00
-   2019-04-18 Lynn Garren : s82
