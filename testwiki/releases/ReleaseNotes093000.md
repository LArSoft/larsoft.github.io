# LArSoft v09_30_00 Release Notes



[list of LArSoft releases](LArSoft_release_list)  
Download instructions for [larsoft v09_30_00](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v09_30_00/larsoft-v09_30_00.html)  
Download instructions for [just larsoftobj v09_09_00](http://scisoft.fnal.gov/scisoft/bundles/larsoftobj/v09_09_00/larsoftobj-v09_09_00.html)

## Purpose

-   changes in develop
-   approved PRs

## New features

-   lardataobj PR 15
    -   The x coordinate of a light flash can be inferred in detectors with a (semi)transparent cathode in the middle by properly weighting the amount of light at the two sides, and in the ones with a opaque but reflective cathode (SBND) by comparing the timing of reflected and direct light.
    -   For backward compatibility, the new coordinate and width are assigned a “magic” value by default; hasXCenter() checks it. A new constructor can assign the additional coordinate and width. It should not collide with the existing ones.
    -   The data product is extended, and ROOT schema evolution is expected to be able to handle the serialisation as needed.
-   larg4 PR 27
    -   Restore reporting of unknown PDG in MCTruthEventAction
    -   issue \#26210
    -   report unknown PDG codes at dtor
    -   quiet down some excessive messages
    -   debug option for reporting skipped and processed codes
-   larpandoracontent PR 32
    -   This PR adds algorithms to support splitting the reconstruction into track and shower workflows and also adds algorithms to characterise PFOs and clusters based on this network.
    -   No product changes are expected for this PR.
-   larpandora PR 21
    -   This PR adds support for direct use of active bounding boxes to define the active TPC volume. By default the existing geometry loading code remains active (a future release will likely make the new method the default).
    -   This PR also applies the clang format to LArPandoraShower.
    -   No product changes are expected for this release.

## Bug fixes

-   larsim PR 72
    -   Reduce severity of message for inability to drift electrons
    -   issue \#26107

## Updated dependencies

# Change List

## larsoft v09_30_00

-   2021-09-20 Lynn Garren : larsoft v09_30_00 for larsoft v09_30_00
-   2021-09-20 Lynn Garren : product versions

## lareventdisplay v09_01_21

-   2021-09-20 Lynn Garren : lareventdisplay v09_01_21 for larsoft v09_30_00

## larexamples v09_01_20

-   2021-09-20 Lynn Garren : larexamples v09_01_20 for larsoft v09_30_00

## larpandora v09_08_00

-   2021-09-20 Lynn Garren : larpandora v09_08_00 for larsoft v09_30_00
-   2021-07-13 Edward Tyley : Apply LArSoft Clang format
-   2021-09-09 Bruce Howard : driftMinX and similar cannot be const since they are set later to be the min/max of the 1 and 2 later.
-   2021-09-09 Bruce Howard : Update based on comments from John - add const to few places, add doxygen info for the new param, and change name of param within PandoraGeometry to clarify. Also applied clang formatting to these two changed files.
-   2021-09-08 Bruce Howard : Appply clang formatting to files changed with previous commit
-   2021-09-08 Bruce Howard : Make the use of the ActiveVolumeBoundingBox in geometry optional.
-   2021-09-07 Bruce Howard : Address comment from Andy to move the driftMin and driftMax initialization up a few lines for tpc2 to only need to do it once. Also applied clang formatting.
-   2021-09-02 Bruce Howard : Updates from clang formatting utility.
-   2021-08-13 Bruce Howard : Update PandoraGeometry to use active volume directly.

## larsimrad v09_01_20

-   2021-09-20 Lynn Garren : larsimrad v09_01_20 for larsoft v09_30_00

## larrecodnn v09_08_07

-   2021-09-20 Lynn Garren : larrecodnn v09_08_07 for larsoft v09_30_00

## larwirecell v09_03_01

-   2021-09-20 Lynn Garren : larwirecell v09_03_01 for larsoft v09_30_00

## larana v09_02_17

-   2021-09-20 Lynn Garren : larana v09_02_17 for larsoft v09_30_00

## larreco v09_06_17

-   2021-09-20 Lynn Garren : larreco v09_06_17 for larsoft v09_30_00

## larsim v09_14_09

-   2021-09-20 Lynn Garren : larsim v09_14_09 for larsoft v09_30_00
-   2021-09-20 Lynn Garren : Merge pull request \#72 from knoepfel/suppress-warning-message
-   2021-09-20 Kyle Knoepfel : Reduce severity of message.

## larg4 v09_04_00

-   2021-09-20 Lynn Garren : larg4 v09_04_00 for larsoft v09_30_00
-   2021-09-16 Lynn Garren : Merge pull request \#27 from nusense/develop
-   2021-09-14 Robert Hatcher : Merge branch 'LArSoft:develop' into develop
-   2021-09-14 Robert Hatcher : restore reporting of unknown PDG codes as warning in dtor; add debug list of processed particles

## larevt v09_02_12

-   2021-09-20 Lynn Garren : larevt v09_02_12 for larsoft v09_30_00

## lardata v09_02_10

-   2021-09-20 Lynn Garren : lardata v09_02_10 for larsoft v09_30_00

## larcore v09_02_04

## larpandoracontent v03_25_00

-   2021-09-20 Lynn Garren : larpandoracontent v03_25_00 for larsoft v09_30_00
-   2021-09-15 AndyChappell : Merge pull request \#183 from AndyChappell/feature/larpandoracontent_v03_25_00
-   2021-09-13 Andrew Chappell : Apply clang format
-   2021-09-13 Andrew Chappell : Update version and ChangeLog
-   2021-08-18 Andrew Chappell : Add leading lepton correctness and ADC weighted purity and completeness to validation
-   2021-08-13 Andrew Chappell : Add folding to tiers
-   2021-08-13 Andrew Chappell : Refactor folding parameters
-   2021-08-12 Andrew Chappell : Tag the leading lepton
-   2021-08-12 Andrew Chappell : Added ADC weighted and per view purity and completeness metrics
-   2021-08-11 Andrew Chappell : Visualise the hierarchy
-   2021-07-27 Andrew Chappell : Add cluster matching to MC
-   2021-07-13 Andrew Chappell : Add visualisation options
-   2021-06-25 Andrew Chappell : Add event level metrics
-   2021-06-24 Andrew Chappell : Separate good matches from above threshold matches
-   2021-06-24 Andrew Chappell : Add missing DL folder to standard make build
-   2021-06-24 Andrew Chappell : Add provisional hierarchy validation algorithm
-   2021-06-21 Andrew Chappell : Add deep learning-based PFO characterisation
-   2021-06-21 Andrew Chappell : Allow input list specification in stream selection and add deep learned cluster characterisation
-   2021-06-17 Andrew Chappell : Add streaming algorithms
-   2021-06-17 Andrew Chappell : Allow for independent view running

## larsoftobj v09_09_00

-   2021-09-20 Lynn Garren : larsoftobj v09_09_00 for larsoft v09_30_00
-   2021-09-20 Lynn Garren : product versions

## lardataobj v09_02_00

-   2021-09-20 Lynn Garren : lardataobj v09_02_00 for larsoft v09_30_00
-   2021-09-20 Lynn Garren : Merge pull request \#15 from PetrilloAtWork/feature/gp_OpFhash
-   2021-09-16 Gianluca Petrillo : Added x location component to recob::OpFlash data product.
-   2021-09-16 Gianluca Petrillo : Updated recob::OpFlash to modern practices

## lardataalg v09_05_01

-   2021-09-20 Lynn Garren : lardataalg v09_05_01 for larsoft v09_30_00

## larcorealg v09_02_01

## larcoreobj v09_02_01

## webevd v09_05_11

-   2021-09-20 Lynn Garren : webevd v09_05_11 for larsoft v09_30_00

## larbatch v01_56_01

## larutils v1_28_02
