# LArSoft v08_35_01 Release Notes



[list of LArSoft releases](LArSoft_release_list)  
Download instructions for [larsoft v08_35_01](https://scisoft.fnal.gov/scisoft/bundles/larsoft/v08_35_01/larsoft-v08_35_01.html)  
Download instructions for [just larsoftobj v08_21_01](https://scisoft.fnal.gov/scisoft/bundles/larsoftobj/v08_21_01/larsoftobj-v08_21_01.html)

## Purpose

-   changes in develop
-   approved feature branches

## New features

-   Lengthen raw::RawDigit's fSamples
    -   https://indico.fnal.gov/event/22319/contribution/2/material/slides/0.pdf
    -   RawDigit samples is now type ULong64_t. The previous type was unsigned short.
    -   lardataobj, larevt feature/trj_rawdigitfsample64
    -   ubcore feature/trj_rawdigitfsample64
    -   [Breaking Change](Breaking_Changes#Lengthen-rawRawDigit-fSamples): Note that a few int loops will need to become explicit unsigned int loops.

## Bug fixes

## Updated dependencies

-   mrb v3_04_00
    -   options -B (top of build directory) and -P (top of product directory) added
    -   mrb cq (change qualifiers in ups/product_deps) improved

# Change List

## larsoft v08_35_01

-   2019-11-11 Lynn Garren : larsoft v08_35_01 for larsoft v08_35_01
-   2019-11-11 Lynn Garren : product versions

## lareventdisplay v08_08_21

-   2019-11-11 Lynn Garren : lareventdisplay v08_08_21 for larsoft v08_35_01
-   2019-11-10 Tingjun Yang : Draw shower ID.
-   2019-11-10 Tingjun Yang : Only draw track points in the current TPC.
-   2019-11-10 Tingjun Yang : Add protection if no hit is found.

## larexamples v08_02_26

-   2019-11-11 Lynn Garren : larexamples v08_02_26 for larsoft v08_35_01

## larg4 v08_05_03

-   2019-11-11 Lynn Garren : larg4 v08_05_03 for larsoft v08_35_01
-   2019-11-06 David Rivera : Initialize messageLogger instance for ParticleListAction_service. Cleaned unecessary headers. Added some debug messages.
-   2019-11-06 David Rivera : Fixed issue with events with multiple generators. More specifically the fix was to the loop over the list of Handles to MCTruth object lists.

## larpandora v08_07_25

-   2019-11-11 Lynn Garren : larpandora v08_07_25 for larsoft v08_35_01

## larwirecell v08_08_02

-   2019-11-11 Lynn Garren : larwirecell v08_08_02 for larsoft v08_35_01

## larana v08_12_01

-   2019-11-11 Lynn Garren : larana v08_12_01 for larsoft v08_35_01

## larreco v08_22_01

-   2019-11-11 Lynn Garren : larreco v08_22_01 for larsoft v08_35_01
-   2019-11-07 Tingjun Yang : Merge branch 'feature/usher_removerawdigits' into develop
-   2019-11-07 Tingjun Yang : Remove raw digits from disambiguation cheater.

## larsim v08_15_02

-   2019-11-11 Lynn Garren : larsim v08_15_02 for larsoft v08_35_01

## larevt v08_06_15

-   2019-11-11 Lynn Garren : larevt v08_06_15 for larsoft v08_35_01
-   2019-11-11 Lynn Garren : Merge branch 'feature/trj_rawdigitfsample64' into release/v08_35_01
-   2019-11-06 Thomas Junk : unsigned int loop counter. Should have warned before with the unsigned short but comparison but didn't.

## lardata v08_09_03

-   2019-11-11 Lynn Garren : lardata v08_09_03 for larsoft v08_35_01

## larcore v08_06_01

## larpandoracontent v03_15_08

## larsoftobj v08_21_01

-   2019-11-11 Lynn Garren : larsoftobj v08_21_01 for larsoft v08_35_01
-   2019-11-11 Lynn Garren : product versions

## lardataobj v08_06_03

-   2019-11-11 Lynn Garren : lardataobj v08_06_03 for larsoft v08_35_01
-   2019-11-11 Lynn Garren : Merge branch 'feature/trj_rawdigitfsample64' into release/v08_35_01
-   2019-11-06 Thomas Junk : upgrade fSamples from an unsigned short to a ULong64_t

## lardataalg v08_08_11

-   2019-11-11 Lynn Garren : lardataalg v08_08_11 for larsoft v08_35_01

## larcorealg v08_16_00

## larcoreobj v08_06_00

## larbatch v01_51_10

## larutils v1_25_01

-   2019-11-11 Lynn Garren : larutils v1_25_01 for larsoft v08_35_01
-   2019-11-06 Thomas Junk : allow multiple artdaq_core lines
