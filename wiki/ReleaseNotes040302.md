LArSoft v04\_03\_02 Release Notes(#LArSoft-v04_03_02-Release-Notes)
======================================================================

-   **Table of contents**
-   [LArSoft v04\_03\_02 Release Notes](#LArSoft-v04_03_02-Release-Notes)
    -   [Purpose](#Purpose)
    -   [New features](#New-features)
    -   [Bug fixes](#Bug-fixes)
    -   [Updated dependencies](#Updated-dependencies)
-   [Change List](#Change-List)
    -   [larsoft v04\_03\_02](#larsoft-v04_03_02)
    -   [lareventdisplay v04\_03\_02](#lareventdisplay-v04_03_02)
    -   [larexamples v04\_03\_02](#larexamples-v04_03_02)
    -   [larpandora v04\_03\_02](#larpandora-v04_03_02)
    -   [larana v04\_03\_02](#larana-v04_03_02)
    -   [larreco v04\_03\_02](#larreco-v04_03_02)
    -   [larsim v04\_03\_02](#larsim-v04_03_02)
    -   [larevt v04\_03\_02](#larevt-v04_03_02)
    -   [lardata v04\_03\_02](#lardata-v04_03_02)
    -   [larcore v04\_03\_02](#larcore-v04_03_02)
    -   [larbatch v01\_04\_05](#larbatch-v01_04_05)
    -   [larutils v1\_00\_06](#larutils-v1_00_06)

[list of LArSoft releases](LArSoft_release_list)\
[Download instructions](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v04_03_02/larsoft-v04_03_02.html)

Purpose(#Purpose)
--------------------

Changes in develop since v04\_03\_01.

New features(#New-features)
------------------------------

-   New T0 data product ([https://indico.fnal.gov/getFile.py/access?contribId=1&resId=0&materialId=slides&confId=9743](https://indico.fnal.gov/getFile.py/access?contribId=1&resId=0&materialId=slides&confId=9743))
-   3D cluster updates

Bug fixes(#Bug-fixes)
------------------------

-   PYTHONPATH set properly for postgresql

Updated dependencies(#Updated-dependencies)
----------------------------------------------

  --------------- ------------ ----------- -------------------------------------------------------------------
  Product         Version      Qualifier   Notes
  larsoft\_data   v0\_03\_04               adding PhotonPropagation/LibraryData/lib\_lbne4apa\_20150306.root
  cetbuildtools   v4\_09\_01               efficiency improvements
  cmake           v3\_2\_1                 improved efficiency on OSX
  ninja           v1\_5\_3a                available for testing
  mrb             v1\_04\_03               fix a qualifier sorting problem
  --------------- ------------ ----------- -------------------------------------------------------------------

Change List(#Change-List)
============================

larsoft v04\_03\_02(#larsoft-v04_03_02)
------------------------------------------

-   2015-03-26 Lynn Garren : Merge branch ‘release/v04\_03\_02’
-   2015-03-26 Lynn Garren : using larsoft\_data v0\_03\_04
-   2015-03-25 Lynn Garren : larsoft v04\_03\_02 for larsoft v04\_03\_02
-   2015-03-25 Lynn Garren : cetpkgsupport v1\_08\_05, cetbuildtools v4\_09\_01, cmake v3\_2\_1, and ninja v1\_5\_3a
-   2015-03-25 Lynn Garren : update products versions for build
-   2015-03-25 Lynn Garren : simplifying the top CMakeLists.txt file
-   2015-03-19 Lynn Garren : fixing noifdh references

lareventdisplay v04\_03\_02(#lareventdisplay-v04_03_02)
----------------------------------------------------------

-   2015-03-25 Lynn Garren : lareventdisplay v04\_03\_02 for larsoft v04\_03\_02
-   2015-03-25 Lynn Garren : simplifying the top CMakeLists.txt file

larexamples v04\_03\_02(#larexamples-v04_03_02)
--------------------------------------------------

-   2015-03-25 Lynn Garren : larexamples v04\_03\_02 for larsoft v04\_03\_02
-   2015-03-25 Lynn Garren : simplifying the top CMakeLists.txt file

larpandora v04\_03\_02(#larpandora-v04_03_02)
------------------------------------------------

-   2015-03-25 Lynn Garren : larpandora v04\_03\_02 for larsoft v04\_03\_02
-   2015-03-25 Lynn Garren : simplifying the top CMakeLists.txt file

larana v04\_03\_02(#larana-v04_03_02)
----------------------------------------

-   2015-03-26 Lynn Garren : Merge branch ‘release/v04\_03\_02’
-   2015-03-26 Lynn Garren : new dependency on DetectorProperties\_service
-   2015-03-25 Lynn Garren : larana v04\_03\_02 for larsoft v04\_03\_02
-   2015-03-25 Lynn Garren : simplifying the top CMakeLists.txt file
-   2015-03-24 Tracy Usher : Add two modules to perform cosmic tagging base on PFParticles and PCAxis objects (no tracks needed) and to tag hits based on relations to PFParticles and PCAxis objects.

larreco v04\_03\_02(#larreco-v04_03_02)
------------------------------------------

-   2015-03-25 Lynn Garren : larreco v04\_03\_02 for larsoft v04\_03\_02
-   2015-03-25 Lynn Garren : simplifying the top CMakeLists.txt file
-   2015-03-24 Tracy Usher : Updates primarily aimed at cleaning up code and adding some documentation. Also have added new code for handling some special cases. Still plenty of work to do!
-   2015-03-23 Tristan Blackburn : Update to RawHitFinder to output charge (calculated as the sum of ADC counts in an ROI) into the hits

larsim v04\_03\_02(#larsim-v04_03_02)
----------------------------------------

-   2015-03-26 Lynn Garren : Merge branch ‘release/v04\_03\_02’
-   2015-03-26 Lynn Garren : using larsoft\_data v0\_03\_04
-   2015-03-25 Lynn Garren : larsim v04\_03\_02 for larsoft v04\_03\_02
-   2015-03-25 Lynn Garren : simplifying the top CMakeLists.txt file

larevt v04\_03\_02(#larevt-v04_03_02)
----------------------------------------

-   2015-03-25 Lynn Garren : larevt v04\_03\_02 for larsoft v04\_03\_02
-   2015-03-25 Lynn Garren : simplifying the top CMakeLists.txt file

lardata v04\_03\_02(#lardata-v04_03_02)
------------------------------------------

-   2015-03-25 Lynn Garren : lardata v04\_03\_02 for larsoft v04\_03\_02
-   2015-03-25 Lynn Garren : simplifying the top CMakeLists.txt file
-   2015-03-24 Tracy Usher : Add missing definition of association from PFParticle to CosmicTag
-   2015-03-24 Thomas Warburton : Merge branch ‘feature/php13tkw\_T0’ into feature/usher\_cluster3dupdates
-   2015-03-24 Thomas Warburton : Added new attribute
-   2015-03-24 Tracy Usher : Add enum bits and try to clean up a little bit
-   2015-03-24 Tracy Usher : Add connection between CosmicTag and PFParticle
-   2015-03-20 Thomas Warburton : Added a new data product called T0 which saves T0 information.

larcore v04\_03\_02(#larcore-v04_03_02)
------------------------------------------

-   2015-03-25 Lynn Garren : larcore v04\_03\_02 for larsoft v04\_03\_02
-   2015-03-25 Lynn Garren : simplifying the top CMakeLists.txt file

larbatch v01\_04\_05(#larbatch-v01_04_05)
--------------------------------------------

-   2015-03-25 Lynn Garren : larbatch v01\_04\_05 for larsoft v04\_03\_02
-   2015-03-25 Lynn Garren : require at least cetbuildtools v4\_09\_00
-   2015-03-23 Herbert Greenlee : Remove –role option from jobsub commands inside dags.
-   2015-03-19 Lynn Garren : use cetbuildtools v4\_08\_01

larutils v1\_00\_06(#larutils-v1_00_06)
------------------------------------------

-   2015-03-25 Lynn Garren : larutils v1\_00\_06 for larsoft v04\_03\_02
-   2015-03-25 Lynn Garren : require at least cetbuildtools v4\_09\_00
-   2015-03-23 Herbert Greenlee : Add curl options for better error handling.
-   2015-03-23 Herbert Greenlee : Unconditionally remove ‘-noifdh’ from larsoft manifest name.
-   2015-03-23 Herbert Greenlee : Append the larsoft manifest to the uboone manifest.
-   2015-03-23 Herbert Greenlee : Fix detection of macos build.
-   2015-03-23 Herbert Greenlee : Add special handling of manifests in noifdh builds.
-   2015-03-19 Lynn Garren : make sure the build has everything it needs
-   2015-03-19 Lynn Garren : larsoft v04\_03\_01
-   2015-03-19 Herbert Greenlee : Fix ubutil version.
-   2015-03-19 Herbert Greenlee : Fix uboone\_data version for mac. Extract ubutil version from product\_deps instead of relying on build parameter.
