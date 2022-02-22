# LArSoft v08_05_00_10 Release Notes



[list of LArSoft releases](LArSoft_release_list)  
Download instructions for [larsoft v08_05_00_10](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v08_05_00_10/larsoft-v08_05_00_10.html)  
Download instructions for [just larsoftobj v08_03_00_03](http://scisoft.fnal.gov/scisoft/bundles/larsoftobj/v08_03_00_03/larsoftobj-v08_03_00_03.html)

## Purpose

-   requested patch release

## New features

## Bug fixes

## Updated dependencies

# Change List

## larsoft v08_05_00_10

-   2019-09-03 ranitay : larsoft v08_05_00_10 for larsoft v08_05_00_10
-   2019-07-22 Lynn Garren : using the nulite v2_27_05a distribution

## lareventdisplay v08_02_00_09

-   2019-09-03 ranitay : lareventdisplay v08_02_00_09 for larsoft v08_05_00_10

## larexamples v08_01_00_07

-   2019-09-03 ranitay : larexamples v08_01_00_07 for larsoft v08_05_00_10

## larg4 v08_01_00_07

-   2019-09-03 ranitay : larg4 v08_01_00_07 for larsoft v08_05_00_10

## larpandora v08_03_00_09

-   2019-09-03 ranitay : larpandora v08_03_00_09 for larsoft v08_05_00_10
-   2019-05-08 loressa : Fixes following PR discussion
-   2019-04-30 loressa : Added a check for when SimChannels object is available, but empty
-   2019-07-25 John Marshall : Move additional slice-related output into slice production block.
-   2019-07-25 John Marshall : First proposed changes to allow free development in an experiment-specific area.

## larwirecell v08_02_00_08

-   2019-09-03 ranitay : larwirecell v08_02_00_08 for larsoft v08_05_00_10

## larana v08_01_00_09

-   2019-09-03 ranitay : larana v08_01_00_09 for larsoft v08_05_00_10

## larreco v08_04_00_09

-   2019-09-03 ranitay : larreco v08_04_00_09 for larsoft v08_05_00_10

## larsim v08_02_00_07

-   2019-09-03 ranitay : larsim v08_02_00_07 for larsoft v08_05_00_10

## larevt v08_01_00_07

-   2019-09-03 ranitay : larevt v08_01_00_07 for larsoft v08_05_00_10

## lardata v08_02_00_06

-   2019-09-03 ranitay : lardata v08_02_00_06 for larsoft v08_05_00_10

## larcore v08_01_00_03

-   2019-09-03 ranitay : larcore v08_01_00_03 for larsoft v08_05_00_10

## larpandoracontent v03_14_04_01

-   2019-09-03 ranitay : larpandoracontent v03_14_04_01 for larsoft v08_05_00_10
-   2019-08-30 ranitay : Merge remote-tracking branch 'origin/feature/cerati_shouldRemoveOutOfTimeHits' into v08_05_00_br
-   2019-08-21 Giuseppe Cerati : add option to decide whether to remove out time hits
-   2019-08-02 Wesley Ketchum : make ups same as mcc9 release
-   2019-07-26 John Marshall : Facilitate experiment-specific development.
-   2019-07-24 Lynn Garren : larpandoracontent v03_15_02 for larsoft v08_27_00
-   2019-07-19 StevenGreen1 : Merge branch 'updates'
-   2019-07-19 StevenGreen1 : Merge branch 'feature/ShowerOverlapResultOrdering'
-   2019-07-19 StevenGreen1 : Update version and change log.
-   2019-07-19 StevenGreen1 : Alter the comparison operator in the LArShowerOverlapResult to compare span in W before span in U/V.
-   2019-07-18 StevenGreen1 : Extending the variables used in the comparison operator of the LArShowerOverlapResult class.
-   2019-07-19 John Marshall : Merge branch 'feature/RegisterCustomContent'
-   2019-07-18 StevenGreen1 : Merge branch 'feature/ProtoDUNE_BDTVertex'
-   2019-07-18 John Marshall : Add ability to register custom content in algorithms deriving from the LArMaster algorithm.
-   2019-07-15 StevenGreen1 : Cosmetic changes.
-   2019-07-11 Steven Green : Adding test beam mode to MVA vertex selection algorithm.
-   2019-05-01 Steven Green : Adding triggered beam helper functions in LArMCParticleHelper.
-   2019-07-18 Lynn Garren : larpandoracontent v03_15_01 for larsoft v08_26_00
-   2019-07-16 loressa : Fix for compiler
-   2019-07-16 StevenGreen1 : Merge branch 'updates'
-   2019-07-16 StevenGreen1 : Update version and change log.
-   2019-07-16 StevenGreen1 : Merge branch 'feature/stitching'
-   2019-07-09 loressa : Replaced double loop in SelectLingestStitch
-   2019-07-05 loressa : Fixed indentation
-   2019-07-04 loressa : Updates following PR review
-   2019-07-03 loressa : Stylish corrections
-   2019-07-03 loressa : Reduce vector of potential stitches to two to keep stitching across CPA now that APA hits are availalbe. This is a short term fix, prior to extend stitches across APAs in addition
-   2019-06-27 Lynn Garren : larpandoracontent v03_15_00 for larsoft v08_24_00
-   2019-06-26 Lynn Garren : Merge branch 'feature/larpandoracontent_v03_15_00' into release/v08_24_00
-   2019-06-17 Lynn Garren : remove status comment
-   2019-06-17 Lynn Garren : fix how we find cetbuildtools
-   2019-06-14 Lynn Garren : larpandoracontent v03_14_09 for larsoft v08_22_00_01
-   2019-06-13 Lynn Garren : larpandoracontent v03_14_09 with py3 build options
-   2019-06-12 Lynn Garren : use pandora v03_11_01b with py3 support
-   2019-06-12 John Marshall : Merge branch 'updates'
-   2019-06-10 John Marshall : Update version and change log.
-   2019-06-12 John Marshall : Merge branch 'feature/StitchingPfoSelection'
-   2019-06-10 John Marshall : Set parameter default values to return previous behaviour.
-   2019-06-10 phuncr : Changed the cuts used to select which clusters are considered in the stitching
-   2019-06-10 John Marshall : Merge branch 'feature/VertexCandidateReduction'
-   2019-06-10 phuncr : Cosmetic changes.
-   2019-06-09 phuncr : Added option to reduce number of vertex candidates created
-   2019-06-10 John Marshall : Merge branch 'feature/lhw_cpp17fix'
-   2019-05-29 Leigh Whitehead : Update comments
-   2019-05-29 Leigh Whitehead : Remove variable name in arguments of default functions
-   2019-06-10 John Marshall : Merge branch 'feature/MvaVertexSelection'
-   2019-05-16 John Marshall : Template SvmVertexSelection algorithm on mva type and rename to MvaVertexSelection.
-   2019-05-14 Lynn Garren : larpandoracontent v03_14_08 for larsoft v08_20_00
-   2019-05-09 Multi-algorithm pattern recognition : Merge pull request \#80 from PandoraPFA/feature/ClearTrackFragments
-   2019-05-08 John Marshall : Update version and change log.
-   2019-05-03 John Marshall : For safety, remove all clusters associated with this fragment particle from the tensor.
-   2019-05-03 John Marshall : Fragment cluster will be automatically added to the output particle and never rebuilt.
-   2019-05-02 John Marshall : Cosmetic.
-   2019-05-02 John Marshall : Restructure to update tensor prior to reclustering operations.
-   2019-05-01 John Marshall : Merge branch 'updates'
-   2019-05-01 John Marshall : Use —no-check-certificate for Coverity download.
-   2019-04-22 Lynn Garren : larsoft v08_16_00
-   2019-04-18 Lynn Garren : larpandoracontent v03_14_07 for art v3_02_04
-   2019-04-17 Lynn Garren : Merge branch 'feature/team_for_art_v3_02' into v08_16_00_br
-   2019-04-12 Kyle Knoepfel : Remove trailing whitespace.
-   2019-04-10 Lynn Garren : larpandoracontent v03_14_06 for larsoft v08_15_00
-   2019-04-08 Steven Green : Merge branch 'updates'
-   2019-04-08 Steven Green : Update version and change log.
-   2019-04-05 Multi-algorithm pattern recognition : Merge pull request \#79 from StevenGreen1/feature/CosmicRayInTimeTagging
-   2019-04-05 Steven Green : Define out of time slices in CR tagging using all pfos in slice.
-   2019-04-04 Lynn Garren : larpandoracontent v03_14_06 for use with art 3.02
-   2019-03-14 John Marshall : Merge branch 'feature/SvmVertexClusterMapping'
-   2019-03-14 John Marshall : Correct mapping between HitType and ClusterList in an hitherto unused map.
-   2019-02-14 Lynn Garren : larpandoracontent v03_14_05 for larsoft v08_09_00
-   2019-02-12 Steven Green : Merge branch 'updates'
-   2019-02-01 Steven Green : Update version and change log.
-   2019-02-12 Steven Green : Merge pull request \#76 from StevenGreen1/feature/ApplyT0Calculation
-   2019-02-11 Steven Green : Adjusting the resetting of hit positions post stitching for ambiguous cosmic rays to reflect X0 setting modifications.
-   2019-02-11 Steven Green : Set the x0 shift for all pfos in the hierarchy when stitching.
-   2019-02-11 Steven Green : Added helper functions that indicate whether a pfo was stitched and to return the stitched x0 value.
-   2019-02-05 Steven Green : Post cosmic ray tagging, reset calo hit positions for ambiguous pfos that have been stitched.
-   2019-01-28 Steven Green : Adding option to always calculate T0 when stitching cosmics rays.
-   2019-02-11 Kyle Knoepfel : Add missing header dependencies.

## larsoftobj v08_03_00_03

## lardataobj v08_01_00_03

## lardataalg v08_03_00_03

## larcorealg v08_01_00_02

## larcoreobj v08_01_00_02
