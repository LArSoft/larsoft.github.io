LArSoft v07\_00\_00 Release Notes
======================================================================

-   **Table of contents**
-   [LArSoft v07\_00\_00 Release Notes](#LArSoft-v07_00_00-Release-Notes)
    -   [Purpose](#Purpose)
    -   [New features](#New-features)
    -   [Bug fixes](#Bug-fixes)
    -   [Updated dependencies](#Updated-dependencies)
-   [Change List](#Change-List)
    -   [larsoft v07\_00\_00](#larsoft-v07_00_00)
    -   [lareventdisplay v07\_00\_00](#lareventdisplay-v07_00_00)
    -   [larexamples v07\_00\_00](#larexamples-v07_00_00)
    -   [larpandora v07\_00\_00](#larpandora-v07_00_00)
    -   [larwirecell v07\_00\_00](#larwirecell-v07_00_00)
    -   [larana v07\_00\_00](#larana-v07_00_00)
    -   [larreco v07\_00\_00](#larreco-v07_00_00)
    -   [larsim v07\_00\_00](#larsim-v07_00_00)
    -   [larevt v07\_00\_00](#larevt-v07_00_00)
    -   [lardata v07\_00\_00](#lardata-v07_00_00)
    -   [larcore v07\_00\_00](#larcore-v07_00_00)
    -   [larpandoracontent v03\_13\_02](#larpandoracontent-v03_13_02)
    -   [larsoftobj v07\_00\_00](#larsoftobj-v07_00_00)
    -   [lardataobj v07\_00\_00](#lardataobj-v07_00_00)
    -   [lardataalg v07\_00\_00](#lardataalg-v07_00_00)
    -   [larcorealg v07\_00\_00](#larcorealg-v07_00_00)
    -   [larcoreobj v07\_00\_00](#larcoreobj-v07_00_00)
    -   [larbatch v01\_43\_00](#larbatch-v01_43_00)
    -   [larutils v1\_22\_09](#larutils-v1_22_09)
    -   [larg4 v07\_00\_00](#larg4-v07_00_00)

[list of LArSoft releases](LArSoft_release_list)
Download instructions for [larsoft v07\_00\_00](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v07_00_00/larsoft-v07_00_00.html)
Download instructions for [just larsoftobj v07\_00\_00](http://scisoft.fnal.gov/scisoft/bundles/larsoftobj/v07_00_00/larsoftobj-v07_00_00.html)

Purpose
--------------------

-   include larg4

New features
------------------------------

-   To use larg4:
    -   setup larg4 v07\_00\_00
    -   Adjust the relevant fcl files according to the [Migration Notes](LArG4_Migration_Notes)

Bug fixes
------------------------

Updated dependencies
----------------------------------------------

-   artg4tk v08\_00\_00

Change List
============================

larsoft v07\_00\_00
------------------------------------------

-   2018-07-30 Lynn Garren : larsoft v07\_00\_00 for larsoft v07\_00\_00
-   2018-07-30 Lynn Garren : v07\_00\_00
-   2018-07-28 Lynn Garren : larg4 uses larsim
-   2018-07-28 Lynn Garren : s70
-   2018-07-28 Lynn Garren : for larsoft v07\_00\_00\_rc0
-   2018-07-28 Lynn Garren : v07\_00\_00\_rc0
-   2018-07-28 Lynn Garren : add artg4tk and larg4
-   2018-07-27 Lynn Garren : update product list
-   2018-07-27 Lynn Garren : disable the larana unit test
-   2018-07-27 Lynn Garren : first pass at Apache 2 license

lareventdisplay v07\_00\_00
----------------------------------------------------------

-   2018-07-30 Lynn Garren : for larsoft v07\_00\_00

larexamples v07\_00\_00
--------------------------------------------------

-   2018-07-30 Lynn Garren : for larsoft v07\_00\_00

larpandora v07\_00\_00
------------------------------------------------

-   2018-07-30 Lynn Garren : for larsoft v07\_00\_00
-   2018-07-28 Lynn Garren : for larsoft v07\_00\_00\_rc0

larwirecell v07\_00\_00
--------------------------------------------------

-   2018-07-30 Lynn Garren : larwirecell v07\_00\_00 for larsoft v07\_00\_00
-   2018-07-28 Lynn Garren : for larsoft v07\_00\_00\_rc0
-   2018-07-27 Lynn Garren : Merge branch ‘develop’ into feature/team\_with\_larg4
-   2018-07-26 Hans-Joachim Wenzel : change so that creation of SimEnergyDeposit uses the correct signature
-   2018-07-26 Hans-Joachim Wenzel : change so that creation of SimEnergyDeposit uses the correct signature

larana v07\_00\_00
----------------------------------------

-   2018-07-30 Lynn Garren : for larsoft v07\_00\_00

larreco v07\_00\_00
------------------------------------------

-   2018-07-30 Lynn Garren : larreco v07\_00\_00 for larsoft v07\_00\_00
-   2018-07-30 Lynn Garren : larreco v07\_00\_00 for larsoft v07\_00\_00
-   2018-07-28 Lynn Garren : for larsoft v07\_00\_00\_rc0
-   2018-07-27 Christopher Backhouse : Add switch to enable SpacePointSolver to consider triplets where one of the hits is actually a bad channel.

larsim v07\_00\_00
----------------------------------------

-   2018-07-30 Lynn Garren : larsim v07\_00\_00 for larsoft v07\_00\_00
-   2018-07-28 Lynn Garren : wrong way around, larg4 uses larsim
-   2018-07-28 Lynn Garren : for larsoft v07\_00\_00\_rc0
-   2018-07-27 Lynn Garren : Merge branch ‘develop’ into feature/team\_with\_larg4
-   2018-07-26 Lynn Garren : larsoft v06\_85\_00
-   2018-07-26 Yun-Tse Tsai : bug fixed: the variable numElectrons in the sim::TrackIDE object in BackTracker was not filled
-   2018-07-25 Lynn Garren : Merge branch ‘feature/wenzel\_larg4refac’ into feature/team\_with\_larg4
-   2018-07-25 Hans-Joachim Wenzel : for now remove access to Detector name (name of gdml file)
-   2018-06-21 Hans-Joachim Wenzel : refactoring larg4

larevt v07\_00\_00
----------------------------------------

-   2018-07-30 Lynn Garren : for larsoft v07\_00\_00

lardata v07\_00\_00
------------------------------------------

-   2018-07-30 Lynn Garren : for larsoft v07\_00\_00
-   2018-07-26 Gianluca Petrillo : Added simple ChiSquareAccumulator class to compute chi square.

larcore v07\_00\_00
------------------------------------------

-   2018-07-30 Lynn Garren : for larsoft v07\_00\_00

larpandoracontent v03\_13\_02
--------------------------------------------------------------

larsoftobj v07\_00\_00
------------------------------------------------

-   2018-07-30 Lynn Garren : larsoftobj v07\_00\_00 for larsoft v07\_00\_00
-   2018-07-30 Lynn Garren : v07\_00\_00
-   2018-07-28 Lynn Garren : s70

lardataobj v07\_00\_00
------------------------------------------------

-   2018-07-30 Lynn Garren : for larsoft v07\_00\_00
-   2018-07-28 Lynn Garren : for larsoft v07\_00\_00\_rc0
-   2018-07-27 Lynn Garren : Merge branch ‘develop’ into feature/team\_with\_larg4
-   2018-07-26 Lynn Garren : use geo::Point\_t
-   2018-07-25 Lynn Garren : we need both lines
-   2018-07-25 Lynn Garren : Merge branch ‘feature/wenzel\_larg4refac’ into feature/team\_with\_larg4
-   2018-06-20 Hans-Joachim Wenzel : refactoring out the larsoft dependent part of artg4tk
-   2018-06-20 Hans-Joachim Wenzel : refactoring out the larsoft dependent part of artg4tk
-   2018-06-20 Hans-Joachim Wenzel : refactoring out the larsoft dependent part of artg4tk

lardataalg v07\_00\_00
------------------------------------------------

-   2018-07-30 Lynn Garren : for larsoft v07\_00\_00

larcorealg v07\_00\_00
------------------------------------------------

-   2018-07-30 Lynn Garren : for larsoft v07\_00\_00

larcoreobj v07\_00\_00
------------------------------------------------

-   2018-07-30 Lynn Garren : for larsoft v07\_00\_00

larbatch v01\_43\_00
--------------------------------------------

larutils v1\_22\_09
------------------------------------------

larg4 v07\_00\_00
--------------------------------------

-   2018-07-30 Lynn Garren : for larsoft v07\_00\_00
-   2018-07-28 Lynn Garren : larg4 uses larsim
-   2018-07-28 Lynn Garren : find artg4tk libraries
-   2018-07-28 Lynn Garren : for larsoft v07\_00\_00\_rc0
-   2018-07-28 Lynn Garren : larg4 v07\_00\_00\_rc0
-   2018-07-28 Lynn Garren : add e17
-   2018-07-26 Lynn Garren : remove unused variables
-   2018-07-26 Lynn Garren : mark methods as override
-   2018-07-26 Lynn Garren : find nutools headers
-   2018-07-25 Hans-Joachim Wenzel : remove printouts and commented lines.
-   2018-07-24 Hans-Joachim Wenzel : put MCParticle and MCTruthMcParticleassns into the event
-   2018-07-19 Hans-Joachim Wenzel : implementing ParticleListAction\_service
-   2018-07-12 Hans-Joachim Wenzel : Ported ParticleListAction from LArG4 to work with artg4tk.
-   2018-07-12 Hans-Joachim Wenzel : work to get access to the ParticleListAction data
-   2018-07-11 Hans-Joachim Wenzel : take ParticleListAction and convert into service
-   2018-07-03 Hans-Joachim Wenzel : properly initialize static variable to avoid link error
-   2018-07-02 Hans-Joachim Wenzel : add reading of MCTruth data produced by SingleGen
-   2018-07-02 Hans-Joachim Wenzel : add reading of MCTruth data produced by SingleGen
-   2018-07-02 Hans-Joachim Wenzel : add reading of MCTruth data produced by SingleGen
-   2018-07-02 Hans-Joachim Wenzel : example for eic calorimeter
-   2018-06-22 Hans-Joachim Wenzel : add fcl and gdml files for eic demo calorimeter
-   2018-06-20 Paul Russo : Fix linking problems
-   2018-06-20 Paul Russo : Fix linking problems.
-   2018-06-20 Hans-Joachim Wenzel : refactoring out the larsoft dependent part of artg4tk
-   2018-06-20 Hans-Joachim Wenzel : refactoring out the larsoft dependent part of artg4tk
-   2018-06-20 Hans-Joachim Wenzel : refactoring out the larsoft dependent part of artg4tk
-   2018-06-20 Hans-Joachim Wenzel : refactoring out the larsoft dependent part of artg4tk
-   2018-06-20 Hans-Joachim Wenzel : refactoring out the larsoft dependent part of artg4tk
-   2018-06-20 Hans-Joachim Wenzel : refactoring out the larsoft dependent part of artg4tk
-   2018-06-20 Hans-Joachim Wenzel : refactoring out the larsoft dependent part of artg4tk
-   2018-06-18 Lynn Garren : larg4 depends on lardataobj
-   2018-06-14 Lynn Garren : GDMLDetector\_service is now LArG4Detector\_service
-   2018-06-14 Lynn Garren : reorg
-   2018-06-14 Lynn Garren : ignore some files
-   2018-06-13 Lynn Garren : initial commit of larg4 files moved from artg4tk
