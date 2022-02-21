LArSoft v06_81_00 Release Notes
======================================================================

[list of LArSoft releases](LArSoft_release_list)
Download instructions for [larsoft v06_81_00](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v06_81_00/larsoft-v06_81_00.html)
Download instructions for [just larsoftobj v1_47_01](http://scisoft.fnal.gov/scisoft/bundles/larsoftobj/v1_47_01/larsoftobj-v1_47_01.html)

Purpose
--------------------

-   changes in develop
-   approved feature branches

New features
------------------------------

-   larevt feature/eberly_dbTimeoutFix
    -   This branch adopts some recommendations from Igor Madrichenko on how to handle calibration database request timeouts.
-   pandora v03-11-00
    -   larpandoracontent larpandora feature/Pandora_v03_11_00
    -   [https://indico.fnal.gov/event/17395/contribution/2/material/slides/0.pdf](https://indico.fnal.gov/event/17395/contribution/2/material/slides/0.pdf)

Bug fixes
------------------------

Updated dependencies
----------------------------------------------

-   pandora v03_11_00

Change List
============================

larsoft v06_81_00
------------------------------------------

-   2018-06-20 Lynn Garren : larsoft v06_81_00 for larsoft v06_81_00
-   2018-06-20 Lynn Garren : pandora v03_11_00

lareventdisplay v06_20_02
----------------------------------------------------------

-   2018-06-20 Lynn Garren : lareventdisplay v06_20_02 for larsoft v06_81_00

larexamples v06_14_02
--------------------------------------------------

-   2018-06-20 Lynn Garren : larexamples v06_14_02 for larsoft v06_81_00

larpandora v06_31_00
------------------------------------------------

-   2018-06-20 Lynn Garren : larpandora v06_31_00 for larsoft v06_81_00
-   2018-06-19 Lynn Garren : Merge branch ‘feature/Pandora_v03_11_00’ into release/v06_81_00
-   2018-06-18 John Marshall : Merge branch ‘feature/MipEnergies’ into feature/Pandora_v03_11_00
-   2018-06-18 John Marshall : Make use of BirksCorrection configurable, and control truncation of resulting mip-equivalent distribution.
-   2018-06-15 John Marshall : Merge branch ‘feature/PrintOutScores’ into feature/Pandora_v03_11_00
-   2018-06-15 loressa : Added some tools to print out scores/pfparticle metadata
-   2018-06-14 John Marshall : Merge branch ‘feature/LArPandoraEventMetadata’ into feature/Pandora_v03_11_00
-   2018-06-14 a-d-smith : Added PFParticle metadata to LArPandoraEvent collection merging and splitting modules
-   2018-06-12 John Marshall : Merge branch ‘feature/HitAssociations’ into develop
-   2018-06-06 loressa : Cosmetic changes.
-   2018-06-06 loressa : Templated static function GetAssociatedHits.
-   2018-06-06 loressa : Updated module to print out and save comparison of associated number of hits as PFParticle vs as recob::Tracks or recob::Showers.
-   2018-06-05 loressa : Changed the way hits associated to a recob::Track/Shower are computed through clusters instead of space points.
-   2018-06-12 John Marshall : Merge branch ‘feature/PFParticleMetadata’ into develop
-   2018-06-12 John Marshall : Access PFParticleMetadata in event dump module.
-   2018-06-12 John Marshall : Add CollectPFParticleMetadata function to LArPandoraHelper.
-   2018-06-12 John Marshall : PFParticleMetadata reduced, for now, to holding properties map.
-   2018-06-08 John Marshall : Minimal addition of PFParticleMetadata and associations output, from Andy S.
-   2018-06-12 John Marshall : Merge branch ‘feature/WireAngleW’ into develop
-   2018-06-12 John Marshall : Additional includes so header can stand alone.
-   2018-06-12 John Marshall : Enforce expectation of u and v views. If there is one further view, it must be w or y.
-   2018-06-12 John Marshall : Always set hit wpos_cm via lar transformation plugin, rather than assuming w wire angle.
-   2018-06-06 John Marshall : Correct sign of u/v wire angles when loading global daughter geometry.
-   2018-05-17 John Marshall : Updated to handle a non-zero w wire angle. Sign convention for v wire angle also changed.

larwirecell v06_14_02
--------------------------------------------------

-   2018-06-20 Lynn Garren : larwirecell v06_14_02 for larsoft v06_81_00

larana v06_20_02
----------------------------------------

-   2018-06-20 Lynn Garren : larana v06_20_02 for larsoft v06_81_00

larreco v06_62_00
------------------------------------------

-   2018-06-20 Lynn Garren : Merge branch ‘release/v06_81_00’
-   2018-06-20 Lynn Garren : last minute bug fix
-   2018-06-20 baller : Add return true in Reconcile3D.
-   2018-06-20 baller : Add StudyShowerParents
-   2018-06-20 baller : Add StudyShowerParents
-   2018-06-20 baller : Check kShwrParent bool
-   2018-06-20 baller : Add StudyShowerParents
-   2018-06-20 baller : Add StudyShowerParents
-   2018-06-20 baller : Add StudyShowerParents
-   2018-06-20 Lynn Garren : larreco v06_62_00 for larsoft v06_81_00
-   2018-06-19 baller : Merge branch ‘feature/bb_TCWork’ into develop
-   2018-06-19 baller : Work in DefineDontCluster.
-   2018-06-19 baller : Add some consistency checks
-   2018-06-19 baller : Comment out print statement
-   2018-06-19 baller : Resolve commit conflicts
-   2018-06-13 baller : Merge branch ‘feature/bb_TCWork’ of ssh://cdcvs.fnal.gov/cvs/projects/larreco into feature/bb_TCWork
-   2018-06-13 baller : Comment out re-direct electrons to eve MCParticle
-   2018-06-13 baller : Kill showers with too-small aspect ratio. Add some tweaks in DefineDontCluster.
-   2018-06-12 baller : Re-direct electron truth particles to the eve particle.
-   2018-06-08 baller : Tweak debug output and a cut in SetParent.
-   2018-06-08 Rory Fitzpatrick : commenting out unused variables
-   2018-06-08 baller : Return bool from CompleteIncompleteShower. Apply ShowerTag cuts in FindShowers3D before leaving. Work in Reconcile3D.
-   2018-06-08 baller : Return bool from CompleteIncompleteShower.
-   2018-06-08 baller : Improve debug report
-   2018-06-08 baller : Add association checks in CompleteIncompleteShowers.
-   2018-06-08 baller : Merge remote-tracking branch ‘origin/feature/bb_TCWork’ into feature/bb_TCWork
-   2018-06-08 baller : Merge remote-tracking branch ‘origin’ into feature/bb_TCWork
-   2018-06-08 baller : Work on CompleteIncompleteShowers.
-   2018-06-08 Rory Fitzpatrick : save showerLike information with neg cluster id
-   2018-06-07 baller : Work on reconciling pfp - tj and shower - tj associations
-   2018-06-07 baller : Work on reconciling pfp - tj and shower - tj associations
-   2018-06-07 baller : Add more features to GetAssns. Change IsInShower to IsShowerlike.
-   2018-06-06 baller : Some code cleanup.
-   2018-06-06 baller : fix int - unsigned int comparison
-   2018-06-06 baller : Add another assn
-   2018-06-06 baller : Put ChkAssns in various places for debugging. Work on resolving association conflicts.
-   2018-06-05 baller : Set to be consistent with v06_80_00
-   2018-06-05 baller : Add FindNeutrinoParent, SetParent and StoreShower
-   2018-06-05 baller : Add FindNeutrinoParent, SetParent and StoreShower
-   2018-06-05 baller : Add checks in FindAlongTrans
-   2018-06-05 baller : Add SetMag 2D version. Add checks in FindAlongTrans
-   2018-06-05 baller : Add SetMag 2D version
-   2018-06-05 baller : Make variable name more descriptive
-   2018-06-05 baller : remove vagrant std::cout
-   2018-06-04 baller : Change versions to allow building with uboonecode v06_79_00.
-   2018-06-04 baller : Return bool from AnalyzePFP. Add consistency checks.
-   2018-06-04 baller : Return bool from AnalyzePFP
-   2018-06-04 baller : Fix bug in TrimEndPts
-   2018-06-04 baller : Merge branch ‘develop’ into feature/bb_TCWork
-   2018-06-04 baller : Move proton tagging into ChkStop. Add final quality check in CheckTraj.
-   2018-06-04 baller : Tweak cuts. Fix MergeWithVertex.
-   2018-06-04 baller : Add primary electron functions
-   2018-06-04 baller : Add primary electron functions
-   2018-06-04 baller : Remove obsolete code. Move FarEnd from TCShower to PFPUtils and Utils.
-   2018-06-04 baller : Remove obsolete code. Move FarEnd from TCShower to PFPUtils and Utils.
-   2018-06-04 baller : Remove obsolete code. Move FarEnd from TCShower to PFPUtils and Utils.
-   2018-06-04 baller : Remove obsolete code. Move FarEnd from TCShower to PFPUtils and Utils.
-   2018-06-04 baller : Remove obsolete code. Move FarEnd from TCShower to PFPUtils and Utils.
-   2018-06-04 baller : Remove obsolete code. Move FarEnd from TCShower to PFPUtils and Utils.
-   2018-06-04 baller : remove obsolete algs. change unsigned shorts to ints. Add DontClusterStruct
-   2018-06-04 baller : remove obsolete algs
-   2018-06-03 baller : Reduce debug output. Lower the ad-hoc MCSMom cut in ChkStop.
-   2018-05-30 baller : Add TjStuff dontCluster. Add SSID to Trajectory and remove kInShower. Add shower algs.
-   2018-05-30 baller : Add TjStuff dontCluster. Add SSID to Trajectory and remove kInShower. Add shower algs. Add const to some function calls.
-   2018-05-30 baller : Add const to some function calls
-   2018-05-30 baller : Add TjStuff dontCluster. Add SSID to Trajectory and remove kInShower. Add shower algs.
-   2018-05-30 baller : Add TjStuff dontCluster. Add SSID to Trajectory and remove kInShower. Add shower algs.
-   2018-05-30 baller : Add TjStuff dontCluster. Add SSID to Trajectory and remove kInShower. Add shower algs.
-   2018-05-30 baller : Add TjStuff dontCluster. Add SSID to Trajectory and remove kInShower. Add shower algs.
-   2018-05-30 baller : Comment out CheckAndMerge for now.
-   2018-05-30 baller : Add TjStuff dontCluster. Add SSID to Trajectory and remove kInShower. Add shower algs.
-   2018-05-30 baller : Add TjStuff dontCluster. Add SSID to Trajectory and remove kInShower. Add shower algs.
-   2018-05-30 baller : Add TjStuff dontCluster.
-   2018-05-22 baller : Remove unused variable
-   2018-05-22 baller : Add comment
-   2018-05-22 baller : Pass showers by reference instead of by ID.
-   2018-05-22 baller : Pass showers by reference instead of by ID.
-   2018-05-22 baller : Pass showers by reference instead of by ID. Re-package code in FillPts, FindChargeCenter, etc into a single function - UpdateShower. Replace 2D FindExternalParent with 3D FindParent. Remove old code.
-   2018-05-22 baller : Pass showers by reference instead of by ID. Re-package code in FillPts, FindChargeCenter, etc into a single function - UpdateShower. Replace 2D FindExternalParent with 3D FindParent. Remove old code.
-   2018-05-22 baller : Add 2D version of PointDirection. Fix bug in PrintPos.
-   2018-05-22 baller : Add 2D version of PointDirection

larsim v06_50_02
----------------------------------------

-   2018-06-20 Lynn Garren : larsim v06_50_02 for larsoft v06_81_00
-   2018-06-17 Jose Soto : fix in ParPropTime function //dual phase photon time propagation
-   2018-06-14 Lynn Garren : larsoft v06_81_00
-   2018-06-13 Jason Stock : Revert “Accidentally reverted larsim version in ups product deps.”
-   2018-06-13 Jason Stock : Accidentally reverted larsim version in ups product deps.
-   2018-06-13 Jason Stock : Merge remote-tracking branch ‘refs/remotes/origin/develop’ into develop
-   2018-06-13 Jason Stock : fixing bug stopping CI tests.
-   2018-06-13 Jason Stock : Merge remote branch ‘origin/develop’ into develop
-   2018-06-13 Jason Stock : silencing an error message until this is updated for art3.
-   2018-06-13 Jason Stock : Merge branch ‘tmpLocal’ into develop
-   2018-06-13 Jason Stock : Merge commit ‘LARSOFT_SUITE_v06_80_00’ into HEAD
-   2018-06-13 Jason Stock : Removing a single un needed include that was left from some debugging.
-   2018-06-13 Jason Stock : Updating the filling of the sim::OpDetBacktrackerRecords to log correct energy. Before the energy stored in OpDetBTRs was incorrectly set as the total energy deposited in a G4Step. Now it is strictly the VisibleEnergy deposited in a G4Step from fEMSaturation.
-   2018-05-26 Jason Stock : Merge commit ‘LARSOFT_SUITE_v06_77_00’ into feature/JStock_Ni59
-   2017-12-18 Jason Stock : Merge tag ‘LARSOFT_SUITE_v06_60_00’ into feature/JStock_Ni59
-   2017-12-17 Jason Stock : Update to RadioGen for Ni59 calibration sources.

larevt v06_22_00
----------------------------------------

-   2018-06-20 Lynn Garren : larevt v06_22_00 for larsoft v06_81_00
-   2018-06-19 Lynn Garren : Merge branch ‘feature/eberly_dbTimeoutFix’ into release/v06_81_00
-   2018-06-18 Brandon Eberly : Fixed a bug when default statuses are used. Made a small internal change that redueces the use of the art geometry service
-   2018-05-10 Brandon Eberly : Increased maximum length of timeout for database queries

lardata v06_46_01
------------------------------------------

larcore v06_20_00
------------------------------------------

larpandoracontent v03_13_00
--------------------------------------------------------------

-   2018-06-20 Lynn Garren : larpandoracontent v03_13_00 for larsoft v06_81_00
-   2018-06-19 Lynn Garren : using pandora v03_11_00
-   2018-06-15 John Marshall : Merge pull request \#65 from StevenGreen1/feature/BdtBeamParticleId_IntersectionFix
-   2018-06-15 Steven Green : Altering method for finding intercepts between fit and TPC boundaries.
-   2018-06-15 John Marshall : Merge pull request \#64 from loressa/feature/SetPfoProperties
-   2018-06-15 loressa : Persisted SVM trackScore as PFParticleMetadata
-   2018-06-15 John Marshall : Merge branch ‘feature/DeltaW’
-   2018-06-15 John Marshall : Replace z/w assumed equivalence with use of LArRotationalTransformationPlugin::YZtoW.
-   2018-06-15 John Marshall : Merge branch ‘feature/DetectorGapsForWorkers’
-   2018-06-15 John Marshall : Update change log.
-   2018-06-15 John Marshall : Pandora worker instances now initialized at start of first event, as client app is unable to extract gap information before that point.
-   2018-06-14 John Marshall : Merge pull request \#62 from StevenGreen1/feature/SetPfoProperties
-   2018-06-14 Steven Green : Cosmetic.
-   2018-06-14 Steven Green : Added neutrino id score to pfo properties map.
-   2018-06-12 Steven Green : Added test beam id score to pfo properties map.
-   2018-06-14 John Marshall : Merge branch ‘updates’
-   2018-06-14 John Marshall : Can now configure wire angle discrepancies separately for each plane.
-   2018-06-13 John Marshall : Merge branch ‘updates’
-   2018-06-13 John Marshall : Update version and change log.
-   2018-06-13 John Marshall : Cosmetic.
-   2018-06-12 Multi-algorithm pattern recognition : Merge pull request \#61 from StevenGreen1/feature/RemovingCosmicRays
-   2018-06-12 Steven Green : Alter method used for accessing cosmic ray mc information in cheating cosmic ray removal algorithm.
-   2018-06-12 John Marshall : Merge branch ‘feature/SetPfoProperties’
-   2018-06-12 John Marshall : Set basic IsNeutrino and IsTestBeam Pfo properties.
-   2018-06-12 John Marshall : Include PfoPropertiesMap when copying Pfo instances.
-   2018-06-11 Multi-algorithm pattern recognition : Merge pull request \#60 from StevenGreen1/feature/BdtBeamParticleId_Intersection
-   2018-06-11 Steven Green : Modification to accuracy used in calculation of intersection between PCA fit and LArTPC.
-   2018-06-06 John Marshall : Merge pull request [redmine issue 56](https://cdcvs.fnal.gov/redmine/issues/56) from StevenGreen1/feature/CheatedParticleVertices
-   2018-06-05 Steven Green : Minor restructuring of code to improve efficiency.
-   2018-05-30 Steven Green : Added vertices for cheated (non-neutrino) particles.
-   2018-06-05 John Marshall : Merge pull request [redmine issue 57](https://cdcvs.fnal.gov/redmine/issues/57) from StevenGreen1/feature/RemovingCosmicRays
-   2018-06-05 Multi-algorithm pattern recognition : Edit message printed upon catching a StatusCodeException.
-   2018-03-27 Steven Green : Added CheatingRemovingCosmicRays algorithm.
-   2018-06-05 John Marshall : Merge pull request [redmine issue 55](https://cdcvs.fnal.gov/redmine/issues/55) from StevenGreen1/feature/TestBeamParticleCreationVertexing
-   2018-05-25 Multi-algorithm pattern recognition : Catch const StatusCodeException &
-   2018-05-23 Steven Green : Addressed test beam particle creation algorithm failure in case of multiple reconstructed particles.
-   2018-06-05 John Marshall : Merge pull request [redmine issue 54](https://cdcvs.fnal.gov/redmine/issues/54) from StevenGreen1/feature/ParticleIdComparison
-   2018-05-23 Steven Green : Corrected particle id comparison inside LArPfoHelper::IsTestBeam.
-   2018-06-05 John Marshall : Merge branch ‘feature/WireAngleW’
-   2018-05-17 John Marshall : Updated lar rotational transformation plugin implementation to handle a non-zero w wire angle. Sign convention for v wire angle also changed.
-   2018-06-05 John Marshall : Merge branch ‘feature/MCParticlesInWorkerInstances’
-   2018-05-14 John Marshall : No longer have default initialization of an object of const type.
-   2018-05-14 John Marshall : Cheating tools no longer need to navigate back to master CaloHit instances in order to access MCParticle information.
-   2018-05-14 John Marshall : Add option to pass MCParticle instances, relationships and links to CaloHits, to Pandora worker instances.

larsoftobj v1_47_01
----------------------------------------------

lardataobj v1_33_00
----------------------------------------------

lardataalg v1_01_01
----------------------------------------------

larcorealg v1_23_00
----------------------------------------------

larcoreobj v1_24_00
----------------------------------------------

larbatch v01_41_00
--------------------------------------------

-   2018-06-20 Lynn Garren : larbatch v01_41_00 for larsoft v06_81_00
-   2018-06-19 Herbert Greenlee : Dump tail of lar output for failed jobs.
-   2018-06-19 Herbert Greenlee : Merge branch ‘feature/greenlee_singlerun’ into develop
-   2018-06-19 Herbert Greenlee : Dump tail of crashed output into condor log.
-   2018-06-18 Herbert Greenlee : Merge remote-tracking branch ‘origin/develop’ into feature/greenlee_singlerun
-   2018-06-17 Herbert Greenlee : Handle single run failure modes better.
-   2018-06-15 Herbert Greenlee : Add element \<activebase\>.
-   2018-06-14 Lynn Garren : larsoft v06_81_00
-   2018-06-13 Herbert Greenlee : Merge branch ‘develop’ into feature/greenlee_singlerun
-   2018-06-13 Herbert Greenlee : Allow multiple mixparents.
-   2018-06-12 Herbert Greenlee : Add function make_active_project_dataset.
-   2018-06-12 Herbert Greenlee : Add active_projects function.
-   2018-06-12 Herbert Greenlee : Merge branch ‘feature/greenlee_prestart’ into feature/greenlee_singlerun
-   2018-06-12 Herbert Greenlee : Add prestart option.
-   2018-06-12 Herbert Greenlee : Add singlerun flag.

larutils v1_22_07
------------------------------------------
