# LArSoft v05_11_00 Release Notes



[list of LArSoft releases](LArSoft_release_list)  
[Download instructions](https://scisoft.fnal.gov/scisoft/bundles/larsoft/v05_11_00/larsoft-v05_11_00.html)

## Purpose

-   Changes to develop
-   Replace SeedService with LArSeedService

## New features

-   use LArSeedService and drop artextensions \#12429
    -   lardata, larsim, larreco, larana
    -   experiment code needs feature/gp_LArSeedService
        -   argoneutcode, dunetpc, lar1ndcode, lariatsoft, uboonecode
-   lardata feature/gp_CreateAssnForFilters

## Breaking changes

-   [use LArSeedService](https://cdcvs.fnal.gov/redmine/projects/larsoft/wiki/Breaking_Changes#SeedService-from-artextensions-replaced-by-LArSeedService)

## Bug fixes

## Updated dependencies

|                   |           |                  |         |
|-------------------|-----------|------------------|---------|
| Product           | Version   | Qualifiers       | Notes   |
| larpandoracontent | v02_07_02 | e9               | \#12424 |
| genie_xsec        | v2_10_6a  | defaultplusccmec |         |

# Change List

## larsoft v05_11_00

-   2016-05-03 Lynn Garren : the nu distribution version is different than the nutools version
-   2016-05-03 Lynn Garren : larsoft v05_11_00 for larsoft v05_11_00
-   2016-05-03 Lynn Garren : drop artextensions

## lareventdisplay v05_06_06

-   2016-05-03 Lynn Garren : lareventdisplay v05_06_06 for larsoft v05_11_00

## larexamples v05_06_06

-   2016-05-03 Lynn Garren : larexamples v05_06_06 for larsoft v05_11_00

## larpandora v05_09_03

-   2016-05-04 Lynn Garren : fix the logic
-   2016-05-04 Lynn Garren : larpandoracontent qualifiers
-   2016-05-03 Lynn Garren : larpandora v05_09_03 for larsoft v05_11_00
-   2016-05-03 Lynn Garren : allow for building larpandoracontent with mrb

## larana v05_09_00

-   2016-05-03 Lynn Garren : larana v05_09_00 for larsoft v05_11_00
-   2016-05-03 Lynn Garren : LArSoft no longer uses artextensions
-   2016-05-02 Gianluca Petrillo : Merge remote-tracking branch 'origin/develop' into feature/gp_LArSeedService
-   2016-04-25 Gianluca Petrillo : Update after moving from SeedService to LArSeedService

## larreco v05_11_00

-   2016-05-03 Lynn Garren : larreco v05_11_00 for larsoft v05_11_00
-   2016-05-03 Lynn Garren : LArSoft no longer uses artextensions
-   2016-05-02 Gianluca Petrillo : Merge remote-tracking branch 'origin/develop' into feature/gp_LArSeedService
-   2016-04-25 Gianluca Petrillo : Update after moving from SeedService to LArSeedService

## larsim v05_11_00

-   2016-05-03 Lynn Garren : genie_xsec v2_10_6a
-   2016-05-03 Lynn Garren : larsim v05_11_00 for larsoft v05_11_00
-   2016-05-03 Lynn Garren : LArSoft no longer uses artextensions
-   2016-05-03 Lynn Garren : we no longer use artextensions
-   2016-05-02 Gianluca Petrillo : Merge remote-tracking branch 'origin/develop' into feature/gp_LArSeedService
-   2016-04-25 Gianluca Petrillo : Update after moving from SeedService to LArSeedService

## larevt v05_06_06

-   2016-05-03 Lynn Garren : larevt v05_06_06 for larsoft v05_11_00

## lardata v05_08_00

-   2016-05-03 Lynn Garren : lardata v05_08_00 for larsoft v05_11_00
-   2016-05-03 Lynn Garren : Merge branch 'feature/gp_CreateAssnForFilters' into release/v05_11_00
-   2016-05-02 Gianluca Petrillo : Merge remote-tracking branch 'origin/develop' into feature/gp_LArSeedService
-   2016-05-02 Gianluca Petrillo : More C-friendly recob::Shower constructor
-   2016-04-25 Gianluca Petrillo : Update after moving from SeedService to LArSeedService
-   2016-04-25 Gianluca Petrillo : Update after moving from SeedService to LArSeedService
-   2016-04-19 Hamlet : Enable filter modules to use the CreateAssns() functions

## larcore v05_07_01

## larbatch v01_21_03

-   2016-05-03 Lynn Garren : larbatch v01_21_03 for larsoft v05_11_00
-   2016-04-29 yuntse : Merge remote-tracking branch 'refs/remotes/origin/develop' into develop
-   2016-04-29 yuntse : Revert dag structure to one line per job.
-   2016-04-29 yuntse : os.path.exists -\> safeexist.

## larutils v1_06_01
