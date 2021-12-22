LArSoft v07\_03\_00 Release Notes(#LArSoft-v07_03_00-Release-Notes)
======================================================================

-   **Table of contents**
-   [LArSoft v07\_03\_00 Release Notes](#LArSoft-v07_03_00-Release-Notes)
    -   [Purpose](#Purpose)
    -   [New features](#New-features)
    -   [Bug fixes](#Bug-fixes)
    -   [Updated dependencies](#Updated-dependencies)
-   [Change List](#Change-List)
    -   [larsoft v07\_03\_00](#larsoft-v07_03_00)
    -   [lareventdisplay v07\_01\_01](#lareventdisplay-v07_01_01)
    -   [larexamples v07\_00\_04](#larexamples-v07_00_04)
    -   [larg4 v07\_00\_04](#larg4-v07_00_04)
    -   [larpandora v07\_01\_01](#larpandora-v07_01_01)
    -   [larwirecell v07\_00\_04](#larwirecell-v07_00_04)
    -   [larana v07\_00\_04](#larana-v07_00_04)
    -   [larreco v07\_03\_00](#larreco-v07_03_00)
    -   [larsim v07\_02\_00](#larsim-v07_02_00)
    -   [larevt v07\_00\_04](#larevt-v07_00_04)
    -   [lardata v07\_00\_04](#lardata-v07_00_04)
    -   [larcore v07\_00\_02](#larcore-v07_00_02)
    -   [larpandoracontent v03\_14\_01](#larpandoracontent-v03_14_01)
    -   [larsoftobj v07\_02\_00](#larsoftobj-v07_02_00)
    -   [lardataobj v07\_02\_00](#lardataobj-v07_02_00)
    -   [lardataalg v07\_00\_02](#lardataalg-v07_00_02)
    -   [larcorealg v07\_01\_01](#larcorealg-v07_01_01)
    -   [larcoreobj v07\_00\_01](#larcoreobj-v07_00_01)
    -   [larbatch v01\_44\_00](#larbatch-v01_44_00)
    -   [larutils v1\_23\_00](#larutils-v1_23_00)

[list of LArSoft releases](LArSoft_release_list)\
Download instructions for [larsoft v07\_03\_00](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v07_03_00/larsoft-v07_03_00.html)\
Download instructions for [just larsoftobj v07\_02\_00](http://scisoft.fnal.gov/scisoft/bundles/larsoftobj/v07_02_00/larsoftobj-v07_02_00.html)

Purpose(#Purpose)
--------------------

-   approved feature branches
-   changes in develop
-   drop e15 support

New features(#New-features)
------------------------------

-   added Slice – Hit assns for new hits that TrajCluster produces
    -   lardataobj feature/bb\_recobslice
    -   larreco feature/bb\_restruct
-   larsim & dunetpc feature/wketchum\_ShiftEDep\_Debugging\_v7\_02\_00
    -   bugfix changes the name of the ISCalculatorSeparate Alg to use with the Wes-style refactored G4. Name conflicts created runtime problems.
    -   a feature addition of allowing some recombination parameters to be reconfigurable in LArG4Parameters. \
        Defaults stay the same (come from larcore utilities).

Bug fixes(#Bug-fixes)
------------------------

-   resolution of [\#20568](/redmine/issues/20568 "Necessary Maintenance: Use of ValidHandle::failedToGet break use of ParticleInventory/BackTracker/PhotonBackTracker in g... (Closed)")
    -   commit e9842072b628bd4168e93b46bdfba788d841e2d6 on larsim develop

Updated dependencies(#Updated-dependencies)
----------------------------------------------

-   libwda v2\_26\_0
-   ifdhc v2\_3\_5
-   ifdh\_art v2\_06\_06
-   nutools v2\_24\_03
-   mrb v1\_16\_02 (include larg4 in larsoft\_suite)

Change List(#Change-List)
============================

larsoft v07\_03\_00(#larsoft-v07_03_00)
------------------------------------------

-   2018-08-22 Lynn Garren : larsoft v07\_03\_00 for larsoft v07\_03\_00
-   2018-08-22 Lynn Garren : update dependency database
-   2018-08-22 Lynn Garren : product versions

lareventdisplay v07\_01\_01(#lareventdisplay-v07_01_01)
----------------------------------------------------------

-   2018-08-22 Lynn Garren : lareventdisplay v07\_01\_01 for larsoft v07\_03\_00
-   2018-08-21 Tingjun Yang : Add SliceModuleLabels in the fcl file.

larexamples v07\_00\_04(#larexamples-v07_00_04)
--------------------------------------------------

-   2018-08-22 Lynn Garren : larexamples v07\_00\_04 for larsoft v07\_03\_00

larg4 v07\_00\_04(#larg4-v07_00_04)
--------------------------------------

-   2018-08-22 Lynn Garren : larg4 v07\_00\_04 for larsoft v07\_03\_00

larpandora v07\_01\_01(#larpandora-v07_01_01)
------------------------------------------------

-   2018-08-22 Lynn Garren : larpandora v07\_01\_01 for larsoft v07\_03\_00
-   2018-08-21 Lynn Garren : remove unnecessary directive

larwirecell v07\_00\_04(#larwirecell-v07_00_04)
--------------------------------------------------

-   2018-08-22 Lynn Garren : larwirecell v07\_00\_04 for larsoft v07\_03\_00

larana v07\_00\_04(#larana-v07_00_04)
----------------------------------------

-   2018-08-22 Lynn Garren : larana v07\_00\_04 for larsoft v07\_03\_00

larreco v07\_03\_00(#larreco-v07_03_00)
------------------------------------------

-   2018-08-22 Lynn Garren : larreco v07\_03\_00 for larsoft v07\_03\_00
-   2018-08-22 Lynn Garren : larreco v07\_03\_00 for larsoft v07\_03\_00
-   2018-08-22 baller : Fix indexing bug
-   2018-08-21 baller : make consistent with develop
-   2018-08-21 baller : Merge remote-tracking branch ‘origin’ into feature/bb\_restruct
-   2018-08-21 baller : Protect against having no input hits
-   2018-08-21 baller : Check for consistent product ids
-   2018-08-20 baller : Improve debug output
-   2018-08-20 baller : Clean up
-   2018-08-20 baller : Add variant of AnalyzeHits and comment it out for now. Debug print improvements.
-   2018-08-20 baller : Add variant of AnalyzeHits and comment it out for now.
-   2018-08-20 baller : Add variant of AnalyzeHits and comment it out for now.
-   2018-08-18 Alex Himmel : Merge branch ‘feature/aih\_pdcalibrator’ into develop
-   2018-08-17 baller : Fix c2 not-bug
-   2018-08-17 Alex Himmel : Merge remote-tracking branch ‘origin/develop’ into feature/aih\_pdcalibrator
-   2018-08-17 Alex Himmel : Add the PhotonCalibrator prolog fhicl.
-   2018-08-17 baller : Fix bugs
-   2018-08-17 baller : Add Stitch debug configuration
-   2018-08-17 baller : Change PrintP call structure. Add Stitch debug configuration
-   2018-08-17 baller : Change PrintP call structure. Add Stitch debug configuration
-   2018-08-17 baller : Change PrintP call structure
-   2018-08-17 baller : Add debug info
-   2018-08-16 baller : Merge branch ‘feature/bb\_restruct’ of ssh://cdcvs.fnal.gov/cvs/projects/larreco into feature/bb\_restruct
-   2018-08-16 baller : Fix bugs. Add improvements in TestBeam mode and PFParticle stitching.
-   2018-08-16 baller : Fix bugs. Add improvements in TestBeam mode and PFParticle stitching.
-   2018-08-16 baller : Fix bugs. Add improvements in TestBeam mode and PFParticle stitching.
-   2018-08-16 baller : Fix bugs. Add improvements in TestBeam mode and PFParticle stitching.
-   2018-08-16 baller : Fix bugs. Add improvements in TestBeam mode and PFParticle stitching.
-   2018-08-16 baller : Fix bugs. Add improvements in TestBeam mode and PFParticle stitching.
-   2018-08-16 baller : Fix bugs. Add debug output and improvements in TestBeam mode.
-   2018-08-15 Lynn Garren : deal with complaint about comparison between signed and unsigned integers
-   2018-08-15 baller : merge with 7\_01\_00 Merge branch ‘develop’ into feature/bb\_restruct
-   2018-08-14 baller : Make PFParticles that span multiple TPCs.
-   2018-08-14 baller : Make PFParticles that span multiple TPCs.
-   2018-08-14 baller : Make PFParticles that span multiple TPCs.
-   2018-08-14 baller : Make PFParticles that span multiple TPCs.
-   2018-08-14 baller : Make PFParticles that span multiple TPCs.
-   2018-08-14 baller : Make PFParticles that span multiple TPCs.
-   2018-08-14 baller : Make PFParticles that span multiple TPCs.
-   2018-08-14 baller : Make PFParticles that span multiple TPCs.
-   2018-08-10 Alex Himmel : Introduce a new service interface, IPhotonCalibrator, for calibrating optical hits (ADC -\> PE). Includes a simple PhotonCalibratorStandard which applies a common linear conversion which does not vary by channel (e.g. sensible behavior for simulation).
-   2018-08-13 baller : Pass slice ID to TrajClusterAlg
-   2018-08-13 baller : Pass slice ID to TrajClusterAlg
-   2018-08-13 baller : Pass slice ID to TrajClusterAlg
-   2018-08-13 baller : Pass slice ID to TrajClusterAlg
-   2018-08-13 baller : Fix Shower - Hit assns bug
-   2018-08-10 baller : Check for multi-TPC detectors
-   2018-08-09 baller : Make Slice - Hit assns
-   2018-08-09 baller : Add PFParticle - Slice assns

larsim v07\_02\_00(#larsim-v07_02_00)
----------------------------------------

-   2018-08-22 Lynn Garren : larsim v07\_02\_00 for larsoft v07\_03\_00
-   2018-08-21 Wesley Ketchum : Merge branch ‘feature/wketchum\_ShiftEDep\_Debugging’ into develop
-   2018-08-16 Gianluca Petrillo : Fixed uninitialised pointers in PhotonVisibilityService.
-   2018-08-16 Lynn Garren : larsoft v07\_02\_00
-   2018-08-16 Jason Stock : Remove use of ValidHandle.failedToGet() from the backtrackers. It was an unneccessary check as failedToGet will always be false for a ValidHandle.
-   2018-08-14 Wesley Ketchum : back out the use of TRACE statements for debugging …
-   2018-08-14 Wesley Ketchum : missed a few renaming in modules
-   2018-08-14 Wesley Ketchum : rename ISCalculationSeparate to ISCalcSeparate
-   2018-08-14 Wesley Ketchum : fixes for bad standalone ISCalcSeparate? Also renaming…

larevt v07\_00\_04(#larevt-v07_00_04)
----------------------------------------

-   2018-08-22 Lynn Garren : larevt v07\_00\_04 for larsoft v07\_03\_00

lardata v07\_00\_04(#lardata-v07_00_04)
------------------------------------------

-   2018-08-22 Lynn Garren : lardata v07\_00\_04 for larsoft v07\_03\_00

larcore v07\_00\_02(#larcore-v07_00_02)
------------------------------------------

-   2018-08-22 Lynn Garren : larcore v07\_00\_02 for larsoft v07\_03\_00

larpandoracontent v03\_14\_01(#larpandoracontent-v03_14_01)
--------------------------------------------------------------

-   2018-08-22 Lynn Garren : v03\_14\_01
-   2018-08-22 Lynn Garren : v03\_14\_01

larsoftobj v07\_02\_00(#larsoftobj-v07_02_00)
------------------------------------------------

-   2018-08-22 Lynn Garren : larsoftobj v07\_02\_00 for larsoft v07\_03\_00
-   2018-08-22 Lynn Garren : mrb v1\_16\_02
-   2018-08-22 Lynn Garren : update products

lardataobj v07\_02\_00(#lardataobj-v07_02_00)
------------------------------------------------

-   2018-08-22 Lynn Garren : lardataobj v07\_02\_00 for larsoft v07\_03\_00
-   2018-08-21 Lynn Garren : Merge branch ‘feature/bb\_recobslice’ into release/v07\_03\_00
-   2018-08-09 baller : Add PFParticle - Slice assns
-   2018-08-08 baller : Define PFParticle - Slice assns
-   2018-08-07 baller : Merge branch ‘develop’ into feature/bb\_recobslice
-   2018-08-07 baller : Add PFParticle - Slice assns

lardataalg v07\_00\_02(#lardataalg-v07_00_02)
------------------------------------------------

-   2018-08-22 Lynn Garren : lardataalg v07\_00\_02 for larsoft v07\_03\_00

larcorealg v07\_01\_01(#larcorealg-v07_01_01)
------------------------------------------------

-   2018-08-22 Lynn Garren : larcorealg v07\_01\_01 for larsoft v07\_03\_00

larcoreobj v07\_00\_01(#larcoreobj-v07_00_01)
------------------------------------------------

-   2018-08-22 Lynn Garren : larcoreobj v07\_00\_01 for larsoft v07\_03\_00

larbatch v01\_44\_00(#larbatch-v01_44_00)
--------------------------------------------

-   2018-08-22 Lynn Garren : larbatch v01\_44\_00 for larsoft v07\_03\_00
-   2018-08-21 Herbert Greenlee : Merge remote-tracking branch ‘origin/develop’ into develop
-   2018-08-21 Herbert Greenlee : Don’t ask batch job to start already started projects.
-   2018-08-21 Herbert Greenlee : Add more options for creating recursive datasets.
-   2018-08-20 Herbert Greenlee : Allow maintain parentage with multiple files per job.
-   2018-08-20 Herbert Greenlee : Add feature to prevent two identical project.py job submissions from running at the same time.

larutils v1\_23\_00(#larutils-v1_23_00)
------------------------------------------

-   2018-08-22 Lynn Garren : larutils v1\_23\_00 for larsoft v07\_03\_00
-   2018-08-22 Thomas Junk : build garsoft
-   2018-08-20 Thomas Junk : comment out the line copying the example data files
