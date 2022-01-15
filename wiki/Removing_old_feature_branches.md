Removing old feature branches
================================================================

Once feature branches are published, they are seldom removed, even after the branch has been merged with develop or some patch branch.

**The plan was implemented on Sept. 17, 2019.**

The plan
----------------------

-   Using the script and lists [below](#Identifying-branches-that-can-be-removed), identify branches which have been merged.
-   Go through the output by hand to verify that we want to remove these branches.
-   Branches to be removed are listed below.

### larcoreobj

-   feature/at_for_art_2_06
-   feature/cerati_mcsmom-uboone-mcc8
-   feature/gp_GenVectorTransition
-   feature/gp_Issue18943
-   feature/gp_Issue18943_for_v06_26_01_01
-   feature/gp_PhotonVisTransformations
-   feature/JStock_BackTrackerUpdate
-   feature/knoepfel_rm_unused_headers
-   feature/team_for_art_v3
-   feature/team_for_art_v3_02
-   feature/team_with_larg4
-   feature/wketchum_ViewAsignment

### larcorealg

-   feature/gp_factorizeGeometryBuilding
-   feature/gp_GenVectorTransition
-   feature/gp_GeometryDumper
-   feature/gp_Issue19043
-   feature/gp_PhotonVisTransformations
-   feature/gp_pythonSupport
-   feature/JStock_BackTrackerUpdate
-   feature/knoepfel_rm_unused_headers
-   feature/russo_ticket_18136
-   feature/russo_ticket_18137
-   feature/ss_issue16812
-   feature/ss_issue19191
-   feature/team_for_art_v3
-   feature/team_for_art_v3_02
-   feature/team_with_larg4

### lardataobj

-   feature/alister1_pid_ioread
-   feature/at_for_art_2_06
-   feature/bb_recobslice
-   feature/cerati_double2float_v2
-   feature/cerati_double2float_v2_breaktrack
-   feature/cerati_double2float_v2_breaktrack_deldepr
-   feature/cerati_kffitresiduals
-   feature/cerati_larsoft-v06_26_01-plus-new-kffit
-   feature/cerati_mcs-mom
-   feature/cerati_new-recob-vertex-and-fitter
-   feature/cerati_test-mcs-mom
-   feature/cerati_TrackTrajectory
-   feature/dgg_lightprop
-   feature/escudero_PFParticleMetadataMigration
-   feature/escudero_PFParticleMetadataTemporaryNamespaceFix
-   feature/gardiner_MARLEY_upgrade
-   feature/gp_DocumentationFix
-   feature/gp_Issue15446_light
-   feature/gp_Issue17804
-   feature/gp_Issue19043
-   feature/gp_TrackingVectorTypes
-   feature/greenlee_mcc9_mucapture_flux
-   feature/jsoto_SimDriftedElectronCluster
-   feature/JStock_BackTrackerUpdate
-   feature/JStock_OpDetBTR_bunching
-   feature/JStock_PhotonBackTracker
-   feature/knoepfel_rm_unused_headers
-   feature/LArShowerPfo
-   feature/ss_issue19386
-   feature/team_for_art_v3
-   feature/team_for_art_v3_02
-   feature/team_with_larg4
-   feature/tjyang_recobslice
-   feature/trj_rawdata_timestamp_june2018
-   feature/usher_cluster3dupdates
-   feature/wenzel_larg4refac
-   feature/wenzel_larg4refac_phase2_1
-   feature/wketchum_LArG4Edeps_2
-   feature/wketchum_LArG4Refactor_develop
-   feature/wketchum_LArG4Refactor_develop
-   feature/wketchum_LArG4Refactor_develop
-   feature/wketchum_MCHitAssnsUbooneMCC8
-   feature/wketchum_MCMatchHitAssn
-   feature/wketchum_PandoraVertexDev
-   feature/yuntse_trackide

### lardataalg

-   feature/gp_DetectorClocks
-   feature/gp_moveLArDataUtils
-   feature/gp_OpDetWaveformDumper
-   feature/gp_PhotonVisTransformations
-   feature/gp_quantities
-   feature/knoepfel_rm_unused_headers
-   feature/russo_ticket_19446
-   feature/ss_issue18281
-   feature/team_for_art_v3
-   feature/team_for_art_v3_02
-   feature/team_with_larg4
-   feature/usher_driftvelocityfudgefactor
-   feature/wketchum_OverlayG4RefCorrection

### larsoftobj

-   feature/at_for_art_2_06
-   feature/team_for_art_v3
-   feature/team_for_art_v3_02
-   feature/team_with_larg4

### larcore

-   feature/at_for_art_2_06
-   feature/AuxDetSort_standard
-   feature/AuxDetTrap
-   feature/bb_wirework
-   feature/brebel_AuxDetSensitive
-   feature/gp_factorizeGeometryBuilding
-   feature/gp_GeometryDumper
-   feature/jgreer_hitcnn
-   feature/JStock_BackTrackerUpdate
-   feature/knoepfel_rm_unused_headers
-   feature/ls_geoalgo
-   feature/OpDetGeoFix
-   feature/roi
-   feature/team_for_art_v3_02
-   feature/team_with_larg4
-   feature/tjyang_bug5104_moveargoneutfcl
-   feature/tjyang_duneification
-   feature/tmw_opflashfix
-   feature/wketchum_ViewAsignment
-   feature/yale_cosmicCalib
-   feature/yale_cosmicTag
-   feature/yale_dirt
-   feature/yale_PID
-   feature/yale_shower
-   feature/yale_TPCsim
-   feature/yale_track
-   feature/yale_vertex

### lardata

-   feature/andrzejs_geomutil_bugfix
-   feature/at_for_art_2_06
-   feature/blake_particleSeeds
-   feature/brebel_newmagfield_larsoft
-   feature/cerati_double2float_v2_breaktrack
-   feature/cerati_double2float_v2_breaktrack_deldepr
-   feature/cerati_kffitresiduals
-   feature/cerati_larsoft-v06_26_01-plus-new-kffit
-   feature/cerati_phase2track
-   feature/cerati_track-producers-compliant
-   feature/davidc1_daqheader
-   feature/dgg_lightprop
-   feature/dgg_lightpropv2
-   feature/fclupdates
-   feature/gp_AssnsChain
-   feature/gp_Issue17672
-   feature/gp_Issue18220
-   feature/gp_Issue18638
-   feature/gp_Issue19043
-   feature/gp_moveLArDataUtils
-   feature/gp_OpDetWaveformDumper
-   feature/greenlee_line_surface
-   feature/greenlee_mcc9_mucapture_flux
-   feature/greenlee_small_mchit
-   feature/greenlee_wireid_surface
-   feature/Issue1083
-   feature/jgreer_hitcnn
-   feature/jpaley_dunePedDev_2015_11_16
-   feature/jpaley_LArPropertiesBreakup
-   feature/JStock_BackTrackerIntegratedUpdate
-   feature/JStock_BackTrackerNoLazyUpdate
-   feature/jti3_zerosuppression
-   feature/jyoti_XinSignalShaping
-   feature/kirby_db_fix
-   feature/psr_handle_old_files
-   feature/roi
-   feature/rsulej_FactorizeHelper
-   feature/russo_ticket_18137
-   feature/ss_ptrmaker
-   feature/ss_ranges
-   feature/ss-refactoring
-   feature/team_for_art_v3_02
-   feature/team_for_v06_34_01_01
-   feature/team_with_larg4
-   feature/tjyang_bug5104_moveargoneutfcl
-   feature/tjyang_TrackKalmanHitTrackHitMeta
-   feature/usher_cluster3dupdates
-   feature_v04_36_00/greenlee_small_mchit
-   feature/wallbank_ShowerAssociations
-   feature/warburton_ExternalTrigger
-   feature/wketchum_BezierTrackFix
-   feature/wketchum_CosmicTagIsolation
-   feature/wketchum_CosmicTagIsolation_v5
-   feature/wketchum_OverlayG4RefCorrection
-   feature/wketchum_RangeTool
-   feature/wketchum_ViewAsignment
-   feature/yale_dirt
-   feature/yale_shower
-   feature/zennamo_MCShowerdEdx

### larevt

-   feature/at_for_art_2_06
-   feature/calibdb
-   feature/dbrailsf_larg4filter
-   feature/eberly_asicDBI
-   feature/eberly_dblifetimehack
-   feature/eberly_dbTimeoutFix
-   feature/eberly_fwsearchpath
-   feature/eberly_PmtGainDBI
-   feature/greenlee_lazy_db
-   feature/greenlee_lazy_db_develop
-   feature/herogers_SCE_mcc9_take2
-   feature/herogers_updateSCE
-   feature/herogers_voxelizedSCE
-   feature/Issue1083
-   feature/jgreer_hitcnn
-   feature/jpaley_LArPropertiesBreakup
-   feature/JStock_BackTrackerUpdate
-   feature/knoepfel_rm_unused_headers
-   feature/mrmooney_SCERecombFeature
-   feature/NoDetId
-   feature/roi
-   feature/team_for_art_v3_02
-   feature/team_for_v06_34_01_01
-   feature/team_with_larg4
-   feature/tjyang_duneification
-   feature/usher_uboone_pedestal
-   feature/vmeddage_larg4particlefilter
-   feature/wketchum_ViewAsignment

### larsim

-   feature/bb_Argo
-   feature/davidc_mcrecovalidation
-   feature/dgg_fastop_mcc
-   feature/drivera_hadronHP
-   feature/gardiner-marley-vtx-box
-   feature/gp_LazyVector
-   feature/gp_OpticalDocumentation
-   feature/gp_PhotonLibrary
-   feature/gputnam-gallery-fix
-   feature/gputnam_MCSTReco_FV_fix
-   feature/herogers_SCE_xcorrection
-   feature/jgreer_hitcnn
-   feature/jsoto_dphasefix
-   feature/jsoto_dualphase_DriftedElectronClusters
-   feature/jsoto_ExtendedPhotonLibrary
-   feature/jsoto_lightsource_pointsource
-   feature/jsoto_maxrange_in_extendedphotlib
-   feature/JStock_ChannelCorrectedSDPEnergy
-   feature/JStock_fix21417
-   feature/JStock_Ni59
-   feature/JStock_PIRealDataOverride
-   feature/JStock_RadioGenSignal
-   feature/kmistry_dk2nu_ppfx_integration_merge
-   feature/knoepfel_rm_unused_headers
-   feature/lightprop_ugr_mcr
-   feature/mibass_NewFiltersMCC8
-   feature/NoDetId
-   feature/russo_throw_on_bad_physics
-   feature/russo_ticket_19313
-   feature/sbnd_Workshop201803integration
-   feature/semi_ugr_mcr
-   feature/ss_issue18281
-   feature/team_for_art_v3_02_04
-   feature/team_with_larg4
-   feature/update-sim-filters
-   feature_v04_36_00/greenlee_small_simchannel
-   feature_v08_05_00/gardiner-genie-v3
-   feature_wenzel_electrondrift
-   feature/wenzel_electrondrift
-   feature/wenzel_larg4refac
-   feature/wketchum_LArG4Edeps_BugFix
-   feature/wketchum_LArG4Refactor_develop
-   feature/wketchum_MCReco_DiffInputModules
-   feature/wketchum_OverrideRealDataBackTracker
-   feature/wketchum_ShiftEDep_Debugging
-   feature/yatesla_MultipleSubrunPOT

### larreco

-   feature/alister_pidfix
-   feature/at_for_art_2_06
-   feature/bb_new3D
-   feature/bb_TCFix1
-   feature/bb_TCOpt
-   feature/bb_trajcluster_mcc9_fix
-   feature/calcuttj_shower_calorimetry
-   feature/cerati_double2float_v2
-   feature/cerati_double2float_v2_breaktrack
-   feature/cerati_double2float_v2_breaktrack_deldepr
-   feature/cerati_double2float_v2_breaktrack_deldepr_fixconflict
-   feature/cerati_fix-flags-tracks
-   feature/cerati_fix-vtx-fit-bug-v08_05_00_br
-   feature/cerati_kf-fit-inputs-new
-   feature/cerati_kf-ub-mcc9
-   feature/cerati_mcs-mom
-   feature/cerati_mcsmom-uboone-mcc8
-   feature/cerati_new-recob-vertex-and-fitter
-   feature/cerati_phase2track
-   feature/cerati_shw-trk-fits
-   feature/cerati_tcshowerPFP
-   feature/cerati_track-producers-compliant
-   feature/dstefan_DirOfGamma
-   feature/dstefan_TrackShowerSplitter
-   feature/gp_DontStoreGausTF1
-   feature/gp_Issue15446_light
-   feature/gp_moveLArDataUtils
-   feature/greenlee_line_surface
-   feature/greenlee_mcc9_mucapture_flux
-   feature/greenlee_merge_mcc83
-   feature/greenlee_small_mchit
-   feature/greenlee_trajcluster_mcc9
-   feature/greenlee_wireid_surface
-   feature/herogers_dxSCE_calibrationCorrection
-   feature/herogers_dxSCE_calibrationCorrection_mcc9
-   feature/herogers_SCE_mcc9_take2
-   feature/herogers_updateSCE
-   feature/indexHits_lorena
-   feature/iponce_testFeature
-   feature/Issue1083
-   feature/jgreer_hitcnn
-   feature/jpaley_LArPropertiesBreakup
-   feature/JStock_BackTrackerIntegratedUpdate
-   feature/JStock_BackTrackerNoLazyUpdate
-   feature/kduffy_PIDupdate_v08_05_00_br
-   feature/knoepfel_rm_unused_headers
-   feature/lhw_TrackStitcher
-   feature/mccomp
-   feature/mstancar_RawHitFinderMods
-   feature/NoDetId
-   feature/reddypg_ShowerEfficiency
-   feature/rnd_PmaImprovements
-   feature/rnd_PmaRefitter
-   feature/rsf_tcshowerPFP
-   feature/rsulej_larreco_TrkAssnIdx
-   feature/rsulej_tf
-   feature/rsulej_trkValidationPMA
-   feature/rsulej_VertexingFixes
-   feature/russo_ticket_18137
-   feature/ss_issue17179
-   feature/ss-refactoring
-   feature/team_for_art_v3_02
-   feature/team_for_v06_34_01_01
-   feature/team_gshf-larsoft
-   feature/team_with_larg4
-   feature/testFeature
-   feature/tjyang_bug5104_moveargoneutfcl
-   feature/tjyang_cosmictrackeralg
-   feature/tjyang_db3d
-   feature/tjyang_duneification
-   feature/tjyang_emshower
-   feature/tjyang_lifetimedb
-   feature/tjyang_sps
-   feature/tjyang_spsmove
-   feature/tjyang_TrackKalmanHitTrackHitMeta
-   feature/tjyang_wirecellmerge
-   feature/usher_chargeasymmetry
-   feature/usher_hitfindernorawdigits
-   feature/usher_hitfinderupdates
-   feature_v04_36_00/greenlee_small_mchit
-   feature/wallbank_EMShowerImprovements
-   feature/wketchum_GausHitUpdate
-   feature/wketchum_ReduceMC_MCC8
-   feature/yifanch_calorimetry
-   feature/yuntse_calo
-   feature/yuntse_calo_fix
-   bckhouse/feature_reco3d

### larana

-   feature/adi_overlay_v06_03_18_09
-   feature/afurmans_MCTruthMatching
-   feature/aih_pdcalibrator
-   feature/alister1_chi2_pidclassupgrade
-   feature/alister1_chi2_pidclassupgrade
-   feature/at_for_art_2_06
-   feature/cerati_double2float_v2
-   feature/cerati_double2float_v2_breaktrack
-   feature/cerati_double2float_v2_breaktrack_deldepr
-   feature/dgg_fastop_mcc
-   feature/dgg_lightprop
-   feature/gp_DetectorClocks
-   feature/gp_Issue15446_light
-   feature/gp_PhotonVisTransformations
-   feature/Issue1083
-   feature/jgreer_hitcnn
-   feature/jsoto_opdigiproperties_chargenormalization
-   feature/jsoto_photoncounter_generalized
-   feature/JStock_BackTrackerIntegratedUpdate
-   feature/JStock_BackTrackerNoLazyUpdate
-   feature/JStock_SimPhotonCounterPatchForDUNE
-   feature/kduffy_PIDupdate_v08_05_00_br
-   feature/kirby_swizzle_hot_fix
-   feature/kirby_swizzle_hot_fix
-   feature/knoepfel_rm_unused_headers
-   feature/kterao_ophitbipolar
-   feature/lightprop_ugr_mcr
-   feature/markross_SinglePhotonTestLarana
-   feature/mdeltutt_wf_pedestal
-   feature/mvapid
-   feature/nigrant_warwick_pid_2017_08_09
-   feature/OpticalRecoUpdate
-   feature/PEcal-krw
-   feature/russo_ticket_18137
-   feature/sbnd_Workshop201803integration
-   feature/ss_issue17179
-   feature/team_for_art_v3_02
-   feature/team_for_v06_34_01_01
-   feature/team_rm_bezier
-   feature/team_with_larg4
-   feature/tjyang_crhitremovalupdate
-   feature/tjyang_duneification
-   feature/tjyang_t0finder
-   feature/tmw_opflashfix
-   feature/usher_cluster3dupdates
-   feature/usher_crhitremoval
-   feature/usher_fixassociationstool
-   feature/usher_fixForCosmicPCAxisTagger
-   feature/usher_mcparticlehitassociations_reconcile_production
-   feature/usher_multiTPC
-   feature/wketchum_CosmicTagIsolation
-   feature/wketchum_CosmicTagIsolation_v5
-   feature/wketchum_MCMatchHitAssn
-   feature/wketchum_OverrideRealData
-   feature/yuntse_MCMatchHitAssn
-   feature/yuntse_negTrackID_dev

### larpandoracontent

-   feature/asmith_persistRecobSlicev07_11_00
-   feature/at_for_art_2_06
-   feature/blake_multiDrift
-   feature/cerati_shouldRemoveOutOfTimeHits
-   feature/cerati_track-producers-compliant
-   feature/ClearTrackFragmentsRefactor
-   feature/ExternalEventBuilding_asmith
-   feature/jm_restructuring
-   feature/jm_StitchingInstanceWirePitch
-   feature/JStock_BackTrackerUpdate
-   feature/LArPandoraContent_v02_08_00
-   feature/LArPandoraContent_v03_01_00
-   feature/larpandoracontent_v03_07_00
-   feature/LArPandoraContent_v03_07_04
-   feature/larpandoracontent_v03_08_00
-   feature/larpandoracontent_v03_09_00
-   feature/larpandoracontent_v03_10_00
-   feature/larpandoracontent_v03_11_00
-   feature/larpandoracontent_v03_12_00
-   feature/larpandoracontent_v03_14_00
-   feature/larpandoracontent_v03_15_00
-   feature/larpandoracontent_v03_15_01
-   feature/larpandoracontent_v03_15_02
-   feature/larpandoracontent_v03_15_04
-   feature/lg_mytake
-   feature/PandoraDevelopmentArea
-   feature/PandoraDevelopmentArea_ubMCC9
-   feature/Pandora_v03_11_00
-   feature/PrepareForPandora_v03-00-00
-   feature/sgreen_APAStitching
-   feature/sgreen_CRTagging
-   feature/sgreen_T0Calculation
-   feature/team_for_art_v3_02
-   feature/team_for_v06_34_01_01
-   feature/team_with_larg4
-   feature/TrackTrajectorySort
-   feature/wketchum_PandoraDevelopmentArea_MCC9

### larpandora

-   feature/asmith_persistRecobSlicev07_11_00
-   feature/asmith_simChannelLabels
-   feature/asmith_trackToHitMetadata
-   feature/asmith_ubooneMCC9_release_v08_05_00_br
-   feature/at_for_art_2_06
-   feature/blake_multiDrift
-   feature/blake_prepareForPandoraV2
-   feature/blake_standardpandora
-   feature/blake_truthmatching
-   feature/blake_truthmatching_asmith
-   feature/cerati_double2float_v2_breaktrack
-   feature/cerati_double2float_v2_breaktrack_deldepr
-   feature/cerati_track-producers-compliant
-   feature/CreatePandoraLineGaps
-   feature/ddevitt_BuildShowersAsTracks
-   feature/escudero_PFParticleMetadataMigration
-   feature/escudero_PFParticleMetadataTemporaryNamespaceFix
-   feature/escudero_SimChannelsValid
-   feature/feature/DomBarkerShowerBranch
-   feature/indexHits_lorena
-   feature/jgreer_hitcnn
-   feature/jm_PerObjectRejection
-   feature/jm_PerObjectRejection_mcc8_newpandora
-   feature/jm_PerObjectRejection_v06_26_01_01
-   feature/jm_TrackCreationICARUS
-   feature/jm_v06_08_00_04_for_larpandoracontent_v03_07_04
-   feature/JStock_BackTrackerUpdate
-   feature/larpandoracontent_v03_07_00
-   feature/larpandoracontent_v03_08_00
-   feature/larpandoracontent_v03_09_00
-   feature/larpandoracontent_v03_10_00
-   feature/larpandoracontent_v03_11_00
-   feature/larpandoracontent_v03_12_00
-   feature/larpandoracontent_v03_14_00
-   feature/larpandoracontent_v03_15_04
-   feature/LArShowerPfo
-   feature/minTrajectoryPoints
-   feature/NoDetId
-   feature/PandoraDevelopmentArea_ubMCC9
-   feature/Pandora_v03_11_00
-   feature/PrepareFor_LArPandoraContent_v02-05-00
-   feature/PrepareFor_LArPandoraContent_v02-07-00
-   feature/PrepareFor_LArPandoraContent_v02-07-01
-   feature/PrepareForPandora_v02-02-00
-   feature/PrepareForPandora_v02-04-00
-   feature/PrepareForPandora_v03-00-00
-   feature/raquel_LArIATPandora
-   feature/SettingsFor_LArPandoraContent_v02_08_00
-   feature/SettingsFor_LArPandoraContent_v03_01_00
-   feature/sgreen_APAStitching
-   feature/sgreen_DualPhaseTrackCreation
-   feature/sgreen_DUNEFD_DualPhase
-   feature/sgreen_showerIdIndex
-   feature/sg_TriggeredMCInfo
-   feature/team_for_art_v3_02
-   feature/team_for_v06_34_01_01
-   feature/team_with_larg4
-   feature/TrkShwId3D
-   feature/yuntse_shower

### lareventdisplay

-   feature/alister1_removepidfromevd
-   feature/andrzejs_geomutil_bugfix
-   feature/aolivier_FixRecoSegFaults
-   feature/at_for_art_2_06
-   feature/bb_clsIDs
-   feature/bb_Showers
-   feature/bb_Vertex2D
-   feature/bcarls_cosmicEventDisplay
-   feature/cerati_double2float_v2_breaktrack
-   feature/cerati_double2float_v2_breaktrack_deldepr
-   feature/cerati_fix-evd-invalid-hits
-   feature/cerati_flags-evd
-   feature/cerati_larsoft-v06_26_01-plus-new-kffit
-   feature/chalt_DPRawHitFinderUpdate
-   feature/chalt_RawHitFindingDP
-   feature/eberly_channelfilter
-   feature/eberly_dbinterface
-   feature/gp_Display3Doutline
-   feature/gp_moreGeometryFeatures
-   feature/gp_moveLArDataUtils
-   feature/gp_ShowOpticalPhotons
-   feature/Issue10538
-   feature/jgreer_hitcnn
-   feature/jpaley_LArPropertiesBreakup
-   feature/JStock_BackTrackerUpdate
-   feature/kduffy_PIDupdate_v08_05_00_br
-   feature/knoepfel_rm_unused_headers
-   feature/mrobinso_LandedEventDisplay
-   feature/roi
-   feature/team_for_art_v3_02
-   feature/team_for_v06_34_01_01
-   feature/team_with_larg4
-   feature/tjyang_bug5104_moveargoneutfcl
-   feature/usher_3DOpticalDisplay
-   feature/usher_wiredatadrawer
-   feature/wketchum_BezierTrackFix

### larexamples

-   feature/at_for_art_2_06
-   feature/cerati_RecoProxyUsageExample
-   feature/gp_ProxyExample
-   feature/jgreer_hitcnn
-   feature/JStock_BackTrackerUpdate
-   feature/knoepfel_rm_unused_headers
-   feature/team_for_art_v3_02
-   feature/team_for_v06_34_01_01
-   feature/team_with_larg4

### larwirecell

-   feature/at_for_art_2_06
-   feature/bkirby_simChannel
-   feature/bkirby_wirecell_v0_5_2
-   feature/brussell_scpos
-   feature/bviren_imaging
-   feature/bviren_lazy
-   feature/bviren_nticks
-   feature/bviren_perapa
-   feature/bviren_wclsdev
-   feature/bv-protodune
-   feature/bv_simint
-   feature/bv_wct-0.6.2
-   feature/eberly_asicdb
-   feature/feature/wenzel_larg4refac
-   feature/integration
-   feature/jgreer_hitcnn
-   feature/JStock_BackTrackerUpdate
-   feature/team_for_art_v3_02
-   feature/team_for_v06_34_01_01
-   feature/team_with_larg4
-   feature/usher_numbertimesamples
-   feature/usher_truncationorderswap
-   feature/weihy_larwirecell
-   feature/wgu_coh_nf_chandb

### larsoft

-   feature/at_for_art_2_06
-   feature/gp_moveLArDataUtils
-   feature/jgreer_hitcnn
-   feature/team_for_art_v3_02
-   feature/team_for_v06_34_01_01
-   feature/team_with_larg4

### larbatch

-   feature/greenlee_error
-   feature/greenlee_maintain_parentage
-   feature/greenlee_multisubmit
-   feature/greenlee_posix
-   feature/greenlee_projectdir
-   feature/greenlee_pubs2
-   feature/greenlee_recur
-   feature/greenlee_singlerun
-   feature/greenlee_swizzle_validate_in_job
-   feature/greenlee_target_size
-   feature/greenlee_test
-   feature/joelam_validateOnNode
-   feature/team_with_larg4

### larutils

-   feature/team_with_larg4

Identifying branches that can be removed.
---------------------------------------------------------------------------------------

-   [OBSOLETE_LArSoft_stale_feature_branches_page](OBSOLETE_LArSoft_stale_feature_branches_page)
-   This script was used to identify branches that have been merged:

        #!/bin/bash
        source /cvmfs/larsoft.opensciencegrid.org/products/setup
        setup git

        dirs="larana larcore larcorealg larcoreobj lardata lardataalg lardataobj larevt lareventdisplay larexamples larg4 larpandora larreco larsim larsoft larsoftobj larwirecell" 

        for dir in $dirs;do
        if [ ! -d ${dir}.git ];then
        git clone --mirror ssh://p-${dir}@cdcvs.fnal.gov/cvs/projects/${dir}
        fi
        pushd ${dir}.git >/dev/null 2>&1;
        git remote update --prune >/dev/null 2>&1;
        merged="" 
        echo "Branches that have been merged in repo ${dir}" >../${dir}.txt
        echo "Branches that have been merged in repo ${dir}" 
        echo "branches merged into branch master/develop" >>../${dir}.txt
        echo "branches merged into branch master/develop" 
        merged=$(git branch --merged | grep -v 'master' | grep -v 'develop' | grep -v -e '^v')
        echo $merged | tr ' ' '\n' >>../${dir}.txt
        git branch -D $merged >/dev/null 2>&1
        for vbr in $(git branch -a | grep -e '^  v'); do
        vmerged="" 
        echo "branches merged into branch $vbr" >>../${dir}.txt
        echo "branches merged into branch $vbr" 
        vmerged=$(git branch --merged $vbr| grep -v $vbr)
        echo $vmerged | tr ' ' '\n' >>../${dir}.txt
        echo $vmerged | tr ' ' '\n'
        git branch -D $vmerged >/dev/null 2>&1
        done
        popd >/dev/null 2>&1;
        done
