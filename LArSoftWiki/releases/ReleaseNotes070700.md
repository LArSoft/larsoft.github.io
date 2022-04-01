# LArSoft v07_07_00 Release Notes



[list of LArSoft releases](LArSoft_release_list)  
Download instructions for [larsoft v07_07_00](https://scisoft.fnal.gov/scisoft/bundles/larsoft/v07_07_00/larsoft-v07_07_00.html)  
Download instructions for [just larsoftobj v07_04_00](https://scisoft.fnal.gov/scisoft/bundles/larsoftobj/v07_04_00/larsoftobj-v07_04_00.html)

## Purpose

## New features

-   `feature/gp_DetectorClocks` in `lardataalg` and `larana`
    -   It contains an extension of the service provider \`DetectorClocks\`  
        interface. As such, it changes the virtual table of the derived classes,  
        and this appears as a breaking change (or so I have been reported).
-   SignalShapingService for argoneutcode
    -   larsim feature/bb_Argo
    -   argoneutcode feature/bb_SigShapeService
-   wirecell
    -   wirecell 0.9.1
    -   larwirecell feature/weihy_larwirecell and feature/bviren_wclsdev

## Bug fixes

-   hit track meta data bug fix
    -   feature/indexHits_lorena for larreco and larpandora

## Updated dependencies

-   wirecell v0_9_1

# Change List

## larsoft v07_07_00

-   2018-10-03 Lynn Garren : larsoft v07_07_00 for larsoft v07_07_00
-   2018-10-03 Lynn Garren : product versions
-   2018-10-03 Lynn Garren : update dependency database
-   2018-10-01 Lynn Garren : larbatch v01_45_00

## lareventdisplay v07_01_07

-   2018-10-03 Lynn Garren : lareventdisplay v07_01_07 for larsoft v07_07_00

## larexamples v07_00_10

-   2018-10-03 Lynn Garren : larexamples v07_00_10 for larsoft v07_07_00

## larg4 v07_01_05

-   2018-10-03 Lynn Garren : larg4 v07_01_05 for larsoft v07_07_00

## larpandora v07_01_07

-   2018-10-03 Lynn Garren : larpandora v07_01_07 for larsoft v07_07_00
-   2018-09-28 loressa : acknowledging/ignoring the return of std::insert by casting it to void
-   2018-09-28 loressa : tighten comments; raise exception in GetAssociatedHits if index vector doesnt match input vector
-   2018-09-26 Steven Green : Using unordered set for look-up.
-   2018-09-25 Lorena Escudero : fixing the order of hits associations with metadata, adding order from spacepoints in trajectory if available, rest (from clusters) at the end

## larwirecell v07_02_00

-   2018-10-03 Lynn Garren : larwirecell v07_02_00 for larsoft v07_07_00
-   2018-10-03 Lynn Garren : unused private member function
-   2018-10-03 Lynn Garren : Merge branch 'feature/weihy_larwirecell' into release/v07_07_00
-   2018-10-03 Lynn Garren : Merge branch 'feature/bviren_wclsdev' into release/v07_07_00
-   2018-10-02 Hanyu Wei : larwirecell updates for depo energy in SimChannel
-   2018-10-01 Brett Viren : Use input tag instead of source label.

## larana v07_02_03

-   2018-10-03 Lynn Garren : larana v07_02_03 for larsoft v07_07_00
-   2018-09-27 Usher, Tracy L : Fix the minimum drift time to set at the proper trigger time (which takes advantage of a new method from Gianluca)
-   2018-09-28 Gianluca Petrillo : Revert “Fix the minimum drift time to set at the proper trigger time (which takes advantage of a new method from Gianluca)”
-   2018-09-27 Usher, Tracy L : Fix the minimum drift time to set at the proper trigger time (which takes advantage of a new method from Gianluca)

## larreco v07_04_03

-   2018-10-03 Lynn Garren : larreco v07_04_03 for larsoft v07_07_00
-   2018-10-03 Lynn Garren : larreco v07_04_03 for larsoft v07_07_00
-   2018-10-03 Lynn Garren : Merge branch 'feature/indexHits_lorena' into release/v07_07_00
-   2018-10-02 Bruce Baller : Protect against invalid vertex ID
-   2018-09-28 loressa : added hits with no trajectory index as bad hits
-   2018-09-28 baller : Handle case where there are no output hits.
-   2018-09-27 Lynn Garren : larsoft v07_06_02
-   2018-09-14 Tingjun Yang : Fix the distance squared.
-   2018-09-25 Tingjun Yang : Merge branch 'develop' of ssh://cdcvs.fnal.gov/cvs/projects/larreco into develop
-   2018-09-25 loressa : small tweak to avoid using hits with no real metadata index
-   2018-09-12 Tingjun Yang : Merge branch 'develop' of ssh://cdcvs.fnal.gov/cvs/projects/larreco into develop
-   2018-08-15 Tingjun Yang : Merge remote-tracking branch 'origin/feature/bb_restruct' into develop

## larsim v07_04_00

-   2018-10-03 Lynn Garren : larsim v07_04_00 for larsoft v07_07_00
-   2018-09-27 baller : Merge branch 'develop' into feature/bb_Argo
-   2018-09-27 baller : Move ArgoNeuT code to argoneutcode
-   2018-09-27 baller : Add SignalShapingService
-   2018-09-27 baller : Add SignalShapingService
-   2018-09-19 baller : Add SignalShapingService.
-   2018-09-19 baller : Add SignalShapingService.
-   2018-09-19 baller : Add SignalShapingService.

## larevt v07_00_09

-   2018-10-03 Lynn Garren : larevt v07_00_09 for larsoft v07_07_00

## lardata v07_00_09

-   2018-10-03 Lynn Garren : lardata v07_00_09 for larsoft v07_07_00

## larcore v07_00_02

## larpandoracontent v03_14_02

## larsoftobj v07_04_00

-   2018-10-03 Lynn Garren : larsoftobj v07_04_00 for larsoft v07_07_00
-   2018-10-03 Lynn Garren : lardataalg v07_02_00

## lardataobj v07_02_03

## lardataalg v07_02_00

-   2018-10-03 Lynn Garren : lardataalg v07_02_00 for larsoft v07_07_00
-   2018-09-26 Gianluca Petrillo : Added \`detinfo::DetectorClocks::Time2Tick()\`.
-   2018-09-28 Gianluca Petrillo : Revert “Added \`detinfo::DetectorClocks::Time2Tick()\`.”
-   2018-09-26 Gianluca Petrillo : Added \`detinfo::DetectorClocks::Time2Tick()\`.
-   2018-09-26 Gianluca Petrillo : Documentation fixes.

## larcorealg v07_01_01

## larcoreobj v07_00_01

## larbatch v01_45_00

## larutils v1_23_04

-   2018-10-03 Lynn Garren : larutils v1_23_04 for larsoft v07_07_00
-   2018-10-01 Thomas Junk : forgot to excape some periods — they matched too much stuff as regex chars
