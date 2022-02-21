# LArSoft v08_05_00_04 Release Notes



[list of LArSoft releases](LArSoft_release_list)  
Download instructions for [larsoft v08_05_00_04](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v08_05_00_04/larsoft-v08_05_00_04.html)  
Download instructions for [just larsoftobj v08_03_00_02](http://scisoft.fnal.gov/scisoft/bundles/larsoftobj/v08_03_00_02/larsoftobj-v08_03_00_02.html)

## Purpose

-   MicroBooNE request \#21942

## New features

## Bug fixes

## Updated dependencies

-   art v3_01_02
-   nutools v2_26_09
-   nusimdata v1_15_04
-   artdaq_core v3_04_10
-   artg4tk v09_01_02
-   systematicstools v00_02_03
-   nusystematics v00_02_08
-   canvas_root_io v1_02_02

# Change List

## larsoft v08_05_00_04

-   2019-02-23 Lynn Garren : larsoft v08_05_00_04 for larsoft v08_05_00_04
-   2019-02-22 Lynn Garren : product versions
-   2019-02-22 Lynn Garren : s78 and ifdh_art v2_07_02

## lareventdisplay v08_02_00_03

-   2019-02-23 Lynn Garren : lareventdisplay v08_02_00_03 for larsoft v08_05_00_04
-   2019-02-19 kduffy : Merge branch 'feature/alister1_removepidfromevd' into feature/kduffy_PIDupdate_v08_05_00_br
-   2019-01-14 Adam : removing PID from event display

## larexamples v08_01_00_03

-   2019-02-23 Lynn Garren : larexamples v08_01_00_03 for larsoft v08_05_00_04

## larg4 v08_01_00_03

-   2019-02-23 Lynn Garren : larg4 v08_01_00_03 for larsoft v08_05_00_04
-   2019-02-22 Lynn Garren : artg4tk v09_02_00

## larpandora v08_03_00_03

-   2019-02-23 Lynn Garren : larpandora v08_03_00_03 for larsoft v08_05_00_04
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
-   2019-02-12 Andrew Smith : Added ATTN explaining why line was commented out
-   2019-02-03 Wouter Van De Pontseele : Allowed storing the subrun tree for data (without POT info), and put the default for storing this tree to true
-   2019-02-01 Wouter Van De Pontseele : Added print statement for POT tree output
-   2019-01-10 Wouter Van De Pontseele : Commented out the check that the event is not real data on two places. This was needed to make larpandorahelper work on overlay samples.
-   2018-11-16 Andrew Smith : Removed some configuration lines not needed by default use case
-   2018-11-16 Andrew Smith : Fixed hack for events with neutrino pile-up - now choose the most energetic neutrino
-   2018-11-16 Andrew Smith : Added FHiCL flag to make the output of subrun information opt-in
-   2018-11-16 Andrew Smith : Removed MicroBooNE specific analysis files which remained from previous tests
-   2018-11-16 Wouter Van De Pontseele : Changed isTarget to isNeutrino
-   2018-11-16 Wouter Van De Pontseele : Compiling version
-   2018-11-16 Wouter Van De Pontseele : rebased on v7_11, no ubana dependency
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

## larwirecell v08_02_00_04

-   2019-02-23 Lynn Garren : larwirecell v08_02_00_04 for larsoft v08_05_00_04

## larana v08_01_00_03

-   2019-02-23 Lynn Garren : larana v08_01_00_03 for larsoft v08_05_00_04
-   2019-02-22 Lynn Garren : Merge branch 'feature/kduffy_PIDupdate_v08_05_00_br' into v08_05_00_br
-   2019-02-22 Kyle Knoepfel : Force discard of engine reference to silence compiler.
-   2019-02-21 Herbert Greenlee : Revert “Add bitset -\> integer conversions.”
-   2019-02-20 Herbert Greenlee : Add bitset -\> integer conversions.
-   2019-02-19 kduffy : Merge branch 'feature/alister1_chi2_pidclassupgrade' into feature/kduffy_PIDupdate_v08_05_00_br
-   2019-01-30 kduffy : Add in fUseMedian to match previous behaviour for PIDA. We shouldn't do this any more though - now we can (and should) store both PIDA by mean and median
-   2019-01-23 kduffy : Include missing bitset include
-   2019-01-22 kduffy : Change bitset from 5 bits to 8 and rename fPlaneMask instead of fPlaneID
-   2019-01-10 kduffy : Remove unnecessary if statement in bitset calculation
-   2019-01-09 Adam : updates to output chi2 in terms of new anab::ParticleID class — untested
-   2019-01-08 Lynn Garren : larana v08_00_00_01 for larsoft v08_00_00_br

## larreco v08_04_00_03

-   2019-02-23 Lynn Garren : larreco v08_04_00_03 for larsoft v08_05_00_04
-   2019-02-22 Lynn Garren : Merge branch 'feature/herogers_SCE_mcc9_take2' into v08_05_00_br
-   2019-02-22 Lynn Garren : Merge branch 'feature/bb_trajcluster_mcc9' into v08_05_00_br
-   2019-02-22 Lynn Garren : Merge branch 'feature/tjyang_sps' into v08_05_00_br
-   2019-02-22 Lynn Garren : Merge branch 'feature/kduffy_PIDupdate_v08_05_00_br' into v08_05_00_br
-   2019-02-22 Lynn Garren : nutools v2_26_09
-   2019-02-22 Kyle Knoepfel : Force discard of engine reference to silence compiler.
-   2019-02-21 baller : Don't attempt reconstructing a slice if there are too many hits.
-   2019-02-20 kduffy : Merge branch 'feature/alister_pidfix' into feature/kduffy_PIDupdate_v08_05_00_br
-   2019-02-20 Adam : removing PID accessor from KalmanFilterFinalTrackFitter as per info from Giuseppe
-   2019-02-19 Herbert Greenlee : Fix signed vs. unsigned comparison.
-   2019-01-31 baller : Remove kNewStpCuts and kNewVtxCuts
-   2019-01-31 baller : Remove kNewStpCuts and kNewVtxCuts
-   2019-01-31 baller : Remove kNewStpCuts and kNewVtxCuts
-   2019-01-31 baller : Remove kNewStpCuts and kNewVtxCuts
-   2019-01-31 baller : Remove kNewStpCuts and kNewVtxCuts
-   2019-01-31 baller : Remove kNewStpCuts and kNewVtxCuts
-   2019-01-31 baller : Change StopFlag to EndFlag. Replace NoFitToVtx Algmod bit to NoFitVx EndFlag bit. Add Debug MVI.
-   2019-01-31 baller : Change StopFlag to EndFlag. Replace NoFitToVtx Algmod bit to NoFitVx EndFlag bit. Add Debug MVI.
-   2019-01-31 baller : Change StopFlag to EndFlag. Replace NoFitToVtx Algmod bit to NoFitVx EndFlag bit. Add Debug MVI.
-   2019-01-31 baller : Change StopFlag to EndFlag. Replace NoFitToVtx Algmod bit to NoFitVx EndFlag bit. Add Debug MVI.
-   2019-01-31 baller : Change StopFlag to EndFlag. Replace NoFitToVtx Algmod bit to NoFitVx EndFlag bit. Add Debug MVI.
-   2019-01-31 baller : Change StopFlag to EndFlag. Replace NoFitToVtx Algmod bit to NoFitVx EndFlag bit. Add Debug MVI.
-   2019-01-31 baller : Add Debug MVI
-   2019-01-31 baller : Change StopFlag to EndFlag. Replace NoFitToVtx Algmod bit to NoFitVx EndFlag bit.
-   2019-01-31 baller : Change StopFlag to EndFlag. Replace NoFitToVtx Algmod bit to NoFitVx EndFlag bit.
-   2019-01-30 baller : Add AttachAnyVertexToTraj
-   2019-01-30 baller : Add AttachAnyVertexToTraj
-   2019-01-30 baller : Add code updates to v08_00_00_br
-   2019-01-30 baller : Add code updates to v08_00_00_br
-   2019-01-30 baller : Add code updates to v08_00_00_br
-   2019-01-30 baller : Add code updates to v08_00_00_br
-   2019-01-30 baller : Add code updates to v08_00_00_br
-   2019-01-30 baller : Add code updates to v08_00_00_br
-   2019-01-30 baller : Add code updates to v08_00_00_br
-   2019-01-30 baller : Add code updates to v08_00_00_br
-   2019-01-30 baller : Add code updates to v08_00_00_br
-   2019-01-30 baller : Add code updates to v08_00_00_br
-   2019-01-30 baller : Add code updates to v08_00_00_br
-   2019-01-20 baller : Fix bug in TrimEndPts
-   2019-01-20 baller : Require high MCSMom trajectory in FindHammerVertices
-   2019-02-18 Tingjun Yang : Move microboone configuration to ubevt.
-   2019-02-18 Hannah Rogers : Add SCE dx correction to calorimetry module
-   2019-01-14 Adam : removing .Pdg() usage and replacing with –1

## larsim v08_02_00_03

-   2019-02-23 Lynn Garren : larsim v08_02_00_03 for larsoft v08_05_00_04
-   2019-02-22 Kyle Knoepfel : Force discard of engine reference to silence compiler.

## larevt v08_01_00_03

-   2019-02-23 Lynn Garren : larevt v08_01_00_03 for larsoft v08_05_00_04
-   2019-02-22 Lynn Garren : Merge branch 'feature/herogers_SCE_mcc9_take2' into v08_05_00_br
-   2019-02-16 Hannah Rogers : Add space charge fcl defaults

## lardata v08_02_00_02

-   2019-02-23 Lynn Garren : lardata v08_02_00_02 for larsoft v08_05_00_04
-   2019-02-22 Lynn Garren : nutools v2_26_09

## larcore v08_01_00_02

-   2019-02-23 Lynn Garren : larcore v08_01_00_02 for larsoft v08_05_00_04
-   2019-02-22 Lynn Garren : art v3_01_02

## larpandoracontent v03_14_04

## larsoftobj v08_03_00_02

-   2019-02-23 Lynn Garren : larsoftobj v08_03_00_02 for larsoft v08_05_00_04
-   2019-02-22 Lynn Garren : product versions
-   2019-02-22 Lynn Garren : gallery v1_11_02

## lardataobj v08_01_00_02

-   2019-02-23 Lynn Garren : lardataobj v08_01_00_02 for larsoft v08_05_00_04
-   2019-02-22 Lynn Garren : Merge branch 'feature/kduffy_PIDupdate_v08_05_00_br' into v08_05_00_br
-   2019-02-22 Lynn Garren : nusimdata v1_15_04
-   2019-02-21 Herbert Greenlee : bitset -\> std::bitset.
-   2019-02-21 Herbert Greenlee : Revert “ParticleID bitset\<8\> -\> int.”
-   2019-02-20 Herbert Greenlee : Merge branch 'feature/kduffy_PIDupdate_v08_05_00_br' of ssh://cdcvs.fnal.gov/cvs/projects/lardataobj into feature/kduffy_PIDupdate_v08_05_00_br
-   2019-02-20 Herbert Greenlee : ParticleID bitset\<8\> -\> int.
-   2019-02-20 kduffy : Add back in Base_bitset to classes_def.xml
-   2019-02-19 kduffy : Merge branch 'feature/alister1_pid_ioread' into feature/kduffy_PIDupdate_v08_05_00_br
-   2019-02-19 kduffy : Comment out ioread rule for particleID because it doesn't work yet
-   2019-02-07 kduffy : Remove unused class _Base_bitset\<1\>
-   2019-01-23 kduffy : Change bitset to 8 bits instead of 5. ioread rule for ParticleID class is still broken, will fix asap
-   2019-01-22 kduffy : Return a const reference to the vector not a const vector
-   2019-01-22 kduffy : Change bitset from 5 bits to 8 and rename fPlaneMask instead of fPlaneID. Also remove unnecessary ifndef statements in ParticleID.h
-   2019-01-14 kduffy : Change bitset definition to be the same as what we've defined elsewhere
-   2019-01-10 kduffy : Fixes to ioread to make it work properly
-   2019-01-10 kduffy : Update classes_def for anab::Calorimetry by hand
-   2019-01-10 kduffy : Hand-merge into feature branch with new PID variables
-   2019-01-10 kduffy : Merge branch 'feature/alister1_pid_ioread' of ssh://cdcvs.fnal.gov/cvs/projects/lardataobj into feature/alister1_pid_ioread
-   2019-01-10 Adam : adding ioread for anab::ParticleID
-   2019-01-10 kduffy : Remove old ParticleID functions from new class, since we've decided to go ahead with the breaking change

## lardataalg v08_03_00_02

-   2019-02-23 Lynn Garren : lardataalg v08_03_00_02 for larsoft v08_05_00_04

## larcorealg v08_01_00_02

-   2019-02-23 Lynn Garren : larcorealg v08_01_00_02 for larsoft v08_05_00_04

## larcoreobj v08_01_00_02

-   2019-02-23 Lynn Garren : larcoreobj v08_01_00_02 for larsoft v08_05_00_04
-   2019-02-22 Lynn Garren : canvas_root_io v1_02_02
