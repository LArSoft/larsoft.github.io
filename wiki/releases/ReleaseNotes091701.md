# LArSoft v09_17_01 Release Notes



[list of LArSoft releases](LArSoft_release_list)  
Download instructions for [larsoft v09_17_01](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v09_17_01/larsoft-v09_17_01.html)  
Download instructions for [just larsoftobj v09_05_00](http://scisoft.fnal.gov/scisoft/bundles/larsoftobj/v09_05_00/larsoftobj-v09_05_00.html)

## Purpose

-   changes in develop
-   approved PRs

## New features

-   larsim PR 63
    -   Add DoFastComponent option to PDFastSimPAR
    -   Add a new fhicl option to turn on and off the Early (singlet) light component as well as the Late (triplet) light component. This is particularly helpful in the context of Xe doping simulation which often has only a late light component. The option has a default value of True for backwards compatibility, making this a non-breaking change.

## Bug fixes

## Updated dependencies

-   libwda v2_29_1
    -   In version v2_29_0, control over the connection timeout used in the library was introduced via the LIBWDA_CONNECTTIMEOUT environment variable.
    -   Now you can set a custom timeout value instead of the default 30s if necessary. The debug output has been improved as well.
-   ifdh_art v2_11_05
-   nuevdb v1_03_03
-   nugen v1_11_03
-   nusystematics v00_11_03
-   ppfx v02_13_02

# Change List

## larsoft v09_17_01

-   2021-02-24 Lynn Garren : larsoft v09_17_01 for larsoft v09_17_01
-   2021-02-24 Lynn Garren : product versions
-   2021-02-18 Lynn Garren : stan builds with c7, e19, and e20
-   2021-02-18 Lynn Garren : forgot u20 workaround

## lareventdisplay v09_01_02

-   2021-02-24 Lynn Garren : lareventdisplay v09_01_02 for larsoft v09_17_01

## larexamples v09_01_02

-   2021-02-24 Lynn Garren : larexamples v09_01_02 for larsoft v09_17_01

## larpandora v09_05_03

-   2021-02-24 Lynn Garren : larpandora v09_05_03 for larsoft v09_17_01

## larsimrad v09_01_02

-   2021-02-24 Lynn Garren : larsimrad v09_01_02 for larsoft v09_17_01

## larrecodnn v09_06_01

-   2021-02-24 Lynn Garren : larrecodnn v09_06_01 for larsoft v09_17_01

## larwirecell v09_02_01

-   2021-02-24 Lynn Garren : larwirecell v09_02_01 for larsoft v09_17_01

## larana v09_01_02

-   2021-02-24 Lynn Garren : larana v09_01_02 for larsoft v09_17_01

## larreco v09_05_02

-   2021-02-24 Lynn Garren : larreco v09_05_02 for larsoft v09_17_01

## larsim v09_10_01

-   2021-02-24 Lynn Garren : larsim v09_10_01 for larsoft v09_17_01
-   2021-02-24 Lynn Garren : Merge pull request \#63 from aihimmel/develop
-   2021-02-19 Alex Himmel : Add option to disable FastComponent. Helpful for Xe Doping simulation.
-   2021-02-19 Alex Himmel : Remove a stub tool not actually implemented here. Instead, implement Xe doping in dunetpc since it is experiment-specific.

## larg4 v09_03_01

-   2021-02-24 Lynn Garren : larg4 v09_03_01 for larsoft v09_17_01

## larevt v09_02_01

-   2021-02-24 Lynn Garren : larevt v09_02_01 for larsoft v09_17_01

## lardata v09_02_00

## larcore v09_02_00

## larpandoracontent v03_22_07

## larsoftobj v09_05_00

## lardataobj v09_01_00

## lardataalg v09_04_00

## larcorealg v09_01_00

## larcoreobj v09_02_00

## webevd v09_05_00

## larbatch v01_54_01

## larutils v1_27_04
