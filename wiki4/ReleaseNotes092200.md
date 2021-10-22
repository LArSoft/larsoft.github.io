LArSoft v09\_22\_00 Release Notes[¶](#LArSoft-v09_22_00-Release-Notes)
======================================================================

-   **Table of contents**
-   [LArSoft v09\_22\_00 Release Notes](#LArSoft-v09_22_00-Release-Notes)
    -   [Purpose](#Purpose)
    -   [New features](#New-features)
    -   [Bug fixes](#Bug-fixes)
    -   [Updated dependencies](#Updated-dependencies)
-   [Change List](#Change-List)
    -   [larsoft v09\_22\_00](#larsoft-v09_22_00)
    -   [lareventdisplay v09\_01\_07](#lareventdisplay-v09_01_07)
    -   [larexamples v09\_01\_07](#larexamples-v09_01_07)
    -   [larpandora v09\_05\_08](#larpandora-v09_05_08)
    -   [larsimrad v09\_01\_07](#larsimrad-v09_01_07)
    -   [larrecodnn v09\_06\_06](#larrecodnn-v09_06_06)
    -   [larwirecell v09\_02\_04](#larwirecell-v09_02_04)
    -   [larana v09\_02\_03](#larana-v09_02_03)
    -   [larreco v09\_06\_03](#larreco-v09_06_03)
    -   [larsim v09\_13\_00](#larsim-v09_13_00)
    -   [larg4 v09\_03\_04](#larg4-v09_03_04)
    -   [larevt v09\_02\_03](#larevt-v09_02_03)
    -   [lardata v09\_02\_02](#lardata-v09_02_02)
    -   [larcore v09\_02\_01](#larcore-v09_02_01)
    -   [larpandoracontent v03\_22\_09](#larpandoracontent-v03_22_09)
    -   [larsoftobj v09\_05\_02](#larsoftobj-v09_05_02)
    -   [lardataobj v09\_01\_01](#lardataobj-v09_01_01)
    -   [lardataalg v09\_04\_02](#lardataalg-v09_04_02)
    -   [larcorealg v09\_01\_01](#larcorealg-v09_01_01)
    -   [larcoreobj v09\_02\_00](#larcoreobj-v09_02_00)
    -   [webevd v09\_05\_03](#webevd-v09_05_03)
    -   [larbatch v01\_55\_01](#larbatch-v01_55_01)
    -   [larutils v1\_28\_00](#larutils-v1_28_00)

[list of LArSoft releases](LArSoft_release_list)\
Download instructions for [larsoft v09\_22\_00](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v09_22_00/larsoft-v09_22_00.html)\
Download instructions for [just larsoftobj v09\_05\_02](http://scisoft.fnal.gov/scisoft/bundles/larsoftobj/v09_05_02/larsoftobj-v09_05_02.html)


Purpose[¶](#Purpose)
--------------------

-   changes in develop
-   approved PRs


New features[¶](#New-features)
------------------------------

-   larsim PR 67
    -   updates to use marley v1\_2\_0
    -   Eliminate the ugly hacks used to convert FHiCL into MARLEY’s native JSON format. Instead, use a new class derived from fhicl::ParameterSetWalker to manage the conversion. Forego FHiCL validation of the generator settings in favor of letting MARLEY handle that itself. Adjust prodmarley.fcl so that it is experiment-agnostic.


Bug fixes[¶](#Bug-fixes)
------------------------

-   lardataalg PR 22
    -   Method in util::quantities::Quantity made const
    -   Due to an oversight, a few methods were non-const
-   larwirecell PR 10
    -   make “ICARUS” namespace anonymous
    -   The module is for generic purposes, and the “ICARUS” namespace was unintentional.


Updated dependencies[¶](#Updated-dependencies)
----------------------------------------------

-   marley v1\_2\_0
-   nugen v1\_12\_00
-   nusystematics v00\_11\_04


Change List[¶](#Change-List)
============================


larsoft v09\_22\_00[¶](#larsoft-v09_22_00)
------------------------------------------

-   2021-04-14 Lynn Garren : larsoft v09\_22\_00 for larsoft v09\_22\_00
-   2021-04-14 Lynn Garren : product versions


lareventdisplay v09\_01\_07[¶](#lareventdisplay-v09_01_07)
----------------------------------------------------------

-   2021-04-14 Lynn Garren : lareventdisplay v09\_01\_07 for larsoft v09\_22\_00


larexamples v09\_01\_07[¶](#larexamples-v09_01_07)
--------------------------------------------------

-   2021-04-14 Lynn Garren : larexamples v09\_01\_07 for larsoft v09\_22\_00


larpandora v09\_05\_08[¶](#larpandora-v09_05_08)
------------------------------------------------

-   2021-04-14 Lynn Garren : larpandora v09\_05\_08 for larsoft v09\_22\_00


larsimrad v09\_01\_07[¶](#larsimrad-v09_01_07)
----------------------------------------------

-   2021-04-14 Lynn Garren : larsimrad v09\_01\_07 for larsoft v09\_22\_00


larrecodnn v09\_06\_06[¶](#larrecodnn-v09_06_06)
------------------------------------------------

-   2021-04-14 Lynn Garren : larrecodnn v09\_06\_06 for larsoft v09\_22\_00


larwirecell v09\_02\_04[¶](#larwirecell-v09_02_04)
--------------------------------------------------

-   2021-04-14 Lynn Garren : larwirecell v09\_02\_04 for larsoft v09\_22\_00
-   2021-04-14 Lynn Garren : Merge pull request \#10 from PetrilloAtWork/patch-1
-   2021-04-14 Gianluca Petrillo : Turning namespace of geometry module to anonymous
-   2021-04-13 Gianluca Petrillo : Adopted “official” ICARUS namespace spelling


larana v09\_02\_03[¶](#larana-v09_02_03)
----------------------------------------

-   2021-04-14 Lynn Garren : larana v09\_02\_03 for larsoft v09\_22\_00


larreco v09\_06\_03[¶](#larreco-v09_06_03)
------------------------------------------

-   2021-04-14 Lynn Garren : larreco v09\_06\_03 for larsoft v09\_22\_00


larsim v09\_13\_00[¶](#larsim-v09_13_00)
----------------------------------------

-   2021-04-14 Lynn Garren : larsim v09\_13\_00 for larsoft v09\_22\_00
-   2021-04-08 Steven Gardiner : Update the larsim interface to MARLEY for compatbility with v1.2.0. Eliminate the ugly hacks used to convert FHiCL into MARLEY’s native JSON format. Instead, use a new class derived from ParameterSetWalker to manage the conversion. Forego FHiCL validation of the generator settings in favor of letting MARLEY handle that itself. Adjust prodmarley.fcl so that it is experiment-agnostic.


larg4 v09\_03\_04[¶](#larg4-v09_03_04)
--------------------------------------

-   2021-04-14 Lynn Garren : larg4 v09\_03\_04 for larsoft v09\_22\_00


larevt v09\_02\_03[¶](#larevt-v09_02_03)
----------------------------------------

-   2021-04-14 Lynn Garren : larevt v09\_02\_03 for larsoft v09\_22\_00


lardata v09\_02\_02[¶](#lardata-v09_02_02)
------------------------------------------

-   2021-04-14 Lynn Garren : lardata v09\_02\_02 for larsoft v09\_22\_00


larcore v09\_02\_01[¶](#larcore-v09_02_01)
------------------------------------------


larpandoracontent v03\_22\_09[¶](#larpandoracontent-v03_22_09)
--------------------------------------------------------------


larsoftobj v09\_05\_02[¶](#larsoftobj-v09_05_02)
------------------------------------------------

-   2021-04-14 Lynn Garren : larsoftobj v09\_05\_02 for larsoft v09\_22\_00
-   2021-04-14 Lynn Garren : product versions


lardataobj v09\_01\_01[¶](#lardataobj-v09_01_01)
------------------------------------------------


lardataalg v09\_04\_02[¶](#lardataalg-v09_04_02)
------------------------------------------------

-   2021-04-14 Lynn Garren : lardataalg v09\_04\_02 for larsoft v09\_22\_00
-   2021-04-13 Lynn Garren : Merge pull request \#22 from PetrilloAtWork/feature/gp\_quantityConstConv
-   2021-04-12 Gianluca Petrillo : Method in util::quantities::Quantity made const


larcorealg v09\_01\_01[¶](#larcorealg-v09_01_01)
------------------------------------------------


larcoreobj v09\_02\_00[¶](#larcoreobj-v09_02_00)
------------------------------------------------


webevd v09\_05\_03[¶](#webevd-v09_05_03)
----------------------------------------

-   2021-04-14 Lynn Garren : webevd v09\_05\_03 for larsoft v09\_22\_00


larbatch v01\_55\_01[¶](#larbatch-v01_55_01)
--------------------------------------------


larutils v1\_28\_00[¶](#larutils-v1_28_00)
------------------------------------------
