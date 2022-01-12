LArSoft v09_32_01 Release Notes
======================================================================

-   **Table of contents**
-   [LArSoft v09_32_01 Release Notes](#LArSoft-v09_32_01-Release-Notes)
    -   [Purpose](#Purpose)
    -   [New features](#New-features)
    -   [Bug fixes](#Bug-fixes)
    -   [Updated dependencies](#Updated-dependencies)
-   [Change List](#Change-List)
    -   [larsoft v09_32_01](#larsoft-v09_32_01)
    -   [lareventdisplay v09_02_02](#lareventdisplay-v09_02_02)
    -   [larexamples v09_02_02](#larexamples-v09_02_02)
    -   [larpandora v09_09_02](#larpandora-v09_09_02)
    -   [larsimrad v09_03_01](#larsimrad-v09_03_01)
    -   [larrecodnn v09_09_02](#larrecodnn-v09_09_02)
    -   [larwirecell v09_04_02](#larwirecell-v09_04_02)
    -   [larana v09_03_02](#larana-v09_03_02)
    -   [larreco v09_07_02](#larreco-v09_07_02)
    -   [larsim v09_16_01](#larsim-v09_16_01)
    -   [larg4 v09_05_02](#larg4-v09_05_02)
    -   [larevt v09_03_02](#larevt-v09_03_02)
    -   [lardata v09_03_02](#lardata-v09_03_02)
    -   [larcore v09_03_00](#larcore-v09_03_00)
    -   [larpandoracontent v03_26_00](#larpandoracontent-v03_26_00)
    -   [larsoftobj v09_10_02](#larsoftobj-v09_10_02)
    -   [lardataobj v09_03_02](#lardataobj-v09_03_02)
    -   [lardataalg v09_06_02](#lardataalg-v09_06_02)
    -   [larcorealg v09_03_00](#larcorealg-v09_03_00)
    -   [larcoreobj v09_03_00](#larcoreobj-v09_03_00)
    -   [webevd v09_06_02](#webevd-v09_06_02)
    -   [larbatch v01_56_02](#larbatch-v01_56_02)
    -   [larutils v1_28_02](#larutils-v1_28_02)

[list of LArSoft releases](LArSoft_release_list)
Download instructions for [larsoft v09_32_01](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v09_32_01/larsoft-v09_32_01.html)
Download instructions for [just larsoftobj v09_10_02](http://scisoft.fnal.gov/scisoft/bundles/larsoftobj/v09_10_02/larsoftobj-v09_10_02.html)

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
    -   add linkage to new nug4_additionalG4Physics lib
    -   requires latest nug4 (v1_10_00)

Bug fixes
------------------------

Updated dependencies
----------------------------------------------

-   cetbuildtools v8_18_04 and v8_18_05
-   ifdhc v2_5_16
-   ifdh_art v2_12_05
-   nusimdata v1_24_05
-   nuevdb v1_05_05
-   nug4 v1_10_00
-   nugen v1_14_05
-   nurandom v1_07_06
-   nutools v3_11_05
-   geant4reweight v01_08_04
-   nusystematics v01_00_03

Change List
============================

larsoft v09_32_01
------------------------------------------

-   2021-10-07 Lynn Garren : larsoft v09_32_01 for larsoft v09_32_01
-   2021-10-07 Lynn Garren : larsoft v09_32_01 for larsoft v09_32_01
-   2021-10-07 Lynn Garren : product versions

lareventdisplay v09_02_02
----------------------------------------------------------

-   2021-10-07 Lynn Garren : lareventdisplay v09_02_02 for larsoft v09_32_01
-   2021-10-07 Lynn Garren : lareventdisplay v09_02_02 for larsoft v09_32_01

larexamples v09_02_02
--------------------------------------------------

-   2021-10-07 Lynn Garren : larexamples v09_02_02 for larsoft v09_32_01
-   2021-10-07 Lynn Garren : larexamples v09_02_02 for larsoft v09_32_01

larpandora v09_09_02
------------------------------------------------

-   2021-10-07 Lynn Garren : larpandora v09_09_02 for larsoft v09_32_01
-   2021-10-07 Lynn Garren : larpandora v09_09_02 for larsoft v09_32_01

larsimrad v09_03_01
----------------------------------------------

-   2021-10-07 Lynn Garren : larsimrad v09_03_01 for larsoft v09_32_01
-   2021-10-07 Lynn Garren : larsimrad v09_03_01 for larsoft v09_32_01

larrecodnn v09_09_02
------------------------------------------------

-   2021-10-07 Lynn Garren : larrecodnn v09_09_02 for larsoft v09_32_01
-   2021-10-07 Lynn Garren : larrecodnn v09_09_02 for larsoft v09_32_01
-   2021-10-07 Lynn Garren : Merge pull request \#23 from mhlswang/develop
-   2021-09-28 Michael WAng : added TritonAllowedTries fhicl parameter

larwirecell v09_04_02
--------------------------------------------------

-   2021-10-07 Lynn Garren : larwirecell v09_04_02 for larsoft v09_32_01
-   2021-10-07 Lynn Garren : larwirecell v09_04_02 for larsoft v09_32_01

larana v09_03_02
----------------------------------------

-   2021-10-07 Lynn Garren : larana v09_03_02 for larsoft v09_32_01
-   2021-10-07 Lynn Garren : larana v09_03_02 for larsoft v09_32_01

larreco v09_07_02
------------------------------------------

-   2021-10-07 Lynn Garren : larreco v09_07_02 for larsoft v09_32_01
-   2021-10-07 Lynn Garren : larreco v09_07_02 for larsoft v09_32_01

larsim v09_16_01
----------------------------------------

-   2021-10-07 Lynn Garren : larsim v09_16_01 for larsoft v09_32_01
-   2021-10-07 Lynn Garren : larsim v09_16_01 for larsoft v09_32_01

larg4 v09_05_02
--------------------------------------

-   2021-10-07 Lynn Garren : larg4 v09_05_02 for larsoft v09_32_01
-   2021-10-07 Lynn Garren : larg4 v09_05_02 for larsoft v09_32_01
-   2021-10-07 Lynn Garren : Merge branch ‘feature/rhatcher309_pythia8dk’ into release/v09_32_01
-   2021-09-30 Robert Hatcher : add linkage to new nug4_additionalG4Physics lib

larevt v09_03_02
----------------------------------------

-   2021-10-07 Lynn Garren : larevt v09_03_02 for larsoft v09_32_01
-   2021-10-07 Lynn Garren : larevt v09_03_02 for larsoft v09_32_01

lardata v09_03_02
------------------------------------------

-   2021-10-07 Lynn Garren : lardata v09_03_02 for larsoft v09_32_01
-   2021-10-07 Lynn Garren : lardata v09_03_02 for larsoft v09_32_01

larcore v09_03_00
------------------------------------------

larpandoracontent v03_26_00
--------------------------------------------------------------

larsoftobj v09_10_02
------------------------------------------------

-   2021-10-07 Lynn Garren : larsoftobj v09_10_02 for larsoft v09_32_01
-   2021-10-07 Lynn Garren : larsoftobj v09_10_02 for larsoft v09_32_01
-   2021-10-07 Lynn Garren : product versions

lardataobj v09_03_02
------------------------------------------------

-   2021-10-07 Lynn Garren : lardataobj v09_03_02 for larsoft v09_32_01
-   2021-10-07 Lynn Garren : lardataobj v09_03_02 for larsoft v09_32_01

lardataalg v09_06_02
------------------------------------------------

-   2021-10-07 Lynn Garren : lardataalg v09_06_02 for larsoft v09_32_01
-   2021-10-07 Lynn Garren : lardataalg v09_06_02 for larsoft v09_32_01

larcorealg v09_03_00
------------------------------------------------

larcoreobj v09_03_00
------------------------------------------------

webevd v09_06_02
----------------------------------------

-   2021-10-07 Lynn Garren : webevd v09_06_02 for larsoft v09_32_01
-   2021-10-07 Lynn Garren : webevd v09_06_02 for larsoft v09_32_01

larbatch v01_56_02
--------------------------------------------

larutils v1_28_02
------------------------------------------
