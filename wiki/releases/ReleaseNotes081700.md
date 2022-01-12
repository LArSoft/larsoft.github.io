LArSoft v08\_17\_00 Release Notes
======================================================================

-   **Table of contents**
-   [LArSoft v08\_17\_00 Release Notes](#LArSoft-v08_17_00-Release-Notes)
    -   [Purpose](#Purpose)
    -   [New features](#New-features)
    -   [Bug fixes](#Bug-fixes)
    -   [Updated dependencies](#Updated-dependencies)
-   [Change List](#Change-List)
    -   [larsoft v08\_17\_00](#larsoft-v08_17_00)
    -   [lareventdisplay v08\_06\_01](#lareventdisplay-v08_06_01)
    -   [larexamples v08\_02\_01](#larexamples-v08_02_01)
    -   [larg4 v08\_03\_00](#larg4-v08_03_00)
    -   [larpandora v08\_06\_01](#larpandora-v08_06_01)
    -   [larwirecell v08\_05\_00](#larwirecell-v08_05_00)
    -   [larana v08\_06\_00](#larana-v08_06_00)
    -   [larreco v08\_12\_01](#larreco-v08_12_01)
    -   [larsim v08\_06\_01](#larsim-v08_06_01)
    -   [larevt v08\_04\_00](#larevt-v08_04_00)
    -   [lardata v08\_04\_01](#lardata-v08_04_01)
    -   [larcore v08\_04\_00](#larcore-v08_04_00)
    -   [larpandoracontent v03\_14\_07](#larpandoracontent-v03_14_07)
    -   [larsoftobj v08\_12\_00](#larsoftobj-v08_12_00)
    -   [lardataobj v08\_03\_01](#lardataobj-v08_03_01)
    -   [lardataalg v08\_06\_01](#lardataalg-v08_06_01)
    -   [larcorealg v08\_09\_00](#larcorealg-v08_09_00)
    -   [larcoreobj v08\_05\_00](#larcoreobj-v08_05_00)
    -   [larbatch v01\_51\_02](#larbatch-v01_51_02)
    -   [larutils v1\_23\_15](#larutils-v1_23_15)

[list of LArSoft releases](LArSoft_release_list)
Download instructions for [larsoft v08\_17\_00](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v08_17_00/larsoft-v08_17_00.html)
Download instructions for [just larsoftobj v08\_12\_00](http://scisoft.fnal.gov/scisoft/bundles/larsoftobj/v08_12_00/larsoftobj-v08_12_00.html)

Purpose
--------------------

-   changes in develop
-   approved feature branches

New features
------------------------------

-   space point solver update from MicroBooNE MCC9
    -   larreco, uboonecode, ubevt feature/tjyang\_spsmove
-   wirecell updates
    -   wirecell 0.11
    -   larwirecell feature/bviren\_imaging

Bug fixes
------------------------

-   more work on [\#22339](/redmine/issues/22339 "Bug: Tons of Error Messages from OpDetBTRs (Closed)")

Updated dependencies
----------------------------------------------

-   wirecell v0\_11\_2

Change List
============================

larsoft v08\_17\_00
------------------------------------------

-   2019-04-24 Lynn Garren : larsoft v08\_17\_00 for larsoft v08\_17\_00
-   2019-04-24 Lynn Garren : product versions

lareventdisplay v08\_06\_01
----------------------------------------------------------

-   2019-04-24 Lynn Garren : lareventdisplay v08\_06\_01 for larsoft v08\_17\_00
-   2019-04-22 Lynn Garren : larsoft v08\_16\_00
-   2019-04-19 Gianluca Petrillo : Why did I even think of adding \`–all\` to my push??
-   2019-04-19 Gianluca Petrillo : Replacing deprecated call to \`geo::CryostatGeo::TPCs()\`.

larexamples v08\_02\_01
--------------------------------------------------

-   2019-04-24 Lynn Garren : larexamples v08\_02\_01 for larsoft v08\_17\_00

larg4 v08\_03\_00
--------------------------------------

-   2019-04-24 Lynn Garren : larg4 v08\_03\_00 for larsoft v08\_17\_00
-   2019-04-12 Kyle Knoepfel : Remove unnecessary headers and some cleanups.
-   2019-04-12 Kyle Knoepfel : Remove unused functions.

larpandora v08\_06\_01
------------------------------------------------

-   2019-04-24 Lynn Garren : larpandora v08\_06\_01 for larsoft v08\_17\_00

larwirecell v08\_05\_00
--------------------------------------------------

-   2019-04-24 Lynn Garren : larwirecell v08\_05\_00 for larsoft v08\_17\_00
-   2019-04-24 Lynn Garren : use wirecell v0\_11\_2
-   2019-04-24 Lynn Garren : Merge branch ‘feature/bviren\_imaging’ into release/v08\_16\_01
-   2019-04-18 Brett Viren : Add support for wct logging.

larana v08\_06\_00
----------------------------------------

-   2019-04-24 Lynn Garren : larana v08\_06\_00 for larsoft v08\_17\_00
-   2019-04-12 Kyle Knoepfel : Remove unused functions/header dependencies.

larreco v08\_12\_01
------------------------------------------

-   2019-04-24 Lynn Garren : larreco v08\_12\_01 for larsoft v08\_17\_00
-   2019-04-23 Lynn Garren : Merge branch ‘feature/tjyang\_spsmove’ into release/v08\_16\_01
-   2019-02-18 Tingjun Yang : Move microboone configuration to ubevt.

larsim v08\_06\_01
----------------------------------------

-   2019-04-24 Lynn Garren : larsim v08\_06\_01 for larsoft v08\_17\_00
-   2019-04-24 Jason Stock : Larsoft Issue [\#22339](/redmine/issues/22339 "Bug: Tons of Error Messages from OpDetBTRs (Closed)") I am revisiting this issue after a report from ProtoDUNE that they see this message often with high energy tracks.
-   2019-04-18 Gianluca Petrillo : \`gensingle\_test.fcl\`: removed unnecessary services.

larevt v08\_04\_00
----------------------------------------

-   2019-04-24 Lynn Garren : larevt v08\_04\_00 for larsoft v08\_17\_00
-   2019-04-12 Kyle Knoepfel : Remove unused functions/header dependencies.
-   2019-04-19 Kyle Knoepfel : More removal of reconfigure functions.

lardata v08\_04\_01
------------------------------------------

-   2019-04-24 Lynn Garren : lardata v08\_04\_01 for larsoft v08\_17\_00

larcore v08\_04\_00
------------------------------------------

-   2019-04-24 Lynn Garren : larcore v08\_04\_00 for larsoft v08\_17\_00
-   2019-04-22 Gianluca Petrillo : \`lar::providerFrom()\` now asks art for constant service classes.

larpandoracontent v03\_14\_07
--------------------------------------------------------------

larsoftobj v08\_12\_00
------------------------------------------------

-   2019-04-24 Lynn Garren : larsoftobj v08\_12\_00 for larsoft v08\_17\_00
-   2019-04-24 Lynn Garren : product versions

lardataobj v08\_03\_01
------------------------------------------------

-   2019-04-24 Lynn Garren : lardataobj v08\_03\_01 for larsoft v08\_17\_00

lardataalg v08\_06\_01
------------------------------------------------

-   2019-04-24 Lynn Garren : lardataalg v08\_06\_01 for larsoft v08\_17\_00

larcorealg v08\_09\_00
------------------------------------------------

-   2019-04-24 Lynn Garren : larcorealg v08\_09\_00 for larsoft v08\_17\_00
-   2019-04-22 Gianluca Petrillo : Undeprecating \`geo::CryostatGeo::TPCs()\`. But it’s still deprecated.
-   2019-04-22 Lynn Garren : larsoft v08\_16\_00
-   2019-04-19 Gianluca Petrillo : Added \`IterateElement()\` and \`IterateXxx()\` to all geo::XxxGeo objects.
-   2019-04-19 Gianluca Petrillo : Added features to geometry data containers.
-   2019-04-19 Gianluca Petrillo : Reordered private members of \`geo::GeometryCore\`
-   2019-04-18 Gianluca Petrillo : Changed \`geo::GeometryCore\` internals, now using \`util::span\` for iteration.
-   2019-04-17 Lynn Garren : larsoft v08\_15\_01
-   2019-04-15 Gianluca Petrillo : Added helper utilities for range-for iteration.

larcoreobj v08\_05\_00
------------------------------------------------

-   2019-04-24 Lynn Garren : larcoreobj v08\_05\_00 for larsoft v08\_17\_00
-   2019-04-22 Lynn Garren : larsoft v08\_16\_00
-   2019-04-19 Gianluca Petrillo : Added element level information to geometry and readout IDs.

larbatch v01\_51\_02
--------------------------------------------

-   2019-04-24 Lynn Garren : larbatch v01\_51\_02 for larsoft v08\_17\_00
-   2019-04-17 Lynn Garren : larsoft v08\_15\_01
-   2019-04-16 Herbert Greenlee : Get rid of useless cd’s to home directory.

larutils v1\_23\_15
------------------------------------------

-   2019-04-24 Lynn Garren : larutils v1\_23\_15 for larsoft v08\_17\_00
-   2019-04-18 Lynn Garren : s82
