# LArSoft v04_36_00_03 Release Notes



[list of LArSoft releases](LArSoft_release_list)  
[Download instructions](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v04_36_00_03/larsoft-v04_36_00_03.html)

## Purpose

-   memory improvement for MicroBooNE simulation

## New features

## Bug fixes

## Updated dependencies

# Change List

## larsoft v04_36_00_03

-   2016-04-12 Lynn Garren : v04_36_00_03
-   2016-04-12 Lynn Garren : update supporting products
-   2016-04-12 Lynn Garren : update dependency database
-   2016-04-12 Lynn Garren : update product versions

## lareventdisplay v04_36_00_03

-   2016-04-12 Lynn Garren : v04_36_00_03

## larexamples v04_36_00_03

-   2016-04-12 Lynn Garren : v04_36_00_03

## larpandora v04_36_00_03

-   2016-04-12 Lynn Garren : v04_36_00_03

## larana v04_36_00_03

-   2016-04-12 Lynn Garren : v04_36_00_03
-   2016-03-29 Gianluca Petrillo : Update after photon library interface change

## larreco v04_36_00_03

-   2016-04-12 Lynn Garren : v04_36_00_03
-   2016-03-17 Herbert Greenlee : Reduce size of MCHit.
-   2016-03-28 Gianluca Petrillo : Replaced copies of ParticleList from backtracker with references.

## larsim v04_36_00_03

-   2016-04-12 Lynn Garren : v04_36_00_03
-   2016-03-18 Herbert Greenlee : Change doubles to floats in sim::IDE.
-   2016-04-07 Gianluca Petrillo : Removed unused service and header inclusion
-   2016-04-06 Saba Sehrish : constructors cleanup
-   2016-04-06 Saba Sehrish : two constructors for deposit and MCEdep structs instead of one
-   2016-04-05 Saba Sehrish : added constructors to deposit and MCEdep, and moved deposit to MCEdep
-   2016-04-05 Saba Sehrish : Merge branch 'v04_36_00_branch' of ssh://cdcvs.fnal.gov/cvs/projects/larsim into v04_36_00_branch
-   2016-04-05 Saba Sehrish : added create index map function to a namespace
-   2016-04-04 Gianluca Petrillo : Merge branch 'v04_36_00_branch' of ssh://cdcvs.fnal.gov/cvs/projects/larsim into v04_36_00_branch
-   2016-04-04 Gianluca Petrillo : Removed useless inclusion of iostream
-   2016-04-03 Saba Sehrish : Merge branch 'v04_36_00_branch' of ssh://cdcvs.fnal.gov/cvs/projects/larsim into v04_36_00_branch
-   2016-04-03 Saba Sehrish : minor change
-   2016-04-01 Gianluca Petrillo : Removed obsolete code.
-   2016-03-31 Saba Sehrish : renamed map variable, removed mchits and comments
-   2016-03-31 Gianluca Petrillo : Removed old piece of code
-   2016-03-30 Gianluca Petrillo : Merge branch 'v04_36_00_branch' into feature_v04_36_00/gp_MemoryOptimizationG4
-   2016-03-30 Gianluca Petrillo : Adapted dumpers from v5
-   2016-03-30 Gianluca Petrillo : Added dumpers for sim::SimChannel and sim::SimPhotons data products
-   2016-03-30 Gianluca Petrillo : Minor changes
-   2016-03-29 Gianluca Petrillo : Trivial interface change.
-   2016-03-29 Gianluca Petrillo : Flattened nested vector in photon library. Breaking change: some PhotonVisibilityService methods have changed signature.
-   2016-03-29 Gianluca Petrillo : In some way v5 version of dumper module ended up in v4 branch. Fixed.
-   2016-03-29 Gianluca Petrillo : Merge remote-tracking branch 'origin/gp_MemoryOptimizationLArG4' into v04_36_00_branch
-   2016-03-29 Saba Sehrish : added clear function for _mc_edeps
-   2016-03-28 Saba Sehrish : minor change to add mcparticles name
-   2016-03-28 Saba Sehrish : Remove an unexisting test directory from CMakeLists.txt
-   2016-03-28 Saba Sehrish : Merge remote branch 'origin/gp_MemoryOptimizationLArG4' into all_MemoryOptimization
-   2016-03-28 Saba Sehrish : used pair key
-   2016-03-27 Gianluca Petrillo : Merged two maps into one in LArVoxelReadout, and given more meaningful names to a bunch of variables.
-   2016-03-27 Gianluca Petrillo : During data transfer to data product, each particle is deleted as soon as it's moved, to avoid memory spikes. A bug fix in nutools will make this almost completely redundant.
-   2016-03-27 Gianluca Petrillo : ParticleListAction now deletes a particle as soon as it knows it wouldn't be saved. A complete revision of ParticleListAction is desireable to make this mechanism more robust.
-   2016-03-27 Saba Sehrish : uncommented _mc_edep and _track_index
-   2016-03-27 Saba Sehrish : minor cleanup
-   2016-03-26 Gianluca Petrillo : Flush the output buffer at every particle, preventing it from becoming huge.
-   2016-03-26 Saba Sehrish : replaced map of struct with a smaller map of index and a vector of structs
-   2016-03-25 Gianluca Petrillo : Track filtering moved early so that tracks are dropped as soon as we know we don't want them. “Dropped” tracks are actually kept in the list, but pruned of most of the information.
-   2016-03-25 Saba Sehrish : changed the name of energycharge to deposit
-   2016-03-25 Saba Sehrish : minor cleanup
-   2016-03-25 Saba Sehrish : merged two maps into one with energy and charge as struct, step 1
-   2016-03-24 Saba Sehrish : added std::unique_ptr return type
-   2016-03-24 Gianluca Petrillo : Removed the ability to copy ParticleList containers. Added the ability to move ParticleList containers. MCParticle objects are now moved out of ParticleListAction, and into the data product when needed.
-   2016-03-24 Gianluca Petrillo : Particle and particle list objects moved from static to ParticleListAction members
-   2016-03-24 Gianluca Petrillo : Moved the filtering logic into an object (also propagated to ParticleListAction)
-   2016-03-24 Saba Sehrish : changed to unique ptr
-   2016-03-23 Saba Sehrish : one fcl file to create all three output files
-   2016-03-23 Saba Sehrish : Changed return types ofMCTrack and MCShower Reconstruct functions, remove destructor, added explict to constructor
-   2016-03-22 Saba Sehrish : added const ref and remove virtual destructors
-   2016-03-22 larsoft User : change the return type of Reconstruct in MCShowerRecoAlg
-   2016-02-04 Lynn Garren : larsim v04_21_00 for larsoft v04_36_00

## larevt v04_36_00_03

-   2016-04-12 Lynn Garren : v04_36_00_03

## lardata v04_36_00_03

-   2016-04-12 Lynn Garren : v04_36_00_03
-   2016-03-17 Herbert Greenlee : Change doubles to floats.
-   2016-03-17 Herbert Greenlee : Reduce size of MCHit.

## larcore v04_36_00_03

-   2016-04-12 Lynn Garren : v04_36_00_03

## larbatch v01_20_08

-   2016-03-30 Lynn Garren : larbatch v01_20_08 for larsoft v05_07_00
-   2016-03-30 Lynn Garren : larbatch v01_20_08 for larsoft v05_07_00
-   2016-03-24 Herbert Greenlee : Exit script with lar status.
-   2016-03-23 Lynn Garren : larbatch v01_20_07 for larsoft v05_05_00
-   2016-03-23 Lynn Garren : larbatch v01_20_07 for larsoft v05_05_00
-   2016-03-21 Herbert Greenlee : Override EmptyEvent run number in wrapper.fcl.
-   2016-03-18 Herbert Greenlee : Add function batch_status_check.
-   2016-03-09 Lynn Garren : larbatch v01_20_06 for larsoft v05_02_00
-   2016-03-09 Lynn Garren : larbatch v01_20_06 for larsoft v05_02_00
-   2016-03-03 Herbert Greenlee : Fix problems caused by recursive element fetches.
-   2016-03-02 Lynn Garren : larbatch v01_20_05 for larsoft v05_01_02
-   2016-03-02 Lynn Garren : larbatch v01_20_05 for larsoft v05_01_02
-   2016-03-02 Herbert Greenlee : Merge branch 'develop' of ssh://cdcvs.fnal.gov/cvs/projects/larbatch into develop
-   2016-03-02 Herbert Greenlee : Don't return spurious errors.
-   2016-02-29 Herbert Greenlee : Add ability of condor_lar.sh to start and stop sam projects internally.
-   2016-02-18 Lynn Garren : larbatch v01_20_04 for larsoft v05_01_00
-   2016-02-18 Lynn Garren : larbatch v01_20_04 for larsoft v05_01_00
-   2016-02-16 Tingjun Yang : Use the old method to get crc if the new method does not work.

## larutils v1_05_06

-   2016-03-30 Lynn Garren : larutils v1_05_06 for larsoft v05_07_00
-   2016-03-30 Lynn Garren : larutils v1_05_06 for larsoft v05_07_00
-   2016-03-24 Lynn Garren : moving to nu v1_24_01
-   2016-03-23 Lynn Garren : larutils v1_05_05 for larsoft v05_05_00
-   2016-03-23 Lynn Garren : larutils v1_05_05 for larsoft v05_05_00
-   2016-03-23 Lynn Garren : update nu version for build
-   2016-03-16 Lynn Garren : larutils v1_05_04 for larsoft v05_04_00
-   2016-03-16 Lynn Garren : larutils v1_05_04 for larsoft v05_04_00
-   2016-03-11 Lynn Garren : pull nubase source
-   2016-03-10 Lynn Garren : build a release candidate
-   2016-02-24 Lynn Garren : Merge branch 'release/v05_01_01'
-   2016-02-24 Lynn Garren : larutils v1_05_03 for larsoft v05_01_01
-   2016-02-24 Lynn Garren : larutils v1_05_03 for larsoft v05_01_01
-   2016-02-24 Lynn Garren : update nu dist
-   2016-02-22 David Adams : Drop set -x from buldDUNE.
-   2016-02-22 David Adams : Drop set -x in DUNE build.
-   2016-02-18 Lynn Garren : larutils v1_05_02 for larsoft v05_01_00
-   2016-02-16 Lynn Garren : building v05
-   2016-02-13 Herbert Greenlee : Only copy libXmu.so.6 on linux.
-   2016-02-13 Herbert Greenlee : Merge branch 'develop' of ssh://cdcvs.fnal.gov/cvs/projects/larutils into develop
-   2016-02-13 Herbert Greenlee : Copy libXmu.so.6.
-   2016-02-09 Lynn Garren : larutils v1_05_01 for larsoft v04_37_00
-   2016-02-04 Lynn Garren : larsoft v04_36_00
-   2016-02-04 Lynn Garren : updating nu release to pull
