LArSoft v08_27_01 Release Notes
======================================================================

-   **Table of contents**
-   [LArSoft v08_27_01 Release Notes](#LArSoft-v08_27_01-Release-Notes)
    -   [Purpose](#Purpose)
    -   [New features](#New-features)
    -   [Bug fixes](#Bug-fixes)
    -   [Updated dependencies](#Updated-dependencies)
-   [Change List](#Change-List)
    -   [larsoft v08_27_01](#larsoft-v08_27_01)
    -   [lareventdisplay v08_08_05](#lareventdisplay-v08_08_05)
    -   [larexamples v08_02_13](#larexamples-v08_02_13)
    -   [larg4 v08_03_11](#larg4-v08_03_11)
    -   [larpandora v08_07_09](#larpandora-v08_07_09)
    -   [larwirecell v08_05_11](#larwirecell-v08_05_11)
    -   [larana v08_10_05](#larana-v08_10_05)
    -   [larreco v08_16_02](#larreco-v08_16_02)
    -   [larsim v08_11_01](#larsim-v08_11_01)
    -   [larevt v08_06_04](#larevt-v08_06_04)
    -   [lardata v08_07_02](#lardata-v08_07_02)
    -   [larcore v08_04_07](#larcore-v08_04_07)
    -   [larpandoracontent v03_15_02](#larpandoracontent-v03_15_02)
    -   [larsoftobj v08_17_01](#larsoftobj-v08_17_01)
    -   [lardataobj v08_04_07](#lardataobj-v08_04_07)
    -   [lardataalg v08_08_02](#lardataalg-v08_08_02)
    -   [larcorealg v08_14_00](#larcorealg-v08_14_00)
    -   [larcoreobj v08_05_01](#larcoreobj-v08_05_01)
    -   [larbatch v01_51_05](#larbatch-v01_51_05)
    -   [larutils v1_24_00](#larutils-v1_24_00)

[list of LArSoft releases](LArSoft_release_list)
Download instructions for [larsoft v08_27_01](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v08_27_01/larsoft-v08_27_01.html)
Download instructions for [just larsoftobj v08_17_01](http://scisoft.fnal.gov/scisoft/bundles/larsoftobj/v08_17_01/larsoftobj-v08_17_01.html)

Purpose
--------------------

-   ProtoDUNE request [redmine issue 23064](https://cdcvs.fnal.gov/redmine/issues/23064)

New features
------------------------------

Bug fixes
------------------------

-   lardataobj feature/JStock_OpDetBTR_bunching
    -   OpDetBacktrackerRecords bug fix

Updated dependencies
----------------------------------------------

-   ups v6_0_8
    -   Improvements in the setup and setups scripts.
    -   Everything else is the same as v6_0_7.

Change List
============================

larsoft v08_27_01
------------------------------------------

-   2019-08-06 Lynn Garren : larsoft v08_27_01 for larsoft v08_27_01
-   2019-08-06 Lynn Garren : ups v6_0_8
-   2019-08-06 Lynn Garren : update versions

lareventdisplay v08_08_05
----------------------------------------------------------

-   2019-08-06 Lynn Garren : lareventdisplay v08_08_05 for larsoft v08_27_01

larexamples v08_02_13
--------------------------------------------------

-   2019-08-06 Lynn Garren : larexamples v08_02_13 for larsoft v08_27_01

larg4 v08_03_11
--------------------------------------

-   2019-08-06 Lynn Garren : larg4 v08_03_11 for larsoft v08_27_01

larpandora v08_07_09
------------------------------------------------

-   2019-08-06 Lynn Garren : larpandora v08_07_09 for larsoft v08_27_01

larwirecell v08_05_11
--------------------------------------------------

-   2019-08-06 Lynn Garren : larwirecell v08_05_11 for larsoft v08_27_01

larana v08_10_05
----------------------------------------

-   2019-08-06 Lynn Garren : larana v08_10_05 for larsoft v08_27_01

larreco v08_16_02
------------------------------------------

-   2019-08-06 Lynn Garren : larreco v08_16_02 for larsoft v08_27_01
-   2019-08-01 Aaron Higuera Pichardo : Fix a bug in the initialize of the hit position and remove detprop-\>ConvertTicksToX()
-   2019-07-31 Tingjun Yang : Change hit index to be the index in the whole hit collection rather than hits associated with the shower.

larsim v08_11_01
----------------------------------------

-   2019-08-06 Lynn Garren : larsim v08_11_01 for larsoft v08_27_01

larevt v08_06_04
----------------------------------------

-   2019-08-06 Lynn Garren : larevt v08_06_04 for larsoft v08_27_01

lardata v08_07_02
------------------------------------------

-   2019-08-06 Lynn Garren : lardata v08_07_02 for larsoft v08_27_01

larcore v08_04_07
------------------------------------------

larpandoracontent v03_15_02
--------------------------------------------------------------

larsoftobj v08_17_01
------------------------------------------------

-   2019-08-06 Lynn Garren : larsoftobj v08_17_01 for larsoft v08_27_01
-   2019-08-06 Lynn Garren : update versions

lardataobj v08_04_07
------------------------------------------------

-   2019-08-06 Lynn Garren : lardataobj v08_04_07 for larsoft v08_27_01
-   2019-07-28 Jason Stock : Adjusting OpDetBTRs to bunch records at 1ns scale. This is done to correct a fragile floating point comparison, and is in line with the minimum time scale used in photon simulation.

lardataalg v08_08_02
------------------------------------------------

-   2019-08-06 Lynn Garren : lardataalg v08_08_02 for larsoft v08_27_01

larcorealg v08_14_00
------------------------------------------------

larcoreobj v08_05_01
------------------------------------------------

larbatch v01_51_05
--------------------------------------------

larutils v1_24_00
------------------------------------------
