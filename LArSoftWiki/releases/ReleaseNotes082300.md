# LArSoft v08_23_00 Release Notes



[list of LArSoft releases](LArSoft_release_list)  
Download instructions for [larsoft v08_23_00](https://scisoft.fnal.gov/scisoft/bundles/larsoft/v08_23_00/larsoft-v08_23_00.html)  
Download instructions for [just larsoftobj v08_15_02](https://scisoft.fnal.gov/scisoft/bundles/larsoftobj/v08_15_02/larsoftobj-v08_15_02.html)

## Purpose

-   changes in develop
-   approved feature branches

## New features

-   larreco feature/bb_new3D
-   removal of bezier and other unused modules for \#20618
    -   **This is a breaking change.**
    -   larsim: feature/knoepfel_rm_unused_modules
    -   larreco: feature/knoepfel_rm_bezier
    -   larevt: feature/knoepfel_rm_unused_modules
    -   lareventdisplay: feature/knoepfel_rm_bezier
    -   lardata: feature/knoepfel_rm_unused_modules
    -   larana: feature/team_rm_bezier
    -   experiments
        -   argoneutcode: feature/knoepfel_rm_bezier
        -   dunetpc: feature/knoepfel_rm_bezier
        -   lariatsoft: feature/knoepfel_rm_bezier
        -   sbndcode: feature/team_for_nutools_v3
        -   ubreco: feature/knoepfel_rm_bezier
        -   ublite: feature/knoepfel_rm_bezier
        -   ubana: feature/knoepfel_rm_bezier

## Bug fixes

## Updated dependencies

-   ifdhc_config v2_4_5
    -   see bug \#22738
    -   only the config is changed with respect to v2_4_4

# Change List

## larsoft v08_23_00

-   2019-06-20 Lynn Garren : larsoft v08_23_00 for larsoft v08_23_00
-   2019-06-20 Lynn Garren : product versions
-   2019-06-20 Lynn Garren : build hdf5
-   2019-06-20 Lynn Garren : distribute hdf5
-   2019-06-19 Lynn Garren : bug fix ifdhc_config v2_4_5
-   2019-06-10 Lynn Garren : s84

## lareventdisplay v08_08_00

-   2019-06-20 Lynn Garren : lareventdisplay v08_08_00 for larsoft v08_23_00
-   2019-06-19 Lynn Garren : Merge branch 'feature/knoepfel_rm_bezier' into release/v08_23_00
-   2019-06-10 Lynn Garren : larsoft v08_22_00
-   2019-06-06 Tom Junk : put some protection in to check the recob::Wire pointer gotten from the Assn
-   2019-06-05 Kyle Knoepfel : Remove unused Landed system.
-   2019-06-04 Kyle Knoepfel : Merge branch 'develop' into feature/knoepfel_rm_bezier
-   2019-05-24 Kyle Knoepfel : Remove deprecated Bezier constructs.

## larexamples v08_02_08

-   2019-06-20 Lynn Garren : larexamples v08_02_08 for larsoft v08_23_00

## larg4 v08_03_07

-   2019-06-20 Lynn Garren : larg4 v08_03_07 for larsoft v08_23_00

## larpandora v08_07_04

-   2019-06-20 Lynn Garren : larpandora v08_07_04 for larsoft v08_23_00

## larwirecell v08_05_07

-   2019-06-20 Lynn Garren : larwirecell v08_05_07 for larsoft v08_23_00

## larana v08_10_00

-   2019-06-20 Lynn Garren : larana v08_10_00 for larsoft v08_23_00
-   2019-06-20 Lynn Garren : Merge branch 'feature/team_rm_bezier' into release/v08_23_00
-   2019-06-20 Lynn Garren : removing modules per Kyle
-   2019-06-04 Kyle Knoepfel : Merge branch 'develop' into feature/knoepfel_rm_bezier
-   2019-05-24 Kyle Knoepfel : Remove deprecated Bezier constructs.

## larreco v08_15_00

-   2019-06-20 Lynn Garren : larreco v08_15_00 for larsoft v08_23_00
-   2019-06-19 Lynn Garren : Merge branch 'feature/knoepfel_rm_bezier' into release/v08_23_00
-   2019-06-19 Lynn Garren : from Bruce's email
-   2019-06-19 Lynn Garren : Merge branch 'feature/bb_new3D' into release/v08_23_00
-   2019-06-14 Chao Zhang : add truth depo; add mc traj; add support for icarus.
-   2019-06-13 Usher, Tracy L : correct usage of emplace_back
-   2019-06-13 Usher, Tracy L : Testing a new metric for determining the least cost path which uses the individual 3D hit “chi-square” rather than the distance between hits
-   2019-06-11 Usher, Tracy L : Merge branch 'develop' of ssh://cdcvs.fnal.gov/cvs/projects/larreco into develop
-   2019-06-11 Usher, Tracy L : Simplify nearest neighbor lookup
-   2019-06-10 baller : fix int/unsigned int comparison error
-   2019-06-10 baller : fix int/unsigned int comparison error
-   2019-06-08 baller : Performance improvements and bug fixes.
-   2019-06-08 baller : Performance improvements and bug fixes.
-   2019-06-08 baller : Performance improvements and bug fixes.
-   2019-06-08 baller : Performance improvements and bug fixes.
-   2019-06-08 baller : Performance improvements and bug fixes.
-   2019-06-08 baller : Performance improvements and bug fixes.
-   2019-06-08 baller : Performance improvements and bug fixes.
-   2019-06-08 baller : Performance improvements and bug fixes.
-   2019-06-08 baller : Performance improvements and bug fixes.
-   2019-06-08 baller : Performance improvements and bug fixes.
-   2019-06-08 baller : Performance improvements and bug fixes.
-   2019-06-05 Kyle Knoepfel : Remove unused modules.
-   2019-06-04 Kyle Knoepfel : Merge branch 'develop' into feature/knoepfel_rm_bezier
-   2019-06-04 baller : Performance improvements
-   2019-06-04 baller : Performance improvements
-   2019-06-04 baller : Performance improvements
-   2019-06-01 baller : Merge branch 'develop' into feature/bb_new3D
-   2019-06-01 baller : Merge branch 'feature/bb_new3D' of ssh://cdcvs.fnal.gov/cvs/projects/larreco into feature/bb_new3D
-   2019-06-01 baller : Optional use of SpacePoints, bug fixes and improvements
-   2019-06-01 baller : Optional use of SpacePoints, bug fixes and improvements
-   2019-06-01 baller : Optional use of SpacePoints, bug fixes and improvements
-   2019-06-01 baller : Optional use of SpacePoints, bug fixes and improvements
-   2019-06-01 baller : Optional use of SpacePoints, bug fixes and improvements
-   2019-06-01 baller : Optional use of SpacePoints, bug fixes and improvements
-   2019-06-01 baller : Optional use of SpacePoints, bug fixes and improvements
-   2019-06-01 baller : Optional use of SpacePoints, bug fixes and improvements
-   2019-06-01 baller : Optional use of SpacePoints, bug fixes and improvements
-   2019-06-01 baller : Optional use of SpacePoints, bug fixes and improvements
-   2019-06-01 baller : Optional use of SpacePoints, bug fixes and improvements
-   2019-06-01 baller : Remove unused variable
-   2019-05-23 Kyle Knoepfel : Remove deprecated Bezier constructs.

## larsim v08_09_00

-   2019-06-20 Lynn Garren : Merge branch 'feature/knoepfel_rm_unused_modules' into release/v08_23_00
-   2019-06-20 Lynn Garren : larsim v08_09_00
-   2019-06-20 Lynn Garren : using larevt v08_06_00
-   2019-06-20 Lynn Garren : larsim v08_09_00 for larsoft v08_23_00
-   2019-06-19 Lynn Garren : Merge branch 'release/v08_23_00' into feature/knoepfel_rm_unused_modules
-   2019-06-17 Gianluca Petrillo : Bug fix: PhotonVisibilityService::NOpChannel() now refers to the mapping.
-   2019-06-05 Kyle Knoepfel : Remove unused modules.

## larevt v08_06_00

-   2019-06-20 Lynn Garren : larevt v08_06_00 for larsoft v08_23_00
-   2019-06-19 Lynn Garren : Merge branch 'feature/knoepfel_rm_unused_modules' into release/v08_23_00
-   2019-06-05 Kyle Knoepfel : Remove unused modules.

## lardata v08_06_00

-   2019-06-20 Lynn Garren : lardata v08_06_00 for larsoft v08_23_00
-   2019-06-19 Lynn Garren : Merge branch 'feature/knoepfel_rm_unused_modules' into release/v08_23_00
-   2019-06-13 Kyle Knoepfel : Remove FileCatalogMetadataExtras.

## larcore v08_04_04

## larpandoracontent v03_14_08

## larsoftobj v08_15_02

## lardataobj v08_04_03

## lardataalg v08_07_02

## larcorealg v08_12_01

## larcoreobj v08_05_01

## larbatch v01_51_04

## larutils v1_24_00

-   2019-06-20 Lynn Garren : larutils v1_24_00 for larsoft v08_23_00
-   2019-06-18 Lynn Garren : skip py3 on SLF6
-   2019-06-17 Lynn Garren : support -l py3 build
-   2019-06-14 Lynn Garren : start adding py3 build option
-   2019-06-13 Lynn Garren : fix typo
-   2019-06-13 Lynn Garren : modernize
-   2019-06-13 Lynn Garren : add s84
