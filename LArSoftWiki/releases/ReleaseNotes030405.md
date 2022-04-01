# LArSoft v03_04_05 Release Notes



[list of LArSoft releases](LArSoft_release_list)  
[Download instructions](https://scisoft.fnal.gov/scisoft/bundles/larsoft/v03_04_05/larsoft-v03_04_05.html)

## Purpose

-   Changes in develop since v03_04_04

## New features

-   LBNE is testing a new fast hit finder that works directly on the raw waveforms (rawdigits) and skips  
    the deconvolution (caldata) step. Thus there is no recob:Wire object, which would normally be  
    created in the caldata step. The disambig-cheater routine, which creates a new set of hits, previously  
    assumed that the recob:Wire object existed. The new version does not.

## Bug fixes

-   \#7460 (NaNs in simulation) is fixed

## Updated dependencies

# Change List

## larsoft v03_04_05

-   2014-12-10 Lynn Garren : mrb v1_03_02 with small fix for OSX
-   2014-12-10 Lynn Garren : larsoft v03_04_05 for larsoft v03_04_05
-   2014-12-10 Lynn Garren : product versions
-   2014-12-02 Lynn Garren : product versions

## lareventdisplay v03_02_08

-   2014-12-10 Lynn Garren : lareventdisplay v03_02_08 for larsoft v03_04_05

## larexamples v03_02_08

-   2014-12-10 Lynn Garren : larexamples v03_02_08 for larsoft v03_04_05

## larpandora v03_04_01

-   2014-12-10 Lynn Garren : larpandora v03_04_01 for larsoft v03_04_05

## larana v03_03_05

-   2014-12-10 Lynn Garren : larana v03_03_05 for larsoft v03_04_05
-   2014-12-05 Alex Himmel : Disable unipolar histograms which don't make sense for the 35ton optical digitizer.

## larreco v03_04_00

-   2014-12-10 Lynn Garren : larreco v03_04_00 for larsoft v03_04_05
-   2014-12-08 Michelle Stancari : Change hit construction to use rawdigits instead of recob:Wire, needed for fast hit finder
-   2014-12-08 Wesley Ketchum : add in some comparisons for peak amplitude and time
-   2014-12-05 Wesley Ketchum : change channel type to plane in hitfinderana
-   2014-12-05 Wesley Ketchum : add in a map for collecting MCHits from the same particle together

## larsim v03_03_00

-   2014-12-10 Lynn Garren : larsim v03_03_00 for larsoft v03_04_05
-   2014-12-10 Gianluca Petrillo : Adding a error message when trying to add no electrons or no energy to a SimChannel
-   2014-12-09 Gianluca Petrillo : Fix to Issue \#7460: do not add ionization contributions with no electrons to SimChannel's

## larevt v03_02_08

-   2014-12-10 Lynn Garren : larevt v03_02_08 for larsoft v03_04_05

## lardata v03_04_01

-   2014-12-10 Lynn Garren : lardata v03_04_01 for larsoft v03_04_05

## larcore v03_03_04

-   2014-12-10 Lynn Garren : larcore v03_03_04 for larsoft v03_04_05
-   2014-12-09 Gianluca Petrillo : Removed a (long) debugging output line
