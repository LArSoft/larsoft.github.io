LArSoft v06\_55\_01 Release Notes
======================================================================

-   **Table of contents**
-   [LArSoft v06\_55\_01 Release Notes](#LArSoft-v06_55_01-Release-Notes)
    -   [Purpose](#Purpose)
    -   [New features](#New-features)
    -   [Bug fixes](#Bug-fixes)
    -   [Updated dependencies](#Updated-dependencies)
-   [Change List](#Change-List)
    -   [larsoft v06\_55\_01](#larsoft-v06_55_01)
    -   [lareventdisplay v06\_14\_01](#lareventdisplay-v06_14_01)
    -   [larexamples v06\_07\_07](#larexamples-v06_07_07)
    -   [larpandora v06\_17\_04](#larpandora-v06_17_04)
    -   [larwirecell v06\_08\_02](#larwirecell-v06_08_02)
    -   [larana v06\_11\_01](#larana-v06_11_01)
    -   [larreco v06\_44\_01](#larreco-v06_44_01)
    -   [larsim v06\_33\_01](#larsim-v06_33_01)
    -   [larevt v06\_16\_07](#larevt-v06_16_07)
    -   [lardata v06\_31\_03](#lardata-v06_31_03)
    -   [larcore v06\_15\_04](#larcore-v06_15_04)
    -   [larpandoracontent v03\_08\_01](#larpandoracontent-v03_08_01)
    -   [larsoftobj v1\_29\_02](#larsoftobj-v1_29_02)
    -   [lardataobj v1\_21\_03](#lardataobj-v1_21_03)
    -   [larcorealg v1\_09\_02](#larcorealg-v1_09_02)
    -   [larcoreobj v1\_16\_02](#larcoreobj-v1_16_02)
    -   [larbatch v01\_32\_06](#larbatch-v01_32_06)
    -   [larutils v1\_20\_01](#larutils-v1_20_01)

[list of LArSoft releases](LArSoft_release_list)
Download instructions for [larsoft v06\_55\_01](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v06_55_01/larsoft-v06_55_01.html)
Download instructions for [just larsoftobj v1\_29\_02](http://scisoft.fnal.gov/scisoft/bundles/larsoftobj/v1_29_02/larsoftobj-v1_29_02.html)

Purpose
--------------------

-   changes to develop
-   approved feature branches

New features
------------------------------

Bug fixes
------------------------

-   [\#17708](/redmine/issues/17708 "Bug: SimPhotonCounter causes significant memory usage for DUNE library generation. (Closed)")
-   larwirecell feature/bv\_wct-0.6.2
-   lardata feature/gp\_Issue17672 (remove legacy PtrMaker.h header)

Updated dependencies
----------------------------------------------

-   genie\_xsec v2\_12\_8
-   genie\_phyopt v2\_12\_8

Change List
============================

larsoft v06\_55\_01
------------------------------------------

-   2017-10-31 Lynn Garren : larsoft v06\_55\_01 for larsoft v06\_55\_01
-   2017-10-31 Lynn Garren : update product versions
-   2017-10-25 Lynn Garren : s56

lareventdisplay v06\_14\_01
----------------------------------------------------------

-   2017-10-31 Lynn Garren : lareventdisplay v06\_14\_01 for larsoft v06\_55\_01

larexamples v06\_07\_07
--------------------------------------------------

-   2017-10-31 Lynn Garren : larexamples v06\_07\_07 for larsoft v06\_55\_01
-   2017-10-27 Jason Stock : Updating notes to include ParticleInventory

larpandora v06\_17\_04
------------------------------------------------

-   2017-10-31 Lynn Garren : larpandora v06\_17\_04 for larsoft v06\_55\_01

larwirecell v06\_08\_02
--------------------------------------------------

-   2017-10-31 Lynn Garren : larwirecell v06\_08\_02 for larsoft v06\_55\_01
-   2017-10-31 Lynn Garren : Merge branch ‘feature/bv\_wct-0.6.2’ into release/v06\_55\_01
-   2017-10-27 Brett Viren : Save also the detailed channel mask information in addition to just a list of ‘bad’ channels

larana v06\_11\_01
----------------------------------------

-   2017-10-31 Lynn Garren : larana v06\_11\_01 for larsoft v06\_55\_01
-   2017-10-28 Jason Stock : This was a breaking change that should have stayed on its feature branch until the next release. Revert “BackTracker/ParticleInventory Update”
-   2017-10-28 Jason Stock : Merge branch ‘develop’ into feature/JStock\_BackTrackerIntegratedUpdate Merges resolved. Conflicts were mostly from me anyways.
-   2017-10-28 Jason Stock : Merge branch ‘develop’ of ssh://cdcvs.fnal.gov/cvs/projects/larana into develop
-   2017-10-27 Jason Stock : Merge branch ‘develop’ of ssh://cdcvs.fnal.gov/cvs/projects/larana into feature/JStock\_BackTrackerIntegratedUpdate
-   2017-10-25 Jason Stock : BackTracker/ParticleInventory Update
-   2017-10-22 Jason Stock : Initial removal of the old BackTracker service and integration of BackTrackerService and ParticleInventoryService
-   2017-10-22 Jason Stock : Removing tabs from CMakeList files

larreco v06\_44\_01
------------------------------------------

-   2017-10-31 Lynn Garren : larreco v06\_44\_01 for larsoft v06\_55\_01
-   2017-10-31 Robert Sulej : remove fcl which was moved to dunetpc configurations
-   2017-10-30 baller : init dpt and ppt
-   2017-10-30 baller : fix bug in TrimEndPts
-   2017-10-30 baller : Merge branch ‘develop’ into feature/bb\_TJWork
-   2017-10-30 baller : Remove BlobVx
-   2017-10-30 baller : Remove BlobVx
-   2017-10-30 baller : Work in CheckNoMatchTjs.
-   2017-10-30 baller : Remove MakeJunkTjVertices. Fix bug in MergeWithVertex.
-   2017-10-30 baller : Remove MakeJunkTjVertices
-   2017-10-29 Usher, Tracy L : Merge branch ‘develop’ of ssh://cdcvs.fnal.gov/cvs/projects/larreco into develop
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
-   2017-10-27 Jason Stock : Merge branch ‘develop’ of ssh://cdcvs.fnal.gov/cvs/projects/larreco into feature/JStock\_BackTrackerIntegratedUpdate
-   2017-10-27 Usher, Tracy L : Adjust the lower limit on the peak width before the fit to allow the fitter to “shrink” the width to fit the pulse (was stopping at the lower limit for some pulses)
-   2017-10-27 Jason Stock : Merge branch ‘develop’ of ssh://cdcvs.fnal.gov/cvs/projects/larreco into feature/JStock\_BackTrackerIntegratedUpdate
-   2017-10-26 Jason Stock : Work around for LArSoft Issue [\#17960](/redmine/issues/17960 "Bug: problem with the debug build of larreco on SLF6 (Assigned)"). Note, this is not a fix. Just the workaround.
-   2017-10-26 baller : Merge branch ‘develop’ into feature/bb\_TJWork
-   2017-10-26 baller : Merge branch ‘feature/bb\_TJWork’ of ssh://cdcvs.fnal.gov/cvs/projects/larreco into feature/bb\_TJWork
-   2017-10-25 Jason Stock : BackTracker/ParticleInventory update
-   2017-10-23 baller : Merge branch ‘develop’ into feature/bb\_TJWork
-   2017-10-23 baller : Various code tweaks
-   2017-10-23 baller : Major rewrite.
-   2017-10-23 baller : Major rewrite.
-   2017-10-23 baller : Ongoing development
-   2017-10-23 baller : Fix typos.
-   2017-10-23 baller : Work on PFParticle hierarchy.
-   2017-10-23 baller : Add AlgMod.
-   2017-10-23 baller : Remove ParentCluster. Code clean up.
-   2017-10-23 baller : Set default
-   2017-10-20 Tingjun Yang : Merge branch ‘feature/bb\_TJWork’ of ssh://cdcvs.fnal.gov/cvs/projects/larreco into feature/bb\_TJWork
-   2017-10-20 Tingjun Yang : Tweak TrimEndPts so trajectory with 4 points won’t be killed.
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
-   2017-10-16 baller : Merge branch ‘develop’ into feature/bb\_TJWork
-   2017-10-13 baller : Merge branch ‘develop’ into feature/bb\_TJWork
-   2017-10-13 baller : Comment out new code for testing
-   2017-10-13 baller : Comment out new code for testing.
-   2017-10-13 baller : fixed bug

larsim v06\_33\_01
----------------------------------------

-   2017-10-31 Lynn Garren : larsim v06\_33\_01 for larsoft v06\_55\_01
-   2017-10-31 Gianluca Petrillo : PhotonLibrary does not allocate reflected photons unless requested.
-   2017-10-28 Jason Stock : These were breaking changes that should stay on their feature branch until the next release.
-   2017-10-27 Jason Stock : BackTrackerService was incorrectly named in one of the singles gen fcl files. This is corrected.
-   2017-10-27 Jason Stock : Changing use of TrackIdToParticle to use pointer.
-   2017-10-27 Jason Stock : Forgot to add the header for ParticleInventoryService to RecoCheck. Fixed
-   2017-10-27 Jason Stock : Patching RecoCheck module to use BackTrackerService
-   2017-10-27 Jason Stock : Fix to Check BackTracking Module (ParticleInventory implimentation).
-   2017-10-27 Jason Stock : Merge branch ‘develop’ of ssh://cdcvs.fnal.gov/cvs/projects/larsim into feature/JStock\_BackTrackerIntegratedUpdate
-   2017-10-26 Jason Stock : BackTracker Integrated Update. Pre Test 1

larevt v06\_16\_07
----------------------------------------

-   2017-10-31 Lynn Garren : larevt v06\_16\_07 for larsoft v06\_55\_01

lardata v06\_31\_03
------------------------------------------

-   2017-10-31 Lynn Garren : lardata v06\_31\_03 for larsoft v06\_55\_01
-   2017-10-30 Gianluca Petrillo : Removed legacy header lardata/Utilities/PtrMaker.h .
-   2017-10-26 Gianluca Petrillo : Changed internal initialisation of DetectorPropertiesStandard.
-   2017-10-26 Gianluca Petrillo : Removed old code.
-   2017-10-28 Jason Stock : This was a breaking change that should stay on it’s feature branch until the next release. Revert “BackTracker Update. Pre Test 1”
-   2017-10-27 Jason Stock : Merge branch ‘develop’ of ssh://cdcvs.fnal.gov/cvs/projects/lardata into feature/JStock\_BackTrackerIntegratedUpdate
-   2017-10-26 Jason Stock : BackTracker Update. Pre Test 1

larcore v06\_15\_04
------------------------------------------

-   2017-10-31 Lynn Garren : larcore v06\_15\_04 for larsoft v06\_55\_01

larpandoracontent v03\_08\_01
--------------------------------------------------------------

larsoftobj v1\_29\_02
----------------------------------------------

-   2017-10-31 Lynn Garren : larsoftobj v1\_29\_02 for larsoft v06\_55\_01
-   2017-10-31 Lynn Garren : update product versions

lardataobj v1\_21\_03
----------------------------------------------

-   2017-10-31 Lynn Garren : lardataobj v1\_21\_03 for larsoft v06\_55\_01

larcorealg v1\_09\_02
----------------------------------------------

-   2017-10-31 Lynn Garren : larcorealg v1\_09\_02 for larsoft v06\_55\_01
-   2017-10-25 Lynn Garren : larsoft v06\_55\_00
-   2017-10-25 Gianluca Petrillo : Increased the maximum GDML depth for search of geometry elements.

larcoreobj v1\_16\_02
----------------------------------------------

-   2017-10-31 Lynn Garren : larcoreobj v1\_16\_02 for larsoft v06\_55\_01
-   2017-10-30 Gianluca Petrillo : Repainted documentation.
-   2017-10-30 Gianluca Petrillo : Added speed of light in physical constants.
-   2017-10-24 Gianluca Petrillo : Channel ID turned into generic int type.

larbatch v01\_32\_06
--------------------------------------------

larutils v1\_20\_01
------------------------------------------
