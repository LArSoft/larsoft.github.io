LArSoft v09\_32\_01 Release Notes
======================================================================

-   **Table of contents**
-   [LArSoft v09\_32\_01 Release Notes](#LArSoft-v09_32_01-Release-Notes)
    -   [Purpose](#Purpose)
    -   [New features](#New-features)
    -   [Bug fixes](#Bug-fixes)
    -   [Updated dependencies](#Updated-dependencies)
-   [Change List](#Change-List)
    -   [larsoft v09\_32\_01](#larsoft-v09_32_01)
    -   [lareventdisplay v09\_02\_02](#lareventdisplay-v09_02_02)
    -   [larexamples v09\_02\_02](#larexamples-v09_02_02)
    -   [larpandora v09\_09\_02](#larpandora-v09_09_02)
    -   [larsimrad v09\_03\_01](#larsimrad-v09_03_01)
    -   [larrecodnn v09\_09\_02](#larrecodnn-v09_09_02)
    -   [larwirecell v09\_04\_02](#larwirecell-v09_04_02)
    -   [larana v09\_03\_02](#larana-v09_03_02)
    -   [larreco v09\_07\_02](#larreco-v09_07_02)
    -   [larsim v09\_16\_01](#larsim-v09_16_01)
    -   [larg4 v09\_05\_02](#larg4-v09_05_02)
    -   [larevt v09\_03\_02](#larevt-v09_03_02)
    -   [lardata v09\_03\_02](#lardata-v09_03_02)
    -   [larcore v09\_03\_00](#larcore-v09_03_00)
    -   [larpandoracontent v03\_26\_00](#larpandoracontent-v03_26_00)
    -   [larsoftobj v09\_10\_02](#larsoftobj-v09_10_02)
    -   [lardataobj v09\_03\_02](#lardataobj-v09_03_02)
    -   [lardataalg v09\_06\_02](#lardataalg-v09_06_02)
    -   [larcorealg v09\_03\_00](#larcorealg-v09_03_00)
    -   [larcoreobj v09\_03\_00](#larcoreobj-v09_03_00)
    -   [webevd v09\_06\_02](#webevd-v09_06_02)
    -   [larbatch v01\_56\_02](#larbatch-v01_56_02)
    -   [larutils v1\_28\_02](#larutils-v1_28_02)

[list of LArSoft releases](LArSoft_release_list)
Download instructions for [larsoft v09\_32\_01](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v09_32_01/larsoft-v09_32_01.html)
Download instructions for [just larsoftobj v09\_10\_02](http://scisoft.fnal.gov/scisoft/bundles/larsoftobj/v09_10_02/larsoftobj-v09_10_02.html)

Purpose
--------------------

-   changes in develop
-   approved PRs

New features
------------------------------

-   larrecodnn PR 23
    -   added TritonAllowedTries fhicl parameter
    -   Added this fhicl parameter to PointIdAlg so user can specify total number of inference attempts before giving up. This is urgently needed by the ProtoDUNE production scaling tests being done now using the GCP inference server.
-   larg4 PR 28
    -   add linkage to new nug4\_additionalG4Physics lib
    -   requires latest nug4 (v1\_10\_00)

Bug fixes
------------------------

Updated dependencies
----------------------------------------------

-   cetbuildtools v8\_18\_04 and v8\_18\_05
-   ifdhc v2\_5\_16
-   ifdh\_art v2\_12\_05
-   nusimdata v1\_24\_05
-   nuevdb v1\_05\_05
-   nug4 v1\_10\_00
-   nugen v1\_14\_05
-   nurandom v1\_07\_06
-   nutools v3\_11\_05
-   geant4reweight v01\_08\_04
-   nusystematics v01\_00\_03

Change List
============================

larsoft v09\_32\_01
------------------------------------------

-   2021-10-07 Lynn Garren : larsoft v09\_32\_01 for larsoft v09\_32\_01
-   2021-10-07 Lynn Garren : larsoft v09\_32\_01 for larsoft v09\_32\_01
-   2021-10-07 Lynn Garren : product versions

lareventdisplay v09\_02\_02
----------------------------------------------------------

-   2021-10-07 Lynn Garren : lareventdisplay v09\_02\_02 for larsoft v09\_32\_01
-   2021-10-07 Lynn Garren : lareventdisplay v09\_02\_02 for larsoft v09\_32\_01

larexamples v09\_02\_02
--------------------------------------------------

-   2021-10-07 Lynn Garren : larexamples v09\_02\_02 for larsoft v09\_32\_01
-   2021-10-07 Lynn Garren : larexamples v09\_02\_02 for larsoft v09\_32\_01

larpandora v09\_09\_02
------------------------------------------------

-   2021-10-07 Lynn Garren : larpandora v09\_09\_02 for larsoft v09\_32\_01
-   2021-10-07 Lynn Garren : larpandora v09\_09\_02 for larsoft v09\_32\_01

larsimrad v09\_03\_01
----------------------------------------------

-   2021-10-07 Lynn Garren : larsimrad v09\_03\_01 for larsoft v09\_32\_01
-   2021-10-07 Lynn Garren : larsimrad v09\_03\_01 for larsoft v09\_32\_01

larrecodnn v09\_09\_02
------------------------------------------------

-   2021-10-07 Lynn Garren : larrecodnn v09\_09\_02 for larsoft v09\_32\_01
-   2021-10-07 Lynn Garren : larrecodnn v09\_09\_02 for larsoft v09\_32\_01
-   2021-10-07 Lynn Garren : Merge pull request \#23 from mhlswang/develop
-   2021-09-28 Michael WAng : added TritonAllowedTries fhicl parameter

larwirecell v09\_04\_02
--------------------------------------------------

-   2021-10-07 Lynn Garren : larwirecell v09\_04\_02 for larsoft v09\_32\_01
-   2021-10-07 Lynn Garren : larwirecell v09\_04\_02 for larsoft v09\_32\_01

larana v09\_03\_02
----------------------------------------

-   2021-10-07 Lynn Garren : larana v09\_03\_02 for larsoft v09\_32\_01
-   2021-10-07 Lynn Garren : larana v09\_03\_02 for larsoft v09\_32\_01

larreco v09\_07\_02
------------------------------------------

-   2021-10-07 Lynn Garren : larreco v09\_07\_02 for larsoft v09\_32\_01
-   2021-10-07 Lynn Garren : larreco v09\_07\_02 for larsoft v09\_32\_01

larsim v09\_16\_01
----------------------------------------

-   2021-10-07 Lynn Garren : larsim v09\_16\_01 for larsoft v09\_32\_01
-   2021-10-07 Lynn Garren : larsim v09\_16\_01 for larsoft v09\_32\_01

larg4 v09\_05\_02
--------------------------------------

-   2021-10-07 Lynn Garren : larg4 v09\_05\_02 for larsoft v09\_32\_01
-   2021-10-07 Lynn Garren : larg4 v09\_05\_02 for larsoft v09\_32\_01
-   2021-10-07 Lynn Garren : Merge branch ‘feature/rhatcher309\_pythia8dk’ into release/v09\_32\_01
-   2021-09-30 Robert Hatcher : add linkage to new nug4\_additionalG4Physics lib

larevt v09\_03\_02
----------------------------------------

-   2021-10-07 Lynn Garren : larevt v09\_03\_02 for larsoft v09\_32\_01
-   2021-10-07 Lynn Garren : larevt v09\_03\_02 for larsoft v09\_32\_01

lardata v09\_03\_02
------------------------------------------

-   2021-10-07 Lynn Garren : lardata v09\_03\_02 for larsoft v09\_32\_01
-   2021-10-07 Lynn Garren : lardata v09\_03\_02 for larsoft v09\_32\_01

larcore v09\_03\_00
------------------------------------------

larpandoracontent v03\_26\_00
--------------------------------------------------------------

larsoftobj v09\_10\_02
------------------------------------------------

-   2021-10-07 Lynn Garren : larsoftobj v09\_10\_02 for larsoft v09\_32\_01
-   2021-10-07 Lynn Garren : larsoftobj v09\_10\_02 for larsoft v09\_32\_01
-   2021-10-07 Lynn Garren : product versions

lardataobj v09\_03\_02
------------------------------------------------

-   2021-10-07 Lynn Garren : lardataobj v09\_03\_02 for larsoft v09\_32\_01
-   2021-10-07 Lynn Garren : lardataobj v09\_03\_02 for larsoft v09\_32\_01

lardataalg v09\_06\_02
------------------------------------------------

-   2021-10-07 Lynn Garren : lardataalg v09\_06\_02 for larsoft v09\_32\_01
-   2021-10-07 Lynn Garren : lardataalg v09\_06\_02 for larsoft v09\_32\_01

larcorealg v09\_03\_00
------------------------------------------------

larcoreobj v09\_03\_00
------------------------------------------------

webevd v09\_06\_02
----------------------------------------

-   2021-10-07 Lynn Garren : webevd v09\_06\_02 for larsoft v09\_32\_01
-   2021-10-07 Lynn Garren : webevd v09\_06\_02 for larsoft v09\_32\_01

larbatch v01\_56\_02
--------------------------------------------

larutils v1\_28\_02
------------------------------------------
