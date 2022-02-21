# LArSoft v04_17_00 Release Notes



[list of LArSoft releases](LArSoft_release_list)  
[Download instructions](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v04_17_00/larsoft-v04_17_00.html)

## Purpose

-   changes to `develop` from `v04_16_00` and integration of feature branch.
-   `larcore` and `larana` `feature/tmw_opflashfix`

## New features

-   the branch `feature/tmw_opflashfix` contains fixes for microboone optical reconstruction. Alex Himmel has also signed off on behalf of dune.
-   the larcore feature branch adds a new virtual method in `ChannalMapAlg` and a nonvirtual method in GeometryCore that calls the virtual method in ChannelMapAlg. The new virtual method modifies the vtable and makes this a breaking change at the binary level. Any code that doesn't call the new methods should still compile.
-   the larana feature branch modifies the flash finder and flash matcher to call the new methods.
-   the new methods are required to be compatible with the microboone optical channel mapping in data.

## Bug fixes

## Updated dependencies

# Change List

## larsoft v04_17_00

-   2015-07-22 Gianluca Petrillo : larsoft v04_17_00 for larsoft v04_17_00
-   2015-07-22 Gianluca Petrillo : Update product versions
-   2015-07-22 Gianluca Petrillo : Updated dependency list

## lareventdisplay v04_06_01

-   2015-07-22 Gianluca Petrillo : lareventdisplay v04_06_01 for larsoft v04_17_00
-   2015-07-20 Bruce Baller : Improve screen print out
-   2015-07-17 Thomas Warburton : Following advice on how to best display flash information on Ortho3D event view

## larexamples v04_04_17

-   2015-07-22 Gianluca Petrillo : larexamples v04_04_17 for larsoft v04_17_00

## larpandora v04_04_17

-   2015-07-22 Gianluca Petrillo : larpandora v04_04_17 for larsoft v04_17_00
-   2015-07-22 Lynn Garren : use fwdir so FW_SEARCH_PATH is set correctly when building

## larana v04_09_00

-   2015-07-22 Gianluca Petrillo : larana v04_09_00 for larsoft v04_17_00
-   2015-07-22 Gianluca Petrillo : Merge remote-tracking branch 'origin/feature/tmw_opflashfix' into release/v04_17_00
-   2015-07-22 Lynn Garren : save the proper syntax
-   2015-07-16 Taritree Wongjirad : fixes to get opflash working
-   2015-07-16 Lynn Garren : larsoft v04_16_00
-   2015-07-16 Taritree Wongjirad : temp fix while we work out the expeiment-agnostic service that provides spe info to flash finder. want generic opdet property service in the end.

## larreco v04_13_00

-   2015-07-22 Gianluca Petrillo : larreco v04_13_00 for larsoft v04_17_00
-   2015-07-21 Robert Sulej : add optio to flip tracks downward
-   2015-07-20 Tingjun Yang : Add protection when TrackTrajectoryAlg does not reconstruct trajectory points.
-   2015-07-20 Tingjun Yang : Merge branch 'develop' of ssh://cdcvs.fnal.gov/cvs/projects/larreco into develop
-   2015-07-20 Tingjun Yang : Add protection for the case bin is negative. This only happens when divided by a very small number.
-   2015-07-20 Bruce Baller : Merge branch 'feature/bb_ccwork' into develop
-   2015-07-20 Bruce Baller : initialize matcomb
-   2015-07-20 Robert Sulej : add projection of 3D vector to 2D plane in \[cm\] domain
-   2015-07-20 Mike Wallbank : Made use of cluster merging after blurred clustering an option
-   2015-07-20 Mike Wallbank : Merge branch 'develop' of ssh://cdcvs.fnal.gov/cvs/projects/larreco into develop
-   2015-07-20 Mike Wallbank : MW: Improved cluster merging; cluster merging has also been made a separate algorithm so it can be used by other clusterings
-   2015-07-18 Bruce Baller : Merge branch 'develop' into feature/bb_ccwork
-   2015-07-18 Bruce Baller : add standard_pfpana
-   2015-07-18 Bruce Baller : work on tagcosmics
-   2015-07-18 Bruce Baller : PFParticle, track and vertex ana module
-   2015-07-18 Bruce Baller : initialize variables
-   2015-07-17 Tingjun Yang : Move cluster associations outside the hit loop.
-   2015-07-16 Bruce Baller : initialize variables

## larsim v04_08_04

-   2015-07-22 Gianluca Petrillo : larsim v04_08_04 for larsoft v04_17_00

## larevt v04_08_07

-   2015-07-22 Gianluca Petrillo : larevt v04_08_07 for larsoft v04_17_00

## lardata v04_11_01

-   2015-07-22 Gianluca Petrillo : lardata v04_11_01 for larsoft v04_17_00

## larcore v04_14_00

-   2015-07-22 Gianluca Petrillo : larcore v04_14_00 for larsoft v04_17_00
-   2015-07-22 Gianluca Petrillo : Merge remote-tracking branch 'origin/feature/tmw_opflashfix' into release/v04_17_00
-   2015-07-16 Taritree Wongjirad : added maxopchannel to geometry service.

## larbatch v01_12_01

## larutils v1_02_01
