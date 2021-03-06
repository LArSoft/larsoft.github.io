# LArSoft v06_58_00 Release Notes



[list of LArSoft releases](LArSoft_release_list)  
Download instructions for [larsoft v06_58_00](https://scisoft.fnal.gov/scisoft/bundles/larsoft/v06_58_00/larsoft-v06_58_00.html)  
Download instructions for [just larsoftobj v1_31_00](https://scisoft.fnal.gov/scisoft/bundles/larsoftobj/v1_31_00/larsoftobj-v1_31_00.html)

## Purpose

-   changes in develop
-   updated BackTracker

## New features

-   redesigned BackTrackerService
    -   lardata, larana, larsim, larreco: feature/JStock_BackTrackerIntegratedUpdate
    -   feature/JStock_BackTrackerIntegratedUpdate is also available for argoneutcode, dunetpc, lariatsoft, sbndcode and uboonecode

## Bug fixes

-   ifdhc v2_2_1 (found in larsoft v06_57_00) should not be used

## Updated dependencies

-   ifdhc v2_2_2
-   nutools v2_16_08

# Change List

## larsoft v06_58_00

-   2017-11-29 Lynn Garren : larsoft v06_58_00 for larsoft v06_58_00
-   2017-11-29 Lynn Garren : update product versions
-   2017-11-29 Lynn Garren : ifdh_art v2_04_01 for ifdhc v2_2_2

## lareventdisplay v06_15_03

-   2017-11-29 Lynn Garren : lareventdisplay v06_15_03 for larsoft v06_58_00
-   2017-11-22 Lynn Garren : larsoft v06_57_00
-   2017-11-21 Tingjun Yang : Comment out check on space point chisq.

## larexamples v06_07_11

-   2017-11-29 Lynn Garren : larexamples v06_07_11 for larsoft v06_58_00

## larpandora v06_17_08

-   2017-11-29 Lynn Garren : larpandora v06_17_08 for larsoft v06_58_00

## larwirecell v06_08_05

-   2017-11-29 Lynn Garren : larwirecell v06_08_05 for larsoft v06_58_00

## larana v06_13_00

-   2017-11-29 Lynn Garren : larana v06_13_00 for larsoft v06_58_00
-   2017-11-28 Lynn Garren : Merge branch 'feature/JStock_BackTrackerIntegratedUpdate' into release/v06_58_00
-   2017-11-15 Jason Stock : Merge commit 'LARSOFT_SUITE_v06_56_01' into feature/JStock_BackTrackerIntegratedUpdate
-   2017-11-15 Jason Stock : quick fix
-   2017-11-11 Jason Stock : Merge tag 'LARSOFT_SUITE_v06_56_00' into feature/JStock_BackTrackerIntegratedUpdate
-   2017-11-07 Jason Stock : Merge remote branch 'origin/develop' into feature/JStock_BackTrackerIntegratedUpdate
-   2017-10-28 Jason Stock : Setting this branch back up for the BackTrackerService/ParticleInventoryService update.

## larreco v06_47_00

-   2017-11-29 Lynn Garren : Merge branch 'release/v06_58_00'
-   2017-11-29 Lynn Garren : pair larsim_MCCheater_ParticleInventoryService_service with larsim_MCCheater_ParticleInventoryService_service
-   2017-11-29 Lynn Garren : larreco v06_47_00 for larsoft v06_58_00
-   2017-11-29 Lynn Garren : larreco v06_47_00 for larsoft v06_58_00
-   2017-11-29 Lynn Garren : nutools v2_16_08 for ifdhc v2_2_2
-   2017-11-28 Lynn Garren : Merge branch 'feature/JStock_BackTrackerIntegratedUpdate' into release/v06_58_00
-   2017-11-27 Robert Sulej : set patch padding to neutral value (zero-level after saturation and scalling), add function comments in the header
-   2017-11-25 Robert Sulej : Merge branch 'develop' of ssh://cdcvs.fnal.gov/cvs/projects/larreco into develop
-   2017-11-24 Robert Sulej : move patch making functions to data provider alg
-   2017-11-23 Christoph Alt : Added routine for cases where the hit fitter fails (e.g. returning nan as integral)
-   2017-11-16 Jason Stock : Corrected bt_serv to pi_serv in one instance.
-   2017-11-16 Jason Stock : Fixing new calls to backtracker
-   2017-11-15 Jason Stock : Merge commit 'LARSOFT_SUITE_v06_56_01' into feature/JStock_BackTrackerIntegratedUpdate
-   2017-11-11 Jason Stock : Merge tag 'LARSOFT_SUITE_v06_56_00' into feature/JStock_BackTrackerIntegratedUpdate
-   2017-11-07 Jason Stock : Merge remote branch 'origin/develop' into feature/JStock_BackTrackerIntegratedUpdate
-   2017-10-30 Jason Stock : Fixed a couple ParticleInventory calls that were supposed to return pointers.
-   2017-10-30 Jason Stock : Merge remote branch 'origin/develop' into feature/JStock_BackTrackerIntegratedUpdate
-   2017-10-28 Jason Stock : Re-setting up this branch for the BackTrackerService/ParticleInventoryService update

## larsim v06_36_00

-   2017-11-29 Lynn Garren : larsim v06_36_00 for larsoft v06_58_00
-   2017-11-29 Lynn Garren : fix a typo
-   2017-11-28 Lynn Garren : Merge branch 'feature/JStock_BackTrackerIntegratedUpdate' into release/v06_58_00
-   2017-11-24 Jost Migenda : fixed field description in comment
-   2017-11-21 Jason Stock : Fixing an issue preventing the backtracker from correctly returning pointers to IDEs inside a SimChannels object.
-   2017-11-19 Jason Stock : Update backtracker to pass event directly between prep functions. This is part of the non-lazy regression.
-   2017-11-19 Jason Stock : Making events get passed to various functions to continue to try and circumvent event caching for now.
-   2017-11-16 Jason Stock : Quick fixes to catch failures of rebuild (reverting to the old backtracker functionality). It isn't pretty, but it will work until we resolve the lazy rebuild needs.
-   2017-11-16 Jason Stock : Temporarily blocking some backtracker functions that don't work well without lazy loading.
-   2017-11-15 Jason Stock : Merge commit 'LARSOFT_SUITE_v06_56_01' into feature/JStock_BackTrackerIntegratedUpdate
-   2017-11-15 Jason Stock : Merge remote-tracking branch 'remotes/origin/feature/JStock_BackTrackerIntegratedUpdate' into feature/JStock_BackTrackerNoLazyUpdate
-   2017-11-14 Jason Stock : Merge remote-tracking branch 'origin/feature/JStock_BackTrackerNoLazyUpdate' into feature/JStock_BackTrackerIntegratedUpdate
-   2017-11-14 Jason Stock : Adding in rebuild to backtracker and particleinventory for non-lazy backtracking prep.
-   2017-11-14 Jason Stock : Removed default copy operators from the backtracking service providers. Cleaned up some code to my liking.
-   2017-11-12 Jason Stock : Changing Particle Inventoty to use a private class for it's service provider
-   2017-11-12 Jason Stock : Update to BackTracker to use a private class instead of a member for the service provider. This allows the structure to more closely follow the other services.
-   2017-11-12 Jason Stock : Re-adding in backtracker_loader
-   2017-11-12 Jason Stock : Making the BackTrackerService use a private inheritance class to allow the use of provider to conform to other use cases in larsoft.
-   2017-11-12 Jason Stock : Changed ParticleInventory to use private inheritance instead of a member function (this allows the use of the provider function to conform to other use cases in larsoft.
-   2017-11-11 Jason Stock : Merge tag 'LARSOFT_SUITE_v06_56_00' into feature/JStock_BackTrackerIntegratedUpdate
-   2017-11-07 Jason Stock : Merge branch 'feature/JStock_BackTrackerIntegratedUpdate' of ssh://cdcvs.fnal.gov/cvs/projects/larsim into feature/JStock_BackTrackerIntegratedUpdate
-   2017-11-07 Jason Stock : Merge branch 'feature/JStock_BackTrackerIntegratedUpdate' of ssh://cdcvs.fnal.gov/cvs/projects/larsim into feature/JStock_BackTrackerIntegratedUpdate
-   2017-11-07 Jason Stock : Merge remote branch 'origin/develop' into feature/JStock_BackTrackerIntegratedUpdate
-   2017-11-07 Jason Stock : Merge remote branch 'origin/develop' into feature/JStock_BackTrackerIntegratedUpdate
-   2017-11-07 Jason Stock : Merge remote branch 'origin/develop' into feature/JStock_BackTrackerIntegratedUpdate
-   2017-11-07 Jason Stock : Merge remote branch 'origin/develop' into feature/JStock_BackTrackerIntegratedUpdate
-   2017-11-01 Jason Stock : Making a few best practices changes at Gianluca's advice. (Removal of destructors)
-   2017-11-01 Jason Stock : Correction to the getByHandle functions in the backtracker and particle inventory for prepping the BT Cache
-   2017-10-31 Jason Stock : Correcting qualifiers on functions adjusted in the last commit
-   2017-10-30 Jason Stock : Adding in prep for ParticleLists in ParticleInventoryService
-   2017-10-30 Jason Stock : Bug Fix. SimChannels could be called without prepping the SimChannels through the BackTracker.
-   2017-10-30 Jason Stock : Changing template file names to match an extension cet can interpret (tpp -\> tcc)
-   2017-10-30 Jason Stock : Updates to fhicl validation in BackTrackerService and ParticleInventoryService.
-   2017-10-29 Jason Stock : Adding Particle Inventory to appropriate fcl files.
-   2017-10-28 Jason Stock : Fixing backtracker fcl file.
-   2017-10-28 Jason Stock : Setting this branch back up for the BackTrackerService/ParticleInventoryService update.

## larevt v06_16_10

-   2017-11-29 Lynn Garren : larevt v06_16_10 for larsoft v06_58_00

## lardata v06_33_00

-   2017-11-29 Lynn Garren : lardata v06_33_00 for larsoft v06_58_00
-   2017-11-29 Lynn Garren : nutools v2_16_08 for ifdhc v2_2_2
-   2017-11-29 Lynn Garren : path for doxygen
-   2017-11-28 Lynn Garren : Merge branch 'feature/JStock_BackTrackerIntegratedUpdate' into release/v06_58_00
-   2017-11-11 Jason Stock : Merge tag 'LARSOFT_SUITE_v06_56_00' into feature/JStock_BackTrackerIntegratedUpdate
-   2017-11-07 Jason Stock : Merge remote branch 'origin/develop' into feature/JStock_BackTrackerIntegratedUpdate
-   2017-10-30 Jason Stock : spacing fix.
-   2017-10-30 Jason Stock : Merge remote branch 'origin/develop' into feature/JStock_BackTrackerIntegratedUpdate
-   2017-10-28 Jason Stock : Setting this branch back up for the BackTrackerService/ParticleInventoryService update

## larcore v06_15_06

## larpandoracontent v03_08_01

## larsoftobj v1_31_00

## lardataobj v1_22_00

## larcorealg v1_10_00

## larcoreobj v1_16_02

## larbatch v01_34_01

-   2017-11-29 Lynn Garren : larbatch v01_34_01 for larsoft v06_58_00
-   2017-11-27 Herbert Greenlee : Allow &lt;previousstage&amp;gt; to work sensibly with base stage.

## larutils v1_20_01
