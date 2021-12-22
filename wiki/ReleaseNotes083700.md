LArSoft v08\_37\_00 Release Notes
======================================================================

-   **Table of contents**
-   [LArSoft v08\_37\_00 Release Notes](#LArSoft-v08_37_00-Release-Notes)
    -   [Purpose](#Purpose)
    -   [New features](#New-features)
    -   [Bug fixes](#Bug-fixes)
    -   [Updated dependencies](#Updated-dependencies)
-   [Change List](#Change-List)
    -   [larsoft v08\_37\_00](#larsoft-v08_37_00)
    -   [lareventdisplay v08\_09\_03](#lareventdisplay-v08_09_03)
    -   [larexamples v08\_03\_03](#larexamples-v08_03_03)
    -   [larg4 v08\_07\_00](#larg4-v08_07_00)
    -   [larpandora v08\_08\_03](#larpandora-v08_08_03)
    -   [larwirecell v08\_09\_03](#larwirecell-v08_09_03)
    -   [larana v08\_13\_03](#larana-v08_13_03)
    -   [larreco v08\_24\_00](#larreco-v08_24_00)
    -   [larsim v08\_16\_03](#larsim-v08_16_03)
    -   [larevt v08\_07\_02](#larevt-v08_07_02)
    -   [lardata v08\_10\_02](#lardata-v08_10_02)
    -   [larcore v08\_07\_01](#larcore-v08_07_01)
    -   [larpandoracontent v03\_15\_09](#larpandoracontent-v03_15_09)
    -   [larsoftobj v08\_22\_02](#larsoftobj-v08_22_02)
    -   [lardataobj v08\_07\_01](#lardataobj-v08_07_01)
    -   [lardataalg v08\_09\_02](#lardataalg-v08_09_02)
    -   [larcorealg v08\_17\_01](#larcorealg-v08_17_01)
    -   [larcoreobj v08\_07\_00](#larcoreobj-v08_07_00)
    -   [larbatch v01\_51\_11](#larbatch-v01_51_11)
    -   [larutils v1\_25\_02](#larutils-v1_25_02)

[list of LArSoft releases](LArSoft_release_list)\
Download instructions for [larsoft v08\_37\_00](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v08_37_00/larsoft-v08_37_00.html)\
Download instructions for [just larsoftobj v08\_22\_02](http://scisoft.fnal.gov/scisoft/bundles/larsoftobj/v08_22_02/larsoftobj-v08_22_02.html)

Purpose
--------------------

-   changes in develop
-   approved feature branches

New features
------------------------------

-   larreco feature/DomBarker\_TRACSUpdate\_ToDev
    -   TRACS changes
    -   ShowerStartPosition tool has been renamed ShowerPFPVertexStartPosition
        -   sbndcode will need feature/DomBarker\_TRACSUpdate
    -   See attached [TRACS\_changes](https://cdcvs.fnal.gov/redmine/attachments/57322/TRACS_Changes.pdf) file

Bug fixes
------------------------

-   larreco feature/cerati\_fix-sizet-bug

Updated dependencies
----------------------------------------------

-   eigen v3\_3\_5
    -   wirecell v0\_12\_4e
-   ifdhc v2\_5\_2
    -   fixes [\#23691](/redmine/issues/23691 "Bug: findMatchingFiles splits paths with xroot: or root: url's wrong. (Closed)")
    -   ifdh\_art v2\_09\_03
    -   nugen v1\_07\_02
    -   nusystematics v00\_07\_01
-   glpk v4\_65
    -   will be used by wirecell

Change List
============================

larsoft v08\_37\_00
------------------------------------------

-   2019-12-04 Lynn Garren : larsoft v08\_37\_00 for larsoft v08\_37\_00
-   2019-12-04 Lynn Garren : updating products and using nulite name

lareventdisplay v08\_09\_03
----------------------------------------------------------

-   2019-12-04 Lynn Garren : lareventdisplay v08\_09\_03 for larsoft v08\_37\_00

larexamples v08\_03\_03
--------------------------------------------------

-   2019-12-04 Lynn Garren : larexamples v08\_03\_03 for larsoft v08\_37\_00

larg4 v08\_07\_00
--------------------------------------

-   2019-12-04 Lynn Garren : larg4 v08\_07\_00 for larsoft v08\_37\_00
-   2019-12-01 David Rivera : Print the volume name when overriding the stepLimit.
-   2019-11-30 David Rivera : Merge branch ‘develop’ into feature/drivera\_larg4\_steplimit
-   2019-11-30 David Rivera : Defined the V/cm unit for backwards compatibility with older versions of the GDML. In the future the Efield aux parameter will not be utilized, but for now it can still be parsed properly.
-   2019-11-25 David Rivera : Merge branch ‘develop’ into feature/drivera\_larg4\_steplimit
-   2019-11-25 David Rivera : Added careful treatment of units, including a check for unit category when setting a valid StepLimit from the geometry file. Electric field, although not currently used in the G4 simulation, now carries units of V/m, which is defined within the base G4UnitDefinition class as opposed to V/cm which isn’t.
-   2019-11-17 David Rivera : Added volumeList and stepLimit list parameters to the LArG4Detector\_service to enable setting the stepLimit from the configuration file for the volumes specified and overriding the value set via the GDML file if set there. Added checks to ensure that the stepLimits are valid and prints warning if and when a stepLimit is being overriden through this method. Exceptions are thrown if the number of volumeNames to be set don’t match the number of stepLimits provided. If not provided in the fhicl file both lists default to empty and only stepLimits in the GDML (if any) are set. G4Exceptions are also thrown if the any of the volume names provided are undefined in the GDML file.

larpandora v08\_08\_03
------------------------------------------------

-   2019-12-04 Lynn Garren : larpandora v08\_08\_03 for larsoft v08\_37\_00

larwirecell v08\_09\_03
--------------------------------------------------

-   2019-12-04 Lynn Garren : larwirecell v08\_09\_03 for larsoft v08\_37\_00

larana v08\_13\_03
----------------------------------------

-   2019-12-04 Lynn Garren : larana v08\_13\_03 for larsoft v08\_37\_00

larreco v08\_24\_00
------------------------------------------

-   2019-12-04 Lynn Garren : larreco v08\_24\_00 for larsoft v08\_37\_00
-   2019-12-04 Lynn Garren : remove unused variable
-   2019-12-04 Lynn Garren : Merge branch ‘feature/cerati\_fix-sizet-bug’ into release/v08\_37\_00
-   2019-12-03 Dominic Barker : removing start position tool
-   2019-12-03 Dominic Barker : Updates again
-   2019-12-03 Dominic Barker : TRACS updates to develop
-   2019-12-02 Giuseppe Cerati : fix size\_t bug

larsim v08\_16\_03
----------------------------------------

-   2019-12-04 Lynn Garren : larsim v08\_16\_03 for larsoft v08\_37\_00
-   2019-11-26 Jason Stock : Updating standard fcl to be more intuitive for downstream to edit.

larevt v08\_07\_02
----------------------------------------

lardata v08\_10\_02
------------------------------------------

larcore v08\_07\_01
------------------------------------------

larpandoracontent v03\_15\_09
--------------------------------------------------------------

-   2019-12-04 Lynn Garren : larpandoracontent v03\_15\_09 for larsoft v08\_37\_00
-   2019-12-04 Lynn Garren : v03\_15\_09 with eigen v3\_3\_5

larsoftobj v08\_22\_02
------------------------------------------------

lardataobj v08\_07\_01
------------------------------------------------

lardataalg v08\_09\_02
------------------------------------------------

larcorealg v08\_17\_01
------------------------------------------------

larcoreobj v08\_07\_00
------------------------------------------------

larbatch v01\_51\_11
--------------------------------------------

larutils v1\_25\_02
------------------------------------------
