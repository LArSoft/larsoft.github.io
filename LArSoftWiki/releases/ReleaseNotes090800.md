# LArSoft v09_08_00 Release Notes



[list of LArSoft releases](LArSoft_release_list)  
Download instructions for [larsoft v09_08_00](https://scisoft.fnal.gov/scisoft/bundles/larsoft/v09_08_00/larsoft-v09_08_00.html)  
Download instructions for [just larsoftobj v09_02_00](https://scisoft.fnal.gov/scisoft/bundles/larsoftobj/v09_02_00/larsoftobj-v09_02_00.html)

## Purpose

-   changes in develop
-   approved PRs

## New features

-   lardataalg PR 17
    -   detinfo::DetectorTimings::toTick() now supports tick type arguments together with time type arguments.
-   larreco PR 22
    -   3D reconstruction tweaks for ArgoNeut
-   larsim PR 44
    -   SBN needs to access OpFastScintillation::detectedDirectHits() and OpFastScintillation::detectedReflecHits() in order to get an estimation of the photons that arrive to optical detectors using the semi-analytical approach instead of the photon library. Currently, those two methods are private. This PR changes them to public.
    -   detectedDirectHits and detectedReflecHits should be provided by a service (similarly to the PhotonVisibilityService) and this is planned to be done in the future when things will be moved to larg4. For now, we need to access them in this way.
-   Pandora deep learning infrastructure
    -   [presentation](https://indico.fnal.gov/event/46070/contributions/200313/attachments/136388/169582/acha_ml.pdf) by Andrew Chappell (University of Warwick)
    -   larpandoracontent PR 13
        -   This pull request introduces the infrastructure to support deep learning via LibTorch. There will be a talk on this and the associated larpandora pull request in the LArSoft Coordination meeting on 20 October.
        -   A new library within the larpandoracontent product is introduced to support the deep learning features. This update introduces a dependency on the LibTorch ups product, though in keeping with previous Pandora pull requests, the product_deps file has not been updated (I can make such an addition if requested by the SciSoft team) and will be required for a successful default build.
    -   larpandora PR 13
        -   This pull request introduces the infrastructure to support deep learning via LibTorch. There will be a talk on this and the associated larpandoracontent pull request (LArSoft/larpandoracontent/pull/13) upon which it depends, in the LArSoft Coordination meeting on 20 October.
        -   This update allows LArPandoraInterface to link against the new deep learning-aware library in larpandoracontent.

## Bug fixes

-   larpandoracontent PR 14
    -   This PR is a patch release to fix a bug in LArTrackShowerId/TrackShowerIdFeatureTool.cc where a defence against accessing an empty container was missing. Please see PandoraPFA#146 for more information if you're interested.

## Updated dependencies

-   gallery v1_14_03 (s102)
-   artdaq_core v3_06_03
-   geant4reweight v01_04_01
-   bxdecay0 v1_0_6

# Change List

## larsoft v09_08_00

-   2020-10-23 Lynn Garren : larsoft v09_08_00 for larsoft v09_08_00
-   2020-10-23 Lynn Garren : product versions

## lareventdisplay v09_00_10

-   2020-10-23 Lynn Garren : lareventdisplay v09_00_10 for larsoft v09_08_00

## larexamples v09_00_09

-   2020-10-23 Lynn Garren : larexamples v09_00_09 for larsoft v09_08_00

## larg4 v09_01_02

-   2020-10-23 Lynn Garren : larg4 v09_01_02 for larsoft v09_08_00

## larpandora v09_03_00

-   2020-10-23 Lynn Garren : larpandora v09_03_00 for larsoft v09_08_00
-   2020-10-22 Lynn Garren : Merge branch 'feature/larpandoracontent_v03_22_00' into release/v09_08_00
-   2020-10-20 AndyChappell : Merge pull request \#14 from AndyChappell/feature/build_tweaks
-   2020-10-20 Andrew Chappell : Check for presence of LibTorch during build
-   2020-10-14 AndyChappell : Merge pull request \#13 from AndyChappell/feature/larpandoracontent_v03_22_00
-   2020-10-13 Andrew Chappell : Default to LibTorch build for larpandora
-   2020-09-14 Andrew Chappell : Conditional build based on cmake flag PANDORA_LIBTORCH
-   2020-09-14 Andrew Chappell : Include DLMaster algorithm

## larsimrad v09_00_09

-   2020-10-23 Lynn Garren : larsimrad v09_00_09 for larsoft v09_08_00

## larrecodnn v09_02_01

-   2020-10-23 Lynn Garren : larrecodnn v09_02_01 for larsoft v09_08_00

## larwirecell v09_01_04

-   2020-10-23 Lynn Garren : larwirecell v09_01_04 for larsoft v09_08_00

## larana v09_00_10

-   2020-10-23 Lynn Garren : larana v09_00_10 for larsoft v09_08_00

## larreco v09_04_00

-   2020-10-23 Lynn Garren : larreco v09_04_00 for larsoft v09_08_00
-   2020-10-21 Lynn Garren : Merge pull request \#22 from brballer/feature/bb_vsafix
-   2020-10-20 Bruce Baller : Improve 3D reconstruction of very small angle tracks

## larsim v09_05_00

-   2020-10-23 Lynn Garren : larsim v09_05_00 for larsoft v09_08_00
-   2020-10-20 Lynn Garren : Merge pull request \#44 from SBNSoftware/mdeltutt_opfast
-   2020-10-14 Marco Del Tutto : Removing member NOpChannels. Always using fPVS-\>NOpChannels() to get the number of optical channels.
-   2020-10-14 Marco Del Tutto : Removing previously commented-out lines.
-   2020-10-14 Marco Del Tutto : Marking detectedDirectHits and detectedReflecHits as const methods.
-   2020-10-09 Marco Del Tutto : Merge branch 'develop' into mdeltutt_opfast
-   2020-10-09 Marco Del Tutto : Comment unused variable acos_arr
-   2020-10-09 Marco Del Tutto : Use fPVS-\>NOpChannels() and not cached NOpChannels, so correct number of op channels is always returned
-   2020-10-06 Marco Del Tutto : Making detectedDirectHits and detectedReflecHits methods public.

## larevt v09_00_07

-   2020-10-23 Lynn Garren : larevt v09_00_07 for larsoft v09_08_00

## lardata v09_01_02

-   2020-10-23 Lynn Garren : lardata v09_01_02 for larsoft v09_08_00

## larcore v09_00_01

## larpandoracontent v03_22_00

-   2020-10-23 Lynn Garren : larpandoracontent v03_22_00 for larsoft v09_08_00
-   2020-10-20 Andrew Chappell : Add LibTorch optional dependency and check for presence during build
-   2020-10-15 Andrew Chappell : Remove unused member variable
-   2020-10-13 Andrew Chappell : Update change log
-   2020-09-23 Andrew Chappell : Move model loading to initialisation and add provisional validation algorithm
-   2020-09-21 Andrew Chappell : Updates for new network structure
-   2020-09-21 Andrew Chappell : Rename hit-level track/shower id algorithm class
-   2020-09-21 Andrew Chappell : Add track and shower probabilities to LArCaloHit
-   2020-09-18 Andrew Chappell : Updates from review comments
-   2020-09-15 Andrew Chappell : Build updates
-   2020-09-15 Andrew Chappell : Consolidate LArContent and LArDLContent builds
-   2020-09-14 Andrew Chappell : Conditional build based on cmake flag PANDORA_LIBTORCH
-   2020-09-14 Andrew Chappell : Specify full library paths for LibTorch in LArSoft context
-   2020-09-12 Andrew Chappell : Refactor
-   2020-09-12 Andrew Chappell : Add DL helper functions
-   2020-09-12 Andrew Chappell : Provisional DL library build
-   2020-09-10 Andrew Chappell : Set dependency to be explicitly from LArDLContent library to LArContent library
-   2020-08-27 Andrew Chappell : Add charge information to the feature vector
-   2020-08-26 Andrew Chappell : Load model file in inference mode only
-   2020-08-26 Andrew Chappell : Remove redundant variables
-   2020-08-12 Andrew Chappell : Include FW_SEARCH_PATH
-   2020-08-04 Andrew Chappell : Extract DL related content to larpandoradlcontent area
-   2020-07-29 Andrew Chappell : Provisional standalone build updates for optional DL algorithms
-   2020-07-28 Andrew Chappell : Simplify feature vector
-   2020-07-27 Andrew Chappell : Add deep learning track/shower id
-   2020-10-20 Lynn Garren : Merge pull request \#14 from PandoraPFA/feature/larpandoracontent_v03_21_01
-   2020-10-19 AndyChappell : Merge pull request \#146 from absolution1/mvafeaturebugfix
-   2020-10-19 Dom Brailsford : Update version and changelog for patch release
-   2020-10-16 Dom Brailsford : Bug fix where no vertex exists.

## larsoftobj v09_02_00

-   2020-10-23 Lynn Garren : larsoftobj v09_02_00 for larsoft v09_08_00
-   2020-10-23 Lynn Garren : product versions

## lardataobj v09_00_01

## lardataalg v09_02_00

-   2020-10-23 Lynn Garren : lardataalg v09_02_00 for larsoft v09_08_00
-   2020-10-22 Lynn Garren : whitespace cleanup
-   2020-10-21 Lynn Garren : Merge pull request \#17 from PetrilloAtWork/feature/gp_tickConversions
-   2020-10-15 Gianluca Petrillo : DetectorTimings now supports tick-to-tick conversions.

## larcorealg v09_00_01

## larcoreobj v09_00_00

## webevd v09_00_07

-   2020-10-23 Lynn Garren : webevd v09_00_07 for larsoft v09_08_00

## larbatch v01_54_00

## larutils v1_27_01
