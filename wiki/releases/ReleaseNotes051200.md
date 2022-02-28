# LArSoft v05_12_00 Release Notes



[list of LArSoft releases](LArSoft_release_list)  
[Download instructions](https://scisoft.fnal.gov/scisoft/bundles/larsoft/v05_12_00/larsoft-v05_12_00.html)

## Purpose

-   approved changes

## New features

-   larevt, larsim, uboonecode, dunetpc: feature/mrmooney_SpaceChargeMay6th2016
-   larsoft_data 1.00.00
    -   replace SCIoffsets with a dummy so each experiment can maintain their own offsets
-   larreco: feature/rnd_PmaNoTObject
-   lareventdisplay feature/mrobinso_LandedEventDisplay

## Breaking changes

### [SpaceCharge improvements require new call](Breaking_Changes#SpaceCharge-improvements-require-new-call)

-   As a result of the Space Charge improvements, each experiment needs to modify their basic services list to include the following:
    -   SpaceCharge: @local::standard_spacecharge
-   Also, the following must be included:
    -   \#include “spacecharge.fcl”
-   The error message:
        %MSG-w LArVoxelReadout:  LArG4:largeant 27-May-2016 13:08:05 CDT run: 1 subRun: 0 event: 10
        step cannot be found in a TPC
        ---- ServiceNotFound BEGIN
          Service  unable to find requested service with compiler type name 'spacecharge::SpaceChargeService'.
        ---- ServiceNotFound END

## Bug fixes

## Updated dependencies

|              |          |            |       |
|--------------|----------|------------|-------|
| Product      | Version  | Qualifiers | Notes |
| larsoft_data | v1_00_00 |            |       |
| mrb          | v1_07_01 |            |       |

# Change List

## larsoft v05_12_00

-   2016-05-25 Lynn Garren : larsoft v05_12_00 for larsoft v05_12_00
-   2016-05-25 Lynn Garren : update product list
-   2016-05-25 Lynn Garren : update dependency database
-   2016-05-11 Lynn Garren : use the new larpandoracontent qualifiers
-   2016-05-11 Lynn Garren : need genie_xsec version

## lareventdisplay v05_07_00

-   2016-05-26 Lynn Garren : workaround for MSG_NOSIGNAL
-   2016-05-25 Lynn Garren : lareventdisplay v05_07_00 for larsoft v05_12_00
-   2016-05-25 Lynn Garren : Merge branch 'feature/mrobinso_LandedEventDisplay' into release/v05_12_00
-   2016-05-10 Matt Robinson : Added Landed event display moduule and service (corrected e-mail address)
-   2016-05-10 Matt Robinson : Added Landed event display moduule and service

## larexamples v05_06_08

-   2016-05-25 Lynn Garren : larexamples v05_06_08 for larsoft v05_12_00

## larpandora v05_09_05

-   2016-05-25 Lynn Garren : larpandora v05_09_05 for larsoft v05_12_00

## larana v05_09_02

-   2016-05-25 Lynn Garren : larana v05_09_02 for larsoft v05_12_00

## larreco v05_12_00

-   2016-05-25 Lynn Garren : larreco v05_12_00 for larsoft v05_12_00
-   2016-05-25 Robert Sulej : add typedef inside pma for displacement vector 2d and 3d
-   2016-05-25 Robert Sulej : Merge branch 'develop' into feature/rnd_PmaNoTObject
-   2016-05-23 Aaron Higuera Pichardo : Add histograms for PC studies, works with isNeutrinoInt: false, efficiencies for charge pion, muon and charge kaons
-   2016-05-20 Aaron Higuera Pichardo : Include more efficiencies
-   2016-05-12 Dorota Stefan : CLHEP vectors
-   2016-05-11 Dorota Stefan : TObject replaced with another vector from ROOT

## larsim v05_12_00

-   2016-05-25 Lynn Garren : larsim v05_12_00 for larsoft v05_12_00
-   2016-05-25 Lynn Garren : Merge branch 'feature/mrmooney_SpaceChargeMay6th2016' into release/v05_12_00
-   2016-05-06 Michael Mooney : Fixed sign error in space charge implementation of LArVoxelReadout.cxx
-   2016-05-06 Michael Mooney : New space charge service implementation

## larevt v05_07_00

-   2016-05-25 Lynn Garren : larevt v05_07_00 for larsoft v05_12_00
-   2016-05-25 Lynn Garren : Merge branch 'feature/mrmooney_SpaceChargeMay6th2016' into release/v05_12_00
-   2016-05-06 Michael Mooney : New space charge service implementation

## lardata v05_08_02

-   2016-05-25 Lynn Garren : lardata v05_08_02 for larsoft v05_12_00

## larcore v05_07_03

-   2016-05-25 Lynn Garren : larcore v05_07_03 for larsoft v05_12_00
-   2016-05-21 Christoph Rudolf von Rohr : BoxBoundedGeo.cxx: Fixed a bug which caused wrong results in rare cases (due to floating point inaccuracies). BoxBoundedGeo.h: added std::vector include for completeness reasons (better usability with IDE programms)

## larbatch v01_22_00

-   2016-05-25 Lynn Garren : larbatch v01_22_00 for larsoft v05_12_00
-   2016-05-25 Lynn Garren : larbatch v01_22_00 for larsoft v05_12_00
-   2016-05-20 yuntse : Merge remote-tracking branch 'refs/remotes/origin/develop' into develop
-   2016-05-20 yuntse : Fix bug when noninitial stage has an input definition.
-   2016-05-18 Herbert Greenlee : Update default qualifier from e7 to e9.
-   2016-05-17 Herbert Greenlee : Add condor_hadd_sam.sh.
-   2016-05-17 Lynn Garren : Merge branch 'release/v05_11_02'
-   2016-05-17 Lynn Garren : larbatch v01_21_05
-   2016-05-13 Herbert Greenlee : Work around art bug.
-   2016-05-13 yuntse : Work around art bug.
-   2016-05-10 yuntse : Merge remote-tracking branch 'refs/remotes/origin/develop' into develop
-   2016-05-03 yuntse : Streamline diagnostic printout.
-   2016-05-03 yuntse : Move safecopy from project.py to project_utilities.py. Add more timeouts. Add more diagnostic printout.

## larutils v1_06_02

-   2016-05-25 Lynn Garren : larutils v1_06_02 for larsoft v05_12_00
-   2016-05-25 Lynn Garren : larutils v1_06_02 for larsoft v05_12_00
-   2016-05-16 Lynn Garren : now building with nutools v1_25_05
