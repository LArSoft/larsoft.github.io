# LArSoft v08_45_00 Release Notes



[list of LArSoft releases](LArSoft_release_list)  
Download instructions for [larsoft v08_45_00](https://scisoft.fnal.gov/scisoft/bundles/larsoft/v08_45_00/larsoft-v08_45_00.html)  
Download instructions for [just larsoftobj v08_27_01](https://scisoft.fnal.gov/scisoft/bundles/larsoftobj/v08_27_01/larsoftobj-v08_27_01.html)

## Purpose

-   changes in develop
-   approved PRs

## New features

-   larreco/RecoAlg/ImagePatternAlgs moved into new repository larrecodnn
    -   DataProvider remains in larreco
    -   ImagePatternAlgs has the interface to tensorflow, and now trtis_clients
        -   At this time, the interfaces are in the same code, which artificially couples tensorflow and trtis_clients.
    -   dunetpc feature/lg_for_larrecodnn
    -   migration script MigrateImagePatternAlgs.sh (setup larsoft v08_45_00)
-   TrajCluster and ClusterAna module improvements larreco PR 1

## Bug fixes

-   updates to the top level CMakeLists.txt file for all packages
    -   resolves the problem with using target-based ROOT libraries on macOS.

## Updated dependencies

-   mrb v4_00_01 - required for macOS
-   trtis_clients v19_11a
    -   opencv v4_2_0
-   artdaq_core v3_05_12
    -   tiny bug fix for one variable that shows up as maybe uninitialized

# Change List

## larsoft v08_45_00

-   2020-03-04 Lynn Garren : its nice if you define the trtis_clients version
-   2020-03-04 Lynn Garren : at this time, trtis_clients is only available for py3
-   2020-03-04 Lynn Garren : need languages
-   2020-03-04 Lynn Garren : adding opencv
-   2020-03-04 Lynn Garren : larsoft v08_45_00 for larsoft v08_45_00
-   2020-03-04 Lynn Garren : product versions
-   2020-03-04 Lynn Garren : adding larrecodnn
-   2020-03-04 Lynn Garren : migration scriptfor larrecodnn
-   2020-02-28 Lynn Garren : Merge pull request \#9 from lgarren/feature/lg_modern_root
-   2020-02-27 Lynn Garren : declare project language and update cmake_minimum_required

## lareventdisplay v08_12_05

-   2020-03-04 Lynn Garren : lareventdisplay v08_12_05 for larsoft v08_45_00
-   2020-02-28 Lynn Garren : Merge pull request \#4 from lgarren/feature/lg_modern_root
-   2020-02-27 Lynn Garren : declare project language and update cmake_minimum_required

## larexamples v08_06_05

-   2020-03-04 Lynn Garren : larexamples v08_06_05 for larsoft v08_45_00
-   2020-02-28 Lynn Garren : Merge pull request \#3 from lgarren/feature/lg_modern_root
-   2020-02-27 Lynn Garren : declare project language and update cmake_minimum_required

## larg4 v08_12_03

-   2020-03-04 Lynn Garren : larg4 v08_12_03 for larsoft v08_45_00
-   2020-02-28 Lynn Garren : Merge pull request \#5 from lgarren/feature/lg_modern_root
-   2020-02-27 Lynn Garren : declare project language and update cmake_minimum_required

## larpandora v08_11_05

-   2020-03-04 Lynn Garren : larpandora v08_11_05 for larsoft v08_45_00
-   2020-02-28 Lynn Garren : Merge pull request \#4 from lgarren/feature/lg_modern_root
-   2020-02-27 Lynn Garren : declare project language and update cmake_minimum_required

## larrecodnn v08_00_00

## larwirecell v08_12_05

-   2020-03-04 Lynn Garren : larwirecell v08_12_05 for larsoft v08_45_00
-   2020-02-27 Lynn Garren : Merge pull request \#3 from lgarren/feature/lg_modern_root
-   2020-02-27 Lynn Garren : declare project language and update cmake_minimum_required

## larana v08_16_05

-   2020-03-04 Lynn Garren : larana v08_16_05 for larsoft v08_45_00
-   2020-02-28 Lynn Garren : Merge pull request \#4 from lgarren/feature/lg_modern_root
-   2020-02-27 Lynn Garren : declare project language and update cmake_minimum_required

## larreco v08_29_00

-   2020-03-04 Lynn Garren : larreco v08_29_00 for larsoft v08_45_00
-   2020-03-04 Lynn Garren : larreco now only depends on larsim and eigen
-   2020-03-04 Lynn Garren : more RecoAlg/ImagePatternAlgs to larrecodnn
-   2020-03-03 Lynn Garren : Merge pull request \#1 from brballer/feature/bb_TCWork2
-   2020-03-03 Tingjun Yang : Remove KinkCuts.
-   2020-03-03 Tingjun Yang : remove white spaces.
-   2020-03-03 Tingjun Yang : remove Vertex3DCuts from microboone_trajclusteralg
-   2020-03-03 Tingjun Yang : Merge branch 'feature/bb_TCWork2' of https://github.com/brballer/larreco into feature/bb_TCWork2
-   2020-03-03 Bruce Baller : Merge branch 'feature/bb_TCWork2' of https://github.com/brballer/larreco into feature/bb_TCWork2
-   2020-03-03 Bruce Baller : Set default Vertex3DCuts for uB
-   2020-03-02 Lynn Garren : Update clustermodules.fcl
-   2020-03-02 Patrick Gartung : Revert incorrect change.
-   2020-03-02 Patrick Gartung : Update clustermodules.fcl
-   2020-03-02 Patrick Gartung : Update clustermodules.fcl
-   2020-03-02 Tingjun Yang : Set default SpacePointModuleLabel to NA.
-   2020-02-28 Bruce Baller : Remove white space
-   2020-02-28 Bruce Baller : ’rvert CMakeLists.txt changesâ
-   2020-02-28 Bruce Baller : Merge remote-tracking branch 'upstream/develop' into feature/bb_TCWork2
-   2020-02-28 Bruce Baller : Merge branch 'feature/bb_TCWork2' of https://github.com/brballer/larreco into feature/bb_TCWork2
-   2020-02-28 Bruce Baller : Resolve differences between mac and gpvm
-   2020-02-28 Bruce Baller : commit all files
-   2020-02-28 Lynn Garren : Merge pull request \#7 from lgarren/feature/lg_modern_root
-   2020-02-27 Bruce Baller : Modify version for mrbsetenv
-   2020-02-27 Lynn Garren : declare project language and update cmake_minimum_required
-   2020-02-20 Bruce : Fixes to TrajCluster and ClusterTrackAna
-   2020-02-13 Bruce : Clean up code and improve ClusterAnaV2 output
-   2020-02-08 Bruce : Fix typo
-   2020-02-08 Bruce : Clean up code and output
-   2020-01-31 Bruce : Merge branch 'develop' into feature/bb_TCWork2
-   2020-01-31 Bruce : Merge branch 'develop' of github.com:brballer/larreco into develop
-   2020-01-31 Bruce : Clean up code
-   2020-01-28 Bruce : Merge branch 'feature/bb_TCWork2' of github.com:brballer/larreco into feature/bb_TCWork2
-   2020-01-28 Bruce : removed trailing whitespace
-   2020-01-25 Patrick Gartung : Merge branch 'develop' into feature/bb_TCWork2
-   2020-01-24 Bruce : trajcluster and ana module code improvements.
-   2020-01-21 Bruce : Code cleanup
-   2020-01-21 Bruce : Work on performance metric.
-   2020-01-21 Bruce : Work on performance metric.
-   2020-01-21 Bruce : Work on performance metric.
-   2020-01-08 Bruce : Clean up and tweak kink code.
-   2019-12-24 Bruce : Add histograms to TCTruth
-   2019-12-22 Bruce : hack the version
-   2019-12-21 Bruce : Merge branch 'develop' into feature/bb_TCWork2
-   2019-12-21 Bruce : Merge branch 'develop' of ssh://cdcvs.fnal.gov/cvs/projects/larreco into develop
-   2019-12-18 Bruce : A suite of 2D and 3D improvements
-   2019-12-07 Bruce : recover from merge conflicts
-   2019-12-06 Bruce : Merge branch 'develop' into feature/bb_TCWork2
-   2019-12-06 Bruce : Merge branch 'develop' of ssh://cdcvs.fnal.gov/cvs/projects/larreco into develop
-   2019-12-06 Bruce : commit before merge
-   2019-11-26 baller : Add lightweight TCWireIntersection for faster 3D matching, querying a source hit collection (e.g. gaushit) to obviate disambiguation problems, use SpacePoints for 3D matching. Re-write the performance metric code.
-   2019-11-26 baller : Add lightweight TCWireIntersection for faster 3D matching, querying a source hit collection (e.g. gaushit) to obviate disambiguation problems, use SpacePoints for 3D matching. Re-write the performance metric code.
-   2019-11-26 baller : Add lightweight TCWireIntersection for faster 3D matching, querying a source hit collection (e.g. gaushit) to obviate disambiguation problems, use SpacePoints for 3D matching. Re-write the performance metric code.
-   2019-11-26 baller : Add lightweight TCWireIntersection for faster 3D matching, querying a source hit collection (e.g. gaushit) to obviate disambiguation problems, use SpacePoints for 3D matching. Re-write the performance metric code.
-   2019-11-26 baller : Add lightweight TCWireIntersection for faster 3D matching, querying a source hit collection (e.g. gaushit) to obviate disambiguation problems, use SpacePoints for 3D matching. Re-write the performance metric code.
-   2019-11-26 baller : Add lightweight TCWireIntersection for faster 3D matching, querying a source hit collection (e.g. gaushit) to obviate disambiguation problems, use SpacePoints for 3D matching. Re-write the performance metric code.
-   2019-11-26 baller : Add lightweight TCWireIntersection for faster 3D matching, querying a source hit collection (e.g. gaushit) to obviate disambiguation problems, use SpacePoints for 3D matching. Re-write the performance metric code.
-   2019-11-26 baller : Add lightweight TCWireIntersection for faster 3D matching, querying a source hit collection (e.g. gaushit) to obviate disambiguation problems, use SpacePoints for 3D matching. Re-write the performance metric code.
-   2019-11-26 baller : Add lightweight TCWireIntersection for faster 3D matching, querying a source hit collection (e.g. gaushit) to obviate disambiguation problems, use SpacePoints for 3D matching. Re-write the performance metric code.
-   2019-11-26 baller : Add lightweight TCWireIntersection for faster 3D matching, querying a source hit collection (e.g. gaushit) to obviate disambiguation problems, use SpacePoints for 3D matching. Re-write the performance metric code.
-   2019-11-26 baller : Add lightweight TCWireIntersection for faster 3D matching, querying a source hit collection (e.g. gaushit) to obviate disambiguation problems, use SpacePoints for 3D matching. Re-write the performance metric code.
-   2019-11-26 baller : Add lightweight TCWireIntersection for faster 3D matching, querying a source hit collection (e.g. gaushit) to obviate disambiguation problems, use SpacePoints for 3D matching. Re-write the performance metric code.
-   2019-11-26 baller : Add lightweight TCWireIntersection for faster 3D matching, querying a source hit collection (e.g. gaushit) to obviate disambiguation problems, use SpacePoints for 3D matching. Re-write the performance metric code.
-   2019-11-09 baller : Fix final PDG code specification
-   2019-11-09 baller : Ongoing improvements
-   2019-11-07 baller : Merge branch 'develop' into feature/bb_TCWork2
-   2019-11-07 baller : Merge branch 'develop' of ssh://cdcvs.fnal.gov/cvs/projects/larreco into develop
-   2019-11-06 baller : Ongoing TCWork2 development
-   2019-11-06 baller : Ongoing TCWork2 development
-   2019-11-06 baller : Ongoing TCWork2 development
-   2019-11-06 baller : Ongoing TCWork2 development
-   2019-11-06 baller : Ongoing TCWork2 development
-   2019-11-06 baller : Ongoing TCWork2 development
-   2019-11-06 baller : Ongoing TCWork2 development
-   2019-11-06 baller : Ongoing TCWork2 development
-   2019-10-27 baller : Tweak GottaKink_v2
-   2019-10-25 baller : Work on 3D kink finding
-   2019-10-25 baller : Work on 3D kink finding
-   2019-10-25 baller : Work on 3D kink finding
-   2019-10-25 baller : Work on 3D kink finding
-   2019-10-25 baller : Work on 3D kink finding
-   2019-10-25 baller : Cleanup
-   2019-10-25 baller : Work on 3D kink finding
-   2019-10-25 baller : Work on 3D kink finding
-   2019-10-25 baller : Work on 3D kink finding
-   2019-10-25 baller : Work on 3D kink finding
-   2019-10-25 baller : Work on 3D kink finding
-   2019-10-25 baller : Work on 3D kink finding
-   2019-09-29 baller : 3D vertex and tracking improvements
-   2019-09-29 baller : 3D vertex and tracking improvements
-   2019-09-29 baller : 3D vertex and tracking improvements
-   2019-09-29 baller : 3D vertex and tracking improvements
-   2019-09-29 baller : 3D vertex and tracking improvements
-   2019-09-29 baller : 3D vertex and tracking improvements
-   2019-09-29 baller : 3D vertex and tracking improvements
-   2019-09-29 baller : 3D vertex improvements
-   2019-09-29 baller : 3D vertex improvements
-   2019-09-23 baller : Tweak to get a build

## larsim v08_20_01

-   2020-03-04 Lynn Garren : larsim v08_20_01 for larsoft v08_45_00
-   2020-02-28 Lynn Garren : Merge pull request \#8 from lgarren/feature/lg_modern_root
-   2020-02-27 Lynn Garren : declare project language and update cmake_minimum_required

## larevt v08_10_05

-   2020-03-04 Lynn Garren : larevt v08_10_05 for larsoft v08_45_00
-   2020-02-28 Lynn Garren : Merge pull request \#4 from lgarren/feature/lg_modern_root
-   2020-02-27 Lynn Garren : declare project language and update cmake_minimum_required

## lardata v08_14_04

-   2020-03-04 Lynn Garren : lardata v08_14_04 for larsoft v08_45_00
-   2020-02-28 Lynn Garren : Merge pull request \#5 from lgarren/feature/lg_modern_root
-   2020-02-27 Lynn Garren : declare project language and update cmake_minimum_required

## larcore v08_11_01

-   2020-03-04 Lynn Garren : larcore v08_11_01 for larsoft v08_45_00
-   2020-02-28 Lynn Garren : Merge pull request \#4 from lgarren/feature/lg_modern_root
-   2020-02-27 Lynn Garren : fix whitespace
-   2020-02-27 Lynn Garren : declare project language and update cmake_minimum_required

## larpandoracontent v03_15_15

## larsoftobj v08_27_01

-   2020-03-04 Lynn Garren : larsoftobj v08_27_01 for larsoft v08_45_00
-   2020-03-04 Lynn Garren : product versions
-   2020-02-27 Lynn Garren : Merge pull request \#3 from lgarren/feature/lg_modern_root
-   2020-02-27 Lynn Garren : declare project language and update cmake_minimum_required

## lardataobj v08_10_04

-   2020-03-04 Lynn Garren : lardataobj v08_10_04 for larsoft v08_45_00
-   2020-02-28 Lynn Garren : Merge pull request \#4 from lgarren/feature/lg_modern_root
-   2020-02-27 Lynn Garren : declare project language and update cmake_minimum_required

## lardataalg v08_13_04

-   2020-03-04 Lynn Garren : lardataalg v08_13_04 for larsoft v08_45_00
-   2020-02-28 Lynn Garren : Merge pull request \#3 from lgarren/feature/lg_modern_root
-   2020-02-27 Lynn Garren : declare project language and update cmake_minimum_required

## larcorealg v08_21_01

-   2020-03-04 Lynn Garren : larcorealg v08_21_01 for larsoft v08_45_00
-   2020-02-28 Lynn Garren : Merge pull request \#4 from lgarren/feature/lg_modern_root
-   2020-02-27 Lynn Garren : declare project language and update cmake_minimum_required

## larcoreobj v08_10_03

-   2020-03-04 Lynn Garren : larcoreobj v08_10_03 for larsoft v08_45_00
-   2020-02-28 Lynn Garren : Merge pull request \#4 from lgarren/feature/lg_modern_root
-   2020-02-27 Lynn Garren : declare project language and update cmake_minimum_required
-   2020-02-17 Patrick Gartung : remove github actions

## larbatch v01_52_02

## larutils v1_25_07
