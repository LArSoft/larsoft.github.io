# LArSoft v04_28_00 Release Notes



[list of LArSoft releases](LArSoft_release_list)  
[Download instructions](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v04_28_00/larsoft-v04_28_00.html)

## Purpose

-   build with art v1_17_02 to resolve \#10614
-   With the exception of the 3 files listed below, the code is the same as in v04_27_01.

## New features

-   art v1_17_02 [Release Notes](https://cdcvs.fnal.gov/redmine/projects/art/wiki/Release_Notes_11702)
    -   <span style="color:red;">\[ Breaking change \]</span> <span style="color:blue;">Verification that products are put on the event:</span> Per experiment request, it is now an error by default to fail to put a product on an event if a product has been declared in the module constructor using `produces<MyProduct>("optionalInstanceName")`. Failure to “put a product” may indicate a design flaw, which can cause difficulties in downstream `art` processes. For cases where conditional product-putting is required, the old behavior can be restored via FHiCL configuration. Resolves feature \#7852 (see posting for details).
-   minor changes were required in 3 files to accommodate the new logic
    -   lardata/Utilities/TimeService_service.cc
    -   larreco/TrackFinder/CCTrackMaker_module.cc
    -   larana/ParticleIdentification/Chi2ParticleID_module.cc

## Bug fixes

-   \#10614

## Updated dependencies

|               |          |               |                 |
|---------------|----------|---------------|-----------------|
| Product       | Version  | Qualifiers    | Notes           |
| art           | v1_17_02 | e9:nu         | resolve \#10614 |
| artdaq_core   | v1_04_20 | e9:nu:s20     |                 |
| ifdh_art      | v1_13_03 | e9:nu:s20     |                 |
| nutools       | v1_16_00 | e9\[:noifdh\] |                 |
| artextensions | v1_02_01 | e9:nu:s20     |                 |
| cetbuildtools | v4_16_00 |               |                 |

# Change List

## larsoft v04_28_00

-   2015-10-23 Lynn Garren : larsoft v04_28_00 for larsoft v04_28_00
-   2015-10-23 Lynn Garren : update product versions

## lareventdisplay v04_12_01

-   2015-10-23 Lynn Garren : lareventdisplay v04_12_01 for larsoft v04_28_00

## larexamples v04_06_02

-   2015-10-23 Lynn Garren : larexamples v04_06_02 for larsoft v04_28_00

## larpandora v04_08_02

-   2015-10-23 Lynn Garren : larpandora v04_08_02 for larsoft v04_28_00

## larana v04_15_02

-   2015-10-23 Lynn Garren : larana v04_15_02 for larsoft v04_28_00
-   2015-10-23 Lynn Garren : produce the promised products

## larreco v04_21_01

-   2015-10-23 Lynn Garren : larreco v04_21_01 for larsoft v04_28_00
-   2015-10-23 Lynn Garren : don't register a product which is never created

## larsim v04_14_00

-   2015-10-23 Lynn Garren : larsim v04_14_00 for larsoft v04_28_00

## larevt v04_13_02

-   2015-10-23 Lynn Garren : larevt v04_13_02 for larsoft v04_28_00

## lardata v04_18_00

-   2015-10-23 Lynn Garren : lardata v04_18_00 for larsoft v04_28_00
-   2015-10-23 Lynn Garren : make sure trig_handle is not empty

## larcore v04_19_00

-   2015-10-23 Lynn Garren : larcore v04_19_00 for larsoft v04_28_00

## larbatch v01_18_00

## larutils v1_04_01

-   2015-10-23 Lynn Garren : larutils v1_04_01 for larsoft v04_28_00
-   2015-10-23 Lynn Garren : add s20 and check XCode
