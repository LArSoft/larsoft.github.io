LArSoft v08\_51\_00 Release Notes[¶](#LArSoft-v08_51_00-Release-Notes)
======================================================================

-   **Table of contents**
-   [LArSoft v08\_51\_00 Release Notes](#LArSoft-v08_51_00-Release-Notes)
    -   [Purpose](#Purpose)
    -   [New features](#New-features)
    -   [Bug fixes](#Bug-fixes)
    -   [Updated dependencies](#Updated-dependencies)
-   [Change List](#Change-List)
    -   [larsoft v08\_51\_00](#larsoft-v08_51_00)
    -   [lareventdisplay v08\_12\_14](#lareventdisplay-v08_12_14)
    -   [larexamples v08\_06\_14](#larexamples-v08_06_14)
    -   [larg4 v08\_14\_00](#larg4-v08_14_00)
    -   [larpandora v08\_12\_06](#larpandora-v08_12_06)
    -   [larrecodnn v08\_03\_03](#larrecodnn-v08_03_03)
    -   [larwirecell v08\_12\_12](#larwirecell-v08_12_12)
    -   [larana v08\_17\_06](#larana-v08_17_06)
    -   [larreco v08\_31\_04](#larreco-v08_31_04)
    -   [larsim v08\_23\_00](#larsim-v08_23_00)
    -   [larevt v08\_11\_05](#larevt-v08_11_05)
    -   [lardata v08\_15\_05](#lardata-v08_15_05)
    -   [larcore v08\_11\_06](#larcore-v08_11_06)
    -   [larpandoracontent v03\_15\_16](#larpandoracontent-v03_15_16)
    -   [larsoftobj v08\_28\_00](#larsoftobj-v08_28_00)
    -   [lardataobj v08\_10\_08](#lardataobj-v08_10_08)
    -   [lardataalg v08\_13\_10](#lardataalg-v08_13_10)
    -   [larcorealg v08\_21\_05](#larcorealg-v08_21_05)
    -   [larcoreobj v08\_11\_00](#larcoreobj-v08_11_00)
    -   [larbatch v01\_52\_02](#larbatch-v01_52_02)
    -   [larutils v1\_25\_09](#larutils-v1_25_09)

[list of LArSoft releases](LArSoft_release_list)\
Download instructions for [larsoft v08\_51\_00](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v08_51_00/larsoft-v08_51_00.html)\
Download instructions for [just larsoftobj v08\_28\_00](http://scisoft.fnal.gov/scisoft/bundles/larsoftobj/v08_28_00/larsoftobj-v08_28_00.html)


Purpose[¶](#Purpose)
--------------------

-   build with art v3\_05\_01 (s97)
-   approved PRs


New features[¶](#New-features)
------------------------------

-   larsim PR 16
    -   SingleGen does currently not write sumdata::RunData data product, which foils the already loosy geometry version check. This change makes SingleGen create that data product just like GENIEGen does (as in: I copied the code from there). This is not a breaking change; only new samples will be affected.
-   larcoreobj PR 3
    -   Functions are provided to read parameters as geometry and readout IDs using FHiCL types, with validation. This should encourage authors not to implicitly assume one-cryostat or one-TPC geometries. The implementation will be greatly simplified with the implementation of Redmine issue [\#23669](/redmine/issues/23669 "Feature: Provide a FHiCL type to read an object arbitrary type from a parameter table (Closed)").
-   larg4 PR 9
    -   fix missing traj. endpoints and add filter for primary process


Bug fixes[¶](#Bug-fixes)
------------------------

-   webevd PR 3
    -   fix cmake so the executable is installed


Updated dependencies[¶](#Updated-dependencies)
----------------------------------------------

-   mrb v4\_00\_02
-   lhapdf v6\_2\_3b
    -   built with python
-   genie v3\_00\_06g
-   dk2nugenie v01\_08\_00j
-   art v3\_05\_01
-   art\_root\_io v1\_03\_01
-   artdaq\_core v3\_05\_15
-   ifdh\_art v2\_10\_05
-   nuevdb v1\_02\_05
-   nug4 v1\_04\_03
-   geant4reweight v01\_00\_07
-   nugen v1\_10\_05
-   nurandom v1\_04\_03
-   nutools v3\_06\_04
-   systematicstools v00\_07\_01
-   nusystematics v00\_10\_02
-   artg4tk v09\_08\_01
-   webevd v08\_00\_02


Change List[¶](#Change-List)
============================


larsoft v08\_51\_00[¶](#larsoft-v08_51_00)
------------------------------------------

-   2020-05-06 Lynn Garren : larsoft v08\_51\_00 for larsoft v08\_51\_00
-   2020-05-06 Lynn Garren : product versions
-   2020-04-30 Lynn Garren : only build webevd for SLF


lareventdisplay v08\_12\_14[¶](#lareventdisplay-v08_12_14)
----------------------------------------------------------

-   2020-05-06 Lynn Garren : lareventdisplay v08\_12\_14 for larsoft v08\_51\_00


larexamples v08\_06\_14[¶](#larexamples-v08_06_14)
--------------------------------------------------

-   2020-05-06 Lynn Garren : larexamples v08\_06\_14 for larsoft v08\_51\_00


larg4 v08\_14\_00[¶](#larg4-v08_14_00)
--------------------------------------

-   2020-05-06 Lynn Garren : larg4 v08\_14\_00 for larsoft v08\_51\_00
-   2020-05-04 Lynn Garren : Merge pull request \#9 from drivera-fnal/feature\_drivera\_filter\_sim\_trajectories\_by\_process
-   2020-04-30 David Rivera : Merge branch ‘develop’ of github.com:LArSoft/larg4 into feature\_drivera\_filter\_sim\_trajectories\_by\_process
-   2020-04-30 David Rivera : Allow the process\_name for primaries to be inherited from the MCTruth MCParticle object instead of setting it to primary, by default. The primary MCTruth process name can also be used to filter which particles have their trajectory points saved to the event. Only particles descending from the desired generators and the primary process will be stored. Determination of whether the particle’s full trajectory will be stored is made once per particle and stored in the particleInfo\_t struct in ::preUserSteppingAction and referenced in ::userSteppingAction and ::preUserSteppingAction.
-   2020-04-29 David Rivera : At minimum store a start and end trajecctory point for all particles.


larpandora v08\_12\_06[¶](#larpandora-v08_12_06)
------------------------------------------------

-   2020-05-06 Lynn Garren : larpandora v08\_12\_06 for larsoft v08\_51\_00


larrecodnn v08\_03\_03[¶](#larrecodnn-v08_03_03)
------------------------------------------------

-   2020-05-06 Lynn Garren : larrecodnn v08\_03\_03 for larsoft v08\_51\_00


larwirecell v08\_12\_12[¶](#larwirecell-v08_12_12)
--------------------------------------------------

-   2020-05-06 Lynn Garren : larwirecell v08\_12\_12 for larsoft v08\_51\_00


larana v08\_17\_06[¶](#larana-v08_17_06)
----------------------------------------

-   2020-05-06 Lynn Garren : larana v08\_17\_06 for larsoft v08\_51\_00


larreco v08\_31\_04[¶](#larreco-v08_31_04)
------------------------------------------

-   2020-05-06 Lynn Garren : larreco v08\_31\_04 for larsoft v08\_51\_00


larsim v08\_23\_00[¶](#larsim-v08_23_00)
----------------------------------------

-   2020-05-06 Lynn Garren : add missing override
-   2020-05-06 Lynn Garren : larsim v08\_23\_00 for larsoft v08\_51\_00
-   2020-05-06 Lynn Garren : Merge pull request \#16 from PetrilloAtWork/feature/gp\_SingleGenRunData
-   2020-05-04 Gianluca Petrillo : SingleGen: specify the extent of the run data as full run.
-   2020-05-04 Gianluca Petrillo : SingleGen module now adds \`RunData information as per LArSoft protocol.


larevt v08\_11\_05[¶](#larevt-v08_11_05)
----------------------------------------

-   2020-05-06 Lynn Garren : larevt v08\_11\_05 for larsoft v08\_51\_00


lardata v08\_15\_05[¶](#lardata-v08_15_05)
------------------------------------------

-   2020-05-06 Lynn Garren : lardata v08\_15\_05 for larsoft v08\_51\_00


larcore v08\_11\_06[¶](#larcore-v08_11_06)
------------------------------------------

-   2020-05-06 Lynn Garren : larcore v08\_11\_06 for larsoft v08\_51\_00


larpandoracontent v03\_15\_16[¶](#larpandoracontent-v03_15_16)
--------------------------------------------------------------


larsoftobj v08\_28\_00[¶](#larsoftobj-v08_28_00)
------------------------------------------------

-   2020-05-06 Lynn Garren : larsoftobj v08\_28\_00 for larsoft v08\_51\_00
-   2020-05-06 Lynn Garren : product versions


lardataobj v08\_10\_08[¶](#lardataobj-v08_10_08)
------------------------------------------------

-   2020-05-06 Lynn Garren : lardataobj v08\_10\_08 for larsoft v08\_51\_00


lardataalg v08\_13\_10[¶](#lardataalg-v08_13_10)
------------------------------------------------

-   2020-05-06 Lynn Garren : lardataalg v08\_13\_10 for larsoft v08\_51\_00


larcorealg v08\_21\_05[¶](#larcorealg-v08_21_05)
------------------------------------------------

-   2020-05-06 Lynn Garren : larcorealg v08\_21\_05 for larsoft v08\_51\_00


larcoreobj v08\_11\_00[¶](#larcoreobj-v08_11_00)
------------------------------------------------

-   2020-05-06 Lynn Garren : larcoreobj v08\_11\_00 for larsoft parent larsoft v08\_51\_00
-   2020-05-06 Lynn Garren : larcoreobj v08\_11\_00 for larsoft v08\_51\_00
-   2020-05-05 Lynn Garren : Merge branch ‘feature/gp\_FHiCLIDs’ into develop
-   2020-05-05 Lynn Garren : Merge pull request [\#3](/redmine/issues/3 "Feature: Connect to Database with kerberos authentication (Rejected)") from PetrilloAtWork/feature/gp\_FHiCLIDs
-   2020-02-22 Gianluca Petrillo : Removed trailing white spaces.
-   2020-02-21 Gianluca Petrillo : Added missing libraries in unit tests.
-   2019-11-27 Gianluca Petrillo : Added objects for reading readout ID parameters.
-   2019-11-26 Gianluca Petrillo : Added support for FHiCL validated configuration parameters for geometry IDs.


larbatch v01\_52\_02[¶](#larbatch-v01_52_02)
--------------------------------------------


larutils v1\_25\_09[¶](#larutils-v1_25_09)
------------------------------------------
