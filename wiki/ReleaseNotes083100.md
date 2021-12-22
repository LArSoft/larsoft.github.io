LArSoft v08\_31\_00 Release Notes(#LArSoft-v08_31_00-Release-Notes)
======================================================================

-   **Table of contents**
-   [LArSoft v08\_31\_00 Release Notes](#LArSoft-v08_31_00-Release-Notes)
    -   [Purpose](#Purpose)
    -   [Bug fixes](#Bug-fixes)
    -   [Breaking changes](#Breaking-changes)
    -   [Updated dependencies](#Updated-dependencies)
-   [Change List](#Change-List)
    -   [larsoft v08\_31\_00](#larsoft-v08_31_00)
    -   [lareventdisplay v08\_08\_13](#lareventdisplay-v08_08_13)
    -   [larexamples v08\_02\_19](#larexamples-v08_02_19)
    -   [larg4 v08\_04\_00](#larg4-v08_04_00)
    -   [larpandora v08\_07\_17](#larpandora-v08_07_17)
    -   [larwirecell v08\_05\_17](#larwirecell-v08_05_17)
    -   [larana v08\_10\_13](#larana-v08_10_13)
    -   [larreco v08\_18\_03](#larreco-v08_18_03)
    -   [larsim v08\_13\_00](#larsim-v08_13_00)
    -   [larevt v08\_06\_10](#larevt-v08_06_10)
    -   [lardata v08\_07\_08](#lardata-v08_07_08)
    -   [larcore v08\_05\_01](#larcore-v08_05_01)
    -   [larpandoracontent v03\_15\_05](#larpandoracontent-v03_15_05)
    -   [larsoftobj v08\_18\_00](#larsoftobj-v08_18_00)
    -   [lardataobj v08\_05\_00](#lardataobj-v08_05_00)
    -   [lardataalg v08\_08\_06](#lardataalg-v08_08_06)
    -   [larcorealg v08\_14\_03](#larcorealg-v08_14_03)
    -   [larcoreobj v08\_05\_04](#larcoreobj-v08_05_04)
    -   [larbatch v01\_51\_07](#larbatch-v01_51_07)
    -   [larutils v1\_24\_04](#larutils-v1_24_04)

[list of LArSoft releases](LArSoft_release_list)\
Download instructions for [larsoft v08\_31\_00](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v08_31_00/larsoft-v08_31_00.html)\
Download instructions for [just larsoftobj v08\_18\_00](http://scisoft.fnal.gov/scisoft/bundles/larsoftobj/v08_18_00/larsoftobj-v08_18_00.html)

Purpose(#Purpose)
--------------------

-   changes in develop
-   built with root v6\_18\_04

Bug fixes(#Bug-fixes)
------------------------

-   This release resolves issue [\#23013](/redmine/issues/23013 "Bug: Unable to read recob::Vertex position information (Closed)")
    -   Please see the issue for further information
    -   [Breaking\_Changes](Breaking_Changes#root-IO-rules)

Breaking changes(#Breaking-changes)
--------------------------------------

-   [macOS root graphics](Breaking_Changes#macOS-missing-TGX11)
    -   larpandora needs updating before it will build on macOS
-   [I/O rules](Breaking_Changes#root-IO-rules)
-   artdaq\_core (3.05 and up) now calls [clock\_gettime](Breaking_Changes#artdaq_core-calls-clock_gettime)
    -   link with \${ARTDAQ-CORE\_UTILITIES}, which is defined in artdaq\_coreConfig.cmake
    -   see feature/team\_for\_root\_v6\_18 for experiment code

Updated dependencies(#Updated-dependencies)
----------------------------------------------

-   root v6\_18\_04
-   art\_root\_io v1\_00\_09
-   canvas\_root\_io v1\_03\_06
-   dk2nudata v01\_08\_00c
-   dk2nugenie v01\_08\_00d
-   nusimdata v1\_19\_01
-   artg4tk v09\_05\_01
-   gallery v1\_12\_06
-   artdaq\_core v3\_05\_02
-   ifdh\_art v2\_08\_09
-   nutools v3\_04\_02
-   genie v3\_00\_06b
-   nugen v1\_05\_01
-   nug4 v1\_01\_01
-   nurandom v1\_01\_01
-   systematicstools v00\_04\_01
-   nusystematics v00\_06\_01
-   wirecell v0\_12\_4b
-   marley v1\_1\_1b
-   pandora v03\_11\_01d

Change List(#Change-List)
============================

larsoft v08\_31\_00(#larsoft-v08_31_00)
------------------------------------------

-   2019-09-19 Lynn Garren : s91
-   2019-09-19 Lynn Garren : dk2nudata
-   2019-09-19 Lynn Garren : larsoft v08\_31\_00 for larsoft v08\_31\_00
-   2019-09-19 Lynn Garren : update versions
-   2019-09-18 Lynn Garren : larbase product update

lareventdisplay v08\_08\_13(#lareventdisplay-v08_08_13)
----------------------------------------------------------

-   2019-09-19 Lynn Garren : lareventdisplay v08\_08\_13 for larsoft v08\_31\_00

larexamples v08\_02\_19(#larexamples-v08_02_19)
--------------------------------------------------

-   2019-09-19 Lynn Garren : larexamples v08\_02\_19 for larsoft v08\_31\_00

larg4 v08\_04\_00(#larg4-v08_04_00)
--------------------------------------

-   2019-09-19 Lynn Garren : larg4 v08\_04\_00 for larsoft v08\_31\_00
-   2019-09-18 Lynn Garren : nug4 v1\_01\_01, nutools v3\_04\_02, artg4tk v09\_05\_01
-   2019-09-16 David Rivera : Merge branch ‘develop’ into feature/drivera\_backtracker\_larg4\_compatibility
-   2019-09-16 David Rivera : Code cleanup and fixes to messagelogger printouts.
-   2019-08-15 David Rivera : Merge tag ‘v08\_03\_11’ into feature/drivera\_backtracker\_larg4\_compatibility
-   2019-08-15 David Rivera : Inserted a call to the ResetTrackIDOffset function at the end of ParticleListActionService::endOfEventAction function in order to match the way trackIDs are assigned in Legacy (larsim/LArG4). This is necessary for the MCCheater backtracker to work identically in larg4.

larpandora v08\_07\_17(#larpandora-v08_07_17)
------------------------------------------------

-   2019-09-19 Lynn Garren : larpandora v08\_07\_17 for larsoft v08\_31\_00

larwirecell v08\_05\_17(#larwirecell-v08_05_17)
--------------------------------------------------

-   2019-09-19 Lynn Garren : larwirecell v08\_05\_17 for larsoft v08\_31\_00
-   2019-09-18 Lynn Garren : wirecell v0\_12\_4b

larana v08\_10\_13(#larana-v08_10_13)
----------------------------------------

-   2019-09-19 Lynn Garren : larana v08\_10\_13 for larsoft v08\_31\_00

larreco v08\_18\_03(#larreco-v08_18_03)
------------------------------------------

-   2019-09-19 Lynn Garren : larreco v08\_18\_03 for larsoft v08\_31\_00

larsim v08\_13\_00(#larsim-v08_13_00)
----------------------------------------

-   2019-09-19 Lynn Garren : larsim v08\_13\_00 for larsoft v08\_31\_00
-   2019-09-19 Lynn Garren : for root v6\_18\_04
-   2019-09-16 David Rivera : Fixed hearder merge conflicts.
-   2019-09-15 David Rivera : Final cleanup for the addition of an optional BackTracker SimChannelModuleLabel.
-   2019-08-26 Jason Stock : My reccomendations to D Rivera for his dedicated SimChannelsModuleLabel additino to the backtracker.
-   2019-08-19 David Rivera : Converted SimChannelModuleLabel to an fhicl OptionalAtom and created method to handle the case where it’s not provided.
-   2019-08-15 David Rivera : Merge tag ‘v08\_11\_01’ into feature/drivera\_backtracker\_larg4\_compatibility
-   2019-08-15 David Rivera : Introduced a separate module label for the sim::SimChannel objects. In larg4 these are produced by the elecDrift module rather than within largeant (Legacy). The backtracker needs both the largeant and elecDrift module labels to work properly within larg4. The default is for the fsimChannelModuleLabel to default to largeant, so as to avoid breaking Legacy (larsim/LArG4).

larevt v08\_06\_10(#larevt-v08_06_10)
----------------------------------------

-   2019-09-19 Lynn Garren : larevt v08\_06\_10 for larsoft v08\_31\_00

lardata v08\_07\_08(#lardata-v08_07_08)
------------------------------------------

-   2019-09-19 Lynn Garren : lardata v08\_07\_08 for larsoft v08\_31\_00

larcore v08\_05\_01(#larcore-v08_05_01)
------------------------------------------

-   2019-09-19 Lynn Garren : larcore v08\_05\_01 for larsoft v08\_31\_00
-   2019-09-18 Lynn Garren : art\_root\_io v1\_00\_09

larpandoracontent v03\_15\_05(#larpandoracontent-v03_15_05)
--------------------------------------------------------------

-   2019-09-19 Lynn Garren : larpandoracontent v03\_15\_05 for larsoft v08\_31\_00
-   2019-09-19 Lynn Garren : v03\_15\_05
-   2019-09-18 Lynn Garren : pandora v03\_11\_01d

larsoftobj v08\_18\_00(#larsoftobj-v08_18_00)
------------------------------------------------

-   2019-09-19 Lynn Garren : larsoftobj v08\_18\_00 for larsoft v08\_31\_00
-   2019-09-19 Lynn Garren : update versions
-   2019-09-19 Lynn Garren : dk2nudata
-   2019-09-18 Lynn Garren : gallery v1\_12\_06, nusimdata v1\_19\_01

lardataobj v08\_05\_00(#lardataobj-v08_05_00)
------------------------------------------------

-   2019-09-19 Lynn Garren : lardataobj v08\_05\_00 for larsoft v08\_31\_00
-   2019-09-19 Chris Green : Fix for [\#23013](/redmine/issues/23013 "Bug: Unable to read recob::Vertex position information (Closed)") in conjunction with ROOT 6.18/04.
-   2019-09-18 Lynn Garren : Merge branch ‘release/v08\_31\_00’ into feature/team\_for\_root\_v6\_18
-   2019-09-18 Lynn Garren : nusimdata v1\_19\_01
-   2019-09-12 Lynn Garren : nusimdata v1\_19\_00

lardataalg v08\_08\_06(#lardataalg-v08_08_06)
------------------------------------------------

-   2019-09-19 Lynn Garren : lardataalg v08\_08\_06 for larsoft v08\_31\_00

larcorealg v08\_14\_03(#larcorealg-v08_14_03)
------------------------------------------------

-   2019-09-19 Lynn Garren : larcorealg v08\_14\_03 for larsoft v08\_31\_00

larcoreobj v08\_05\_04(#larcoreobj-v08_05_04)
------------------------------------------------

-   2019-09-19 Lynn Garren : larcoreobj v08\_05\_04 for larsoft v08\_31\_00
-   2019-09-18 Lynn Garren : canvas\_root\_io v1\_03\_06

larbatch v01\_51\_07(#larbatch-v01_51_07)
--------------------------------------------

larutils v1\_24\_04(#larutils-v1_24_04)
------------------------------------------

-   2019-09-19 Lynn Garren : larutils v1\_24\_04 for larsoft v08\_31\_00
-   2019-09-13 Herbert Greenlee : Merge branch ‘develop’ of ssh://cdcvs.fnal.gov/cvs/projects/larutils into develop
-   2019-09-13 Herbert Greenlee : Switch repos.
