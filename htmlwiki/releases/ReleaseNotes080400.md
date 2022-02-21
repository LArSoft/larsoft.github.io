LArSoft v08_04_00 Release Notes
======================================================================

[list of LArSoft releases](LArSoft_release_list)
Download instructions for [larsoft v08_04_00](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v08_04_00/larsoft-v08_04_00.html)
Download instructions for [just larsoftobj v08_02_00](http://scisoft.fnal.gov/scisoft/bundles/larsoftobj/v08_02_00/larsoftobj-v08_02_00.html)

Purpose
--------------------

-   changes in develop
-   approved feature branch

New features
------------------------------

-   move \`lardata/Utilities/StatCollector.h\` to \`lardataalg\` so it can be used with gallery.
-   The branch is \`feature/gp_moveLArDataUtils\` in:
    -   \`lardata\`: origin
    -   \`lardataalg\`: destination
    -   \`larreco\`, \`lareventdisplay\`: fixes after the move
-   migration script available in larsoft: v08_04_00-LarDataUtils.py

Bug fixes
------------------------

Updated dependencies
----------------------------------------------

Change List
============================

larsoft v08_04_00
------------------------------------------

-   2019-01-14 Lynn Garren : larsoft v08_04_00 for larsoft v08_04_00
-   2019-01-14 Lynn Garren : product versions
-   2019-01-14 Lynn Garren : rename with actual release
-   2019-01-14 Lynn Garren : Merge branch ‘feature/gp_moveLArDataUtils’ into release/v08_04_00
-   2019-01-09 Gianluca Petrillo : Added patch script for move of \`StatCollector.h\`

lareventdisplay v08_01_00
----------------------------------------------------------

-   2019-01-14 Lynn Garren : lareventdisplay v08_01_00 for larsoft v08_04_00
-   2019-01-14 Lynn Garren : Merge branch ‘feature/gp_moveLArDataUtils’ into release/v08_04_00
-   2019-01-09 Gianluca Petrillo : Moving \`StatCollector.h\` from \`lardata\` to \`lardataalg\`

larexamples v08_00_03
--------------------------------------------------

-   2019-01-14 Lynn Garren : larexamples v08_00_03 for larsoft v08_04_00

larg4 v08_00_03
--------------------------------------

-   2019-01-14 Lynn Garren : larg4 v08_00_03 for larsoft v08_04_00

larpandora v08_02_01
------------------------------------------------

-   2019-01-14 Lynn Garren : larpandora v08_02_01 for larsoft v08_04_00

larwirecell v08_01_02
--------------------------------------------------

-   2019-01-14 Lynn Garren : larwirecell v08_01_02 for larsoft v08_04_00

larana v08_00_04
----------------------------------------

-   2019-01-14 Lynn Garren : larana v08_00_04 for larsoft v08_04_00

larreco v08_03_00
------------------------------------------

-   2019-01-14 Lynn Garren : larreco v08_03_00 for larsoft v08_04_00
-   2019-01-14 Lynn Garren : Merge branch ‘feature/gp_moveLArDataUtils’ into release/v08_04_00
-   2019-01-09 Gianluca Petrillo : Moving \`StatCollector.h\` from \`lardata\` to \`lardataalg\`

larsim v08_01_01
----------------------------------------

-   2019-01-14 Lynn Garren : larsim v08_01_01 for larsoft v08_04_00

larevt v08_00_03
----------------------------------------

-   2019-01-14 Lynn Garren : larevt v08_00_03 for larsoft v08_04_00

lardata v08_01_00
------------------------------------------

-   2019-01-14 Lynn Garren : lardata v08_01_00 for larsoft v08_04_00
-   2019-01-14 Lynn Garren : Merge branch ‘feature/gp_moveLArDataUtils’ into release/v08_04_00
-   2019-01-09 Gianluca Petrillo : Moved \`raw::OpDetWaveform\` dumper functionality to lardataalg
-   2019-01-09 Gianluca Petrillo : Moved utilities from lardata

larcore v08_00_00
------------------------------------------

larpandoracontent v03_14_04
--------------------------------------------------------------

larsoftobj v08_02_00
------------------------------------------------

-   2019-01-14 Lynn Garren : larsoftobj v08_02_00 for larsoft v08_04_00
-   2019-01-14 Lynn Garren : product versions

lardataobj v08_00_00
------------------------------------------------

lardataalg v08_02_00
------------------------------------------------

-   2019-01-14 Lynn Garren : lardataalg v08_02_00 for larsoft v08_04_00
-   2019-01-14 Lynn Garren : remove duplicate entry
-   2019-01-14 Lynn Garren : Merge branch ‘feature/gp_moveLArDataUtils’ into release/v08_04_00
-   2019-01-11 Gianluca Petrillo : Added a library with a constexpr version of \`abs\`.
-   2019-01-09 Gianluca Petrillo : Library for variables with dimensions.
-   2019-01-09 Gianluca Petrillo : Moved utilities from lardata

larcorealg v08_00_00
------------------------------------------------

larcoreobj v08_00_00
------------------------------------------------

larbatch v01_47_03
--------------------------------------------

larutils v1_23_09
------------------------------------------
