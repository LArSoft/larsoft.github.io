LArSoft v06\_36\_00 Release Notes
======================================================================

-   **Table of contents**
-   [LArSoft v06\_36\_00 Release Notes](#LArSoft-v06_36_00-Release-Notes)
    -   [Purpose](#Purpose)
    -   [New features](#New-features)
    -   [Bug fixes](#Bug-fixes)
    -   [Updated dependencies](#Updated-dependencies)
-   [Change List](#Change-List)
    -   [larsoft v06\_36\_00](#larsoft-v06_36_00)
    -   [lareventdisplay v06\_05\_05](#lareventdisplay-v06_05_05)
    -   [larexamples v06\_03\_05](#larexamples-v06_03_05)
    -   [larpandora v06\_10\_05](#larpandora-v06_10_05)
    -   [larwirecell v06\_04\_05](#larwirecell-v06_04_05)
    -   [larana v06\_06\_00](#larana-v06_06_00)
    -   [larreco v06\_28\_00](#larreco-v06_28_00)
    -   [larsim v06\_22\_00](#larsim-v06_22_00)
    -   [larevt v06\_13\_03](#larevt-v06_13_03)
    -   [lardata v06\_21\_00](#lardata-v06_21_00)
    -   [larcore v06\_09\_02](#larcore-v06_09_02)
    -   [larpandoracontent v03\_05\_00](#larpandoracontent-v03_05_00)
    -   [larsoftobj v1\_20\_00](#larsoftobj-v1_20_00)
    -   [lardataobj v1\_16\_00](#lardataobj-v1_16_00)
    -   [larcoreobj v1\_13\_01](#larcoreobj-v1_13_01)
    -   [larbatch v01\_32\_00](#larbatch-v01_32_00)
    -   [larutils v1\_13\_00](#larutils-v1_13_00)

[list of LArSoft releases](LArSoft_release_list)
Download instructions for [larsoft v06\_36\_00](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v06_36_00/larsoft-v06_36_00.html)
Download instructions for [just larsoftobj v1\_20\_00](http://scisoft.fnal.gov/scisoft/bundles/larsoftobj/v1_20_00/larsoftobj-v1_20_00.html)

Purpose
--------------------

-   changes to develop
-   approved features
-   ifdhc v2\_0\_7

New features
------------------------------

-   feature/dgg\_lightprop
    -   lardataobj, lardata, larsim, and larana
    -   dunetpc
-   lardataobj, larreco feature/cerati\_mcs-mom
    -   multiple scattering momentum estimation (data product/algorithm/module)
    -   new features to the KF track fitter allowing creation of track without updating the input trajectory points

Bug fixes
------------------------

Updated dependencies
----------------------------------------------

||
|Product|Version|Qualifiers|Notes|
|nutools|v2\_12\_04|e14|[NuTools\_Release\_Notes](/redmine/projects/nutools/wiki/NuTools_Release_Notes#nutools-v2_12_04)|
|ifdh\_art|v2\_01\_05|e14:nu:s48||
|ifdhc|v2\_0\_7|e14:p2713d||

Change List
============================

larsoft v06\_36\_00
------------------------------------------

-   2017-05-16 Lynn Garren : larsoft v06\_36\_00 for larsoft v06\_36\_00
-   2017-05-16 Lynn Garren : update product versions
-   2017-05-16 Lynn Garren : update depenedency database

lareventdisplay v06\_05\_05
----------------------------------------------------------

-   2017-05-16 Lynn Garren : lareventdisplay v06\_05\_05 for larsoft v06\_36\_00

larexamples v06\_03\_05
--------------------------------------------------

-   2017-05-16 Lynn Garren : larexamples v06\_03\_05 for larsoft v06\_36\_00

larpandora v06\_10\_05
------------------------------------------------

-   2017-05-16 Lynn Garren : larpandora v06\_10\_05 for larsoft v06\_36\_00

larwirecell v06\_04\_05
--------------------------------------------------

-   2017-05-16 Lynn Garren : larwirecell v06\_04\_05 for larsoft v06\_36\_00

larana v06\_06\_00
----------------------------------------

-   2017-05-16 Lynn Garren : larana v06\_06\_00 for larsoft v06\_36\_00
-   2017-05-15 Gianluca Petrillo : BackTracker made optional in SimPhotonCounter module.
-   2017-05-15 Gianluca Petrillo : Merge remote-tracking branch ‘origin/develop’ into feature/dgg\_lightprop
-   2017-05-12 Usher, Tracy L : Add the check requiring more than 1 hit on a PFParticle to be out of time before rejecting
-   2017-05-12 Diego Gamez : making the light tree false by default
-   2017-04-07 Diego Gamez : adding the light analysis tree

larreco v06\_28\_00
------------------------------------------

-   2017-05-16 Lynn Garren : larreco v06\_28\_00 for larsoft v06\_36\_00
-   2017-05-15 Giuseppe Cerati : documentation
-   2017-05-15 Giuseppe Cerati : remove test files
-   2017-05-15 Giuseppe Cerati : Merge remote-tracking branch ‘origin/feature/cerati\_keepInputTrajectoryPoints’ into feature/cerati\_mcs-mom
-   2017-05-15 Giuseppe Cerati : Merge remote-tracking branch ‘origin/feature/cerati\_keepInputTrajectoryPoints’ into feature/cerati\_mcs-mom
-   2017-05-15 Giuseppe Cerati : Merge remote-tracking branch ‘origin/feature/cerati\_test-mcs-mom’ into feature/feature/cerati\_mcs-mom
-   2017-05-12 Giuseppe Cerati : add rejectHighMultHits and rejectHitsNegativeGOF
-   2017-05-12 Robert Sulej : Merge branch ‘develop’ of ssh://cdcvs.fnal.gov/cvs/projects/larreco into develop
-   2017-05-12 Robert Sulej : fix views vs plane index problems
-   2017-05-11 Giuseppe Cerati : add pida
-   2017-05-10 Lynn Garren : larsoft v06\_35\_00
-   2017-05-10 Tingjun Yang : Get hits associated with showers through pfparticles for pandora which does not make directory hit-shower association.
-   2017-05-10 Giuseppe Cerati : Merge branch ‘feature/cerati\_test-mcs-mom’ of ssh://cdcvs.fnal.gov/cvs/projects/larreco into feature/cerati\_test-mcs-mom
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

larsim v06\_22\_00
----------------------------------------

-   2017-05-16 Lynn Garren : larsim v06\_22\_00 for larsoft v06\_36\_00
-   2017-05-15 Gianluca Petrillo : Added BackTracker to jobs using SimPhotonCounter.
-   2017-05-15 Gianluca Petrillo : Merge remote-tracking branch ‘origin/develop’ into feature/dgg\_lightprop
-   2017-05-10 Diego Gamez : loading the TPB properties, if chosen
-   2017-05-10 Diego Gamez : doing false by default the new pvs parameters related with reflected light and prop timing
-   2017-04-07 Diego Gamez : all the modifications for the simulation of the propagation time of the photons
-   2017-04-07 Diego Gamez : modifying the photon library visibilities and services to include the reflected component

larevt v06\_13\_03
----------------------------------------

-   2017-05-16 Lynn Garren : larevt v06\_13\_03 for larsoft v06\_36\_00

lardata v06\_21\_00
------------------------------------------

-   2017-05-16 Lynn Garren : lardata v06\_21\_00 for larsoft v06\_36\_00
-   2017-05-15 Gianluca Petrillo : Merge remote-tracking branch ‘origin/develop’ into feature/dgg\_lightprop
-   2017-05-12 Diego Gamez : removing some properties and services not needed anymore
-   2017-04-07 Diego Gamez : adding the modifications needed for the TPB properties
-   2017-04-07 Diego Gamez : adding the TPB info in lar properties file
-   2017-04-07 Diego Gamez : modifying accordingly argoneut services

larcore v06\_09\_02
------------------------------------------

larpandoracontent v03\_05\_00
--------------------------------------------------------------

larsoftobj v1\_20\_00
----------------------------------------------

-   2017-05-16 Lynn Garren : larsoftobj v1\_20\_00 for larsoft v06\_36\_00
-   2017-05-16 Lynn Garren : update product versions

lardataobj v1\_16\_00
----------------------------------------------

-   2017-05-16 Lynn Garren : lardataobj v1\_16\_00 for larsoft v06\_36\_00
-   2017-05-16 Lynn Garren : Merge branch ‘feature/cerati\_mcs-mom’ into release/v06\_36\_00
-   2017-05-15 Giuseppe Cerati : documentation
-   2017-05-15 Lynn Garren : Merge branch ‘feature/cerati\_mcs-mom’ into release/v06\_36\_00
-   2017-05-15 Giuseppe Cerati : default constructror, const vectors, abs in deltaLogLikelihood
-   2017-05-15 Giuseppe Cerati : Merge remote-tracking branch ‘origin/feature/cerati\_test-mcs-mom’ into feature/cerati\_mcs-mom
-   2017-05-15 Gianluca Petrillo : Merge remote-tracking branch ‘origin/develop’ into feature/dgg\_lightprop
-   2017-05-03 Giuseppe Cerati : implement suggestions from Gianluca for constructurs in (Track)Trajectory
-   2017-05-03 Giuseppe Cerati : forgot std::vector\<recob::MCSFitResult\>
-   2017-05-03 Giuseppe Cerati : create a TrackTrajectory from a Trajectory
-   2017-04-21 Giuseppe Cerati : first version of MCSFitResult
-   2017-04-17 Lynn Garren : dictionary update since a data member was added to sim::OnePhoton
-   2017-04-07 Diego Gamez : including MotherTrackID in OnePhoton class for the merging with the charge information
-   2017-04-07 Diego Gamez : including MotherTrackID in OnePhoton class for the merging with the charge information

larcoreobj v1\_13\_01
----------------------------------------------

larbatch v01\_32\_00
--------------------------------------------

larutils v1\_13\_00
------------------------------------------

-   2017-05-16 Lynn Garren : larutils v1\_13\_00 for larsoft v06\_36\_00
-   2017-05-12 Herbert Greenlee : Change directory structure.
-   2017-05-11 Herbert Greenlee : Delete .git directory.
-   2017-05-11 Herbert Greenlee : Fix flavor.
-   2017-05-11 Herbert Greenlee : Fix tarball name.
-   2017-05-11 Herbert Greenlee : Use correct flavor for macos.
-   2017-05-11 Herbert Greenlee : Use g++
-   2017-05-11 Herbert Greenlee : Improve error checking.
-   2017-05-11 Herbert Greenlee : Fix typo.
-   2017-05-11 Herbert Greenlee : Add root setup.
-   2017-05-11 Herbert Greenlee : Add Jenkins build script for larlite.
