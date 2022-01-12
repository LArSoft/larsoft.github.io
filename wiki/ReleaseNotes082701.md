LArSoft v08\_27\_01 Release Notes
======================================================================

-   **Table of contents**
-   [LArSoft v08\_27\_01 Release Notes](#LArSoft-v08_27_01-Release-Notes)
    -   [Purpose](#Purpose)
    -   [New features](#New-features)
    -   [Bug fixes](#Bug-fixes)
    -   [Updated dependencies](#Updated-dependencies)
-   [Change List](#Change-List)
    -   [larsoft v08\_27\_01](#larsoft-v08_27_01)
    -   [lareventdisplay v08\_08\_05](#lareventdisplay-v08_08_05)
    -   [larexamples v08\_02\_13](#larexamples-v08_02_13)
    -   [larg4 v08\_03\_11](#larg4-v08_03_11)
    -   [larpandora v08\_07\_09](#larpandora-v08_07_09)
    -   [larwirecell v08\_05\_11](#larwirecell-v08_05_11)
    -   [larana v08\_10\_05](#larana-v08_10_05)
    -   [larreco v08\_16\_02](#larreco-v08_16_02)
    -   [larsim v08\_11\_01](#larsim-v08_11_01)
    -   [larevt v08\_06\_04](#larevt-v08_06_04)
    -   [lardata v08\_07\_02](#lardata-v08_07_02)
    -   [larcore v08\_04\_07](#larcore-v08_04_07)
    -   [larpandoracontent v03\_15\_02](#larpandoracontent-v03_15_02)
    -   [larsoftobj v08\_17\_01](#larsoftobj-v08_17_01)
    -   [lardataobj v08\_04\_07](#lardataobj-v08_04_07)
    -   [lardataalg v08\_08\_02](#lardataalg-v08_08_02)
    -   [larcorealg v08\_14\_00](#larcorealg-v08_14_00)
    -   [larcoreobj v08\_05\_01](#larcoreobj-v08_05_01)
    -   [larbatch v01\_51\_05](#larbatch-v01_51_05)
    -   [larutils v1\_24\_00](#larutils-v1_24_00)

[list of LArSoft releases](LArSoft_release_list)
Download instructions for [larsoft v08\_27\_01](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v08_27_01/larsoft-v08_27_01.html)
Download instructions for [just larsoftobj v08\_17\_01](http://scisoft.fnal.gov/scisoft/bundles/larsoftobj/v08_17_01/larsoftobj-v08_17_01.html)

Purpose
--------------------

-   ProtoDUNE request [\#23064](/redmine/issues/23064 "Support: Request patch release v08_27_00_01 for ProtoDUNE production (Closed)")

New features
------------------------------

Bug fixes
------------------------

-   lardataobj feature/JStock\_OpDetBTR\_bunching
    -   OpDetBacktrackerRecords bug fix

Updated dependencies
----------------------------------------------

-   ups v6\_0\_8
    -   Improvements in the setup and setups scripts.
    -   Everything else is the same as v6\_0\_7.

Change List
============================

larsoft v08\_27\_01
------------------------------------------

-   2019-08-06 Lynn Garren : larsoft v08\_27\_01 for larsoft v08\_27\_01
-   2019-08-06 Lynn Garren : ups v6\_0\_8
-   2019-08-06 Lynn Garren : update versions

lareventdisplay v08\_08\_05
----------------------------------------------------------

-   2019-08-06 Lynn Garren : lareventdisplay v08\_08\_05 for larsoft v08\_27\_01

larexamples v08\_02\_13
--------------------------------------------------

-   2019-08-06 Lynn Garren : larexamples v08\_02\_13 for larsoft v08\_27\_01

larg4 v08\_03\_11
--------------------------------------

-   2019-08-06 Lynn Garren : larg4 v08\_03\_11 for larsoft v08\_27\_01

larpandora v08\_07\_09
------------------------------------------------

-   2019-08-06 Lynn Garren : larpandora v08\_07\_09 for larsoft v08\_27\_01

larwirecell v08\_05\_11
--------------------------------------------------

-   2019-08-06 Lynn Garren : larwirecell v08\_05\_11 for larsoft v08\_27\_01

larana v08\_10\_05
----------------------------------------

-   2019-08-06 Lynn Garren : larana v08\_10\_05 for larsoft v08\_27\_01

larreco v08\_16\_02
------------------------------------------

-   2019-08-06 Lynn Garren : larreco v08\_16\_02 for larsoft v08\_27\_01
-   2019-08-01 Aaron Higuera Pichardo : Fix a bug in the initialize of the hit position and remove detprop-\>ConvertTicksToX()
-   2019-07-31 Tingjun Yang : Change hit index to be the index in the whole hit collection rather than hits associated with the shower.

larsim v08\_11\_01
----------------------------------------

-   2019-08-06 Lynn Garren : larsim v08\_11\_01 for larsoft v08\_27\_01

larevt v08\_06\_04
----------------------------------------

-   2019-08-06 Lynn Garren : larevt v08\_06\_04 for larsoft v08\_27\_01

lardata v08\_07\_02
------------------------------------------

-   2019-08-06 Lynn Garren : lardata v08\_07\_02 for larsoft v08\_27\_01

larcore v08\_04\_07
------------------------------------------

larpandoracontent v03\_15\_02
--------------------------------------------------------------

larsoftobj v08\_17\_01
------------------------------------------------

-   2019-08-06 Lynn Garren : larsoftobj v08\_17\_01 for larsoft v08\_27\_01
-   2019-08-06 Lynn Garren : update versions

lardataobj v08\_04\_07
------------------------------------------------

-   2019-08-06 Lynn Garren : lardataobj v08\_04\_07 for larsoft v08\_27\_01
-   2019-07-28 Jason Stock : Adjusting OpDetBTRs to bunch records at 1ns scale. This is done to correct a fragile floating point comparison, and is in line with the minimum time scale used in photon simulation.

lardataalg v08\_08\_02
------------------------------------------------

-   2019-08-06 Lynn Garren : lardataalg v08\_08\_02 for larsoft v08\_27\_01

larcorealg v08\_14\_00
------------------------------------------------

larcoreobj v08\_05\_01
------------------------------------------------

larbatch v01\_51\_05
--------------------------------------------

larutils v1\_24\_00
------------------------------------------
