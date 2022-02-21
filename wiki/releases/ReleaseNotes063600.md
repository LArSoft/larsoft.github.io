# LArSoft v06_36_00 Release Notes



[list of LArSoft releases](LArSoft_release_list)  
Download instructions for [larsoft v06_36_00](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v06_36_00/larsoft-v06_36_00.html)  
Download instructions for [just larsoftobj v1_20_00](http://scisoft.fnal.gov/scisoft/bundles/larsoftobj/v1_20_00/larsoftobj-v1_20_00.html)

## Purpose

-   changes to develop
-   approved features
-   ifdhc v2_0_7

## New features

-   feature/dgg_lightprop
    -   lardataobj, lardata, larsim, and larana
    -   dunetpc
-   lardataobj, larreco feature/cerati_mcs-mom
    -   multiple scattering momentum estimation (data product/algorithm/module)
    -   new features to the KF track fitter allowing creation of track without updating the input trajectory points

## Bug fixes

## Updated dependencies

|          |          |            |                                                        |
|----------|----------|------------|--------------------------------------------------------|
| Product  | Version  | Qualifiers | Notes                                                  |
| nutools  | v2_12_04 | e14        | [nutools:NuTools_Release_Notes#nutools-v2_12_04](https://cdcvs.fnal.gov/redmine/projects/nutools/wiki/NuTools_Release_Notes#nutools-v2_12_04) |
| ifdh_art | v2_01_05 | e14:nu:s48 |                                                        |
| ifdhc    | v2_0_7  | e14:p2713d |                                                        |

# Change List

## larsoft v06_36_00

-   2017-05-16 Lynn Garren : larsoft v06_36_00 for larsoft v06_36_00
-   2017-05-16 Lynn Garren : update product versions
-   2017-05-16 Lynn Garren : update depenedency database

## lareventdisplay v06_05_05

-   2017-05-16 Lynn Garren : lareventdisplay v06_05_05 for larsoft v06_36_00

## larexamples v06_03_05

-   2017-05-16 Lynn Garren : larexamples v06_03_05 for larsoft v06_36_00

## larpandora v06_10_05

-   2017-05-16 Lynn Garren : larpandora v06_10_05 for larsoft v06_36_00

## larwirecell v06_04_05

-   2017-05-16 Lynn Garren : larwirecell v06_04_05 for larsoft v06_36_00

## larana v06_06_00

-   2017-05-16 Lynn Garren : larana v06_06_00 for larsoft v06_36_00
-   2017-05-15 Gianluca Petrillo : BackTracker made optional in SimPhotonCounter module.
-   2017-05-15 Gianluca Petrillo : Merge remote-tracking branch 'origin/develop' into feature/dgg_lightprop
-   2017-05-12 Usher, Tracy L : Add the check requiring more than 1 hit on a PFParticle to be out of time before rejecting
-   2017-05-12 Diego Gamez : making the light tree false by default
-   2017-04-07 Diego Gamez : adding the light analysis tree

## larreco v06_28_00

-   2017-05-16 Lynn Garren : larreco v06_28_00 for larsoft v06_36_00
-   2017-05-15 Giuseppe Cerati : documentation
-   2017-05-15 Giuseppe Cerati : remove test files
-   2017-05-15 Giuseppe Cerati : Merge remote-tracking branch 'origin/feature/cerati_keepInputTrajectoryPoints' into feature/cerati_mcs-mom
-   2017-05-15 Giuseppe Cerati : Merge remote-tracking branch 'origin/feature/cerati_keepInputTrajectoryPoints' into feature/cerati_mcs-mom
-   2017-05-15 Giuseppe Cerati : Merge remote-tracking branch 'origin/feature/cerati_test-mcs-mom' into feature/feature/cerati_mcs-mom
-   2017-05-12 Giuseppe Cerati : add rejectHighMultHits and rejectHitsNegativeGOF
-   2017-05-12 Robert Sulej : Merge branch 'develop' of ssh://cdcvs.fnal.gov/cvs/projects/larreco into develop
-   2017-05-12 Robert Sulej : fix views vs plane index problems
-   2017-05-11 Giuseppe Cerati : add pida
-   2017-05-10 Lynn Garren : larsoft v06_35_00
-   2017-05-10 Tingjun Yang : Get hits associated with showers through pfparticles for pandora which does not make directory hit-shower association.
-   2017-05-10 Giuseppe Cerati : Merge branch 'feature/cerati_test-mcs-mom' of ssh://cdcvs.fnal.gov/cvs/projects/larreco into feature/cerati_test-mcs-mom
-   2017-05-10 Giuseppe Cerati : add pandoraNu sequence
-   2017-05-08 Giuseppe Cerati : enable TFileService
-   2017-05-05 Giuseppe Cerati : ntuple maker
-   2017-05-05 Giuseppe Cerati : breakTrajInSegments function
-   2017-05-05 Giuseppe Cerati : iterative energy loss in MCSFitter
-   2017-05-03 Giuseppe Cerati : missing parameters
-   2017-05-03 Giuseppe Cerati : minor updates
-   2017-05-03 Giuseppe Cerati : added some doxygen comments to TrajectoryMCSFitter.h
-   2017-05-03 Giuseppe Cerati : working version of MCS fitter
-   2017-04-21 Giuseppe Cerati : first versions of TrajectoryMCSFitter and MCSFitProducer
-   2017-04-21 Giuseppe Cerati : add cleanZigzag and keepInputTrajectoryPoints options to kf track fitter

## larsim v06_22_00

-   2017-05-16 Lynn Garren : larsim v06_22_00 for larsoft v06_36_00
-   2017-05-15 Gianluca Petrillo : Added BackTracker to jobs using SimPhotonCounter.
-   2017-05-15 Gianluca Petrillo : Merge remote-tracking branch 'origin/develop' into feature/dgg_lightprop
-   2017-05-10 Diego Gamez : loading the TPB properties, if chosen
-   2017-05-10 Diego Gamez : doing false by default the new pvs parameters related with reflected light and prop timing
-   2017-04-07 Diego Gamez : all the modifications for the simulation of the propagation time of the photons
-   2017-04-07 Diego Gamez : modifying the photon library visibilities and services to include the reflected component

## larevt v06_13_03

-   2017-05-16 Lynn Garren : larevt v06_13_03 for larsoft v06_36_00

## lardata v06_21_00

-   2017-05-16 Lynn Garren : lardata v06_21_00 for larsoft v06_36_00
-   2017-05-15 Gianluca Petrillo : Merge remote-tracking branch 'origin/develop' into feature/dgg_lightprop
-   2017-05-12 Diego Gamez : removing some properties and services not needed anymore
-   2017-04-07 Diego Gamez : adding the modifications needed for the TPB properties
-   2017-04-07 Diego Gamez : adding the TPB info in lar properties file
-   2017-04-07 Diego Gamez : modifying accordingly argoneut services

## larcore v06_09_02

## larpandoracontent v03_05_00

## larsoftobj v1_20_00

-   2017-05-16 Lynn Garren : larsoftobj v1_20_00 for larsoft v06_36_00
-   2017-05-16 Lynn Garren : update product versions

## lardataobj v1_16_00

-   2017-05-16 Lynn Garren : lardataobj v1_16_00 for larsoft v06_36_00
-   2017-05-16 Lynn Garren : Merge branch 'feature/cerati_mcs-mom' into release/v06_36_00
-   2017-05-15 Giuseppe Cerati : documentation
-   2017-05-15 Lynn Garren : Merge branch 'feature/cerati_mcs-mom' into release/v06_36_00
-   2017-05-15 Giuseppe Cerati : default constructror, const vectors, abs in deltaLogLikelihood
-   2017-05-15 Giuseppe Cerati : Merge remote-tracking branch 'origin/feature/cerati_test-mcs-mom' into feature/cerati_mcs-mom
-   2017-05-15 Gianluca Petrillo : Merge remote-tracking branch 'origin/develop' into feature/dgg_lightprop
-   2017-05-03 Giuseppe Cerati : implement suggestions from Gianluca for constructurs in (Track)Trajectory
-   2017-05-03 Giuseppe Cerati : forgot std::vector<recob::MCSFitResult>
-   2017-05-03 Giuseppe Cerati : create a TrackTrajectory from a Trajectory
-   2017-04-21 Giuseppe Cerati : first version of MCSFitResult
-   2017-04-17 Lynn Garren : dictionary update since a data member was added to sim::OnePhoton
-   2017-04-07 Diego Gamez : including MotherTrackID in OnePhoton class for the merging with the charge information
-   2017-04-07 Diego Gamez : including MotherTrackID in OnePhoton class for the merging with the charge information

## larcoreobj v1_13_01

## larbatch v01_32_00

## larutils v1_13_00

-   2017-05-16 Lynn Garren : larutils v1_13_00 for larsoft v06_36_00
-   2017-05-12 Herbert Greenlee : Change directory structure.
-   2017-05-11 Herbert Greenlee : Delete .git directory.
-   2017-05-11 Herbert Greenlee : Fix flavor.
-   2017-05-11 Herbert Greenlee : Fix tarball name.
-   2017-05-11 Herbert Greenlee : Use correct flavor for macos.
-   2017-05-11 Herbert Greenlee : Use g
-   2017-05-11 Herbert Greenlee : Improve error checking.
-   2017-05-11 Herbert Greenlee : Fix typo.
-   2017-05-11 Herbert Greenlee : Add root setup.
-   2017-05-11 Herbert Greenlee : Add Jenkins build script for larlite.
