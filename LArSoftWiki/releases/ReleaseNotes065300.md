# LArSoft v06_53_00 Release Notes



[list of LArSoft releases](LArSoft_release_list)  
Download instructions for [larsoft v06_53_00](https://scisoft.fnal.gov/scisoft/bundles/larsoft/v06_53_00/larsoft-v06_53_00.html)  
Download instructions for [just larsoftobj v1_28_00](https://scisoft.fnal.gov/scisoft/bundles/larsoftobj/v1_28_00/larsoftobj-v1_28_00.html)

## Purpose

-   changes to develop
-   approved feature branches

## New features

-   larreco feature/rsulej_tf
    -   introduces a dependency on tensorflow
-   larpandoracontent feature/jm_StitchingInstanceWirePitch
    -   resolves a problem noticed in dunetpc
    -   The issue is that recob::Tracks are not produced for cosmic-ray oriented reconstruction passes of detectors with more than one (what we call) drift volume. MicroBooNE is thus not affected, nor are any neutrino-oriented reconstructed passes (such as the DUNE FD test).

## Bug fixes

## Updated dependencies

|               |          |            |                        |
|---------------|----------|------------|------------------------|
| Product       | Version  | Qualifiers | Notes                  |
| tensorflow    | v1_3_0a | e14:p2713d |                        |
| protobuf      | v3_3_1  | e14        |                        |
| cetbuildtools | v5_14_03 |            | has support for ups v6 |
| cetpkgsupport | v1_13_00 |            | has support for ups v6 |

# Change List

## larsoft v06_53_00

-   2017-10-12 Lynn Garren : lareventdisplay v06_13_00
-   2017-10-12 Lynn Garren : larana v06_10_05
-   2017-10-12 Lynn Garren : larsoft v06_53_00 for larsoft v06_53_00
-   2017-10-12 Lynn Garren : update versions
-   2017-10-12 Lynn Garren : adding tensorflow
-   2017-10-12 Lynn Garren : cetbuildtools v5_14_03 and cetpkgsupport v1_13_00

## lareventdisplay v06_13_00

-   2017-10-12 Lynn Garren : lareventdisplay v06_13_00 for larsoft v06_53_00
-   2017-10-09 Usher, Tracy L : Primarily these changes are to get the hits to display correctly in the 2D display with a multi-cryo, multi-tpc detector (e.g. ICARUS - and I'm surprised this didn't show up in DUNE displays?). Also some formatting updates.
-   2017-10-09 Usher, Tracy L : Updates to try to get the x offsets correct, these specifically for a multi-TPC environment (e.g. ICARUS)

## larexamples v06_07_04

-   2017-10-12 Lynn Garren : larexamples v06_07_04 for larsoft v06_53_00

## larpandora v06_17_01

-   2017-10-12 Lynn Garren : larpandora v06_17_01 for larsoft v06_53_00

## larwirecell v06_07_04

-   2017-10-12 Lynn Garren : larwirecell v06_07_04 for larsoft v06_53_00

## larana v06_10_05

-   2017-10-12 Lynn Garren : larana v06_10_05 for larsoft v06_53_00

## larreco v06_42_00

-   2017-10-12 Lynn Garren : larreco v06_42_00 for larsoft v06_53_00
-   2017-10-11 Robert Sulej : change deps to the tf 1.3.0
-   2017-10-09 Robert Sulej : Merge branch 'develop' into feature/rsulej_tf
-   2017-10-09 Robert Sulej : go back to b4 for grid purposes
-   2017-10-05 baller : Tingjun fixed bug in NeutrinoPrimaryTjID Merge branch 'feature/bb_TJWork' into develop
-   2017-10-05 baller : Merge branch 'feature/bb_TJWork' of ssh://cdcvs.fnal.gov/cvs/projects/larreco into feature/bb_TJWork
-   2017-10-05 baller : Add comments
-   2017-10-05 Tingjun Yang : Improve printout for 2-plane geometry
-   2017-10-05 Tingjun Yang : Protect against the case where primID is 0.
-   2017-10-05 Robert Sulej : add total mc truth edep in gev
-   2017-10-05 Robert Sulej : move to batch processing
-   2017-09-29 Robert Sulej : Merge branch 'develop' into feature/rsulej_tf
-   2017-09-29 Robert Sulej : use b5 of tensorflow
-   2017-09-28 Robert Sulej : and now can use graphs with multiple outputs
-   2017-09-26 Robert Sulej : change to tf v1_3_0_b4
-   2017-09-22 Robert Sulej : Merge branch 'develop' into feature/rsulej_tf
-   2017-09-21 Lynn Garren : Merge branch 'feature/rsulej_tf' of ssh://cdcvs.fnal.gov/cvs/projects/larreco into feature/rsulej_tf
-   2017-09-21 Lynn Garren : using tensorflow v1_3_0_b3 with Eigen_tf namespace
-   2017-09-20 Lynn Garren : using tensorflow v1_3_0_b2 with our build of protobuf
-   2017-09-20 Lynn Garren : using tensorflow v1_3_0_b0
-   2017-09-20 Robert Sulej : write patch directly to the batch buffer
-   2017-09-19 Robert Sulej : finish batch processing
-   2017-09-19 Robert Sulej : Merge branch 'develop' into feature/rsulej_tf
-   2017-09-19 Robert Sulej : change to buffer events outside network class
-   2017-09-18 Robert Sulej : one mem copy less on running sample by sample, start writing buffer for running samples parallelly
-   2017-09-16 Robert Sulej : glue all together and wait for the first model before debugging
-   2017-09-14 Robert Sulej : merge with develop head, add processing of a batch of inputs
-   2017-09-13 Lynn Garren : define TENSORFLOW
-   2017-09-04 Robert Sulej : remove tensorwlow
-   2017-09-04 Robert Sulej : add interface for TF graph
-   2017-09-04 Robert Sulej : commit after resolving merge conflicts
-   2017-09-01 Robert Sulej : merge with the head and setup tf 1_2_1_b3
-   2017-08-28 Lynn Garren : tensorflow v1_2_1_b3
-   2017-08-24 Lynn Garren : fix qualifier matrix
-   2017-08-23 Robert Sulej : setup dependecy on tensorflow, add first include (not yet doing anything useful)

## larsim v06_31_04

-   2017-10-12 Lynn Garren : larsim v06_31_04 for larsoft v06_53_00

## larevt v06_16_04

-   2017-10-12 Lynn Garren : larevt v06_16_04 for larsoft v06_53_00

## lardata v06_31_00

-   2017-10-12 Lynn Garren : lardata v06_31_00 for larsoft v06_53_00
-   2017-10-09 Gianluca Petrillo : Merge branch 'feature/gp_TrackProxy' into develop (again)
-   2017-10-09 Gianluca Petrillo : Added support for recob::TrackTrajectory associated to Track proxy
-   2017-10-09 Gianluca Petrillo : Added proxy support to one-to-one associations.
-   2017-10-06 Gianluca Petrillo : Install DetectorInfo test executables
-   2017-09-28 Gianluca Petrillo : Minor documentation fixes to proxy.
-   2017-10-05 Gianluca Petrillo : DetectorPropertiesService test now prints some more information.
-   2017-10-05 Gianluca Petrillo : Fixed bug in DetectorPropertiesStandard initialization for test code.

## larcore v06_15_01

## larpandoracontent v03_08_01

-   2017-10-12 Lynn Garren : larpandoracontent v03_08_01 for larsoft v06_53_00
-   2017-10-11 Lynn Garren : v03_08_01
-   2017-10-06 John Marshall : Temporary workaround to cover usage of TrackParticleBuilding algorithm by a Pandora stitching instance.

## larsoftobj v1_28_00

## lardataobj v1_21_01

## larcorealg v1_08_00

## larcoreobj v1_16_00

## larbatch v01_32_05

## larutils v1_19_03

-   2017-10-12 Lynn Garren : larutils v1_19_03 for larsoft v06_53_00
-   2017-10-11 Lynn Garren : use explicit ups flavor –4
-   2017-10-10 Herbert Greenlee : Use 'ups flavor –4' for linux builds.
