LArSoft v08\_01\_00 Release Notes(#LArSoft-v08_01_00-Release-Notes)
======================================================================

-   **Table of contents**
-   [LArSoft v08\_01\_00 Release Notes](#LArSoft-v08_01_00-Release-Notes)
    -   [Purpose](#Purpose)
    -   [New features](#New-features)
    -   [Bug fixes](#Bug-fixes)
    -   [Updated dependencies](#Updated-dependencies)
-   [Change List](#Change-List)
    -   [larsoft v08\_01\_00](#larsoft-v08_01_00)
    -   [lareventdisplay v08\_00\_01](#lareventdisplay-v08_00_01)
    -   [larexamples v08\_00\_01](#larexamples-v08_00_01)
    -   [larg4 v08\_00\_01](#larg4-v08_00_01)
    -   [larpandora v08\_01\_00](#larpandora-v08_01_00)
    -   [larwirecell v08\_00\_01](#larwirecell-v08_00_01)
    -   [larana v08\_00\_01](#larana-v08_00_01)
    -   [larreco v08\_01\_00](#larreco-v08_01_00)
    -   [larsim v08\_00\_01](#larsim-v08_00_01)
    -   [larevt v08\_00\_01](#larevt-v08_00_01)
    -   [lardata v08\_00\_01](#lardata-v08_00_01)
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
Download instructions for [larsoft v08\_01\_00](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v08_01_00/larsoft-v08_01_00.html)\
Download instructions for [just larsoftobj v08\_01\_00](http://scisoft.fnal.gov/scisoft/bundles/larsoftobj/v08_01_00/larsoftobj-v08_01_00.html)

Purpose(#Purpose)
--------------------

New features(#New-features)
------------------------------

-   larpandora feature/sgreen\_showerIdIndex
    -   This change fills shower id index for showers produced by the Pandora shower creation module, which makes it easier to access the showers in downstream modules.
-   update to the detector clocks service to allow for more consistent handling of data and simulation trigger times from Wes
    -   lardata: feature/wketchum\_OverlayG4RefCorrection
    -   lardataalg: feature/wketchum\_OverlayG4RefCorrection
    -   [https://indico.fnal.gov/event/19364/contribution/2/material/slides/0.pdf](https://indico.fnal.gov/event/19364/contribution/2/material/slides/0.pdf)

Bug fixes(#Bug-fixes)
------------------------

-   larreco feature/bb\_TCFix - resolve [\#21556](/redmine/issues/21556 "Bug: Segfault in DUNE far detector reconstruction (New)")

Updated dependencies(#Updated-dependencies)
----------------------------------------------

-   nutools v2\_26\_02
    -   “NuRandomService::createEngine” now returns a non-const reference to the created random engine instead of the random-number seed. This should allow all uses of getEngine to be removed.
    -   So far as we can tell, no experiment code uses the return value of createEngine.
-   systematicstools v00\_02\_00
-   nusystematics v00\_02\_02

Change List(#Change-List)
============================

larsoft v08\_01\_00(#larsoft-v08_01_00)
------------------------------------------

-   2018-12-18 Lynn Garren : larsoft v08\_01\_00 for larsoft v08\_01\_00
-   2018-12-18 Lynn Garren : product versions

lareventdisplay v08\_00\_01(#lareventdisplay-v08_00_01)
----------------------------------------------------------

-   2018-12-18 Lynn Garren : lareventdisplay v08\_00\_01 for larsoft v08\_01\_00

larexamples v08\_00\_01(#larexamples-v08_00_01)
--------------------------------------------------

-   2018-12-18 Lynn Garren : larexamples v08\_00\_01 for larsoft v08\_01\_00

larg4 v08\_00\_01(#larg4-v08_00_01)
--------------------------------------

-   2018-12-18 Lynn Garren : larg4 v08\_00\_01 for larsoft v08\_01\_00

larpandora v08\_01\_00(#larpandora-v08_01_00)
------------------------------------------------

-   2018-12-18 Lynn Garren : larpandora v08\_01\_00 for larsoft v08\_01\_00
-   2018-12-14 Steven Green : Adding the shower id index Pandora showers

larwirecell v08\_00\_01(#larwirecell-v08_00_01)
--------------------------------------------------

-   2018-12-18 Lynn Garren : larwirecell v08\_00\_01 for larsoft v08\_01\_00

larana v08\_00\_01(#larana-v08_00_01)
----------------------------------------

-   2018-12-18 Lynn Garren : larana v08\_00\_01 for larsoft v08\_01\_00

larreco v08\_01\_00(#larreco-v08_01_00)
------------------------------------------

-   2018-12-18 Lynn Garren : larreco v08\_01\_00 for larsoft v08\_01\_00
-   2018-12-18 Bruce Baller : fix TrajCluster bug

larsim v08\_00\_01(#larsim-v08_00_01)
----------------------------------------

-   2018-12-18 Lynn Garren : larsim v08\_00\_01 for larsoft v08\_01\_00

larevt v08\_00\_01(#larevt-v08_00_01)
----------------------------------------

-   2018-12-18 Lynn Garren : larevt v08\_00\_01 for larsoft v08\_01\_00

lardata v08\_00\_01(#lardata-v08_00_01)
------------------------------------------

-   2018-12-18 Lynn Garren : lardata v08\_00\_01 for larsoft v08\_01\_00
-   2018-12-17 Adi Ashkenazi : Merge branch ‘master’ into feature/wketchum\_OverlayG4RefCorrection updating lardata/feature/wketchum\_OverlayG4RefCorrection with new larsoft version compatible with uboonecode v7\_13\_02
-   2018-11-29 Wesley Ketchum : add in G4RefTime correction option

larcore v08\_00\_00(#larcore-v08_00_00)
------------------------------------------

larpandoracontent v03\_14\_03(#larpandoracontent-v03_14_03)
--------------------------------------------------------------

larsoftobj v08\_01\_00(#larsoftobj-v08_01_00)
------------------------------------------------

-   2018-12-18 Lynn Garren : larsoftobj v08\_01\_00 for larsoft v08\_01\_00
-   2018-12-18 Lynn Garren : product versions

lardataobj v08\_00\_00(#lardataobj-v08_00_00)
------------------------------------------------

lardataalg v08\_01\_00(#lardataalg-v08_01_00)
------------------------------------------------

-   2018-12-18 Lynn Garren : lardataalg v08\_01\_00 for larsoft v08\_01\_00
-   2018-12-17 Adi Ashkenazi : Merge branch ‘master’ into feature/wketchum\_OverlayG4RefCorrection updating feature/wketchum\_OverlayG4RefCorrection with newer larsoft version compatible with uboonecode v7\_13\_02
-   2018-11-29 Wesley Ketchum : add in G4RefTime correction option

larcorealg v08\_00\_00(#larcorealg-v08_00_00)
------------------------------------------------

larcoreobj v08\_00\_00(#larcoreobj-v08_00_00)
------------------------------------------------

larbatch v01\_47\_02(#larbatch-v01_47_02)
--------------------------------------------

larutils v1\_23\_08(#larutils-v1_23_08)
------------------------------------------

-   2018-12-18 Lynn Garren : larutils v1\_23\_08 for larsoft v08\_01\_00
-   2018-12-14 Thomas Junk : only use the /grid/fermiapp setup script on macOS
