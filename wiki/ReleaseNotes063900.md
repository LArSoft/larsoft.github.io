LArSoft v06\_39\_00 Release Notes(#LArSoft-v06_39_00-Release-Notes)
======================================================================

-   **Table of contents**
-   [LArSoft v06\_39\_00 Release Notes](#LArSoft-v06_39_00-Release-Notes)
    -   [Purpose](#Purpose)
    -   [New features](#New-features)
    -   [Bug fixes](#Bug-fixes)
    -   [Updated dependencies](#Updated-dependencies)
-   [Change List](#Change-List)
    -   [larsoft v06\_39\_00](#larsoft-v06_39_00)
    -   [lareventdisplay v06\_05\_08](#lareventdisplay-v06_05_08)
    -   [larexamples v06\_03\_07](#larexamples-v06_03_07)
    -   [larpandora v06\_12\_00](#larpandora-v06_12_00)
    -   [larwirecell v06\_04\_06](#larwirecell-v06_04_06)
    -   [larana v06\_06\_03](#larana-v06_06_03)
    -   [larreco v06\_30\_01](#larreco-v06_30_01)
    -   [larsim v06\_23\_00](#larsim-v06_23_00)
    -   [larevt v06\_13\_04](#larevt-v06_13_04)
    -   [lardata v06\_21\_01](#lardata-v06_21_01)
    -   [larcore v06\_09\_02](#larcore-v06_09_02)
    -   [larpandoracontent v03\_07\_00](#larpandoracontent-v03_07_00)
    -   [larsoftobj v1\_20\_00](#larsoftobj-v1_20_00)
    -   [lardataobj v1\_16\_00](#lardataobj-v1_16_00)
    -   [larcoreobj v1\_13\_01](#larcoreobj-v1_13_01)
    -   [larbatch v01\_32\_01](#larbatch-v01_32_01)
    -   [larutils v1\_15\_00](#larutils-v1_15_00)

[list of LArSoft releases](LArSoft_release_list)\
Download instructions for [larsoft v06\_39\_00](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v06_39_00/larsoft-v06_39_00.html)\
Download instructions for [just larsoftobj v1\_20\_00](http://scisoft.fnal.gov/scisoft/bundles/larsoftobj/v1_20_00/larsoftobj-v1_20_00.html)

Purpose(#Purpose)
--------------------

-   changes to develop
-   approved changes to larpandora

New features(#New-features)
------------------------------

-   feature/larpandoracontent\_v03\_07\_00
    -   larpandoracontent, larpandora, uboonecode, uboonedata and dunetpc
    -   [slides](https://indico.fnal.gov/getFile.py/access?contribId=1&resId=0&materialId=slides&confId=14645)

Bug fixes(#Bug-fixes)
------------------------

Updated dependencies(#Updated-dependencies)
----------------------------------------------

Change List(#Change-List)
============================

larsoft v06\_39\_00(#larsoft-v06_39_00)
------------------------------------------

-   2017-06-06 Lynn Garren : larsoft v06\_39\_00 for larsoft v06\_39\_00
-   2017-06-06 Lynn Garren : update product versons
-   2017-06-06 Lynn Garren : update dependency database

lareventdisplay v06\_05\_08(#lareventdisplay-v06_05_08)
----------------------------------------------------------

-   2017-06-06 Lynn Garren : lareventdisplay v06\_05\_08 for larsoft v06\_39\_00

larexamples v06\_03\_07(#larexamples-v06_03_07)
--------------------------------------------------

larpandora v06\_12\_00(#larpandora-v06_12_00)
------------------------------------------------

-   2017-06-06 Lynn Garren : larpandora v06\_12\_00 for larsoft v06\_39\_00
-   2017-06-06 Lynn Garren : eigen dependency is handled by larpandoracontent
-   2017-06-06 Lynn Garren : Merge branch ‘feature/larpandoracontent\_v03\_07\_00’ into release/v06\_39\_00
-   2017-05-31 John Marshall : Empty string is default mva module name (functionality deliberately optional).
-   2017-05-31 John Marshall : Remove eigen dependency.
-   2017-05-31 John Marshall : LArPandoraShowers functionality has moved to larpandoracontent. Add provision for hit-based track/shower labels.

larwirecell v06\_04\_06(#larwirecell-v06_04_06)
--------------------------------------------------

larana v06\_06\_03(#larana-v06_06_03)
----------------------------------------

-   2017-06-06 Lynn Garren : larana v06\_06\_03 for larsoft v06\_39\_00

larreco v06\_30\_01(#larreco-v06_30_01)
------------------------------------------

-   2017-06-06 Lynn Garren : larreco v06\_30\_01 for larsoft v06\_39\_00
-   2017-06-01 Tingjun Yang : Add more variables to the TTree.

larsim v06\_23\_00(#larsim-v06_23_00)
----------------------------------------

larevt v06\_13\_04(#larevt-v06_13_04)
----------------------------------------

lardata v06\_21\_01(#lardata-v06_21_01)
------------------------------------------

larcore v06\_09\_02(#larcore-v06_09_02)
------------------------------------------

larpandoracontent v03\_07\_00(#larpandoracontent-v03_07_00)
--------------------------------------------------------------

-   2017-06-07 Lynn Garren : adding cetlib
-   2017-06-06 Lynn Garren : larpandoracontent v03\_07\_00 for larsoft v06\_39\_00
-   2017-06-06 Lynn Garren : larpandoracontent v03\_07\_00
-   2017-06-06 Lynn Garren : larpandoracontent uses eigen
-   2017-06-02 John Marshall : Merge branch ‘feature/SvmVertexSelection\_kdtree’ into develop
-   2017-06-02 John Marshall : Add kd tree implementation to svm vertex selection algorithm.
-   2017-06-01 John Marshall : Merge branch ‘updates’ into develop
-   2017-06-01 John Marshall : Ensure compilation without monitoring enabled.
-   2017-05-31 John Marshall : Merge branch ‘updates’ into develop
-   2017-05-31 John Marshall : Update changelog.
-   2017-05-31 John Marshall : Merge branch ‘updates’ into develop
-   2017-05-31 John Marshall : Missing configuration functionality.
-   2017-05-31 John Marshall : Merge branch ‘updates’ into develop
-   2017-05-31 John Marshall : Use cet search\_path functionality to find svm data files in FW\_SEARCH\_PATH.
-   2017-05-31 John Marshall : Merge branch ‘updates’ into develop
-   2017-05-31 John Marshall : Required header file include.
-   2017-05-31 John Marshall : Merge branch ‘updates’ into develop
-   2017-05-31 John Marshall : Updated track/shower characterisation variables.
-   2017-05-31 John Marshall : Merge branch ‘updates’ into develop
-   2017-05-31 John Marshall : Add Michel probability to LArCaloHit.
-   2017-05-25 John Marshall : Merge branch ‘feature/SvmTrkShwId’ into develop
-   2017-05-22 John Marshall : Restructuring of track/shower id functionality.
-   2017-05-22 John Marshall : Track vs. shower identification using svm approach.
-   2017-05-25 John Marshall : Merge branch ‘feature/EigenBuild’ into develop
-   2017-05-25 John Marshall : Handle Eigen3 dependency in build tools.
-   2017-05-24 John Marshall : Merge branch ‘feature/SvmVertexSelection’ into develop
-   2017-05-23 John Marshall : Floating point initialisations.
-   2017-05-23 Jack Anthony : Fixed issue with RPhiFeatureTool fast score test.
-   2017-05-23 John Marshall : Cosmetic.
-   2017-05-22 Jack Anthony : Toolized vertex selection score components; added SVMVertexSelectionAlgorithm and new feature tools; moved some event validation functionality to MCParticleHelper.
-   2017-05-24 John Marshall : Merge branch ‘feature/HitBasedTrkShwId’ into develop
-   2017-05-08 John Marshall : Add LArCaloHit holding new track, shower and other probabilities. Add required options to event reading and writing algs.
-   2017-05-24 John Marshall : Merge branch ‘feature/AddEigen’ into develop
-   2017-05-22 John Marshall : Rename PcaHelper and SvmHelper, for consistency with existing helpers.
-   2017-05-19 John Marshall : Rename SVMHelper as LArSVMHelper, for consistency.
-   2017-05-19 John Marshall : Add LArPCAHelper and refactor.
-   2017-05-19 John Marshall : Convention: principal axis always points away from vertex (which is assumed to be closer to start of shower than centroid).
-   2017-05-19 John Marshall : First attempt to use Eigen to determine coordinate system for 2D and 3D sliding linear fits.
-   2017-05-19 John Marshall : Bring PCAShowerParticleBuilding algorithm into LArContent, from LArPandora.
-   2017-05-02 John Marshall : Add Eigen dependency.

larsoftobj v1\_20\_00(#larsoftobj-v1_20_00)
----------------------------------------------

lardataobj v1\_16\_00(#lardataobj-v1_16_00)
----------------------------------------------

larcoreobj v1\_13\_01(#larcoreobj-v1_13_01)
----------------------------------------------

larbatch v01\_32\_01(#larbatch-v01_32_01)
--------------------------------------------

larutils v1\_15\_00(#larutils-v1_15_00)
------------------------------------------

-   2017-06-06 Lynn Garren : larutils v1\_15\_00 for larsoft v06\_39\_00
-   2017-06-02 Lynn Garren : build debug and prof in the same job
-   2017-06-01 Tingjun Yang : Change ncores to 4 for mac builds.
