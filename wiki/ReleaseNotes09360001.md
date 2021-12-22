LArSoft v09\_36\_00\_01 Release Notes(#LArSoft-v09_36_00_01-Release-Notes)
=============================================================================

-   **Table of contents**
-   [LArSoft v09\_36\_00\_01 Release Notes](#LArSoft-v09_36_00_01-Release-Notes)
    -   [Purpose](#Purpose)
    -   [Known issues](#Known-issues)
    -   [Updated dependencies](#Updated-dependencies)
-   [Change List](#Change-List)
    -   [larsoft v09\_36\_00\_01](#larsoft-v09_36_00_01)
    -   [lareventdisplay v09\_02\_06\_01](#lareventdisplay-v09_02_06_01)
    -   [larexamples v09\_02\_06\_01](#larexamples-v09_02_06_01)
    -   [larpandora v09\_10\_00\_01](#larpandora-v09_10_00_01)
    -   [larsimrad v09\_03\_05\_01](#larsimrad-v09_03_05_01)
    -   [larrecodnn v09\_09\_07\_01](#larrecodnn-v09_09_07_01)
    -   [larwirecell v09\_04\_04\_01](#larwirecell-v09_04_04_01)
    -   [larana v09\_03\_07\_01](#larana-v09_03_07_01)
    -   [larreco v09\_07\_06\_01](#larreco-v09_07_06_01)
    -   [larsim v09\_18\_01\_01](#larsim-v09_18_01_01)
    -   [larg4 v09\_06\_01\_01](#larg4-v09_06_01_01)
    -   [larevt v09\_03\_04\_01](#larevt-v09_03_04_01)
    -   [lardata v09\_04\_01\_01](#lardata-v09_04_01_01)
    -   [larcore v09\_03\_01\_01](#larcore-v09_03_01_01)
    -   [larsoftobj v09\_11\_01\_01](#larsoftobj-v09_11_01_01)
    -   [lardataobj v09\_03\_04\_01](#lardataobj-v09_03_04_01)
    -   [lardataalg v09\_07\_01\_01](#lardataalg-v09_07_01_01)
    -   [larcorealg v09\_03\_01\_01](#larcorealg-v09_03_01_01)
    -   [larcoreobj v09\_03\_01\_01](#larcoreobj-v09_03_01_01)
    -   [webevd v09\_06\_04\_01](#webevd-v09_06_04_01)

[list of LArSoft releases](LArSoft_release_list)\
Download instructions for [larsoft v09\_36\_00\_01](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v09_36_00_01/larsoft-v09_36_00_01.html)\
Download instructions for [just larsoftobj v09\_11\_01\_01](http://scisoft.fnal.gov/scisoft/bundles/larsoftobj/v09_11_01_01/larsoftobj-v09_11_01_01.html)

Purpose(#Purpose)
--------------------

-   **TEST RELEASE**
-   Requested at the [Nov. 2 larsoft coordination meeting](https://indico.fnal.gov/event/51726/contributions/227303/attachments/148868/191433/larsoft_mcc10_nov2_2021.pdf)
-   this release is on the v09\_36\_00\_br branch

Known issues(#Known-issues)
------------------------------

Since this release is based on larsoft v09\_36\_00, it has the same larana defect as v09\_36\_00.

-   Unexplained OpHit / OpFlash product differences in SBND CI tests following larana\#14
    -   [\#26421](/redmine/issues/26421 "Bug: Unexplained OpHit / OpFlash product differences in SBND CI tests following larana#14 (Assigned)")
    -   [https://github.com/SBNSoftware/sbndcode/issues/213](https://github.com/SBNSoftware/sbndcode/issues/213)
    -   Note that this issue has nothing to do with the updates in this test release.

Updated dependencies(#Updated-dependencies)
----------------------------------------------

Change List(#Change-List)
============================

larsoft v09\_36\_00\_01(#larsoft-v09_36_00_01)
-------------------------------------------------

-   2021-11-12 Lynn Garren : larsoft v09\_36\_00\_01 for larsoft v09\_36\_00\_01
-   2021-11-12 Lynn Garren : larsoft v09\_36\_00\_01 for larsoft v09\_36\_00\_01
-   2021-11-12 Lynn Garren : product versions

lareventdisplay v09\_02\_06\_01(#lareventdisplay-v09_02_06_01)
-----------------------------------------------------------------

-   2021-11-12 Lynn Garren : lareventdisplay v09\_02\_06\_01 for larsoft v09\_36\_00\_01
-   2021-11-12 Lynn Garren : lareventdisplay v09\_02\_06\_01 for larsoft v09\_36\_00\_01
-   2021-11-11 Lynn Garren : Merge branch ‘greenlee\_mcc9\_pid’ into v09\_36\_00\_br
-   2021-10-22 Herbert Greenlee : Merge branch ‘develop’ into greenlee\_mcc9\_pid
-   2021-10-08 Herbert Greenlee : Merge remote-tracking branch ‘origin/greenlee\_mcc9\_pid’ into develop
-   2019-01-14 Adam : removing PID from event display

larexamples v09\_02\_06\_01(#larexamples-v09_02_06_01)
---------------------------------------------------------

-   2021-11-12 Lynn Garren : larexamples v09\_02\_06\_01 for larsoft v09\_36\_00\_01
-   2021-11-12 Lynn Garren : larexamples v09\_02\_06\_01 for larsoft v09\_36\_00\_01

larpandora v09\_10\_00\_01(#larpandora-v09_10_00_01)
-------------------------------------------------------

-   2021-11-12 Lynn Garren : larpandora v09\_10\_00\_01 for larsoft v09\_36\_00\_01
-   2021-11-12 Lynn Garren : larpandora v09\_10\_00\_01 for larsoft v09\_36\_00\_01
-   2021-11-11 Lynn Garren : Merge branch ‘greenlee\_mcc9\_event\_building’ into v09\_36\_00\_br
-   2021-10-22 Herbert Greenlee : Merge remote-tracking branch ‘upstream/develop’ into greenlee\_mcc9\_event\_building
-   2021-10-12 Herbert Greenlee : Update CMakeLists.txt for mrb 5.
-   2021-10-12 Herbert Greenlee : Merge branch ‘develop’ into greenlee\_mcc9\_event\_building
-   2021-10-12 Herbert Greenlee : Merge branch ‘greenlee\_mcc9\_event\_building’ of github.com:uboone/larpandora into greenlee\_mcc9\_event\_building
-   2021-10-12 Herbert Greenlee : Merge remote-tracking branch ‘uboone/greenlee\_mcc9\_event\_building’ into develop
-   2021-07-23 Herbert Greenlee : Fix compilation errors.
-   2019-02-14 Andrew Smith : Removed POT counting from external event building
-   2019-02-14 Andrew Smith : Fixed some whitespace issues
-   2019-02-13 Andrew Smith : added test directory to check fcl files
-   2019-02-13 Andrew Smith : Removed unused files for production
-   2019-02-12 Andrew Smith : Updates from code review
-   2019-02-08 Andrew Smith : Fixed issued with reproduced associations to slices
-   2019-02-07 Andrew Smith : Added slices to external event building module
-   2019-02-07 Andrew Smith : Refactored LArPandoraEvent class to include metadata
-   2019-02-07 Andrew Smith : Removed deprecated filter by CR tag option from LArPandora event
-   2019-01-15 Andrew Smith : Switched from FindManyP to raw associations in the LArPandoraEvent class to avoid ordering issue of reprocued associations
-   2019-02-03 Wouter Van De Pontseele : Allowed storing the subrun tree for data (without POT info), and put the default for storing this tree to true
-   2019-02-01 Wouter Van De Pontseele : Added print statement for POT tree output
-   2018-11-16 Andrew Smith : Removed some configuration lines not needed by default use case
-   2018-11-16 Andrew Smith : Fixed hack for events with neutrino pile-up - now choose the most energetic neutrino
-   2018-11-16 Andrew Smith : Added FHiCL flag to make the output of subrun information opt-in
-   2018-11-16 Andrew Smith : Removed MicroBooNE specific analysis files which remained from previous tests
-   2018-11-16 Wouter Van De Pontseele : Changed isTarget to isNeutrino
-   2018-11-16 Wouter Van De Pontseele : Compiling version
-   2018-11-16 Wouter Van De Pontseele : rebased on v7\_11, no ubana dependency
-   2018-11-15 Wouter Van De Pontseele : removing ubana dependencies
-   2018-11-12 Wouter Van De Pontseele : Removed duplicate istarget definition
-   2018-11-12 Wouter Van De Pontseele : PFParticleMetadata moved from larpandoraobj to recob
-   2018-10-28 Wouter Van De Pontseele : Added an analyser module, made a seperate folder for fcl files
-   2018-10-26 Wouter Van De Pontseele : Split FlashID in header and Code file
-   2018-10-25 Wouter Van De Pontseele : Fixed neutrino interaction type, added true CCNC and true lepton energy, also added these fields into the event tree.
-   2018-10-23 Wouter Van De Pontseele : removed absolute values and put them where the precuts are done
-   2018-10-22 Andrew Smith : Fixed bug when there are no slices
-   2018-10-22 Andrew Smith : Added neutrino PDG code to monitoring output
-   2018-10-22 Andrew Smith : Fixed bug when checking for valid slice metadata
-   2018-10-22 Wouter Van De Pontseele : adding hasneutrinobool in fcl
-   2018-10-22 Andrew Smith : Added MC POT counting to external event building
-   2018-10-22 Andrew Smith : Added minimum spacepoint X position per slice
-   2018-10-22 Andrew Smith : Fixed compilation error in output of PE spectrum
-   2018-10-22 Andrew Smith : Included the true vertex position and neutrino interaction time in monitoring output
-   2018-10-22 Andrew Smith : Added FHiCL files for each input file type with different beam window sizes
-   2018-10-22 Andrew Smith : Switched to pandoraPatRec allOutcomes in the configuration of flash neutrino id
-   2018-10-22 Andrew Smith : typo in fcl file
-   2018-10-22 Andrew Smith : Turned off the repeated pandora for use on MCC9 samples with all outcomes already turend on
-   2018-10-19 a-d-smith : Fixed bug in external event building for slices with no PFParticles under either hypothesis
-   2018-10-19 a-d-smith : Added a slice ID helper to get truth metadata about the slices
-   2018-10-15 a-d-smith : Fixed bug in conversion from charge to light
-   2018-10-13 a-d-smith : Added flag for slices with no charge on collection plane
-   2018-10-13 a-d-smith : Major refactor of flash neutrino id tool to include monitoring info
-   2018-10-10 a-d-smith : Added debug statements for testing
-   2018-10-10 a-d-smith : Added conversion from charge to number of photons
-   2018-10-08 Andrew Smith : Added simple flash matching
-   2018-10-05 Andrew Smith : Applied preselection cuts to match a slice to a beam flash
-   2018-10-04 Andrew Smith : Calculated the charged cluster for each slice
-   2018-10-04 Andrew Smith : Collected all downstream PFParticles in the slice
-   2018-10-04 Andrew Smith : Started on the flash-based neutrino ID tool
-   2018-08-30 a-d-smith : Updated simple beam particle id tool to match logic in Pandora
-   2018-08-29 a-d-smith : Extended neutrino id tool to the general slice id tool - now works for protoDUNE
-   2018-10-28 Wouter Van De Pontseele : updated filelist and xml files
-   2018-10-28 Wouter Van De Pontseele : Added an analyser module, made a seperate folder for fcl files
-   2018-10-26 Wouter Van De Pontseele : Split FlashID in header and Code file
-   2018-10-25 Wouter Van De Pontseele : Fixed neutrino interaction type, added true CCNC and true lepton energy, also added these fields into the event tree.
-   2018-10-23 Wouter Van De Pontseele : removed absolute values and put them where the precuts are done
-   2018-10-22 Andrew Smith : Fixed bug when there are no slices
-   2018-10-22 Wouter Van De Pontseele : add test file in xml folder
-   2018-10-22 Andrew Smith : Added neutrino PDG code to monitoring output
-   2018-10-22 Andrew Smith : Fixed bug when checking for valid slice metadata
-   2018-10-22 Wouter Van De Pontseele : adding hasneutrinobool in fcl
-   2018-10-22 Andrew Smith : Added MC POT counting to external event building
-   2018-10-22 Wouter Van De Pontseele : changing xml files
-   2018-10-22 Wouter Van De Pontseele : added xml folder
-   2018-10-22 Andrew Smith : Added minimum spacepoint X position per slice
-   2018-10-22 Andrew Smith : Fixed compilation error in output of PE spectrum
-   2018-10-22 Andrew Smith : Included the true vertex position and neutrino interaction time in monitoring output
-   2018-10-22 Wouter Van De Pontseele : added pe spectra and match x location
-   2018-10-22 Wouter Van De Pontseele : adding flashPE spectrum
-   2018-10-22 Andrew Smith : Added output of topological neutrino ID score for all slices
-   2018-10-22 Andrew Smith : Added FHiCL files for each input file type with different beam window sizes
-   2018-10-22 Andrew Smith : Switched to pandoraPatRec allOutcomes in the configuration of flash neutrino id
-   2018-10-22 Andrew Smith : typo in fcl file
-   2018-10-22 Andrew Smith : Turned off the repeated pandora for use on MCC9 samples with all outcomes already turend on
-   2018-10-19 a-d-smith : Fixed bug in external event building for slices with no PFParticles under either hypothesis
-   2018-10-19 a-d-smith : Added a slice ID helper to get truth metadata about the slices
-   2018-10-15 a-d-smith : Fixed bug in conversion from charge to light
-   2018-10-13 a-d-smith : Added flag for slices with no charge on collection plane
-   2018-10-13 a-d-smith : Major refactor of flash neutrino id tool to include monitoring info
-   2018-10-10 a-d-smith : Added debug statements for testing
-   2018-10-10 a-d-smith : Added conversion from charge to number of photons
-   2018-10-08 Andrew Smith : Added simple flash matching
-   2018-10-05 Andrew Smith : Applied preselection cuts to match a slice to a beam flash
-   2018-10-04 Andrew Smith : Calculated the charged cluster for each slice
-   2018-10-04 Andrew Smith : Collected all downstream PFParticles in the slice
-   2018-10-04 Andrew Smith : Started on the flash-based neutrino ID tool
-   2018-08-30 a-d-smith : Updated simple beam particle id tool to match logic in Pandora
-   2018-08-29 a-d-smith : Extended neutrino id tool to the general slice id tool - now works for protoDUNE

larsimrad v09\_03\_05\_01(#larsimrad-v09_03_05_01)
-----------------------------------------------------

-   2021-11-12 Lynn Garren : larsimrad v09\_03\_05\_01 for larsoft v09\_36\_00\_01
-   2021-11-12 Lynn Garren : larsimrad v09\_03\_05\_01 for larsoft v09\_36\_00\_01

larrecodnn v09\_09\_07\_01(#larrecodnn-v09_09_07_01)
-------------------------------------------------------

-   2021-11-12 Lynn Garren : larrecodnn v09\_09\_07\_01 for larsoft v09\_36\_00\_01
-   2021-11-12 Lynn Garren : larrecodnn v09\_09\_07\_01 for larsoft v09\_36\_00\_01

larwirecell v09\_04\_04\_01(#larwirecell-v09_04_04_01)
---------------------------------------------------------

-   2021-11-12 Lynn Garren : larwirecell v09\_04\_04\_01 for larsoft v09\_36\_00\_01
-   2021-11-12 Lynn Garren : larwirecell v09\_04\_04\_01 for larsoft v09\_36\_00\_01

larana v09\_03\_07\_01(#larana-v09_03_07_01)
-----------------------------------------------

-   2021-11-12 Lynn Garren : larana v09\_03\_07\_01 for larsoft v09\_36\_00\_01
-   2021-11-12 Lynn Garren : larana v09\_03\_07\_01 for larsoft v09\_36\_00\_01
-   2021-11-11 Lynn Garren : Merge branch ‘greenlee\_mcc9\_pid’ into v09\_36\_00\_br
-   2021-10-22 Herbert Greenlee : Merge remote-tracking branch ‘upstream/develop’ into greenlee\_mcc9\_pid
-   2021-10-21 Herbert Greenlee : Add geo::PlaneID to ParticleID.
-   2021-10-08 Herbert Greenlee : Merge remote-tracking branch ‘origin/greenlee\_mcc9\_pid’ into develop
-   2021-02-18 Herbert Greenlee : Add missing include.
-   2019-01-30 kduffy : Add in fUseMedian to match previous behaviour for PIDA. We shouldn’t do this any more though - now we can (and should) store both PIDA by mean and median
-   2019-01-23 kduffy : Include missing bitset include
-   2019-01-22 kduffy : Change bitset from 5 bits to 8 and rename fPlaneMask instead of fPlaneID
-   2019-01-10 kduffy : Remove unnecessary if statement in bitset calculation
-   2019-01-09 Adam : updates to output chi2 in terms of new anab::ParticleID class – untested

larreco v09\_07\_06\_01(#larreco-v09_07_06_01)
-------------------------------------------------

-   2021-11-12 Lynn Garren : larreco v09\_07\_06\_01 for larsoft v09\_36\_00\_01
-   2021-11-12 Lynn Garren : larreco v09\_07\_06\_01 for larsoft v09\_36\_00\_01
-   2021-11-11 Lynn Garren : Merge branch ‘greenlee\_mcc9\_pid’ into v09\_36\_00\_br
-   2021-11-11 Lynn Garren : Merge branch ‘greenlee\_mcc9\_mcs’ into v09\_36\_00\_br
-   2021-10-22 Herbert Greenlee : Merge remote-tracking branch ‘upstream/develop’ into greenlee\_mcc9\_mcs
-   2021-10-22 Herbert Greenlee : Merge remote-tracking branch ‘upstream/develop’ into greenlee\_mcc9\_pid
-   2021-02-18 Herbert Greenlee : Update breaking changes.
-   2019-06-11 Giuseppe Cerati : updates to mcs
-   2019-06-03 Giuseppe Cerati : update to TrajectoryMCSFitter for MicroBooNE MCC9.1
-   2019-02-20 Adam : removing PID accessor from KalmanFilterFinalTrackFitter as per info from Giuseppe
-   2019-01-14 Adam : removing .Pdg() usage and replacing with -1

larsim v09\_18\_01\_01(#larsim-v09_18_01_01)
-----------------------------------------------

-   2021-11-12 Lynn Garren : larsim v09\_18\_01\_01 for larsoft v09\_36\_00\_01
-   2021-11-12 Lynn Garren : larsim v09\_18\_01\_01 for larsoft v09\_36\_00\_01

larg4 v09\_06\_01\_01(#larg4-v09_06_01_01)
---------------------------------------------

-   2021-11-12 Lynn Garren : larg4 v09\_06\_01\_01 for larsoft v09\_36\_00\_01
-   2021-11-12 Lynn Garren : larg4 v09\_06\_01\_01 for larsoft v09\_36\_00\_01

larevt v09\_03\_04\_01(#larevt-v09_03_04_01)
-----------------------------------------------

-   2021-11-12 Lynn Garren : larevt v09\_03\_04\_01 for larsoft v09\_36\_00\_01
-   2021-11-12 Lynn Garren : larevt v09\_03\_04\_01 for larsoft v09\_36\_00\_01

lardata v09\_04\_01\_01(#lardata-v09_04_01_01)
-------------------------------------------------

-   2021-11-12 Lynn Garren : lardata v09\_04\_01\_01 for larsoft v09\_36\_00\_01
-   2021-11-12 Lynn Garren : lardata v09\_04\_01\_01 for larsoft v09\_36\_00\_01
-   2021-11-11 Lynn Garren : Merge branch ‘greenlee\_mcc9\_pid’ into v09\_36\_00\_br
-   2021-10-22 Herbert Greenlee : Merge remote-tracking branch ‘upstream/develop’ into greenlee\_mcc9\_pid
-   2021-10-21 Herbert Greenlee : Add geo::PlaneID to dump output.
-   2021-10-14 Herbert Greenlee : Add DumpParticleIDs module.

larcore v09\_03\_01\_01(#larcore-v09_03_01_01)
-------------------------------------------------

-   2021-11-12 Lynn Garren : larcore v09\_03\_01\_01 for larsoft v09\_36\_00\_01
-   2021-11-12 Lynn Garren : larcore v09\_03\_01\_01 for larsoft v09\_36\_00\_01

larsoftobj v09\_11\_01\_01(#larsoftobj-v09_11_01_01)
-------------------------------------------------------

-   2021-11-12 Lynn Garren : larsoftobj v09\_11\_01\_01 for larsoft v09\_36\_00\_01
-   2021-11-12 Lynn Garren : larsoftobj v09\_11\_01\_01 for larsoft v09\_36\_00\_01
-   2021-11-12 Lynn Garren : product versions

lardataobj v09\_03\_04\_01(#lardataobj-v09_03_04_01)
-------------------------------------------------------

-   2021-11-12 Lynn Garren : lardataobj v09\_03\_04\_01 for larsoft v09\_36\_00\_01
-   2021-11-12 Lynn Garren : lardataobj v09\_03\_04\_01 for larsoft v09\_36\_00\_01
-   2021-11-11 Lynn Garren : Merge branch ‘greenlee\_mcc9\_pid’ into v09\_36\_00\_br
-   2021-10-22 Herbert Greenlee : Merge remote-tracking branch ‘upstream/develop’ into greenlee\_mcc9\_pid
-   2021-10-21 Herbert Greenlee : Add accessor and constructor argument for geo::PlaneID.
-   2021-10-20 Herbert Greenlee : Get rid of unneeded versions of struct sAlgParticleIDAlgScores.
-   2021-10-20 Herbert Greenlee : Update ParticleID schema evolution.
-   2021-10-19 Herbert Greenlee : Update ParticleID.
-   2021-10-18 Herbert Greenlee : Merge remote-tracking branch ‘kirsty/feature/kduffy\_merge\_uB\_PID’ into greenlee\_mcc9\_pid
-   2021-10-18 Herbert Greenlee : Merge remote-tracking branch ‘upstream/develop’ into greenlee\_mcc9\_pid
-   2021-02-12 Herbert Greenlee : Add missing include.
-   2019-02-21 Herbert Greenlee : bitset -\> std::bitset.
-   2019-02-20 kduffy : Add back in Base\_bitset to classes\_def.xml
-   2019-02-19 kduffy : Comment out ioread rule for particleID because it doesn’t work yet
-   2019-02-07 kduffy : Remove unused class \_Base\_bitset\<1\>
-   2019-01-23 kduffy : Change bitset to 8 bits instead of 5. ioread rule for ParticleID class is still broken, will fix asap
-   2019-01-22 kduffy : Return a const reference to the vector not a const vector
-   2019-01-22 kduffy : Change bitset from 5 bits to 8 and rename fPlaneMask instead of fPlaneID. Also remove unnecessary ifndef statements in ParticleID.h
-   2019-01-14 kduffy : Change bitset definition to be the same as what we’ve defined elsewhere
-   2019-01-10 kduffy : Fixes to ioread to make it work properly
-   2019-01-10 kduffy : Update classes\_def for anab::Calorimetry by hand
-   2019-01-10 kduffy : Hand-merge into feature branch with new PID variables
-   2019-01-10 Adam : adding ioread for anab::ParticleID
-   2019-01-10 kduffy : Remove old ParticleID functions from new class, since we’ve decided to go ahead with the breaking change
-   2020-11-16 Kirsty Duffy : Add vector class definition
-   2020-11-16 Kirsty Duffy : Make const function to be consistent with ostream in ParticleID.cxx
-   2020-11-16 Kirsty Duffy : Fix use of isValid
-   2020-11-16 Kirsty Duffy : Updates to allow backwards-compatibility for reading files. Don’t attempt to split geo::PlaneID in ioread in classes\_def.xml, but copy to new object and convert to plane mask when reading
-   2020-11-13 Kirsty Duffy : Add back in an \#include \<vector\> that got lost in the merge
-   2019-02-21 Herbert Greenlee : bitset -\> std::bitset.
-   2019-02-21 Herbert Greenlee : Revert “ParticleID bitset\<8\> -\> int.”
-   2019-02-20 Herbert Greenlee : ParticleID bitset\<8\> -\> int.
-   2019-02-20 kduffy : Add back in Base\_bitset to classes\_def.xml
-   2019-02-19 kduffy : Comment out ioread rule for particleID because it doesn’t work yet
-   2019-02-07 kduffy : Remove unused class \_Base\_bitset\<1\>
-   2019-01-23 kduffy : Change bitset to 8 bits instead of 5. ioread rule for ParticleID class is still broken, will fix asap
-   2019-01-22 kduffy : Return a const reference to the vector not a const vector
-   2019-01-22 kduffy : Change bitset from 5 bits to 8 and rename fPlaneMask instead of fPlaneID. Also remove unnecessary ifndef statements in ParticleID.h
-   2019-01-14 kduffy : Change bitset definition to be the same as what we’ve defined elsewhere
-   2019-01-10 kduffy : Fixes to ioread to make it work properly
-   2019-01-10 kduffy : Update classes\_def for anab::Calorimetry by hand
-   2019-01-10 kduffy : Hand-merge into feature branch with new PID variables
-   2019-01-10 Adam : adding ioread for anab::ParticleID
-   2019-01-10 kduffy : Remove old ParticleID functions from new class, since we’ve decided to go ahead with the breaking change

lardataalg v09\_07\_01\_01(#lardataalg-v09_07_01_01)
-------------------------------------------------------

-   2021-11-12 Lynn Garren : lardataalg v09\_07\_01\_01 for larsoft v09\_36\_00\_01
-   2021-11-12 Lynn Garren : lardataalg v09\_07\_01\_01 for larsoft v09\_36\_00\_01

larcorealg v09\_03\_01\_01(#larcorealg-v09_03_01_01)
-------------------------------------------------------

-   2021-11-12 Lynn Garren : larcorealg v09\_03\_01\_01 for larsoft v09\_36\_00\_01
-   2021-11-12 Lynn Garren : larcorealg v09\_03\_01\_01 for larsoft v09\_36\_00\_01

larcoreobj v09\_03\_01\_01(#larcoreobj-v09_03_01_01)
-------------------------------------------------------

-   2021-11-12 Lynn Garren : larcoreobj v09\_03\_01\_01 for larsoft v09\_36\_00\_01
-   2021-11-12 Lynn Garren : larcoreobj v09\_03\_01\_01 for larsoft v09\_36\_00\_01

webevd v09\_06\_04\_01(#webevd-v09_06_04_01)
-----------------------------------------------

-   2021-11-12 Lynn Garren : webevd v09\_06\_04\_01 for larsoft v09\_36\_00\_01
-   2021-11-12 Lynn Garren : webevd v09\_06\_04\_01 for larsoft v09\_36\_00\_01
