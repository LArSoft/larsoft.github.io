LArSoft v06\_00\_00\_rc6 Release Notes
===============================================================================

-   **Table of contents**
-   [LArSoft v06\_00\_00\_rc6 Release Notes](#LArSoft-v06_00_00_rc6-Release-Notes)
    -   [Purpose](#Purpose)
    -   [New features](#New-features)
    -   [Bug fixes](#Bug-fixes)
    -   [Updated dependencies](#Updated-dependencies)
-   [Change List](#Change-List)
    -   [larsoft v06\_00\_00\_rc6](#larsoft-v06_00_00_rc6)
    -   [lareventdisplay v06\_00\_00\_rc6](#lareventdisplay-v06_00_00_rc6)
    -   [larexamples v06\_00\_00\_rc6](#larexamples-v06_00_00_rc6)
    -   [larpandora v06\_00\_00\_rc6](#larpandora-v06_00_00_rc6)
    -   [larana v06\_00\_00\_rc6](#larana-v06_00_00_rc6)
    -   [larreco v06\_00\_00\_rc6](#larreco-v06_00_00_rc6)
    -   [larsim v06\_00\_00\_rc6](#larsim-v06_00_00_rc6)
    -   [larevt v06\_00\_00\_rc6](#larevt-v06_00_00_rc6)
    -   [lardata v06\_00\_00\_rc6](#lardata-v06_00_00_rc6)
    -   [larcore v06\_00\_00\_rc6](#larcore-v06_00_00_rc6)
    -   [larsimobj v06\_00\_00\_rc6](#larsimobj-v06_00_00_rc6)
    -   [lardataobj v06\_00\_00\_rc6](#lardataobj-v06_00_00_rc6)
    -   [larcoreobj v06\_00\_00\_rc6](#larcoreobj-v06_00_00_rc6)

[list of LArSoft releases](LArSoft_release_list)
[Download instructions](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v06_00_00_rc6/larsoft-v06_00_00_rc6.html)

Purpose
--------------------

-   improve root dictionary loading
-   incorporate changes from v05\_14\_00

New features
------------------------------

-   [Migration to root 6](Migration_to_root_6)

Bug fixes
------------------------

Updated dependencies
----------------------------------------------

||
|Product|Version|Qualifiers|Notes|
|nutools|v2\_00\_01|e10||
|nusimdata|v1\_00\_03|e10||

Change List
============================

larsoft v06\_00\_00\_rc6
---------------------------------------------------

-   2016-06-30 Lynn Garren : v06\_00\_00\_rc6

lareventdisplay v06\_00\_00\_rc6
-------------------------------------------------------------------

-   2016-06-30 Lynn Garren : v06\_00\_00\_rc6
-   2016-06-30 Lynn Garren : Merge branch ‘lareventdisplay-v05\_07\_03’ into v06\_00\_00\_art2
-   2016-06-28 Lynn Garren : lareventdisplay v05\_07\_03

larexamples v06\_00\_00\_rc6
-----------------------------------------------------------

-   2016-06-30 Lynn Garren : v06\_00\_00\_rc6
-   2016-06-30 Lynn Garren : Merge branch ‘larexamples-v05\_07\_01’ into v06\_00\_00\_art2
-   2016-06-28 Lynn Garren : larexamples v05\_07\_01

larpandora v06\_00\_00\_rc6
---------------------------------------------------------

-   2016-06-30 Lynn Garren : v06\_00\_00\_rc6
-   2016-06-30 Lynn Garren : Merge branch ‘larpandora-v05\_09\_08’ into v06\_00\_00\_art2
-   2016-06-28 Lynn Garren : larpandora v05\_09\_08

larana v06\_00\_00\_rc6
-------------------------------------------------

-   2016-06-30 Lynn Garren : v06\_00\_00\_rc6
-   2016-06-30 Lynn Garren : Merge branch ‘larana-v05\_09\_04’ into v06\_00\_00\_art2
-   2016-06-28 Lynn Garren : larana v05\_09\_04

larreco v06\_00\_00\_rc6
---------------------------------------------------

-   2016-06-30 Lynn Garren : v06\_00\_00\_rc6
-   2016-06-30 Lynn Garren : fix again
-   2016-06-30 Lynn Garren : Merge branch ‘larreco-v05\_13\_00’ into v06\_00\_00\_art2
-   2016-06-30 Lynn Garren : nutools v2\_00\_02
-   2016-06-28 Lynn Garren : larreco v05\_13\_00 for larsoft v05\_14\_00
-   2016-06-28 Lynn Garren : Merge branch ‘feature/gp\_GausHitFilterMadeOptional’ into release/v05\_14\_00
-   2016-06-28 Lynn Garren : Merge branch ‘feature/rnd\_ImagePatterns’ into release/v05\_14\_00
-   2016-06-27 Robert Sulej : add script for 3-calss training data prep
-   2016-06-27 Robert Sulej : leave only most relevant script examples
-   2016-06-27 Robert Sulej : remove mlp model file
-   2016-06-27 Gianluca Petrillo : C++ decoration on GausHitFinder class
-   2016-06-27 Gianluca Petrillo : HitFilterAlg made optional in GausHitFinder
-   2016-06-24 Dorota Stefan : logic fixed in t0 estiation
-   2016-06-23 Robert Sulej : Merge branch ‘develop’ into feature/rnd\_ImagePatterns
-   2016-06-23 Dorota Stefan : fix optimization of nodes on TPC boundaries
-   2016-06-15 Robert Sulej : cleanup fcl, add comments, basicaly ready to go
-   2016-06-14 Robert Sulej : save K, pi, mu decays
-   2016-06-14 Robert Sulej : correct label names and vtx flags
-   2016-06-13 Robert Sulej : look at all projections
-   2016-06-12 Robert Sulej : Merge branch ‘develop’ into feature/rnd\_ImagePatterns
-   2016-06-10 Robert Sulej : complete vtx flags preparation, pass to Dorota for use and validation, ha\\!
-   2016-06-10 Robert Sulej : Merge branch ‘feature/rnd\_ImagePatterns’ of ssh://cdcvs.fnal.gov/cvs/projects/larreco into feature/rnd\_ImagePatterns
-   2016-06-10 Robert Sulej : and more vtx selection code
-   2016-06-10 dorota : fixed offset correction
-   2016-06-10 Robert Sulej : Merge branch ‘feature/rnd\_ImagePatterns’ of ssh://cdcvs.fnal.gov/cvs/projects/larreco into feature/rnd\_ImagePatterns
-   2016-06-10 Robert Sulej : more code for vertex flags
-   2016-06-10 dorota : protection against timeslice out of adc vector
-   2016-06-10 dorota : Merge branch ‘feature/rnd\_ImagePatterns’ of ssh://cdcvs.fnal.gov/cvs/projects/larreco into feature/rnd\_ImagePatterns
-   2016-06-10 dorota : new module to analyze neutrino event
-   2016-06-09 Robert Sulej : add various vertex flags to training data
-   2016-06-07 dorota : Merge branch ‘feature/rnd\_ImagePatterns’ of ssh://cdcvs.fnal.gov/cvs/projects/larreco into feature/rnd\_ImagePatterns
-   2016-06-07 dorota : Merge branch ‘develop’ into feature/rnd\_ImagePatterns
-   2016-06-06 Robert Sulej : configurable value of decision threshold
-   2016-06-06 Robert Sulej : add tanh activation
-   2016-06-02 Robert Sulej : Keras code tested, few operations simplified, one leak fixed
-   2016-06-01 Robert Sulej : Merge branch ‘develop’ into feature/rnd\_ImagePatterns
-   2016-05-31 Robert Sulej : add sgd
-   2016-05-30 Robert Sulej : implement using keras in PointIdAlg (todo tests and less copying when passing data)
-   2016-05-30 Robert Sulej : put keras code inside namespace
-   2016-05-30 Robert Sulej : use interface to run mlp, todo running cnn in the same way
-   2016-05-30 Robert Sulej : print mistake rates
-   2016-05-27 Robert Sulej : Merge branch ‘develop’ into feature/rnd\_ImagePatterns
-   2016-05-27 Robert Sulej : just commit with Run() fn prototype before release update
-   2016-05-27 Robert Sulej : rename dir CNN to Keras, better name since Keras models can be also MLP..
-   2016-05-26 Robert Sulej : add keras2cpp code from Piotr, start interface to have mlp and cnn working in the same way
-   2016-05-26 Robert Sulej : Merge branch ‘develop’ into feature/rnd\_ImagePatterns
-   2016-05-25 Robert Sulej : Merge branch ‘develop’ into feature/rnd\_ImagePatterns
-   2016-05-25 Robert Sulej : minor add to summary in endJob
-   2016-05-15 Robert Sulej : more simple condition on track for vector of outputs
-   2016-05-14 Robert Sulej : add option to dump clustered files with prediction output
-   2016-05-14 Robert Sulej : select for test only clusters mostly inside fiducial area and relatively pure track or shower-like
-   2016-05-14 Robert Sulej : fix patch filling near the projection edges
-   2016-05-11 Robert Sulej : add prediction for a collection of points
-   2016-05-10 Robert Sulej : Merge branch ‘feature/rnd\_ImagePatterns’ of ssh://cdcvs.fnal.gov/cvs/projects/larreco into feature/rnd\_ImagePatterns
-   2016-05-10 Robert Sulej : add test if is inside fiducial area
-   2016-05-10 Robert Sulej : correct includes
-   2016-05-10 Dorota Stefan : Merge branch ‘feature/rnd\_ImagePatterns’ of ssh://cdcvs.fnal.gov/cvs/projects/larreco into feature/rnd\_ImagePatterns
-   2016-05-10 Dorota Stefan : corrected way of identifying mc particle in shower hits
-   2016-05-08 Robert Sulej : add view selection to training data maker module
-   2016-05-08 Robert Sulej : fill multi-class prediction function
-   2016-05-08 Dorota Stefan : bug fix
-   2016-05-08 Dorota Stefan : more trained model
-   2016-05-07 Dorota Stefan : use hits with mc energy deposition larger than 0, and from geokZ plane only.
-   2016-05-07 Robert Sulej : select output index for single-value prediction
-   2016-05-07 Robert Sulej : only edit comments
-   2016-05-07 Robert Sulej : add script for 3-class mlp training data (empty regions as the 3rd class)
-   2016-05-07 Dorota Stefan : after testing one more bug found - now is fixed
-   2016-05-06 Dorota Stefan : bug fix
-   2016-05-06 Robert Sulej : correct mistake in fcl labels
-   2016-05-06 Robert Sulej : allow broader adc range
-   2016-05-06 Dorota Stefan : set PointIdAlg configuration
-   2016-05-06 Dorota Stefan : Merge branch ‘feature/rnd\_ImagePatterns’ of ssh://cdcvs.fnal.gov/cvs/projects/larreco into feature/rnd\_ImagePatterns
-   2016-05-06 Dorota Stefan : add some variables to histograms to judge correctness of the alg output
-   2016-05-06 Robert Sulej : add simple mlp to start modules testing
-   2016-05-06 Robert Sulej : fixed setup of scaling and patch size on reading nnet model, to be made configurable…
-   2016-05-06 Robert Sulej : put ADC values scaling and saturation in DataProviderAlg (best to have it in one common place to avoid mistakes, but not yet sure if this is the final and best scaling - to be tested)
-   2016-05-04 Robert Sulej : actual call to MLP, for first tests
-   2016-05-04 Robert Sulej : add MLP network (for baseline result, as we expect, to be verified); split PointIdAlg to have base class providing data, a derived class that makes training data, and another one making classification, all using the same code for data formatting
-   2016-05-04 Robert Sulej : add scripts to make data for mlp
-   2016-05-04 Robert Sulej : Merge branch ‘feature/rnd\_ImagePatterns’ of ssh://cdcvs.fnal.gov/cvs/projects/larreco into feature/rnd\_ImagePatterns
-   2016-05-04 Robert Sulej : add scripts to run at fnal
-   2016-04-30 Dorota Stefan : read PointId data
-   2016-04-29 Dorota Stefan : add module for evaluation of efficieny
-   2016-04-29 Robert Sulej : use int as training labels, remove some imports
-   2016-04-29 Robert Sulej : move our earlier scripts here, no downcale in python now (moved to larsoft module)
-   2016-04-29 Robert Sulej : cleanup mess with mofdified files
-   2016-04-29 Robert Sulej : training data making class and module done, testing now
-   2016-04-27 Robert Sulej : data preparation for running identification done
-   2016-04-26 Robert Sulej : progress on nnet to larsoft interface
-   2016-04-25 Robert Sulej : go top-down and prepare first class and functions for point identification
-   2016-04-25 Robert Sulej : add box for 2D image recognition algs

larsim v06\_00\_00\_rc6
-------------------------------------------------

-   2016-06-30 Lynn Garren : v06\_00\_00\_rc6
-   2016-06-30 Lynn Garren : fix again
-   2016-06-30 Lynn Garren : Merge branch ‘larsim-v05\_14\_00’ into v06\_00\_00\_art2
-   2016-06-30 Lynn Garren : no template instantiation in classes.h
-   2016-06-28 Lynn Garren : larsim v05\_14\_00 for larsoft v05\_14\_00
-   2016-06-22 Tingjun Yang : User DUNE FD 1x2x6 geometry as the default geometry.
-   2016-06-22 Tingjun Yang : First version of a working module to do nucleon decay simulation in larsoft. It only simulates proton decays in the active volume. Currently it converts the genie record to mctruth using exiting code in nutools. Robert Hatcher is working on a generic function to do the conversion. Will switch to use it when it is available.
-   2016-06-22 Tingjun Yang : Merge branch ‘develop’ of ssh://cdcvs.fnal.gov/cvs/projects/larsim into feature/tjyang\_ndk
-   2016-06-21 Brian Rebel : Merge branch ‘develop’ of ssh://cdcvs.fnal.gov/cvs/projects/larsim into develop
-   2016-06-17 Tingjun Yang : Force to load genie messenger first so the problem does not crash on exit. Thanks Robert Hatcher for the help.
-   2016-06-17 Tingjun Yang : Merge branch ‘develop’ of ssh://cdcvs.fnal.gov/cvs/projects/larsim into feature/tjyang\_ndk
-   2016-06-16 Tingjun Yang : Progress on porting nucleon decay app. Now it creates genie record. Next step is to convert it to MCTruth.
-   2016-06-15 Tingjun Yang : Remove genie from CMaleLists.txt.
-   2016-06-15 Tingjun Yang : Merge branch ‘develop’ of ssh://cdcvs.fnal.gov/cvs/projects/larsim into feature/tjyang\_ndk
-   2016-06-15 Tingjun Yang : Move NucleonDecay\_module.cc to GENIE directory. Modify CMakeLists.txt to include GENIE libraries.
-   2016-06-14 Tingjun Yang : Start porting genie’s proton decay simulator as a larsoft module.
-   2016-02-03 Brian Rebel : Merge branch ‘develop’ of ssh://cdcvs.fnal.gov/cvs/projects/larsim into develop
-   2016-02-03 Brian Rebel : formatting changes

larevt v06\_00\_00\_rc6
-------------------------------------------------

-   2016-06-30 Lynn Garren : v06\_00\_00\_rc6
-   2016-06-30 Lynn Garren : Merge branch ‘larevt-v05\_07\_03’ into v06\_00\_00\_art2
-   2016-06-28 Lynn Garren : larevt v05\_07\_03
-   2016-06-27 Brandon Eberly : Removed a try/catch block that was called once per channel per event.

lardata v06\_00\_00\_rc6
---------------------------------------------------

-   2016-06-30 Lynn Garren : v06\_00\_00\_rc6
-   2016-06-30 Lynn Garren : Merge branch ‘lardata-v05\_09\_01’ into v06\_00\_00\_art2
-   2016-06-30 Lynn Garren : nutools v2\_00\_02
-   2016-06-30 Lynn Garren : remove templates from classes.h
-   2016-06-28 Lynn Garren : lardata v05\_09\_01

larcore v06\_00\_00\_rc6
---------------------------------------------------

-   2016-06-30 Lynn Garren : v06\_00\_00\_rc6
-   2016-06-30 Lynn Garren : Merge branch ‘larcore-v05\_08\_01’ into v06\_00\_00\_art2
-   2016-06-30 Lynn Garren : no template instantiation
-   2016-06-28 Lynn Garren : larcore v05\_08\_01
-   2016-06-22 Brian Rebel : Add method to provide the name of an AuxDet.
-   2016-06-21 Brian Rebel : formatting changes only to make it easier to read

larsimobj v06\_00\_00\_rc6
-------------------------------------------------------

-   2016-06-30 Lynn Garren : v06\_00\_00\_rc6
-   2016-06-28 Lynn Garren : remove unnecessary template instantiations

lardataobj v06\_00\_00\_rc6
---------------------------------------------------------

-   2016-06-30 Lynn Garren : v06\_00\_00\_rc6
-   2016-06-30 Lynn Garren : nusimdata v1\_03\_00
-   2016-06-28 Lynn Garren : remove unnecessary template instantiations

larcoreobj v06\_00\_00\_rc6
---------------------------------------------------------

-   2016-06-30 Lynn Garren : v06\_00\_00\_rc6
-   2016-06-28 Lynn Garren : remove unnecessary template instantiations
