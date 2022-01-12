LArSoft v09_33_00 Release Notes
======================================================================

-   **Table of contents**
-   [LArSoft v09_33_00 Release Notes](#LArSoft-v09_33_00-Release-Notes)
    -   [Purpose](#Purpose)
    -   [New features](#New-features)
    -   [Bug fixes](#Bug-fixes)
    -   [Updated dependencies](#Updated-dependencies)
-   [Change List](#Change-List)
    -   [larsoft v09_33_00](#larsoft-v09_33_00)
    -   [lareventdisplay v09_02_03](#lareventdisplay-v09_02_03)
    -   [larexamples v09_02_03](#larexamples-v09_02_03)
    -   [larpandora v09_09_03](#larpandora-v09_09_03)
    -   [larsimrad v09_03_02](#larsimrad-v09_03_02)
    -   [larrecodnn v09_09_03](#larrecodnn-v09_09_03)
    -   [larwirecell v09_04_02](#larwirecell-v09_04_02)
    -   [larana v09_03_03](#larana-v09_03_03)
    -   [larreco v09_07_03](#larreco-v09_07_03)
    -   [larsim v09_17_00](#larsim-v09_17_00)
    -   [larg4 v09_05_03](#larg4-v09_05_03)
    -   [larevt v09_03_02](#larevt-v09_03_02)
    -   [lardata v09_03_02](#lardata-v09_03_02)
    -   [larcore v09_03_00](#larcore-v09_03_00)
    -   [larpandoracontent v03_26_00](#larpandoracontent-v03_26_00)
    -   [larsoftobj v09_10_02](#larsoftobj-v09_10_02)
    -   [lardataobj v09_03_02](#lardataobj-v09_03_02)
    -   [lardataalg v09_06_02](#lardataalg-v09_06_02)
    -   [larcorealg v09_03_00](#larcorealg-v09_03_00)
    -   [larcoreobj v09_03_00](#larcoreobj-v09_03_00)
    -   [webevd v09_06_02](#webevd-v09_06_02)
    -   [larbatch v01_56_02](#larbatch-v01_56_02)
    -   [larutils v1_28_02](#larutils-v1_28_02)

[list of LArSoft releases](LArSoft_release_list)
Download instructions for [larsoft v09_33_00](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v09_33_00/larsoft-v09_33_00.html)
Download instructions for [just larsoftobj v09_10_02](http://scisoft.fnal.gov/scisoft/bundles/larsoftobj/v09_10_02/larsoftobj-v09_10_02.html)

Purpose
--------------------

-   changes in develop
-   approved PRs

New features
------------------------------

-   larsim PR 75
    -   this is a coupled pull request with a corresponding nug4 pull request that removes the old self-supported physics list factory in favor of the official G4 g4alt factory.
    -   requires nug4 v1_11_00
-   larg4 PR 29
    -   use nug4 v1_11_00
    -   provided to allow CI testing

Bug fixes
------------------------

-   larsim PR 71
    -   Cleanups to Boost tests.
    -   As part of [\#26092](/redmine/issues/26092 "Necessary Maintenance: Update Boost unit-test usage (Assigned)"). No breaking changes.

Updated dependencies
----------------------------------------------

-   nug4 v1_11_00
    -   [https://github.com/NuSoftHEP/nug4/pull/2](https://github.com/NuSoftHEP/nug4/pull/2)
    -   remove old physics list and physics constructor factories in favor of official G4 g4alt physics list factory. This eliminates some technical debt in favor of using G4 supported code.
-   geant4reweight v01_08_05
-   pygccxml v2_1_0c
    -   resolve problem when importing pygccxml

Change List
============================

larsoft v09_33_00
------------------------------------------

-   2021-10-13 Lynn Garren : larsoft v09_33_00 for larsoft v09_33_00
-   2021-10-13 Lynn Garren : larsoft v09_33_00 for larsoft v09_33_00
-   2021-10-13 Lynn Garren : pygccxml v2_1_0c and product versions
-   2021-10-07 Lynn Garren : forgot nusystematics

lareventdisplay v09_02_03
----------------------------------------------------------

-   2021-10-13 Lynn Garren : lareventdisplay v09_02_03 for larsoft v09_33_00
-   2021-10-13 Lynn Garren : lareventdisplay v09_02_03 for larsoft v09_33_00

larexamples v09_02_03
--------------------------------------------------

-   2021-10-13 Lynn Garren : larexamples v09_02_03 for larsoft v09_33_00
-   2021-10-13 Lynn Garren : larexamples v09_02_03 for larsoft v09_33_00

larpandora v09_09_03
------------------------------------------------

-   2021-10-13 Lynn Garren : larpandora v09_09_03 for larsoft v09_33_00
-   2021-10-13 Lynn Garren : larpandora v09_09_03 for larsoft v09_33_00

larsimrad v09_03_02
----------------------------------------------

-   2021-10-13 Lynn Garren : larsimrad v09_03_02 for larsoft v09_33_00
-   2021-10-13 Lynn Garren : larsimrad v09_03_02 for larsoft v09_33_00

larrecodnn v09_09_03
------------------------------------------------

-   2021-10-13 Lynn Garren : larrecodnn v09_09_03 for larsoft v09_33_00
-   2021-10-13 Lynn Garren : larrecodnn v09_09_03 for larsoft v09_33_00

larwirecell v09_04_02
--------------------------------------------------

larana v09_03_03
----------------------------------------

-   2021-10-13 Lynn Garren : larana v09_03_03 for larsoft v09_33_00
-   2021-10-13 Lynn Garren : larana v09_03_03 for larsoft v09_33_00

larreco v09_07_03
------------------------------------------

-   2021-10-13 Lynn Garren : larreco v09_07_03 for larsoft v09_33_00
-   2021-10-13 Lynn Garren : larreco v09_07_03 for larsoft v09_33_00

larsim v09_17_00
----------------------------------------

-   2021-10-13 Lynn Garren : larsim v09_17_00 for larsoft v09_33_00
-   2021-10-13 Lynn Garren : larsim v09_17_00 for larsoft v09_33_00
-   2021-10-13 Lynn Garren : Merge branch ‘feature/rhatcher_g4alt’ into release/v09_33_00
-   2021-10-13 Lynn Garren : Merge pull request \#71 from knoepfel/feature/knoepfel_boost_test_cleanups
-   2021-10-08 Robert Hatcher : link to nug4_AdditionalG4Physics so legacy g4 can use pythia8 decayers
-   2021-10-08 Robert Hatcher : register physics list with official G4 g4alt factory
-   2021-10-07 Robert Hatcher : Merge branch ‘LArSoft:develop’ into develop
-   2021-09-07 Kyle Knoepfel : Cleanups to Boost tests.
-   2021-07-21 Robert Hatcher : set GeneratorList and Tune

larg4 v09_05_03
--------------------------------------

-   2021-10-13 Lynn Garren : larg4 v09_05_03 for larsoft v09_33_00
-   2021-10-13 Lynn Garren : larg4 v09_05_03 for larsoft v09_33_00
-   2021-10-12 Lynn Garren : use nug4 v1_11_00

larevt v09_03_02
----------------------------------------

lardata v09_03_02
------------------------------------------

larcore v09_03_00
------------------------------------------

larpandoracontent v03_26_00
--------------------------------------------------------------

larsoftobj v09_10_02
------------------------------------------------

lardataobj v09_03_02
------------------------------------------------

lardataalg v09_06_02
------------------------------------------------

larcorealg v09_03_00
------------------------------------------------

larcoreobj v09_03_00
------------------------------------------------

webevd v09_06_02
----------------------------------------

larbatch v01_56_02
--------------------------------------------

larutils v1_28_02
------------------------------------------
