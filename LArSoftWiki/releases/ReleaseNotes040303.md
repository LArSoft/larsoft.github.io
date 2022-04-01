# LArSoft v04_03_03 Release Notes



[list of LArSoft releases](LArSoft_release_list)  
[Download instructions](https://scisoft.fnal.gov/scisoft/bundles/larsoft/v04_03_03/larsoft-v04_03_03.html)

## Purpose

Changes since v04_03_02

## New features

## Bug fixes

## Updated dependencies

|               |          |           |                   |
|---------------|----------|-----------|-------------------|
| Product       | Version  | Qualifier | Notes             |
| cetbuildtools | v4_09_02 |           | minor improvement |

# Change List

## larsoft v04_03_03

-   2015-04-01 Lynn Garren : update versions
-   2015-04-01 Lynn Garren : larsoft v04_03_03 for larsoft v04_03_03
-   2015-04-01 Lynn Garren : new headers

## lareventdisplay v04_03_03

-   2015-04-01 Lynn Garren : lareventdisplay v04_03_03 for larsoft v04_03_03
-   2015-03-30 Lynn Garren : restore extra find_ups_product calls for now

## larexamples v04_03_03

-   2015-04-01 Lynn Garren : larexamples v04_03_03 for larsoft v04_03_03
-   2015-03-30 Lynn Garren : restore extra find_ups_product calls for now

## larpandora v04_03_03

-   2015-04-01 Lynn Garren : larpandora v04_03_03 for larsoft v04_03_03
-   2015-03-30 Lynn Garren : restore extra find_ups_product calls for now

## larana v04_03_03

-   2015-04-01 Lynn Garren : larana v04_03_03 for larsoft v04_03_03
-   2015-03-30 Tracy Usher : Remove std::cout statements! Ack!
-   2015-03-30 Tracy Usher : Minor changes to insure data products returned even when no input data
-   2015-03-30 Lynn Garren : restore extra find_ups_product calls for now

## larreco v04_03_03

-   2015-04-01 Lynn Garren : larreco v04_03_03 for larsoft v04_03_03
-   2015-04-01 Bruce Baller : Fix vertex indexing error
-   2015-03-31 drinkingkazu : Merge branch 'develop' of ssh://cdcvs.fnal.gov/cvs/projects/larreco into develop
-   2015-03-31 drinkingkazu : Merge branch 'ub_showerreco' into develop
-   2015-03-31 drinkingkazu : updating fcl name to be consistent —kazu
-   2015-03-31 drinkingkazu : Minor bug fix in FuzzyClusterMerger + fcl update -kazu
-   2015-03-31 drinkingkazu : Minor bug fix in reading in label —kazu
-   2015-03-31 Tracy Usher : Modify format of LogWarning messages so they can be more easily suppressed in production running (actually… shouldn't these be debug level messages?)
-   2015-03-31 drinkingkazu : Updating ShowerReco3D, in particular ShowerQuality is there —kazu
-   2015-03-31 drinkingkazu : Updating ClusterRecoUtil —kazu
-   2015-03-31 drinkingkazu : Updating CMTool —kazu
-   2015-03-31 drinkingkazu : Putting back MCComp —kazu
-   2015-03-31 drinkingkazu : Merge branch 'ub_showerreco' of ssh://cdcvs.fnal.gov/cvs/projects/larreco into ub_showerreco
-   2015-03-31 Tracy Usher : Using correct “key” when retrieving hits associated to clusters
-   2015-03-31 Tracy Usher : Provide better protection against exceptions thrown by “NearestWireID” when the coordinates are slightly out of range
-   2015-03-30 drinkingkazu : Merge branch 'develop' into ub_showerreco
-   2015-03-30 Tracy Usher : Change slightly logic when using PFParticles to make sure data products always returned for downstream code.
-   2015-03-30 Lynn Garren : restore extra find_ups_product calls for now
-   2015-03-30 Andrzej Szelc : Merge branch 'develop' into ub_showerreco
-   2015-02-16 Andrzej Szelc : a FuzzyClusterMerger that actually compiles. ooops.
-   2015-02-15 Andrzej Szelc : introduce FuzzyClusterMerger module, being a copy of the LArLite version
-   2015-02-15 Andrzej Szelc : a small fix
-   2015-02-15 Andrzej Szelc : temporarily remove MCComp until compilation fixed
-   2015-02-15 Andrzej Szelc : Merge branch 'develop' into ub_showerreco
-   2015-02-02 drinkingkazu : Merge branch 'develop' into ub_showerreco
-   2015-02-02 drinkingkazu : temporary —kazu
-   2015-01-28 drinkingkazu : New set of algorithms for shower/track mc\<=\>reco matching —kazu

## larsim v04_03_03

-   2015-04-01 Lynn Garren : larsim v04_03_03 for larsoft v04_03_03
-   2015-03-30 Lynn Garren : restore extra find_ups_product calls for now

## larevt v04_03_03

-   2015-04-01 Lynn Garren : larevt v04_03_03 for larsoft v04_03_03
-   2015-03-30 Lynn Garren : restore extra find_ups_product calls for now

## lardata v04_03_03

-   2015-04-01 Lynn Garren : lardata v04_03_03 for larsoft v04_03_03
-   2015-03-31 drinkingkazu : Adding NPlanes accessor —kazu
-   2015-03-27 Thomas Warburton : Merge branch 'develop' into feature/php13tkw_T0
-   2015-03-27 Thomas Warburton : Merge branch 'feature/usher_cluster3dupdates' into feature/php13tkw_T0
-   2015-03-27 Thomas Warburton : Changed Trigger Bits to int from unsigned int, also added a line missed out in class_def

## larcore v04_03_02

## larbatch v01_04_05

## larutils v1_00_07

-   2015-04-01 Lynn Garren : larutils v1_00_07 for larsoft v04_03_03
-   2015-03-25 Herbert Greenlee : Add release html file to artifacts.
