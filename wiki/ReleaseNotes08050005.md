LArSoft v08\_05\_00\_05 Release Notes(#LArSoft-v08_05_00_05-Release-Notes)
=============================================================================

-   **Table of contents**
-   [LArSoft v08\_05\_00\_05 Release Notes](#LArSoft-v08_05_00_05-Release-Notes)
    -   [Purpose](#Purpose)
    -   [New features](#New-features)
    -   [Bug fixes](#Bug-fixes)
    -   [Updated dependencies](#Updated-dependencies)
-   [Change List](#Change-List)
    -   [larsoft v08\_05\_00\_05](#larsoft-v08_05_00_05)
    -   [lareventdisplay v08\_02\_00\_04](#lareventdisplay-v08_02_00_04)
    -   [larexamples v08\_01\_00\_04](#larexamples-v08_01_00_04)
    -   [larg4 v08\_01\_00\_04](#larg4-v08_01_00_04)
    -   [larpandora v08\_03\_00\_04](#larpandora-v08_03_00_04)
    -   [larwirecell v08\_02\_00\_05](#larwirecell-v08_02_00_05)
    -   [larana v08\_01\_00\_04](#larana-v08_01_00_04)
    -   [larreco v08\_04\_00\_04](#larreco-v08_04_00_04)
    -   [larsim v08\_02\_00\_04](#larsim-v08_02_00_04)
    -   [larevt v08\_01\_00\_04](#larevt-v08_01_00_04)
    -   [lardata v08\_02\_00\_03](#lardata-v08_02_00_03)
    -   [larcore v08\_01\_00\_02](#larcore-v08_01_00_02)
    -   [larpandoracontent v03\_14\_04](#larpandoracontent-v03_14_04)
    -   [larsoftobj v08\_03\_00\_02](#larsoftobj-v08_03_00_02)
    -   [lardataobj v08\_01\_00\_02](#lardataobj-v08_01_00_02)
    -   [lardataalg v08\_03\_00\_02](#lardataalg-v08_03_00_02)
    -   [larcorealg v08\_01\_00\_02](#larcorealg-v08_01_00_02)
    -   [larcoreobj v08\_01\_00\_02](#larcoreobj-v08_01_00_02)

[list of LArSoft releases](LArSoft_release_list)\
Download instructions for [larsoft v08\_05\_00\_05](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v08_05_00_05/larsoft-v08_05_00_05.html)\
Download instructions for [just larsoftobj v08\_03\_00\_02](http://scisoft.fnal.gov/scisoft/bundles/larsoftobj/v08_03_00_02/larsoftobj-v08_03_00_02.html)

Purpose(#Purpose)
--------------------

Fixes & GENIE v3.0.4-rc for MicroBooNE MCC9

New features(#New-features)
------------------------------

Bug fixes(#Bug-fixes)
------------------------

Updated dependencies(#Updated-dependencies)
----------------------------------------------

nutools v2\_27\_03\
genie v3\_00\_04\_rc

Change List(#Change-List)
============================

larsoft v08\_05\_00\_05(#larsoft-v08_05_00_05)
-------------------------------------------------

-   2019-03-08 Steven Gardiner : larsoft v08\_05\_00\_05 for larsoft v08\_05\_00\_05
-   2019-03-08 Steven Gardiner : product versions

lareventdisplay v08\_02\_00\_04(#lareventdisplay-v08_02_00_04)
-----------------------------------------------------------------

-   2019-03-07 Steven Gardiner : lareventdisplay v08\_02\_00\_04 for larsoft LARSOFT\_SUITE\_v08\_05\_00\_05

larexamples v08\_01\_00\_04(#larexamples-v08_01_00_04)
---------------------------------------------------------

-   2019-03-07 Steven Gardiner : larexamples v08\_01\_00\_04 for larsoft LARSOFT\_SUITE\_v08\_05\_00\_05

larg4 v08\_01\_00\_04(#larg4-v08_01_00_04)
---------------------------------------------

-   2019-03-07 Steven Gardiner : larg4 v08\_01\_00\_04 for larsoft LARSOFT\_SUITE\_v08\_05\_00\_05

larpandora v08\_03\_00\_04(#larpandora-v08_03_00_04)
-------------------------------------------------------

-   2019-03-07 Steven Gardiner : larpandora v08\_03\_00\_04 for larsoft LARSOFT\_SUITE\_v08\_05\_00\_05

larwirecell v08\_02\_00\_05(#larwirecell-v08_02_00_05)
---------------------------------------------------------

-   2019-03-07 Steven Gardiner : larwirecell v08\_02\_00\_05 for larsoft LARSOFT\_SUITE\_v08\_05\_00\_05

larana v08\_01\_00\_04(#larana-v08_01_00_04)
-----------------------------------------------

-   2019-03-07 Steven Gardiner : larana v08\_01\_00\_04 for larsoft LARSOFT\_SUITE\_v08\_05\_00\_05

larreco v08\_04\_00\_04(#larreco-v08_04_00_04)
-------------------------------------------------

-   2019-03-07 Steven Gardiner : larreco v08\_04\_00\_04 for larsoft LARSOFT\_SUITE\_v08\_05\_00\_05
-   2019-03-02 Steven Gardiner : Merge branch ‘feature/herogers\_SCE\_mcc9\_take2’ into v08\_05\_00\_br
-   2019-03-02 Steven Gardiner : Merge branch ‘feature/cerati\_fix-vtx-fit-bug-v08\_05\_00\_br’ into v08\_05\_00\_br
-   2019-02-28 Hannah Rogers : Correct bug in spatial SCE correction of dx in calorimetry\_module
-   2019-02-22 Giuseppe Cerati : fix bug in accessing daughter pfps

larsim v08\_02\_00\_04(#larsim-v08_02_00_04)
-----------------------------------------------

-   2019-03-07 Steven Gardiner : larsim v08\_02\_00\_04 for larsoft LARSOFT\_SUITE\_v08\_05\_00\_05
-   2018-12-20 Steven Gardiner : Add the CheckTune() function to the EventWeight module. This function ensures that the GENIE v3 tune is correctly configured even when running EventWeight independently from the generation step.
-   2018-12-19 Steven Gardiner : Enable full compatibility with either GENIE v2 or v3 by adding tests of the GENIE\_PRE\_R3 preprocessor macro around GENIE headers. Add similar checks in portions of the code that reference the pion or nucleon elastic fate FSI tweak dials (removed in hA2018 for GENIE v3). Fix GENIE v3 library list.
-   2018-12-18 Lynn Garren : attempt to solve a problem
-   2018-09-20 Lynn Garren : NeutronOscMode is now NNBarOscMode
-   2018-09-19 Lynn Garren : using new genie v3 library names
-   2018-09-18 Lynn Garren : remove unnecessary find library commands
-   2018-09-18 Lynn Garren : genie v3 headers
-   2019-02-27 David Caratelli : removed an old COUT and added exception handling for nearestwire function call from geometry service –DC

larevt v08\_01\_00\_04(#larevt-v08_01_00_04)
-----------------------------------------------

-   2019-03-07 Steven Gardiner : larevt v08\_01\_00\_04 for larsoft LARSOFT\_SUITE\_v08\_05\_00\_05

lardata v08\_02\_00\_03(#lardata-v08_02_00_03)
-------------------------------------------------

-   2019-03-07 Steven Gardiner : lardata v08\_02\_00\_03 for larsoft LARSOFT\_SUITE\_v08\_05\_00\_05

larcore v08\_01\_00\_02(#larcore-v08_01_00_02)
-------------------------------------------------

larpandoracontent v03\_14\_04(#larpandoracontent-v03_14_04)
--------------------------------------------------------------

larsoftobj v08\_03\_00\_02(#larsoftobj-v08_03_00_02)
-------------------------------------------------------

lardataobj v08\_01\_00\_02(#lardataobj-v08_01_00_02)
-------------------------------------------------------

lardataalg v08\_03\_00\_02(#lardataalg-v08_03_00_02)
-------------------------------------------------------

larcorealg v08\_01\_00\_02(#larcorealg-v08_01_00_02)
-------------------------------------------------------

larcoreobj v08\_01\_00\_02(#larcoreobj-v08_01_00_02)
-------------------------------------------------------
