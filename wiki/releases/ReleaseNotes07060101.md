# LArSoft v07_06_01_01 Release Notes



[list of LArSoft releases](LArSoft_release_list)  
Download instructions for [larsoft v07_06_01_01](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v07_06_01_01/larsoft-v07_06_01_01.html)  
Download instructions for [just larsoftobj v07_03_01_01](http://scisoft.fnal.gov/scisoft/bundles/larsoftobj/v07_03_01_01/larsoftobj-v07_03_01_01.html)

## Purpose

-   This release is identical to v07_06_01 with the exception of changes needed to use genie v3_0_0_b4a.
-   feature/team_for_genie_v3 is provided for argoneutcode, dunetpc, sbndcode, and uboonecode
-   ***THIS IS A TEST RELEASE.***

## Required changes

-   All headers have moved. Most retain the same name, but NeutronOscMode.h is now NNBarOscMode.h with a corresponding class name change.
-   The libraries have been completely rearranged and renamed.
-   There is now an explicit library link time dependence on gsl and gslcblas.
    -   see uboonecode feature/team_for_genie_v3
-   **A migration script is provided: UpdateGenie3.sh**
    -   setup larsoft v07_06_01_01 to use the migration script.
    -   NOTE: Because of the library rearrangement, you may need to add new libraries to your link list. (see uboonecode feature/team_for_genie_v3)

## Updated dependencies

-   genie v3_0_0_b4a
-   dk2nugenie v01_07_02a
-   nutools v2_25_01
-   nusystematics v0_02_00

# Change List

## larsoft v07_06_01_01

-   2018-09-20 Lynn Garren : larsoft v07_06_01_01 for larsoft v07_06_01_01_br
-   2018-09-20 Lynn Garren : product versions
-   2018-09-20 Lynn Garren : deal with NeutronOscMode to NNBarOscMode changes
-   2018-09-19 Lynn Garren : genie v3 migration scripts

## lareventdisplay v07_01_05_01

-   2018-09-20 Lynn Garren : lareventdisplay v07_01_05_01 for larsoft v07_06_01_01_br

## larexamples v07_00_08_01

-   2018-09-20 Lynn Garren : larexamples v07_00_08_01 for larsoft v07_06_01_01_br

## larg4 v07_01_03_01

-   2018-09-20 Lynn Garren : larg4 v07_01_03_01 for larsoft v07_06_01_01_br

## larpandora v07_01_05_01

-   2018-09-20 Lynn Garren : larpandora v07_01_05_01 for larsoft v07_06_01_01_br

## larwirecell v07_01_02_01

-   2018-09-20 Lynn Garren : larwirecell v07_01_02_01 for larsoft v07_06_01_01_br

## larana v07_02_01_01

-   2018-09-20 Lynn Garren : larana v07_02_01_01 for larsoft v07_06_01_01_br

## larreco v07_04_01_01

-   2018-09-20 Lynn Garren : larreco v07_04_01_01 for larsoft v07_06_01_01_br
-   2018-09-20 Lynn Garren : nutools v2_25_00

## larsim v07_03_01_01

-   2018-09-20 Lynn Garren : larsim v07_03_01_01 for larsoft v07_06_01_01_br
-   2018-09-20 Lynn Garren : NeutronOscMode is now NNBarOscMode
-   2018-09-19 Lynn Garren : using new genie v3 library names
-   2018-09-18 Lynn Garren : remove unnecessary find library commands
-   2018-09-18 Lynn Garren : genie v3 headers

## larevt v07_00_08_01

-   2018-09-20 Lynn Garren : larevt v07_00_08_01 for larsoft v07_06_01_01_br

## lardata v07_00_08_01

-   2018-09-20 Lynn Garren : lardata v07_00_08_01 for larsoft v07_06_01_01_br
-   2018-09-20 Lynn Garren : nutools v2_25_00

## larcore v07_00_02

## larpandoracontent v03_14_01

## larsoftobj v07_03_01_01

-   2018-09-20 Lynn Garren : larsoftobj v07_03_01_01 for larsoft v07_06_01_01_br
-   2018-09-20 Lynn Garren : product versions

## lardataobj v07_02_03_01

-   2018-09-20 Lynn Garren : lardataobj v07_02_03_01 for larsoft v07_06_01_01_br
-   2018-09-20 Lynn Garren : nusimdata v1_14_02

## lardataalg v07_01_01_01

-   2018-09-20 Lynn Garren : lardataalg v07_01_01_01 for larsoft v07_06_01_01_br

## larcorealg v07_01_01

## larcoreobj v07_00_01

## larbatch v01_45_00

## larutils v1_23_02
