# LArSoft v08_08_00 Release Notes



[list of LArSoft releases](LArSoft_release_list)  
Download instructions for [larsoft v08_08_00](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v08_08_00/larsoft-v08_08_00.html)  
Download instructions for [just larsoftobj v08_05_00](http://scisoft.fnal.gov/scisoft/bundles/larsoftobj/v08_05_00/larsoftobj-v08_05_00.html)

## Purpose

-   changes to develop
-   approved feature branches

## New features

-   Avoid discarding createEngine’s returned reference
    -   [Kyle's talk](https://indico.fnal.gov/event/19644/contribution/2/material/slides/0.pdf)
    -   nutools:feature/knoepfel_nodiscard
    -   larana:feature/knoepfel_nodiscard
    -   larsim:feature/knoepfel_nodiscard
    -   larreco:feature/knoepfel_nodiscard
    -   lariatsoft:feature/knoepfel_nodiscard
    -   uboonecode:feature/knoepfel_nodiscard
    -   ubreco:feature/knoepfel_nodiscard
    -   ubcrt:feature/knoepfel_nodiscard
    -   ubsim:feature/knoepfel_nodiscard
    -   ubcore:feature/knoepfel_nodiscard
    -   ubevt:feature/knoepfel_nodiscard
    -   sbndcode:feature/knoepfel_nodiscard
    -   dunetpc:feature/knoepfel_nodiscard
    -   argoneutcode:feature/knoepfel_nodiscard
    -   icaruscode:feature/knoepfel_nodiscard
-   issue \#19191
    -   larcorealg feature/ss_issue19191
    -   dunetpc feature/ss_issue19191
-   larreco feature/cerati_shw-trk-fits

## Bug fixes

## Updated dependencies

-   nutools v2_26_07
-   nusystematics v00_02_06

# Change List

## larsoft v08_08_00

-   2019-02-07 Lynn Garren : product versions
-   2019-02-07 Lynn Garren : larsoft v08_08_00 for larsoft v08_08_00
-   2019-02-05 Lynn Garren : s75

## lareventdisplay v08_03_03

-   2019-02-07 Lynn Garren : lareventdisplay v08_03_03 for larsoft v08_08_00

## larexamples v08_01_03

-   2019-02-07 Lynn Garren : larexamples v08_01_03 for larsoft v08_08_00

## larg4 v08_01_03

-   2019-02-07 Lynn Garren : larg4 v08_01_03 for larsoft v08_08_00

## larpandora v08_04_02

-   2019-02-07 Lynn Garren : larpandora v08_04_02 for larsoft v08_08_00

## larwirecell v08_02_03

-   2019-02-07 Lynn Garren : larwirecell v08_02_03 for larsoft v08_08_00

## larana v08_02_00

-   2019-02-07 Lynn Garren : larana v08_02_00
-   2019-02-07 Lynn Garren : Merge branch 'feature/knoepfel_nodiscard' into release/v08_08_00
-   2019-02-07 Kyle Knoepfel : Fix clang errors.
-   2019-02-07 Lynn Garren : Merge branch 'feature/knoepfel_nodiscard' into release/v08_08_00
-   2019-02-06 Kyle Knoepfel : Call non-default base-class constructors in preparation for art 3.02.
-   2019-02-04 Kyle Knoepfel : Merge branch 'develop' into feature/knoepfel_nodiscard
-   2019-01-18 Kyle Knoepfel : Whitespace cleanup.
-   2019-01-18 Kyle Knoepfel : Remove getEngine calls; some cleanups.

## larreco v08_07_00

-   2019-02-07 Lynn Garren : larreco v08_07_00 for larsoft v08_08_00
-   2019-02-07 Lynn Garren : Merge branch 'feature/knoepfel_nodiscard' into release/v08_08_00
-   2019-02-07 Kyle Knoepfel : Fix clang errors.
-   2019-02-07 Lynn Garren : Merge branch 'feature/knoepfel_nodiscard' into release/v08_08_00
-   2019-02-06 Lynn Garren : Merge branch 'feature/cerati_shw-trk-fits' into release/v08_08_00
-   2019-02-04 Kyle Knoepfel : Merge branch 'develop' into feature/knoepfel_nodiscard
-   2019-01-30 Giuseppe Cerati : kalman filter fixes and updates for MicroBooNE MCC9
-   2019-01-18 Kyle Knoepfel : Remove getEngine calls; some cleanups.

## larsim v08_03_00

-   2019-02-07 Lynn Garren : larsim v08_03_00
-   2019-02-07 Lynn Garren : Merge branch 'feature/knoepfel_nodiscard' into release/v08_08_00
-   2019-02-07 Kyle Knoepfel : Fix clang errors.
-   2019-02-07 Lynn Garren : Merge branch 'feature/knoepfel_nodiscard' into release/v08_08_00
-   2019-02-04 Kyle Knoepfel : Merge branch 'develop' into feature/knoepfel_nodiscard
-   2018-10-08 Kyle Knoepfel : Remove getEngine calls; other cleanups.

## larevt v08_01_03

-   2019-02-07 Lynn Garren : larevt v08_01_03 for larsoft v08_08_00

## lardata v08_03_00

-   2019-02-07 Lynn Garren : larcore back down to v08_01_03
-   2019-02-07 Lynn Garren : lardata v08_03_00 for larsoft v08_08_00
-   2019-02-06 Kyle Knoepfel : Call non-default base-class constructors in preparation for art 3.02.

## larcore v08_01_03

-   2019-02-07 Lynn Garren : Merge branch 'release/v08_08_00'
-   2019-02-07 Lynn Garren : larcore v08_01_03
-   2019-02-07 Lynn Garren : Revert “Merge branch 'feature/gp_factorizeGeometryBuilding' into release/v08_08_00”
-   2019-02-07 Lynn Garren : larcore v08_02_00
-   2019-02-07 Lynn Garren : Merge branch 'feature/gp_factorizeGeometryBuilding' into release/v08_08_00
-   2019-02-01 Gianluca Petrillo : Added code in Geometry service to control which geometry builder to use.

## larpandoracontent v03_14_04

## larsoftobj v08_05_00

-   2019-02-07 Lynn Garren : product versions
-   2019-02-07 Lynn Garren : larsoftobj v08_05_00 for larsoft v08_08_00

## lardataobj v08_01_03

-   2019-02-07 Lynn Garren : lardataobj v08_01_03

## lardataalg v08_03_03

-   2019-02-07 Lynn Garren : lardataalg v08_03_03 for larsoft v08_08_00

## larcorealg v08_03_00

-   2019-02-07 Lynn Garren : Revert “Merge branch 'feature/gp_factorizeGeometryBuilding' into release/v08_08_00”
-   2019-02-07 Lynn Garren : larcorealg v08_03_00
-   2019-02-07 Lynn Garren : Merge branch 'feature/gp_factorizeGeometryBuilding' into release/v08_08_00
-   2019-02-06 Lynn Garren : Merge branch 'feature/ss_issue19191' into release/v08_08_00
-   2019-02-04 Saba Sehrish : Merge branch 'develop' into feature/ss_issue19191
-   2019-02-01 Gianluca Petrillo : Geometry builder can now be chosen by the service or via interface.
-   2019-02-01 Gianluca Petrillo : Geometry object structure discovery factorised from the object themselves.
-   2019-02-01 Gianluca Petrillo : Added classes which are only not movable and not copiable.
-   2019-02-01 Gianluca Petrillo : Nested namespaces changed to follow C++17 style.
-   2019-02-01 Gianluca Petrillo : Added iterator and utilities to iterate physics vector coordinates.
-   2019-02-01 Gianluca Petrillo : Added simple object enabling range-for loops.
-   2019-02-01 Gianluca Petrillo : Bug fix in old geometry test.
-   2019-01-22 Saba Sehrish : updated the function name
-   2019-01-18 Saba Sehrish : Merge branch 'develop' into feature/ss_issue19191
-   2019-01-16 Saba Sehrish : added functionality to returrn channels in TPC
-   2019-01-16 Saba Sehrish : added functionality to returrn channels in TPC

## larcoreobj v08_02_01

## larbatch v01_47_03

## larutils v1_23_11

-   2019-02-07 Lynn Garren : larutils v1_23_11 for larsoft v08_08_00
-   2019-02-04 Lynn Garren : add s75 for art v3_01_01
