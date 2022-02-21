# LArSoft v08_37_00 Release Notes



[list of LArSoft releases](LArSoft_release_list)  
Download instructions for [larsoft v08_37_00](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v08_37_00/larsoft-v08_37_00.html)  
Download instructions for [just larsoftobj v08_22_02](http://scisoft.fnal.gov/scisoft/bundles/larsoftobj/v08_22_02/larsoftobj-v08_22_02.html)

## Purpose

-   changes in develop
-   approved feature branches

## New features

-   larreco feature/DomBarker_TRACSUpdate_ToDev
    -   TRACS changes
    -   ShowerStartPosition tool has been renamed ShowerPFPVertexStartPosition
        -   sbndcode will need feature/DomBarker_TRACSUpdate
    -   See attached [TRACS_changes](https://cdcvs.fnal.gov/redmine/attachments/57322/TRACS_Changes.pdf) file

## Bug fixes

-   larreco feature/cerati_fix-sizet-bug

## Updated dependencies

-   eigen v3_3_5
    -   wirecell v0_12_4e
-   ifdhc v2_5_2
    -   fixes \#23691
    -   ifdh_art v2_09_03
    -   nugen v1_07_02
    -   nusystematics v00_07_01
-   glpk v4_65
    -   will be used by wirecell

# Change List

## larsoft v08_37_00

-   2019-12-04 Lynn Garren : larsoft v08_37_00 for larsoft v08_37_00
-   2019-12-04 Lynn Garren : updating products and using nulite name

## lareventdisplay v08_09_03

-   2019-12-04 Lynn Garren : lareventdisplay v08_09_03 for larsoft v08_37_00

## larexamples v08_03_03

-   2019-12-04 Lynn Garren : larexamples v08_03_03 for larsoft v08_37_00

## larg4 v08_07_00

-   2019-12-04 Lynn Garren : larg4 v08_07_00 for larsoft v08_37_00
-   2019-12-01 David Rivera : Print the volume name when overriding the stepLimit.
-   2019-11-30 David Rivera : Merge branch 'develop' into feature/drivera_larg4_steplimit
-   2019-11-30 David Rivera : Defined the V/cm unit for backwards compatibility with older versions of the GDML. In the future the Efield aux parameter will not be utilized, but for now it can still be parsed properly.
-   2019-11-25 David Rivera : Merge branch 'develop' into feature/drivera_larg4_steplimit
-   2019-11-25 David Rivera : Added careful treatment of units, including a check for unit category when setting a valid StepLimit from the geometry file. Electric field, although not currently used in the G4 simulation, now carries units of V/m, which is defined within the base G4UnitDefinition class as opposed to V/cm which isn't.
-   2019-11-17 David Rivera : Added volumeList and stepLimit list parameters to the LArG4Detector_service to enable setting the stepLimit from the configuration file for the volumes specified and overriding the value set via the GDML file if set there. Added checks to ensure that the stepLimits are valid and prints warning if and when a stepLimit is being overriden through this method. Exceptions are thrown if the number of volumeNames to be set don't match the number of stepLimits provided. If not provided in the fhicl file both lists default to empty and only stepLimits in the GDML (if any) are set. G4Exceptions are also thrown if the any of the volume names provided are undefined in the GDML file.

## larpandora v08_08_03

-   2019-12-04 Lynn Garren : larpandora v08_08_03 for larsoft v08_37_00

## larwirecell v08_09_03

-   2019-12-04 Lynn Garren : larwirecell v08_09_03 for larsoft v08_37_00

## larana v08_13_03

-   2019-12-04 Lynn Garren : larana v08_13_03 for larsoft v08_37_00

## larreco v08_24_00

-   2019-12-04 Lynn Garren : larreco v08_24_00 for larsoft v08_37_00
-   2019-12-04 Lynn Garren : remove unused variable
-   2019-12-04 Lynn Garren : Merge branch 'feature/cerati_fix-sizet-bug' into release/v08_37_00
-   2019-12-03 Dominic Barker : removing start position tool
-   2019-12-03 Dominic Barker : Updates again
-   2019-12-03 Dominic Barker : TRACS updates to develop
-   2019-12-02 Giuseppe Cerati : fix size_t bug

## larsim v08_16_03

-   2019-12-04 Lynn Garren : larsim v08_16_03 for larsoft v08_37_00
-   2019-11-26 Jason Stock : Updating standard fcl to be more intuitive for downstream to edit.

## larevt v08_07_02

## lardata v08_10_02

## larcore v08_07_01

## larpandoracontent v03_15_09

-   2019-12-04 Lynn Garren : larpandoracontent v03_15_09 for larsoft v08_37_00
-   2019-12-04 Lynn Garren : v03_15_09 with eigen v3_3_5

## larsoftobj v08_22_02

## lardataobj v08_07_01

## lardataalg v08_09_02

## larcorealg v08_17_01

## larcoreobj v08_07_00

## larbatch v01_51_11

## larutils v1_25_02
