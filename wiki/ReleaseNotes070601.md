LArSoft v07\_06\_01 Release Notes(#LArSoft-v07_06_01-Release-Notes)
======================================================================

-   **Table of contents**
-   [LArSoft v07\_06\_01 Release Notes](#LArSoft-v07_06_01-Release-Notes)
    -   [Purpose](#Purpose)
    -   [New features](#New-features)
    -   [Bug fixes](#Bug-fixes)
    -   [Updated dependencies](#Updated-dependencies)
-   [Change List](#Change-List)
    -   [larsoft v07\_06\_01](#larsoft-v07_06_01)
    -   [lareventdisplay v07\_01\_05](#lareventdisplay-v07_01_05)
    -   [larexamples v07\_00\_08](#larexamples-v07_00_08)
    -   [larg4 v07\_01\_03](#larg4-v07_01_03)
    -   [larpandora v07\_01\_05](#larpandora-v07_01_05)
    -   [larwirecell v07\_01\_02](#larwirecell-v07_01_02)
    -   [larana v07\_02\_01](#larana-v07_02_01)
    -   [larreco v07\_04\_01](#larreco-v07_04_01)
    -   [larsim v07\_03\_01](#larsim-v07_03_01)
    -   [larevt v07\_00\_08](#larevt-v07_00_08)
    -   [lardata v07\_00\_08](#lardata-v07_00_08)
    -   [larcore v07\_00\_02](#larcore-v07_00_02)
    -   [larpandoracontent v03\_14\_01](#larpandoracontent-v03_14_01)
    -   [larsoftobj v07\_03\_01](#larsoftobj-v07_03_01)
    -   [lardataobj v07\_02\_03](#lardataobj-v07_02_03)
    -   [lardataalg v07\_01\_01](#lardataalg-v07_01_01)
    -   [larcorealg v07\_01\_01](#larcorealg-v07_01_01)
    -   [larcoreobj v07\_00\_01](#larcoreobj-v07_00_01)
    -   [larbatch v01\_45\_00](#larbatch-v01_45_00)
    -   [larutils v1\_23\_02](#larutils-v1_23_02)

[list of LArSoft releases](LArSoft_release_list)\
Download instructions for [larsoft v07\_06\_01](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v07_06_01/larsoft-v07_06_01.html)\
Download instructions for [just larsoftobj v07\_03\_01](http://scisoft.fnal.gov/scisoft/bundles/larsoftobj/v07_03_01/larsoftobj-v07_03_01.html)

Purpose(#Purpose)
--------------------

-   changes in develop

New features(#New-features)
------------------------------

-   point-like light source
    -   larsim feature/jsoto\_lightsource\_pointsource
    -   enabled with fhicl parameter PointSource, which is false by default

Bug fixes(#Bug-fixes)
------------------------

Updated dependencies(#Updated-dependencies)
----------------------------------------------

-   artdaq\_core v3\_04\_01

Change List(#Change-List)
============================

larsoft v07\_06\_01(#larsoft-v07_06_01)
------------------------------------------

-   2018-09-17 Lynn Garren : larsoft v07\_06\_01 for larsoft v07\_07\_00
-   2018-09-17 Lynn Garren : product versions

lareventdisplay v07\_01\_05(#lareventdisplay-v07_01_05)
----------------------------------------------------------

-   2018-09-17 Lynn Garren : lareventdisplay v07\_01\_05 for larsoft v07\_07\_00
-   2018-09-13 Thomas Junk : be kinder and gentler with misconfiguration – don’t crash but emit a warning
-   2018-09-13 Thomas Junk : Merge branch ‘develop’ of ssh://cdcvs.fnal.gov/cvs/projects/lareventdisplay into develop
-   2018-09-13 Thomas Junk : add an option to subtract the pedestal from raw::RawDigit data products

larexamples v07\_00\_08(#larexamples-v07_00_08)
--------------------------------------------------

-   2018-09-17 Lynn Garren : larexamples v07\_00\_08 for larsoft v07\_07\_00

larg4 v07\_01\_03(#larg4-v07_01_03)
--------------------------------------

-   2018-09-17 Lynn Garren : larg4 v07\_01\_03 for larsoft v07\_07\_00
-   2018-09-14 Beatriz Tapia Oregui : Fixed an infinite loop and added searching for gdml files.

larpandora v07\_01\_05(#larpandora-v07_01_05)
------------------------------------------------

-   2018-09-17 Lynn Garren : larpandora v07\_01\_05 for larsoft v07\_07\_00

larwirecell v07\_01\_02(#larwirecell-v07_01_02)
--------------------------------------------------

-   2018-09-17 Lynn Garren : larwirecell v07\_01\_02 for larsoft v07\_07\_00

larana v07\_02\_01(#larana-v07_02_01)
----------------------------------------

-   2018-09-17 Lynn Garren : larana v07\_02\_01 for larsoft v07\_07\_00

larreco v07\_04\_01(#larreco-v07_04_01)
------------------------------------------

-   2018-09-17 Lynn Garren : larreco v07\_04\_01 for larsoft v07\_07\_00
-   2018-09-17 Lynn Garren : larreco v07\_04\_01 for larsoft v07\_07\_00

larsim v07\_03\_01(#larsim-v07_03_01)
----------------------------------------

-   2018-09-17 Lynn Garren : larsim v07\_03\_01 for larsoft v07\_07\_00
-   2018-09-17 Lynn Garren : Merge branch ‘feature/jsoto\_lightsource\_pointsource’ into release/v07\_07\_00
-   2018-09-17 Lynn Garren : remove unused variable
-   2018-09-14 Beatriz Tapia Oregui : This is a fix to an infinite loop in GetScintTime and the addition of SimPhotonsLite, which now gets produced as a dataproduct.
-   2018-09-13 Lynn Garren : larsoft v07\_06\_00
-   2018-09-12 Jose Soto : Added a point-like light source option
-   2018-09-12 Jason Stock : Fixing a syntax error. Corrections for new flag in RadioGen.
-   2018-09-12 Jason Stock : Updating a comment in RadioGen.
-   2018-09-11 Jason Stock : Update to name of new fcl flag in RadioGen to make it a bit more clear what it does, and to prevent users from accidentally enabling it for their backgrounds.
-   2018-09-11 Jason Stock : Adding fIsSignal flag and conditional assignment to the LorentzVector Time so that signal radiologicals can be set at T0.

larevt v07\_00\_08(#larevt-v07_00_08)
----------------------------------------

-   2018-09-17 Lynn Garren : larevt v07\_00\_08 for larsoft v07\_07\_00

lardata v07\_00\_08(#lardata-v07_00_08)
------------------------------------------

-   2018-09-17 Lynn Garren : lardata v07\_00\_08 for larsoft v07\_07\_00

larcore v07\_00\_02(#larcore-v07_00_02)
------------------------------------------

larpandoracontent v03\_14\_01(#larpandoracontent-v03_14_01)
--------------------------------------------------------------

larsoftobj v07\_03\_01(#larsoftobj-v07_03_01)
------------------------------------------------

-   2018-09-17 Lynn Garren : larsoftobj v07\_03\_01 for larsoft v07\_07\_00
-   2018-09-17 Lynn Garren : product versions

lardataobj v07\_02\_03(#lardataobj-v07_02_03)
------------------------------------------------

-   2018-09-17 Lynn Garren : lardataobj v07\_02\_03 for larsoft v07\_07\_00
-   2018-09-10 Rory Fitzpatrick : added slice-shower association

lardataalg v07\_01\_01(#lardataalg-v07_01_01)
------------------------------------------------

-   2018-09-17 Lynn Garren : lardataalg v07\_01\_01 for larsoft v07\_07\_00

larcorealg v07\_01\_01(#larcorealg-v07_01_01)
------------------------------------------------

larcoreobj v07\_00\_01(#larcoreobj-v07_00_01)
------------------------------------------------

larbatch v01\_45\_00(#larbatch-v01_45_00)
--------------------------------------------

-   2018-09-17 Lynn Garren : larbatch v01\_45\_00 for larsoft v07\_07\_00
-   2018-09-13 Lynn Garren : larsoft v07\_06\_00
-   2018-09-11 Herbert Greenlee : Add data file type option.

larutils v1\_23\_02(#larutils-v1_23_02)
------------------------------------------

-   2018-09-17 Lynn Garren : larutils v1\_23\_02 for larsoft v07\_07\_00
-   2018-09-14 Thomas Junk : update artdaq\_core line in the manifest from what’s set up during build. Assume same qualifiers, just different version
