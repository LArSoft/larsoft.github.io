LArSoft v08\_04\_00 Release Notes(#LArSoft-v08_04_00-Release-Notes)
======================================================================

-   **Table of contents**
-   [LArSoft v08\_04\_00 Release Notes](#LArSoft-v08_04_00-Release-Notes)
    -   [Purpose](#Purpose)
    -   [New features](#New-features)
    -   [Bug fixes](#Bug-fixes)
    -   [Updated dependencies](#Updated-dependencies)
-   [Change List](#Change-List)
    -   [larsoft v08\_04\_00](#larsoft-v08_04_00)
    -   [lareventdisplay v08\_01\_00](#lareventdisplay-v08_01_00)
    -   [larexamples v08\_00\_03](#larexamples-v08_00_03)
    -   [larg4 v08\_00\_03](#larg4-v08_00_03)
    -   [larpandora v08\_02\_01](#larpandora-v08_02_01)
    -   [larwirecell v08\_01\_02](#larwirecell-v08_01_02)
    -   [larana v08\_00\_04](#larana-v08_00_04)
    -   [larreco v08\_03\_00](#larreco-v08_03_00)
    -   [larsim v08\_01\_01](#larsim-v08_01_01)
    -   [larevt v08\_00\_03](#larevt-v08_00_03)
    -   [lardata v08\_01\_00](#lardata-v08_01_00)
    -   [larcore v08\_00\_00](#larcore-v08_00_00)
    -   [larpandoracontent v03\_14\_04](#larpandoracontent-v03_14_04)
    -   [larsoftobj v08\_02\_00](#larsoftobj-v08_02_00)
    -   [lardataobj v08\_00\_00](#lardataobj-v08_00_00)
    -   [lardataalg v08\_02\_00](#lardataalg-v08_02_00)
    -   [larcorealg v08\_00\_00](#larcorealg-v08_00_00)
    -   [larcoreobj v08\_00\_00](#larcoreobj-v08_00_00)
    -   [larbatch v01\_47\_03](#larbatch-v01_47_03)
    -   [larutils v1\_23\_09](#larutils-v1_23_09)

[list of LArSoft releases](LArSoft_release_list)\
Download instructions for [larsoft v08\_04\_00](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v08_04_00/larsoft-v08_04_00.html)\
Download instructions for [just larsoftobj v08\_02\_00](http://scisoft.fnal.gov/scisoft/bundles/larsoftobj/v08_02_00/larsoftobj-v08_02_00.html)

Purpose(#Purpose)
--------------------

-   changes in develop
-   approved feature branch

New features(#New-features)
------------------------------

-   move \`lardata/Utilities/StatCollector.h\` to \`lardataalg\` so it can be used with gallery.
-   The branch is \`feature/gp\_moveLArDataUtils\` in:
    -   \`lardata\`: origin
    -   \`lardataalg\`: destination
    -   \`larreco\`, \`lareventdisplay\`: fixes after the move
-   migration script available in larsoft: v08\_04\_00-LarDataUtils.py

Bug fixes(#Bug-fixes)
------------------------

Updated dependencies(#Updated-dependencies)
----------------------------------------------

Change List(#Change-List)
============================

larsoft v08\_04\_00(#larsoft-v08_04_00)
------------------------------------------

-   2019-01-14 Lynn Garren : larsoft v08\_04\_00 for larsoft v08\_04\_00
-   2019-01-14 Lynn Garren : product versions
-   2019-01-14 Lynn Garren : rename with actual release
-   2019-01-14 Lynn Garren : Merge branch ‘feature/gp\_moveLArDataUtils’ into release/v08\_04\_00
-   2019-01-09 Gianluca Petrillo : Added patch script for move of \`StatCollector.h\`

lareventdisplay v08\_01\_00(#lareventdisplay-v08_01_00)
----------------------------------------------------------

-   2019-01-14 Lynn Garren : lareventdisplay v08\_01\_00 for larsoft v08\_04\_00
-   2019-01-14 Lynn Garren : Merge branch ‘feature/gp\_moveLArDataUtils’ into release/v08\_04\_00
-   2019-01-09 Gianluca Petrillo : Moving \`StatCollector.h\` from \`lardata\` to \`lardataalg\`

larexamples v08\_00\_03(#larexamples-v08_00_03)
--------------------------------------------------

-   2019-01-14 Lynn Garren : larexamples v08\_00\_03 for larsoft v08\_04\_00

larg4 v08\_00\_03(#larg4-v08_00_03)
--------------------------------------

-   2019-01-14 Lynn Garren : larg4 v08\_00\_03 for larsoft v08\_04\_00

larpandora v08\_02\_01(#larpandora-v08_02_01)
------------------------------------------------

-   2019-01-14 Lynn Garren : larpandora v08\_02\_01 for larsoft v08\_04\_00

larwirecell v08\_01\_02(#larwirecell-v08_01_02)
--------------------------------------------------

-   2019-01-14 Lynn Garren : larwirecell v08\_01\_02 for larsoft v08\_04\_00

larana v08\_00\_04(#larana-v08_00_04)
----------------------------------------

-   2019-01-14 Lynn Garren : larana v08\_00\_04 for larsoft v08\_04\_00

larreco v08\_03\_00(#larreco-v08_03_00)
------------------------------------------

-   2019-01-14 Lynn Garren : larreco v08\_03\_00 for larsoft v08\_04\_00
-   2019-01-14 Lynn Garren : Merge branch ‘feature/gp\_moveLArDataUtils’ into release/v08\_04\_00
-   2019-01-09 Gianluca Petrillo : Moving \`StatCollector.h\` from \`lardata\` to \`lardataalg\`

larsim v08\_01\_01(#larsim-v08_01_01)
----------------------------------------

-   2019-01-14 Lynn Garren : larsim v08\_01\_01 for larsoft v08\_04\_00

larevt v08\_00\_03(#larevt-v08_00_03)
----------------------------------------

-   2019-01-14 Lynn Garren : larevt v08\_00\_03 for larsoft v08\_04\_00

lardata v08\_01\_00(#lardata-v08_01_00)
------------------------------------------

-   2019-01-14 Lynn Garren : lardata v08\_01\_00 for larsoft v08\_04\_00
-   2019-01-14 Lynn Garren : Merge branch ‘feature/gp\_moveLArDataUtils’ into release/v08\_04\_00
-   2019-01-09 Gianluca Petrillo : Moved \`raw::OpDetWaveform\` dumper functionality to lardataalg
-   2019-01-09 Gianluca Petrillo : Moved utilities from lardata

larcore v08\_00\_00(#larcore-v08_00_00)
------------------------------------------

larpandoracontent v03\_14\_04(#larpandoracontent-v03_14_04)
--------------------------------------------------------------

larsoftobj v08\_02\_00(#larsoftobj-v08_02_00)
------------------------------------------------

-   2019-01-14 Lynn Garren : larsoftobj v08\_02\_00 for larsoft v08\_04\_00
-   2019-01-14 Lynn Garren : product versions

lardataobj v08\_00\_00(#lardataobj-v08_00_00)
------------------------------------------------

lardataalg v08\_02\_00(#lardataalg-v08_02_00)
------------------------------------------------

-   2019-01-14 Lynn Garren : lardataalg v08\_02\_00 for larsoft v08\_04\_00
-   2019-01-14 Lynn Garren : remove duplicate entry
-   2019-01-14 Lynn Garren : Merge branch ‘feature/gp\_moveLArDataUtils’ into release/v08\_04\_00
-   2019-01-11 Gianluca Petrillo : Added a library with a constexpr version of \`abs\`.
-   2019-01-09 Gianluca Petrillo : Library for variables with dimensions.
-   2019-01-09 Gianluca Petrillo : Moved utilities from lardata

larcorealg v08\_00\_00(#larcorealg-v08_00_00)
------------------------------------------------

larcoreobj v08\_00\_00(#larcoreobj-v08_00_00)
------------------------------------------------

larbatch v01\_47\_03(#larbatch-v01_47_03)
--------------------------------------------

larutils v1\_23\_09(#larutils-v1_23_09)
------------------------------------------
