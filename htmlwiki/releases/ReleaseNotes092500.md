LArSoft v09_25_00 Release Notes
======================================================================

[list of LArSoft releases](LArSoft_release_list)
Download instructions for [larsoft v09_25_00](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v09_25_00/larsoft-v09_25_00.html)
Download instructions for [just larsoftobj v09_05_04](http://scisoft.fnal.gov/scisoft/bundles/larsoftobj/v09_05_04/larsoftobj-v09_05_04.html)

Purpose
--------------------

-   changes in develop
-   approved PRs

New features
------------------------------

-   larpandoracontent PR 27
    -   This PR includes updates to
        -   Clean up 3D hits in order to support iterative shower growing: \#175
        -   Provide helper tools to perform matching between reconstructed and MC particle hierarchies: [redmine issue 170](https://cdcvs.fnal.gov/redmine/issues/170)
        -   Fix an issue when building larpandoracontent without PandoraMonitoring: [redmine issue 176](https://cdcvs.fnal.gov/redmine/issues/176)
    -   No product changes are expected for any experiment.
-   larsim PR 68
    -   Hybrid model for Light simulation UGR
    -   Pull Request introducing changes needed for using the new Hybrid model for light propagation for the new larg4 in LArSoft. The idea of this model is to use the Semi-Analytic model for propagating photons inside the active volume and a scaled-down Optical-Library for the LAr volume outside the TPC. This way, we are able to have a complete light simulation by having into account the whole cryostat volume.
        For using this model some changes are required in larsim. As a summary, our changes are the following: 
        -   Our proposal is to remove the functions isScintInActiveVolume and extractActiveVolumes from PDFastSimPAR_module. The reason for that is because, in the new larg4, we need them at IonAndScint stage where we want to decide which propagation model to use, via configuration fhicl file, where we specify the volumes where we want to use one model or the other (Semi-Analytic or OpticalLibrary). These functions are needed in ISCalcCorrelated module, in particular, in the function EFieldAtStep() where we need to distinguish between active and non-active volume in order to set a different electric field value inside and outside the active volume. Outside the TPC active volume we need to be able to set to zero (at 1st approach) the EField by using the function isScintInActiveVolume.
        -   We propose to create a new class containing these two functions in larsim/IonizationScintillation/, called ISTPC. The reason to create the new class is in order to avoid repeating the functions in both modules (Correlated and PAR), this way both modules are able to use the functions by inheriting the new class.
        -   Also, the object “fActiveVolumes” is common to both modules, so it is also included in the new class.
        -   Finally in this proposal we have also included the most updated version of PDFastSimPVS_module, provided by Mu Wei which stores reflected light when using the Optical-Library module. 
    -   [Presentation June 15](https://indico.fnal.gov/event/49497/contributions/217367/attachments/144512/183586/SBND_LightSimulation_LArSoft.pdf)

Bug fixes
------------------------

Updated dependencies
----------------------------------------------

-   mrb v4_04_06

Change List
============================

larsoft v09_25_00
------------------------------------------

-   2021-06-23 Lynn Garren : product versions
-   2021-06-23 Lynn Garren : larsoft v09_25_00 for larsoft v09_25_00

lareventdisplay v09_01_11
----------------------------------------------------------

-   2021-06-23 Lynn Garren : lareventdisplay v09_01_11 for larsoft v09_25_00

larexamples v09_01_11
--------------------------------------------------

-   2021-06-23 Lynn Garren : larexamples v09_01_11 for larsoft v09_25_00

larpandora v09_06_03
------------------------------------------------

-   2021-06-23 Lynn Garren : larpandora v09_06_03 for larsoft v09_25_00

larsimrad v09_01_11
----------------------------------------------

-   2021-06-23 Lynn Garren : larsimrad v09_01_11 for larsoft v09_25_00

larrecodnn v09_07_02
------------------------------------------------

-   2021-06-23 Lynn Garren : larrecodnn v09_07_02 for larsoft v09_25_00

larwirecell v09_02_08
--------------------------------------------------

larana v09_02_07
----------------------------------------

-   2021-06-23 Lynn Garren : larana v09_02_07 for larsoft v09_25_00

larreco v09_06_07
------------------------------------------

-   2021-06-23 Lynn Garren : larreco v09_06_07 for larsoft v09_25_00

larsim v09_14_00
----------------------------------------

-   2021-06-23 Lynn Garren : larsim v09_14_00 for larsoft v09_25_00
-   2021-06-23 Lynn Garren : Merge branch ‘Hybrid-ModelUGR’ into release/v09_25_00
-   2021-06-23 Claudia Alvarez : Indented code in if(EfieldStep\>0)
-   2021-06-17 Claudia Alvarez : Updates for Hybrid Model
-   2021-06-04 Claudia Alvarez : Hybrid Model
-   2021-06-04 Claudia Alvarez : Hybrid Model
-   2021-06-02 Claudia Alvarez : Hybrid Model
-   2021-06-02 Claudia Alvarez : Hybrid Model
-   2021-06-02 Claudia Alvarez : Hybrid Model
-   2021-06-02 Claudia Alvarez : Hybrid Model

larg4 v09_03_07
--------------------------------------

larevt v09_02_06
----------------------------------------

lardata v09_02_04
------------------------------------------

larcore v09_02_01
------------------------------------------

larpandoracontent v03_23_03
--------------------------------------------------------------

-   2021-06-23 Lynn Garren : larpandoracontent v03_23_03 for larsoft v09_25_00
-   2021-06-21 Andrew Chappell : Update version and ChangeLog
-   2021-06-21 AndyChappell : Merge pull request [redmine issue 170](https://cdcvs.fnal.gov/redmine/issues/170) from AndyChappell/feature/hierarchy_tools
-   2021-06-21 AndyChappell : Merge pull request \#175 from AndyChappell/feature/rec_mopup_spacepoints
-   2021-06-11 Andrew Chappell : Address review comments
-   2021-03-30 Andrew Chappell : Add algorithm to clean up 3D hits
-   2021-06-21 AndyChappell : Merge pull request [redmine issue 176](https://cdcvs.fnal.gov/redmine/issues/176) from imawby/feature/MonitoringFix
-   2021-06-18 Isobel Mawby : Initialising variabels
-   2021-06-16 Isobel Mawby : clang formatting
-   2021-06-16 Isobel Mawby : cosmetic \#ifdef changes
-   2021-06-16 Isobel Mawby : clang formatting
-   2021-06-16 Isobel Mawby : MuonLeadingEventValidationAlgorithm.cc monitoring-less build errors fixed
-   2021-06-18 Andrew Chappell : Avoid iteration over unsorted collections
-   2021-06-10 Andrew Chappell : Remove redundant calo hit collection function
-   2021-06-10 Andrew Chappell : Address review comments
-   2021-05-14 Andrew Chappell : Add matching information class
-   2021-05-12 Andrew Chappell : Add hierarchy tools for test beam interactions
-   2021-02-18 Andrew Chappell : Add hierarchy tools for neutrino interactions

larsoftobj v09_05_04
------------------------------------------------

lardataobj v09_01_03
------------------------------------------------

lardataalg v09_04_04
------------------------------------------------

larcorealg v09_01_01
------------------------------------------------

larcoreobj v09_02_00
------------------------------------------------

webevd v09_05_05
----------------------------------------

larbatch v01_56_01
--------------------------------------------

larutils v1_28_00
------------------------------------------
