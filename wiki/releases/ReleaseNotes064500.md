LArSoft v06_45_00 Release Notes
======================================================================

-   **Table of contents**
-   [LArSoft v06_45_00 Release Notes](#LArSoft-v06_45_00-Release-Notes)
    -   [Purpose](#Purpose)
    -   [Notes](#Notes)
    -   [New features](#New-features)
    -   [Bug fixes](#Bug-fixes)
    -   [Updated dependencies](#Updated-dependencies)
-   [Change List](#Change-List)
    -   [larsoft v06_45_00](#larsoft-v06_45_00)
    -   [lareventdisplay v06_10_01](#lareventdisplay-v06_10_01)
    -   [larexamples v06_05_02](#larexamples-v06_05_02)
    -   [larpandora v06_15_02](#larpandora-v06_15_02)
    -   [larwirecell v06_05_06](#larwirecell-v06_05_06)
    -   [larana v06_08_02](#larana-v06_08_02)
    -   [larreco v06_36_00](#larreco-v06_36_00)
    -   [larsim v06_28_00](#larsim-v06_28_00)
    -   [larevt v06_15_02](#larevt-v06_15_02)
    -   [lardata v06_25_01](#lardata-v06_25_01)
    -   [larcore v06_13_02](#larcore-v06_13_02)
    -   [larpandoracontent v03_07_02](#larpandoracontent-v03_07_02)
    -   [larsoftobj v1_23_02](#larsoftobj-v1_23_02)
    -   [lardataobj v1_18_00](#lardataobj-v1_18_00)
    -   [larcorealg v1_05_02](#larcorealg-v1_05_02)
    -   [larcoreobj v1_15_01](#larcoreobj-v1_15_01)
    -   [larbatch v01_32_03](#larbatch-v01_32_03)
    -   [larutils v1_16_00](#larutils-v1_16_00)

[list of LArSoft releases](LArSoft_release_list)
Download instructions for [larsoft v06_45_00](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v06_45_00/larsoft-v06_45_00.html)
Download instructions for [just larsoftobj v1_23_02](http://scisoft.fnal.gov/scisoft/bundles/larsoftobj/v1_23_02/larsoftobj-v1_23_02.html)

Purpose
--------------------

-   changes to develop
-   approved feature branches
-   first release with geant4 10.3.p01 and genie 2.12.6

Notes
----------------

-   Branch feature/team_for_v06_38_00_01 with required changes is available for argoneutcode, dunetpc, and uboonecode.
-   genie v2_12_6
    -   this release comes with genie_xsec v2_12_6 and genie_phyopt v2_12_6
    -   **BREAKING CHANGE**: “Default+MEC” in fcl files is obsolete. See [https://cdcvs.fnal.gov/redmine/projects/nutools/wiki/GENIE_Configuration_Files](https://cdcvs.fnal.gov/redmine/projects/nutools/wiki/GENIE_Configuration_Files). Branch feature/team_for_v06_38_00_01 for dunetpc and uboonecode reflects this change.
-   geant v4_10_3_p01a
    -   modifications were required in larsim LArG4
    -   See [\#16567](/redmine/issues/16567 "Support: Please patch geant4 10.2.p03 and 10.3.p01 (Closed)") for a description of the p01a patch

New features
------------------------------

-   larreco feature/rsulej_trkValidationPMA
    -   The new feature is the ADC-based validation of tracks produced by PMA, which improves efficiency mostly due to recovered tracks parallel to drift direction in one of 2D planes (improvement is over hit-based validation, used up to now).
-   larreco feature/tjyang_CNNEMShower
    -   This adds option to use CNN track/shower ID in shower reconstruction (off by default).

Bug fixes
------------------------

-   lardata feature/gp_AddViewXsupport for [\#17250](/redmine/issues/17250 "Bug: Adding geo::kX view and TimeOffsetX to DetectorProperties for rotated dual phase geometry gives s... (Closed)")
-   larsim feature/gp_Issue17117 for [\#17117](/redmine/issues/17117 "Bug: prodsingle_sbnd.fcl crashes with larsoft v06_42_00 (Closed)")

Updated dependencies
----------------------------------------------

||
|Product|Version|Qualifiers|Notes|
|nutools|v2_15_00|e14|[NuTools_Release_Notes](/redmine/projects/nutools/wiki/NuTools_Release_Notes#nutools-v2_15_00)|
|geant4|v4_10_3_p01a|e14||
|genie|v2_12_6a|e14||
|dk2nu|v01_05_00e|e14||

Change List
============================

larsoft v06_45_00
------------------------------------------

-   2017-07-25 Lynn Garren : larsoft v06_45_00 for larsoft v06_45_00
-   2017-07-25 Lynn Garren : update product versions
-   2017-07-25 Lynn Garren : update product versions
-   2017-07-25 Lynn Garren : update dependency database
-   2017-07-25 Lynn Garren : Merge branch ‘v06_38_00_01_branch’ into release/v06_45_00
-   2017-06-02 Lynn Garren : using nutools v2_13_03
-   2017-06-02 Lynn Garren : larsoft v06_38_00_01
-   2017-06-02 Lynn Garren : upate versions
-   2017-06-01 Lynn Garren : Merge branch ‘feature/team_for_v06_34_01_01’ into feature/team_for_v06_38_00_01
-   2017-05-04 Lynn Garren : for larsoft v06_34_01_01 with geant4 v4_10_3_p01
-   2017-05-04 Lynn Garren : for ifdhc v2_0_6

lareventdisplay v06_10_01
----------------------------------------------------------

-   2017-07-25 Lynn Garren : lareventdisplay v06_10_01 for larsoft v06_45_00
-   2017-07-25 Lynn Garren : Merge branch ‘v06_38_00_01_branch’ into release/v06_45_00
-   2017-06-02 Lynn Garren : lareventdisplay v06_05_07_01
-   2017-06-01 Lynn Garren : Merge branch ‘feature/team_for_v06_34_01_01’ into feature/team_for_v06_38_00_01
-   2017-05-04 Lynn Garren : for larsoft v06_34_01_01 with geant4 v4_10_3_p01

larexamples v06_05_02
--------------------------------------------------

-   2017-07-25 Lynn Garren : larexamples v06_05_02 for larsoft v06_45_00
-   2017-07-25 Lynn Garren : Merge branch ‘v06_38_00_01_branch’ into release/v06_45_00
-   2017-06-02 Lynn Garren : larexamples v06_03_07_01
-   2017-06-01 Lynn Garren : Merge branch ‘feature/team_for_v06_34_01_01’ into feature/team_for_v06_38_00_01
-   2017-05-04 Lynn Garren : for larsoft v06_34_01_01 with geant4 v4_10_3_p01

larpandora v06_15_02
------------------------------------------------

-   2017-07-25 Lynn Garren : larpandora v06_15_02 for larsoft v06_45_00
-   2017-07-25 Lynn Garren : Merge branch ‘v06_38_00_01_branch’ into release/v06_45_00
-   2017-06-02 Lynn Garren : larpandora v06_11_01_01
-   2017-06-01 Lynn Garren : Merge branch ‘feature/team_for_v06_34_01_01’ into feature/team_for_v06_38_00_01
-   2017-05-04 Lynn Garren : for larsoft v06_34_01_01 with geant4 v4_10_3_p01

larwirecell v06_05_06
--------------------------------------------------

-   2017-07-25 Lynn Garren : larwirecell v06_05_06 for larsoft v06_45_00
-   2017-07-25 Lynn Garren : Merge branch ‘v06_38_00_01_branch’ into release/v06_45_00
-   2017-06-02 Lynn Garren : larwirecell v06_04_06_01
-   2017-06-01 Lynn Garren : Merge branch ‘feature/team_for_v06_34_01_01’ into feature/team_for_v06_38_00_01
-   2017-05-04 Lynn Garren : for larsoft v06_34_01_01 with geant4 v4_10_3_p01

larana v06_08_02
----------------------------------------

-   2017-07-25 Lynn Garren : larana v06_08_02 for larsoft v06_45_00
-   2017-07-25 Lynn Garren : Merge branch ‘v06_38_00_01_branch’ into release/v06_45_00
-   2017-06-02 Lynn Garren : larana v06_06_02_01
-   2017-06-01 Lynn Garren : Merge branch ‘feature/team_for_v06_34_01_01’ into feature/team_for_v06_38_00_01
-   2017-05-04 Lynn Garren : for larsoft v06_34_01_01 with geant4 v4_10_3_p01

larreco v06_36_00
------------------------------------------

-   2017-07-25 Lynn Garren : larreco v06_36_00 for larsoft v06_45_00
-   2017-07-25 Lynn Garren : Merge branch ‘v06_38_00_01_branch’ into release/v06_45_00
-   2017-07-25 Lynn Garren : Merge branch ‘feature/tjyang_CNNEMShower’ into release/v06_45_00
-   2017-07-25 Robert Sulej : add track-like weight to summary of used clusters
-   2017-07-25 Robert Sulej : use std copy to copy instead of loop
-   2017-07-25 Robert Sulej : minor optimization in downscale loop
-   2017-07-25 Robert Sulej : skip bad channels
-   2017-07-25 Robert Sulej : cleanup keywords
-   2017-07-22 Robert Sulej : one more optimization
-   2017-07-22 Robert Sulej : remove now unused wire pitches
-   2017-07-22 Robert Sulej : simpify plane coordinate calculation
-   2017-07-21 Robert Sulej : Merge branch ‘develop’ into feature/rsulej_trkValidationPMA
-   2017-07-21 Robert Sulej : Merge branch ‘develop’ of ssh://cdcvs.fnal.gov/cvs/projects/larreco into develop
-   2017-07-21 Robert Sulej : better name for arguments
-   2017-07-21 Dorota Stefan : fix typo
-   2017-07-21 Dorota Stefan : Merge branch ‘feature/rsulej_trkValidationPMA’ of ssh://cdcvs.fnal.gov/cvs/projects/larreco into feature/rsulej_trkValidationPMA
-   2017-07-21 Robert Sulej : simplify 2 lines in constructor
-   2017-07-21 Dorota Stefan : Merge branch ‘feature/rsulej_trkValidationPMA’ of ssh://cdcvs.fnal.gov/cvs/projects/larreco into feature/rsulej_trkValidationPMA
-   2017-07-20 Robert Sulej : fix cases when validation plane was not selected
-   2017-07-20 Robert Sulej : add support for 2-out cnn for em-track separation (for lariat model)
-   2017-07-19 Dorota Stefan : Merge branch ‘develop’ into feature/rsulej_trkValidationPMA
-   2017-07-19 Robert Sulej : move DataProviderAlg to separate file, update includes; change names from view to plane, which is the actual meaning
-   2017-07-19 Robert Sulej : remove something redundant
-   2017-07-19 Robert Sulej : minor change to use bare pointer to GeometryCore
-   2017-07-19 Robert Sulej : move DataProviderAlg to img namespace (from nnet), since it became more generic and used not only in the context of cnn feature labeling
-   2017-07-19 Robert Sulej : remove configure funct.
-   2017-07-19 Robert Sulej : change to validation thresholds individual for each plane
-   2017-07-18 Robert Sulej : add adc, hit, and calib modes of validation, use more displacement vectors, cleanup the code, basically ready (todo individual thresholds for each plane)
-   2017-07-18 Robert Sulej : remove reconfigure fn, minor improvments
-   2017-07-15 Robert Sulej : update comment on the developments status
-   2017-07-13 Robert Sulej : Merge branch ‘develop’ of ssh://cdcvs.fnal.gov/cvs/projects/larreco into develop
-   2017-07-13 Robert Sulej : add validation configuration
-   2017-07-13 Robert Sulej : add tracks validation on 2d adc image
-   2017-07-13 Robert Sulej : add tracks validation on 2d adc image
-   2017-07-13 Robert Sulej : add library for 2d adc image making
-   2017-07-13 Robert Sulej : add validation on 2d adc image (and test function, to be removed)
-   2017-07-13 Robert Sulej : add SameTPC() using displacement vector
-   2017-07-13 Robert Sulej : add start and end position getters (as displacement vectors)
-   2017-07-13 Robert Sulej : add helper functions for displacement vectors
-   2017-07-13 Robert Sulej : add a more generic functionality (now used e.g. in pma tracks validation)
-   2017-07-05 Robert Sulej : add default config for data provider alg
-   2017-06-02 Lynn Garren : larreco v06_30_00_01
-   2017-06-01 Lynn Garren : Merge branch ‘feature/team_for_v06_34_01_01’ into feature/team_for_v06_38_00_01
-   2017-05-19 Tingjun Yang : Use the most upstream vertex to start the shower.
-   2017-05-19 Tingjun Yang : Merge remote-tracking branch ‘origin/feature/reddypg_ShowerEfficiency’ into feature/tjyang_CNNEMShower
-   2017-05-04 Lynn Garren : for larsoft v06_34_01_01 with geant4 v4_10_3_p01
-   2017-05-04 Lynn Garren : use nutools v2_13_02
-   2017-05-01 Tingjun Yang : Merge branch ‘develop’ into feature/tjyang_CNNEMShower
-   2017-05-01 Tingjun Yang : Fix a bug in using CNN to select shower hits.
-   2017-04-28 Tingjun Yang : Add code to identify EM hits using CNN EM ID.

larsim v06_28_00
----------------------------------------

-   2017-07-25 Lynn Garren : larsim v06_28_00 for larsoft v06_45_00
-   2017-07-25 Lynn Garren : Merge branch ‘v06_38_00_01_branch’ into release/v06_45_00
-   2017-07-21 Gianluca Petrillo : An attempt to a solution to issue [\#17117](/redmine/issues/17117 "Bug: prodsingle_sbnd.fcl crashes with larsoft v06_42_00 (Closed)").
-   2017-06-02 Lynn Garren : larsim v06_23_00_01
-   2017-06-01 Lynn Garren : Merge branch ‘feature/team_for_v06_34_01_01’ into feature/team_for_v06_38_00_01
-   2017-05-17 Hans Wenzel : make sure that physics is initialized
-   2017-05-04 Lynn Garren : for larsoft v06_34_01_01 with geant4 v4_10_3_p01
-   2017-05-04 Lynn Garren : modify to make it work with geant 10.3.p01

larevt v06_15_02
----------------------------------------

-   2017-07-25 Lynn Garren : larevt v06_15_02 for larsoft v06_45_00
-   2017-07-25 Lynn Garren : Merge branch ‘v06_38_00_01_branch’ into release/v06_45_00
-   2017-06-02 Lynn Garren : larevt v06_13_04_01
-   2017-06-01 Lynn Garren : Merge branch ‘feature/team_for_v06_34_01_01’ into feature/team_for_v06_38_00_01
-   2017-05-04 Lynn Garren : for larsoft v06_34_01_01 with geant4 v4_10_3_p01

lardata v06_25_01
------------------------------------------

-   2017-07-25 Lynn Garren : lardata v06_25_01 for larsoft v06_45_00
-   2017-07-25 Lynn Garren : Merge branch ‘v06_38_00_01_branch’ into release/v06_45_00
-   2017-07-25 Lynn Garren : Merge branch ‘feature/gp_AddViewXsupport’ into release/v06_45_00
-   2017-07-25 Gianluca Petrillo : DetectorClocks test now prints DetectorClocksStandard-specific diagnostics.
-   2017-06-02 Lynn Garren : lardata v06_21_01_01
-   2017-06-01 Lynn Garren : Merge branch ‘feature/team_for_v06_34_01_01’ into feature/team_for_v06_38_00_01
-   2017-05-16 Lynn Garren : lardata v06_21_00 for larsoft v06_36_00
-   2017-05-12 Diego Gamez : removing some properties and services not needed anymore
-   2017-04-07 Diego Gamez : adding the modifications needed for the TPB properties
-   2017-04-07 Diego Gamez : adding the TPB info in lar properties file
-   2017-04-07 Diego Gamez : modifying accordingly argoneut services
-   2017-05-16 Gianluca Petrillo : I forgot one piece…
-   2017-05-16 Gianluca Petrillo : Added support to offset for view X to DetectorPropertiesStandard.
-   2017-05-04 Lynn Garren : for larsoft v06_34_01_01 with geant4 v4_10_3_p01
-   2017-05-04 Lynn Garren : use nutools v2_13_02

larcore v06_13_02
------------------------------------------

-   2017-07-25 Lynn Garren : larcore v06_13_02 for larsoft v06_45_00

larpandoracontent v03_07_02
--------------------------------------------------------------

larsoftobj v1_23_02
----------------------------------------------

-   2017-07-25 Lynn Garren : larsoftobj v1_23_02 for larsoft v06_45_00
-   2017-07-25 Lynn Garren : update product versions

lardataobj v1_18_00
----------------------------------------------

larcorealg v1_05_02
----------------------------------------------

-   2017-07-25 Lynn Garren : larcorealg v1_05_02 for larsoft v06_45_00
-   2017-07-19 Gianluca Petrillo : Workaround to unit test while issue [\#17234](/redmine/issues/17234 "Support: Unit test scripts can't use bash in Ubuntu (Closed)") is discussed.

larcoreobj v1_15_01
----------------------------------------------

larbatch v01_32_03
--------------------------------------------

larutils v1_16_00
------------------------------------------
