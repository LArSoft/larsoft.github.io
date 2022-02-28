# LArSoft v06_39_00 Release Notes



[list of LArSoft releases](LArSoft_release_list)  
Download instructions for [larsoft v06_39_00](https://scisoft.fnal.gov/scisoft/bundles/larsoft/v06_39_00/larsoft-v06_39_00.html)  
Download instructions for [just larsoftobj v1_20_00](https://scisoft.fnal.gov/scisoft/bundles/larsoftobj/v1_20_00/larsoftobj-v1_20_00.html)

## Purpose

-   changes to develop
-   approved changes to larpandora

## New features

-   feature/larpandoracontent_v03_07_00
    -   larpandoracontent, larpandora, uboonecode, uboonedata and dunetpc
    -   [slides](https://indico.fnal.gov/getFile.py/access?contribId=1&amp;resId=0&amp;materialId=slides&amp;confId=14645)

## Bug fixes

## Updated dependencies

# Change List

## larsoft v06_39_00

-   2017-06-06 Lynn Garren : larsoft v06_39_00 for larsoft v06_39_00
-   2017-06-06 Lynn Garren : update product versons
-   2017-06-06 Lynn Garren : update dependency database

## lareventdisplay v06_05_08

-   2017-06-06 Lynn Garren : lareventdisplay v06_05_08 for larsoft v06_39_00

## larexamples v06_03_07

## larpandora v06_12_00

-   2017-06-06 Lynn Garren : larpandora v06_12_00 for larsoft v06_39_00
-   2017-06-06 Lynn Garren : eigen dependency is handled by larpandoracontent
-   2017-06-06 Lynn Garren : Merge branch 'feature/larpandoracontent_v03_07_00' into release/v06_39_00
-   2017-05-31 John Marshall : Empty string is default mva module name (functionality deliberately optional).
-   2017-05-31 John Marshall : Remove eigen dependency.
-   2017-05-31 John Marshall : LArPandoraShowers functionality has moved to larpandoracontent. Add provision for hit-based track/shower labels.

## larwirecell v06_04_06

## larana v06_06_03

-   2017-06-06 Lynn Garren : larana v06_06_03 for larsoft v06_39_00

## larreco v06_30_01

-   2017-06-06 Lynn Garren : larreco v06_30_01 for larsoft v06_39_00
-   2017-06-01 Tingjun Yang : Add more variables to the TTree.

## larsim v06_23_00

## larevt v06_13_04

## lardata v06_21_01

## larcore v06_09_02

## larpandoracontent v03_07_00

-   2017-06-07 Lynn Garren : adding cetlib
-   2017-06-06 Lynn Garren : larpandoracontent v03_07_00 for larsoft v06_39_00
-   2017-06-06 Lynn Garren : larpandoracontent v03_07_00
-   2017-06-06 Lynn Garren : larpandoracontent uses eigen
-   2017-06-02 John Marshall : Merge branch 'feature/SvmVertexSelection_kdtree' into develop
-   2017-06-02 John Marshall : Add kd tree implementation to svm vertex selection algorithm.
-   2017-06-01 John Marshall : Merge branch 'updates' into develop
-   2017-06-01 John Marshall : Ensure compilation without monitoring enabled.
-   2017-05-31 John Marshall : Merge branch 'updates' into develop
-   2017-05-31 John Marshall : Update changelog.
-   2017-05-31 John Marshall : Merge branch 'updates' into develop
-   2017-05-31 John Marshall : Missing configuration functionality.
-   2017-05-31 John Marshall : Merge branch 'updates' into develop
-   2017-05-31 John Marshall : Use cet search_path functionality to find svm data files in FW_SEARCH_PATH.
-   2017-05-31 John Marshall : Merge branch 'updates' into develop
-   2017-05-31 John Marshall : Required header file include.
-   2017-05-31 John Marshall : Merge branch 'updates' into develop
-   2017-05-31 John Marshall : Updated track/shower characterisation variables.
-   2017-05-31 John Marshall : Merge branch 'updates' into develop
-   2017-05-31 John Marshall : Add Michel probability to LArCaloHit.
-   2017-05-25 John Marshall : Merge branch 'feature/SvmTrkShwId' into develop
-   2017-05-22 John Marshall : Restructuring of track/shower id functionality.
-   2017-05-22 John Marshall : Track vs. shower identification using svm approach.
-   2017-05-25 John Marshall : Merge branch 'feature/EigenBuild' into develop
-   2017-05-25 John Marshall : Handle Eigen3 dependency in build tools.
-   2017-05-24 John Marshall : Merge branch 'feature/SvmVertexSelection' into develop
-   2017-05-23 John Marshall : Floating point initialisations.
-   2017-05-23 Jack Anthony : Fixed issue with RPhiFeatureTool fast score test.
-   2017-05-23 John Marshall : Cosmetic.
-   2017-05-22 Jack Anthony : Toolized vertex selection score components; added SVMVertexSelectionAlgorithm and new feature tools; moved some event validation functionality to MCParticleHelper.
-   2017-05-24 John Marshall : Merge branch 'feature/HitBasedTrkShwId' into develop
-   2017-05-08 John Marshall : Add LArCaloHit holding new track, shower and other probabilities. Add required options to event reading and writing algs.
-   2017-05-24 John Marshall : Merge branch 'feature/AddEigen' into develop
-   2017-05-22 John Marshall : Rename PcaHelper and SvmHelper, for consistency with existing helpers.
-   2017-05-19 John Marshall : Rename SVMHelper as LArSVMHelper, for consistency.
-   2017-05-19 John Marshall : Add LArPCAHelper and refactor.
-   2017-05-19 John Marshall : Convention: principal axis always points away from vertex (which is assumed to be closer to start of shower than centroid).
-   2017-05-19 John Marshall : First attempt to use Eigen to determine coordinate system for 2D and 3D sliding linear fits.
-   2017-05-19 John Marshall : Bring PCAShowerParticleBuilding algorithm into LArContent, from LArPandora.
-   2017-05-02 John Marshall : Add Eigen dependency.

## larsoftobj v1_20_00

## lardataobj v1_16_00

## larcoreobj v1_13_01

## larbatch v01_32_01

## larutils v1_15_00

-   2017-06-06 Lynn Garren : larutils v1_15_00 for larsoft v06_39_00
-   2017-06-02 Lynn Garren : build debug and prof in the same job
-   2017-06-01 Tingjun Yang : Change ncores to 4 for mac builds.
