LArSoft v09\_17\_02 Release Notes(#LArSoft-v09_17_02-Release-Notes)
======================================================================

-   **Table of contents**
-   [LArSoft v09\_17\_02 Release Notes](#LArSoft-v09_17_02-Release-Notes)
    -   [Purpose](#Purpose)
    -   [New features](#New-features)
    -   [Bug fixes](#Bug-fixes)
    -   [Updated dependencies](#Updated-dependencies)
-   [Change List](#Change-List)
    -   [larsoft v09\_17\_02](#larsoft-v09_17_02)
    -   [lareventdisplay v09\_01\_03](#lareventdisplay-v09_01_03)
    -   [larexamples v09\_01\_03](#larexamples-v09_01_03)
    -   [larpandora v09\_05\_04](#larpandora-v09_05_04)
    -   [larsimrad v09\_01\_03](#larsimrad-v09_01_03)
    -   [larrecodnn v09\_06\_02](#larrecodnn-v09_06_02)
    -   [larwirecell v09\_02\_02](#larwirecell-v09_02_02)
    -   [larana v09\_01\_03](#larana-v09_01_03)
    -   [larreco v09\_05\_03](#larreco-v09_05_03)
    -   [larsim v09\_10\_02](#larsim-v09_10_02)
    -   [larg4 v09\_03\_02](#larg4-v09_03_02)
    -   [larevt v09\_02\_02](#larevt-v09_02_02)
    -   [lardata v09\_02\_01](#lardata-v09_02_01)
    -   [larcore v09\_02\_01](#larcore-v09_02_01)
    -   [larpandoracontent v03\_22\_07](#larpandoracontent-v03_22_07)
    -   [larsoftobj v09\_05\_01](#larsoftobj-v09_05_01)
    -   [lardataobj v09\_01\_01](#lardataobj-v09_01_01)
    -   [lardataalg v09\_04\_01](#lardataalg-v09_04_01)
    -   [larcorealg v09\_01\_01](#larcorealg-v09_01_01)
    -   [larcoreobj v09\_02\_00](#larcoreobj-v09_02_00)
    -   [webevd v09\_05\_01](#webevd-v09_05_01)
    -   [larbatch v01\_54\_01](#larbatch-v01_54_01)
    -   [larutils v1\_27\_04](#larutils-v1_27_04)

[list of LArSoft releases](LArSoft_release_list)\
Download instructions for [larsoft v09\_17\_02](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v09_17_02/larsoft-v09_17_02.html)\
Download instructions for [just larsoftobj v09\_05\_01](http://scisoft.fnal.gov/scisoft/bundles/larsoftobj/v09_05_01/larsoftobj-v09_05_01.html)

Purpose(#Purpose)
--------------------

-   changes in develop
-   approved PRs

New features(#New-features)
------------------------------

-   larcorealg PR 15
    -   Avoid domain errors in computing TPC wire angles.
    -   This solves issue [\#25559](/redmine/issues/25559 "Bug: geo::WireGeo wire angle calculation (Closed)").
-   use nug4 v1\_07\_00
    -   larg4 PR 22 (update ups/product\_deps)
    -   larsim PR 65 (update ups/product\_deps)
    -   lardata PR 14
        -   Added the MagneticField service provider in magfield\_larsoft.fcl
    -   larreco PR 28
        -   Fixed MagneticField service for nug4 v1\_07\_00
        -   Fix MagneticField service in TrackFinder due to modifications of the MagneticField service in the nug4 package (v1\_07\_00)\
            See issue [\#25534](/redmine/issues/25534 "Feature: Merge branch feature/MagneticFieldService in nug4 and make a new release (Closed)")

Bug fixes(#Bug-fixes)
------------------------

-   webevd PR 29
    -   Variety of small fixes allowing SBND and Icarus to work more smoothly.

Updated dependencies(#Updated-dependencies)
----------------------------------------------

-   nug4 v1\_07\_00 per [\#25534](/redmine/issues/25534 "Feature: Merge branch feature/MagneticFieldService in nug4 and make a new release (Closed)")
    -   Re-implemented the MagneticFieldService to be able to override it with a custom service and added the handling on non-uniform Bfields in the Detector Construction. Default behavior should not change.
-   geant4reweight v01\_06\_06

Change List(#Change-List)
============================

larsoft v09\_17\_02(#larsoft-v09_17_02)
------------------------------------------

-   2021-03-03 Lynn Garren : larsoft v09\_17\_02 for larsoft v09\_17\_02
-   2021-03-03 Lynn Garren : product versions

lareventdisplay v09\_01\_03(#lareventdisplay-v09_01_03)
----------------------------------------------------------

-   2021-03-03 Lynn Garren : lareventdisplay v09\_01\_03 for larsoft v09\_17\_02

larexamples v09\_01\_03(#larexamples-v09_01_03)
--------------------------------------------------

-   2021-03-03 Lynn Garren : larexamples v09\_01\_03 for larsoft v09\_17\_02

larpandora v09\_05\_04(#larpandora-v09_05_04)
------------------------------------------------

-   2021-03-03 Lynn Garren : larpandora v09\_05\_04 for larsoft v09\_17\_02

larsimrad v09\_01\_03(#larsimrad-v09_01_03)
----------------------------------------------

-   2021-03-03 Lynn Garren : larsimrad v09\_01\_03 for larsoft v09\_17\_02

larrecodnn v09\_06\_02(#larrecodnn-v09_06_02)
------------------------------------------------

-   2021-03-03 Lynn Garren : larrecodnn v09\_06\_02 for larsoft v09\_17\_02

larwirecell v09\_02\_02(#larwirecell-v09_02_02)
--------------------------------------------------

-   2021-03-03 Lynn Garren : larwirecell v09\_02\_02 for larsoft v09\_17\_02

larana v09\_01\_03(#larana-v09_01_03)
----------------------------------------

-   2021-03-03 Lynn Garren : larana v09\_01\_03 for larsoft v09\_17\_02

larreco v09\_05\_03(#larreco-v09_05_03)
------------------------------------------

-   2021-03-03 Lynn Garren : larreco v09\_05\_03 for larsoft v09\_17\_02
-   2021-02-25 Eldwan Brianne : Fixed MagneticField service for nug4 v1\_07\_00

larsim v09\_10\_02(#larsim-v09_10_02)
----------------------------------------

-   2021-03-03 Lynn Garren : larsim v09\_10\_02 for larsoft v09\_17\_02
-   2021-02-25 Lynn Garren : pickup nug4 from larg4

larg4 v09\_03\_02(#larg4-v09_03_02)
--------------------------------------

-   2021-03-03 Lynn Garren : larg4 v09\_03\_02 for larsoft v09\_17\_02
-   2021-02-25 Lynn Garren : nug4 v1\_07\_00

larevt v09\_02\_02(#larevt-v09_02_02)
----------------------------------------

-   2021-03-03 Lynn Garren : larevt v09\_02\_02 for larsoft v09\_17\_02

lardata v09\_02\_01(#lardata-v09_02_01)
------------------------------------------

-   2021-03-03 Lynn Garren : lardata v09\_02\_01 for larsoft v09\_17\_02
-   2021-02-26 Eldwan Brianne : Added the MagneticField service provider in magfield\_larsoft.fcl

larcore v09\_02\_01(#larcore-v09_02_01)
------------------------------------------

-   2021-03-03 Lynn Garren : larcore v09\_02\_01 for larsoft v09\_17\_02

larpandoracontent v03\_22\_07(#larpandoracontent-v03_22_07)
--------------------------------------------------------------

larsoftobj v09\_05\_01(#larsoftobj-v09_05_01)
------------------------------------------------

-   2021-03-03 Lynn Garren : larsoftobj v09\_05\_01 for larsoft v09\_17\_02
-   2021-03-03 Lynn Garren : product versions

lardataobj v09\_01\_01(#lardataobj-v09_01_01)
------------------------------------------------

-   2021-03-03 Lynn Garren : lardataobj v09\_01\_01 for larsoft v09\_17\_02

lardataalg v09\_04\_01(#lardataalg-v09_04_01)
------------------------------------------------

-   2021-03-03 Lynn Garren : lardataalg v09\_04\_01 for larsoft v09\_17\_02

larcorealg v09\_01\_01(#larcorealg-v09_01_01)
------------------------------------------------

-   2021-03-03 Lynn Garren : larcorealg v09\_01\_01 for larsoft v09\_17\_02
-   2021-03-02 Lynn Garren : Merge pull request \#15 from PetrilloAtWork/feature/gp\_issue25559
-   2021-02-25 Gianluca Petrillo : Avoid domain errors in computing TPC wire angles.

larcoreobj v09\_02\_00(#larcoreobj-v09_02_00)
------------------------------------------------

webevd v09\_05\_01(#webevd-v09_05_01)
----------------------------------------

-   2021-03-03 Lynn Garren : webevd v09\_05\_01 for larsoft v09\_17\_02
-   2021-03-02 Lynn Garren : Merge pull request \#29 from cjbackhouse/feature/sbn
-   2021-02-26 Christopher Backhouse : More principled implementation of U/V and V/U views
-   2021-02-26 Christopher Backhouse : Update to correct service fcls
-   2021-02-26 Christopher Backhouse : Sort out some confusions with the YUV view combo
-   2021-02-26 Christopher Backhouse : fcl for Icarus
-   2021-02-25 Christopher Backhouse : Don’t show MCTruth for cosmic rays, which can be extremely lengthy.
-   2021-02-25 Christopher Backhouse : Fix formatting, including British spellings, in color code.
-   2021-02-25 Christopher Backhouse : Fix algorithm that produced a huge amount of GC activity when there were many trajectories/trajectory points.
-   2021-02-25 Christopher Backhouse : fcl file with SBND geometry

larbatch v01\_54\_01(#larbatch-v01_54_01)
--------------------------------------------

larutils v1\_27\_04(#larutils-v1_27_04)
------------------------------------------
