# LArSoft v09_45_00 Release Notes



[list of LArSoft releases](LArSoft_release_list)  
Download instructions for [larsoft v09_45_00](https://scisoft.fnal.gov/scisoft/bundles/larsoft/v09_45_00/larsoft-v09_45_00.html)  
Download instructions for [just larsoftobj v09_17_00](https://scisoft.fnal.gov/scisoft/bundles/larsoftobj/v09_17_00/larsoftobj-v09_17_00.html)

## Purpose

-   changes in develop
-   approved PRs

## New features

-   larg4 PR 37
    -   Addressing \#26294
    -   fcl files have been repaired to use new ParticleListAction defaults and to use larg4SingleGen. The routine also  
        demonstrates how to access the MCTruth and MCParticle data objects:
    -   modified:
        -   fcl/testmctruth.fcl : enable dropping of em shower particles, use simpleLArTPC.gdml
        -   ParticleListAction_service.cxx: keep track of trackids that were dropped and add set of dropped track Ids to the event. if the track ID is on the set no MCParticle has been produced. No trajectory points are added to MCTrajectory for steps that were limited by the StepLimiter  
            process in the active liquid Argon.
        -   CheckMCParticle_module.cc: example how to access the set of dropped particles.
    -   new:
        -   simpleLArTPC.gdml : simple liquid Argon TPC example use copynumber to uniquely identify Sensitive detectors.
-   larreco PR 38
    -   GausHitFinder ROI loop with tbb
    -   This PR changes the loop over ROI in GausHitFinder_module.cc from a simple for into a tbb::parallel_for. Note that the outer loop over wires is already a tbb::parallel_for, so this code is thread safe (when used with thread safe tools). Adding an extra layer of parallelization allows tbb to reduce thread imbalance. This is a non-breaking change, and the output should be unchanged.

## Bug fixes

## Updated dependencies

-   ifdh_art v2_13_06
    -   [PR 1](https://github.com/art-framework-suite/ifdh-art/pull/1)
    -   [changes since v2_13_05](https://github.com/art-framework-suite/ifdh-art/compare/v2_13_05...v2_13_06)
-   nulite v3_12_03a
    -   nugen v1_15_07
    -   ppfx v02_14_11
-   nusystematics v01_00_11

# Change List

## larsoft v09_45_00

-   [changes since v09_44_00](https://github.com/LArSoft/larsoft/compare/v09_44_00...v09_45_00)

## lareventdisplay v09_03_10

-   [changes since v09_03_09](https://github.com/LArSoft/lareventdisplay/compare/v09_03_09...v09_03_10)

## larexamples v09_03_10

-   [changes since v09_03_09](https://github.com/LArSoft/larexamples/compare/v09_03_09...v09_03_10)

## larpandora v09_12_08

-   [changes since v09_12_07](https://github.com/LArSoft/larpandora/compare/v09_12_07...v09_12_08)

## larsimrad v09_04_10

-   [changes since v09_04_09](https://github.com/LArSoft/larsimrad/compare/v09_04_09...v09_04_10)

## larrecodnn v09_10_11

-   [changes since v09_10_10](https://github.com/LArSoft/larrecodnn/compare/v09_10_10...v09_10_11)

## larwirecell v09_06_02

## larana v09_05_07

-   [changes since v09_05_06](https://github.com/LArSoft/larana/compare/v09_05_06...v09_05_07)

## larreco v09_10_00

-   [changes since v09_09_06](https://github.com/LArSoft/larreco/compare/v09_09_06...v09_10_00)

## larsim v09_22_06

-   [changes since v09_22_05](https://github.com/LArSoft/larsim/compare/v09_22_05...v09_22_06)

## larg4 v09_09_00

-   [changes since v09_08_00](https://github.com/LArSoft/larg4/compare/v09_08_00...v09_09_00)

## larevt v09_04_05

## lardata v09_07_02

## larcore v09_04_01

## larpandoracontent v03_26_04

## larsoftobj v09_17_00

## larvecutils v09_01_00

## lardataobj v09_06_00

## lardataalg v09_10_00

## larcorealg v09_06_00

## larcoreobj v09_05_00

## webevd v09_08_04

## larbatch v01_57_00

## larutils v1_28_02
