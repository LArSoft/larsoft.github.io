LArSoft v08_55_01 Release Notes
======================================================================

[list of LArSoft releases](LArSoft_release_list)
Download instructions for [larsoft v08_55_01](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v08_55_01/larsoft-v08_55_01.html)
Download instructions for [just larsoftobj v08_29_01](http://scisoft.fnal.gov/scisoft/bundles/larsoftobj/v08_29_01/larsoftobj-v08_29_01.html)

Purpose
--------------------

-   changes in develop
-   approved PRs

New features
------------------------------

-   larsoft PR 12
    -   add stan, stan_math, and sundials to the larsoft distribution (issue [redmine issue 23688](https://cdcvs.fnal.gov/redmine/issues/23688))
    -   do some cleanup of the build config scripts
-   larpandoracontent PR 6
    -   This PR includes a minor update to ensure LArContent builds with GCC 7.3. Versions of GCC prior to 8 that support C++ 17 issue warnings when there are unused structured bindings. This update avoids this problem. The details can be found in PandoraPFA\#126
    -   There are no behavioural changes as a result of this update and no experiment code/config changes are necessary.

Bug fixes
------------------------

-   larg4 PR 11
    -   Remove some memory leaks caught by profiler

Updated dependencies
----------------------------------------------

-   stan v2_18_0
-   stan_math v2_18_0
-   sundials v3_2_1

Change List
============================

larsoft v08_55_01
------------------------------------------

-   2020-06-16 Lynn Garren : product versions
-   2020-06-16 Lynn Garren : larsoft v08_55_01 for larsoft v08_55_01
-   2020-06-12 Lynn Garren : Merge pull request \#12 from lgarren/feature/lg_add_stan
-   2020-06-12 Lynn Garren : add stan and cleanup config files

lareventdisplay v08_12_18
----------------------------------------------------------

larexamples v08_06_18
--------------------------------------------------

larg4 v08_14_04
--------------------------------------

-   2020-06-16 Lynn Garren : larg4 v08_14_04 for larsoft v08_55_01
-   2020-06-11 Lynn Garren : Merge pull request \#11 from drivera-fnal/feature_drivera_memleak_cleanup
-   2020-06-11 David Rivera : Incorporate reviewer’s suggestions.
-   2020-06-09 David Rivera : Merge branch ‘develop’ into feature_drivera_memleak_cleanup (pull in changes from LARSOFT_SUITE_v08_55_0)
-   2020-06-09 David Rivera : Remove some commented code. Reduce number of std::endls.
-   2020-06-09 David Rivera : Use G4AutoDelete to mitigate memory leaks from dynamically allocated G4UserLimits; these cannot be deleted in the normal way because they belong to the corresponding G4LogicalVolumes which are geometry-related split-classes in Geant4. Also changed the setStepLimits function to utilize the LogicalVolumeStore instead of the parser itself. Use a map instead of a vector for the list of override step limits.
-   2020-06-05 David Rivera : First pass – delete dynamically allocated GDML parser and reader

larpandora v08_12_11
------------------------------------------------

-   2020-06-16 Lynn Garren : larpandora v08_12_11 for larsoft v08_55_01

larrecodnn v08_04_03
------------------------------------------------

larwirecell v08_12_15
--------------------------------------------------

larana v08_17_10
----------------------------------------

larreco v08_32_03
------------------------------------------

larsim v08_27_00
----------------------------------------

larevt v08_11_08
----------------------------------------

lardata v08_15_08
------------------------------------------

larcore v08_11_09
------------------------------------------

larpandoracontent v03_16_02
--------------------------------------------------------------

-   2020-06-16 Lynn Garren : larpandoracontent v03_16_02 for larsoft v08_55_01
-   2020-06-16 Lynn Garren : Merge pull request [redmine issue 6](https://cdcvs.fnal.gov/redmine/issues/6) from PandoraPFA/feature/larpandoracontent_v03_16_02
-   2020-06-15 Andrew Chappell : Update version and change log
-   2020-06-15 AndyChappell : Merge pull request [redmine issue 126](https://cdcvs.fnal.gov/redmine/issues/126) from AndyChappell/feature/gcc7
-   2020-06-15 Andrew Chappell : Allow gcc 7 to compile an unused structured binding

larsoftobj v08_29_01
------------------------------------------------

lardataobj v08_11_01
------------------------------------------------

lardataalg v08_13_13
------------------------------------------------

larcorealg v08_22_01
------------------------------------------------

larcoreobj v08_12_00
------------------------------------------------

webevd v08_00_05
----------------------------------------

larbatch v01_52_02
--------------------------------------------

larutils v1_25_09
------------------------------------------
