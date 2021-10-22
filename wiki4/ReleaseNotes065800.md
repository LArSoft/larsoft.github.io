LArSoft v06\_58\_00 Release Notes[¶](#LArSoft-v06_58_00-Release-Notes)
======================================================================

-   **Table of contents**
-   [LArSoft v06\_58\_00 Release Notes](#LArSoft-v06_58_00-Release-Notes)
    -   [Purpose](#Purpose)
    -   [New features](#New-features)
    -   [Bug fixes](#Bug-fixes)
    -   [Updated dependencies](#Updated-dependencies)
-   [Change List](#Change-List)
    -   [larsoft v06\_58\_00](#larsoft-v06_58_00)
    -   [lareventdisplay v06\_15\_03](#lareventdisplay-v06_15_03)
    -   [larexamples v06\_07\_11](#larexamples-v06_07_11)
    -   [larpandora v06\_17\_08](#larpandora-v06_17_08)
    -   [larwirecell v06\_08\_05](#larwirecell-v06_08_05)
    -   [larana v06\_13\_00](#larana-v06_13_00)
    -   [larreco v06\_47\_00](#larreco-v06_47_00)
    -   [larsim v06\_36\_00](#larsim-v06_36_00)
    -   [larevt v06\_16\_10](#larevt-v06_16_10)
    -   [lardata v06\_33\_00](#lardata-v06_33_00)
    -   [larcore v06\_15\_06](#larcore-v06_15_06)
    -   [larpandoracontent v03\_08\_01](#larpandoracontent-v03_08_01)
    -   [larsoftobj v1\_31\_00](#larsoftobj-v1_31_00)
    -   [lardataobj v1\_22\_00](#lardataobj-v1_22_00)
    -   [larcorealg v1\_10\_00](#larcorealg-v1_10_00)
    -   [larcoreobj v1\_16\_02](#larcoreobj-v1_16_02)
    -   [larbatch v01\_34\_01](#larbatch-v01_34_01)
    -   [larutils v1\_20\_01](#larutils-v1_20_01)

[list of LArSoft releases](LArSoft_release_list)\
Download instructions for [larsoft v06\_58\_00](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v06_58_00/larsoft-v06_58_00.html)\
Download instructions for [just larsoftobj v1\_31\_00](http://scisoft.fnal.gov/scisoft/bundles/larsoftobj/v1_31_00/larsoftobj-v1_31_00.html)


Purpose[¶](#Purpose)
--------------------

-   changes in develop
-   updated BackTracker


New features[¶](#New-features)
------------------------------

-   redesigned BackTrackerService
    -   lardata, larana, larsim, larreco: feature/JStock\_BackTrackerIntegratedUpdate
    -   feature/JStock\_BackTrackerIntegratedUpdate is also available for argoneutcode, dunetpc, lariatsoft, sbndcode and uboonecode


Bug fixes[¶](#Bug-fixes)
------------------------

-   ifdhc v2\_2\_1 (found in larsoft v06\_57\_00) should not be used


Updated dependencies[¶](#Updated-dependencies)
----------------------------------------------

-   ifdhc v2\_2\_2
-   nutools v2\_16\_08


Change List[¶](#Change-List)
============================


larsoft v06\_58\_00[¶](#larsoft-v06_58_00)
------------------------------------------

-   2017-11-29 Lynn Garren : larsoft v06\_58\_00 for larsoft v06\_58\_00
-   2017-11-29 Lynn Garren : update product versions
-   2017-11-29 Lynn Garren : ifdh\_art v2\_04\_01 for ifdhc v2\_2\_2


lareventdisplay v06\_15\_03[¶](#lareventdisplay-v06_15_03)
----------------------------------------------------------

-   2017-11-29 Lynn Garren : lareventdisplay v06\_15\_03 for larsoft v06\_58\_00
-   2017-11-22 Lynn Garren : larsoft v06\_57\_00
-   2017-11-21 Tingjun Yang : Comment out check on space point chisq.


larexamples v06\_07\_11[¶](#larexamples-v06_07_11)
--------------------------------------------------

-   2017-11-29 Lynn Garren : larexamples v06\_07\_11 for larsoft v06\_58\_00


larpandora v06\_17\_08[¶](#larpandora-v06_17_08)
------------------------------------------------

-   2017-11-29 Lynn Garren : larpandora v06\_17\_08 for larsoft v06\_58\_00


larwirecell v06\_08\_05[¶](#larwirecell-v06_08_05)
--------------------------------------------------

-   2017-11-29 Lynn Garren : larwirecell v06\_08\_05 for larsoft v06\_58\_00


larana v06\_13\_00[¶](#larana-v06_13_00)
----------------------------------------

-   2017-11-29 Lynn Garren : larana v06\_13\_00 for larsoft v06\_58\_00
-   2017-11-28 Lynn Garren : Merge branch ‘feature/JStock\_BackTrackerIntegratedUpdate’ into release/v06\_58\_00
-   2017-11-15 Jason Stock : Merge commit ‘LARSOFT\_SUITE\_v06\_56\_01’ into feature/JStock\_BackTrackerIntegratedUpdate
-   2017-11-15 Jason Stock : quick fix
-   2017-11-11 Jason Stock : Merge tag ‘LARSOFT\_SUITE\_v06\_56\_00’ into feature/JStock\_BackTrackerIntegratedUpdate
-   2017-11-07 Jason Stock : Merge remote branch ‘origin/develop’ into feature/JStock\_BackTrackerIntegratedUpdate
-   2017-10-28 Jason Stock : Setting this branch back up for the BackTrackerService/ParticleInventoryService update.


larreco v06\_47\_00[¶](#larreco-v06_47_00)
------------------------------------------

-   2017-11-29 Lynn Garren : Merge branch ‘release/v06\_58\_00’
-   2017-11-29 Lynn Garren : pair larsim\_MCCheater\_ParticleInventoryService\_service with larsim\_MCCheater\_ParticleInventoryService\_service
-   2017-11-29 Lynn Garren : larreco v06\_47\_00 for larsoft v06\_58\_00
-   2017-11-29 Lynn Garren : larreco v06\_47\_00 for larsoft v06\_58\_00
-   2017-11-29 Lynn Garren : nutools v2\_16\_08 for ifdhc v2\_2\_2
-   2017-11-28 Lynn Garren : Merge branch ‘feature/JStock\_BackTrackerIntegratedUpdate’ into release/v06\_58\_00
-   2017-11-27 Robert Sulej : set patch padding to neutral value (zero-level after saturation and scalling), add function comments in the header
-   2017-11-25 Robert Sulej : Merge branch ‘develop’ of ssh://cdcvs.fnal.gov/cvs/projects/larreco into develop
-   2017-11-24 Robert Sulej : move patch making functions to data provider alg
-   2017-11-23 Christoph Alt : Added routine for cases where the hit fitter fails (e.g. returning nan as integral)
-   2017-11-16 Jason Stock : Corrected bt\_serv to pi\_serv in one instance.
-   2017-11-16 Jason Stock : Fixing new calls to backtracker
-   2017-11-15 Jason Stock : Merge commit ‘LARSOFT\_SUITE\_v06\_56\_01’ into feature/JStock\_BackTrackerIntegratedUpdate
-   2017-11-11 Jason Stock : Merge tag ‘LARSOFT\_SUITE\_v06\_56\_00’ into feature/JStock\_BackTrackerIntegratedUpdate
-   2017-11-07 Jason Stock : Merge remote branch ‘origin/develop’ into feature/JStock\_BackTrackerIntegratedUpdate
-   2017-10-30 Jason Stock : Fixed a couple ParticleInventory calls that were supposed to return pointers.
-   2017-10-30 Jason Stock : Merge remote branch ‘origin/develop’ into feature/JStock\_BackTrackerIntegratedUpdate
-   2017-10-28 Jason Stock : Re-setting up this branch for the BackTrackerService/ParticleInventoryService update


larsim v06\_36\_00[¶](#larsim-v06_36_00)
----------------------------------------

-   2017-11-29 Lynn Garren : larsim v06\_36\_00 for larsoft v06\_58\_00
-   2017-11-29 Lynn Garren : fix a typo
-   2017-11-28 Lynn Garren : Merge branch ‘feature/JStock\_BackTrackerIntegratedUpdate’ into release/v06\_58\_00
-   2017-11-24 Jost Migenda : fixed field description in comment
-   2017-11-21 Jason Stock : Fixing an issue preventing the backtracker from correctly returning pointers to IDEs inside a SimChannels object.
-   2017-11-19 Jason Stock : Update backtracker to pass event directly between prep functions. This is part of the non-lazy regression.
-   2017-11-19 Jason Stock : Making events get passed to various functions to continue to try and circumvent event caching for now.
-   2017-11-16 Jason Stock : Quick fixes to catch failures of rebuild (reverting to the old backtracker functionality). It isn’t pretty, but it will work until we resolve the lazy rebuild needs.
-   2017-11-16 Jason Stock : Temporarily blocking some backtracker functions that don’t work well without lazy loading.
-   2017-11-15 Jason Stock : Merge commit ‘LARSOFT\_SUITE\_v06\_56\_01’ into feature/JStock\_BackTrackerIntegratedUpdate
-   2017-11-15 Jason Stock : Merge remote-tracking branch ‘remotes/origin/feature/JStock\_BackTrackerIntegratedUpdate’ into feature/JStock\_BackTrackerNoLazyUpdate
-   2017-11-14 Jason Stock : Merge remote-tracking branch ‘origin/feature/JStock\_BackTrackerNoLazyUpdate’ into feature/JStock\_BackTrackerIntegratedUpdate
-   2017-11-14 Jason Stock : Adding in rebuild to backtracker and particleinventory for non-lazy backtracking prep.
-   2017-11-14 Jason Stock : Removed default copy operators from the backtracking service providers. Cleaned up some code to my liking.
-   2017-11-12 Jason Stock : Changing Particle Inventoty to use a private class for it’s service provider
-   2017-11-12 Jason Stock : Update to BackTracker to use a private class instead of a member for the service provider. This allows the structure to more closely follow the other services.
-   2017-11-12 Jason Stock : Re-adding in backtracker\_loader
-   2017-11-12 Jason Stock : Making the BackTrackerService use a private inheritance class to allow the use of provider to conform to other use cases in larsoft.
-   2017-11-12 Jason Stock : Changed ParticleInventory to use private inheritance instead of a member function (this allows the use of the provider function to conform to other use cases in larsoft.
-   2017-11-11 Jason Stock : Merge tag ‘LARSOFT\_SUITE\_v06\_56\_00’ into feature/JStock\_BackTrackerIntegratedUpdate
-   2017-11-07 Jason Stock : Merge branch ‘feature/JStock\_BackTrackerIntegratedUpdate’ of ssh://cdcvs.fnal.gov/cvs/projects/larsim into feature/JStock\_BackTrackerIntegratedUpdate
-   2017-11-07 Jason Stock : Merge branch ‘feature/JStock\_BackTrackerIntegratedUpdate’ of ssh://cdcvs.fnal.gov/cvs/projects/larsim into feature/JStock\_BackTrackerIntegratedUpdate
-   2017-11-07 Jason Stock : Merge remote branch ‘origin/develop’ into feature/JStock\_BackTrackerIntegratedUpdate
-   2017-11-07 Jason Stock : Merge remote branch ‘origin/develop’ into feature/JStock\_BackTrackerIntegratedUpdate
-   2017-11-07 Jason Stock : Merge remote branch ‘origin/develop’ into feature/JStock\_BackTrackerIntegratedUpdate
-   2017-11-07 Jason Stock : Merge remote branch ‘origin/develop’ into feature/JStock\_BackTrackerIntegratedUpdate
-   2017-11-01 Jason Stock : Making a few best practices changes at Gianluca’s advice. (Removal of destructors)
-   2017-11-01 Jason Stock : Correction to the getByHandle functions in the backtracker and particle inventory for prepping the BT Cache
-   2017-10-31 Jason Stock : Correcting qualifiers on functions adjusted in the last commit
-   2017-10-30 Jason Stock : Adding in prep for ParticleLists in ParticleInventoryService
-   2017-10-30 Jason Stock : Bug Fix. SimChannels could be called without prepping the SimChannels through the BackTracker.
-   2017-10-30 Jason Stock : Changing template file names to match an extension cet can interpret (tpp -\> tcc)
-   2017-10-30 Jason Stock : Updates to fhicl validation in BackTrackerService and ParticleInventoryService.
-   2017-10-29 Jason Stock : Adding Particle Inventory to appropriate fcl files.
-   2017-10-28 Jason Stock : Fixing backtracker fcl file.
-   2017-10-28 Jason Stock : Setting this branch back up for the BackTrackerService/ParticleInventoryService update.


larevt v06\_16\_10[¶](#larevt-v06_16_10)
----------------------------------------

-   2017-11-29 Lynn Garren : larevt v06\_16\_10 for larsoft v06\_58\_00


lardata v06\_33\_00[¶](#lardata-v06_33_00)
------------------------------------------

-   2017-11-29 Lynn Garren : lardata v06\_33\_00 for larsoft v06\_58\_00
-   2017-11-29 Lynn Garren : nutools v2\_16\_08 for ifdhc v2\_2\_2
-   2017-11-29 Lynn Garren : path for doxygen
-   2017-11-28 Lynn Garren : Merge branch ‘feature/JStock\_BackTrackerIntegratedUpdate’ into release/v06\_58\_00
-   2017-11-11 Jason Stock : Merge tag ‘LARSOFT\_SUITE\_v06\_56\_00’ into feature/JStock\_BackTrackerIntegratedUpdate
-   2017-11-07 Jason Stock : Merge remote branch ‘origin/develop’ into feature/JStock\_BackTrackerIntegratedUpdate
-   2017-10-30 Jason Stock : spacing fix.
-   2017-10-30 Jason Stock : Merge remote branch ‘origin/develop’ into feature/JStock\_BackTrackerIntegratedUpdate
-   2017-10-28 Jason Stock : Setting this branch back up for the BackTrackerService/ParticleInventoryService update


larcore v06\_15\_06[¶](#larcore-v06_15_06)
------------------------------------------


larpandoracontent v03\_08\_01[¶](#larpandoracontent-v03_08_01)
--------------------------------------------------------------


larsoftobj v1\_31\_00[¶](#larsoftobj-v1_31_00)
----------------------------------------------


lardataobj v1\_22\_00[¶](#lardataobj-v1_22_00)
----------------------------------------------


larcorealg v1\_10\_00[¶](#larcorealg-v1_10_00)
----------------------------------------------


larcoreobj v1\_16\_02[¶](#larcoreobj-v1_16_02)
----------------------------------------------


larbatch v01\_34\_01[¶](#larbatch-v01_34_01)
--------------------------------------------

-   2017-11-29 Lynn Garren : larbatch v01\_34\_01 for larsoft v06\_58\_00
-   2017-11-27 Herbert Greenlee : Allow \<previousstage\> to work sensibly with base stage.


larutils v1\_20\_01[¶](#larutils-v1_20_01)
------------------------------------------
