LArSoft v08_51_00 Release Notes
======================================================================

-   **Table of contents**
-   [LArSoft v08_51_00 Release Notes](#LArSoft-v08_51_00-Release-Notes)
    -   [Purpose](#Purpose)
    -   [New features](#New-features)
    -   [Bug fixes](#Bug-fixes)
    -   [Updated dependencies](#Updated-dependencies)
-   [Change List](#Change-List)
    -   [larsoft v08_51_00](#larsoft-v08_51_00)
    -   [lareventdisplay v08_12_14](#lareventdisplay-v08_12_14)
    -   [larexamples v08_06_14](#larexamples-v08_06_14)
    -   [larg4 v08_14_00](#larg4-v08_14_00)
    -   [larpandora v08_12_06](#larpandora-v08_12_06)
    -   [larrecodnn v08_03_03](#larrecodnn-v08_03_03)
    -   [larwirecell v08_12_12](#larwirecell-v08_12_12)
    -   [larana v08_17_06](#larana-v08_17_06)
    -   [larreco v08_31_04](#larreco-v08_31_04)
    -   [larsim v08_23_00](#larsim-v08_23_00)
    -   [larevt v08_11_05](#larevt-v08_11_05)
    -   [lardata v08_15_05](#lardata-v08_15_05)
    -   [larcore v08_11_06](#larcore-v08_11_06)
    -   [larpandoracontent v03_15_16](#larpandoracontent-v03_15_16)
    -   [larsoftobj v08_28_00](#larsoftobj-v08_28_00)
    -   [lardataobj v08_10_08](#lardataobj-v08_10_08)
    -   [lardataalg v08_13_10](#lardataalg-v08_13_10)
    -   [larcorealg v08_21_05](#larcorealg-v08_21_05)
    -   [larcoreobj v08_11_00](#larcoreobj-v08_11_00)
    -   [larbatch v01_52_02](#larbatch-v01_52_02)
    -   [larutils v1_25_09](#larutils-v1_25_09)

[list of LArSoft releases](LArSoft_release_list)
Download instructions for [larsoft v08_51_00](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v08_51_00/larsoft-v08_51_00.html)
Download instructions for [just larsoftobj v08_28_00](http://scisoft.fnal.gov/scisoft/bundles/larsoftobj/v08_28_00/larsoftobj-v08_28_00.html)

Purpose
--------------------

-   build with art v3_05_01 (s97)
-   approved PRs

New features
------------------------------

-   larsim PR 16
    -   SingleGen does currently not write sumdata::RunData data product, which foils the already loosy geometry version check. This change makes SingleGen create that data product just like GENIEGen does (as in: I copied the code from there). This is not a breaking change; only new samples will be affected.
-   larcoreobj PR 3
    -   Functions are provided to read parameters as geometry and readout IDs using FHiCL types, with validation. This should encourage authors not to implicitly assume one-cryostat or one-TPC geometries. The implementation will be greatly simplified with the implementation of Redmine issue [redmine issue 23669](https://cdcvs.fnal.gov/redmine/issues/23669).
-   larg4 PR 9
    -   fix missing traj. endpoints and add filter for primary process

Bug fixes
------------------------

-   webevd PR 3
    -   fix cmake so the executable is installed

Updated dependencies
----------------------------------------------

-   mrb v4_00_02
-   lhapdf v6_2_3b
    -   built with python
-   genie v3_00_06g
-   dk2nugenie v01_08_00j
-   art v3_05_01
-   art_root_io v1_03_01
-   artdaq_core v3_05_15
-   ifdh_art v2_10_05
-   nuevdb v1_02_05
-   nug4 v1_04_03
-   geant4reweight v01_00_07
-   nugen v1_10_05
-   nurandom v1_04_03
-   nutools v3_06_04
-   systematicstools v00_07_01
-   nusystematics v00_10_02
-   artg4tk v09_08_01
-   webevd v08_00_02

Change List
============================

larsoft v08_51_00
------------------------------------------

-   2020-05-06 Lynn Garren : larsoft v08_51_00 for larsoft v08_51_00
-   2020-05-06 Lynn Garren : product versions
-   2020-04-30 Lynn Garren : only build webevd for SLF

lareventdisplay v08_12_14
----------------------------------------------------------

-   2020-05-06 Lynn Garren : lareventdisplay v08_12_14 for larsoft v08_51_00

larexamples v08_06_14
--------------------------------------------------

-   2020-05-06 Lynn Garren : larexamples v08_06_14 for larsoft v08_51_00

larg4 v08_14_00
--------------------------------------

-   2020-05-06 Lynn Garren : larg4 v08_14_00 for larsoft v08_51_00
-   2020-05-04 Lynn Garren : Merge pull request \#9 from drivera-fnal/feature_drivera_filter_sim_trajectories_by_process
-   2020-04-30 David Rivera : Merge branch ‘develop’ of github.com:LArSoft/larg4 into feature_drivera_filter_sim_trajectories_by_process
-   2020-04-30 David Rivera : Allow the process_name for primaries to be inherited from the MCTruth MCParticle object instead of setting it to primary, by default. The primary MCTruth process name can also be used to filter which particles have their trajectory points saved to the event. Only particles descending from the desired generators and the primary process will be stored. Determination of whether the particle’s full trajectory will be stored is made once per particle and stored in the particleInfo_t struct in ::preUserSteppingAction and referenced in ::userSteppingAction and ::preUserSteppingAction.
-   2020-04-29 David Rivera : At minimum store a start and end trajecctory point for all particles.

larpandora v08_12_06
------------------------------------------------

-   2020-05-06 Lynn Garren : larpandora v08_12_06 for larsoft v08_51_00

larrecodnn v08_03_03
------------------------------------------------

-   2020-05-06 Lynn Garren : larrecodnn v08_03_03 for larsoft v08_51_00

larwirecell v08_12_12
--------------------------------------------------

-   2020-05-06 Lynn Garren : larwirecell v08_12_12 for larsoft v08_51_00

larana v08_17_06
----------------------------------------

-   2020-05-06 Lynn Garren : larana v08_17_06 for larsoft v08_51_00

larreco v08_31_04
------------------------------------------

-   2020-05-06 Lynn Garren : larreco v08_31_04 for larsoft v08_51_00

larsim v08_23_00
----------------------------------------

-   2020-05-06 Lynn Garren : add missing override
-   2020-05-06 Lynn Garren : larsim v08_23_00 for larsoft v08_51_00
-   2020-05-06 Lynn Garren : Merge pull request \#16 from PetrilloAtWork/feature/gp_SingleGenRunData
-   2020-05-04 Gianluca Petrillo : SingleGen: specify the extent of the run data as full run.
-   2020-05-04 Gianluca Petrillo : SingleGen module now adds \`RunData information as per LArSoft protocol.

larevt v08_11_05
----------------------------------------

-   2020-05-06 Lynn Garren : larevt v08_11_05 for larsoft v08_51_00

lardata v08_15_05
------------------------------------------

-   2020-05-06 Lynn Garren : lardata v08_15_05 for larsoft v08_51_00

larcore v08_11_06
------------------------------------------

-   2020-05-06 Lynn Garren : larcore v08_11_06 for larsoft v08_51_00

larpandoracontent v03_15_16
--------------------------------------------------------------

larsoftobj v08_28_00
------------------------------------------------

-   2020-05-06 Lynn Garren : larsoftobj v08_28_00 for larsoft v08_51_00
-   2020-05-06 Lynn Garren : product versions

lardataobj v08_10_08
------------------------------------------------

-   2020-05-06 Lynn Garren : lardataobj v08_10_08 for larsoft v08_51_00

lardataalg v08_13_10
------------------------------------------------

-   2020-05-06 Lynn Garren : lardataalg v08_13_10 for larsoft v08_51_00

larcorealg v08_21_05
------------------------------------------------

-   2020-05-06 Lynn Garren : larcorealg v08_21_05 for larsoft v08_51_00

larcoreobj v08_11_00
------------------------------------------------

-   2020-05-06 Lynn Garren : larcoreobj v08_11_00 for larsoft parent larsoft v08_51_00
-   2020-05-06 Lynn Garren : larcoreobj v08_11_00 for larsoft v08_51_00
-   2020-05-05 Lynn Garren : Merge branch ‘feature/gp_FHiCLIDs’ into develop
-   2020-05-05 Lynn Garren : Merge pull request [redmine issue 3](https://cdcvs.fnal.gov/redmine/issues/3) from PetrilloAtWork/feature/gp_FHiCLIDs
-   2020-02-22 Gianluca Petrillo : Removed trailing white spaces.
-   2020-02-21 Gianluca Petrillo : Added missing libraries in unit tests.
-   2019-11-27 Gianluca Petrillo : Added objects for reading readout ID parameters.
-   2019-11-26 Gianluca Petrillo : Added support for FHiCL validated configuration parameters for geometry IDs.

larbatch v01_52_02
--------------------------------------------

larutils v1_25_09
------------------------------------------
