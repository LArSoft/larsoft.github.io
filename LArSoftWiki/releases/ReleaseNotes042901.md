# LArSoft v04_29_01 Release Notes



[list of LArSoft releases](LArSoft_release_list)  
[Download instructions](https://scisoft.fnal.gov/scisoft/bundles/larsoft/v04_29_01/larsoft-v04_29_01.html)

## Purpose

-   integrate changes to develop since v04_29_00

## New features

## Bug fixes

## Updated dependencies

# Change List

## larsoft v04_29_01

-   2015-11-04 Lynn Garren : larsoft v04_29_01 for larsoft v04_29_01
-   2015-11-04 Lynn Garren : update product versions
-   2015-11-04 Lynn Garren : update dependency database
-   2015-11-02 Lynn Garren : the Mavericks build is available

## lareventdisplay v04_12_03

-   2015-11-04 Lynn Garren : lareventdisplay v04_12_03 for larsoft v04_29_01
-   2015-11-04 Tingjun Yang : Change event display to use reconstructed shower start.

## larexamples v04_06_04

-   2015-11-04 Lynn Garren : larexamples v04_06_04 for larsoft v04_29_01

## larpandora v04_08_04

-   2015-11-04 Lynn Garren : larpandora v04_08_04 for larsoft v04_29_01

## larana v04_16_00

-   2015-11-04 Lynn Garren : larana v04_16_00 for larsoft v04_29_01
-   2015-11-03 drinkingkazu : feature enhanced ophit finder sliding window algo —kazu

## larreco v04_22_01

-   2015-11-04 Lynn Garren : larreco v04_22_01 for larsoft v04_29_01
-   2015-11-03 Mike Wallbank : Protected against exception thrown by recob::Track::PitchInView() when pitch is zero
-   2015-10-29 Tingjun Yang : Merge branch 'develop' of ssh://cdcvs.fnal.gov/cvs/projects/larreco into feature/dstefan_DirOfGamma
-   2015-10-29 Gianluca Petrillo : Turned a couple of methods in CCTrackMaker into constant.
-   2015-10-29 Gianluca Petrillo : Fixed an uninitialized variable bug in CCTrackMaker module (need to check if the added value is sensible)
-   2015-10-28 Gianluca Petrillo : One bug fixed in CCTrackMaker module.
-   2015-10-28 Gianluca Petrillo : Made VertexFitAlg arguments constants when they should be
-   2015-10-28 Tingjun Yang : More code improvements following Gianluca's suggestions.

## larsim v04_14_02

-   2015-11-04 Lynn Garren : larsim v04_14_02 for larsoft v04_29_01
-   2015-11-03 Thomas Warburton : Fixing an observed error with the energy returned by sampling. Now fully consistent with Vitalys fortran code.
-   2015-10-30 Thomas Warburton : Fixing a bug with the calculation of the normalisation.

## larevt v04_13_04

-   2015-11-04 Lynn Garren : larevt v04_13_04 for larsoft v04_29_01

## lardata v04_18_02

-   2015-11-04 Lynn Garren : lardata v04_18_02 for larsoft v04_29_01
-   2015-10-30 Jonathan Insler : Added check that adc vector index+2 is not greater than size of vector to prevent out-of-boundary error
-   2015-10-30 Jonathan Insler : Fixed bug in zero suppression where blocks above threshold that hit end of ADC vector were not saved

## larcore v04_20_00

## larbatch v01_19_00

-   2015-11-04 Lynn Garren : larbatch v01_19_00 for larsoft v04_29_01
-   2015-10-30 Herbert Greenlee : Teach subruns.py how to determine the run and subrun numbers for beam data ntuples.

## larutils v1_04_03

-   2015-11-04 Lynn Garren : larutils v1_04_03 for larsoft v04_29_01
-   2015-11-04 Lynn Garren : use oldver
-   2015-10-30 Lynn Garren : allow Mavericks XCode 6 build
-   2015-10-28 Lynn Garren : adding s21
