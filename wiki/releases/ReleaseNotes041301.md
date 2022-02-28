# LArSoft v04_13_01 Release Notes



[list of LArSoft releases](LArSoft_release_list)  
[Download instructions](https://scisoft.fnal.gov/scisoft/bundles/larsoft/v04_13_01/larsoft-v04_13_01.html)

## Purpose

-   changes to development since v04_13_00
-   final release with art v1_14_02

## New features

## Bug fixes

## Updated dependencies

# Change List

## larsoft v04_13_01

-   2015-06-24 Lynn Garren : larsoft v04_13_01 for larsoft v04_13_01
-   2015-06-23 Lynn Garren : need genie_xsec v2_8_6a
-   2015-06-19 Lynn Garren : need find_ups_product calls for the dependencies

## lareventdisplay v04_05_02

-   2015-06-24 Lynn Garren : lareventdisplay v04_05_02 for larsoft v04_13_01

## larexamples v04_04_12

-   2015-06-24 Lynn Garren : larexamples v04_04_12 for larsoft v04_13_01

## larpandora v04_04_12

-   2015-06-24 Lynn Garren : larpandora v04_04_12 for larsoft v04_13_01

## larana v04_07_04

-   2015-06-24 Lynn Garren : larana v04_07_04 for larsoft v04_13_01

## larreco v04_09_01

-   2015-06-24 Lynn Garren : larreco v04_09_01 for larsoft v04_13_01
-   2015-06-23 Robert Sulej : add function for dQdx in EM shower start
-   2015-06-23 Robert Sulej : correct missing id of created tracks
-   2015-06-22 Tracy Usher : Merge branch 'develop' of ssh://cdcvs.fnal.gov/cvs/projects/larreco into develop
-   2015-06-22 Tracy Usher : Fix bug where special case of cross axes detected (small fraction of events) did not return a new second cluster
-   2015-06-19 Mike Wallbank : Changes to BlurredClustering: changed the blurring process so it extends differently in each direction (makes much more sense); made the clustering radii parameters and increased them for better clustering
-   2015-06-19 Robert Sulej : functions for shower initial segment recontruction
-   2015-06-19 Robert Sulej : Merge branch 'develop' of ssh://cdcvs.fnal.gov/cvs/projects/larreco into develop
-   2015-06-19 Robert Sulej : more efficient use of clusters
-   2015-06-19 Robert Sulej : added fcl params for 2D validation distances and weighting data from different planes
-   2015-06-19 Robert Sulej : fix in the gradient formula
-   2015-06-19 Tingjun Yang : Merge branch 'develop' of ssh://cdcvs.fnal.gov/cvs/projects/larreco into develop
-   2015-06-19 Tingjun Yang : Change HitErrFac from 0.6 to 2.0.
-   2015-06-18 Robert Sulej : Merge branch 'develop' into feature/rsulej_PmaTrack3D
-   2015-06-18 Robert Sulej : add function to check cluster usage (for devel. purposes mainly)
-   2015-06-18 Robert Sulej : use ind planes and fix track flipping by dQdx

## larsim v04_07_08

-   2015-06-24 Lynn Garren : larsim v04_07_08 for larsoft v04_13_01

## larevt v04_08_02

-   2015-06-24 Lynn Garren : larevt v04_08_02 for larsoft v04_13_01

## lardata v04_09_01

-   2015-06-24 Lynn Garren : lardata v04_09_01 for larsoft v04_13_01
-   2015-06-23 Taritree Wonjigrad : removed used of boost bimap by uboone connection database service. keeping copy in order to prevent repeated queries to database. instead access to const&amp; provided. also provide reverse channel map as well.
-   2015-06-22 Taritree Wonjigrad : added bimap for uboone channel map database

## larcore v04_11_00

## larbatch v01_11_01

-   2015-06-24 Lynn Garren : larbatch v01_11_01 for larsoft v04_13_01
-   2015-06-20 Herbert Greenlee : Copy output files using “ifdh cp -D” instead of “ifch cp -r”.
-   2015-06-17 Lynn Garren : larsoft v04_13_00
-   2015-06-16 Tingjun Yang : Return production user name if the role is Production.

## larutils v1_00_12
