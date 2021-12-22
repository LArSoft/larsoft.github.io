LArSoft v08\_27\_00 Release Notes
======================================================================

-   **Table of contents**
-   [LArSoft v08\_27\_00 Release Notes](#LArSoft-v08_27_00-Release-Notes)
    -   [Purpose](#Purpose)
    -   [New features](#New-features)
    -   [Breaking changes](#Breaking-changes)
    -   [Bug fixes](#Bug-fixes)
    -   [Updated dependencies](#Updated-dependencies)
-   [Change List](#Change-List)
    -   [larsoft v08\_27\_00](#larsoft-v08_27_00)
    -   [lareventdisplay v08\_08\_04](#lareventdisplay-v08_08_04)
    -   [larexamples v08\_02\_12](#larexamples-v08_02_12)
    -   [larg4 v08\_03\_10](#larg4-v08_03_10)
    -   [larpandora v08\_07\_08](#larpandora-v08_07_08)
    -   [larwirecell v08\_05\_10](#larwirecell-v08_05_10)
    -   [larana v08\_10\_04](#larana-v08_10_04)
    -   [larreco v08\_16\_01](#larreco-v08_16_01)
    -   [larsim v08\_11\_00](#larsim-v08_11_00)
    -   [larevt v08\_06\_03](#larevt-v08_06_03)
    -   [lardata v08\_07\_01](#lardata-v08_07_01)
    -   [larcore v08\_04\_07](#larcore-v08_04_07)
    -   [larpandoracontent v03\_15\_02](#larpandoracontent-v03_15_02)
    -   [larsoftobj v08\_17\_00](#larsoftobj-v08_17_00)
    -   [lardataobj v08\_04\_06](#lardataobj-v08_04_06)
    -   [lardataalg v08\_08\_01](#lardataalg-v08_08_01)
    -   [larcorealg v08\_14\_00](#larcorealg-v08_14_00)
    -   [larcoreobj v08\_05\_01](#larcoreobj-v08_05_01)
    -   [larbatch v01\_51\_05](#larbatch-v01_51_05)
    -   [larutils v1\_24\_00](#larutils-v1_24_00)

[list of LArSoft releases](LArSoft_release_list)\
Download instructions for [larsoft v08\_27\_00](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v08_27_00/larsoft-v08_27_00.html)\
Download instructions for [just larsoftobj v08\_17\_00](http://scisoft.fnal.gov/scisoft/bundles/larsoftobj/v08_17_00/larsoftobj-v08_17_00.html)

Purpose
--------------------

-   changes in develop
-   approved feature branches
-   nutools v3\_02\_00 with nug4

New features
------------------------------

-   larpandoracontent
    -   feature/larpandoracontent\_v03\_15\_02
    -   The changes in this release allows the Pandora MVA vertexing to be trained for test beam particle interactions at ProtoDUNE, resolve a reproducibility issue we noted (affecting \~1 in 10,000 events) and allows a used to register a custom algorithm in the LArSoft framework in algorithms deriving from the Pandora master algorithm.

Breaking changes
--------------------------------------

-   With this release, the geant4 parts of nutools are split out into nug4 \
    v1\_00\_00. Please see the [breaking changes for nug4](Breaking_Changes#nutools-v3_02_00).
-   Feature branches feature/team\_for\_nug4 are available for experiment code.

Bug fixes
------------------------

Updated dependencies
----------------------------------------------

-   ifdhc\_config v2\_4\_6
-   marley v1\_1\_1
-   nutools v3\_02\_00
-   nug4 v1\_00\_00

Change List
============================

larsoft v08\_27\_00
------------------------------------------

-   2019-07-24 Lynn Garren : larsoft v08\_27\_00 for larsoft v08\_27\_00
-   2019-07-24 Lynn Garren : larsoft v08\_27\_00 for larsoft v08\_27\_00
-   2019-07-24 Lynn Garren : update products

lareventdisplay v08\_08\_04
----------------------------------------------------------

-   2019-07-24 Lynn Garren : lareventdisplay v08\_08\_04 for larsoft v08\_27\_00
-   2019-07-24 Lynn Garren : using nutools v3\_02\_00 and nug4 v1\_00\_00

larexamples v08\_02\_12
--------------------------------------------------

-   2019-07-24 Lynn Garren : larexamples v08\_02\_12 for larsoft v08\_27\_00

larg4 v08\_03\_10
--------------------------------------

-   2019-07-24 Lynn Garren : larg4 v08\_03\_10 for larsoft v08\_27\_00
-   2019-07-24 Lynn Garren : using nutools v3\_02\_00 and nug4 v1\_00\_00

larpandora v08\_07\_08
------------------------------------------------

-   2019-07-24 Lynn Garren : larpandora v08\_07\_08 for larsoft v08\_27\_00
-   2019-07-24 Lynn Garren : using nutools v3\_02\_00 and nug4 v1\_00\_00

larwirecell v08\_05\_10
--------------------------------------------------

-   2019-07-24 Lynn Garren : larwirecell v08\_05\_10 for larsoft v08\_27\_00

larana v08\_10\_04
----------------------------------------

-   2019-07-24 Lynn Garren : larana v08\_10\_04 for larsoft v08\_27\_00
-   2019-07-24 Lynn Garren : using nutools v3\_02\_00 and nug4 v1\_00\_00

larreco v08\_16\_01
------------------------------------------

-   2019-07-24 Lynn Garren : larreco v08\_16\_01 for larsoft v08\_27\_00
-   2019-07-24 Lynn Garren : change comment
-   2019-07-24 Lynn Garren : Merge branch ‘develop’ into release/v08\_27\_00
-   2019-07-24 Lynn Garren : using nutools v3\_02\_00 and nug4 v1\_00\_00
-   2019-07-23 Usher, Tracy L : Merge branch ‘develop’ of ssh://cdcvs.fnal.gov/cvs/projects/larreco into develop
-   2019-07-23 Usher, Tracy L : Add tuple output for diagnostic purposes
-   2019-07-22 Tingjun Yang : Revert “Add an option to specify an input rawdigit collection. Turn off by default.”
-   2019-07-20 Tingjun Yang : Add an option to specify an input rawdigit collection. Turn off by default.

larsim v08\_11\_00
----------------------------------------

-   2019-07-24 Lynn Garren : larsim v08\_11\_00 for larsoft v08\_27\_00
-   2019-07-24 Lynn Garren : using nutools v3\_02\_00 and nug4 v1\_00\_00
-   2019-06-11 Gianluca Petrillo : DumpSimPhotons: print the ID of parent track
-   2019-06-11 Gianluca Petrillo : DumpSimPhotons module now sorts the photons (mostly, in time)

larevt v08\_06\_03
----------------------------------------

-   2019-07-24 Lynn Garren : larevt v08\_06\_03 for larsoft v08\_27\_00

lardata v08\_07\_01
------------------------------------------

-   2019-07-24 Lynn Garren : lardata v08\_07\_01 for larsoft v08\_27\_00

larcore v08\_04\_07
------------------------------------------

-   2019-07-24 Lynn Garren : larcore v08\_04\_07 for larsoft v08\_27\_00

larpandoracontent v03\_15\_02
--------------------------------------------------------------

-   2019-07-24 Lynn Garren : larpandoracontent v03\_15\_02 for larsoft v08\_27\_00
-   2019-07-19 StevenGreen1 : Merge branch ‘updates’
-   2019-07-19 StevenGreen1 : Merge branch ‘feature/ShowerOverlapResultOrdering’
-   2019-07-19 StevenGreen1 : Update version and change log.
-   2019-07-19 StevenGreen1 : Alter the comparison operator in the LArShowerOverlapResult to compare span in W before span in U/V.
-   2019-07-18 StevenGreen1 : Extending the variables used in the comparison operator of the LArShowerOverlapResult class.
-   2019-07-19 John Marshall : Merge branch ‘feature/RegisterCustomContent’
-   2019-07-18 StevenGreen1 : Merge branch ‘feature/ProtoDUNE\_BDTVertex’
-   2019-07-18 John Marshall : Add ability to register custom content in algorithms deriving from the LArMaster algorithm.
-   2019-07-15 StevenGreen1 : Cosmetic changes.
-   2019-07-11 Steven Green : Adding test beam mode to MVA vertex selection algorithm.
-   2019-05-01 Steven Green : Adding triggered beam helper functions in LArMCParticleHelper.

larsoftobj v08\_17\_00
------------------------------------------------

-   2019-07-24 Lynn Garren : larsoftobj v08\_17\_00 for larsoft v08\_27\_00
-   2019-07-24 Lynn Garren : update products

lardataobj v08\_04\_06
------------------------------------------------

-   2019-07-24 Lynn Garren : lardataobj v08\_04\_06 for larsoft v08\_27\_00

lardataalg v08\_08\_01
------------------------------------------------

-   2019-07-24 Lynn Garren : lardataalg v08\_08\_01 for larsoft v08\_27\_00
-   2019-07-23 Gianluca Petrillo : Added readout window information in DetectorPropertiesStandard unit test.
-   2019-07-18 Gianluca Petrillo : Bug fix: functions defined in header are now inlined.

larcorealg v08\_14\_00
------------------------------------------------

-   2019-07-24 Lynn Garren : larcorealg v08\_14\_00 for larsoft v08\_27\_00
-   2019-07-23 Gianluca Petrillo : Added utility to process all the nodes of ROOT geometry.

larcoreobj v08\_05\_01
------------------------------------------------

larbatch v01\_51\_05
--------------------------------------------

-   2019-07-24 Lynn Garren : larbatch v01\_51\_05 for larsoft v08\_27\_00
-   2019-07-23 Herbert Greenlee : Merge branch ‘develop’ of ssh://cdcvs.fnal.gov/cvs/projects/larbatch into develop
-   2019-07-23 Herbert Greenlee : Streamline input dataset checking.
-   2019-07-22 Herbert Greenlee : Derive limited dataset name from project name.

larutils v1\_24\_00
------------------------------------------
