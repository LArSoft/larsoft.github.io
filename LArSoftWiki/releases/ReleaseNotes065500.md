# LArSoft v06_55_00 Release Notes



[list of LArSoft releases](LArSoft_release_list)  
Download instructions for [larsoft v06_55_00](https://scisoft.fnal.gov/scisoft/bundles/larsoft/v06_55_00/larsoft-v06_55_00.html)  
Download instructions for [just larsoftobj v1_29_01](https://scisoft.fnal.gov/scisoft/bundles/larsoftobj/v1_29_01/larsoftobj-v1_29_01.html)

## Purpose

-   changes to develop
-   build with art 2.08.04

## New features

## Bug fixes

-   \#17898 resolved with art 2.08.04
    -   see [Kyle's presentation](https://indico.fnal.gov/event/15586/contribution/4/material/slides/0.pdf)
-   \#17926
-   \#18002

## Updated dependencies

|             |          |            |                                                             |                   |
|-------------|----------|------------|-------------------------------------------------------------|-------------------|
| Product     | Version  | Qualifiers | Notes                                                       |                   |
| canvas      | v3_00_03 | e14:nu     | [ Release Notes](https://cdcvs.fnal.gov/redmine/projects/canvas/wiki/Release_Notes                                    ) |
| gallery     | v1_05_03 | e14:nu     | [ Release Notes](https://cdcvs.fnal.gov/redmine/projects/gallery/wiki/Release_Notes_10503                             ) |
| art         | v2_08_04 | e14:nu     | [ Release Notes](https://cdcvs.fnal.gov/redmine/projects/art/wiki/Series_208                                          ) |
| ifdh_art    | v2_03_05 | e14:nu:s56 |                                                             |                   |
| artdaq_core | v1_07_12 | e14:nu:s56 |                                                             |                   |
| nusimdata   | v1_08_04 | e14        |                                                             |                   |
| nutools     | v2_16_06 | e14        | [ Release Notes](https://cdcvs.fnal.gov/redmine/projects/nutools/wiki/NuTools_Release_Notes#nutools-v2_16_06-10232017 ) |

# Change List

## larsoft v06_55_00

-   2017-10-25 Lynn Garren : larsoft v06_55_00 for larsoft v06_55_00
-   2017-10-25 Lynn Garren : fix genie and dk2nu
-   2017-10-25 Lynn Garren : update product versions
-   2017-10-25 Lynn Garren : update dependency database
-   2017-10-24 Lynn Garren : ifdh_art v2_03_05

## lareventdisplay v06_14_00

-   2017-10-25 Lynn Garren : lareventdisplay v06_14_00 for larsoft v06_55_00
-   2017-10-20 Tingjun Yang : Take into account particle generation time. Turn off cosmics in MCTruthVectors2D.
-   2017-10-20 Tingjun Yang : fix color code for track id text.
-   2017-10-20 Tingjun Yang : Display cluster id instead of index so we can see negative id.

## larexamples v06_07_06

-   2017-10-25 Lynn Garren : larexamples v06_07_06 for larsoft v06_55_00

## larpandora v06_17_03

-   2017-10-25 Lynn Garren : larpandora v06_17_03 for larsoft v06_55_00

## larwirecell v06_08_01

-   2017-10-25 Lynn Garren : larwirecell v06_08_01 for larsoft v06_55_00

## larana v06_11_00

-   2017-10-25 Lynn Garren : larana v06_11_00 for larsoft v06_55_00
-   2017-10-20 Nick Grant : Merge branch 'develop' of ssh://cdcvs.fnal.gov/cvs/projects/larana into develop
-   2017-10-19 Nick Grant : Update MVAPID_module.cc, MVAAlg.h and MVAAlg.cxx to get detector dimensions and calculate wire angles from geometry

## larreco v06_44_00

-   2017-10-25 Lynn Garren : larreco v06_44_00 for larsoft v06_55_00
-   2017-10-24 Lynn Garren : nutools v2_16_06
-   2017-10-22 Robert Sulej : remove cout
-   2017-10-22 Robert Sulej : move nu event dumping to dunetpc (specific to dune geo)
-   2017-10-21 Robert Sulej : Merge branch 'develop' of ssh://cdcvs.fnal.gov/cvs/projects/larreco into develop
-   2017-10-20 Robert Sulej : align all wire offsets, cleanup code
-   2017-10-20 Robert Sulej : pass output node name as cmd line param

## larsim v06_33_00

-   2017-10-25 Lynn Garren : larsim v06_33_00 for larsoft v06_55_00
-   2017-10-21 Jason Stock : removing G4ModuleLable from ParticleInventoryService. It isn't needed outside the service provider.
-   2017-10-20 Jason Stock : Finalizing fhicl validation in ParticleInventoryService and passthrough of a fhicl table to ParticleInventory
-   2017-10-20 Jason Stock : squash renaming a couple items
-   2017-10-20 Jason Stock : Making the ParticleInventoryService fhicl validation ready.
-   2017-10-19 Jason Stock : Bug Fix in the PrepEvent for the ParticleInventory service provider. Missing negation.
-   2017-10-19 Jason Stock : Merge remote-tracking branch 'origin/develop' into feature/JStock_ParticleInventory
-   2017-10-19 Jason Stock : Making the TrackIdToEveTrackId function constant. (for use in BackTracker).
-   2017-10-19 Jason Stock : Adding TrackIdToEveTrackId function to ParticleInventory (Needed for new HitToEveId function in BackTracker).
-   2017-10-18 Jason Stock : Merge remote-tracking branch 'remotes/origin/develop' into feature/JStock_ParticleInventory
-   2017-10-18 Jason Stock : Final touches on some of the template methods. Implimenting last cleanup and data retrieval.
-   2017-10-17 Jason Stock : Adding in useful error handeling.
-   2017-10-17 Jason Stock : Update to ParticleInventory using reccomendations for Gianluca to clean up a couple points and begin adding fhicl validation support.
-   2017-10-13 Jason Stock : Bandaid for the ParticleInventoryService provider type until I can sit down with an expert and do it right.
-   2017-10-13 Jason Stock : Added larprovider type to ParticleInventoryService
-   2017-10-13 Jason Stock : Slight change in naming conventions to make functions which return pointers or vectors of pointers more explicit
-   2017-10-12 Jason Stock : Added header for Message Facility
-   2017-10-12 Jason Stock : Updating ParticleInventory functions to be const and making the cache objects mutable.
-   2017-10-12 Jason Stock : Fixed a bug. The run flag was backwards for realData vs Simulation.
-   2017-10-12 Jason Stock : Changing the use of the PartInv so that a pointer to the instance can be given to BackTracker and PhotonBackTracker.
-   2017-10-12 Jason Stock : removing fhicl support due to errors. I'll need to talk to someone about the right way to configure ParticleInventory.
-   2017-10-12 Jason Stock : Making Particle Inventory fhcl configurable.
-   2017-10-12 Jason Stock : Reduce dependency on art. (Only art::Handle left).
-   2017-10-11 Jason Stock : Quick squash to clean up commits before sharing. Initial Commit of ParticleInventoryService.

## larevt v06_16_06

-   2017-10-25 Lynn Garren : larevt v06_16_06 for larsoft v06_55_00

## lardata v06_31_02

-   2017-10-25 Lynn Garren : lardata v06_31_02 for larsoft v06_55_00
-   2017-10-24 Lynn Garren : nutools v2_16_06
-   2017-10-24 Gianluca Petrillo : Track proxy metod name trajectory() (and related) renamed.
-   2017-10-24 Lynn Garren : virtual override for issue 18002

## larcore v06_15_03

-   2017-10-25 Lynn Garren : larcore v06_15_03 for larsoft v06_55_00
-   2017-10-24 Lynn Garren : art v2_08_04

## larpandoracontent v03_08_01

## larsoftobj v1_29_01

-   2017-10-25 Lynn Garren : larsoftobj v1_29_01 for larsoft v06_55_00
-   2017-10-25 Lynn Garren : cmake v3_9_2
-   2017-10-25 Lynn Garren : update product versions
-   2017-10-24 Lynn Garren : gallery v1_05_03

## lardataobj v1_21_02

-   2017-10-25 Lynn Garren : lardataobj v1_21_02 for larsoft v06_55_00
-   2017-10-24 Lynn Garren : nusimdata v1_08_04

## larcorealg v1_09_01

-   2017-10-25 Lynn Garren : larcorealg v1_09_01 for larsoft v06_55_00

## larcoreobj v1_16_01

-   2017-10-25 Lynn Garren : larcoreobj v1_16_01 for larsoft v06_55_00
-   2017-10-24 Lynn Garren : canvas v3_00_03

## larbatch v01_32_06

-   2017-10-25 Lynn Garren : larbatch v01_32_06 for larsoft v06_55_00
-   2017-10-06 Herbert Greenlee : Get validate-on-worker from stage rather than project in gui app.

## larutils v1_20_01

-   2017-10-25 Lynn Garren : larutils v1_20_01 for larsoft v06_55_00
-   2017-10-24 Lynn Garren : adding s56 for art v2_08_04
-   2017-10-20 Tingjun Yang : Change ncores to 4 for mac builds for lariat.
