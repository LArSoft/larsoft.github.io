# LArSoft v03_03_00 Release Notes



[list of LArSoft releases](LArSoft_release_list)  
[Download instructions](http://scisoft.fnal.gov/scisoft/projects/larsoft/v03_03_00/larsoft-v03_03_00.html)

## Purpose

Include changes in development since v03_02_00.  
Use pandora v00_17.

## New features

Use pandora v00_17.  
$LARSOFT_DIR/releaseDB/product_list contains the list of larsoft products and their versions for this release. This file will be used by a new release of mrb.

## Bug fixes

## Updated dependencies

|         |         |           |       |
|---------|---------|-----------|-------|
| Product | Version | Qualifier | Notes |
| pandora | v00_17  | e6        |       |

# Change List

## larsoft v03_03_00

-   2014-10-16 Lynn Garren : product version list for a larsoft release - to be used by mrb
-   2014-10-16 Lynn Garren : larpandora changes for pandora v00_17

## lareventdisplay v03_02_01

-   2014-10-16 Lynn Garren : for larsoft v03_02_01

## larexamples v03_02_01

-   2014-10-16 Lynn Garren : for larsoft v03_02_01

## larpandora v03_03_00

-   2014-10-16 Lynn Garren : Merge branch 'feature/preparation_for_pandora-v00-17'
-   2014-10-16 Lynn Garren : use pandora v00_17
-   2014-09-23 Lynn Garren : larpandora v03_00_00 with art v1_12_00, pandora v00_16c, and gcc v4_9_1
-   2014-09-26 Lynn Garren : the expectd -std=c flag is now set by cetbuildtools
-   2014-09-23 Lynn Garren : use cetbuildtools v4_02_02
-   2014-10-15 John Marshall : Improvements to shower reconstruction and track/shower separation. Framework for vertex reconstruction.
-   2014-09-22 John Marshall : Improvements motivated by Coverity Software Testing and Static Analysis Tools.
-   2014-09-19 John Marshall : Improved cluster-splitting mechanics.
-   2014-09-19 John Marshall : Improvements motivated by Coverity Software Testing and Static Analysis Tools. Respond to changes to Pandora SDK. Improved monitoring functionality.
-   2014-09-12 John Marshall : Cosmetic: remove tab characters.
-   2014-09-12 John Marshall : Update algorithm configuration, adding new configurations for separate cosmic and neutrino reconstruction processes.
-   2014-09-11 John Marshall : Correct parameter initialization for muon id plugin.
-   2014-09-11 John Marshall : Modifications required for use with Pandora v00-17. Now support multiple concurrent instances of Pandora and the LArPandoraAlgorithms. This allows for separate processes for e.g. each of multiple TPCs, or for separate Pandora processes pre- and post-cosmic removal.

## larana v03_02_01

-   2014-10-09 Wesley Ketchum : Merge branch 'feature/wketchum_CosmicTagWork' into develop
-   2014-10-09 Wesley Ketchum : Merge branch 'develop' of ssh://cdcvs.fnal.gov/cvs/projects/larana into develop
-   2014-10-09 Wesley Ketchum : Merge branch 'develop' of ssh://cdcvs.fnal.gov/cvs/projects/larana into feature/wketchum_CosmicTagWork
-   2014-10-07 Sarah Lockwitz : switching to Tracy s suggestion of counting each boundary once (eg two track end points near the top of the tpc will only be counted as one boundary)
-   2014-10-06 Wesley Ketchum : update BFTM to use LArProperties and OpDigiProperties, rather than rely on a fcl parameter; also, some merging in with updated cosmic stuff
-   2014-10-03 Wesley Ketchum : putting in quick bug fix found by Tracy
-   2014-10-03 Wesley Ketchum : Merge tag 'v02_06_02' into develop

## larreco v03_02_01

-   2014-10-15 Eric Church : Address the FindManyP problems identified in LArSoft Redmine issues in 7050 and 7057.
-   2014-10-14 Brian Rebel : fix typo - missed a 0 —\> p change in an index
-   2014-10-14 Brian Rebel : change use of c style arrays to std::vectors to account for variable number of planes when determining distance between wires in a plane and xy scale factor based on drift velocity, etc

## larsim v03_02_01

-   2014-10-08 Alex Himmel : Merge branch 'feature/storePhotonFinalPosition' into develop
-   2014-10-08 Alex Himmel : Merge branch 'develop' into feature/storePhotonFinalPosition
-   2014-09-25 Alex Himmel : Store the final local position of the photon when it hits the photon detector in the SimPhotons class. Required for implementing light guide photon detectors.

## larevt v03_02_01

-   2014-10-16 Lynn Garren : for larsoft v03_02_01

## lardata v03_02_01

-   2014-10-13 drinkingkazu : Adding MCShower —kazu
-   2014-10-09 Wesley Ketchum : Merge branch 'develop' of ssh://cdcvs.fnal.gov/cvs/projects/lardata into feature/wketchum_ConstLArPAccess
-   2014-10-06 Wesley Ketchum : provide const return values for optical stuff

## larcore v03_02_01

-   2014-10-08 Alex Himmel : Merge branch 'feature/OpDetGeoFix' into develop
-   2014-10-08 Alex Himmel : Merge branch 'develop' into feature/OpDetGeoFix
-   2014-09-25 Alex Himmel : Fixed a bug in the WorldToLocal conversion commands in OpDetGeo. The arguments were reversed to match the behavior of TGeoMatrix::MasterToLocal. This also make OpDetGeo consistent with other LarCore classes for the behavior of this and similarly named function.
