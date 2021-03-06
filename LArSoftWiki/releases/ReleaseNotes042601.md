# LArSoft v04_26_01 Release Notes



[list of LArSoft releases](LArSoft_release_list)  
[Download instructions](https://scisoft.fnal.gov/scisoft/bundles/larsoft/v04_26_01/larsoft-v04_26_01.html)

## Purpose

-   changes to develop since v04_26_00
-   new libwda and ifdhc

## New features

-   drop geant4 dependency in larcore
-   libwda v2_22_0 provides a debug output controlled by environment variable LIBWDA_DEBUG

## Bug fixes

## Updated dependencies

|         |          |               |                                 |
|---------|----------|---------------|---------------------------------|
| Product | Version  | Qualifier     | Notes                           |
| libwda  | v2_22_0  |               | optional debug output available |
| ifdhc   | v1_8_7  | e7:p279       |                                 |
| nutools | v1_14_05 | e7\[:noifdh\] |                                 |

# Change List

## larsoft v04_26_01

-   2015-10-14 Lynn Garren : larsoft v04_26_01 for larsoft v04_26_01
-   2015-10-14 Lynn Garren : update dependency database
-   2015-10-13 Lynn Garren : update product versions

## lareventdisplay v04_10_01

-   2015-10-14 Lynn Garren : lareventdisplay v04_10_01 for larsoft v04_26_01
-   2015-10-12 Gianluca Petrillo : Fixed a bug on channel status check that would never show any raw waveform in the display
-   2015-10-09 Tingjun Yang : Make shower points brighter in Ortho3D view.
-   2015-10-09 Tingjun Yang : Add protection in case there is no hit associated with showers.

## larexamples v04_05_08

-   2015-10-14 Lynn Garren : larexamples v04_05_08 for larsoft v04_26_01

## larpandora v04_07_02

-   2015-10-14 Lynn Garren : larpandora v04_07_02 for larsoft v04_26_01

## larana v04_13_01

-   2015-10-14 Lynn Garren : larana v04_13_01 for larsoft v04_26_01
-   2015-10-08 Lynn Garren : larsoft v04_26_00
-   2015-10-07 Thomas Warburton : Adding the BestFitParam variable to the Photon Detector T0.

## larreco v04_19_01

-   2015-10-14 Lynn Garren : larreco v04_19_01 for larsoft v04_26_01
-   2015-10-13 Mike Wallbank : Merge branch 'develop' of ssh://cdcvs.fnal.gov/cvs/projects/larreco into develop
-   2015-10-13 Mike Wallbank : revert back to incorrect code whilst still trying to understand the problems at hand
-   2015-10-11 Robert Sulej : time and power savings in vertexing code
-   2015-10-09 Robert Sulej : remove unused initialization code
-   2015-10-09 Robert Sulej : small optimization
-   2015-10-09 Mike Wallbank : Merge branch 'develop' into feature/wallbank_EMShowerToMerge
-   2015-10-09 Robert Sulej : Merge branch 'develop' of ssh://cdcvs.fnal.gov/cvs/projects/larreco into develop
-   2015-10-09 Robert Sulej : minor optimizations
-   2015-10-08 Lynn Garren : larsoft v04_26_00
-   2015-10-08 Mike Wallbank : Merge branch 'develop' into feature/wallbank_EMShowerToMerge
-   2015-10-08 Mike Wallbank : Improved methods used in the blurred and merging cluster algorithm. Also made the algorithms completely agnostic to TPC/plane etc
-   2015-10-08 Mike Wallbank : Merge branch 'develop' into feature/wallbank_EMShowerToMerge
-   2015-10-08 Mike Wallbank : improved global reconstruction so it works in even numbered TPCs as well as odd numbered TPCs
-   2015-10-08 Mike Wallbank : included calorimetry between showerfindermodules
-   2015-10-08 Mike Wallbank : added calorimetry

## larsim v04_12_01

-   2015-10-14 Lynn Garren : larsim v04_12_01 for larsoft v04_26_01

## larevt v04_12_01

-   2015-10-14 Lynn Garren : larevt v04_12_01 for larsoft v04_26_01
-   2015-10-08 Tingjun Yang : Set the correct name.

## lardata v04_15_01

-   2015-10-14 Lynn Garren : lardata v04_15_01 for larsoft v04_26_01
-   2015-10-13 Gianluca Petrillo : Argument of CreateAssn() 7a made constant
-   2015-10-12 Tingjun Yang : Add a new function to create association.
-   2015-10-09 Thomas Warburton : Correcting bug where recob::Track Theta and Phi were calculated with respect to initial position not initial direction. Also added members Zenith Angle and Azimuth angle.
-   2015-10-08 Lynn Garren : larsoft v04_26_00
-   2015-10-07 Thomas Warburton : Changing how labels for T0.h are written. I had put them after the functions not the variable declarations.

## larcore v04_17_02

-   2015-10-14 Lynn Garren : larcore v04_17_02 for larsoft v04_26_01
-   2015-10-13 Lynn Garren : larcore does not depend on geant4 in any way

## larbatch v01_17_01

-   2015-10-14 Lynn Garren : larbatch v01_17_01 for larsoft v04_26_01
-   2015-10-13 Herbert Greenlee : Add stream name, if any, to file metadata extracted on batch worker.
-   2015-10-13 Herbert Greenlee : Add script stream.py to extract stream name from internal sam metadata of an artroot file.
-   2015-10-11 Herbert Greenlee : Suppress useless warning.
-   2015-10-09 Herbert Greenlee : Simplify multiple subrun pubs job submission.
-   2015-10-08 Herbert Greenlee : Make sure output is sorted.
-   2015-10-09 Tingjun Yang : Do not throw exception if jobsub_q fails.
-   2015-10-09 Herbert Greenlee : Fix bug when submitting pubs jobs from command line.
-   2015-10-08 Lynn Garren : larsoft v04_26_00
-   2015-10-07 Herbert Greenlee : Add protection against division by zero.

## larutils v1_03_02
