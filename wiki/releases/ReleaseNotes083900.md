# LArSoft v08_39_00 Release Notes



[list of LArSoft releases](LArSoft_release_list)  
Download instructions for [larsoft v08_39_00](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v08_39_00/larsoft-v08_39_00.html)  
Download instructions for [just larsoftobj v08_24_00](http://scisoft.fnal.gov/scisoft/bundles/larsoftobj/v08_24_00/larsoftobj-v08_24_00.html)

## Purpose

-   With this release, only e19 and c7 builds are supported. Support for e17 and c2 has been dropped.
-   changes in develop
-   approved feature branches

## New features

-   larsim feature/gputnam-MergeSimSources for \#23815
-   removing vestigial code in larreco \#23794
-   larwirecell feature/wgu_simch_priorDepo
    -   internal logic changes

## Bug fixes

## Updated dependencies

-   mrb v3_04_03
-   wirecell v0_12_4g
    -   fixes bug found when building with clang

# Change List

## larsoft v08_39_00

-   2020-01-08 Lynn Garren : larpandoracontent v03_15_11
-   2020-01-07 Lynn Garren : larsoft v08_39_00 for larsoft v08_39_00
-   2020-01-07 Lynn Garren : product versions

## lareventdisplay v08_11_00

-   2020-01-07 Lynn Garren : lareventdisplay v08_11_00 for larsoft v08_39_00

## larexamples v08_05_00

-   2020-01-07 Lynn Garren : larexamples v08_05_00 for larsoft v08_39_00

## larg4 v08_09_00

-   2020-01-07 Lynn Garren : larg4 v08_09_00 for larsoft v08_39_00

## larpandora v08_10_00

-   2020-01-08 Lynn Garren : larpandoracontent v03_15_11
-   2020-01-07 Lynn Garren : larpandora v08_10_00 for larsoft v08_39_00

## larwirecell v08_11_00

-   2020-01-07 Lynn Garren : larwirecell v08_11_00 for larsoft v08_39_00
-   2020-01-07 Lynn Garren : wirecell v0_12_4g with clang bugfix
-   2020-01-07 Wenqiang Gu : save the original depo position in simchannel
-   2020-01-07 Wenqiang Gu : fill simchannel map with the DUNE style

## larana v08_15_00

-   2020-01-07 Lynn Garren : larana v08_15_00 for larsoft v08_39_00

## larreco v08_26_00

-   2020-01-07 Lynn Garren : larreco v08_26_00 for larsoft v08_39_00
-   2020-01-07 Lynn Garren : whitespace
-   2020-01-07 Lynn Garren : Merge branch 'feature/remove_GeaneMCApplication' into release/v08_39_00
-   2020-01-07 Tingjun Yang : Fix a bug spotted by Glenn, Ajib and Heng-Ye.
-   2020-01-07 Lynn Garren : removing GeaneMCApplication

## larsim v08_18_00

-   2020-01-07 Lynn Garren : larsim v08_18_00 for larsoft v08_39_00
-   2020-01-06 gputnam : Merge branch 'develop' into feature/gputnam-MergeSimSources
-   2019-12-20 Kyle Knoepfel : larsoft v08_38_01
-   2019-12-18 Tingjun Yang : Merge branch 'develop' of ssh://cdcvs.fnal.gov/cvs/projects/larsim into develop
-   2019-12-18 Tingjun Yang : Comment out dune configurations as they are moved to dunetpc.
-   2019-11-18 gputnam : Merge commit 'f3fb1b7a53b17a33cfa44fca86695f9ce5bfe4db' into feature/gputnam-MergeSimSources
-   2019-11-15 gputnam : Merge tag 'v08_14_00' into feature/gputnam-MergeSimSources
-   2019-11-06 gputnam : Move MergeSimSource module back into larsim.

## larevt v08_09_00

-   2020-01-07 Lynn Garren : larevt v08_09_00 for larsoft v08_39_00

## lardata v08_12_00

-   2020-01-07 Lynn Garren : lardata v08_12_00 for larsoft v08_39_00

## larcore v08_09_00

-   2020-01-07 Lynn Garren : larcore v08_09_00 for larsoft v08_39_00

## larpandoracontent v03_15_11

-   2020-01-08 Lynn Garren : sorry - fixing the version
-   2020-01-07 Lynn Garren : larpandoracontent v03_16_00 for larsoft v08_39_00

## larsoftobj v08_24_00

-   2020-01-07 Lynn Garren : larsoftobj v08_24_00 for larsoft v08_39_00
-   2020-01-07 Lynn Garren : product versions

## lardataobj v08_09_00

-   2020-01-07 Lynn Garren : lardataobj v08_09_00 for larsoft v08_39_00

## lardataalg v08_11_00

-   2020-01-07 Lynn Garren : lardataalg v08_11_00 for larsoft v08_39_00

## larcorealg v08_19_00

-   2020-01-07 Lynn Garren : larcorealg v08_19_00 for larsoft v08_39_00
-   2019-12-31 Gianluca Petrillo : Added \`geo::PlaneGeo::InterWireDistance()\` computing 3D distance between wires.
-   2019-12-31 Gianluca Petrillo : \`geo::PlaneGeo::InterWireProjectedDistance()\` does not handle directions parallel to wires specially any more.
-   2019-12-31 Gianluca Petrillo : The usual Clang 5.0.0 bug (\`c7\` has it fixed).
-   2019-12-31 Gianluca Petrillo : Added \`geo::PlaneGeo::InterWireProjectedDistance()\`.
-   2019-12-31 Gianluca Petrillo : Added vector composition methods \`geo::PlaneGeo::ComposeVector()\`.

## larcoreobj v08_09_00

-   2020-01-07 Lynn Garren : larcoreobj v08_09_00 for larsoft v08_39_00

## larbatch v01_51_12

## larutils v1_25_03
