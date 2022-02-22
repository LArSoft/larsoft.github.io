# LArSoft v04_26_02 Release Notes



[list of LArSoft releases](LArSoft_release_list)  
[Download instructions](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v04_26_02/larsoft-v04_26_02.html)

## Purpose

-   Microboone requests a special build of larsoft. This request is related  
    to our ability to process the impending arrival of BNB beam data.

## New features

-   larana commits from Kazu

## Bug fixes

## Updated dependencies

|               |          |           |                                     |
|---------------|----------|-----------|-------------------------------------|
| Product       | Version  | Qualifier | Notes                               |
| cetbuildtools | v4_14_02 |           | [cetbuildtools:Release_Notes](https://cdcvs.fnal.gov/redmine/projects/cetbuildtools/wiki/Release_Notes) |

# Change List

## larsoft v04_26_02

-   2015-10-16 Lynn Garren : use larbase
-   2015-10-16 Lynn Garren : ifdh v1_8_7 and libwda v2_22_0 in source code manifest
-   2015-10-16 Lynn Garren : product names and cetbuildtools v4_14_02
-   2015-10-16 Lynn Garren : larsoft v04_26_02 for larsoft v04_26_02

## lareventdisplay v04_10_01

## larexamples v04_05_08

## larpandora v04_07_02

## larana v04_14_00

-   2015-10-16 Lynn Garren : larana v04_14_00 for larsoft v04_26_02
-   2015-10-16 Lynn Garren : match the type of first_index
-   2015-10-15 drinkingkazu : Adding new algorithm & a bit of re-organization —kazu

## larreco v04_19_01

## larsim v04_12_01

## larevt v04_12_01

## lardata v04_15_01

## larcore v04_17_02

## larbatch v01_18_00

-   2015-10-16 Lynn Garren : larbatch v01_18_00 for larsoft v04_26_02
-   2015-10-16 Herbert Greenlee : Sort input file list according to decreasing size to avoid having zero-event files first.
-   2015-10-15 Herbert Greenlee : Look for init, source, and end scripts on execution path (as well as allowing these scripts to be specified via their actual path).
-   2015-10-15 Herbert Greenlee : Automatically obtain a kca certificate (if necessary) before attempting to create a sam snapshot.
-   2015-10-15 Herbert Greenlee : Add error message.
-   2015-10-15 Herbert Greenlee : Make sure initialization and finalization scripts are executable.
-   2015-10-14 Herbert Greenlee : Catch exceptions from samweb when making pubs snapshot.
-   2015-10-14 Herbert Greenlee : Add support for multiple output streams and nonlinear staging. Raise PubsInputError if restricted pubs dataset definition would not return any files.

## larutils v1_04_00

-   2015-10-16 Lynn Garren : larutils v1_04_00 for larsoft v04_26_02
-   2015-10-15 Lynn Garren : adding a larbase distribution
-   2015-10-15 Lynn Garren : add s18:e9 support
-   2015-10-14 Lynn Garren : need nutools v1_14_05
