# LArSoft v08_10_00 Release Notes



[list of LArSoft releases](LArSoft_release_list)  
Download instructions for [larsoft v08_10_00](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v08_10_00/larsoft-v08_10_00.html)  
Download instructions for [just larsoftobj v08_07_00](http://scisoft.fnal.gov/scisoft/bundles/larsoftobj/v08_07_00/larsoftobj-v08_07_00.html)

## Purpose

-   changes to develop
-   approved features

## New features

- feature/usher_driftvelocityfudgefactor

DriftVelFudgeFactor added to detector properties

The default behavior is unchanged.

***breaking if you do not inherit from detectorproperties.fcl***

- add this line:

    DriftVelFudgeFactor: 1.

- for example, this change is needed in test_ExponentialChannelNoiseService.cxx

    diff --git a/dune/DetSim/Service/test/test_ExponentialChannelNoiseService.cxx b/dune/DetSim/Service/test/test_ExponentialChannelNoiseService.cxx
    index 08342bcd..df4e63e4 100644
    --- a/dune/DetSim/Service/test/test_ExponentialChannelNoiseService.cxx
    +++ b/dune/DetSim/Service/test/test_ExponentialChannelNoiseService.cxx
    @@ -342,6 +342,8 @@ extern const std::string LArPropertiesServiceConfigurationString { R"cfg(
     extern const std::string DetectorPropertiesServiceConfigurationString { R"cfg(
     service_provider: "DetectorPropertiesServiceStandard"

    +DriftVelFudgeFactor: 1.
    +
     # Drift properties
     SternheimerA:     0.1956  # Ar Sternheimer parameter a.
     SternheimerK:     3.0000  # Ar Sternheimer parameter k.

## Bug fixes

## Updated dependencies

-   nutools v2_26_08
    -   missing GTruth information added
-   nusimdata v1_15_03
    -   missing GTruth information added
-   ifdh_art v2_07_02
-   nusystematics v00_02_07
-   cetbuildtools v7_11_00
    -   includes new format-code script that can be used with clang format
    -   format-code does not impose any formatting guidelines
    -   to use the script, add .clang-format and select format options

# Change List

## larsoft v08_10_00

-   2019-02-20 Lynn Garren : larsoft v08_10_00 for larsoft v08_10_00
-   2019-02-20 Lynn Garren : for nutools v2_26_08

## lareventdisplay v08_03_05

-   2019-02-20 Lynn Garren : lareventdisplay v08_03_05 for larsoft v08_10_00

## larexamples v08_01_05

-   2019-02-20 Lynn Garren : larexamples v08_01_05 for larsoft v08_10_00

## larg4 v08_01_05

-   2019-02-20 Lynn Garren : larg4 v08_01_05 for larsoft v08_10_00

## larpandora v08_04_04

-   2019-02-20 Lynn Garren : larpandora v08_04_04 for larsoft v08_10_00

## larwirecell v08_02_05

-   2019-02-20 Lynn Garren : larwirecell v08_02_05 for larsoft v08_10_00

## larana v08_02_02

-   2019-02-20 Lynn Garren : larana v08_02_02 for larsoft v08_10_00

## larreco v08_08_01

-   2019-02-20 Lynn Garren : larreco v08_08_01 for larsoft v08_10_00
-   2019-02-18 Tingjun Yang : Reenable the check for negative hit charge that was removed unintentionally.

## larsim v08_03_02

-   2019-02-20 Lynn Garren : larsim v08_03_02 for larsoft v08_10_00

## larevt v08_02_01

-   2019-02-20 Lynn Garren : larevt v08_02_01 for larsoft v08_10_00

## lardata v08_03_02

-   2019-02-20 Lynn Garren : lardata v08_03_02 for larsoft v08_10_00

## larcore v08_02_00

## larpandoracontent v03_14_05

## larsoftobj v08_07_00

-   2019-02-20 Lynn Garren : larsoftobj v08_07_00 for larsoft v08_10_00
-   2019-02-20 Lynn Garren : for nusimdata v1_15_03

## lardataobj v08_02_01

-   2019-02-20 Lynn Garren : lardataobj v08_02_01 for larsoft v08_10_00

## lardataalg v08_04_00

-   2019-02-20 Lynn Garren : lardataalg v08_04_00 for larsoft v08_10_00
-   2019-02-19 Lynn Garren : Merge branch 'feature/usher_driftvelocityfudgefactor' into release/v08_09_01
-   2019-02-11 Joseph Zennamo : Changing drift velocity fudge factor fcl parameter name
-   2019-01-28 Joseph Zennamo : Merge tag 'tags/v08_03_00' into feature/usher_driftvelocityfudgefactor
-   2019-01-09 Usher, Tracy L : Add a fhicl variable which will allow a scaling of the drift velocity - a “fudge factor” as suggested by Michelle Stancari (hence the name)

## larcorealg v08_04_00

## larcoreobj v08_02_01

## larbatch v01_48_00

-   2019-02-20 Lynn Garren : larbatch v01_48_00 for larsoft v08_10_00
-   2019-02-14 Herbert Greenlee : Add ability to declare files before validate_in_job.

## larutils v1_23_11
