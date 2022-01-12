LArSoft v07\_05\_00 Release Notes
======================================================================

-   **Table of contents**
-   [LArSoft v07\_05\_00 Release Notes](#LArSoft-v07_05_00-Release-Notes)
    -   [Purpose](#Purpose)
    -   [New features](#New-features)
    -   [Bug fixes](#Bug-fixes)
    -   [Updated dependencies](#Updated-dependencies)
-   [Change List](#Change-List)
    -   [larsoft v07\_05\_00](#larsoft-v07_05_00)
    -   [lareventdisplay v07\_01\_03](#lareventdisplay-v07_01_03)
    -   [larexamples v07\_00\_06](#larexamples-v07_00_06)
    -   [larg4 v07\_01\_01](#larg4-v07_01_01)
    -   [larpandora v07\_01\_03](#larpandora-v07_01_03)
    -   [larwirecell v07\_01\_00](#larwirecell-v07_01_00)
    -   [larana v07\_01\_01](#larana-v07_01_01)
    -   [larreco v07\_03\_02](#larreco-v07_03_02)
    -   [larsim v07\_02\_02](#larsim-v07_02_02)
    -   [larevt v07\_00\_06](#larevt-v07_00_06)
    -   [lardata v07\_00\_06](#lardata-v07_00_06)
    -   [larcore v07\_00\_02](#larcore-v07_00_02)
    -   [larpandoracontent v03\_14\_01](#larpandoracontent-v03_14_01)
    -   [larsoftobj v07\_02\_02](#larsoftobj-v07_02_02)
    -   [lardataobj v07\_02\_02](#lardataobj-v07_02_02)
    -   [lardataalg v07\_00\_02](#lardataalg-v07_00_02)
    -   [larcorealg v07\_01\_01](#larcorealg-v07_01_01)
    -   [larcoreobj v07\_00\_01](#larcoreobj-v07_00_01)
    -   [larbatch v01\_44\_01](#larbatch-v01_44_01)
    -   [larutils v1\_23\_01](#larutils-v1_23_01)

[list of LArSoft releases](LArSoft_release_list)
Download instructions for [larsoft v07\_05\_00](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v07_05_00/larsoft-v07_05_00.html)
Download instructions for [just larsoftobj v07\_02\_02](http://scisoft.fnal.gov/scisoft/bundles/larsoftobj/v07_02_02/larsoftobj-v07_02_02.html)

Purpose
--------------------

-   changes in develop
-   approved feature branches

New features
------------------------------

-   wirecell improvements
    -   wirecell 0.8.0
    -   larwirecell feature/bviren\_wclsdev
    -   requires jsonnet 0.11.2
-   ifdhc v2\_3\_6
    -   error collecting improvements

Bug fixes
------------------------

-   GausHitFinder was taking more memory than necessary
    -   larreco feature/gp\_DontStoreGausTF1
    -   expect small changes with no physics meaning

Updated dependencies
----------------------------------------------

-   wirecell v0\_8\_0
-   ifdhc v2\_3\_6
-   nutools v2\_24\_04
-   ifdh\_art v2\_06\_07

Change List
============================

larsoft v07\_05\_00
------------------------------------------

-   2018-09-06 Lynn Garren : wirecell and jsonnet
-   2018-09-05 Lynn Garren : larsoft v07\_05\_00 for larsoft v07\_05\_00
-   2018-09-05 Lynn Garren : product versions
-   2018-09-05 Lynn Garren : nutools and ifdhc
-   2018-08-29 Lynn Garren : e17

lareventdisplay v07\_01\_03
----------------------------------------------------------

-   2018-09-05 Lynn Garren : lareventdisplay v07\_01\_03 for larsoft v07\_05\_00

larexamples v07\_00\_06
--------------------------------------------------

-   2018-09-05 Lynn Garren : larexamples v07\_00\_06 for larsoft v07\_05\_00

larg4 v07\_01\_01
--------------------------------------

-   2018-09-05 Lynn Garren : larg4 v07\_01\_01 for larsoft v07\_05\_00
-   2018-09-05 Lynn Garren : find headers

larpandora v07\_01\_03
------------------------------------------------

-   2018-09-05 Lynn Garren : larpandora v07\_01\_03 for larsoft v07\_05\_00

larwirecell v07\_01\_00
--------------------------------------------------

-   2018-09-05 Lynn Garren : larwirecell v07\_01\_00 for larsoft v07\_05\_00
-   2018-09-05 Lynn Garren : sort out product\_deps
-   2018-09-05 Brett Viren : Remove compiler warning, fix input tag usage
-   2018-09-05 Brett Viren : Merge with develop
-   2018-08-31 Brett Viren : Merge branch ‘bviren\_wclsdev’ into feature/bviren\_wclsdev
-   2018-08-31 Brett Viren : Fix hard coded instance/label in SimDepoSource to be configurable.
-   2018-08-28 Brett Viren : Move to wire-cell-cfg
-   2018-08-27 Brett Viren : Initial ‘full-chain’ config. This works mechanically but hasn’t been validated for content.
-   2018-08-24 Brett Viren : BlipMaker gives depo times matching MB/LS assumptions.

larana v07\_01\_01
----------------------------------------

-   2018-09-05 Lynn Garren : larana v07\_01\_01 for larsoft v07\_05\_00

larreco v07\_03\_02
------------------------------------------

-   2018-09-05 Lynn Garren : larreco v07\_03\_02 for larsoft v07\_05\_00
-   2018-09-05 Lynn Garren : larreco v07\_03\_02 for larsoft v07\_05\_00
-   2018-09-05 Gianluca Petrillo : PeakFitterGaussian: use provided range rather than fitting function one.
-   2018-09-05 Gianluca Petrillo : Coding cosmetic changes.
-   2018-09-05 Gianluca Petrillo : Using a fit function cache for hit shape fitting.
-   2018-08-31 baller : bug fixes
-   2018-08-30 baller : Fix bug in ID check.

larsim v07\_02\_02
----------------------------------------

-   2018-09-05 Lynn Garren : larsim v07\_02\_02 for larsoft v07\_05\_00

larevt v07\_00\_06
----------------------------------------

-   2018-09-05 Lynn Garren : larevt v07\_00\_06 for larsoft v07\_05\_00

lardata v07\_00\_06
------------------------------------------

-   2018-09-05 Lynn Garren : lardata v07\_00\_06 for larsoft v07\_05\_00

larcore v07\_00\_02
------------------------------------------

larpandoracontent v03\_14\_01
--------------------------------------------------------------

larsoftobj v07\_02\_02
------------------------------------------------

-   2018-09-05 Lynn Garren : larsoftobj v07\_02\_02 for larsoft v07\_05\_00
-   2018-09-05 Lynn Garren : product versions
-   2018-08-29 Lynn Garren : e17

lardataobj v07\_02\_02
------------------------------------------------

-   2018-09-05 Lynn Garren : lardataobj v07\_02\_02 for larsoft v07\_05\_00
-   2018-09-04 Tingjun Yang : Add slice-cluster association.

lardataalg v07\_00\_02
------------------------------------------------

larcorealg v07\_01\_01
------------------------------------------------

larcoreobj v07\_00\_01
------------------------------------------------

larbatch v01\_44\_01
--------------------------------------------

-   2018-09-05 Lynn Garren : larbatch v01\_44\_01 for larsoft v07\_05\_00
-   2018-08-31 Herbert Greenlee : Optimize single run selection.
-   2018-08-31 Herbert Greenlee : Merge branch ‘develop’ of ssh://cdcvs.fnal.gov/cvs/projects/larbatch into develop
-   2018-08-31 Herbert Greenlee : Handle use of multiple fcls with initial generator stage for histogram files.

larutils v1\_23\_01
------------------------------------------

-   2018-09-05 Lynn Garren : larutils v1\_23\_01 for larsoft v07\_05\_00
-   2018-08-31 Tingjun Yang : Fix manifest name.
-   2018-08-31 Tingjun Yang : updates.
