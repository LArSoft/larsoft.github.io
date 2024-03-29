# LArSoft v06_76_00 Release Notes



[list of LArSoft releases](LArSoft_release_list)  
Download instructions for [larsoft v06_76_00](https://scisoft.fnal.gov/scisoft/bundles/larsoft/v06_76_00/larsoft-v06_76_00.html)  
Download instructions for [just larsoftobj v1_44_00](https://scisoft.fnal.gov/scisoft/bundles/larsoftobj/v1_44_00/larsoftobj-v1_44_00.html)

## Purpose

-   merge approved feature branches

## New features

-   resolve \#19043
    -   more generic version of the methods NextValidPoint and PreviousValidPoint
    -   tools to navigate points with specific flags
    -   `feature/gp_Issue19043` in `larcorealg`, `lardataobj` and `lardata`
-   feature/larpandoracontent_v03_12_00
    -   [May 8 presentation](https://indico.fnal.gov/event/17099/contribution/4/material/slides/0.pdf)
    -   larpandoracontent, larpandora
    -   dunetpc
-   feature/wketchum_LArG4Refactor_develop on lardataobj and larsim
    -   [May 8 presentation](https://indico.fnal.gov/event/17099/contribution/2/material/slides/0.pdf)

## Bug fixes

## Updated dependencies

-   nutools [v2_21_03](https://cdcvs.fnal.gov/redmine/projects/nutools/wiki/NuTools_Release_Notes#nutools-v2_21_03-572018)
    -   `feature/gp_Issue19743` in `nutools` in
    -   resolve issue \#19743 (event time stamps very different with Clang)

# Change List

## larsoft v06_76_00

-   2018-05-09 Lynn Garren : larsoft v06_76_00 for larsoft v06_76_00
-   2018-05-09 Lynn Garren : update versions

## lareventdisplay v06_19_05

-   2018-05-09 Lynn Garren : lareventdisplay v06_19_05 for larsoft v06_76_00

## larexamples v06_13_04

-   2018-05-09 Lynn Garren : larexamples v06_13_04 for larsoft v06_76_00

## larpandora v06_26_05

-   2018-05-09 Lynn Garren : larpandora v06_26_05 for larsoft v06_76_00
-   2018-05-03 Steven Green : fix after track/shower ID updates

## larwirecell v06_12_04

-   2018-05-09 Lynn Garren : larwirecell v06_12_04 for larsoft v06_76_00

## larana v06_19_05

-   2018-05-09 Lynn Garren : larana v06_19_05 for larsoft v06_76_00

## larreco v06_60_02

-   2018-05-09 Lynn Garren : larreco v06_60_02 for larsoft v06_76_00
-   2018-05-08 Lynn Garren : nutools v2_21_03
-   2018-05-02 Tingjun Yang : Throw an exception if the requested track trajectory index is bad. Right now this is the only sanity check of TrackHitMeta.
-   2018-05-02 Tingjun Yang : Fix trajectory point index in PMA TrackHitMeta.

## larsim v06_46_00

-   2018-05-09 Lynn Garren : larsim v06_46_00 for larsoft v06_76_00
-   2018-05-08 Lynn Garren : remove unused variables to make clang happy
-   2018-05-03 Wesley Ketchum : add energy to output tree for validation
-   2018-05-03 Wesley Ketchum : Merge branch 'feature/wketchum_LArG4Refactor_develop' of ssh://cdcvs.fnal.gov/cvs/projects/larsim into feature/wketchum_LArG4Refactor_develop
-   2018-05-03 Wesley Ketchum : add ShiftEdepSCE module to shift energy depositions in space based on spacecharge, and fill in correlated numbers of electrons and photons
-   2018-05-02 Herbert Greenlee : Remove unused variables.
-   2018-05-01 Wesley Ketchum : did not commit a lot of my changes to get edeps going … oops…also add in sparsify trajectory option in LArG4
-   2018-04-29 Wesley Ketchum : merging uboone larg4 refactor to develop
-   2018-04-29 Wesley Ketchum : Merge branch 'feature/wketchum_LArG4Edeps_2' into develop
-   2018-04-26 Wesley Ketchum : bug fix for track id
-   2018-04-24 Wesley Ketchum : bug fix to fix a minus sign on scintillation time
-   2018-04-04 Lynn Garren : larsim v06_13_01_07 for larsoft v06_26_01_01_branch
-   2018-04-04 Wesley Ketchum : add in the flags for MCC80Compat mode
-   2018-03-15 Wesley Ketchum : Merge branch 'feature/wketchum_LArG4Edeps_2' of ssh://cdcvs.fnal.gov/cvs/projects/larsim into feature/wketchum_LArG4Edeps_2
-   2018-03-15 Wesley Ketchum : switch to using service to get recombA parameter?
-   2018-03-14 Wesley Ketchum : remove the sim energy deposits from larvoxel since we do not use them there for the moment
-   2018-03-14 Wesley Ketchum : updates to the propagation modules, cleanup
-   2018-03-14 Wesley Ketchum : refactor the refactoring to clean it up
-   2018-03-13 Wesley Ketchum : updates to get the photon library propagation module working
-   2018-03-03 Wesley Ketchum : make energy depositions from opfastscintillation physics
-   2018-02-26 Wesley Ketchum : add in the simdriftelectron module from Bill, and some updates
-   2018-02-19 Wesley Ketchum : fix clearing of edeps before one should, and reduce reserve size on photon library
-   2018-02-19 Wesley Ketchum : backout of the slightly improved but not really given implementation SCE calculations
-   2018-02-18 Wesley Ketchum : add in module for doing standalone photon propagation based on photon library and edeps
-   2018-02-18 Wesley Ketchum : add ElectronDrift code
-   2018-02-18 Wesley Ketchum : add an IonizationScintillation directory that is separate from LArG4, to be used for separated LArG4
-   2018-02-18 Wesley Ketchum : fix for initial sim energy deposit and now working though i saw an event with no edeps??
-   2018-02-18 Wesley Ketchum : add energy deposition storage to LArG4 module
-   2018-02-18 Wesley Ketchum : add in energy deposition creation options in LArVoxelReadout
-   2018-01-31 Lynn Garren : larsim v06_13_01_06 for larsoft v06_26_01_10
-   2018-01-29 Herbert Greenlee : Merge branch 'feature/greenlee_mcc80compat' into v06_26_01_01_branch
-   2018-01-29 Herbert Greenlee : Merge remote-tracking branch 'origin/feature/yuntse_MCHitAssnsUbooneMCC8' into v06_26_01_01_branch
-   2018-01-24 Herbert Greenlee : MCC 8.0 compatibility mode.
-   2017-12-12 Lynn Garren : larsim v06_13_01_05
-   2017-12-08 Wesley Ketchum : add in option to backtracker to ignore the realdata flag
-   2017-11-06 Yun-Tse Tsai : checkout the header from origin/feature/yuntse_trackide
-   2017-11-06 Yun-Tse Tsai : add one variable for number of electrons collected at a wire for TrackIDE
-   2017-10-10 Lynn Garren : for larsoft v06_26_01_06
-   2017-09-12 Lynn Garren : for larsoft v06_26_01_05
-   2017-05-04 Lynn Garren : larsim v06_13_01_02
-   2017-05-03 Herbert Greenlee : Merge remote-tracking branch 'origin/v06_13_01_optical_patch' into v06_26_01_01_branch
-   2017-05-02 drinkingkazu : Forgotten fix! integer effect was still there. this really fixes it, and I left commented-out lines for me to run analysis using csv file.
-   2017-05-01 Herbert Greenlee : Merge remote-tracking branch 'origin/v06_13_01_optical_patch' into v06_26_01_01_branch
-   2017-04-26 Matthew Bass : Fixed timing bias due to correlations between spatial and time coordinates by adding independent randomness in the spatial coordinates.
-   2017-02-23 Gianluca Petrillo : Prevent space charge distortion from making charge cross the wire planes.
-   2017-04-04 Lynn Garren : larsim v06_13_01_01

## larevt v06_20_04

-   2018-05-09 Lynn Garren : larevt v06_20_04 for larsoft v06_76_00

## lardata v06_44_00

-   2018-05-09 Lynn Garren : lardata v06_44_00 for larsoft v06_76_00
-   2018-05-08 Lynn Garren : nutools v2_21_03
-   2018-05-02 Gianluca Petrillo : Added interface to filter trajectory points in a iteration.
-   2018-05-02 Gianluca Petrillo : Updated an iterator to be a bit more standard.
-   2018-05-02 Gianluca Petrillo : Documentation fixes to track proxy.
-   2018-04-26 Gianluca Petrillo : Reviewed documentation of track proxy auxiliary data functions
-   2018-04-26 Gianluca Petrillo : Good practice changes to track proxy test module
-   2018-04-26 Gianluca Petrillo : Simplified the implementation of proxy::Tracks customisation
-   2018-04-26 Gianluca Petrillo : Updated proxy infrastructure documentation
-   2018-04-24 Gianluca Petrillo : Updated documentation of ChargedSpacePoints proxy
-   2018-04-24 Gianluca Petrillo : Simplified the customisation of collection proxy.
-   2018-04-24 Gianluca Petrillo : Updated Doxygen documentation of proxy
-   2018-04-20 Gianluca Petrillo : Reorganisation of collection proxy code.
-   2018-04-18 Gianluca Petrillo : Reorganised proxy code.

## larcore v06_19_02

-   2018-05-09 Lynn Garren : larcore v06_19_02 for larsoft v06_76_00

## larpandoracontent v03_12_00

-   2018-05-09 Lynn Garren : larpandoracontent v03_12_00 for larsoft v06_76_00
-   2018-05-06 Multi-algorithm pattern recognition : Merge pull request \#53 from loressa/feature/ExceptionHandlingFix
-   2018-05-05 loressa : cosmetics
-   2018-05-04 loressa : Fixes for no neutrino vertex failure handling
-   2018-05-04 John Marshall : Merge pull request \#51 from StevenGreen1/feature/Cheating3DHitCreation
-   2018-05-04 Steven Green : GetWireZPitch function now calls GetWirePitch function to remove duplicate code.
-   2018-05-03 Steven Green : Resolving issue with 3D hit creation using fully cheated reconstruction. Issue relates to accessing geometry information in the case of multiple LArTPCs in a single pandora instance.
-   2018-05-03 John Marshall : Merge pull request \#52 from StevenGreen1/feature/Initialization
-   2018-05-03 Steven Green : Added missing initialization of member variables in SliceFeatureParameters class.
-   2018-05-02 Multi-algorithm pattern recognition : Merge pull request \#50 from StevenGreen1/feature/LArSoftTesting
-   2018-05-02 Steven Green : Static casts added when comparing signed vs unsigned ints.
-   2018-05-01 John Marshall : Merge branch 'feature/UpdateChangeLog'
-   2018-05-01 John Marshall : Update version and change log.
-   2018-05-01 Multi-algorithm pattern recognition : Merge pull request \#49 from StevenGreen1/feature/TestBeamParticleCreationVertex
-   2018-05-01 Steven Green : Access Pfo vertex using PfoHelper and default configuration alterations.
-   2018-05-01 Steven Green : Added configurable option to retain interaction, start or both vertices for test beam particles.
-   2018-05-01 Steven Green : Added configurable option to position test beam particle vertex at lowest Z calo hit.
-   2018-05-01 John Marshall : Merge pull request \#42 from StevenGreen1/feature/BdtBeamParticleId
-   2018-04-30 Steven Green : Configurable calo hit and mc particle list names.
-   2018-04-23 Steven Green : CaloHitSet used for reconstructable CaloHits look-up.
-   2018-04-19 Steven Green : Accessing LArMCParticleHelper parameters using LArMCParticleHelper::PrimaryParameters default constructor.
-   2018-04-16 Steven Green : Created BDT beam particle id tool.
-   2018-04-30 John Marshall : Merge pull request \#47 from StevenGreen1/feature/ProtoDUNE_EvtVal
-   2018-04-27 Multi-algorithm pattern recognition : Protect build without Monitoring enabled.
-   2018-04-25 Steven Green : Removed defunct tree variables for test beam use case.
-   2018-04-25 Steven Green : Defining test beam particle mode in event validation algorithm.
-   2018-04-04 Steven Green : Modified the event validation algorithm to work with ProtoDUNE.
-   2018-04-30 John Marshall : Merge pull request \#46 from StevenGreen1/feature/WeightedPcaFits
-   2018-04-27 Multi-algorithm pattern recognition : Cosmetic.
-   2018-04-27 Multi-algorithm pattern recognition : Explicit casts between single and double floats.
-   2018-04-27 Multi-algorithm pattern recognition : Remove unused include.
-   2018-04-24 Steven Green : Corrected error in use of weights in covariance matrix determination.
-   2018-04-23 Steven Green : Added weighting to calculation of centroid in pca fit. Cosmetic changes including clearer typedefs.
-   2018-04-23 Steven Green : Added LArObjectHelper containing TypeAdaptor class.
-   2018-04-20 Steven Green : Added functionality to weight Cartesian points in Pca fits.
-   2018-04-30 John Marshall : Merge pull request \#45 from StevenGreen1/feature/NeutrinoIdTrainingModifications
-   2018-04-23 Steven Green : CaloHitSet used for keeping record of reconstructable CaloHits.
-   2018-04-19 Steven Green : Accessing LArMCParticleHelper parameters using LArMCParticleHelper::PrimaryParameters default constructor.
-   2018-04-19 Steven Green : Modifications to purity and completeness calculation in neutrino id training.
-   2018-04-30 John Marshall : Merge pull request \#44 from StevenGreen1/feature/GetSigmaUVW
-   2018-04-23 Steven Green : GetSigmaUVW in GeometryHelper now returns floating point number as stored in LArTPC object.
-   2018-04-17 Steven Green : Moved the GetSigmaUVW function to the LArGeometryHelper.
-   2018-04-30 John Marshall : Merge branch 'loressa/feature/exceptionHandling'
-   2018-04-05 loressa : Access feature values by const reference. Cosmetic changes.
-   2018-04-03 loressa : Updated 3D features to use LArMvaHelper::MvaFeature (i.e. initialized doubles)
-   2018-04-03 loressa : Address PR comments
-   2018-03-20 loressa : Updated exception handling in svm track/shower id
-   2018-03-27 loressa : Removed unused SVMClusterCharacterisationAlgorithm
-   2018-03-20 loressa : Alter StatusCodes associated with raised exceptions.
-   2018-04-30 John Marshall : Merge pull request \#40 from StevenGreen1/feature/TestBeamParticleCreation
-   2018-04-16 Steven Green : Added ATTN describing logic used in test beam pfo particle id.
-   2018-04-09 Steven Green : Created the test beam particle creation algorithm.
-   2018-04-30 John Marshall : Merge pull request \#39 from StevenGreen1/feature/GenericCheatedCRTagging
-   2018-04-16 Steven Green : Changed references from minNeutrinoFraction to maxCosmicRayFraction in CheatingCosmicRayTaggingTool.
-   2018-04-04 Steven Green : Removed neutrino reference in CheatingCosmicRayTaggingTool.
-   2018-04-30 John Marshall : Merge branch 'feature/SvmProbabilityReturn'
-   2018-04-16 John Marshall : Simplify, removing equivalent returns.
-   2018-04-30 John Marshall : Merge branch 'feature/AdaBoostDecisionTree'
-   2018-03-29 Steven Green : Created the InitializedDouble class for use in Mva.
-   2018-03-28 John Marshall : Header include adjustments and cosmetic changes.
-   2018-03-28 John Marshall : Alter StatusCode returns. Cosmetic change.
-   2018-03-27 John Marshall : Remove trailing whitespace.
-   2018-03-27 John Marshall : Classifiers and Nodes must be constructed via xml handles. Using namespace pandora.
-   2018-03-27 John Marshall : Rename MultivariateAnalysisBaseClass as MvaInterface.
-   2018-03-27 Steven Green : PandoraInputType now used in MVA feature definition.
-   2018-03-27 Steven Green : Changed location of feature definition used in MVA.
-   2018-03-26 Steven Green : Added null implementation for LArMultivariateAnalysisBaseClass destructor.
-   2018-03-21 Steven Green : Added copy constructor, assignment operator and destructor for decision tree classes.
-   2018-03-19 Steven Green : Abstract base class for MVAs used in LArMvaHelper. Stylistic changes.
-   2018-02-15 Steven Green : Created the LArAdaBoostDecisionTree class, restructured the use of the LArSupportVectorMachine and converted the LArSvmHelper into the more generic LArMvaHelper.

## larsoftobj v1_44_00

-   2018-05-09 Lynn Garren : larsoftobj v1_44_00 for larsoft v06_76_00
-   2018-05-09 Lynn Garren : product versions

## lardataobj v1_32_00

-   2018-05-09 Lynn Garren : lardataobj v1_32_00 for larsoft v06_76_00
-   2018-05-08 Lynn Garren : Merge branch 'feature/wketchum_LArG4Refactor_develop' into release/v06_76_00
-   2018-05-02 Gianluca Petrillo : Added TrajectoryPointFlags::match().
-   2018-04-30 Gianluca Petrillo : Changed flag initialization to braces.
-   2018-04-27 Gianluca Petrillo : Documentation update.
-   2018-05-01 Wesley Ketchum : forgot to make my commits here for energy deposition stuff too…
-   2018-04-29 Wesley Ketchum : merging uboone larg4 refactor to develop
-   2018-04-29 Wesley Ketchum : Merge branch 'feature/wketchum_LArG4Edeps_2' into develop
-   2018-03-14 Wesley Ketchum : compare function has problems
-   2018-02-19 Wesley Ketchum : class def update
-   2018-02-18 Wesley Ketchum : add pdg code to SimEnergyDeposit
-   2018-02-18 Wesley Ketchum : add in the SimEnergyDeposit class from later commits
-   2018-01-31 Lynn Garren : lardataobj v1_11_00_05 for larsoft v06_26_01_10
-   2018-01-24 Gianluca Petrillo : Added missing classes for association dictionary
-   2017-12-12 Lynn Garren : lardataobj v1_11_00_04
-   2017-11-06 Yun-Tse Tsai : include a new checksum
-   2017-11-06 Yun-Tse Tsai : checkout from origin/feature/yuntse_trackide
-   2017-11-06 Wesley Ketchum : include header guards
-   2017-10-25 Usher, Tracy L : Working on fixing the issue where the bytes written are not the expected bytes on readback, current suspect is the bool
-   2017-10-25 Usher, Tracy L : Forgot to define containers for the auxiliary class
-   2017-10-25 Usher, Tracy L : conflicts for xml resolved
-   2017-10-25 Usher, Tracy L : fix typo
-   2017-10-25 Usher, Tracy L : Add reference to the new association between hits and MCParticles
-   2017-10-25 Wesley Ketchum : add hit assns to mctruth matching module
-   2017-10-10 Lynn Garren : for larsoft v06_26_01_06
-   2017-10-03 Herbert Greenlee : Add missing inline.
-   2017-09-12 Lynn Garren : for larsoft v06_26_01_05
-   2017-05-03 Giuseppe Cerati : forgot std::vector<recob::MCSFitResult>
-   2017-04-21 Giuseppe Cerati : first version of MCSFitResult
-   2017-05-03 Giuseppe Cerati : implement suggestions from Gianluca for constructurs in (Track)Trajectory
-   2017-05-03 Giuseppe Cerati : create a TrackTrajectory from a Trajectory
-   2017-08-17 Giuseppe Cerati : add lardataobj/RecoBase/MCSFitResult.h

## larcorealg v1_20_00

-   2018-05-09 Lynn Garren : larcorealg v1_20_00 for larsoft v06_76_00
-   2018-05-02 Gianluca Petrillo : Added a few metaprogramming utilities for containers.

## larcoreobj v1_23_00

## larbatch v01_39_01

-   2018-05-09 Lynn Garren : larbatch v01_39_01 for larsoft v06_76_00
-   2018-05-03 Herbert Greenlee : Change fixed tarball time stamp to something more recent than 1970.

## larutils v1_22_05

-   2018-05-09 Lynn Garren : larutils v1_22_05 for larsoft v06_76_00
-   2018-05-03 Thomas Junk : remove duneutil build and put retry logic on the mrb g for dunetpc
-   2018-05-03 Lynn Garren : add e17
-   2018-05-03 Lynn Garren : better check for gcc on Darwin
-   2018-05-02 Lynn Garren : better check for gcc on Darwing
-   2018-05-02 Lynn Garren : no source manifest
-   2018-05-02 Lynn Garren : add s67
