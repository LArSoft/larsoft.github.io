LArSoft v08\_01\_00\_01 Release Notes(#LArSoft-v08_01_00_01-Release-Notes)
=============================================================================

-   **Table of contents**
-   [LArSoft v08\_01\_00\_01 Release Notes](#LArSoft-v08_01_00_01-Release-Notes)
    -   [Purpose](#Purpose)
    -   [New features](#New-features)
    -   [Bug fixes](#Bug-fixes)
    -   [Updated dependencies](#Updated-dependencies)
-   [Change List](#Change-List)
    -   [larsoft v08\_01\_00\_01](#larsoft-v08_01_00_01)
    -   [lareventdisplay v08\_00\_01\_01](#lareventdisplay-v08_00_01_01)
    -   [larexamples v08\_00\_01\_01](#larexamples-v08_00_01_01)
    -   [larg4 v08\_00\_01\_01](#larg4-v08_00_01_01)
    -   [larpandora v08\_01\_00\_01](#larpandora-v08_01_00_01)
    -   [larwirecell v08\_00\_01\_01](#larwirecell-v08_00_01_01)
    -   [larana v08\_00\_01\_01](#larana-v08_00_01_01)
    -   [larreco v08\_01\_00\_01](#larreco-v08_01_00_01)
    -   [larsim v08\_00\_01\_01](#larsim-v08_00_01_01)
    -   [larevt v08\_00\_01\_01](#larevt-v08_00_01_01)
    -   [lardata v08\_00\_01\_01](#lardata-v08_00_01_01)
    -   [larcore v08\_00\_00](#larcore-v08_00_00)
    -   [larpandoracontent v03\_14\_03](#larpandoracontent-v03_14_03)
    -   [larsoftobj v08\_01\_00](#larsoftobj-v08_01_00)
    -   [lardataobj v08\_00\_00](#lardataobj-v08_00_00)
    -   [lardataalg v08\_01\_00](#lardataalg-v08_01_00)
    -   [larcorealg v08\_00\_00](#larcorealg-v08_00_00)
    -   [larcoreobj v08\_00\_00](#larcoreobj-v08_00_00)
    -   [larbatch v01\_47\_02](#larbatch-v01_47_02)
    -   [larutils v1\_23\_08](#larutils-v1_23_08)

[list of LArSoft releases](LArSoft_release_list)\
Download instructions for [larsoft v08\_01\_00\_01](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v08_01_00_01/larsoft-v08_01_00_01.html)\
Download instructions for [just larsoftobj v08\_01\_00](http://scisoft.fnal.gov/scisoft/bundles/larsoftobj/v08_01_00/larsoftobj-v08_01_00.html)

Purpose(#Purpose)
--------------------

This is a first official test release of LArSoft with GENIE v3.

New features(#New-features)
------------------------------

Bug fixes(#Bug-fixes)
------------------------

Updated dependencies(#Updated-dependencies)
----------------------------------------------

-   nutools v2\_27\_00
    -   This version of nutools may be built against GENIE v2 or v3.

Change List(#Change-List)
============================

larsoft v08\_01\_00\_01(#larsoft-v08_01_00_01)
-------------------------------------------------

-   2018-12-18 Lynn Garren : product veresions
-   2018-12-18 Lynn Garren : for larsoft v08\_01\_00\_01
-   2018-12-18 Lynn Garren : headers have changed names again
-   2018-12-18 Lynn Garren : Merge branch ‘master’ into v08\_01\_00\_branch
-   2018-12-18 Lynn Garren : Merge branch ‘v07\_06\_01\_branch’ into v08\_01\_00\_branch
-   2018-09-20 Lynn Garren : larsoft v07\_06\_01\_01 for larsoft v07\_06\_01\_01\_br
-   2018-09-20 Lynn Garren : product versions
-   2018-09-20 Lynn Garren : deal with NeutronOscMode to NNBarOscMode changes
-   2018-09-19 Lynn Garren : genie v3 migration scripts

lareventdisplay v08\_00\_01\_01(#lareventdisplay-v08_00_01_01)
-----------------------------------------------------------------

-   2018-12-18 Lynn Garren : for larsoft v08\_01\_00\_01

larexamples v08\_00\_01\_01(#larexamples-v08_00_01_01)
---------------------------------------------------------

-   2018-12-18 Lynn Garren : for larsoft v08\_01\_00\_01

larg4 v08\_00\_01\_01(#larg4-v08_00_01_01)
---------------------------------------------

-   2018-12-18 Lynn Garren : for larsoft v08\_01\_00\_01

larpandora v08\_01\_00\_01(#larpandora-v08_01_00_01)
-------------------------------------------------------

-   2018-12-18 Lynn Garren : for larsoft v08\_01\_00\_01

larwirecell v08\_00\_01\_01(#larwirecell-v08_00_01_01)
---------------------------------------------------------

-   2018-12-18 Lynn Garren : for larsoft v08\_01\_00\_01

larana v08\_00\_01\_01(#larana-v08_00_01_01)
-----------------------------------------------

-   2018-12-18 Lynn Garren : for larsoft v08\_01\_00\_01

larreco v08\_01\_00\_01(#larreco-v08_01_00_01)
-------------------------------------------------

-   2018-12-18 Lynn Garren : for larsoft v08\_01\_00\_01

larsim v08\_00\_01\_01(#larsim-v08_00_01_01)
-----------------------------------------------

-   2018-12-18 Steven Gardiner : for larsoft v08\_01\_00\_01
-   2018-12-20 Steven Gardiner : Add the CheckTune() function to the EventWeight module. This function ensures that the GENIE v3 tune is correctly configured even when running EventWeight independently from the generation step.
-   2018-12-19 Steven Gardiner : Enable full compatibility with either GENIE v2 or v3 by adding tests of the GENIE\_PRE\_R3 preprocessor macro around GENIE headers. Add similar checks in portions of the code that reference the pion or nucleon elastic fate FSI tweak dials (removed in hA2018 for GENIE v3). Fix GENIE v3 library list.
-   2018-12-18 Lynn Garren : attempt to solve a problem
-   2018-12-18 Lynn Garren : Merge branch ‘master’ into v08\_01\_00\_branch
-   2018-12-18 Lynn Garren : Merge branch ‘v07\_06\_01\_branch’ into v08\_01\_00\_branch
-   2018-09-20 Lynn Garren : larsim v07\_03\_01\_01 for larsoft v07\_06\_01\_01\_br
-   2018-09-20 Lynn Garren : NeutronOscMode is now NNBarOscMode
-   2018-09-19 Lynn Garren : using new genie v3 library names
-   2018-09-18 Lynn Garren : remove unnecessary find library commands
-   2018-09-18 Lynn Garren : genie v3 headers

larevt v08\_00\_01\_01(#larevt-v08_00_01_01)
-----------------------------------------------

-   2018-12-18 Lynn Garren : for larsoft v08\_01\_00\_01

lardata v08\_00\_01\_01(#lardata-v08_00_01_01)
-------------------------------------------------

-   2018-12-18 Lynn Garren : for larsoft v08\_01\_00\_01

larcore v08\_00\_00(#larcore-v08_00_00)
------------------------------------------

larpandoracontent v03\_14\_03(#larpandoracontent-v03_14_03)
--------------------------------------------------------------

larsoftobj v08\_01\_00(#larsoftobj-v08_01_00)
------------------------------------------------

lardataobj v08\_00\_00(#lardataobj-v08_00_00)
------------------------------------------------

lardataalg v08\_01\_00(#lardataalg-v08_01_00)
------------------------------------------------

larcorealg v08\_00\_00(#larcorealg-v08_00_00)
------------------------------------------------

larcoreobj v08\_00\_00(#larcoreobj-v08_00_00)
------------------------------------------------

larbatch v01\_47\_02(#larbatch-v01_47_02)
--------------------------------------------

larutils v1\_23\_08(#larutils-v1_23_08)
------------------------------------------
