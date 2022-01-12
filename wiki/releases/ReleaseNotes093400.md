LArSoft v09_34_00 Release Notes
======================================================================

-   **Table of contents**
-   [LArSoft v09_34_00 Release Notes](#LArSoft-v09_34_00-Release-Notes)
    -   [Purpose](#Purpose)
    -   [New features](#New-features)
    -   [Bug fixes](#Bug-fixes)
    -   [Updated dependencies](#Updated-dependencies)
-   [Change List](#Change-List)
    -   [larsoft v09_34_00](#larsoft-v09_34_00)
    -   [lareventdisplay v09_02_04](#lareventdisplay-v09_02_04)
    -   [larexamples v09_02_04](#larexamples-v09_02_04)
    -   [larpandora v09_09_04](#larpandora-v09_09_04)
    -   [larsimrad v09_03_03](#larsimrad-v09_03_03)
    -   [larrecodnn v09_09_04](#larrecodnn-v09_09_04)
    -   [larwirecell v09_04_03](#larwirecell-v09_04_03)
    -   [larana v09_03_04](#larana-v09_03_04)
    -   [larreco v09_07_04](#larreco-v09_07_04)
    -   [larsim v09_17_01](#larsim-v09_17_01)
    -   [larg4 v09_05_04](#larg4-v09_05_04)
    -   [larevt v09_03_03](#larevt-v09_03_03)
    -   [lardata v09_04_00](#lardata-v09_04_00)
    -   [larcore v09_03_01](#larcore-v09_03_01)
    -   [larpandoracontent v03_26_00](#larpandoracontent-v03_26_00)
    -   [larsoftobj v09_11_00](#larsoftobj-v09_11_00)
    -   [lardataobj v09_03_03](#lardataobj-v09_03_03)
    -   [lardataalg v09_07_00](#lardataalg-v09_07_00)
    -   [larcorealg v09_03_01](#larcorealg-v09_03_01)
    -   [larcoreobj v09_03_01](#larcoreobj-v09_03_01)
    -   [webevd v09_06_03](#webevd-v09_06_03)
    -   [larbatch v01_56_02](#larbatch-v01_56_02)
    -   [larutils v1_28_02](#larutils-v1_28_02)

[list of LArSoft releases](LArSoft_release_list)
Download instructions for [larsoft v09_34_00](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v09_34_00/larsoft-v09_34_00.html)
Download instructions for [just larsoftobj v09_11_00](http://scisoft.fnal.gov/scisoft/bundles/larsoftobj/v09_11_00/larsoftobj-v09_11_00.html)

Purpose
--------------------

-   changes in develop
-   approved PRs

New features
------------------------------

-   lardata PR 19
    -   Add DumpParticleIDs module. Copied style of Gianluca’s other DumpXXXX modules. Intention is that this module can help to vet future ParticleID updates.
-   lardataalg PR 25
    -   boost test cleanup
    -   remove unused comparisons & conversions

Bug fixes
------------------------

-   Boost test cleanups
    -   lardata PR 17
    -   larreco PR 34
    -   larana PR 12
    -   larevt PR 13
    -   larexamples PR 7
    -   larcorealg PR 22
    -   larcore PR 8
    -   larcoreobj PR 12
    -   lardataobj PR 14
-   lardatalg PR 27
    -   small documentation fix

Updated dependencies
----------------------------------------------

Change List
============================

larsoft v09_34_00
------------------------------------------

-   2021-10-21 Lynn Garren : larsoft v09_34_00 for larsoft v09_34_00
-   2021-10-21 Lynn Garren : larsoft v09_34_00 for larsoft v09_34_00
-   2021-10-21 Lynn Garren : product versions
-   2021-10-21 Lynn Garren : cleaning up the lists

lareventdisplay v09_02_04
----------------------------------------------------------

-   2021-10-21 Lynn Garren : lareventdisplay v09_02_04 for larsoft v09_34_00
-   2021-10-21 Lynn Garren : lareventdisplay v09_02_04 for larsoft v09_34_00

larexamples v09_02_04
--------------------------------------------------

-   2021-10-21 Lynn Garren : larexamples v09_02_04 for larsoft v09_34_00
-   2021-10-21 Lynn Garren : larexamples v09_02_04 for larsoft v09_34_00
-   2021-10-19 Lynn Garren : Merge pull request \#7 from knoepfel/feature/knoepfel_boost_test_cleanups
-   2021-09-08 Kyle Knoepfel : Cleanups to Boost tests.
-   2021-07-30 Kyle Knoepfel : Adjust library dependencies.

larpandora v09_09_04
------------------------------------------------

-   2021-10-21 Lynn Garren : larpandora v09_09_04 for larsoft v09_34_00
-   2021-10-21 Lynn Garren : larpandora v09_09_04 for larsoft v09_34_00

larsimrad v09_03_03
----------------------------------------------

-   2021-10-21 Lynn Garren : larsimrad v09_03_03 for larsoft v09_34_00
-   2021-10-21 Lynn Garren : larsimrad v09_03_03 for larsoft v09_34_00

larrecodnn v09_09_04
------------------------------------------------

-   2021-10-21 Lynn Garren : larrecodnn v09_09_04 for larsoft v09_34_00
-   2021-10-21 Lynn Garren : larrecodnn v09_09_04 for larsoft v09_34_00

larwirecell v09_04_03
--------------------------------------------------

-   2021-10-21 Lynn Garren : larwirecell v09_04_03 for larsoft v09_34_00
-   2021-10-21 Lynn Garren : larwirecell v09_04_03 for larsoft v09_34_00

larana v09_03_04
----------------------------------------

-   2021-10-21 Lynn Garren : larana v09_03_04 for larsoft v09_34_00
-   2021-10-21 Lynn Garren : larana v09_03_04 for larsoft v09_34_00
-   2021-10-19 Lynn Garren : Merge pull request \#12 from knoepfel/feature/knoepfel_boost_test_cleanups
-   2021-09-08 Kyle Knoepfel : Cleanups to Boost tests.

larreco v09_07_04
------------------------------------------

-   2021-10-21 Kyle Knoepfel : Fix link lines.
-   2021-10-21 Lynn Garren : larreco v09_07_04 for larsoft v09_34_00
-   2021-10-21 Lynn Garren : larreco v09_07_04 for larsoft v09_34_00
-   2021-10-19 Lynn Garren : Merge pull request \#34 from knoepfel/feature/knoepfel_boost_test_cleanups
-   2021-09-07 Kyle Knoepfel : Cleanups to Boost tests.
-   2021-07-30 Kyle Knoepfel : Adjust library dependencies.

larsim v09_17_01
----------------------------------------

-   2021-10-21 Lynn Garren : larsim v09_17_01 for larsoft v09_34_00
-   2021-10-21 Lynn Garren : larsim v09_17_01 for larsoft v09_34_00

larg4 v09_05_04
--------------------------------------

-   2021-10-21 Lynn Garren : larg4 v09_05_04 for larsoft v09_34_00
-   2021-10-21 Lynn Garren : larg4 v09_05_04 for larsoft v09_34_00

larevt v09_03_03
----------------------------------------

-   2021-10-21 Lynn Garren : larevt v09_03_03 for larsoft v09_34_00
-   2021-10-21 Lynn Garren : larevt v09_03_03 for larsoft v09_34_00
-   2021-10-19 Lynn Garren : Merge pull request \#13 from knoepfel/feature/knoepfel_boost_test_cleanups
-   2021-09-07 Kyle Knoepfel : Cleanups to Boost tests.
-   2021-07-30 Kyle Knoepfel : Adjust library dependencies.

lardata v09_04_00
------------------------------------------

-   2021-10-21 Lynn Garren : lardata v09_04_00 for larsoft v09_34_00
-   2021-10-21 Lynn Garren : lardata v09_04_00 for larsoft v09_34_00
-   2021-10-19 Lynn Garren : Merge pull request \#19 from hgreenlee/greenlee_dump_pid_old
-   2021-10-19 Herbert Greenlee : More dump pid fcl updates.
-   2021-10-19 Herbert Greenlee : Update style and best practices.
-   2021-10-19 Lynn Garren : Merge pull request [\#17](/redmine/issues/17 "Support: Email setup (Closed)") from knoepfel/feature/knoepfel_boost_test_cleanups
-   2021-10-14 Herbert Greenlee : Add DumpParticleIDs module.
-   2021-07-20 Kyle Knoepfel : Significant cleanups to Boost tests.
-   2021-07-30 Kyle Knoepfel : Adjust library dependencies.

larcore v09_03_01
------------------------------------------

-   2021-10-21 Lynn Garren : larcore v09_03_01 for larsoft v09_34_00
-   2021-10-21 Lynn Garren : larcore v09_03_01 for larsoft v09_34_00
-   2021-10-19 Lynn Garren : Merge pull request \#8 from knoepfel/feature/knoepfel_boost_test_cleanups
-   2021-07-20 Kyle Knoepfel : Cleanups to Boost unit tests.
-   2021-07-30 Kyle Knoepfel : Adjust library dependencies.

larpandoracontent v03_26_00
--------------------------------------------------------------

larsoftobj v09_11_00
------------------------------------------------

-   2021-10-21 Lynn Garren : larsoftobj v09_11_00 for larsoft v09_34_00
-   2021-10-21 Lynn Garren : larsoftobj v09_11_00 for larsoft v09_34_00
-   2021-10-21 Lynn Garren : product versions

lardataobj v09_03_03
------------------------------------------------

-   2021-10-21 Lynn Garren : lardataobj v09_03_03 for larsoft v09_34_00
-   2021-10-21 Lynn Garren : lardataobj v09_03_03 for larsoft v09_34_00
-   2021-10-19 Lynn Garren : Merge pull request \#14 from knoepfel/feature/knoepfel_boost_test_cleanups
-   2021-07-20 Kyle Knoepfel : Significant cleanups to Boost tests.

lardataalg v09_07_00
------------------------------------------------

-   2021-10-21 Lynn Garren : lardataalg v09_07_00 for larsoft v09_34_00
-   2021-10-21 Lynn Garren : lardataalg v09_07_00 for larsoft v09_34_00
-   2021-10-19 Lynn Garren : Merge pull request \#25 from knoepfel/feature/knoepfel_cleanup
-   2021-10-18 Lynn Garren : Merge pull request \#27 from PetrilloAtWork/patch-1
-   2021-10-15 Gianluca Petrillo : Fixed inline documentation format
-   2021-09-09 Kyle Knoepfel : Safer type-checking.
-   2021-09-08 Kyle Knoepfel : Minor configuration-tidying.
-   2021-09-08 Kyle Knoepfel : Restore type-checking on expressions.
-   2021-07-15 Kyle Knoepfel : Significant cleanups to Boost tests.
-   2021-09-07 Kyle Knoepfel : Remove unused comparisons and conversions.

larcorealg v09_03_01
------------------------------------------------

-   2021-10-21 Lynn Garren : larcorealg v09_03_01 for larsoft v09_34_00
-   2021-10-21 Lynn Garren : larcorealg v09_03_01 for larsoft v09_34_00
-   2021-10-19 Lynn Garren : Merge pull request \#22 from knoepfel/feature/knoepfel_boost_test_cleanups
-   2021-07-19 Kyle Knoepfel : Improve Boost unit tests.

larcoreobj v09_03_01
------------------------------------------------

-   2021-10-21 Lynn Garren : larcoreobj v09_03_01 for larsoft v09_34_00
-   2021-10-21 Lynn Garren : larcoreobj v09_03_01 for larsoft v09_34_00
-   2021-10-19 Lynn Garren : Merge pull request \#12 from knoepfel/feature/knoepfel_boost_test_cleanups
-   2021-07-20 Kyle Knoepfel : Cleanups to Boost unit tests.

webevd v09_06_03
----------------------------------------

-   2021-10-21 Lynn Garren : webevd v09_06_03 for larsoft v09_34_00
-   2021-10-21 Lynn Garren : webevd v09_06_03 for larsoft v09_34_00

larbatch v01_56_02
--------------------------------------------

larutils v1_28_02
------------------------------------------
