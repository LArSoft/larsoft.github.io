LArSoft v09\_17\_01 Release Notes(#LArSoft-v09_17_01-Release-Notes)
======================================================================

-   **Table of contents**
-   [LArSoft v09\_17\_01 Release Notes](#LArSoft-v09_17_01-Release-Notes)
    -   [Purpose](#Purpose)
    -   [New features](#New-features)
    -   [Bug fixes](#Bug-fixes)
    -   [Updated dependencies](#Updated-dependencies)
-   [Change List](#Change-List)
    -   [larsoft v09\_17\_01](#larsoft-v09_17_01)
    -   [lareventdisplay v09\_01\_02](#lareventdisplay-v09_01_02)
    -   [larexamples v09\_01\_02](#larexamples-v09_01_02)
    -   [larpandora v09\_05\_03](#larpandora-v09_05_03)
    -   [larsimrad v09\_01\_02](#larsimrad-v09_01_02)
    -   [larrecodnn v09\_06\_01](#larrecodnn-v09_06_01)
    -   [larwirecell v09\_02\_01](#larwirecell-v09_02_01)
    -   [larana v09\_01\_02](#larana-v09_01_02)
    -   [larreco v09\_05\_02](#larreco-v09_05_02)
    -   [larsim v09\_10\_01](#larsim-v09_10_01)
    -   [larg4 v09\_03\_01](#larg4-v09_03_01)
    -   [larevt v09\_02\_01](#larevt-v09_02_01)
    -   [lardata v09\_02\_00](#lardata-v09_02_00)
    -   [larcore v09\_02\_00](#larcore-v09_02_00)
    -   [larpandoracontent v03\_22\_07](#larpandoracontent-v03_22_07)
    -   [larsoftobj v09\_05\_00](#larsoftobj-v09_05_00)
    -   [lardataobj v09\_01\_00](#lardataobj-v09_01_00)
    -   [lardataalg v09\_04\_00](#lardataalg-v09_04_00)
    -   [larcorealg v09\_01\_00](#larcorealg-v09_01_00)
    -   [larcoreobj v09\_02\_00](#larcoreobj-v09_02_00)
    -   [webevd v09\_05\_00](#webevd-v09_05_00)
    -   [larbatch v01\_54\_01](#larbatch-v01_54_01)
    -   [larutils v1\_27\_04](#larutils-v1_27_04)

[list of LArSoft releases](LArSoft_release_list)\
Download instructions for [larsoft v09\_17\_01](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v09_17_01/larsoft-v09_17_01.html)\
Download instructions for [just larsoftobj v09\_05\_00](http://scisoft.fnal.gov/scisoft/bundles/larsoftobj/v09_05_00/larsoftobj-v09_05_00.html)

Purpose(#Purpose)
--------------------

-   changes in develop
-   approved PRs

New features(#New-features)
------------------------------

-   larsim PR 63
    -   Add DoFastComponent option to PDFastSimPAR
    -   Add a new fhicl option to turn on and off the Early (singlet) light component as well as the Late (triplet) light component. This is particularly helpful in the context of Xe doping simulation which often has only a late light component. The option has a default value of True for backwards compatibility, making this a non-breaking change.

Bug fixes(#Bug-fixes)
------------------------

Updated dependencies(#Updated-dependencies)
----------------------------------------------

-   libwda v2\_29\_1
    -   In version v2\_29\_0, control over the connection timeout used in the library was introduced via the LIBWDA\_CONNECTTIMEOUT environment variable.
    -   Now you can set a custom timeout value instead of the default 30s if necessary. The debug output has been improved as well.
-   ifdh\_art v2\_11\_05
-   nuevdb v1\_03\_03
-   nugen v1\_11\_03
-   nusystematics v00\_11\_03
-   ppfx v02\_13\_02

Change List(#Change-List)
============================

larsoft v09\_17\_01(#larsoft-v09_17_01)
------------------------------------------

-   2021-02-24 Lynn Garren : larsoft v09\_17\_01 for larsoft v09\_17\_01
-   2021-02-24 Lynn Garren : product versions
-   2021-02-18 Lynn Garren : stan builds with c7, e19, and e20
-   2021-02-18 Lynn Garren : forgot u20 workaround

lareventdisplay v09\_01\_02(#lareventdisplay-v09_01_02)
----------------------------------------------------------

-   2021-02-24 Lynn Garren : lareventdisplay v09\_01\_02 for larsoft v09\_17\_01

larexamples v09\_01\_02(#larexamples-v09_01_02)
--------------------------------------------------

-   2021-02-24 Lynn Garren : larexamples v09\_01\_02 for larsoft v09\_17\_01

larpandora v09\_05\_03(#larpandora-v09_05_03)
------------------------------------------------

-   2021-02-24 Lynn Garren : larpandora v09\_05\_03 for larsoft v09\_17\_01

larsimrad v09\_01\_02(#larsimrad-v09_01_02)
----------------------------------------------

-   2021-02-24 Lynn Garren : larsimrad v09\_01\_02 for larsoft v09\_17\_01

larrecodnn v09\_06\_01(#larrecodnn-v09_06_01)
------------------------------------------------

-   2021-02-24 Lynn Garren : larrecodnn v09\_06\_01 for larsoft v09\_17\_01

larwirecell v09\_02\_01(#larwirecell-v09_02_01)
--------------------------------------------------

-   2021-02-24 Lynn Garren : larwirecell v09\_02\_01 for larsoft v09\_17\_01

larana v09\_01\_02(#larana-v09_01_02)
----------------------------------------

-   2021-02-24 Lynn Garren : larana v09\_01\_02 for larsoft v09\_17\_01

larreco v09\_05\_02(#larreco-v09_05_02)
------------------------------------------

-   2021-02-24 Lynn Garren : larreco v09\_05\_02 for larsoft v09\_17\_01

larsim v09\_10\_01(#larsim-v09_10_01)
----------------------------------------

-   2021-02-24 Lynn Garren : larsim v09\_10\_01 for larsoft v09\_17\_01
-   2021-02-24 Lynn Garren : Merge pull request [\#63](/redmine/issues/63 "Bug: Production Database (Closed)") from aihimmel/develop
-   2021-02-19 Alex Himmel : Add option to disable FastComponent. Helpful for Xe Doping simulation.
-   2021-02-19 Alex Himmel : Remove a stub tool not actually implemented here. Instead, implement Xe doping in dunetpc since it is experiment-specific.

larg4 v09\_03\_01(#larg4-v09_03_01)
--------------------------------------

-   2021-02-24 Lynn Garren : larg4 v09\_03\_01 for larsoft v09\_17\_01

larevt v09\_02\_01(#larevt-v09_02_01)
----------------------------------------

-   2021-02-24 Lynn Garren : larevt v09\_02\_01 for larsoft v09\_17\_01

lardata v09\_02\_00(#lardata-v09_02_00)
------------------------------------------

larcore v09\_02\_00(#larcore-v09_02_00)
------------------------------------------

larpandoracontent v03\_22\_07(#larpandoracontent-v03_22_07)
--------------------------------------------------------------

larsoftobj v09\_05\_00(#larsoftobj-v09_05_00)
------------------------------------------------

lardataobj v09\_01\_00(#lardataobj-v09_01_00)
------------------------------------------------

lardataalg v09\_04\_00(#lardataalg-v09_04_00)
------------------------------------------------

larcorealg v09\_01\_00(#larcorealg-v09_01_00)
------------------------------------------------

larcoreobj v09\_02\_00(#larcoreobj-v09_02_00)
------------------------------------------------

webevd v09\_05\_00(#webevd-v09_05_00)
----------------------------------------

larbatch v01\_54\_01(#larbatch-v01_54_01)
--------------------------------------------

larutils v1\_27\_04(#larutils-v1_27_04)
------------------------------------------
