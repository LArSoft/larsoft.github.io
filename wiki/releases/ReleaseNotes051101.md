# LArSoft v05_11_01 Release Notes



[list of LArSoft releases](LArSoft_release_list)  
[Download instructions](https://scisoft.fnal.gov/scisoft/bundles/larsoft/v05_11_01/larsoft-v05_11_01.html)

## Purpose

-   changes to develop since v05_11_00
-   use larpandoracontent v02_07_03
    -   dunetpc should merge feature/lg_for_larpandoracontent_v02_07_03

## New features

-   genie_xsec v2_10_6a -q effspec:tem is part of the distribution
    -   this release has developmental spline files
    -   genie_xsec v2_10_6a -q defaultplusccmec remains the default
    -   to use genie_xsec v2_10_6a -q effspec:tem
            setup larsoft v05_11_01 -q xxx
            unsetup genie_xsec
            setup genie_xsec v2_10_6a -q effspec:tem

## Bug fixes

## Updated dependencies

|                   |           |            |                                       |
|-------------------|-----------|------------|---------------------------------------|
| Product           | Version   | Qualifiers | Notes                                 |
| larpandoracontent | v02_07_03 | e9:r5      | using agreed upon directory structure |
| mrb               | v1_07_00  |            | defines XXX_INC when building         |

# Change List

## larsoft v05_11_01

-   2016-05-11 Lynn Garren : larsoft v05_11_01 for larsoft v05_11_01
-   2016-05-11 Lynn Garren : update product versions
-   2016-05-11 Lynn Garren : also distribute genie_xsec -q effspec:tem
-   2016-05-11 Lynn Garren : larpandoracontent v02_07_03 and mrb v1_07_00
-   2016-05-11 Lynn Garren : update dependency database

## lareventdisplay v05_06_07

-   2016-05-11 Lynn Garren : lareventdisplay v05_06_07 for larsoft v05_11_01

## larexamples v05_06_07

-   2016-05-11 Lynn Garren : larexamples v05_06_07 for larsoft v05_11_01

## larpandora v05_09_04

-   2016-05-11 Lynn Garren : larpandora v05_09_04 for larsoft v05_11_01
-   2016-05-11 Lynn Garren : using larpandoracontent v02_07_03

## larana v05_09_01

-   2016-05-11 Lynn Garren : larana v05_09_01 for larsoft v05_11_01

## larreco v05_11_01

-   2016-05-11 Lynn Garren : larreco v05_11_01 for larsoft v05_11_01
-   2016-05-10 Bruce Baller : Merge branch 'feature/bb_TrajCluster' into develop
-   2016-05-10 Bruce Baller : Add UnitsPerTick to TjStuff.
-   2016-05-10 Bruce Baller : Add info message.
-   2016-05-10 Bruce Baller : Remove obsolete fMerge.
-   2016-05-10 Bruce Baller : Remove obsolete fMerge variable. Add checks for the validity of fPlane. Improve logic in Find3DVertices.
-   2016-05-10 Michael Wallbank : Changed the direction finding so it is slightly more natural (weight by charge instead of charge^2 which I had no justification for other than in worked in certain specific cases\\!. Also made finding bad plane an option until I get chance to work on improving it a bit more
-   2016-05-06 Michael Wallbank : Added support for ignoring dead wires. Tried a couple of methods but don't think I've found the optimum one yet. Will return to sort this out soon
-   2016-05-06 Michael Wallbank : Further improvements to the direction finding
-   2016-05-06 Michael Wallbank : Merge branch 'develop' into feature/wallbank_EMShowerImprovements
-   2016-05-06 Michael Wallbank : Added new option for track-shower separation — use Pandora reconstruction to help distinugish between hits before applying the shower reconstruction
-   2016-05-05 Bruce Baller : Move fNumWires, fMaxTime, etc to DataStructs.h
-   2016-05-05 Bruce Baller : Add “All” option for fUseAlgs. Pass CTP to DeadWireCount. Ensure that a signal is present before making a 2D vertex. Revise FillWireCount.
-   2016-05-05 Bruce Baller : Changed MaxTime to MaxPos1. Add MaxPos0
-   2016-05-04 Bruce Baller : Moved NumWires and MaxTime into TjStuff
-   2016-05-04 Bruce Baller : Merge branch 'develop' into feature/bb_TrajCluster
-   2016-05-04 Bruce Baller : Work on FillGetRange
-   2016-05-03 Bruce Baller : Move HitRange to Utils. Generalize algs to work with any traj (not just work). Unfinished improvements to Find3DVertices.
-   2016-05-03 Bruce Baller : Move HitRange to Utils. Generalize algs to work with any traj (not just work). Unfinished improvements to Find3DVertices.
-   2016-05-03 Bruce Baller : Move SignalPresent here from TrajCluster.
-   2016-05-03 Bruce Baller : Move SignalPresent here from TrajCluster. Comment out PrintTrajectory. Fix printing seed hit.
-   2016-05-03 Bruce Baller : Add HammerVx2. Add HitRange, etc to TjStuff.
-   2016-05-03 Bruce Baller : Add HammerVx2
-   2016-04-29 Michael Wallbank : Merge branch 'develop' into feature/wallbank_EMShowerImprovements
-   2016-04-29 Michael Wallbank : Merge branch 'feature/wallbank_EMShowerImprovements' of ssh://cdcvs.fnal.gov/cvs/projects/larreco into feature/wallbank_EMShowerImprovements
-   2016-04-29 Michael Wallbank : Lots of changes to the shower direction determination — use all the planes to recursively try to find the correct shower start point. This has hugely helped the efficiency of shower start finding
-   2016-04-21 Mike Wallbank : Merge branch 'feature/wallbank_EMShowerImprovements' of ssh://cdcvs.fnal.gov/cvs/projects/larreco into feature/wallbank_EMShowerImprovements
-   2016-04-19 Michael Wallbank : Further shower improvements: check for isolated hits which ruin the shower start finding
-   2016-04-11 Mike Wallbank : Merge branch 'feature/wallbank_EMShowerImprovements' of ssh://cdcvs.fnal.gov/cvs/projects/larreco into feature/wallbank_EMShowerImprovements
-   2016-04-11 Mike Wallbank : Merge branch 'feature/wallbank_EMShowerImprovements' of ssh://cdcvs.fnal.gov/cvs/projects/larreco into feature/wallbank_EMShowerImprovements
-   2016-04-11 Mike Wallbank : Merge branch 'develop' into feature/wallbank_EMShowerImprovements

## larsim v05_11_01

-   2016-05-11 Lynn Garren : larsim v05_11_01 for larsoft v05_11_01

## larevt v05_06_07

-   2016-05-11 Lynn Garren : larevt v05_06_07 for larsoft v05_11_01

## lardata v05_08_01

-   2016-05-11 Lynn Garren : lardata v05_08_01 for larsoft v05_11_01
-   2016-05-11 mdhaigh : Merge branch 'develop' of ssh://cdcvs.fnal.gov/cvs/projects/lardata into develop
-   2016-05-11 mdhaigh : Add MVAPID-Shower associations to dictionary files.

## larcore v05_07_02

-   2016-05-11 Lynn Garren : larcore v05_07_02 for larsoft v05_11_01
-   2016-05-11 Christoph Rudolf von Rohr : Fixed a bug in the GetIntersections function in BoxBoundedGeo class, it is now const

## larbatch v01_21_04

-   2016-05-11 Lynn Garren : larbatch v01_21_04 for larsoft v05_11_01
-   2016-05-11 Lynn Garren : larbatch v01_21_04 for larsoft v05_11_01
-   2016-05-10 Herbert Greenlee : Add variable submit timeout.
-   2016-05-10 Herbert Greenlee : Modify workflow to add fcl parameters for fetching genie flux files using ifdh.

## larutils v1_06_01
