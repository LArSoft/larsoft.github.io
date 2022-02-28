# LArSoft v08_58_00 Release Notes



[list of LArSoft releases](LArSoft_release_list)  
Download instructions for [larsoft v08_58_00](https://scisoft.fnal.gov/scisoft/bundles/larsoft/v08_58_00/larsoft-v08_58_00.html)  
Download instructions for [just larsoftobj v08_29_02](https://scisoft.fnal.gov/scisoft/bundles/larsoftobj/v08_29_02/larsoftobj-v08_29_02.html)

## Purpose

-   changes in develop
-   approved PRs

## New features

-   larpandora PR 9
    -   Following last week’s larpandora feature, a change in strategy was decided, and so some elements from last week’s release have been deliberately reverted. Specifically, the decision to divide up the dual phase detector into specific volumes, with a stitching process to connect crossing particles, has been reverted. Instead, the reconstruction proceeds in a single volume. (The stitching procedure would have worked, but not on timescale required for current planned ProtoDUNE-DP production.)
-   larpandoracontent PR 8
    -   This pull request contains the latest additions to larpandoracontent. In particular, two tools, that exploit the two-view 2D-\>3D matching mechanics previously included in LArSoft v08_57_00 release, have been added, and can be readily used in the reconstruction for ProtoDUNE-DP:
        -   The LongTracks tool performs matching in case of obvious ambiguities, when one of the matching candidates is significantly longer than the others;
        -   The SimpleTracks tool selects the best candidate according to a set of conditions.
    -   The pull request also includes new tuning of matching parameters to optimise performance.
    -   The updated XML settings file can be found in the **dunetpc feature branch feature/newPandoraDPfeature_caloMatching**.
    -   The new features have been initially included in a PandoraPFA pull request, available here.
    -   Continuous integration tests and valgrind memory checks were run and no issues were found.
-   larsim PR 29
    -   Prevent implicit downcasting from double to int in VUVHits() and VISH…
    -   \#24433
-   larsim PR 30
    -   This is the first version of the proposed solution to Redmine issue \#24600.
    -   There are two main assumptions that have been applied in general, but should have been applied only when using the semi-analytic model (or better, when using it with SBND detector and maybe ProtoDUNE, for which those assumptions are satisfied):
        -   scintillation light is propagated only from the TPC active volume
            -   for the way this is implemented, another assumption is required: the detector has a single monolithic active volume, e.g. it has only one cryostat
        -   scintillation light does not go through the cathode, which is fully opaque
    -   This pull request is made of several commits that can be grouped in three sets:
        -   preparation (commits 731a89f, 84ca9f3, e2af375, 4b74396 and 23f5d80):
            -   the determination of the active volumes is corrected to extract them from all cryostats; LArSoft geometry facilities are used for this; the requirement above is not lifted: this is a change in preparation for the figure support of multi-cryostat detectors
            -   OpFastScintillation object is copiable but the copy is bugged (both copy will attempt to destroy the same memory); I turned it into a moveable, non-copiable object, as copy was not necessary (nor is move, actually)
            -   introduced an explicitly named OpFastScintillation::usesSemiAnalyticModel() method that will help to highlight the model-specific parts of the code
            -   these changes do not change the behaviour of the code
        -   fix (commit 1ab8718):
            -   introduced fOnlyActiveVolume flag marking the implementation of light propagation only from the active volume; if this flag is not set, the implementation will avoid steps which would require light propagation only from the active volume; in other words, if fOnlyActiveVolume is true if the scintillation source is not in the active volume it is not propagated, if it is false the propagation is attempted no matter where the source is; this is automatically set to true only if the semi-analytic model is used (usesSemiAnalyticModel() is true)
            -   introduced fOnlyOneCryostat option: setting this to true will acknowledge that the photon propagation might not be performed in cryostats beyond the first one (C:0); if this option is false, the detector has more than one cryostat and semi-analytic mode is used, an exception will be thrown, otherwise run will proceed; this is meant as a temporary option for testing the semianalytic model on a single cryostat in detectors like ICARUS, while the support to the full detector is being developed by somebody else; this flag is currently hard-coded to false, i.e. using semi-analytic model on multi-cryostat detectors will always throw an exception, while other models are unaffected
            -   introduced fOpaqueCathode flag marking the code assuming cathode opaqueness; if this flag is true, optimisations may be enabled not to propagate the scintillation light to optical detectors that are not facing the same TPC where scintillation happens; otherwise, all optical detectors are considered for propagation (any TPC, any cryostat); this flag is currently hard-coded to false because LArSoft does not have a way to detect nor express whether the cathode is transparent or opaque; this is for use in future implementations.
        -   some internals interacting with GeometryCore service provider have been converted to use geo::Point_t as point type instead of std::array\<double, 3\>, since the former is the recommended LArSoft interface (commits 9e07e5a and bfe915b); this change does not affect the behaviour of the class and it is not required in the resolution of the issue.
    -   It can be noted that the “fixes” at point 2 are very little about actions and a lot about marking assumptions throughout the code.  
        The hope is that this will make a bit easier to have full support of semi-analytic, which the SBN program is studying as an option, model for detectors like ICARUS. That will be Redmine issue \#24601

## Bug fixes

-   larsoft PR 15
    -   use python 3

## Updated dependencies

-   mrb v4_01_01

# Change List

## larsoft v08_58_00

-   2020-07-16 Lynn Garren : larsoft v08_58_00 for larsoft v08_58_00
-   2020-07-16 Lynn Garren : product versions
-   2020-07-15 Lynn Garren : Merge pull request \#15 from PetrilloAtWork/feature/gp_Py3update
-   2020-07-14 Gianluca Petrillo : Updated python library to support Python 3

## lareventdisplay v08_12_21

-   2020-07-16 Lynn Garren : lareventdisplay v08_12_21 for larsoft v08_58_00

## larexamples v08_06_21

-   2020-07-16 Lynn Garren : larexamples v08_06_21 for larsoft v08_58_00

## larg4 v08_14_06

## larpandora v08_13_01

-   2020-07-16 Lynn Garren : larpandora v08_13_01 for larsoft v08_58_00
-   2020-07-14 Lynn Garren : Merge pull request \#9 from PandoraPFA/feature/ProtoDUNEDualPhaseVolumes
-   2020-07-10 Etienne Chardonnet : Removed unused m_maxGapSize private variable in LArPandoraGeometry.h
-   2020-07-10 Etienne Chardonnet : Reversed the DP gaps change that created 4 drift volume, one for each TPC — Now back to 1 volume with 4 TPCs

## larrecodnn v08_06_01

-   2020-07-16 Lynn Garren : larrecodnn v08_06_01 for larsoft v08_58_00

## larwirecell v08_12_16

## larana v08_17_13

-   2020-07-16 Lynn Garren : larana v08_17_13 for larsoft v08_58_00

## larreco v08_32_06

-   2020-07-16 Lynn Garren : larreco v08_32_06 for larsoft v08_58_00

## larsim v08_29_00

-   2020-07-16 Lynn Garren : larsim v08_29_00 for larsoft v08_58_00
-   2020-07-16 Lynn Garren : Merge pull request \#30 from PetrilloAtWork/feature/gp_issue24600
-   2020-07-15 Gianluca Petrillo : Formal C changes in OpFastScintillation.cxx
-   2020-07-15 Gianluca Petrillo : Merge branch 'develop' into feature/gp_issue24600
-   2020-07-15 Lynn Garren : Merge pull request \#29 from ikatza/feature/icaza_NoDowncasting
-   2020-07-09 Gianluca Petrillo : White space removal.
-   2020-07-09 Gianluca Petrillo : OpFastScintillation: replaced the use of Geometry with GeometryCore.
-   2020-07-09 Gianluca Petrillo : OpFastScintillation uses geo::Point_t in operations related to geometry.
-   2020-07-09 Gianluca Petrillo : Removed optimizations which do not universally apply (Redmine issue \#24600).
-   2020-07-09 Gianluca Petrillo : OpFastScintillation::usesSemiAnalyticModel() centralizes mode query
-   2020-07-09 Gianluca Petrillo : OpFastScintillation now owns his pointer to PhotonVisibilityService.
-   2020-07-09 Gianluca Petrillo : Restored OpFastScintillation moveability.
-   2020-07-09 Gianluca Petrillo : OpFastScintillation made not moveable not copiable.
-   2020-07-09 Gianluca Petrillo : Using geometry facilities to detect active volumes.
-   2020-07-09 Iker de Icaza Astiz : Prevent implicit downcasting from double to int in VUVHits() and VISHits()

## larevt v08_12_00

## lardata v08_15_09

## larcore v08_11_10

## larpandoracontent v03_18_00

-   2020-07-16 Lynn Garren : larpandoracontent v03_18_00 for larsoft v08_58_00
-   2020-07-14 Lynn Garren : Merge pull request \#8 from PandoraPFA/feature/larpandoracontent_v03_18_00
-   2020-07-13 John Marshall : Merge pull request \#131 from MariaBrigida/feature/TwoViewMatching_tools
-   2020-07-13 John Marshall : Remove whitespace.
-   2020-07-13 John Marshall : Cosmetic.
-   2020-07-13 John Marshall : Order of checks on overlap results.
-   2020-07-13 Dom Brailsford : Static cast the number of sampling points to float so that the multiplcaition has not implicit casting.
-   2020-07-13 Dom Brailsford : Change catch arguments. Cosmetics.
-   2020-07-13 Maria Brigida Brunetti : Implement suggestions to PandoraPFA PR
-   2020-07-13 Dom Brailsford : Drop dot product cache and always recalculate for each overlap result. The cache can be reinstated after careful thought about how/where it needs clearing/updating.
-   2020-07-10 Maria Brigida Brunetti : Update CMakeLists.txt version and ChangeLog.txt
-   2020-07-10 Dom Brailsford : Update default values with latest tunes
-   2020-07-10 Maria Brigida Brunetti : Remove commented lines and change default thresholds
-   2020-07-09 Dom Brailsford : Create and return the particle as soon as a best candidate is found, rather than btreaking from the loop. Also update the default values
-   2020-07-09 Maria Brigida Brunetti : Add quality cuts for best element in TwoViewSimpleTracksTool
-   2020-07-09 Maria Brigida Brunetti : Shorten overlap fraction check in TwoViewLongTracksTool
-   2020-07-09 Maria Brigida Brunetti : Fix typo in TwoViewLongTracksTool
-   2020-07-08 Dom Brailsford : Read in the overall matching score and local matched fraction in XML
-   2020-07-08 Dom Brailsford : Only calculate the overlap results for clusters whose angle relative to the drift axis is sufficiently large.
-   2020-07-08 Maria Brigida Brunetti : Change nU, nV into n0, n1
-   2020-07-08 Maria Brigida Brunetti : Fix condition in overlap result sanity checks
-   2020-07-08 Maria Brigida Brunetti : Add sanity check in comparison operator for TwoViewTransverseOverlapResult
-   2020-07-08 Dom Brailsford : Update the thresholds so they are a bit more relaxed
-   2020-07-07 Maria Brigida Brunetti : Register TwoViewSimpleTracksTool in LArContent. Small bugfixes
-   2020-07-07 Maria Brigida Brunetti : Fill TwoViewSimpleTracksTool. Small cosmetic changes to TwoViewLongTracksTool
-   2020-07-07 Maria Brigida Brunetti : Make small adjustments in TwoViewLongTracksTool. Add skeleton for TwoViewSimpleTrackTool
-   2020-07-07 Dom Brailsford : Relax the grossly-wrong thresholds
-   2020-07-07 Dom Brailsford : Add option to only show/draw true matching individual elements
-   2020-07-07 Dom Brailsford : Draw all connected elements when drawing the individual elements. The other connected elements are drawn in a different colour to help distinguish them.
-   2020-07-07 Dom Brailsford : Add calo params to XML read-in
-   2020-07-07 Dom Brailsford : Add global matching score check to clear tracks tool
-   2020-07-07 Dom Brailsford : Drop the threshold for the locally matched fraction
-   2020-07-06 Dom Brailsford : Latest tuning params
-   2020-07-06 Dom Brailsford : Read in matching score threshold by xml
-   2020-07-06 Dom Brailsford : Add defence against malformed p-value calculations
-   2020-07-06 Dom Brailsford : Latest tunings
-   2020-07-06 Dom Brailsford : Add check on the global matching score
-   2020-07-06 Dom Brailsford : Add in minimum requirement on the global matching score before the overlap result is filled.
-   2020-07-06 Dom Brailsford : Add in sanity check on the locally matched fraction. If the fraction is below a threshold, don't add the overlap result to the matrix. This weeds out a lot of really poor quality matches.
-   2020-07-03 Dom Brailsford : Bug fix: use the correct x values when printing fraction1
-   2020-07-03 Dom Brailsford : Print truth information for each element when its available
-   2020-07-03 Maria Brigida Brunetti : Add TwoViewLongTracksTool to resolve obvious two-view matching ambiguities
-   2020-07-02 Dom Brailsford : Update the two-view track overlap result to store the number of comparisons and the number of matched comparisons rather than the raw number of downsampled points. Here, comparions are referred to as sampling points in the code. Store the downsampling factor and provide additional functions to calculate up-sampled number of points and matching points. No longer store the matched fraction, calculate it on the fly.
-   2020-07-02 Dom Brailsford : Change function to calculate the number of matched sampling points rather than the fraction. Calculate the fraction outside of the function.

## larsoftobj v08_29_02

## lardataobj v08_11_02

## lardataalg v08_13_14

## larcorealg v08_22_02

## larcoreobj v08_12_01

## webevd v08_00_07

## larbatch v01_52_02

## larutils v1_26_01

-   2020-07-16 Lynn Garren : larutils v1_26_01 for larsoft v08_58_00
-   2020-07-09 Lynn Garren : how about if we actually use the correct version
