# LArSoft v05_01_01 Release Notes



[list of LArSoft releases](LArSoft_release_list)  
[Download instructions](https://scisoft.fnal.gov/scisoft/bundles/larsoft/v05_01_01/larsoft-v05_01_01.html)

## Purpose

-   fixes for genie 2.10.4

## New features

-   larana feature/tjyang_crhitremovalupdate
    -   CRHitRemoval_module.cc removes cosmic ray hits and creates a new list of hits. However, it does not create hit-wire and hit-rawdigit associations, which causes problems for some use cases.
    -   CRHitRemoval_module.cc has been modified to add hit-wire and hit-rawdigit associations.

## Bug fixes

-   larsim genie.fcl updated with appropriate information for genie 2.10.4
    -   see \#11794

## Updated dependencies

|               |          |            |                                 |
|---------------|----------|------------|---------------------------------|
| Product       | Version  | Qualifiers | Notes                           |
| nutools       | v1_23_01 | e9         | \#11794                         |
| genie         | v2_10_4a | e9:r5      | includes gevgen_fnal executable |
| cetbuildtools | v4_18_03 |            | \#11708                         |

# Change List

## larsoft v05_01_01

-   2016-02-24 Lynn Garren : larsoft v05_01_01 for larsoft v05_01_01
-   2016-02-24 Lynn Garren : genie v2_10_4a
-   2016-02-24 Lynn Garren : add cetbuildtools v4_18_03
-   2016-02-24 Lynn Garren : update product versions
-   2016-02-24 Lynn Garren : update dependency database
-   2016-02-19 Lynn Garren : larsoft v05_01_00
-   2016-02-18 Gianluca Petrillo : Added heuristics to UpdateCoreServices.py not to warn about members moved from LArProperties to DetectorProperties when it is believed that the code has been already fixed. Works fairly well except on lardata.

## lareventdisplay v05_01_01

-   2016-02-24 Lynn Garren : lareventdisplay v05_01_01 for larsoft v05_01_01

## larexamples v05_00_03

-   2016-02-24 Lynn Garren : larexamples v05_00_03 for larsoft v05_01_01

## larpandora v05_00_03

-   2016-02-24 Lynn Garren : larpandora v05_00_03 for larsoft v05_01_01

## larana v05_01_00

-   2016-02-24 Lynn Garren : larana v05_01_00 for larsoft v05_01_01
-   2016-02-20 Tingjun Yang : Add hit-wire and hit-rawdigit associaitons.

## larreco v05_01_01

-   2016-02-24 Lynn Garren : larreco v05_01_01 for larsoft v05_01_01
-   2016-02-24 Jonathan Davies : Fixing bug in RawHitFinder which was causing raw adcs to not be filled when the Compression Type was set to kNone

## larsim v05_00_03

-   2016-02-24 Lynn Garren : larsim v05_00_03 for larsoft v05_01_01
-   2016-02-23 Lynn Garren : changes for genie v2_10_4

## larevt v05_00_03

-   2016-02-24 Lynn Garren : larevt v05_00_03 for larsoft v05_01_01

## lardata v05_01_01

-   2016-02-24 Lynn Garren : lardata v05_01_01 for larsoft v05_01_01

## larcore v05_00_01

## larbatch v01_20_04

## larutils v1_05_02
