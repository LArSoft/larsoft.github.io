# LArSoft v06_26_01_04 Release Notes



[list of LArSoft releases](LArSoft_release_list)  
Download instructions for [larsoft v06_26_01_04](https://scisoft.fnal.gov/scisoft/bundles/larsoft/v06_26_01_04/larsoft-v06_26_01_04.html)  
Download instructions for [just larsoftobj v1_11_00_01](https://scisoft.fnal.gov/scisoft/bundles/larsoftobj/v1_11_00_01/larsoftobj-v1_11_00_01.html)

## Purpose

-   MicroBooNE production release (#17369)

## New features

## Bug fixes

## Updated dependencies

# Change List

## larsoft v06_26_01_04

-   2017-08-04 Lynn Garren : move build of larpandoracontent out of larbase
-   2017-08-04 Lynn Garren : add cetbuildtools v5_06_07
-   2017-08-04 Lynn Garren : larsoft v06_26_01_04

## lareventdisplay v06_02_14_04

-   2017-08-04 Lynn Garren : lareventdisplay v06_02_14_04

## larexamples v06_01_15_02

## larpandora v06_08_00_04

-   2017-08-04 Lynn Garren : larpandora v06_08_00_04
-   2017-07-31 Herbert Greenlee : Update dependent version of larpandoracontent.
-   2017-07-16 Herbert Greenlee : Merge remote-tracking branch 'origin/feature/jm_PerObjectRejection_mcc8_newpandora' into v06_26_01_01_branch
-   2017-07-16 Herbert Greenlee : Revert “Explicitly deal with exceptions raised during input object creation. If input parameters for a given object are not finite, only the relevant object is now omitted. A message is printed via the warning stream.”
-   2017-06-22 John Marshall : Explicitly deal with exceptions raised during input object creation. If input parameters for a given object are not finite, only the relevant object is now omitted. A message is printed via the warning stream.
-   2017-07-14 Herbert Greenlee : Update product_deps and CMakeLists.txt so that larpandora v06_11_00 can build in uboonecode v06_26_01_05 environment.
-   2017-06-22 John Marshall : Explicitly deal with exceptions raised during input object creation. If input parameters for a given object are not finite, only the relevant object is now omitted. A message is printed via the warning stream.
-   2017-05-23 Lynn Garren : larpandora v06_11_00 for larsoft v06_37_00
-   2017-05-23 Lynn Garren : Merge branch 'feature/blake_multiDrift' into release/v06_37_00
-   2017-05-16 Lynn Garren : larpandora v06_10_05 for larsoft v06_36_00
-   2017-05-11 Andrew Blake : Rebase CMakeLists.txt files to reflect recent changes, add an extra stitching flag to PFParticleMonitoring analyser to assess performance of stitching code; fix unique identifiers in LArPandoraInput.
-   2017-05-10 Lynn Garren : larpandora v06_10_04 for larsoft v06_35_00
-   2017-05-03 John Marshall : Merge branch 'updates' into develop
-   2017-05-03 John Marshall : Set required larpandoracontent version to v03_05_00.
-   2017-05-02 Lynn Garren : larpandora v06_10_03 for larsoft v06_34_01
-   2017-04-27 Lynn Garren : larpandora v06_10_02 for larsoft v06_34_00
-   2017-04-20 Gianluca Petrillo : Merge branch 'develop' of ssh://cdcvs.fnal.gov/cvs/projects/larpandora into develop
-   2017-04-19 Gianluca Petrillo : Fixed source file name for Doxygen documentation.
-   2017-04-19 Lynn Garren : larpandora v06_10_01 for larsoft v06_33_00
-   2017-04-13 Lynn Garren : larpandora v06_10_00 for larsoft v06_32_00
-   2017-04-13 Lynn Garren : Merge branch 'feature/team_for_gcc630' into release/v06_32_00
-   2017-04-12 Lynn Garren : larpandora v06_09_02 for larsoft v06_31_01
-   2017-04-11 Lynn Garren : eigen v3_3_3 is gcc 6.3 compliant
-   2017-04-11 Lynn Garren : use e14
-   2017-04-05 Lynn Garren : larpandora v06_09_01 for larsoft v06_31_00
-   2017-04-03 Lynn Garren : larpandora v06_09_00
-   2017-03-30 Lynn Garren : Merge branch 'v06_30_00_rc' into v06_30_00-branch
-   2017-03-30 Andrew Blake : Making the following minor change to the multi-drift branch: 1) Replace Pandora StatusCode exceptions with ART CET exceptions, 2) Fix crashes when shower reconstruction is switched off, 3) Disable T0 output if Pandora stitching hasn't been run.
-   2017-03-29 Lynn Garren : larpandora v06_08_05 for larsoft v06_29_00
-   2017-03-26 Andrew Blake : Updating LArPandoraInterface package to handle multiple drift volumes (and associated changes to LArPandoraAnalysis). Minor edit to PCAShowerParticleBuildingAlgorithm to address a Pandora exception.
-   2017-03-21 Lynn Garren : larpandora v06_08_04 for larsoft v06_28_01
-   2017-03-15 Lynn Garren : add missing library
-   2017-03-15 Lynn Garren : larpandora v06_08_03 for larsoft v06_28_00
-   2017-03-10 Lynn Garren : for larsoft v06_30_00_rc1 with art v2_06_01
-   2017-03-10 Lynn Garren : for larsoft v06_30_00_rc1 with art v2_06_01
-   2017-03-10 Lynn Garren : Merge branch 'feature/at_for_art_2_06' into release/v06_30_00_rc1
-   2017-03-09 Lynn Garren : for art v2_06
-   2017-03-09 Lynn Garren : fix link list
-   2017-03-08 Lynn Garren : larpandora v06_08_02 for larsoft v06_27_00
-   2017-02-28 Lynn Garren : larpandora v06_08_01 for larsoft v06_26_02

## larwirecell v06_00_13_04

-   2017-08-04 Lynn Garren : larwirecell v06_00_13_04
-   2017-07-27 Usher, Tracy L : Swap the order of truncation/filtering - noise filter runs on full set of ticks, truncation then picks out the sub waveform for output.

## larana v06_03_18_04

-   2017-08-04 Lynn Garren : larana v06_03_18_04
-   2017-05-31 Marco Del Tutto : fcl param adjustment for op waveform pedestal
-   2017-05-29 Marco Del Tutto : Adding sanity check before returning pedestal
-   2017-05-29 Marco Del Tutto : Adding new algorithm for pedestal estimation
-   2017-05-12 Usher, Tracy L : Add the check requiring more than 1 hit on a PFParticle to be out of time before rejecting

## larreco v06_20_00_04

-   2017-08-04 Lynn Garren : larreco v06_20_00_04
-   2017-08-02 Herbert Greenlee : Merge remote-tracking branch 'origin/feature/cerati_fitshowers' into v06_26_01_01_branch
-   2017-08-02 Giuseppe Cerati : get shower hits from pfparticles~~<span style="text-align:right;">clusters</span>~~\>hits
-   2017-07-31 Herbert Greenlee : Merge remote-tracking branch 'origin/feature/cerati_fitshowers' into v06_26_01_01_branch
-   2017-07-31 Giuseppe Cerati : remove example fcl files
-   2017-07-31 Giuseppe Cerati : get showers only when needed
-   2017-07-31 Bruce Baller : Merge branch 'v06_26_01_01_branch' of ssh://cdcvs.fnal.gov/cvs/projects/larreco into v06_26_01_01_branch
-   2017-07-31 Bruce Baller : Check for incorrect hit Multiplicity in FindJunkTraj
-   2017-07-30 Yun-Tse Tsai : correct the calculation on electron drift time
-   2017-07-28 Giuseppe Cerati : update example fcl files
-   2017-07-28 Giuseppe Cerati : fixes for space points
-   2017-06-29 Tingjun Yang : Ignore shower like pfparticles microboone_pmalgtrajfitter.
-   2017-07-19 Bruce Baller : TrajCluster fixes
-   2017-07-12 Giuseppe Cerati : produce space points so that calorimetry works
-   2017-06-28 Bruce Baller : Check for valid wire in Find3DEndPoints. Return 1 instead of 0 if an invalid trajectory is encountered in MCSThetaRMS.
-   2017-06-20 Giuseppe Cerati : add protection against misconfigurations
-   2017-06-19 Giuseppe Cerati : allow track fit of shower objects associated to pfparticles. provide example fhicl configuration files for microboone mcc8.1 tests

## larsim v06_13_01_02

## larevt v06_07_09_02

## lardata v06_14_04_01

## larcore v06_05_03

## larpandoracontent v03_07_02_04

-   2017-08-04 Lynn Garren : larpandoracontent v03_07_02_04 to be used with larsoft v06_26_01_04
-   2017-07-31 Herbert Greenlee : Update version.
-   2017-07-14 Herbert Greenlee : Update product_deps so that larpandoracontent v03_07_02 can build in uboonecode v06_26_01_05 environment.
-   2017-06-28 Lynn Garren : larpandoracontent v03_07_02 for larsoft v06_42_00
-   2017-06-28 Lynn Garren : v03_07_02
-   2017-06-27 John Marshall : Merge branch 'TravisCIPR'
-   2017-06-27 John Marshall : Update Travis path.
-   2017-06-25 Jack Anthony : Updated TravisCI build badge for pandorapfa master branch.
-   2017-06-25 Jack Anthony : Added TravisCI build badge.
-   2017-06-22 John Marshall : Merge branch 'updates' into develop
-   2017-06-22 John Marshall : Update cxx flags.
-   2017-06-21 John Marshall : Merge branch 'updates' into develop
-   2017-06-21 Jack Anthony : Updated documentation and fixed an issue in which an exception was returned rather than thrown
-   2017-06-08 Jack Anthony : Fixed documentation.
-   2017-06-08 Jack Anthony : Added probability functionality to SVMs.
-   2017-06-21 John Marshall : Merge branch 'updates' into develop
-   2017-06-08 John Marshall : Remove unused member variable.
-   2017-06-13 Lynn Garren : larpandoracontent v03_07_01 for larsoft v06_40_00
-   2017-06-13 Lynn Garren : v03_07_01 with pandora v03_00_00d
-   2017-06-09 Lynn Garren : larpandoracontent v03_07_00_01
-   2017-06-09 Lynn Garren : using cetlib v3_00_01 and pandora v03_00_00d
-   2017-06-07 Lynn Garren : adding cetlib
-   2017-06-06 Lynn Garren : larpandoracontent v03_07_00 for larsoft v06_39_00
-   2017-06-06 Lynn Garren : larpandoracontent v03_07_00
-   2017-06-06 Lynn Garren : larpandoracontent uses eigen
-   2017-06-02 John Marshall : Merge branch 'feature/SvmVertexSelection_kdtree' into develop
-   2017-06-02 John Marshall : Add kd tree implementation to svm vertex selection algorithm.
-   2017-06-01 John Marshall : Merge branch 'updates' into develop
-   2017-06-01 John Marshall : Ensure compilation without monitoring enabled.
-   2017-05-31 John Marshall : Merge branch 'updates' into develop
-   2017-05-31 John Marshall : Update changelog.
-   2017-05-31 John Marshall : Merge branch 'updates' into develop
-   2017-05-31 John Marshall : Missing configuration functionality.
-   2017-05-31 John Marshall : Merge branch 'updates' into develop
-   2017-05-31 John Marshall : Use cet search_path functionality to find svm data files in FW_SEARCH_PATH.
-   2017-05-31 John Marshall : Merge branch 'updates' into develop
-   2017-05-31 John Marshall : Required header file include.
-   2017-05-31 John Marshall : Merge branch 'updates' into develop
-   2017-05-31 John Marshall : Updated track/shower characterisation variables.
-   2017-05-31 John Marshall : Merge branch 'updates' into develop
-   2017-05-31 John Marshall : Add Michel probability to LArCaloHit.
-   2017-05-25 John Marshall : Merge branch 'feature/SvmTrkShwId' into develop
-   2017-05-22 John Marshall : Restructuring of track/shower id functionality.
-   2017-05-22 John Marshall : Track vs. shower identification using svm approach.
-   2017-05-25 John Marshall : Merge branch 'feature/EigenBuild' into develop
-   2017-05-25 John Marshall : Handle Eigen3 dependency in build tools.
-   2017-05-24 John Marshall : Merge branch 'feature/SvmVertexSelection' into develop
-   2017-05-23 John Marshall : Floating point initialisations.
-   2017-05-23 Jack Anthony : Fixed issue with RPhiFeatureTool fast score test.
-   2017-05-23 John Marshall : Cosmetic.
-   2017-05-22 Jack Anthony : Toolized vertex selection score components; added SVMVertexSelectionAlgorithm and new feature tools; moved some event validation functionality to MCParticleHelper.
-   2017-05-24 John Marshall : Merge branch 'feature/HitBasedTrkShwId' into develop
-   2017-05-08 John Marshall : Add LArCaloHit holding new track, shower and other probabilities. Add required options to event reading and writing algs.
-   2017-05-24 John Marshall : Merge branch 'feature/AddEigen' into develop
-   2017-05-22 John Marshall : Rename PcaHelper and SvmHelper, for consistency with existing helpers.
-   2017-05-19 John Marshall : Rename SVMHelper as LArSVMHelper, for consistency.
-   2017-05-19 John Marshall : Add LArPCAHelper and refactor.
-   2017-05-19 John Marshall : Convention: principal axis always points away from vertex (which is assumed to be closer to start of shower than centroid).
-   2017-05-19 John Marshall : First attempt to use Eigen to determine coordinate system for 2D and 3D sliding linear fits.
-   2017-05-19 John Marshall : Bring PCAShowerParticleBuilding algorithm into LArContent, from LArPandora.
-   2017-05-02 John Marshall : Add Eigen dependency.
-   2017-05-23 Lynn Garren : larpandoracontent v03_06_00 for larsoft v06_37_00
-   2017-05-23 Lynn Garren : larpandoracontent v03_06_00
-   2017-05-08 John Marshall : Update list of factories.
-   2017-04-30 Andy Blake : Fixing the issues identified by John M!
-   2017-03-30 Andy Blake : Modifying stitching helpers to enable running with multiple Pandora passes (sorry for breaking that!)
-   2017-03-26 Andy Blake : Adjusting track-building algorithm to enable running in stitching environment (dQ/dx will now be calculated in LArSoft).
-   2017-03-11 Andy Blake : Helpers and cosmic-ray stitching for detectors with multiple drift volumes
-   2017-05-05 John Marshall : Merge branch 'feature/Factories' into develop
-   2017-05-04 John Marshall : Remove unused factories.
-   2017-05-04 John Marshall : Place factory implementation inside library to avoid algorithm exposure to client applications.
-   2017-05-05 John Marshall : Merge branch 'updates' into develop
-   2017-05-05 John Marshall : Correction to explicit template instantiations.
-   2017-05-03 John Marshall : Merge branch 'updates' into develop
-   2017-05-03 John Marshall : Handle case where no 3D spacepoints are created for an input Pfo.
-   2017-05-03 John Marshall : Merge branch 'updates' into develop
-   2017-05-03 John Marshall : Update changelog and version (v03_05_00).
-   2017-05-03 John Marshall : Merge branch 'feature/SpacePoints' into develop
-   2017-05-02 John Marshall : Alter way in which deltaX term is handled in chi2. Tune chi2 cut for track hits. Add hit movement chi2.
-   2017-05-02 John Marshall : Add new rule for identifying end-associated Pfos.
-   2017-04-28 John Marshall : Correct StatusCodeExceptions.
-   2017-04-28 John Marshall : Add deltaX term back to chi2 for two- and three-view treatment of 3D shower hits.
-   2017-04-28 John Marshall : Add option to turn iterative treatment on/off.
-   2017-04-27 John Marshall : Remove debug visualization.
-   2017-04-27 John Marshall : Add configuration options.
-   2017-04-26 John Marshall : Refactoring of 3D hit refinement.
-   2017-04-26 John Marshall : Control 3D hit refinement iterations.
-   2017-04-26 John Marshall : Improvements to iteration control. Consistent treatment for 3D hits based upon a hit and 2 vs. 1 fit position(s).
-   2017-04-25 John Marshall : First proof-of-principle of iterative corrections.
-   2017-04-25 John Marshall : Now must use chi2 approach.
-   2017-04-25 John Marshall : Add GetMinChiSquaredYZ that uses information from fits to an overall trajectory in 3D.
-   2017-04-25 John Marshall : Clarify roles of different 3D hit creation tools.
-   2017-04-24 John Marshall : Add ability to perform sliding fits using CartesianPointLists as input.
-   2017-04-24 John Marshall : Address a couple of minor TODOs.
-   2017-04-24 John Marshall : Push interface changes through all 3D hit creation tools.
-   2017-04-21 John Marshall : Begin to restructure three dimensional hit creation algorithm for subsequent iterative treatment (for tracks).
-   2017-04-19 Multi-algorithm pattern recognition : Merge pull request \#8 from jaw86/develop
-   2017-04-19 Jack Weston : Added compile-time type-checking for variadic template methods and added type decaying where necessary in SVMHelper; deleted redundant method in SVMHelper; fixed documentation for SupportVectorMachine.
-   2017-04-18 John Marshall : Merge branch 'feature/SVM' into develop
-   2017-04-18 John Marshall : Cosmetic changes.
-   2017-04-18 Jack Weston : Added support vector machine interface.
-   2017-04-12 John Marshall : Extract pfo vertices, additional print out.
-   2017-04-13 Lynn Garren : larpandoracontent v03_04_00 for larsoft v06_32_00
-   2017-04-13 Lynn Garren : v03_04_00 with gcc 6.3.0
-   2017-04-13 Lynn Garren : Merge branch 'feature/team_for_gcc630' into release/v06_32_00
-   2017-04-12 Lynn Garren : larpandoracontent v03_03_01 for larsoft v06_31_01
-   2017-04-12 Lynn Garren : larpandoracontent v03_03_01
-   2017-04-11 Lynn Garren : use e14
-   2017-04-03 Lynn Garren : larpandoracontent v03_03_00 for larsoft v06_30_00
-   2017-03-10 Lynn Garren : for larsoft v06_30_00_rc1 with art v2_06_01
-   2017-03-10 Lynn Garren : for larsoft v06_30_00_rc1 with art v2_06_01
-   2017-03-09 Lynn Garren : for art v2_06

## larsoftobj v1_11_00_01

## lardataobj v1_11_00_01
