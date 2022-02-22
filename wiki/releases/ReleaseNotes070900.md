# LArSoft v07_09_00 Release Notes



[list of LArSoft releases](LArSoft_release_list)  
Download instructions for [larsoft v07_09_00](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v07_09_00/larsoft-v07_09_00.html)  
Download instructions for [just larsoftobj v07_06_00](http://scisoft.fnal.gov/scisoft/bundles/larsoftobj/v07_06_00/larsoftobj-v07_06_00.html)

## Purpose

-   changes in develop
-   approved feature branches

## New features

-   larwirecell feature/weihy_larwirecell
-   larsim feature/aih_FastScintillationCleanup
    -   in develop
    -   significant cleanup inside OpFastScintillation and associated classes in order for DUNE to be able to use reflected light (and for SBND to be able to use SimPhotonsLite objects). These should not break anything (except in a minor way for SBND which I've already discussed with them), and CI tests come back clean, but the changes were significant so I want to make you all aware and ask you to do a little testing. (Alex Himmel)
-   larg4 [phase 2](https://indico.fnal.gov/event/18801/contribution/2/material/slides/0.pdf)
    -   artg4tk: feature/wenzel_artg4tk_cleanup
    -   lardataobj: feature/wenzel_larg4refac_phase2_1
    -   larg4:feature/wenzel_larg4refac_phase2_1
    -   remove vestiges of larsim from library link lists

## Bug fixes

## Updated dependencies

-   wirecell v0_9_3
-   artg4tk v08_02_00

# Change List

## larsoft v07_09_00

-   2018-10-31 Lynn Garren : lardata v07_00_13
-   2018-10-31 Lynn Garren : larsoft v07_09_00 for larsoft v07_09_00
-   2018-10-31 Lynn Garren : product versions

## lareventdisplay v07_01_11

-   2018-10-31 Lynn Garren : lareventdisplay v07_01_11 for larsoft v07_09_00

## larexamples v07_00_14

-   2018-10-31 Lynn Garren : larexamples v07_00_14 for larsoft v07_09_00

## larg4 v07_02_00

-   2018-10-31 Lynn Garren : larg4 v07_02_00 for larsoft v07_09_00
-   2018-10-31 Lynn Garren : Wno-undef
-   2018-10-31 Lynn Garren : larsim libraries are not needed
-   2018-10-31 Lynn Garren : remove unused variable
-   2018-10-30 Lynn Garren : Merge branch 'feature/wenzel_larg4refac_phase2_1' into release/v07_09_00
-   2018-10-23 Hans-Joachim Wenzel : add AuxDet detectors

## larpandora v07_02_01

-   2018-10-31 Lynn Garren : larpandora v07_02_01 for larsoft v07_09_00

## larwirecell v07_03_00

-   2018-10-31 Lynn Garren : larwirecell v07_03_00 for larsoft v07_09_00
-   2018-10-31 Lynn Garren : use wirecell v0_9_3
-   2018-10-29 Hanyu Wei : FrameSource updates to be more informative
-   2018-10-29 Hanyu Wei : FrameSource and FrameSaver updates to adapt to empty input

## larana v07_02_07

-   2018-10-31 Lynn Garren : larana v07_02_07 for larsoft v07_09_00

## larreco v07_07_00

-   2018-10-31 Lynn Garren : larreco v07_07_00 for larsoft v07_09_00
-   2018-10-31 Lynn Garren : larreco v07_07_00 for larsoft v07_09_00
-   2018-10-26 Peter Sean Madigan : Merge branch 'pmadigan/add-pointcharge-to-celltree' into develop
-   2018-10-26 Peter Sean Madigan : Add point charge info to json output of CellTree_module.cc

## larsim v07_05_00

-   2018-10-31 Lynn Garren : larsim v07_05_00 for larsoft v07_09_00
-   2018-10-30 Lynn Garren : remove unused variable
-   2018-10-26 Alex Himmel : Merge branch 'feature/aih_FastScintillationCleanup' into develop
-   2018-10-26 Alex Himmel : Merge remote-tracking branch 'origin/develop' into feature/aih_FastScintillationCleanup
-   2018-10-24 Alex Himmel : Put in some safety catches in case PhotonVisibilityService isn't configured. What this means is that if full simulation is run, reflected light will be stored in the regular SimPhotons collection instead of the special reflected light SimPhotons collection. This is a compromise, but there's no other simple way to have this work (without more major changes to how LArG4 works).
-   2018-10-23 Alex Himmel : Move PhotonVisibilityService inside check for photon propogation.
-   2018-10-23 Alex Himmel : Merge remote-tracking branch 'origin/develop' into feature/aih_FastScintillationCleanup
-   2018-10-23 Alex Himmel : Unify the handling of OnePhoton and SimPhotonsLite in FastScintillation in LArG4. Should allow any timing parameterization or reflected light to be used with either output data product choice. Direct and reflected light are stored in 2 different data products with different labels (“”, “Reflected”) for all of the relevant data products (OnePhoton, SimPhotonsLite, and OpDetBacktrackerRecords).
-   2018-10-18 Alex Himmel : Fix indentation.

## larevt v07_01_01

-   2018-10-31 Lynn Garren : larevt v07_01_01 for larsoft v07_09_00

## lardata v07_00_13

-   2018-10-31 Lynn Garren : lardata v07_00_13 for larsoft v07_09_00

## larcore v07_00_04

## larpandoracontent v03_14_02

## larsoftobj v07_06_00

-   2018-10-31 Lynn Garren : larsoftobj v07_06_00 for larsoft v07_09_00
-   2018-10-31 Lynn Garren : product versions

## lardataobj v07_03_00

-   2018-10-31 Lynn Garren : lardataobj v07_03_00 for larsoft v07_09_00
-   2018-10-30 Lynn Garren : Merge branch 'feature/wenzel_larg4refac_phase2_1' into release/v07_09_00
-   2018-10-23 Hans-Joachim Wenzel : add AuxDetHit

## lardataalg v07_02_04

-   2018-10-31 Lynn Garren : lardataalg v07_02_04 for larsoft v07_09_00

## larcorealg v07_02_01

## larcoreobj v07_00_01

## larbatch v01_46_03

-   2018-10-31 Lynn Garren : larbatch v01_46_03 for larsoft v07_09_00
-   2018-10-30 Herbert Greenlee : Improve prestage logic.
-   2018-10-30 Herbert Greenlee : Remove “with limit 1” on random file selection.
-   2018-10-25 Herbert Greenlee : Fix “maintain parentage” detection.

## larutils v1_23_04
