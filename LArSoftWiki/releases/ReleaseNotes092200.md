# LArSoft v09_22_00 Release Notes



[list of LArSoft releases](LArSoft_release_list)  
Download instructions for [larsoft v09_22_00](https://scisoft.fnal.gov/scisoft/bundles/larsoft/v09_22_00/larsoft-v09_22_00.html)  
Download instructions for [just larsoftobj v09_05_02](https://scisoft.fnal.gov/scisoft/bundles/larsoftobj/v09_05_02/larsoftobj-v09_05_02.html)

## Purpose

-   changes in develop
-   approved PRs

## New features

-   larsim PR 67
    -   updates to use marley v1_2_0
    -   Eliminate the ugly hacks used to convert FHiCL into MARLEY's native JSON format. Instead, use a new class derived from fhicl::ParameterSetWalker to manage the conversion. Forego FHiCL validation of the generator settings in favor of letting MARLEY handle that itself. Adjust prodmarley.fcl so that it is experiment-agnostic.

## Bug fixes

-   lardataalg PR 22
    -   Method in util::quantities::Quantity made const
    -   Due to an oversight, a few methods were non-const
-   larwirecell PR 10
    -   make “ICARUS” namespace anonymous
    -   The module is for generic purposes, and the “ICARUS” namespace was unintentional.

## Updated dependencies

-   marley v1_2_0
-   nugen v1_12_00
-   nusystematics v00_11_04

# Change List

## larsoft v09_22_00

-   2021-04-14 Lynn Garren : larsoft v09_22_00 for larsoft v09_22_00
-   2021-04-14 Lynn Garren : product versions

## lareventdisplay v09_01_07

-   2021-04-14 Lynn Garren : lareventdisplay v09_01_07 for larsoft v09_22_00

## larexamples v09_01_07

-   2021-04-14 Lynn Garren : larexamples v09_01_07 for larsoft v09_22_00

## larpandora v09_05_08

-   2021-04-14 Lynn Garren : larpandora v09_05_08 for larsoft v09_22_00

## larsimrad v09_01_07

-   2021-04-14 Lynn Garren : larsimrad v09_01_07 for larsoft v09_22_00

## larrecodnn v09_06_06

-   2021-04-14 Lynn Garren : larrecodnn v09_06_06 for larsoft v09_22_00

## larwirecell v09_02_04

-   2021-04-14 Lynn Garren : larwirecell v09_02_04 for larsoft v09_22_00
-   2021-04-14 Lynn Garren : Merge pull request \#10 from PetrilloAtWork/patch-1
-   2021-04-14 Gianluca Petrillo : Turning namespace of geometry module to anonymous
-   2021-04-13 Gianluca Petrillo : Adopted “official” ICARUS namespace spelling

## larana v09_02_03

-   2021-04-14 Lynn Garren : larana v09_02_03 for larsoft v09_22_00

## larreco v09_06_03

-   2021-04-14 Lynn Garren : larreco v09_06_03 for larsoft v09_22_00

## larsim v09_13_00

-   2021-04-14 Lynn Garren : larsim v09_13_00 for larsoft v09_22_00
-   2021-04-08 Steven Gardiner : Update the larsim interface to MARLEY for compatbility with v1.2.0. Eliminate the ugly hacks used to convert FHiCL into MARLEY's native JSON format. Instead, use a new class derived from ParameterSetWalker to manage the conversion. Forego FHiCL validation of the generator settings in favor of letting MARLEY handle that itself. Adjust prodmarley.fcl so that it is experiment-agnostic.

## larg4 v09_03_04

-   2021-04-14 Lynn Garren : larg4 v09_03_04 for larsoft v09_22_00

## larevt v09_02_03

-   2021-04-14 Lynn Garren : larevt v09_02_03 for larsoft v09_22_00

## lardata v09_02_02

-   2021-04-14 Lynn Garren : lardata v09_02_02 for larsoft v09_22_00

## larcore v09_02_01

## larpandoracontent v03_22_09

## larsoftobj v09_05_02

-   2021-04-14 Lynn Garren : larsoftobj v09_05_02 for larsoft v09_22_00
-   2021-04-14 Lynn Garren : product versions

## lardataobj v09_01_01

## lardataalg v09_04_02

-   2021-04-14 Lynn Garren : lardataalg v09_04_02 for larsoft v09_22_00
-   2021-04-13 Lynn Garren : Merge pull request \#22 from PetrilloAtWork/feature/gp_quantityConstConv
-   2021-04-12 Gianluca Petrillo : Method in util::quantities::Quantity made const

## larcorealg v09_01_01

## larcoreobj v09_02_00

## webevd v09_05_03

-   2021-04-14 Lynn Garren : webevd v09_05_03 for larsoft v09_22_00

## larbatch v01_55_01

## larutils v1_28_00
