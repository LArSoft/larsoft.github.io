Removing old feature branches
================================================================

-   **Table of contents**
-   [Removing old feature branches](#Removing-old-feature-branches)
    -   [The plan](#The-plan)
        -   [larcoreobj](#larcoreobj)
        -   [larcorealg](#larcorealg)
        -   [lardataobj](#lardataobj)
        -   [lardataalg](#lardataalg)
        -   [larsoftobj](#larsoftobj)
        -   [larcore](#larcore)
        -   [lardata](#lardata)
        -   [larevt](#larevt)
        -   [larsim](#larsim)
        -   [larreco](#larreco)
        -   [larana](#larana)
        -   [larpandoracontent](#larpandoracontent)
        -   [larpandora](#larpandora)
        -   [lareventdisplay](#lareventdisplay)
        -   [larexamples](#larexamples)
        -   [larwirecell](#larwirecell)
        -   [larsoft](#larsoft)
        -   [larbatch](#larbatch)
        -   [larutils](#larutils)
    -   [Identifying branches that can be removed.](#Identifying-branches-that-can-be-removed)

Once feature branches are published, they are seldom removed, even after the branch has been merged with develop or some patch branch.

**The plan was implemented on Sept. 17, 2019.**

The plan
----------------------

-   Using the script and lists [below](#Identifying-branches-that-can-be-removed), identify branches which have been merged.
-   Go through the output by hand to verify that we want to remove these branches.
-   Branches to be removed are listed below.

### larcoreobj

-   feature/at\_for\_art\_2\_06
-   feature/cerati\_mcsmom-uboone-mcc8
-   feature/gp\_GenVectorTransition
-   feature/gp\_Issue18943
-   feature/gp\_Issue18943\_for\_v06\_26\_01\_01
-   feature/gp\_PhotonVisTransformations
-   feature/JStock\_BackTrackerUpdate
-   feature/knoepfel\_rm\_unused\_headers
-   feature/team\_for\_art\_v3
-   feature/team\_for\_art\_v3\_02
-   feature/team\_with\_larg4
-   feature/wketchum\_ViewAsignment

### larcorealg

-   feature/gp\_factorizeGeometryBuilding
-   feature/gp\_GenVectorTransition
-   feature/gp\_GeometryDumper
-   feature/gp\_Issue19043
-   feature/gp\_PhotonVisTransformations
-   feature/gp\_pythonSupport
-   feature/JStock\_BackTrackerUpdate
-   feature/knoepfel\_rm\_unused\_headers
-   feature/russo\_ticket\_18136
-   feature/russo\_ticket\_18137
-   feature/ss\_issue16812
-   feature/ss\_issue19191
-   feature/team\_for\_art\_v3
-   feature/team\_for\_art\_v3\_02
-   feature/team\_with\_larg4

### lardataobj

-   feature/alister1\_pid\_ioread
-   feature/at\_for\_art\_2\_06
-   feature/bb\_recobslice
-   feature/cerati\_double2float\_v2
-   feature/cerati\_double2float\_v2\_breaktrack
-   feature/cerati\_double2float\_v2\_breaktrack\_deldepr
-   feature/cerati\_kffitresiduals
-   feature/cerati\_larsoft-v06\_26\_01-plus-new-kffit
-   feature/cerati\_mcs-mom
-   feature/cerati\_new-recob-vertex-and-fitter
-   feature/cerati\_test-mcs-mom
-   feature/cerati\_TrackTrajectory
-   feature/dgg\_lightprop
-   feature/escudero\_PFParticleMetadataMigration
-   feature/escudero\_PFParticleMetadataTemporaryNamespaceFix
-   feature/gardiner\_MARLEY\_upgrade
-   feature/gp\_DocumentationFix
-   feature/gp\_Issue15446\_light
-   feature/gp\_Issue17804
-   feature/gp\_Issue19043
-   feature/gp\_TrackingVectorTypes
-   feature/greenlee\_mcc9\_mucapture\_flux
-   feature/jsoto\_SimDriftedElectronCluster
-   feature/JStock\_BackTrackerUpdate
-   feature/JStock\_OpDetBTR\_bunching
-   feature/JStock\_PhotonBackTracker
-   feature/knoepfel\_rm\_unused\_headers
-   feature/LArShowerPfo
-   feature/ss\_issue19386
-   feature/team\_for\_art\_v3
-   feature/team\_for\_art\_v3\_02
-   feature/team\_with\_larg4
-   feature/tjyang\_recobslice
-   feature/trj\_rawdata\_timestamp\_june2018
-   feature/usher\_cluster3dupdates
-   feature/wenzel\_larg4refac
-   feature/wenzel\_larg4refac\_phase2\_1
-   feature/wketchum\_LArG4Edeps\_2
-   feature/wketchum\_LArG4Refactor\_develop
-   feature/wketchum\_LArG4Refactor\_develop
-   feature/wketchum\_LArG4Refactor\_develop
-   feature/wketchum\_MCHitAssnsUbooneMCC8
-   feature/wketchum\_MCMatchHitAssn
-   feature/wketchum\_PandoraVertexDev
-   feature/yuntse\_trackide

### lardataalg

-   feature/gp\_DetectorClocks
-   feature/gp\_moveLArDataUtils
-   feature/gp\_OpDetWaveformDumper
-   feature/gp\_PhotonVisTransformations
-   feature/gp\_quantities
-   feature/knoepfel\_rm\_unused\_headers
-   feature/russo\_ticket\_19446
-   feature/ss\_issue18281
-   feature/team\_for\_art\_v3
-   feature/team\_for\_art\_v3\_02
-   feature/team\_with\_larg4
-   feature/usher\_driftvelocityfudgefactor
-   feature/wketchum\_OverlayG4RefCorrection

### larsoftobj

-   feature/at\_for\_art\_2\_06
-   feature/team\_for\_art\_v3
-   feature/team\_for\_art\_v3\_02
-   feature/team\_with\_larg4

### larcore

-   feature/at\_for\_art\_2\_06
-   feature/AuxDetSort\_standard
-   feature/AuxDetTrap
-   feature/bb\_wirework
-   feature/brebel\_AuxDetSensitive
-   feature/gp\_factorizeGeometryBuilding
-   feature/gp\_GeometryDumper
-   feature/jgreer\_hitcnn
-   feature/JStock\_BackTrackerUpdate
-   feature/knoepfel\_rm\_unused\_headers
-   feature/ls\_geoalgo
-   feature/OpDetGeoFix
-   feature/roi
-   feature/team\_for\_art\_v3\_02
-   feature/team\_with\_larg4
-   feature/tjyang\_bug5104\_moveargoneutfcl
-   feature/tjyang\_duneification
-   feature/tmw\_opflashfix
-   feature/wketchum\_ViewAsignment
-   feature/yale\_cosmicCalib
-   feature/yale\_cosmicTag
-   feature/yale\_dirt
-   feature/yale\_PID
-   feature/yale\_shower
-   feature/yale\_TPCsim
-   feature/yale\_track
-   feature/yale\_vertex

### lardata

-   feature/andrzejs\_geomutil\_bugfix
-   feature/at\_for\_art\_2\_06
-   feature/blake\_particleSeeds
-   feature/brebel\_newmagfield\_larsoft
-   feature/cerati\_double2float\_v2\_breaktrack
-   feature/cerati\_double2float\_v2\_breaktrack\_deldepr
-   feature/cerati\_kffitresiduals
-   feature/cerati\_larsoft-v06\_26\_01-plus-new-kffit
-   feature/cerati\_phase2track
-   feature/cerati\_track-producers-compliant
-   feature/davidc1\_daqheader
-   feature/dgg\_lightprop
-   feature/dgg\_lightpropv2
-   feature/fclupdates
-   feature/gp\_AssnsChain
-   feature/gp\_Issue17672
-   feature/gp\_Issue18220
-   feature/gp\_Issue18638
-   feature/gp\_Issue19043
-   feature/gp\_moveLArDataUtils
-   feature/gp\_OpDetWaveformDumper
-   feature/greenlee\_line\_surface
-   feature/greenlee\_mcc9\_mucapture\_flux
-   feature/greenlee\_small\_mchit
-   feature/greenlee\_wireid\_surface
-   feature/Issue1083
-   feature/jgreer\_hitcnn
-   feature/jpaley\_dunePedDev\_2015\_11\_16
-   feature/jpaley\_LArPropertiesBreakup
-   feature/JStock\_BackTrackerIntegratedUpdate
-   feature/JStock\_BackTrackerNoLazyUpdate
-   feature/jti3\_zerosuppression
-   feature/jyoti\_XinSignalShaping
-   feature/kirby\_db\_fix
-   feature/psr\_handle\_old\_files
-   feature/roi
-   feature/rsulej\_FactorizeHelper
-   feature/russo\_ticket\_18137
-   feature/ss\_ptrmaker
-   feature/ss\_ranges
-   feature/ss-refactoring
-   feature/team\_for\_art\_v3\_02
-   feature/team\_for\_v06\_34\_01\_01
-   feature/team\_with\_larg4
-   feature/tjyang\_bug5104\_moveargoneutfcl
-   feature/tjyang\_TrackKalmanHitTrackHitMeta
-   feature/usher\_cluster3dupdates
-   feature\_v04\_36\_00/greenlee\_small\_mchit
-   feature/wallbank\_ShowerAssociations
-   feature/warburton\_ExternalTrigger
-   feature/wketchum\_BezierTrackFix
-   feature/wketchum\_CosmicTagIsolation
-   feature/wketchum\_CosmicTagIsolation\_v5
-   feature/wketchum\_OverlayG4RefCorrection
-   feature/wketchum\_RangeTool
-   feature/wketchum\_ViewAsignment
-   feature/yale\_dirt
-   feature/yale\_shower
-   feature/zennamo\_MCShowerdEdx

### larevt

-   feature/at\_for\_art\_2\_06
-   feature/calibdb
-   feature/dbrailsf\_larg4filter
-   feature/eberly\_asicDBI
-   feature/eberly\_dblifetimehack
-   feature/eberly\_dbTimeoutFix
-   feature/eberly\_fwsearchpath
-   feature/eberly\_PmtGainDBI
-   feature/greenlee\_lazy\_db
-   feature/greenlee\_lazy\_db\_develop
-   feature/herogers\_SCE\_mcc9\_take2
-   feature/herogers\_updateSCE
-   feature/herogers\_voxelizedSCE
-   feature/Issue1083
-   feature/jgreer\_hitcnn
-   feature/jpaley\_LArPropertiesBreakup
-   feature/JStock\_BackTrackerUpdate
-   feature/knoepfel\_rm\_unused\_headers
-   feature/mrmooney\_SCERecombFeature
-   feature/NoDetId
-   feature/roi
-   feature/team\_for\_art\_v3\_02
-   feature/team\_for\_v06\_34\_01\_01
-   feature/team\_with\_larg4
-   feature/tjyang\_duneification
-   feature/usher\_uboone\_pedestal
-   feature/vmeddage\_larg4particlefilter
-   feature/wketchum\_ViewAsignment

### larsim

-   feature/bb\_Argo
-   feature/davidc\_mcrecovalidation
-   feature/dgg\_fastop\_mcc
-   feature/drivera\_hadronHP
-   feature/gardiner-marley-vtx-box
-   feature/gp\_LazyVector
-   feature/gp\_OpticalDocumentation
-   feature/gp\_PhotonLibrary
-   feature/gputnam-gallery-fix
-   feature/gputnam\_MCSTReco\_FV\_fix
-   feature/herogers\_SCE\_xcorrection
-   feature/jgreer\_hitcnn
-   feature/jsoto\_dphasefix
-   feature/jsoto\_dualphase\_DriftedElectronClusters
-   feature/jsoto\_ExtendedPhotonLibrary
-   feature/jsoto\_lightsource\_pointsource
-   feature/jsoto\_maxrange\_in\_extendedphotlib
-   feature/JStock\_ChannelCorrectedSDPEnergy
-   feature/JStock\_fix21417
-   feature/JStock\_Ni59
-   feature/JStock\_PIRealDataOverride
-   feature/JStock\_RadioGenSignal
-   feature/kmistry\_dk2nu\_ppfx\_integration\_merge
-   feature/knoepfel\_rm\_unused\_headers
-   feature/lightprop\_ugr\_mcr
-   feature/mibass\_NewFiltersMCC8
-   feature/NoDetId
-   feature/russo\_throw\_on\_bad\_physics
-   feature/russo\_ticket\_19313
-   feature/sbnd\_Workshop201803integration
-   feature/semi\_ugr\_mcr
-   feature/ss\_issue18281
-   feature/team\_for\_art\_v3\_02\_04
-   feature/team\_with\_larg4
-   feature/update-sim-filters
-   feature\_v04\_36\_00/greenlee\_small\_simchannel
-   feature\_v08\_05\_00/gardiner-genie-v3
-   feature\_wenzel\_electrondrift
-   feature/wenzel\_electrondrift
-   feature/wenzel\_larg4refac
-   feature/wketchum\_LArG4Edeps\_BugFix
-   feature/wketchum\_LArG4Refactor\_develop
-   feature/wketchum\_MCReco\_DiffInputModules
-   feature/wketchum\_OverrideRealDataBackTracker
-   feature/wketchum\_ShiftEDep\_Debugging
-   feature/yatesla\_MultipleSubrunPOT

### larreco

-   feature/alister\_pidfix
-   feature/at\_for\_art\_2\_06
-   feature/bb\_new3D
-   feature/bb\_TCFix1
-   feature/bb\_TCOpt
-   feature/bb\_trajcluster\_mcc9\_fix
-   feature/calcuttj\_shower\_calorimetry
-   feature/cerati\_double2float\_v2
-   feature/cerati\_double2float\_v2\_breaktrack
-   feature/cerati\_double2float\_v2\_breaktrack\_deldepr
-   feature/cerati\_double2float\_v2\_breaktrack\_deldepr\_fixconflict
-   feature/cerati\_fix-flags-tracks
-   feature/cerati\_fix-vtx-fit-bug-v08\_05\_00\_br
-   feature/cerati\_kf-fit-inputs-new
-   feature/cerati\_kf-ub-mcc9
-   feature/cerati\_mcs-mom
-   feature/cerati\_mcsmom-uboone-mcc8
-   feature/cerati\_new-recob-vertex-and-fitter
-   feature/cerati\_phase2track
-   feature/cerati\_shw-trk-fits
-   feature/cerati\_tcshowerPFP
-   feature/cerati\_track-producers-compliant
-   feature/dstefan\_DirOfGamma
-   feature/dstefan\_TrackShowerSplitter
-   feature/gp\_DontStoreGausTF1
-   feature/gp\_Issue15446\_light
-   feature/gp\_moveLArDataUtils
-   feature/greenlee\_line\_surface
-   feature/greenlee\_mcc9\_mucapture\_flux
-   feature/greenlee\_merge\_mcc83
-   feature/greenlee\_small\_mchit
-   feature/greenlee\_trajcluster\_mcc9
-   feature/greenlee\_wireid\_surface
-   feature/herogers\_dxSCE\_calibrationCorrection
-   feature/herogers\_dxSCE\_calibrationCorrection\_mcc9
-   feature/herogers\_SCE\_mcc9\_take2
-   feature/herogers\_updateSCE
-   feature/indexHits\_lorena
-   feature/iponce\_testFeature
-   feature/Issue1083
-   feature/jgreer\_hitcnn
-   feature/jpaley\_LArPropertiesBreakup
-   feature/JStock\_BackTrackerIntegratedUpdate
-   feature/JStock\_BackTrackerNoLazyUpdate
-   feature/kduffy\_PIDupdate\_v08\_05\_00\_br
-   feature/knoepfel\_rm\_unused\_headers
-   feature/lhw\_TrackStitcher
-   feature/mccomp
-   feature/mstancar\_RawHitFinderMods
-   feature/NoDetId
-   feature/reddypg\_ShowerEfficiency
-   feature/rnd\_PmaImprovements
-   feature/rnd\_PmaRefitter
-   feature/rsf\_tcshowerPFP
-   feature/rsulej\_larreco\_TrkAssnIdx
-   feature/rsulej\_tf
-   feature/rsulej\_trkValidationPMA
-   feature/rsulej\_VertexingFixes
-   feature/russo\_ticket\_18137
-   feature/ss\_issue17179
-   feature/ss-refactoring
-   feature/team\_for\_art\_v3\_02
-   feature/team\_for\_v06\_34\_01\_01
-   feature/team\_gshf-larsoft
-   feature/team\_with\_larg4
-   feature/testFeature
-   feature/tjyang\_bug5104\_moveargoneutfcl
-   feature/tjyang\_cosmictrackeralg
-   feature/tjyang\_db3d
-   feature/tjyang\_duneification
-   feature/tjyang\_emshower
-   feature/tjyang\_lifetimedb
-   feature/tjyang\_sps
-   feature/tjyang\_spsmove
-   feature/tjyang\_TrackKalmanHitTrackHitMeta
-   feature/tjyang\_wirecellmerge
-   feature/usher\_chargeasymmetry
-   feature/usher\_hitfindernorawdigits
-   feature/usher\_hitfinderupdates
-   feature\_v04\_36\_00/greenlee\_small\_mchit
-   feature/wallbank\_EMShowerImprovements
-   feature/wketchum\_GausHitUpdate
-   feature/wketchum\_ReduceMC\_MCC8
-   feature/yifanch\_calorimetry
-   feature/yuntse\_calo
-   feature/yuntse\_calo\_fix
-   bckhouse/feature\_reco3d

### larana

-   feature/adi\_overlay\_v06\_03\_18\_09
-   feature/afurmans\_MCTruthMatching
-   feature/aih\_pdcalibrator
-   feature/alister1\_chi2\_pidclassupgrade
-   feature/alister1\_chi2\_pidclassupgrade
-   feature/at\_for\_art\_2\_06
-   feature/cerati\_double2float\_v2
-   feature/cerati\_double2float\_v2\_breaktrack
-   feature/cerati\_double2float\_v2\_breaktrack\_deldepr
-   feature/dgg\_fastop\_mcc
-   feature/dgg\_lightprop
-   feature/gp\_DetectorClocks
-   feature/gp\_Issue15446\_light
-   feature/gp\_PhotonVisTransformations
-   feature/Issue1083
-   feature/jgreer\_hitcnn
-   feature/jsoto\_opdigiproperties\_chargenormalization
-   feature/jsoto\_photoncounter\_generalized
-   feature/JStock\_BackTrackerIntegratedUpdate
-   feature/JStock\_BackTrackerNoLazyUpdate
-   feature/JStock\_SimPhotonCounterPatchForDUNE
-   feature/kduffy\_PIDupdate\_v08\_05\_00\_br
-   feature/kirby\_swizzle\_hot\_fix
-   feature/kirby\_swizzle\_hot\_fix
-   feature/knoepfel\_rm\_unused\_headers
-   feature/kterao\_ophitbipolar
-   feature/lightprop\_ugr\_mcr
-   feature/markross\_SinglePhotonTestLarana
-   feature/mdeltutt\_wf\_pedestal
-   feature/mvapid
-   feature/nigrant\_warwick\_pid\_2017\_08\_09
-   feature/OpticalRecoUpdate
-   feature/PEcal-krw
-   feature/russo\_ticket\_18137
-   feature/sbnd\_Workshop201803integration
-   feature/ss\_issue17179
-   feature/team\_for\_art\_v3\_02
-   feature/team\_for\_v06\_34\_01\_01
-   feature/team\_rm\_bezier
-   feature/team\_with\_larg4
-   feature/tjyang\_crhitremovalupdate
-   feature/tjyang\_duneification
-   feature/tjyang\_t0finder
-   feature/tmw\_opflashfix
-   feature/usher\_cluster3dupdates
-   feature/usher\_crhitremoval
-   feature/usher\_fixassociationstool
-   feature/usher\_fixForCosmicPCAxisTagger
-   feature/usher\_mcparticlehitassociations\_reconcile\_production
-   feature/usher\_multiTPC
-   feature/wketchum\_CosmicTagIsolation
-   feature/wketchum\_CosmicTagIsolation\_v5
-   feature/wketchum\_MCMatchHitAssn
-   feature/wketchum\_OverrideRealData
-   feature/yuntse\_MCMatchHitAssn
-   feature/yuntse\_negTrackID\_dev

### larpandoracontent

-   feature/asmith\_persistRecobSlicev07\_11\_00
-   feature/at\_for\_art\_2\_06
-   feature/blake\_multiDrift
-   feature/cerati\_shouldRemoveOutOfTimeHits
-   feature/cerati\_track-producers-compliant
-   feature/ClearTrackFragmentsRefactor
-   feature/ExternalEventBuilding\_asmith
-   feature/jm\_restructuring
-   feature/jm\_StitchingInstanceWirePitch
-   feature/JStock\_BackTrackerUpdate
-   feature/LArPandoraContent\_v02\_08\_00
-   feature/LArPandoraContent\_v03\_01\_00
-   feature/larpandoracontent\_v03\_07\_00
-   feature/LArPandoraContent\_v03\_07\_04
-   feature/larpandoracontent\_v03\_08\_00
-   feature/larpandoracontent\_v03\_09\_00
-   feature/larpandoracontent\_v03\_10\_00
-   feature/larpandoracontent\_v03\_11\_00
-   feature/larpandoracontent\_v03\_12\_00
-   feature/larpandoracontent\_v03\_14\_00
-   feature/larpandoracontent\_v03\_15\_00
-   feature/larpandoracontent\_v03\_15\_01
-   feature/larpandoracontent\_v03\_15\_02
-   feature/larpandoracontent\_v03\_15\_04
-   feature/lg\_mytake
-   feature/PandoraDevelopmentArea
-   feature/PandoraDevelopmentArea\_ubMCC9
-   feature/Pandora\_v03\_11\_00
-   feature/PrepareForPandora\_v03-00-00
-   feature/sgreen\_APAStitching
-   feature/sgreen\_CRTagging
-   feature/sgreen\_T0Calculation
-   feature/team\_for\_art\_v3\_02
-   feature/team\_for\_v06\_34\_01\_01
-   feature/team\_with\_larg4
-   feature/TrackTrajectorySort
-   feature/wketchum\_PandoraDevelopmentArea\_MCC9

### larpandora

-   feature/asmith\_persistRecobSlicev07\_11\_00
-   feature/asmith\_simChannelLabels
-   feature/asmith\_trackToHitMetadata
-   feature/asmith\_ubooneMCC9\_release\_v08\_05\_00\_br
-   feature/at\_for\_art\_2\_06
-   feature/blake\_multiDrift
-   feature/blake\_prepareForPandoraV2
-   feature/blake\_standardpandora
-   feature/blake\_truthmatching
-   feature/blake\_truthmatching\_asmith
-   feature/cerati\_double2float\_v2\_breaktrack
-   feature/cerati\_double2float\_v2\_breaktrack\_deldepr
-   feature/cerati\_track-producers-compliant
-   feature/CreatePandoraLineGaps
-   feature/ddevitt\_BuildShowersAsTracks
-   feature/escudero\_PFParticleMetadataMigration
-   feature/escudero\_PFParticleMetadataTemporaryNamespaceFix
-   feature/escudero\_SimChannelsValid
-   feature/feature/DomBarkerShowerBranch
-   feature/indexHits\_lorena
-   feature/jgreer\_hitcnn
-   feature/jm\_PerObjectRejection
-   feature/jm\_PerObjectRejection\_mcc8\_newpandora
-   feature/jm\_PerObjectRejection\_v06\_26\_01\_01
-   feature/jm\_TrackCreationICARUS
-   feature/jm\_v06\_08\_00\_04\_for\_larpandoracontent\_v03\_07\_04
-   feature/JStock\_BackTrackerUpdate
-   feature/larpandoracontent\_v03\_07\_00
-   feature/larpandoracontent\_v03\_08\_00
-   feature/larpandoracontent\_v03\_09\_00
-   feature/larpandoracontent\_v03\_10\_00
-   feature/larpandoracontent\_v03\_11\_00
-   feature/larpandoracontent\_v03\_12\_00
-   feature/larpandoracontent\_v03\_14\_00
-   feature/larpandoracontent\_v03\_15\_04
-   feature/LArShowerPfo
-   feature/minTrajectoryPoints
-   feature/NoDetId
-   feature/PandoraDevelopmentArea\_ubMCC9
-   feature/Pandora\_v03\_11\_00
-   feature/PrepareFor\_LArPandoraContent\_v02-05-00
-   feature/PrepareFor\_LArPandoraContent\_v02-07-00
-   feature/PrepareFor\_LArPandoraContent\_v02-07-01
-   feature/PrepareForPandora\_v02-02-00
-   feature/PrepareForPandora\_v02-04-00
-   feature/PrepareForPandora\_v03-00-00
-   feature/raquel\_LArIATPandora
-   feature/SettingsFor\_LArPandoraContent\_v02\_08\_00
-   feature/SettingsFor\_LArPandoraContent\_v03\_01\_00
-   feature/sgreen\_APAStitching
-   feature/sgreen\_DualPhaseTrackCreation
-   feature/sgreen\_DUNEFD\_DualPhase
-   feature/sgreen\_showerIdIndex
-   feature/sg\_TriggeredMCInfo
-   feature/team\_for\_art\_v3\_02
-   feature/team\_for\_v06\_34\_01\_01
-   feature/team\_with\_larg4
-   feature/TrkShwId3D
-   feature/yuntse\_shower

### lareventdisplay

-   feature/alister1\_removepidfromevd
-   feature/andrzejs\_geomutil\_bugfix
-   feature/aolivier\_FixRecoSegFaults
-   feature/at\_for\_art\_2\_06
-   feature/bb\_clsIDs
-   feature/bb\_Showers
-   feature/bb\_Vertex2D
-   feature/bcarls\_cosmicEventDisplay
-   feature/cerati\_double2float\_v2\_breaktrack
-   feature/cerati\_double2float\_v2\_breaktrack\_deldepr
-   feature/cerati\_fix-evd-invalid-hits
-   feature/cerati\_flags-evd
-   feature/cerati\_larsoft-v06\_26\_01-plus-new-kffit
-   feature/chalt\_DPRawHitFinderUpdate
-   feature/chalt\_RawHitFindingDP
-   feature/eberly\_channelfilter
-   feature/eberly\_dbinterface
-   feature/gp\_Display3Doutline
-   feature/gp\_moreGeometryFeatures
-   feature/gp\_moveLArDataUtils
-   feature/gp\_ShowOpticalPhotons
-   feature/Issue10538
-   feature/jgreer\_hitcnn
-   feature/jpaley\_LArPropertiesBreakup
-   feature/JStock\_BackTrackerUpdate
-   feature/kduffy\_PIDupdate\_v08\_05\_00\_br
-   feature/knoepfel\_rm\_unused\_headers
-   feature/mrobinso\_LandedEventDisplay
-   feature/roi
-   feature/team\_for\_art\_v3\_02
-   feature/team\_for\_v06\_34\_01\_01
-   feature/team\_with\_larg4
-   feature/tjyang\_bug5104\_moveargoneutfcl
-   feature/usher\_3DOpticalDisplay
-   feature/usher\_wiredatadrawer
-   feature/wketchum\_BezierTrackFix

### larexamples

-   feature/at\_for\_art\_2\_06
-   feature/cerati\_RecoProxyUsageExample
-   feature/gp\_ProxyExample
-   feature/jgreer\_hitcnn
-   feature/JStock\_BackTrackerUpdate
-   feature/knoepfel\_rm\_unused\_headers
-   feature/team\_for\_art\_v3\_02
-   feature/team\_for\_v06\_34\_01\_01
-   feature/team\_with\_larg4

### larwirecell

-   feature/at\_for\_art\_2\_06
-   feature/bkirby\_simChannel
-   feature/bkirby\_wirecell\_v0\_5\_2
-   feature/brussell\_scpos
-   feature/bviren\_imaging
-   feature/bviren\_lazy
-   feature/bviren\_nticks
-   feature/bviren\_perapa
-   feature/bviren\_wclsdev
-   feature/bv-protodune
-   feature/bv\_simint
-   feature/bv\_wct-0.6.2
-   feature/eberly\_asicdb
-   feature/feature/wenzel\_larg4refac
-   feature/integration
-   feature/jgreer\_hitcnn
-   feature/JStock\_BackTrackerUpdate
-   feature/team\_for\_art\_v3\_02
-   feature/team\_for\_v06\_34\_01\_01
-   feature/team\_with\_larg4
-   feature/usher\_numbertimesamples
-   feature/usher\_truncationorderswap
-   feature/weihy\_larwirecell
-   feature/wgu\_coh\_nf\_chandb

### larsoft

-   feature/at\_for\_art\_2\_06
-   feature/gp\_moveLArDataUtils
-   feature/jgreer\_hitcnn
-   feature/team\_for\_art\_v3\_02
-   feature/team\_for\_v06\_34\_01\_01
-   feature/team\_with\_larg4

### larbatch

-   feature/greenlee\_error
-   feature/greenlee\_maintain\_parentage
-   feature/greenlee\_multisubmit
-   feature/greenlee\_posix
-   feature/greenlee\_projectdir
-   feature/greenlee\_pubs2
-   feature/greenlee\_recur
-   feature/greenlee\_singlerun
-   feature/greenlee\_swizzle\_validate\_in\_job
-   feature/greenlee\_target\_size
-   feature/greenlee\_test
-   feature/joelam\_validateOnNode
-   feature/team\_with\_larg4

### larutils

-   feature/team\_with\_larg4

Identifying branches that can be removed.
---------------------------------------------------------------------------------------

-   [LArSoft repository branch lists](LArSoft_repository_branch_lists)
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
