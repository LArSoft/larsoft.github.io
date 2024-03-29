# LArSoft v09_14_00 Release Notes



[list of LArSoft releases](LArSoft_release_list)  
Download instructions for [larsoft v09_14_00](https://scisoft.fnal.gov/scisoft/bundles/larsoft/v09_14_00/larsoft-v09_14_00.html)  
Download instructions for [just larsoftobj v09_04_01](https://scisoft.fnal.gov/scisoft/bundles/larsoftobj/v09_04_01/larsoftobj-v09_04_01.html)

## Purpose

-   changes in develop
-   approved PRs

## New features

-   larpandoracontent PR 17
    -   In this PR we create a new member variable m_daughterVolumeId in the LArCaloHit class such that we know the daughter volume ID of each hit. There is now 1 daughter volume per CRP (see associated LArPandora PR). This ensures that 2D clusters coming from different CRPs can't be matched together. This check is now performed in the view-matching algorithms and works as follows: we look at the intersection between the list of daughter volumes of each cluster, if the intersection is empty the match cannot happen.
    -   To avoid compatibility issues with older reconstructed data we introduce a new XML parameter in the LArMaster block. One needs to have <LArCaloHitVersion>2</LArCaloHitVersion> to enable this functionality. If it does not appear in the file, the behaviour is left unchanged.
    -   This PR is related to larpandora PR 15 , which reads in the daughter volumes.
-   larpandora PR 15
    -   This PR concerns the creation of daughter volumes for each CRP in the Dual-Phase geometry along with a more complete set of member variables for the LArDaughterVolume class. Also the new LArCaloHit member variable m_daughterVolumeId gets filled with the daughter volume ID of the corresponding hit.
    -   This PR is associated to the larpandoracontent PR 17 in which cluster matching checks for a common daughter volume, where this is relevant (dual phase).
-   lardataobj PR 11
    -   Added ROOT dictionary for std::vector\<art::Ptr<recob::Cluster>\>.
    -   For storage of selected clusters, I require std::vector\<art::Ptr<recob::Cluster>\>. This request will enable the creation of the ROOT dictionaries needed to serialise such data structure.
    -   Why not the already supported art::PtrVector<recob::Cluster>? My use case allows cluster objects to come from different data products, and it is my understanding that all the elements of a art::PtrVector must belong to the same one.
    -   Why not in the experiment repository? The class does not depend on anything specific to the experiment, so lardataobj is its natural place. In addition, this strategy avoids conflicts by “preventing” the same definition from appearing in different repositories.
-   lardata PR 13
    -   Allow range-for loop on associated_groups_with_left() output
    -   Including a C++17-aware unit test.
-   larrecodnn PR 14
    -   Add a separate label for SimChannel. This is needed for ProtoDUNE refactored simulation. The changes were made by Leigh Whitehead.

## Bug fixes

-   larreco PR 26
    -   Including missing configuration in clustermodules.fcl
    -   One of the configurations therein requires standard_cchitfinderalg, defined larreco/RecoAlg/hitalgorithms.fcl. Without including it, clustermodules.fcl can't be used stand-alone.
    -   This pull request is based on the assumption that it should be possible to include clustermodules.fcl in a configuration file without explicitly including anything more.
-   webevd PR 18
    -   Fix a few glitches due to residual hardcoded view numbers
    -   Fix a few glitches with axis labels due to residual hardcoded view numbers which have been wrong since VD support was added.

## Updated dependencies

-   mrb v4_04_02

# Change List

## larsoft v09_14_00

-   2021-01-21 Lynn Garren : larsoft v09_14_00 for larsoft v09_14_00
-   2021-01-21 Lynn Garren : product versions

## lareventdisplay v09_00_19

-   2021-01-21 Lynn Garren : lareventdisplay v09_00_19 for larsoft v09_14_00

## larexamples v09_00_18

-   2021-01-21 Lynn Garren : larexamples v09_00_18 for larsoft v09_14_00

## larpandora v09_04_00

-   2021-01-21 Lynn Garren : larpandora v09_04_00 for larsoft v09_14_00
-   2020-12-10 Andrew Chappell : Whitespace fixes
-   2020-12-08 Etienne Chardonnet : Cosmetic changes
-   2020-10-07 Etienne Chardonnet : Fixed typo
-   2020-10-06 Etienne Chardonnet : Added the creation of LArDaughterDriftVolume(s), 1 per TPC, for DP
-   2020-10-06 Etienne Chardonnet : Added new member variables and their associated Get functions in LArDaughterDriftVolume class
-   2020-10-06 Etienne Chardonnet : Now filling the new LArCaloHitParameter member m_daughterVolumeId

## larsimrad v09_00_18

-   2021-01-21 Lynn Garren : larsimrad v09_00_18 for larsoft v09_14_00

## larrecodnn v09_04_00

-   2021-01-21 Lynn Garren : larrecodnn v09_04_00 for larsoft v09_14_00
-   2021-01-20 Lynn Garren : Merge pull request \#14 from yangtj207/develop
-   2021-01-18 Tingjun Yang : New way to tag Michel and delta ray after saving EM shower daughters.
-   2021-01-18 Tingjun Yang : Turn off saving vtx flags.
-   2021-01-18 Tingjun Yang : Merge branch 'develop' of github.com:LArSoft/larrecodnn into develop
-   2021-01-14 Tingjun Yang : Also add process muMinusCaptureAtRest.
-   2021-01-14 Tingjun Yang : For refactored simulation, the parent muon end process is Decay for a Michel electron.
-   2021-01-14 Tingjun Yang : Select 6 TPCs and all 3 views.
-   2021-01-13 Tingjun Yang : Move and rename fcl files.
-   2021-01-13 Tingjun Yang : Commit for Leigh Whitehead to add a separate label for SimChannel.

## larwirecell v09_01_11

-   2021-01-21 Lynn Garren : larwirecell v09_01_11 for larsoft v09_14_00

## larana v09_00_19

-   2021-01-21 Lynn Garren : larana v09_00_19 for larsoft v09_14_00

## larreco v09_04_09

-   2021-01-21 Lynn Garren : larreco v09_04_09 for larsoft v09_14_00
-   2021-01-21 Lynn Garren : Merge pull request \#26 from PetrilloAtWork/feature/gp_clustermodulesconf
-   2021-01-14 Gianluca Petrillo : Including missing configuration in clustermodules.fcl

## larsim v09_07_06

-   2021-01-21 Lynn Garren : larsim v09_07_06 for larsoft v09_14_00

## larg4 v09_02_02

-   2021-01-21 Lynn Garren : larg4 v09_02_02 for larsoft v09_14_00

## larevt v09_01_05

-   2021-01-21 Lynn Garren : larevt v09_01_05 for larsoft v09_14_00

## lardata v09_01_08

-   2021-01-21 Lynn Garren : lardata v09_01_08 for larsoft v09_14_00
-   2021-01-21 Lynn Garren : remove whitespace
-   2021-01-21 Lynn Garren : Merge pull request \#13 from PetrilloAtWork/feature/gp_assgroups
-   2021-01-14 Gianluca Petrillo : Added non-art unit test for \`associated_groups_with_left()\`.
-   2021-01-14 Gianluca Petrillo : Allow range-for on some associated_groups_with_left() output.

## larcore v09_01_00

## larpandoracontent v03_22_04

-   2021-01-21 Lynn Garren : larpandoracontent v03_22_04 for larsoft v09_14_00
-   2021-01-20 Maria Brigida Brunetti : Update CMakeLists.txt and ChangeLog.txt
-   2020-12-10 Etienne Chardonnet : Modified IF condition to IF_AND_IF for new LArCaloHitVersion xml parameter in MasterAlgorithm
-   2020-12-07 Etienne Chardonnet : Cosmectic changes
-   2020-12-03 Maria Brigida Brunetti : More cosmetic changes
-   2020-12-02 Maria Brigida Brunetti : Minor and cosmetic changes
-   2020-10-20 Maria Brigida Brunetti : Minor and cosmetic changes
-   2020-10-19 Maria Brigida Brunetti : Add larCaloHit version for LArCaloHitFactory in EventReading and EventWriting algorithms
-   2020-10-19 Maria Brigida Brunetti : Add larCaloHit version number in ReadSettings for the Master algorithm
-   2020-10-19 Maria Brigida Brunetti : Add version number to LArCaloHitFactory and use it to set CaloHit daughter volume ID
-   2020-10-07 Etienne Chardonnet : Modified the definitions of GetDaughterVolumeIDs and GetCommunDaughterVolumes function to have them pass the daughter volume sets as reference, then modified the rest of the code accordingly
-   2020-10-05 Etienne Chardonnet : Added daughterVolume check in CosmicRayBaseMatchingAlgorithm.cc
-   2020-08-14 Etienne Chardonnet : Added in TwoViewTransverseTracksAlgorithm and CosmicRayTrackRecoveryAlgorithm a check if compared clusters belong to the same daughter volume, this commit contains also the implementation of the check
-   2020-08-13 Etienne Chardonnet : New member variable in LArCaloHit class to access DaughterVolumeID

## larsoftobj v09_04_01

-   2021-01-21 Lynn Garren : product versions
-   2021-01-21 Lynn Garren : larsoftobj v09_04_01 for larsoft v09_14_00

## lardataobj v09_00_07

-   2021-01-21 Lynn Garren : lardataobj v09_00_07 for larsoft v09_14_00
-   2021-01-21 Lynn Garren : Merge pull request \#11 from PetrilloAtWork/feature/gp_ClusterPtrVect
-   2021-01-14 Gianluca Petrillo : Added ROOT dictionary for std::vector\<art::Ptr<recob::Cluster>\>.

## lardataalg v09_03_05

-   2021-01-21 Lynn Garren : lardataalg v09_03_05 for larsoft v09_14_00

## larcorealg v09_00_02

## larcoreobj v09_01_00

## webevd v09_01_02

-   2021-01-21 Lynn Garren : webevd v09_01_02 for larsoft v09_14_00
-   2021-01-21 Lynn Garren : Merge pull request \#18 from cjbackhouse/bugfix/uv
-   2021-01-20 Christopher Backhouse : Fix a few glitches with axis labels due to residual hardcoded view numbers which have been wrong since VD support was added.

## larbatch v01_54_01

## larutils v1_27_04

-   2021-01-21 Lynn Garren : larutils v1_27_04 for larsoft v09_14_00
-   2021-01-20 Lynn Garren : a few tweaks
