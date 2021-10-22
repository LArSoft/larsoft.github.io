LArSoft v07\_04\_00 Release Notes[¶](#LArSoft-v07_04_00-Release-Notes)
======================================================================

-   **Table of contents**
-   [LArSoft v07\_04\_00 Release Notes](#LArSoft-v07_04_00-Release-Notes)
    -   [Purpose](#Purpose)
    -   [New features](#New-features)
    -   [Bug fixes](#Bug-fixes)
    -   [Updated dependencies](#Updated-dependencies)
-   [Change List](#Change-List)
    -   [larsoft v07\_04\_00](#larsoft-v07_04_00)
    -   [lareventdisplay v07\_01\_02](#lareventdisplay-v07_01_02)
    -   [larexamples v07\_00\_05](#larexamples-v07_00_05)
    -   [larg4 v07\_01\_00](#larg4-v07_01_00)
    -   [larpandora v07\_01\_02](#larpandora-v07_01_02)
    -   [larwirecell v07\_00\_05](#larwirecell-v07_00_05)
    -   [larana v07\_01\_00](#larana-v07_01_00)
    -   [larreco v07\_03\_01](#larreco-v07_03_01)
    -   [larsim v07\_02\_01](#larsim-v07_02_01)
    -   [larevt v07\_00\_05](#larevt-v07_00_05)
    -   [lardata v07\_00\_05](#lardata-v07_00_05)
    -   [larcore v07\_00\_02](#larcore-v07_00_02)
    -   [larpandoracontent v03\_14\_01](#larpandoracontent-v03_14_01)
    -   [larsoftobj v07\_02\_01](#larsoftobj-v07_02_01)
    -   [lardataobj v07\_02\_01](#lardataobj-v07_02_01)
    -   [lardataalg v07\_00\_02](#lardataalg-v07_00_02)
    -   [larcorealg v07\_01\_01](#larcorealg-v07_01_01)
    -   [larcoreobj v07\_00\_01](#larcoreobj-v07_00_01)
    -   [larbatch v01\_44\_00](#larbatch-v01_44_00)
    -   [larutils v1\_23\_00](#larutils-v1_23_00)

[list of LArSoft releases](LArSoft_release_list)\
Download instructions for [larsoft v07\_04\_00](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v07_04_00/larsoft-v07_04_00.html)\
Download instructions for [just larsoftobj v07\_02\_01](http://scisoft.fnal.gov/scisoft/bundles/larsoftobj/v07_02_01/larsoftobj-v07_02_01.html)


Purpose[¶](#Purpose)
--------------------

-   changes in develop
-   approved feature branches


New features[¶](#New-features)
------------------------------

-   Update OpHitFinder to use the new PhotonCalibrator service instead of handling calibration internally.
    -   larana feature/aih\_pdcalibrator
-   intermediate step towards fully functional Auxdets
    -   artg4tk feature/wenzel\_larg4refac\_phase2\_1
    -   larg4 feature/wenzel\_larg4refac\_phase2\_1
    -   lardataobj feature/wenzel\_larg4refac\_phase2\_1
    -   added fcl options for overlap checks, verbosity of physics constructors, Dumping of material properties, dumping of physics list constant and dumping of available physics constructors.
    -   started extracting general material properties from geant4 to later feed that into a material properties service.
    -   lot of code clean up,
        -   making sure that the DRCalorimeter writes multiple data objects\
             (e.g. energy/nceren distribution by particle) into the event stream.
        -   Make sure all the sensitive detectors write directly into the event stream or delete the ones that we don’t need.
    -   Auxdets are present but not integrated yet.


Bug fixes[¶](#Bug-fixes)
------------------------

-   larsim bug fix for [\#20554](/redmine/issues/20554 "Bug: AuxDetSensitive with ID 0 has no energy deposit (Closed)") in develop
-   larsim bug fix for [\#20685](/redmine/issues/20685 "Bug: Bug in ISCalcSeparate::EFieldAtStep (Resolved)") in develop


Updated dependencies[¶](#Updated-dependencies)
----------------------------------------------

-   artg4tk v08\_01\_00


Change List[¶](#Change-List)
============================


larsoft v07\_04\_00[¶](#larsoft-v07_04_00)
------------------------------------------

-   2018-08-28 Lynn Garren : larsoft v07\_04\_00 for larsoft v07\_04\_00
-   2018-08-28 Lynn Garren : update products


lareventdisplay v07\_01\_02[¶](#lareventdisplay-v07_01_02)
----------------------------------------------------------

-   2018-08-28 Lynn Garren : lareventdisplay v07\_01\_02 for larsoft v07\_04\_00
-   2018-08-23 Lynn Garren : larsoft v07\_03\_00
-   2018-08-21 Tingjun Yang : Tweak to make display work for unsorted hits.


larexamples v07\_00\_05[¶](#larexamples-v07_00_05)
--------------------------------------------------

-   2018-08-28 Lynn Garren : larexamples v07\_00\_05 for larsoft v07\_04\_00


larg4 v07\_01\_00[¶](#larg4-v07_01_00)
--------------------------------------

-   2018-08-28 Lynn Garren : larg4 v07\_01\_00 for larsoft v07\_04\_00
-   2018-08-28 Lynn Garren : Merge branch ‘feature/wenzel\_larg4refac\_phase2\_1’ into release/v07\_04\_00
-   2018-08-27 Lynn Garren : temporary hack until the Auxdet work is completed, when this should no longer be necessary
-   2018-08-24 Hans-Joachim Wenzel : add auxdetsd even though it is not yet integrated in the framework yet
-   2018-08-17 Hans-Joachim Wenzel : sync LArG4Detector\_service with the changes in artg4tk GDMLDetector\_service, add AuxDetSD to build


larpandora v07\_01\_02[¶](#larpandora-v07_01_02)
------------------------------------------------

-   2018-08-28 Lynn Garren : larpandora v07\_01\_02 for larsoft v07\_04\_00


larwirecell v07\_00\_05[¶](#larwirecell-v07_00_05)
--------------------------------------------------

-   2018-08-28 Lynn Garren : larwirecell v07\_00\_05 for larsoft v07\_04\_00


larana v07\_01\_00[¶](#larana-v07_01_00)
----------------------------------------

-   2018-08-28 Lynn Garren : larana v07\_01\_00 for larsoft v07\_04\_00
-   2018-08-28 Alex Himmel : Merge remote-tracking branch ‘origin/develop’ into feature/aih\_pdcalibrator
-   2018-08-27 Giuseppe Cerati : bug fix: TPCTDC2Tick(0) was working only because TriggerTime was set by default to zero, this restores the desired behavior
-   2018-08-17 Alex Himmel : Merge remote-tracking branch ‘origin/develop’ into feature/aih\_pdcalibrator
-   2018-08-17 Alex Himmel : Add a default of “false” for the UseCalibrator parameter in OpHitFinder.
-   2018-08-13 Alex Himmel : Update OpHitFinder to use the new PhotonCalibrator service instead of handling calibration internally. LArSoft interfaces are unchanged and confirmed to give identical behavior as before, but this is a breaking change in the OpHitAlg itself.


larreco v07\_03\_01[¶](#larreco-v07_03_01)
------------------------------------------

-   2018-08-28 Lynn Garren : larreco v07\_03\_01 for larsoft v07\_04\_00
-   2018-08-28 Lynn Garren : larreco v07\_03\_01 for larsoft v07\_04\_00
-   2018-08-24 Herbert Greenlee : Update SpacePointAna.
-   2018-08-23 Lynn Garren : larsoft v07\_03\_00
-   2018-08-23 Christopher Backhouse : Improved error messages and protection against hits with negative integral.


larsim v07\_02\_01[¶](#larsim-v07_02_01)
----------------------------------------

-   2018-08-28 Lynn Garren : larsim v07\_02\_01 for larsoft v07\_04\_00
-   2018-08-27 Wesley Ketchum : bug fix for + instead of \* in efield calculation
-   2018-08-28 Paul Russo : Fix redmine issue [\#20554](/redmine/issues/20554 "Bug: AuxDetSensitive with ID 0 has no energy deposit (Closed)") - AuxDetSensitive with ID 0 has no energy deposit.


larevt v07\_00\_05[¶](#larevt-v07_00_05)
----------------------------------------

-   2018-08-28 Lynn Garren : larevt v07\_00\_05 for larsoft v07\_04\_00


lardata v07\_00\_05[¶](#lardata-v07_00_05)
------------------------------------------

-   2018-08-28 Lynn Garren : lardata v07\_00\_05 for larsoft v07\_04\_00
-   2018-08-27 Lynn Garren : find art, canvas, etc.


larcore v07\_00\_02[¶](#larcore-v07_00_02)
------------------------------------------


larpandoracontent v03\_14\_01[¶](#larpandoracontent-v03_14_01)
--------------------------------------------------------------


larsoftobj v07\_02\_01[¶](#larsoftobj-v07_02_01)
------------------------------------------------

-   2018-08-28 Lynn Garren : larsoftobj v07\_02\_01 for larsoft v07\_04\_00
-   2018-08-28 Lynn Garren : update products


lardataobj v07\_02\_01[¶](#lardataobj-v07_02_01)
------------------------------------------------

-   2018-08-28 Lynn Garren : lardataobj v07\_02\_01 for larsoft v07\_04\_00
-   2018-08-28 Lynn Garren : Merge branch ‘feature/wenzel\_larg4refac\_phase2\_1’ into release/v07\_04\_00
-   2018-08-17 Hans-Joachim Wenzel : add typedef std::vector\<AuxDetSimChannel\>


lardataalg v07\_00\_02[¶](#lardataalg-v07_00_02)
------------------------------------------------


larcorealg v07\_01\_01[¶](#larcorealg-v07_01_01)
------------------------------------------------


larcoreobj v07\_00\_01[¶](#larcoreobj-v07_00_01)
------------------------------------------------


larbatch v01\_44\_00[¶](#larbatch-v01_44_00)
--------------------------------------------


larutils v1\_23\_00[¶](#larutils-v1_23_00)
------------------------------------------
