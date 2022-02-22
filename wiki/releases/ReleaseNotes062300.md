# LArSoft v06_23_00 Release Notes



[list of LArSoft releases](LArSoft_release_list)  
Download instructions for [larsoft v06_23_00](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v06_23_00/larsoft-v06_23_00.html)  
Download instructions for [just larsoftobj v1_10_00](http://scisoft.fnal.gov/scisoft/bundles/larsoftobj/v1_10_00/larsoftobj-v1_10_00.html)

## Purpose

-   new recob::Track implementation

## New features

-   new recob::Track implementation
    -   feature/cerati_TrackTrajectory for lardataobj, larreco, uboonecode
    -   uboonecode/CMakeLists.txt and lariatsoft/CMakeLists.txt need to add “ALLOW_DEPRECATIONS” flag in cet_set_compiler_flags()

## Bug fixes

-   parts of the lardata tests are temporarily disabled for macOS

## Updated dependencies

# Change List

## larsoft v06_23_00

-   2017-02-02 Lynn Garren : larsoft v06_23_00 for larsoft v06_23_00
-   2017-02-02 Lynn Garren : update product versions
-   2017-02-02 Lynn Garren : use prep_build -f NULL
-   2017-02-02 Lynn Garren : update dependency database

## lareventdisplay v06_02_11

-   2017-02-02 Lynn Garren : lareventdisplay v06_02_11 for larsoft v06_23_00

## larexamples v06_01_12

-   2017-02-02 Lynn Garren : larexamples v06_01_12 for larsoft v06_23_00

## larpandora v06_06_00

-   2017-02-02 Lynn Garren : larpandora v06_06_00 for larsoft v06_23_00
-   2017-02-01 John Marshall : Merge branch 'feature/jm_LArDriftVolume' into develop
-   2017-02-01 John Marshall : Need to write wire angle details at above standard precision.
-   2017-01-31 John Marshall : Merge branch 'feature/jm_LArDriftVolume' into develop
-   2017-01-31 John Marshall : Add option to write geometry information to xml file.
-   2017-01-12 John Marshall : Add ability to provide unique PandoraSettings file for each Pandora instance. Cosmetic changes.

## larwirecell v06_00_09

-   2017-02-02 Lynn Garren : larwirecell v06_00_09 for larsoft v06_23_00

## larana v06_03_15

-   2017-02-02 Lynn Garren : add missing library
-   2017-02-02 Lynn Garren : larana v06_03_15 for larsoft v06_23_00

## larreco v06_18_00

-   2017-02-02 Lynn Garren : larreco v06_18_00 for larsoft v06_23_00
-   2017-02-02 Lynn Garren : Merge branch 'feature/cerati_TrackTrajectory' into release/v06_23_00
-   2017-02-01 Giuseppe Cerati : fix bug in writing out covariances
-   2017-02-01 Giuseppe Cerati : printouts
-   2017-02-01 Usher, Tracy L : Merge branch 'develop' into feature/usher_longpulsetrainhits
-   2017-02-01 Christoph Alt : accidentally changed process name in NeutrinoTrackingEff.fcl with last push. Changed it back.
-   2017-02-01 Christoph Alt : Merge branch 'develop' of ssh://cdcvs.fnal.gov/cvs/projects/larreco into develop
-   2017-02-01 Christoph Alt : added MuonTrackingEfficiency_module and corresponding job .fcl to calculate muon tracking efficiencies. Also added a table for this module in trackfindermodules.fcl.
-   2017-01-31 Giuseppe Cerati : fix parameter
-   2017-01-31 Usher, Tracy L : Setting the default behavior for long pulses to match the current hit finder - one long pulse per long pulse train. This can be overridden by changing the fhicl parameter(s) LongMaxHits.
-   2017-01-31 Robert Sulej : use 3-output cnn results as default (will add specialized modules for testing other labels configuration)
-   2017-01-30 Usher, Tracy L : Merge branch 'develop' into feature/usher_longpulsetrainhits
-   2017-01-30 Robert Sulej : more PtrMakers
-   2017-01-30 Robert Sulej : use PtrMaker
-   2017-01-30 Robert Sulej : simplify code making 3d track assn to pfparticles
-   2017-01-27 Giuseppe Cerati : Merge branch 'branch-for-tag-v06_15_01' into feature/cerati_TrackTrajectory
-   2017-01-27 Giuseppe Cerati : tracks with \<4 hits have ndof\<0, reject them
-   2017-01-27 Giuseppe Cerati : add TrackingPlaneHelper
-   2017-01-27 Giuseppe Cerati : change defaults
-   2017-01-27 Giuseppe Cerati : comment out warnings
-   2017-01-27 Usher, Tracy L : Check (and prevent) condition that can lead to negative charge in hit
-   2017-01-26 Giuseppe Cerati : bug fixes
-   2017-01-25 Giuseppe Cerati : option alwaysInvertDir
-   2017-01-25 Giuseppe Cerati : new Track with chi2
-   2017-01-25 Giuseppe Cerati : fix compilation for new Track
-   2017-01-18 Lynn Garren : larreco v06_16_00 for larsoft v06_21_00
-   2017-01-18 Lynn Garren : use nutools v2_09_02
-   2017-01-09 Gianluca Petrillo : DumpHits module moved to lardata (with the other dumpers)
-   2017-01-25 Usher, Tracy L : Setting default values for max hits in a long pulse train
-   2017-01-25 Usher, Tracy L : Remove renegade hit tick protection (was only necessary for special case)
-   2017-01-25 Usher, Tracy L : Add option which will break “long” pulses into a series of gaussians, each gaussian’s parameters will be from the integrated ADC counts over baseline in its range. Number and width of gaussians is fhicl controllable… setting both to large numbers will revert to the current behavior of one gaussian per long pulse train.

## larsim v06_11_01

-   2017-02-02 Lynn Garren : larsim v06_11_01 for larsoft v06_23_00

## larevt v06_07_06

-   2017-02-02 Lynn Garren : larevt v06_07_06 for larsoft v06_23_00

## lardata v06_14_01

-   2017-02-02 Lynn Garren : lardata v06_14_01 for larsoft v06_23_00
-   2017-01-30 Gianluca Petrillo : Spplit tests of for_each_associated_group() and associated_groups().

## larcore v06_05_02

## larsoftobj v1_10_00

-   2017-02-02 Lynn Garren : larsoftobj v1_10_00 for larsoft v06_23_00

## lardataobj v1_10_00

-   2017-02-02 Lynn Garren : Merge branch 'release/v06_23_00'
-   2017-02-02 Lynn Garren : add BitMask.tcc to extras
-   2017-02-02 Lynn Garren : Merge branch 'release/v06_23_00'
-   2017-02-02 Lynn Garren : use proper include path
-   2017-02-02 Lynn Garren : lardataobj v1_10_00 for larsoft v06_23_00
-   2017-02-02 Lynn Garren : lardataobj v1_10_00 for larsoft v06_23_00
-   2017-02-02 Lynn Garren : Merge branch 'feature/cerati_TrackTrajectory' into release/v06_23_00
-   2017-02-01 Giuseppe Cerati : bugfix
-   2017-02-01 Gianluca Petrillo : Fixed TrackTrajectory test.
-   2017-02-01 Gianluca Petrillo : TrajectoryPointFlags test now succeeds.
-   2017-02-01 Gianluca Petrillo : Fixed one of the problems of the flags unit tests.
-   2017-02-01 Gianluca Petrillo : Fixed a linking problem on OSX (I think).
-   2017-02-01 Gianluca Petrillo : Second version of the custom flag class (flags are three-state now).
-   2017-01-27 Gianluca Petrillo : First version of custom flag set class.
-   2017-02-01 Giuseppe Cerati : cache trigonometric functions
-   2017-01-31 Giuseppe Cerati : add functions to retrieve angles
-   2017-01-31 Giuseppe Cerati : add bool trackAlongPlaneDir
-   2017-01-27 Giuseppe Cerati : return kBogusF when Ndof\<=0
-   2017-01-27 Giuseppe Cerati : add TrackingTypes and put big disclaimer in classes_def.xml
-   2017-01-27 Giuseppe Cerati : define flags to avoid linker errors on mac os
-   2017-01-27 Giuseppe Cerati : in the legacy constructor set hasMom = true when size of fitMomentum vector is same as size of points
-   2017-01-26 Gianluca Petrillo : I/O rule for recob::Track v14 and earlier.
-   2017-01-26 Gianluca Petrillo : Install also template implementation files (\*.tcc).
-   2017-01-26 Gianluca Petrillo : Merge remote-tracking branch 'origin/feature/cerati_TrackTrajectory' into feature/gp_TrackTrajectory
-   2017-01-25 Gianluca Petrillo : Implemented the trajectory point flag names.
-   2017-01-25 Giuseppe Cerati : updated checksum
-   2017-01-25 Gianluca Petrillo : Added unit test to TrajectoryPointFlags.
-   2017-01-25 Giuseppe Cerati : Merge branch 'feature/gp_TrackTrajectory' into feature/cerati_TrackTrajectory
-   2017-01-25 Giuseppe Cerati : return NumberCovariance=0 if matrices are default (i.e. all zero), temporarily become friends with BezierTrack
-   2017-01-24 Gianluca Petrillo : Adding directives to build dictionaries of TrackTrajectory etc.
-   2017-01-24 Gianluca Petrillo : Removed template from TrajectoryPointFlags.
-   2017-01-24 Gianluca Petrillo : Cosmetic change
-   2017-01-24 Giuseppe Cerati : Merge branch 'feature/cerati_TrackTrajectory' of ssh://cdcvs.fnal.gov/cvs/projects/lardataobj into feature/cerati_TrackTrajectory
-   2017-01-24 Giuseppe Cerati : add tracking::Plane class, and add more methods to Track
-   2017-01-24 Giuseppe Cerati : more methods
-   2017-01-23 Giuseppe Cerati : first version of a new recob::Track class definition
-   2017-01-24 Gianluca Petrillo : Bug fixes for recob::TrackTrajectory class.
-   2017-01-23 Giuseppe Cerati : first version of a new recob::Track class definition
-   2017-01-20 Gianluca Petrillo : Implemented missing constructors of TrajectoryPointFlags.
-   2017-01-20 Gianluca Petrillo : Changed the behaviour of legacy Trajectory::NumberFitMomentum().
-   2017-01-05 Gianluca Petrillo : Candidate implementation for the lowest level track classes.

## larcoreobj v1_06_02

## larbatch v01_26_04

-   2017-02-02 Lynn Garren : larbatch v01_26_04 for larsoft v06_23_00
-   2017-01-30 yuntse : Improve error handling with respect to pubs input.
-   2017-01-30 Herbert Greenlee : Improve input checking.

## larutils v1_11_00
