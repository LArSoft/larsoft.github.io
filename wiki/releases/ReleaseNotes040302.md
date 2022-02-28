# LArSoft v04_03_02 Release Notes



[list of LArSoft releases](LArSoft_release_list)  
[Download instructions](https://scisoft.fnal.gov/scisoft/bundles/larsoft/v04_03_02/larsoft-v04_03_02.html)

## Purpose

Changes in develop since v04_03_01.

## New features

-   New T0 data product (https://indico.fnal.gov/getFile.py/access?contribId=1&amp;resId=0&amp;materialId=slides&amp;confId=9743)
-   3D cluster updates

## Bug fixes

-   PYTHONPATH set properly for postgresql

## Updated dependencies

|               |          |           |                                                                 |
|---------------|----------|-----------|-----------------------------------------------------------------|
| Product       | Version  | Qualifier | Notes                                                           |
| larsoft_data  | v0_03_04 |           | adding PhotonPropagation/LibraryData/lib_lbne4apa_20150306.root |
| cetbuildtools | v4_09_01 |           | efficiency improvements                                         |
| cmake         | v3_2_1  |           | improved efficiency on OSX                                      |
| ninja         | v1_5_3a |           | available for testing                                           |
| mrb           | v1_04_03 |           | fix a qualifier sorting problem                                 |

# Change List

## larsoft v04_03_02

-   2015-03-26 Lynn Garren : Merge branch 'release/v04_03_02'
-   2015-03-26 Lynn Garren : using larsoft_data v0_03_04
-   2015-03-25 Lynn Garren : larsoft v04_03_02 for larsoft v04_03_02
-   2015-03-25 Lynn Garren : cetpkgsupport v1_08_05, cetbuildtools v4_09_01, cmake v3_2_1, and ninja v1_5_3a
-   2015-03-25 Lynn Garren : update products versions for build
-   2015-03-25 Lynn Garren : simplifying the top CMakeLists.txt file
-   2015-03-19 Lynn Garren : fixing noifdh references

## lareventdisplay v04_03_02

-   2015-03-25 Lynn Garren : lareventdisplay v04_03_02 for larsoft v04_03_02
-   2015-03-25 Lynn Garren : simplifying the top CMakeLists.txt file

## larexamples v04_03_02

-   2015-03-25 Lynn Garren : larexamples v04_03_02 for larsoft v04_03_02
-   2015-03-25 Lynn Garren : simplifying the top CMakeLists.txt file

## larpandora v04_03_02

-   2015-03-25 Lynn Garren : larpandora v04_03_02 for larsoft v04_03_02
-   2015-03-25 Lynn Garren : simplifying the top CMakeLists.txt file

## larana v04_03_02

-   2015-03-26 Lynn Garren : Merge branch 'release/v04_03_02'
-   2015-03-26 Lynn Garren : new dependency on DetectorProperties_service
-   2015-03-25 Lynn Garren : larana v04_03_02 for larsoft v04_03_02
-   2015-03-25 Lynn Garren : simplifying the top CMakeLists.txt file
-   2015-03-24 Tracy Usher : Add two modules to perform cosmic tagging base on PFParticles and PCAxis objects (no tracks needed) and to tag hits based on relations to PFParticles and PCAxis objects.

## larreco v04_03_02

-   2015-03-25 Lynn Garren : larreco v04_03_02 for larsoft v04_03_02
-   2015-03-25 Lynn Garren : simplifying the top CMakeLists.txt file
-   2015-03-24 Tracy Usher : Updates primarily aimed at cleaning up code and adding some documentation. Also have added new code for handling some special cases. Still plenty of work to do!
-   2015-03-23 Tristan Blackburn : Update to RawHitFinder to output charge (calculated as the sum of ADC counts in an ROI) into the hits

## larsim v04_03_02

-   2015-03-26 Lynn Garren : Merge branch 'release/v04_03_02'
-   2015-03-26 Lynn Garren : using larsoft_data v0_03_04
-   2015-03-25 Lynn Garren : larsim v04_03_02 for larsoft v04_03_02
-   2015-03-25 Lynn Garren : simplifying the top CMakeLists.txt file

## larevt v04_03_02

-   2015-03-25 Lynn Garren : larevt v04_03_02 for larsoft v04_03_02
-   2015-03-25 Lynn Garren : simplifying the top CMakeLists.txt file

## lardata v04_03_02

-   2015-03-25 Lynn Garren : lardata v04_03_02 for larsoft v04_03_02
-   2015-03-25 Lynn Garren : simplifying the top CMakeLists.txt file
-   2015-03-24 Tracy Usher : Add missing definition of association from PFParticle to CosmicTag
-   2015-03-24 Thomas Warburton : Merge branch 'feature/php13tkw_T0' into feature/usher_cluster3dupdates
-   2015-03-24 Thomas Warburton : Added new attribute
-   2015-03-24 Tracy Usher : Add enum bits and try to clean up a little bit
-   2015-03-24 Tracy Usher : Add connection between CosmicTag and PFParticle
-   2015-03-20 Thomas Warburton : Added a new data product called T0 which saves T0 information.

## larcore v04_03_02

-   2015-03-25 Lynn Garren : larcore v04_03_02 for larsoft v04_03_02
-   2015-03-25 Lynn Garren : simplifying the top CMakeLists.txt file

## larbatch v01_04_05

-   2015-03-25 Lynn Garren : larbatch v01_04_05 for larsoft v04_03_02
-   2015-03-25 Lynn Garren : require at least cetbuildtools v4_09_00
-   2015-03-23 Herbert Greenlee : Remove —role option from jobsub commands inside dags.
-   2015-03-19 Lynn Garren : use cetbuildtools v4_08_01

## larutils v1_00_06

-   2015-03-25 Lynn Garren : larutils v1_00_06 for larsoft v04_03_02
-   2015-03-25 Lynn Garren : require at least cetbuildtools v4_09_00
-   2015-03-23 Herbert Greenlee : Add curl options for better error handling.
-   2015-03-23 Herbert Greenlee : Unconditionally remove '-noifdh' from larsoft manifest name.
-   2015-03-23 Herbert Greenlee : Append the larsoft manifest to the uboone manifest.
-   2015-03-23 Herbert Greenlee : Fix detection of macos build.
-   2015-03-23 Herbert Greenlee : Add special handling of manifests in noifdh builds.
-   2015-03-19 Lynn Garren : make sure the build has everything it needs
-   2015-03-19 Lynn Garren : larsoft v04_03_01
-   2015-03-19 Herbert Greenlee : Fix ubutil version.
-   2015-03-19 Herbert Greenlee : Fix uboone_data version for mac. Extract ubutil version from product_deps instead of relying on build parameter.
