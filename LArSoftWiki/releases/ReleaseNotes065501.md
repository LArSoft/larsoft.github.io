# LArSoft v06_55_01 Release Notes



[list of LArSoft releases](LArSoft_release_list)  
Download instructions for [larsoft v06_55_01](https://scisoft.fnal.gov/scisoft/bundles/larsoft/v06_55_01/larsoft-v06_55_01.html)  
Download instructions for [just larsoftobj v1_29_02](https://scisoft.fnal.gov/scisoft/bundles/larsoftobj/v1_29_02/larsoftobj-v1_29_02.html)

## Purpose

-   changes to develop
-   approved feature branches

## New features

## Bug fixes

-   \#17708
-   larwirecell feature/bv_wct-0.6.2
-   lardata feature/gp_Issue17672 (remove legacy PtrMaker.h header)

## Updated dependencies

-   genie_xsec v2_12_8
-   genie_phyopt v2_12_8

# Change List

## larsoft v06_55_01

-   2017-10-31 Lynn Garren : larsoft v06_55_01 for larsoft v06_55_01
-   2017-10-31 Lynn Garren : update product versions
-   2017-10-25 Lynn Garren : s56

## lareventdisplay v06_14_01

-   2017-10-31 Lynn Garren : lareventdisplay v06_14_01 for larsoft v06_55_01

## larexamples v06_07_07

-   2017-10-31 Lynn Garren : larexamples v06_07_07 for larsoft v06_55_01
-   2017-10-27 Jason Stock : Updating notes to include ParticleInventory

## larpandora v06_17_04

-   2017-10-31 Lynn Garren : larpandora v06_17_04 for larsoft v06_55_01

## larwirecell v06_08_02

-   2017-10-31 Lynn Garren : larwirecell v06_08_02 for larsoft v06_55_01
-   2017-10-31 Lynn Garren : Merge branch 'feature/bv_wct-0.6.2' into release/v06_55_01
-   2017-10-27 Brett Viren : Save also the detailed channel mask information in addition to just a list of 'bad' channels

## larana v06_11_01

-   2017-10-31 Lynn Garren : larana v06_11_01 for larsoft v06_55_01
-   2017-10-28 Jason Stock : This was a breaking change that should have stayed on its feature branch until the next release. Revert “BackTracker/ParticleInventory Update”
-   2017-10-28 Jason Stock : Merge branch 'develop' into feature/JStock_BackTrackerIntegratedUpdate Merges resolved. Conflicts were mostly from me anyways.
-   2017-10-28 Jason Stock : Merge branch 'develop' of ssh://cdcvs.fnal.gov/cvs/projects/larana into develop
-   2017-10-27 Jason Stock : Merge branch 'develop' of ssh://cdcvs.fnal.gov/cvs/projects/larana into feature/JStock_BackTrackerIntegratedUpdate
-   2017-10-25 Jason Stock : BackTracker/ParticleInventory Update
-   2017-10-22 Jason Stock : Initial removal of the old BackTracker service and integration of BackTrackerService and ParticleInventoryService
-   2017-10-22 Jason Stock : Removing tabs from CMakeList files

## larreco v06_44_01

-   2017-10-31 Lynn Garren : larreco v06_44_01 for larsoft v06_55_01
-   2017-10-31 Robert Sulej : remove fcl which was moved to dunetpc configurations
-   2017-10-30 baller : init dpt and ppt
-   2017-10-30 baller : fix bug in TrimEndPts
-   2017-10-30 baller : Merge branch 'develop' into feature/bb_TJWork
-   2017-10-30 baller : Remove BlobVx
-   2017-10-30 baller : Remove BlobVx
-   2017-10-30 baller : Work in CheckNoMatchTjs.
-   2017-10-30 baller : Remove MakeJunkTjVertices. Fix bug in MergeWithVertex.
-   2017-10-30 baller : Remove MakeJunkTjVertices
-   2017-10-29 Usher, Tracy L : Merge branch 'develop' of ssh://cdcvs.fnal.gov/cvs/projects/larreco into develop
-   2017-10-29 Usher, Tracy L : Remove the std::cout which should have been removed before the original commit of the bug fix…
-   2017-10-28 baller : Refactor TagInshowerTjs
-   2017-10-28 baller : Add new version of MatchTrueHits for evaluation
-   2017-10-28 baller : Minor code fixes
-   2017-10-28 baller : Minor code fixes
-   2017-10-28 baller : Minor code fixes
-   2017-10-28 baller : Minor code fixes
-   2017-10-28 baller : Minor code fixes
-   2017-10-28 baller : Minor code fixes
-   2017-10-28 Jason Stock : These were breaking changes that should stay on a feature branch until the next release
-   2017-10-27 Jason Stock : Merge branch 'develop' of ssh://cdcvs.fnal.gov/cvs/projects/larreco into feature/JStock_BackTrackerIntegratedUpdate
-   2017-10-27 Usher, Tracy L : Adjust the lower limit on the peak width before the fit to allow the fitter to “shrink” the width to fit the pulse (was stopping at the lower limit for some pulses)
-   2017-10-27 Jason Stock : Merge branch 'develop' of ssh://cdcvs.fnal.gov/cvs/projects/larreco into feature/JStock_BackTrackerIntegratedUpdate
-   2017-10-26 Jason Stock : Work around for LArSoft Issue \#17960. Note, this is not a fix. Just the workaround.
-   2017-10-26 baller : Merge branch 'develop' into feature/bb_TJWork
-   2017-10-26 baller : Merge branch 'feature/bb_TJWork' of ssh://cdcvs.fnal.gov/cvs/projects/larreco into feature/bb_TJWork
-   2017-10-25 Jason Stock : BackTracker/ParticleInventory update
-   2017-10-23 baller : Merge branch 'develop' into feature/bb_TJWork
-   2017-10-23 baller : Various code tweaks
-   2017-10-23 baller : Major rewrite.
-   2017-10-23 baller : Major rewrite.
-   2017-10-23 baller : Ongoing development
-   2017-10-23 baller : Fix typos.
-   2017-10-23 baller : Work on PFParticle hierarchy.
-   2017-10-23 baller : Add AlgMod.
-   2017-10-23 baller : Remove ParentCluster. Code clean up.
-   2017-10-23 baller : Set default
-   2017-10-20 Tingjun Yang : Merge branch 'feature/bb_TJWork' of ssh://cdcvs.fnal.gov/cvs/projects/larreco into feature/bb_TJWork
-   2017-10-20 Tingjun Yang : Tweak TrimEndPts so trajectory with 4 points won't be killed.
-   2017-10-19 Tingjun Yang : Improve closePt based on vertex position
-   2017-10-19 Tingjun Yang : fix typo.
-   2017-10-18 baller : Define prt state. Check for CompatibleMerge in EndMerge when vertex fit fails.
-   2017-10-18 baller : Check for invalid 3D vertex
-   2017-10-18 baller : Ongoing shower development.
-   2017-10-18 baller : Add reconstructed 2D vertex metric.
-   2017-10-18 baller : Add reconstructed 2D vertex metric.
-   2017-10-18 baller : Remove code to kill poor vertices. Circumvent scoring for Topo 8 vertices.
-   2017-10-18 baller : Work on PFP hierarchy. Tweaks in CompatibleMerge. Mod to SetVx2Score. Fix bug in PrintAllTraj.
-   2017-10-18 Tingjun Yang : Use the same cut as max vertex - trajectory separation for short trajectories in SplitTrajCrossingVertices.
-   2017-10-16 baller : Changed WireAngleToVertical to ThetaZ
-   2017-10-16 baller : Changed WireAngleToVertical to ThetaZ
-   2017-10-16 baller : Merge branch 'develop' into feature/bb_TJWork
-   2017-10-13 baller : Merge branch 'develop' into feature/bb_TJWork
-   2017-10-13 baller : Comment out new code for testing
-   2017-10-13 baller : Comment out new code for testing.
-   2017-10-13 baller : fixed bug

## larsim v06_33_01

-   2017-10-31 Lynn Garren : larsim v06_33_01 for larsoft v06_55_01
-   2017-10-31 Gianluca Petrillo : PhotonLibrary does not allocate reflected photons unless requested.
-   2017-10-28 Jason Stock : These were breaking changes that should stay on their feature branch until the next release.
-   2017-10-27 Jason Stock : BackTrackerService was incorrectly named in one of the singles gen fcl files. This is corrected.
-   2017-10-27 Jason Stock : Changing use of TrackIdToParticle to use pointer.
-   2017-10-27 Jason Stock : Forgot to add the header for ParticleInventoryService to RecoCheck. Fixed
-   2017-10-27 Jason Stock : Patching RecoCheck module to use BackTrackerService
-   2017-10-27 Jason Stock : Fix to Check BackTracking Module (ParticleInventory implimentation).
-   2017-10-27 Jason Stock : Merge branch 'develop' of ssh://cdcvs.fnal.gov/cvs/projects/larsim into feature/JStock_BackTrackerIntegratedUpdate
-   2017-10-26 Jason Stock : BackTracker Integrated Update. Pre Test 1

## larevt v06_16_07

-   2017-10-31 Lynn Garren : larevt v06_16_07 for larsoft v06_55_01

## lardata v06_31_03

-   2017-10-31 Lynn Garren : lardata v06_31_03 for larsoft v06_55_01
-   2017-10-30 Gianluca Petrillo : Removed legacy header lardata/Utilities/PtrMaker.h .
-   2017-10-26 Gianluca Petrillo : Changed internal initialisation of DetectorPropertiesStandard.
-   2017-10-26 Gianluca Petrillo : Removed old code.
-   2017-10-28 Jason Stock : This was a breaking change that should stay on it's feature branch until the next release. Revert “BackTracker Update. Pre Test 1”
-   2017-10-27 Jason Stock : Merge branch 'develop' of ssh://cdcvs.fnal.gov/cvs/projects/lardata into feature/JStock_BackTrackerIntegratedUpdate
-   2017-10-26 Jason Stock : BackTracker Update. Pre Test 1

## larcore v06_15_04

-   2017-10-31 Lynn Garren : larcore v06_15_04 for larsoft v06_55_01

## larpandoracontent v03_08_01

## larsoftobj v1_29_02

-   2017-10-31 Lynn Garren : larsoftobj v1_29_02 for larsoft v06_55_01
-   2017-10-31 Lynn Garren : update product versions

## lardataobj v1_21_03

-   2017-10-31 Lynn Garren : lardataobj v1_21_03 for larsoft v06_55_01

## larcorealg v1_09_02

-   2017-10-31 Lynn Garren : larcorealg v1_09_02 for larsoft v06_55_01
-   2017-10-25 Lynn Garren : larsoft v06_55_00
-   2017-10-25 Gianluca Petrillo : Increased the maximum GDML depth for search of geometry elements.

## larcoreobj v1_16_02

-   2017-10-31 Lynn Garren : larcoreobj v1_16_02 for larsoft v06_55_01
-   2017-10-30 Gianluca Petrillo : Repainted documentation.
-   2017-10-30 Gianluca Petrillo : Added speed of light in physical constants.
-   2017-10-24 Gianluca Petrillo : Channel ID turned into generic int type.

## larbatch v01_32_06

## larutils v1_20_01
