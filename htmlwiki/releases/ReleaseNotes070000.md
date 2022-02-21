LArSoft v07_00_00 Release Notes
======================================================================

[list of LArSoft releases](LArSoft_release_list)
Download instructions for [larsoft v07_00_00](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v07_00_00/larsoft-v07_00_00.html)
Download instructions for [just larsoftobj v07_00_00](http://scisoft.fnal.gov/scisoft/bundles/larsoftobj/v07_00_00/larsoftobj-v07_00_00.html)

Purpose
--------------------

-   include larg4

New features
------------------------------

-   To use larg4:
    -   setup larg4 v07_00_00
    -   Adjust the relevant fcl files (these notes are old and were only preliminary)
        -   The old geant4 interface in larsim is being replaced with a new package, larg4, and the associated artg4tk package.
        -   The experiment top-level control fhicl files will at least need to replace their “largeant” steps in their fhicl files with the new modules:
            -   old way:
                -   simulate: [ “rns”, “largeant” ]
            -   new way:
                -   simulate: [ “rns”, “larg4Main”, “elecDrift”, “photonProp” ]
                -   where “larg4Main”, “elecDrift”, and “photonProp” are the new modules that replace “largeant”.
        -   An example of how these modules are configured for testing purposes is:

                physics:{

                producers: {

                rns: { module_type: "RandomNumberSaver" }

                larg4Main: { module_type: "larg4Main" 
                enableVisualization: false
                macroPath: ".:./macros" 
                visMacro: "vis.mac" 
                }

                elecDrift: { module_type: "SimDriftElectrons" 
                SimulationLabel: "larg4Main:LArG4DetectorServicevolTPCActive" 
                StoreDriftedElectronClusters: true
                }

                photonProp: { module_type: "PhotonLibraryPropagation" 
                DoSlowComponent: false
                RiseTimeFast: 6
                RiseTimeSlow: 1300
                EDepModuleLabels: [ "larg4Main:LArG4DetectorServicevolTPCActive" ]
                }

                }

Bug fixes
------------------------

Updated dependencies
----------------------------------------------

-   artg4tk v08_00_00

Change List
============================

larsoft v07_00_00
------------------------------------------

-   2018-07-30 Lynn Garren : larsoft v07_00_00 for larsoft v07_00_00
-   2018-07-30 Lynn Garren : v07_00_00
-   2018-07-28 Lynn Garren : larg4 uses larsim
-   2018-07-28 Lynn Garren : s70
-   2018-07-28 Lynn Garren : for larsoft v07_00_00_rc0
-   2018-07-28 Lynn Garren : v07_00_00_rc0
-   2018-07-28 Lynn Garren : add artg4tk and larg4
-   2018-07-27 Lynn Garren : update product list
-   2018-07-27 Lynn Garren : disable the larana unit test
-   2018-07-27 Lynn Garren : first pass at Apache 2 license

lareventdisplay v07_00_00
----------------------------------------------------------

-   2018-07-30 Lynn Garren : for larsoft v07_00_00

larexamples v07_00_00
--------------------------------------------------

-   2018-07-30 Lynn Garren : for larsoft v07_00_00

larpandora v07_00_00
------------------------------------------------

-   2018-07-30 Lynn Garren : for larsoft v07_00_00
-   2018-07-28 Lynn Garren : for larsoft v07_00_00_rc0

larwirecell v07_00_00
--------------------------------------------------

-   2018-07-30 Lynn Garren : larwirecell v07_00_00 for larsoft v07_00_00
-   2018-07-28 Lynn Garren : for larsoft v07_00_00_rc0
-   2018-07-27 Lynn Garren : Merge branch ‘develop’ into feature/team_with_larg4
-   2018-07-26 Hans-Joachim Wenzel : change so that creation of SimEnergyDeposit uses the correct signature
-   2018-07-26 Hans-Joachim Wenzel : change so that creation of SimEnergyDeposit uses the correct signature

larana v07_00_00
----------------------------------------

-   2018-07-30 Lynn Garren : for larsoft v07_00_00

larreco v07_00_00
------------------------------------------

-   2018-07-30 Lynn Garren : larreco v07_00_00 for larsoft v07_00_00
-   2018-07-30 Lynn Garren : larreco v07_00_00 for larsoft v07_00_00
-   2018-07-28 Lynn Garren : for larsoft v07_00_00_rc0
-   2018-07-27 Christopher Backhouse : Add switch to enable SpacePointSolver to consider triplets where one of the hits is actually a bad channel.

larsim v07_00_00
----------------------------------------

-   2018-07-30 Lynn Garren : larsim v07_00_00 for larsoft v07_00_00
-   2018-07-28 Lynn Garren : wrong way around, larg4 uses larsim
-   2018-07-28 Lynn Garren : for larsoft v07_00_00_rc0
-   2018-07-27 Lynn Garren : Merge branch ‘develop’ into feature/team_with_larg4
-   2018-07-26 Lynn Garren : larsoft v06_85_00
-   2018-07-26 Yun-Tse Tsai : bug fixed: the variable numElectrons in the sim::TrackIDE object in BackTracker was not filled
-   2018-07-25 Lynn Garren : Merge branch ‘feature/wenzel_larg4refac’ into feature/team_with_larg4
-   2018-07-25 Hans-Joachim Wenzel : for now remove access to Detector name (name of gdml file)
-   2018-06-21 Hans-Joachim Wenzel : refactoring larg4

larevt v07_00_00
----------------------------------------

-   2018-07-30 Lynn Garren : for larsoft v07_00_00

lardata v07_00_00
------------------------------------------

-   2018-07-30 Lynn Garren : for larsoft v07_00_00
-   2018-07-26 Gianluca Petrillo : Added simple ChiSquareAccumulator class to compute chi square.

larcore v07_00_00
------------------------------------------

-   2018-07-30 Lynn Garren : for larsoft v07_00_00

larpandoracontent v03_13_02
--------------------------------------------------------------

larsoftobj v07_00_00
------------------------------------------------

-   2018-07-30 Lynn Garren : larsoftobj v07_00_00 for larsoft v07_00_00
-   2018-07-30 Lynn Garren : v07_00_00
-   2018-07-28 Lynn Garren : s70

lardataobj v07_00_00
------------------------------------------------

-   2018-07-30 Lynn Garren : for larsoft v07_00_00
-   2018-07-28 Lynn Garren : for larsoft v07_00_00_rc0
-   2018-07-27 Lynn Garren : Merge branch ‘develop’ into feature/team_with_larg4
-   2018-07-26 Lynn Garren : use geo::Point_t
-   2018-07-25 Lynn Garren : we need both lines
-   2018-07-25 Lynn Garren : Merge branch ‘feature/wenzel_larg4refac’ into feature/team_with_larg4
-   2018-06-20 Hans-Joachim Wenzel : refactoring out the larsoft dependent part of artg4tk
-   2018-06-20 Hans-Joachim Wenzel : refactoring out the larsoft dependent part of artg4tk
-   2018-06-20 Hans-Joachim Wenzel : refactoring out the larsoft dependent part of artg4tk

lardataalg v07_00_00
------------------------------------------------

-   2018-07-30 Lynn Garren : for larsoft v07_00_00

larcorealg v07_00_00
------------------------------------------------

-   2018-07-30 Lynn Garren : for larsoft v07_00_00

larcoreobj v07_00_00
------------------------------------------------

-   2018-07-30 Lynn Garren : for larsoft v07_00_00

larbatch v01_43_00
--------------------------------------------

larutils v1_22_09
------------------------------------------

larg4 v07_00_00
--------------------------------------

-   2018-07-30 Lynn Garren : for larsoft v07_00_00
-   2018-07-28 Lynn Garren : larg4 uses larsim
-   2018-07-28 Lynn Garren : find artg4tk libraries
-   2018-07-28 Lynn Garren : for larsoft v07_00_00_rc0
-   2018-07-28 Lynn Garren : larg4 v07_00_00_rc0
-   2018-07-28 Lynn Garren : add e17
-   2018-07-26 Lynn Garren : remove unused variables
-   2018-07-26 Lynn Garren : mark methods as override
-   2018-07-26 Lynn Garren : find nutools headers
-   2018-07-25 Hans-Joachim Wenzel : remove printouts and commented lines.
-   2018-07-24 Hans-Joachim Wenzel : put MCParticle and MCTruthMcParticleassns into the event
-   2018-07-19 Hans-Joachim Wenzel : implementing ParticleListAction_service
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
-   2018-06-14 Lynn Garren : GDMLDetector_service is now LArG4Detector_service
-   2018-06-14 Lynn Garren : reorg
-   2018-06-14 Lynn Garren : ignore some files
-   2018-06-13 Lynn Garren : initial commit of larg4 files moved from artg4tk
