LArSoft v09_13_00 Release Notes
======================================================================

[list of LArSoft releases](LArSoft_release_list)
Download instructions for [larsoft v09_13_00](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v09_13_00/larsoft-v09_13_00.html)
Download instructions for [just larsoftobj v09_04_00](http://scisoft.fnal.gov/scisoft/bundles/larsoftobj/v09_04_00/larsoftobj-v09_04_00.html)

Purpose
--------------------

-   changes in develop
-   approved PRs

New features
------------------------------

-   larrecodnn PR 13
    -   new directory structure to separate tf, keras, and trtis
    -   migration script: LArRecodnnNewDirs.sh
    -   **argoneutcode needs feature/team_rearrange_larrecodnn**
-   larsim PR 58
    -   Add checks for large SCE shifts as a signal to drop charge
    -   Some charge in ProtoDUNE-SP collects on the electron diverters which poke out into the drift volume. These changes allow the space charge service in dunetpc to signal to the simulation to drop this charge from the simulation by putting in very large (\>1E9 cm) offsets without generating error messages. It’s a bit of a hack – one might add a flag from the space charge model to say that the charge disappears instead of just being moved, but that would be a much bigger redesign.

Bug fixes
------------------------

Updated dependencies
----------------------------------------------

Change List
============================

larsoft v09_13_00
------------------------------------------

-   2021-01-14 Lynn Garren : larsoft v09_13_00 for larsoft v09_13_00
-   2021-01-14 Lynn Garren : product versions
-   2021-01-13 Lynn Garren : v09_13_00-larrecodnn
-   2021-01-13 Lynn Garren : Merge branch ‘feature/lg_migrate_larrecodnn’ into release/v09_13_00
-   2021-01-08 Lynn Garren : reflect changes in larrecodnn
-   2021-01-07 Lynn Garren : not ready to go in yet
-   2021-01-05 Lynn Garren : set directory name
-   2021-01-05 Lynn Garren : set directory name
-   2020-12-18 Lynn Garren : new larrecodnn directory structure
-   2020-12-18 Lynn Garren : new larrecodnn directory structure

lareventdisplay v09_00_18
----------------------------------------------------------

-   2021-01-14 Lynn Garren : lareventdisplay v09_00_18 for larsoft v09_13_00

larexamples v09_00_17
--------------------------------------------------

-   2021-01-14 Lynn Garren : larexamples v09_00_17 for larsoft v09_13_00

larpandora v09_03_09
------------------------------------------------

-   2021-01-14 Lynn Garren : larpandora v09_03_09 for larsoft v09_13_00

larsimrad v09_00_17
----------------------------------------------

-   2021-01-14 Lynn Garren : larsimrad v09_00_17 for larsoft v09_13_00

larrecodnn v09_03_00
------------------------------------------------

-   2021-01-14 Lynn Garren : add missing library
-   2021-01-14 Lynn Garren : larrecodnn v09_03_00 for larsoft v09_13_00
-   2021-01-13 Lynn Garren : Merge branch ‘mhlswang-develop’ into release/v09_13_00
-   2021-01-07 mhlswang : minor fixes for clang missed in last update
-   2021-01-07 mhlswang : additional restructing and minor fix for clang compatibility
-   2020-12-09 mhlswang : pared down Modules CMakeLists
-   2020-12-07 mhlswang : updated top level CMakeLists.txt
-   2020-12-07 mhlswang : new directory structure to separate tensorflow, trtis, and keras

larwirecell v09_01_10
--------------------------------------------------

larana v09_00_18
----------------------------------------

-   2021-01-14 Lynn Garren : larana v09_00_18 for larsoft v09_13_00

larreco v09_04_08
------------------------------------------

-   2021-01-14 Lynn Garren : larreco v09_04_08 for larsoft v09_13_00

larsim v09_07_05
----------------------------------------

-   2021-01-14 Lynn Garren : larsim v09_07_05 for larsoft v09_13_00
-   2021-01-13 Lynn Garren : Merge pull request [redmine issue 58](https://cdcvs.fnal.gov/redmine/issues/58) from tomjunk/develop
-   2021-01-08 Tom Junk : Merge branch ‘develop’ of [https://github.com/larsoft/larsim](https://github.com/larsoft/larsim) into develop
-   2021-01-08 Tom Junk : Follow Kyle’s suggestion and use a common utility function
-   2020-12-23 Tom Junk : Add checks for large SCE shifts as a signal to drop charge

larg4 v09_02_01
--------------------------------------

larevt v09_01_04
----------------------------------------

lardata v09_01_07
------------------------------------------

larcore v09_01_00
------------------------------------------

larpandoracontent v03_22_03
--------------------------------------------------------------

larsoftobj v09_04_00
------------------------------------------------

lardataobj v09_00_06
------------------------------------------------

lardataalg v09_03_04
------------------------------------------------

larcorealg v09_00_02
------------------------------------------------

larcoreobj v09_01_00
------------------------------------------------

webevd v09_01_01
----------------------------------------

larbatch v01_54_01
--------------------------------------------

larutils v1_27_03
------------------------------------------
