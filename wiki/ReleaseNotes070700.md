LArSoft v07\_07\_00 Release Notes
======================================================================

-   **Table of contents**
-   [LArSoft v07\_07\_00 Release Notes](#LArSoft-v07_07_00-Release-Notes)
    -   [Purpose](#Purpose)
    -   [New features](#New-features)
    -   [Bug fixes](#Bug-fixes)
    -   [Updated dependencies](#Updated-dependencies)
-   [Change List](#Change-List)
    -   [larsoft v07\_07\_00](#larsoft-v07_07_00)
    -   [lareventdisplay v07\_01\_07](#lareventdisplay-v07_01_07)
    -   [larexamples v07\_00\_10](#larexamples-v07_00_10)
    -   [larg4 v07\_01\_05](#larg4-v07_01_05)
    -   [larpandora v07\_01\_07](#larpandora-v07_01_07)
    -   [larwirecell v07\_02\_00](#larwirecell-v07_02_00)
    -   [larana v07\_02\_03](#larana-v07_02_03)
    -   [larreco v07\_04\_03](#larreco-v07_04_03)
    -   [larsim v07\_04\_00](#larsim-v07_04_00)
    -   [larevt v07\_00\_09](#larevt-v07_00_09)
    -   [lardata v07\_00\_09](#lardata-v07_00_09)
    -   [larcore v07\_00\_02](#larcore-v07_00_02)
    -   [larpandoracontent v03\_14\_02](#larpandoracontent-v03_14_02)
    -   [larsoftobj v07\_04\_00](#larsoftobj-v07_04_00)
    -   [lardataobj v07\_02\_03](#lardataobj-v07_02_03)
    -   [lardataalg v07\_02\_00](#lardataalg-v07_02_00)
    -   [larcorealg v07\_01\_01](#larcorealg-v07_01_01)
    -   [larcoreobj v07\_00\_01](#larcoreobj-v07_00_01)
    -   [larbatch v01\_45\_00](#larbatch-v01_45_00)
    -   [larutils v1\_23\_04](#larutils-v1_23_04)

[list of LArSoft releases](LArSoft_release_list)
Download instructions for [larsoft v07\_07\_00](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v07_07_00/larsoft-v07_07_00.html)
Download instructions for [just larsoftobj v07\_04\_00](http://scisoft.fnal.gov/scisoft/bundles/larsoftobj/v07_04_00/larsoftobj-v07_04_00.html)

Purpose
--------------------

New features
------------------------------

-   `feature/gp_DetectorClocks` in `lardataalg` and `larana`
    -   It contains an extension of the service provider \`DetectorClocks\`
        interface. As such, it changes the virtual table of the derived classes,
        and this appears as a breaking change (or so I have been reported).
-   SignalShapingService for argoneutcode
    -   larsim feature/bb\_Argo
    -   argoneutcode feature/bb\_SigShapeService
-   wirecell
    -   wirecell 0.9.1
    -   larwirecell feature/weihy\_larwirecell and feature/bviren\_wclsdev

Bug fixes
------------------------

-   hit track meta data bug fix
    -   feature/indexHits\_lorena for larreco and larpandora

Updated dependencies
----------------------------------------------

-   wirecell v0\_9\_1

Change List
============================

larsoft v07\_07\_00
------------------------------------------

-   2018-10-03 Lynn Garren : larsoft v07\_07\_00 for larsoft v07\_07\_00
-   2018-10-03 Lynn Garren : product versions
-   2018-10-03 Lynn Garren : update dependency database
-   2018-10-01 Lynn Garren : larbatch v01\_45\_00

lareventdisplay v07\_01\_07
----------------------------------------------------------

-   2018-10-03 Lynn Garren : lareventdisplay v07\_01\_07 for larsoft v07\_07\_00

larexamples v07\_00\_10
--------------------------------------------------

-   2018-10-03 Lynn Garren : larexamples v07\_00\_10 for larsoft v07\_07\_00

larg4 v07\_01\_05
--------------------------------------

-   2018-10-03 Lynn Garren : larg4 v07\_01\_05 for larsoft v07\_07\_00

larpandora v07\_01\_07
------------------------------------------------

-   2018-10-03 Lynn Garren : larpandora v07\_01\_07 for larsoft v07\_07\_00
-   2018-09-28 loressa : acknowledging/ignoring the return of std::insert by casting it to void
-   2018-09-28 loressa : tighten comments; raise exception in GetAssociatedHits if index vector doesnt match input vector
-   2018-09-26 Steven Green : Using unordered set for look-up.
-   2018-09-25 Lorena Escudero : fixing the order of hits associations with metadata, adding order from spacepoints in trajectory if available, rest (from clusters) at the end

larwirecell v07\_02\_00
--------------------------------------------------

-   2018-10-03 Lynn Garren : larwirecell v07\_02\_00 for larsoft v07\_07\_00
-   2018-10-03 Lynn Garren : unused private member function
-   2018-10-03 Lynn Garren : Merge branch ‘feature/weihy\_larwirecell’ into release/v07\_07\_00
-   2018-10-03 Lynn Garren : Merge branch ‘feature/bviren\_wclsdev’ into release/v07\_07\_00
-   2018-10-02 Hanyu Wei : larwirecell updates for depo energy in SimChannel
-   2018-10-01 Brett Viren : Use input tag instead of source label.

larana v07\_02\_03
----------------------------------------

-   2018-10-03 Lynn Garren : larana v07\_02\_03 for larsoft v07\_07\_00
-   2018-09-27 Usher, Tracy L : Fix the minimum drift time to set at the proper trigger time (which takes advantage of a new method from Gianluca)
-   2018-09-28 Gianluca Petrillo : Revert “Fix the minimum drift time to set at the proper trigger time (which takes advantage of a new method from Gianluca)”
-   2018-09-27 Usher, Tracy L : Fix the minimum drift time to set at the proper trigger time (which takes advantage of a new method from Gianluca)

larreco v07\_04\_03
------------------------------------------

-   2018-10-03 Lynn Garren : larreco v07\_04\_03 for larsoft v07\_07\_00
-   2018-10-03 Lynn Garren : larreco v07\_04\_03 for larsoft v07\_07\_00
-   2018-10-03 Lynn Garren : Merge branch ‘feature/indexHits\_lorena’ into release/v07\_07\_00
-   2018-10-02 Bruce Baller : Protect against invalid vertex ID
-   2018-09-28 loressa : added hits with no trajectory index as bad hits
-   2018-09-28 baller : Handle case where there are no output hits.
-   2018-09-27 Lynn Garren : larsoft v07\_06\_02
-   2018-09-14 Tingjun Yang : Fix the distance squared.
-   2018-09-25 Tingjun Yang : Merge branch ‘develop’ of ssh://cdcvs.fnal.gov/cvs/projects/larreco into develop
-   2018-09-25 loressa : small tweak to avoid using hits with no real metadata index
-   2018-09-12 Tingjun Yang : Merge branch ‘develop’ of ssh://cdcvs.fnal.gov/cvs/projects/larreco into develop
-   2018-08-15 Tingjun Yang : Merge remote-tracking branch ‘origin/feature/bb\_restruct’ into develop

larsim v07\_04\_00
----------------------------------------

-   2018-10-03 Lynn Garren : larsim v07\_04\_00 for larsoft v07\_07\_00
-   2018-09-27 baller : Merge branch ‘develop’ into feature/bb\_Argo
-   2018-09-27 baller : Move ArgoNeuT code to argoneutcode
-   2018-09-27 baller : Add SignalShapingService
-   2018-09-27 baller : Add SignalShapingService
-   2018-09-19 baller : Add SignalShapingService.
-   2018-09-19 baller : Add SignalShapingService.
-   2018-09-19 baller : Add SignalShapingService.

larevt v07\_00\_09
----------------------------------------

-   2018-10-03 Lynn Garren : larevt v07\_00\_09 for larsoft v07\_07\_00

lardata v07\_00\_09
------------------------------------------

-   2018-10-03 Lynn Garren : lardata v07\_00\_09 for larsoft v07\_07\_00

larcore v07\_00\_02
------------------------------------------

larpandoracontent v03\_14\_02
--------------------------------------------------------------

larsoftobj v07\_04\_00
------------------------------------------------

-   2018-10-03 Lynn Garren : larsoftobj v07\_04\_00 for larsoft v07\_07\_00
-   2018-10-03 Lynn Garren : lardataalg v07\_02\_00

lardataobj v07\_02\_03
------------------------------------------------

lardataalg v07\_02\_00
------------------------------------------------

-   2018-10-03 Lynn Garren : lardataalg v07\_02\_00 for larsoft v07\_07\_00
-   2018-09-26 Gianluca Petrillo : Added \`detinfo::DetectorClocks::Time2Tick()\`.
-   2018-09-28 Gianluca Petrillo : Revert “Added \`detinfo::DetectorClocks::Time2Tick()\`.”
-   2018-09-26 Gianluca Petrillo : Added \`detinfo::DetectorClocks::Time2Tick()\`.
-   2018-09-26 Gianluca Petrillo : Documentation fixes.

larcorealg v07\_01\_01
------------------------------------------------

larcoreobj v07\_00\_01
------------------------------------------------

larbatch v01\_45\_00
--------------------------------------------

larutils v1\_23\_04
------------------------------------------

-   2018-10-03 Lynn Garren : larutils v1\_23\_04 for larsoft v07\_07\_00
-   2018-10-01 Thomas Junk : forgot to excape some periods – they matched too much stuff as regex chars
