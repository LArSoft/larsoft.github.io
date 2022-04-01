# LArSoft v09_29_00 Release Notes



[list of LArSoft releases](LArSoft_release_list)  
Download instructions for [larsoft v09_29_00](https://scisoft.fnal.gov/scisoft/bundles/larsoft/v09_29_00/larsoft-v09_29_00.html)  
Download instructions for [just larsoftobj v09_08_00](https://scisoft.fnal.gov/scisoft/bundles/larsoftobj/v09_08_00/larsoftobj-v09_08_00.html)

## Purpose

-   changes in develop
-   approved PRs

## New features

-   lardataalg PR 24
    -   Update drift velocity calculation to include an additional optional model
-   larwirecell PR 12
    -   Fix translation between wct and larsoft for labelling plane views
    -   Relevant for some VD geometries especially

## Bug fixes

## Updated dependencies

# Change List

## larsoft v09_29_00

-   2021-09-14 Lynn Garren : larsoft v09_29_00 for larsoft v09_29_00
-   2021-09-14 Lynn Garren : product versons

## lareventdisplay v09_01_20

-   2021-09-14 Lynn Garren : lareventdisplay v09_01_20 for larsoft v09_29_00

## larexamples v09_01_19

-   2021-09-14 Lynn Garren : larexamples v09_01_19 for larsoft v09_29_00

## larpandora v09_07_06

-   2021-09-14 Lynn Garren : larpandora v09_07_06 for larsoft v09_29_00

## larsimrad v09_01_19

-   2021-09-14 Lynn Garren : larsimrad v09_01_19 for larsoft v09_29_00

## larrecodnn v09_08_06

-   2021-09-14 Lynn Garren : larrecodnn v09_08_06 for larsoft v09_29_00

## larwirecell v09_03_00

-   2021-09-14 Lynn Garren : larwirecell v09_03_00 for larsoft v09_29_00
-   2021-09-14 Lynn Garren : whitespace cleanup
-   2021-09-10 Lynn Garren : Merge pull request \#12 from nitish-nayak/develop
-   2021-09-08 nitish-nayak : Have to cast Json::Value into int first to convert it to geo::View_t
-   2021-09-07 nitish-nayak : remove comments + allow exception to be thrown when view is not resolved
-   2021-09-07 nitish-nayak : Fix translation between wct and larsoft for labelling plane views, relevant for VD especially

## larana v09_02_16

-   2021-09-14 Lynn Garren : larana v09_02_16 for larsoft v09_29_00

## larreco v09_06_16

-   2021-09-14 Lynn Garren : larreco v09_06_16 for larsoft v09_29_00

## larsim v09_14_08

-   2021-09-14 Lynn Garren : larsim v09_14_08 for larsoft v09_29_00

## larg4 v09_03_15

-   2021-09-14 Lynn Garren : larg4 v09_03_15 for larsoft v09_29_00

## larevt v09_02_11

-   2021-09-14 Lynn Garren : larevt v09_02_11 for larsoft v09_29_00

## lardata v09_02_09

-   2021-09-14 Lynn Garren : lardata v09_02_09 for larsoft v09_29_00

## larcore v09_02_04

## larpandoracontent v03_24_02

## larsoftobj v09_08_00

-   2021-09-14 Lynn Garren : larsoftobj v09_08_00 for larsoft v09_29_00
-   2021-09-14 Lynn Garren : product versons

## lardataobj v09_01_06

## lardataalg v09_05_00

-   2021-09-14 Lynn Garren : lardataalg v09_05_00 for larsoft v09_29_00
-   2021-09-14 Lynn Garren : Merge pull request \#24 from brucehoward-physics/feature/howard_driftVel
-   2021-09-13 Bruce Howard : Make the UseIcarusMicrobooneDriftModel default to false.
-   2021-09-07 Bruce Howard : Change std pow in the polynomial for optional drift velocity calc to instead use cet pow. Thanks Kyle.
-   2021-09-03 Bruce Howard : Applying clang-format to lardataalg/DetectorInfo/DetectorPropertiesStandard.cxx and lardataalg/DetectorInfo/DetectorPropertiesStandard.h
-   2021-09-03 Bruce Howard : Add alternative formulation of drift velocity calculation from arXiv:2008.09765 of MicroBooNE using ICARUS and MicroBooNE data. This is allowed to be used optionally via a UseIcarusMicrobooneDriftModel fhicl switch.

## larcorealg v09_02_01

## larcoreobj v09_02_01

## webevd v09_05_10

-   2021-09-14 Lynn Garren : webevd v09_05_10 for larsoft v09_29_00

## larbatch v01_56_01

## larutils v1_28_02
