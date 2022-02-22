# LArSoft v09_18_00 Release Notes



[list of LArSoft releases](LArSoft_release_list)  
Download instructions for [larsoft v09_18_00](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v09_18_00/larsoft-v09_18_00.html)  
Download instructions for [just larsoftobj v09_05_01](http://scisoft.fnal.gov/scisoft/bundles/larsoftobj/v09_05_01/larsoftobj-v09_05_01.html)

## Purpose

-   changes in develop
-   approved PRs

## New features

-   larreco PR 29
    -   Updates to Cluster3D space point building and a small bug fix to optional hit finding algorithm
    -   As ICARUS progresses through its commissioning we are using space point building via cluster3D to reduce the number of spurious 2D noise hits. An updated 3D space point building algorithm has been developed which takes into account the grouping of hits to “snippets” in order to make the building more efficient.
    -   One other change is in one of the optional hit finding algorithms for use in gaushit. Basically this fixes a bug that was exposed when using wirecell 2D deconvolution when on occasion presents a “too short” ROI to the hit finding and the internal smoothing algorithm was not correctly setting up.
    -   Currently all of this code is, to my knowledge, only used by ICARUS and so this PR should not impact any other experiment. I believe that the rest of larreco has been kept up to date with the develop branch.
-   webevd PR 30
    -   Protection against dropped products
-   larpandoracontent PR 20
    -   This PR addresses an issue in which a cosmic ray cluster with fewer than 3 hits could be considered for matching via a sliding linear fit, which would in turn throw an exception due to insufficient hits for the procedure.
    -   This PR also includes a minor update to conditional expressions in the deep learning library that would fail to build if LArContent was built without Pandora Monitoring enabled, and a build flag update to avoid suppressing sign comparison warnings in the Pandora standalone build (and therefore matching the warnings generated in a LArSoft build). The build for the LArSoft context is unchanged.

## Bug fixes

## Updated dependencies

-   artg4tk v10_02_01
-   wirecell v0_14_0e
-   spdlog v1_8_2

# Change List

## larsoft v09_18_00

-   2021-03-10 Lynn Garren : larsoft v09_18_00 for larsoft v09_18_00
-   2021-03-10 Lynn Garren : product versions
-   2021-03-09 Lynn Garren : update the compiler build section
-   2021-03-09 Lynn Garren : adding stan build cfg file

## lareventdisplay v09_01_04

-   2021-03-10 Lynn Garren : lareventdisplay v09_01_04 for larsoft v09_18_00

## larexamples v09_01_04

-   2021-03-10 Lynn Garren : larexamples v09_01_04 for larsoft v09_18_00

## larpandora v09_05_05

-   2021-03-10 Lynn Garren : larpandora v09_05_05 for larsoft v09_18_00

## larsimrad v09_01_04

-   2021-03-10 Lynn Garren : larsimrad v09_01_04 for larsoft v09_18_00

## larrecodnn v09_06_03

-   2021-03-10 Lynn Garren : larrecodnn v09_06_03 for larsoft v09_18_00

## larwirecell v09_02_03

-   2021-03-10 Lynn Garren : larwirecell v09_02_03 for larsoft v09_18_00

## larana v09_01_04

-   2021-03-10 Lynn Garren : larana v09_01_04 for larsoft v09_18_00

## larreco v09_06_00

-   2021-03-10 Lynn Garren : larreco v09_06_00 for larsoft v09_18_00
-   2021-03-10 Lynn Garren : Merge pull request \#29 from SFBayLaser/develop
-   2021-03-09 SFBayLaser : Addressing (most) of Kyle's comments
-   2021-03-08 SFBayLaser : Deja vu bug fix
-   2021-03-08 SFBayLaser : Merge remote-tracking branch 'origin/develop' into develop
-   2021-03-05 Kyle Knoepfel : Merge remote-tracking branch 'upstream/develop' into feature/cluster_update
-   2021-03-05 Kyle Knoepfel : Resolve non-functional diffs with upstream develop.
-   2021-03-05 SFBayLaser : Merge branch 'develop' of github.com:LArSoft/larreco into develop
-   2021-03-01 SFBayLaser : Merge branch 'develop' of github.com:LArSoft/larreco into develop
-   2021-02-20 SFBayLaser : Still in an ICARUS test mode
-   2021-02-19 SFBayLaser : Turn the hack back on…
-   2021-02-19 SFBayLaser : Temporary hack to get space points for ICARUS
-   2021-02-18 SFBayLaser : Merge branch 'develop' of github.com:LArSoft/larreco into develop
-   2021-02-02 Tracy Usher : Merge branch 'develop' of github.com:LArSoft/larreco into develop
-   2021-01-22 Tracy Usher : Merge branch 'develop' of github.com:LArSoft/larreco into develop
-   2021-01-19 Tracy Usher : Merge branch 'develop' of github.com:LArSoft/larreco into develop
-   2021-01-13 Tracy Usher : Small code cleanup
-   2021-01-13 Tracy Usher : Provide protection against too short waveforms (present in wirecell data)
-   2021-01-11 Tracy Usher : Merge branch 'develop' of github.com:LArSoft/larreco into develop
-   2020-12-22 Tracy Usher : Merge branch 'develop' of github.com:LArSoft/larreco into develop
-   2020-12-16 Tracy Usher : Merge branch 'develop' of github.com:LArSoft/larreco into develop
-   2020-12-04 Tracy Usher : Merge branch 'develop' of github.com:LArSoft/larreco into develop
-   2020-11-23 Tracy Usher : Merge branch 'develop' of github.com:LArSoft/larreco into develop
-   2020-11-12 Tracy Usher : Merge branch 'develop' of github.com:LArSoft/larreco into develop
-   2020-10-30 Tracy Usher : Merge branch 'develop' of github.com:LArSoft/larreco into develop
-   2020-10-23 Tracy Usher : Merge branch 'develop' of github.com:LArSoft/larreco into develop
-   2020-10-18 Tracy Usher : Formatting
-   2020-10-18 Tracy Usher : Merge branch 'develop' of github.com:LArSoft/larreco into develop
-   2020-10-07 Tracy Usher : Merge branch 'develop' of github.com:LArSoft/larreco into develop
-   2020-09-30 Tracy Usher : Merge branch 'develop' of github.com:LArSoft/larreco into develop
-   2020-09-24 Tracy Usher : Merge branch 'develop' of github.com:LArSoft/larreco into develop
-   2020-09-20 Tracy Usher : Merge branch 'develop' of github.com:LArSoft/larreco into develop
-   2020-09-11 Tracy Usher : Merge branch 'develop' of github.com:LArSoft/larreco into develop
-   2020-09-04 Tracy Usher : Merge branch 'develop' of github.com:LArSoft/larreco into develop
-   2020-08-25 Tracy Usher : Merge branch 'master' of github.com:LArSoft/larreco into develop
-   2020-08-25 Tracy Usher : Updating
-   2020-08-24 Tracy Usher : Merge branch 'develop' of github.com:LArSoft/larreco into develop
-   2020-08-13 Tracy Usher : Merge branch 'develop' of github.com:LArSoft/larreco into develop
-   2020-08-05 Tracy Usher : Merge branch 'develop' of github.com:LArSoft/larreco into develop
-   2020-07-24 Tracy Usher : Merge branch 'develop' of github.com:LArSoft/larreco into develop
-   2020-07-17 Tracy Usher : Merge branch 'develop' of github.com:LArSoft/larreco into develop
-   2020-07-14 Tracy Usher : Merge branch 'develop' of github.com:LArSoft/larreco into develop
-   2020-07-05 Tracy Usher : Merge branch 'develop' of github.com:LArSoft/larreco into develop
-   2020-06-06 Tracy Usher : Make “range” calculation fhicl configurable (via fhicl name RangeNumSigma which has default of 3)
-   2020-06-05 Tracy Usher : Merge branch 'develop' of github.com:LArSoft/larreco into develop
-   2020-05-31 Tracy Usher : Merge branch 'develop' of github.com:LArSoft/larreco into develop
-   2020-05-25 Tracy Usher : Merge branch 'develop' of github.com:LArSoft/larreco into develop
-   2020-05-17 Tracy Usher : Merge branch 'develop' of github.com:LArSoft/larreco into develop
-   2020-05-10 Tracy Usher : Merge branch 'develop' of github.com:LArSoft/larreco into develop
-   2020-05-03 Tracy Usher : Fix problem which caused creation of duplicate space points
-   2020-05-03 Tracy Usher : Formatting and removing extraneous output (even in debug mode)
-   2020-05-01 Tracy Usher : Set the defaults for the snippet space point builder to current values used by ICARUS
-   2020-05-01 Tracy Usher : Add option to bypass Cluster3D clustering/path finding with fhicl parameter (only builds SpacePoints) - requested by ML folks
-   2020-04-30 Tracy Usher : Merge branch 'develop' of github.com:LArSoft/larreco into develop
-   2020-04-30 Tracy Usher : Add a space point building tool that takes into account the snippet nature of the output of the hit finder and allows selection of the largest pulse height hits in the snippet for building space points.
-   2020-04-25 Tracy Usher : Merge branch 'develop' of github.com:LArSoft/larreco into develop
-   2020-04-24 Tracy Usher : Formatting
-   2020-04-24 Tracy Usher : Questioning the need to stretch the long hits… but allowing the possibility.

## larsim v09_10_03

-   2021-03-10 Lynn Garren : larsim v09_10_03 for larsoft v09_18_00

## larg4 v09_03_03

-   2021-03-10 Lynn Garren : larg4 v09_03_03 for larsoft v09_18_00

## larevt v09_02_02

## lardata v09_02_01

## larcore v09_02_01

## larpandoracontent v03_22_08

-   2021-03-10 Lynn Garren : larpandoracontent v03_22_08 for larsoft v09_18_00
-   2021-03-09 Lynn Garren : Merge pull request \#20 from PandoraPFA/feature/larpandoracontent_v03_22_08
-   2021-03-03 AndyChappell : Merge pull request \#159 from AndyChappell/feature/reco_alg_fix
-   2021-03-02 Andrew Chappell : Update version and ChangeLog
-   2021-03-02 Andrew Chappell : Avoid empty conditional expression body when building without Pandora Monitoring
-   2021-03-02 Andrew Chappell : Avoid sliding fits for low hit clusters in CosmicRayTrackRecovery

## larsoftobj v09_05_01

## lardataobj v09_01_01

## lardataalg v09_04_01

## larcorealg v09_01_01

## larcoreobj v09_02_00

## webevd v09_05_02

-   2021-03-10 Lynn Garren : webevd v09_05_02 for larsoft v09_18_00
-   2021-03-10 Lynn Garren : Merge pull request \#30 from cjbackhouse/feature/sbn
-   2021-03-08 Christopher Backhouse : More succinct way to check for getByLabel success.
-   2021-03-05 Christopher Backhouse : Protection against dropped products.

## larbatch v01_54_01

## larutils v1_27_04
