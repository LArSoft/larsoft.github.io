LArSoft v08\_32\_01 Release Notes
======================================================================

-   **Table of contents**
-   [LArSoft v08\_32\_01 Release Notes](#LArSoft-v08_32_01-Release-Notes)
    -   [Purpose](#Purpose)
    -   [New features](#New-features)
    -   [Bug fixes](#Bug-fixes)
    -   [Updated dependencies](#Updated-dependencies)
-   [Change List](#Change-List)
    -   [larsoft v08\_32\_01](#larsoft-v08_32_01)
    -   [lareventdisplay v08\_08\_16](#lareventdisplay-v08_08_16)
    -   [larexamples v08\_02\_22](#larexamples-v08_02_22)
    -   [larg4 v08\_04\_01](#larg4-v08_04_01)
    -   [larpandora v08\_07\_20](#larpandora-v08_07_20)
    -   [larwirecell v08\_06\_00](#larwirecell-v08_06_00)
    -   [larana v08\_10\_16](#larana-v08_10_16)
    -   [larreco v08\_19\_01](#larreco-v08_19_01)
    -   [larsim v08\_13\_03](#larsim-v08_13_03)
    -   [larevt v08\_06\_11](#larevt-v08_06_11)
    -   [lardata v08\_08\_00](#lardata-v08_08_00)
    -   [larcore v08\_05\_02](#larcore-v08_05_02)
    -   [larpandoracontent v03\_15\_07](#larpandoracontent-v03_15_07)
    -   [larsoftobj v08\_18\_01](#larsoftobj-v08_18_01)
    -   [lardataobj v08\_05\_01](#lardataobj-v08_05_01)
    -   [lardataalg v08\_08\_07](#lardataalg-v08_08_07)
    -   [larcorealg v08\_14\_04](#larcorealg-v08_14_04)
    -   [larcoreobj v08\_05\_05](#larcoreobj-v08_05_05)
    -   [larbatch v01\_51\_08](#larbatch-v01_51_08)
    -   [larutils v1\_24\_04](#larutils-v1_24_04)

[list of LArSoft releases](LArSoft_release_list)
Download instructions for [larsoft v08\_32\_01](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v08_32_01/larsoft-v08_32_01.html)
Download instructions for [just larsoftobj v08\_18\_01](http://scisoft.fnal.gov/scisoft/bundles/larsoftobj/v08_18_01/larsoftobj-v08_18_01.html)

Purpose
--------------------

-   changes in develop
-   approved feature branches

New features
------------------------------

-   larpandoracontent and larpandora feature/larpandoracontent\_v03\_15\_07
    -   An option persisting the Pandora test beam interaction vertex, in a separate collection, for ProtoDUNE has been included. By default this option is off though and so no output data products should change size in the ci tests.
    -   An update has been made to the algorithm allowing a user to cheat the test beam particle ID in ProtoDUNE (not used by default).
    -   A fix for an unchecked return type error was made.
    -   An additional variable has been added to the output root tree for the algorithm used for internal validation of the reconstructed test beam particle hierarchy.

Bug fixes
------------------------

Updated dependencies
----------------------------------------------

Change List
============================

larsoft v08\_32\_01
------------------------------------------

-   2019-10-08 Lynn Garren : larsoft v08\_32\_01 for larsoft v08\_32\_01
-   2019-10-08 Lynn Garren : update versions
-   2019-10-08 Lynn Garren : s92

lareventdisplay v08\_08\_16
----------------------------------------------------------

-   2019-10-08 Lynn Garren : lareventdisplay v08\_08\_16 for larsoft v08\_32\_01

larexamples v08\_02\_22
--------------------------------------------------

-   2019-10-08 Lynn Garren : larexamples v08\_02\_22 for larsoft v08\_32\_01

larg4 v08\_04\_01
--------------------------------------

larpandora v08\_07\_20
------------------------------------------------

-   2019-10-08 Lynn Garren : larpandora v08\_07\_20 for larsoft v08\_32\_01
-   2019-10-02 Steven Green : Adding configurable test beam interaction vertices instance label and improved memory management.
-   2019-09-30 Steven Green : Configurable option for writing out the test beam interaction vertices.
-   2019-09-30 Steven Green : Registering test beam interaction vertices output product.
-   2019-09-27 Steven Green : Writing out test beam interaction vertices.

larwirecell v08\_06\_00
--------------------------------------------------

larana v08\_10\_16
----------------------------------------

-   2019-10-08 Lynn Garren : larana v08\_10\_16 for larsoft v08\_32\_01

larreco v08\_19\_01
------------------------------------------

-   2019-10-08 Lynn Garren : larreco v08\_19\_01 for larsoft v08\_32\_01
-   2019-10-03 Lynn Garren : larsoft v08\_32\_00
-   2019-10-03 Christopher Backhouse : Revert “Initial commit of QuadVtx vertexing algorithm”
-   2019-10-03 Christopher Backhouse : Initial commit of QuadVtx vertexing algorithm [https://indico.fnal.gov/event/21520/contribution/0](https://indico.fnal.gov/event/21520/contribution/0)

larsim v08\_13\_03
----------------------------------------

-   2019-10-08 Lynn Garren : larsim v08\_13\_03 for larsoft v08\_32\_01
-   2019-10-04 Robert Hatcher : cleanup NeutronOsc and NucleonDecay fcl scripts ; add (commented out) examples how to print generated events and/or switch between uboone and dune
-   2019-10-04 Robert Hatcher : update NeutronOsc and NucleonDecay modules so that actually work under GENIE v3

larevt v08\_06\_11
----------------------------------------

lardata v08\_08\_00
------------------------------------------

larcore v08\_05\_02
------------------------------------------

larpandoracontent v03\_15\_07
--------------------------------------------------------------

-   2019-10-08 Lynn Garren : larpandoracontent v03\_15\_07 for larsoft v08\_32\_01
-   2019-10-04 Steven Green : Merge branch ‘updates’
-   2019-10-04 Steven Green : Update version and change log.
-   2019-10-04 Steven Green : Merge branch ‘feature/TestBeamVertexPersistence’
-   2019-09-30 Steven Green : Cosmetic improvements.
-   2019-09-27 Steven Green : Modification to reco vertex in test beam event validation algorithms.
-   2019-09-27 Steven Green : Account for test beam parent vertex having multiple vertices in LArPfoHelper.
-   2019-09-27 Steven Green : Retain both the start and interaction vertex for parent test beam particles.
-   2019-09-25 Steven Green : Merge branch ‘feature/CoverityReturnTypeCheck’
-   2019-09-16 Steven Green : Merge branch ‘feature/PfoTestBeamHierarchy’
-   2019-08-09 StevenGreen1 : Check return type of GetGlobalFitDirection function in shower asymmetry feature tool.
-   2019-09-16 Steven Green : Merge branch ‘feature/CheatingBeamParticleId’
-   2019-09-11 Steven Green : Add pfo variable is test beam hiererachy to tree.
-   2019-09-03 StevenGreen1 : Cosmetic change.
-   2019-08-23 Steven Green : Remove references to neutrinos in cheated test beam particle id tool.

larsoftobj v08\_18\_01
------------------------------------------------

lardataobj v08\_05\_01
------------------------------------------------

lardataalg v08\_08\_07
------------------------------------------------

larcorealg v08\_14\_04
------------------------------------------------

larcoreobj v08\_05\_05
------------------------------------------------

larbatch v01\_51\_08
--------------------------------------------

larutils v1\_24\_04
------------------------------------------
