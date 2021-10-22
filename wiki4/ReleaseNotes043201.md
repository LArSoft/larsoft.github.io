LArSoft v04\_32\_01 Release Notes[¶](#LArSoft-v04_32_01-Release-Notes)
======================================================================

-   **Table of contents**
-   [LArSoft v04\_32\_01 Release Notes](#LArSoft-v04_32_01-Release-Notes)
    -   [Purpose](#Purpose)
    -   [New features](#New-features)
    -   [Bug fixes](#Bug-fixes)
    -   [Updated dependencies](#Updated-dependencies)
-   [Change List](#Change-List)
    -   [larsoft v04\_32\_01](#larsoft-v04_32_01)
    -   [lareventdisplay v04\_13\_03](#lareventdisplay-v04_13_03)
    -   [larexamples v04\_06\_10](#larexamples-v04_06_10)
    -   [larpandora v04\_09\_01](#larpandora-v04_09_01)
    -   [larana v04\_16\_08](#larana-v04_16_08)
    -   [larreco v04\_27\_01](#larreco-v04_27_01)
    -   [larsim v04\_17\_01](#larsim-v04_17_01)
    -   [larevt v04\_14\_00](#larevt-v04_14_00)
    -   [lardata v04\_19\_04](#lardata-v04_19_04)
    -   [larcore v04\_24\_00](#larcore-v04_24_00)
    -   [larbatch v01\_20\_02](#larbatch-v01_20_02)
    -   [larutils v1\_04\_06](#larutils-v1_04_06)

[list of LArSoft releases](LArSoft_release_list)\
[Download instructions](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v04_32_01/larsoft-v04_32_01.html)


Purpose[¶](#Purpose)
--------------------

-   weekly release


New features[¶](#New-features)
------------------------------

-   larevt feature/eberly\_SIOVarrays
-   larcore feature/gp\_LocateVolumeByName
-   larsim feature/mibass\_LArG4KeepByVolume


Bug fixes[¶](#Bug-fixes)
------------------------


Updated dependencies[¶](#Updated-dependencies)
----------------------------------------------

  ----------- ------------ ------------ -------
  Product     Version      Qualifiers   Notes
  ifdhc       v1\_8\_8     e9:p2710     
  ifdh\_art   v1\_14\_05   e9:nu:s26    
  nutools     v1\_19\_00   e9           
  ----------- ------------ ------------ -------


Change List[¶](#Change-List)
============================


larsoft v04\_32\_01[¶](#larsoft-v04_32_01)
------------------------------------------

-   2016-01-06 Lynn Garren : larsoft v04\_32\_01 for larsoft v04\_32\_01
-   2016-01-06 Lynn Garren : update product versions
-   2016-01-06 Lynn Garren : larsoft v04\_32\_00 for larsoft v04\_32\_00
-   2016-01-06 Lynn Garren : update product versions
-   2016-01-06 Lynn Garren : update dependency database


lareventdisplay v04\_13\_03[¶](#lareventdisplay-v04_13_03)
----------------------------------------------------------

-   2016-01-06 Lynn Garren : lareventdisplay v04\_13\_03 for larsoft v04\_32\_01
-   2016-01-06 Lynn Garren : lareventdisplay v04\_13\_02 for larsoft v04\_32\_00


larexamples v04\_06\_10[¶](#larexamples-v04_06_10)
--------------------------------------------------

-   2016-01-06 Lynn Garren : larexamples v04\_06\_10 for larsoft v04\_32\_01
-   2016-01-06 Lynn Garren : larexamples v04\_06\_09 for larsoft v04\_32\_00


larpandora v04\_09\_01[¶](#larpandora-v04_09_01)
------------------------------------------------

-   2016-01-06 Lynn Garren : larpandora v04\_09\_01 for larsoft v04\_32\_01
-   2016-01-06 Lynn Garren : larpandora v04\_09\_00 for larsoft v04\_32\_00
-   2015-12-21 Andrew Blake : Merging in ‘feature/blake\_separatePackages’ branch, which separates MicroBooNE-specific code into its own package (I plan to propagagate this into uboonecode, where it belongs!). I’ve also tidied the analyzer modules into their own package. What remains in the LArPandoraInterface package is the generic code that interfaces with Pandora.
-   2015-12-21 Andrew Blake : Add two additional packages: LArPandoraAnalysis and MicroBooNEPandora
-   2015-12-21 Andrew Blake : Move analyzer modules and MicroBooNE-specific code to separate packages, just leaving the generic code that interfaces with Pandora
-   2015-12-21 Andrew Blake : Move all MicroBooNE-specific code into a separate package - this package is intended for uboonecode
-   2015-12-21 Andrew Blake : Move (increasing number of) analyzer modules into a separate package
-   2015-12-21 Andrew Blake : Adding information on neutrino PFParticle to monitoring ntuple (wasn’t there before)


larana v04\_16\_08[¶](#larana-v04_16_08)
----------------------------------------

-   2016-01-06 Lynn Garren : larana v04\_16\_08 for larsoft v04\_32\_01
-   2016-01-06 Lynn Garren : larana v04\_16\_07 for larsoft v04\_32\_00
-   2015-12-22 Alex Himmel : Merge branch ‘feature/aih\_dynamic\_flash\_range’ into develop
-   2015-12-21 Alex Himmel : Remove the commented out previous code.
-   2015-12-21 Alex Himmel : Remove the TimeService::TriggerTime() (returns 0 in DUNE) from consideration when determining the minimum flash time in an event. When flash timestamps are absolute times instead of relative times this causes impossibly large vectors to be reserved, resulting in crashes.


larreco v04\_27\_01[¶](#larreco-v04_27_01)
------------------------------------------

-   2016-01-06 Lynn Garren : larreco v04\_27\_01 for larsoft v04\_32\_01
-   2016-01-06 Lynn Garren : larreco v04\_27\_00 for larsoft v04\_32\_00
-   2016-01-03 Robert Sulej : more protection for single segment building functions
-   2015-12-21 Tingjun Yang : A small change to make it not crash often on single TPC.
-   2015-12-21 Mike Wallbank : Fixed a couple of bugs and set default values for some fhicl parameters. NB: these parameters are for debugging purposes only, they have no use in standard running\\! When the module is completely finishing they’ll be removed
-   2015-12-20 Mike Wallbank : Mostly-working algorithm – get pi0s \~70% of the time. Ready to merge into develop\\!
-   2015-12-20 Mike Wallbank : Add new EMShower alg to the version merged with develop
-   2015-12-20 Mike Wallbank : New files from develop
-   2015-12-20 Mike Wallbank : Reverting back to cluster crawler in develop
-   2015-12-20 Mike Wallbank : More improvements to the EMShower algoirthm. Methods for constructing the track at the correct end of the shower have been improved
-   2015-12-16 Mike Wallbank : Improvements have reached the stage of almost working. Have demonstrated the new rewrite works\\! Tomorrow I will generalise as much as possible to make it work for (hopefully) most events. Then I can finally merge back into develop\\!
-   2015-12-14 Mike Wallbank : More attempts at improving the shower direction
-   2015-12-11 Mike Wallbank : Updates
-   2015-12-10 Mike Wallbank : Updates to branch
-   2015-12-10 Mike Wallbank : Updates to cluster crawler for my branch
-   2015-12-10 Mike Wallbank : …and back to the changed versions
-   2015-12-10 Mike Wallbank : Merge branch ‘develop’ into feature/wallbank\_EMShowerImprovements
-   2015-12-10 Mike Wallbank : Reverted back to develop to try and resolve the problems with linecluster
-   2015-12-10 Mike Wallbank : Updates
-   2015-12-09 Mike Wallbank : Rewriting on the showering module
-   2015-12-08 Mike Wallbank : Improvements in the shower property finding


larsim v04\_17\_01[¶](#larsim-v04_17_01)
----------------------------------------

-   2016-01-06 Lynn Garren : larsim v04\_17\_01 for larsoft v04\_32\_01
-   2016-01-06 Lynn Garren : larsim v04\_17\_00 for larsoft v04\_32\_00
-   2016-01-06 Matthew Bass : Merge branch ‘feature/mibass\_LArG4KeepByVolume’ of ssh://cdcvs.fnal.gov/cvs/projects/larsim into feature/mibass\_LArG4KeepByVolume
-   2016-01-06 Matthew Bass : Further tuning for KeepParticlesInVolumes and code cleanup.
-   2016-01-03 Matthew Bass : Implemented auto-retrieval of WorldToLocal volume/node info.
-   2015-11-25 Matthew Bass : Added root geometry lib.
-   2015-11-25 Matthew Bass : Added fcl parameters and code to keep MCParticles that intersect volume(s)
-   2016-01-03 Matthew Bass : Implemented auto-retrieval of WorldToLocal volume/node info.
-   2016-01-03 Matthew Bass : Merge branch ‘feature/mibass\_LArG4KeepByVolume’ of ssh://cdcvs.fnal.gov/cvs/projects/larsim into feature/mibass\_LArG4KeepByVolume
-   2015-11-25 Matthew Bass : Added root geometry lib.
-   2015-11-25 Matthew Bass : Added fcl parameters and code to keep MCParticles that intersect volume(s)
-   2015-12-24 Katherine Woodruff : Merge branch ‘feature/kwoodruf\_cryoEvents’ into develop
-   2015-12-24 Katherine Woodruff : Change cryostat filter default to false
-   2015-12-21 Gabriel Santucci : changes to NDKGen\_module.cc to make it compatible with newer GENIE output
-   2015-11-25 Matthew Bass : Added root geometry lib.
-   2015-11-25 Matthew Bass : Added fcl parameters and code to keep MCParticles that intersect volume(s)
-   2015-11-19 Katherine Woodruff : Change dirt filter default to keep cryostat events
-   2015-11-18 Katherine Woodruff : Fixed dirt filter loop
-   2015-11-12 Katherine Woodruff : Change cryostat from cylinder to box
-   2015-11-11 Katherine Woodruff : Add option to save dirt events that enter cryostat


larevt v04\_14\_00[¶](#larevt-v04_14_00)
----------------------------------------

-   2016-01-06 Lynn Garren : larevt v04\_14\_00 for larsoft v04\_32\_01
-   2016-01-06 Lynn Garren : Merge branch ‘feature/eberly\_SIOVarrays’ into release/v04\_32\_00
-   2016-01-06 Lynn Garren : larevt v04\_13\_09 for larsoft v04\_32\_00
-   2015-12-17 Brandon Eberly : Work around a bug in libwda
-   2015-12-16 Brandon Eberly : Can now retrieve double arrays from database


lardata v04\_19\_04[¶](#lardata-v04_19_04)
------------------------------------------

-   2016-01-06 Lynn Garren : lardata v04\_19\_04 for larsoft v04\_32\_00


larcore v04\_24\_00[¶](#larcore-v04_24_00)
------------------------------------------

-   2016-01-06 Lynn Garren : larcore v04\_24\_00 for larsoft v04\_32\_00
-   2016-01-06 Lynn Garren : Merge branch ‘feature/gp\_LocateVolumeByName’ into release/v04\_32\_00
-   2015-12-18 Gianluca Petrillo : Merge remote-tracking branch ‘origin’ into feature/gp\_LocateVolumeByName
-   2015-12-07 Gianluca Petrillo : Added geometry function to return geometry nodes with their full path by exact volume name
-   2015-12-04 Gianluca Petrillo : Added geometry function to locate volumes by name (and its test)


larbatch v01\_20\_02[¶](#larbatch-v01_20_02)
--------------------------------------------

-   2016-01-06 Lynn Garren : Merge branch ‘release/v04\_32\_00’
-   2015-12-28 Herbert Greenlee : Update product\_deps for v01\_20\_02.
-   2015-12-21 Herbert Greenlee : Don’t call function addLayerTwo if we are sure that the file is not empty.
-   2015-12-21 Herbert Greenlee : Don’t do layer two check for stream output lists.
-   2015-12-21 Herbert Greenlee : Merge branch ‘develop’ of ssh://cdcvs.fnal.gov/cvs/projects/larbatch into develop
-   2015-12-21 Herbert Greenlee : Add informative message when project.py adds layer two for a file in dCache.


larutils v1\_04\_06[¶](#larutils-v1_04_06)
------------------------------------------

-   2016-01-06 Lynn Garren : larutils v1\_04\_06 for larsoft v04\_32\_00
-   2016-01-06 Lynn Garren : using nutools v1\_19\_00
-   2015-12-21 Lynn Garren : for s26
-   2015-12-21 Lynn Garren : more cleanup
