# LArSoft v06_67_00 Release Notes



[list of LArSoft releases](LArSoft_release_list)  
Download instructions for [larsoft v06_67_00](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v06_67_00/larsoft-v06_67_00.html)  
Download instructions for [just larsoftobj v1_39_00](http://scisoft.fnal.gov/scisoft/bundles/larsoftobj/v1_39_00/larsoftobj-v1_39_00.html)

## Purpose

-   **build with e15 (gcc 6.4.0)**
-   changes to develop
-   approved feature branches

## New features

-   larexamples feature/cerati_RecoProxyUsageExample
    -   a simple example to access information from the proxy
-   larana feature/usher_mcparticlehitassociations_reconcile_production

## Known issues

-   in a few rare cases, gcc 6.4.0 reports “set but unused” variables that were not previously reported
    -   see issue \#18868

## Updated dependencies

-   Using the e15 qualifier instead of the e14 qualifier.
-   caffe v1_0g
-   mrb v1_14_00
    -   resolve \#18838
    -   provide new changeQual command for use by code librarians

# Change List

## larsoft v06_67_00

-   2018-02-01 Lynn Garren : larsoft v06_67_00 for larsoft v06_67_00
-   2018-02-01 Lynn Garren : now distributing caffe v1_0g

## lareventdisplay v06_17_00

-   2018-02-01 Lynn Garren : lareventdisplay v06_17_00 for larsoft v06_67_00

## larexamples v06_10_00

-   2018-02-01 Lynn Garren : larexamples v06_10_00 for larsoft v06_67_00
-   2018-01-29 Giuseppe Cerati : adding RecoProxyUsageExample

## larpandora v06_22_00

-   2018-02-01 Lynn Garren : larpandora v06_22_00 for larsoft v06_67_00

## larwirecell v06_10_00

-   2018-02-01 Lynn Garren : larwirecell v06_10_00 for larsoft v06_67_00

## larana v06_16_00

-   2018-02-01 Lynn Garren : larana v06_16_00 for larsoft v06_67_00
-   2018-01-31 Usher, Tracy L : Make sure fhicl file includes the right fhicl file!
-   2018-01-31 Usher, Tracy L : Reconciling with the larsoft production branch for uboone, re-toolifying the art tools for handling truth information, getting the cmake files straightened out, etc. Should now be consistent with production branch

## larreco v06_54_00

-   2018-02-01 Lynn Garren : larreco v06_54_00 for larsoft v06_67_00
-   2018-02-01 Lynn Garren : workaround for an unused variable warning (uniqueSpptIt)
-   2018-01-30 Tingjun Yang : Install header to resolve an issue in dunetpc.

## larsim v06_40_00

-   2018-02-01 Lynn Garren : larsim v06_40_00 for larsoft v06_67_00

## larevt v06_18_00

-   2018-02-01 Lynn Garren : larevt v06_18_00 for larsoft v06_67_00

## lardata v06_39_00

-   2018-02-01 Lynn Garren : lardata v06_39_00 for larsoft v06_67_00

## larcore v06_17_00

-   2018-02-01 Lynn Garren : larcore v06_17_00 for larsoft v06_67_00

## larpandoracontent v03_09_04

-   2018-02-01 Lynn Garren : larpandoracontent v03_09_04 for larsoft v06_67_00
-   2018-02-01 Lynn Garren : v03_09_04 for e15

## larsoftobj v1_39_00

-   2018-02-01 Lynn Garren : larsoftobj v1_39_00 for larsoft v06_67_00
-   2018-02-01 Lynn Garren : fix typo
-   2018-02-01 Lynn Garren : update versions

## lardataobj v1_28_00

-   2018-02-01 Lynn Garren : lardataobj v1_28_00 for larsoft v06_67_00
-   2018-01-24 Gianluca Petrillo : Added missing classes for association dictionary

## larcorealg v1_17_00

-   2018-02-01 Lynn Garren : larcorealg v1_17_00 for larsoft v06_67_00

## larcoreobj v1_20_00

-   2018-02-01 Lynn Garren : larcoreobj v1_20_00 for larsoft v06_67_00

## larbatch v01_36_01

## larutils v1_20_07

-   2018-02-01 Lynn Garren : Merge branch 'develop' into release/v06_67_00
-   2018-02-01 Lynn Garren : add e15
-   2018-02-01 Lynn Garren : larutils v1_20_07 for larsoft v06_67_00
-   2018-01-26 Tingjun Yang : Change dot to dash.
-   2018-01-26 Thomas Junk : escape the dot
-   2018-01-26 Thomas Junk : wants to merge Merge branch 'develop' of ssh://cdcvs.fnal.gov/cvs/projects/larutils into develop
-   2018-01-26 Thomas Junk : dots and dashes (morse code)
-   2018-01-24 Tingjun Yang : Fix typo.
-   2018-01-24 Tingjun Yang : Add dunepdsprce to dune manifest.
