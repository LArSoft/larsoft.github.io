# LArSoft v06_83_00 Release Notes



[list of LArSoft releases](LArSoft_release_list)  
Download instructions for [larsoft v06_83_00](https://scisoft.fnal.gov/scisoft/bundles/larsoft/v06_83_00/larsoft-v06_83_00.html)  
Download instructions for [just larsoftobj v1_48_00](https://scisoft.fnal.gov/scisoft/bundles/larsoftobj/v1_48_00/larsoftobj-v1_48_00.html)

## Purpose

-   changes to develop
-   approved feature branches

## New features

-   `lareventdisplay`: `feature/gp_Display3Doutline`
    -   fix to detector outline drawing in 3D event display
-   TVMA in TrajCluster
    -   TMVA_ShowerParent_BDT.weights.xml added to larreco
    -   larreco feature/bb_TCWork
-   larana feature/yuntse_negTrackID_dev
    -   The only change is a line in larana/T0Finder/AssociationsTools/DirectHitParticleAssns_tool.cc, which enables the association between MCParticles and Hits including the MCParticles with a negative track ID.
-   lardataobj feature/trj_rawdata_timestamp_june2018
    -   see [talk](https://indico.fnal.gov/event/17502/contribution/2/material/slides/0.pdf)
-   larsim feature/btapia_hybridlibraryCB
    -   see [talk](https://indico.fnal.gov/event/17502/contribution/4/material/slides/0.pdf)
    -   adds an additional feature for doing photon simulation
-   larpandoracontent update
    -   The main feature removes remaining logic that assumes the w and z coordinates are equivalent (as they are, in our treatment, for all detectors before we started to consider ICARUS, under Tracy's guidance). The details are now hidden behind an interface, e.g. in an algorithm now call the YZtoW function of the LArTransformationPlugin, rather than providing a concrete w/z equivalent implementation.
    -   Other small updates are minor/cosmetic and affect only the in-Pandora validation metrics (off in all default use-cases in LArSoft) and the names assigned to some Pandora worker instances.
    -   No changes in output are expected, and none have been seen in our tests.

## Bug fixes

## Updated dependencies

# Change List

## larsoft v06_83_00

-   2018-07-05 Lynn Garren : larsoft v06_83_00 for larsoft v06_83_00
-   2018-07-05 Lynn Garren : no source code manifest
-   2018-07-05 Lynn Garren : update versions

## lareventdisplay v06_21_00

-   2018-07-05 Lynn Garren : lareventdisplay v06_21_00 for larsoft v06_83_00
-   2018-07-03 Lynn Garren : Merge branch 'feature/gp_Display3Doutline' into release/v06_83_00
-   2018-06-26 Gianluca Petrillo : Standard detector 3D drawer fixed for multiple TPC geometries.

## larexamples v06_14_04

-   2018-07-05 Lynn Garren : larexamples v06_14_04 for larsoft v06_83_00

## larpandora v06_31_02

-   2018-07-05 Lynn Garren : larpandora v06_31_02 for larsoft v06_83_00

## larwirecell v06_14_04

-   2018-07-05 Lynn Garren : larwirecell v06_14_04 for larsoft v06_83_00

## larana v06_20_04

-   2018-07-05 Lynn Garren : larana v06_20_04 for larsoft v06_83_00
-   2018-07-02 Yun-Tse Tsai : for the associations between MCParticles and Hits, include the MCParticles with negative trackIDs

## larreco v06_64_00

-   2018-07-05 Lynn Garren : larreco v06_64_00 for larsoft v06_83_00
-   2018-07-05 Lynn Garren : larreco v06_64_00 for larsoft v06_83_00
-   2018-07-04 Lynn Garren : Merge branch 'feature/bb_TCWork' into release/v06_83_00
-   2018-07-04 Tingjun Yang : Check for invalid vx2id.
-   2018-07-02 Gianluca Petrillo : Recovered previous version of SpacePointSolver
-   2018-06-28 Lynn Garren : adding BDT weights file
-   2018-06-27 baller : Use FW_SEARCH_PATH for TMVA reader.
-   2018-06-26 baller : Merge branch 'develop' into feature/bb_TCWork
-   2018-06-26 baller : Rename TMVA reader.
-   2018-06-26 baller : Rename TMVA reader
-   2018-06-26 baller : Remove FindNeutrinoParent. Rename TMVA reader. Improvements in Reconcile3D.
-   2018-06-26 baller : Remove FindNeutrinoParent
-   2018-06-25 baller : Add TMVA for finding shower parents. Add Cheat showers.
-   2018-06-25 baller : Add TMVA for finding shower parents. Add Cheat showers.
-   2018-06-25 baller : Add TMVA for finding shower parents. Add Cheat showers.
-   2018-06-25 baller : Add TMVA for finding shower parents. Add Cheat showers.
-   2018-06-25 baller : Add TMVA for finding shower parents. Add Cheat showers.
-   2018-06-25 baller : Add TMVA for finding shower parents. Add Cheat showers.
-   2018-06-25 baller : Add TMVA for finding shower parents. Add Cheat showers.
-   2018-06-25 baller : Add TMVA for finding shower parents. Add Cheat showers.
-   2018-06-25 baller : Add TMVA for finding shower parents. Add Cheat showers.
-   2018-06-25 baller : Add TMVA for finding shower parents. Add Cheat showers.
-   2018-06-25 baller : Add TMVA for finding shower parents.

## larsim v06_51_00

-   2018-07-05 Lynn Garren : remove accidental duplicate
-   2018-07-05 Lynn Garren : larsim v06_51_00 for larsoft v06_83_00
-   2018-07-05 Lynn Garren : restore default
-   2018-07-05 Lynn Garren : remove dune fcl files
-   2018-07-03 Beatriz Tapia Oregui : Cleaned and ready to publish.
-   2018-07-02 Beatriz Tapia Oregui : Merge branch 'develop' into feature/btapia_hybridlibraryCB Photon Library building resolved.
-   2018-07-02 Beatriz Tapia Oregui : Photon Library builds.
-   2018-06-27 Gianluca Petrillo : LArVoxelReadout warning message moved into message facility
-   2018-06-26 Gianluca Petrillo : A few changes following good practices.
-   2018-06-26 Gianluca Petrillo : Documentation of LightSource_module.cc converted to Doxygen
-   2018-06-26 Gianluca Petrillo : PhotonVisibilityService made optional in LightSource module
-   2018-06-28 Gianluca Petrillo : Using modern way to determine if a point belongs to a cryostat in FilterCryostatNus module.
-   2018-06-28 Gianluca Petrillo : Applied some good C practices to FilterCryostatNus module.
-   2018-06-28 Gianluca Petrillo : Applied some good C practices to FilterCryostatNus module.
-   2018-06-28 Gianluca Petrillo : Applied some good C practices to FilterNoMCParticles module.
-   2018-06-28 Gianluca Petrillo : Resolved unused variable errors from Clang.
-   2018-06-28 Beatriz Tapia Oregui : Merge branch 'develop' into feature/btapia_hybridlibraryCB larsoft_v06_82_00_debug_e15
-   2018-06-28 Jason Stock : Merge branch 'feature/JStock_PhotonBackTrackerFlashMatchFix' into develop
-   2018-06-28 Jason Stock : Quick fixes to PBT addressing issues raised by Pierre Lasorak with TrackSDPs (default backtracking tried to get btrs by OpChannel instead of by OpDet).
-   2018-06-27 Herbert Greenlee : Merge remote-tracking branch 'origin/v06_26_01_01_branch' into develop
-   2018-06-19 Lynn Garren : larsim v06_13_01_10
-   2018-06-18 Herbert Greenlee : Merge remote-tracking branch 'origin/feature/mibass_NewFiltersMCC8' into v06_26_01_01_branch
-   2018-06-18 Beatriz Tapia Oregui : Merge branch 'develop' into feature/btapia_hybridlibraryCB
-   2018-05-23 Beatriz Tapia Oregui : Hybrid Library ready to be published. It has been used so far with SP Far Detector 1x2x6 and DP ProtoDune DP geometry.
-   2018-05-23 Bea Tapia : Merge remote-tracking branch 'origin/develop' into origin/feature/btapia_hybridlibraryCB
-   2018-05-23 Beatriz Tapia Oregui : Cleaned directory with Dual Phase option running enabled.
-   2018-05-14 Lynn Garren : larsim v06_13_01_09 for larsoft v06_26_01_01_branch
-   2018-05-10 Beatriz Tapia Oregui : Merge tag 'LARSOFT_SUITE_v06_70_01' into origin/feature/btapia_hybridlibraryCB
-   2018-05-10 Beatriz Tapia Oregui : Rearrangements to use in Dual Phase's geometry.
-   2018-05-04 Matthew Bass : Added filters for filter neutrinos in crysotat and filtering events with no mc particles in them.
-   2018-04-26 Lynn Garren : larsim v06_13_01_08 for larsoft v06_26_01_01_branch
-   2018-02-07 Beatriz Tapia Oregui : added fit-\>Fill
-   2018-02-06 Beatriz Tapia Oregui : Status after CM 01/2018
-   2017-11-28 Chris Backhouse : Fix mistake in interpretation of ROOT's expo() function.
-   2017-11-10 Chris Backhouse : Set up FNAL location for library.
-   2017-11-10 Chris Backhouse : Hacky module to create the hybrid library file from the regular libraries.
-   2017-11-10 Chris Backhouse : A few minor fixes. Things now work. Also add simple job to run the analyzer module.
-   2017-11-10 Chris Backhouse : Enable hybrid library construction in the service.
-   2017-11-10 Chris Backhouse : Initial attempt at implementing PhotonLibraryHybrid.
-   2017-11-10 Chris Backhouse : Use PhotonLibrary via the interface. Required dropping various “Set” methods from the service. No one seems to be using them anyway…
-   2017-11-10 Chris Backhouse : Add IPhotonLibrary interface and make PhotonLibrary implement it.

## larevt v06_22_02

-   2018-07-05 Lynn Garren : larevt v06_22_02 for larsoft v06_83_00

## lardata v06_47_01

-   2018-07-05 Lynn Garren : lardata v06_47_01 for larsoft v06_83_00

## larcore v06_21_00

## larpandoracontent v03_13_01

-   2018-07-05 Lynn Garren : larpandoracontent v03_13_01 for larsoft v06_83_00
-   2018-07-05 John Marshall : Merge branch 'updates'
-   2018-07-05 John Marshall : Update version and change log.
-   2018-07-02 Multi-algorithm pattern recognition : Merge pull request \#67 from a-d-smith/feature/ExternalEventBuilding
-   2018-07-02 a-d-smith : Renamed pandora instances to follow the standard convention
-   2018-06-20 a-d-smith : Capitalised metadata property keys to follow the standard
-   2018-06-19 a-d-smith : Added slice ID metadata to output pfos
-   2018-06-19 a-d-smith : Added names to pandora instances in master algorithm
-   2018-06-27 John Marshall : Merge branch 'feature/RemoveWZEquivalence'
-   2018-06-27 John Marshall : For detectors where w and z are equivalent, remain consistent with original treatment.
-   2018-06-22 John Marshall : Remove w/z equivalence from LArGeometryHelper::MergeThreePositions
-   2018-06-21 John Marshall : Replace assumed w/z equivalence with use of LArTransformationPlugin YZtoW.
-   2018-06-21 John Marshall : Merge pull request \#66 from StevenGreen1/feature/EventValidation_ProtoDUNE
-   2018-06-21 Multi-algorithm pattern recognition : Cosmetic.
-   2018-06-20 Steven Green : Edit printout in event validation algorithm to correctly display primary matches to test beam particles.
-   2018-06-20 Steven Green : Added bestMatchPfoIsTestBeam vector to event validation output tree.
-   2018-06-20 Steven Green : Alter IsTestBeam function in LArPfoHelper to use pfo PropertiesMap.

## larsoftobj v1_48_00

-   2018-07-05 Lynn Garren : larsoftobj v1_48_00 for larsoft v06_83_00
-   2018-07-05 Lynn Garren : update versions

## lardataobj v1_34_00

-   2018-07-05 Lynn Garren : use the root type ULong64_t
-   2018-07-05 Lynn Garren : lardataobj v1_34_00 for larsoft v06_83_00
-   2018-06-27 Thomas Junk : add RDTimeStamp data product and associations with raw digits
-   2018-06-27 Thomas Junk : Add a timestamp data product to be associated with raw digits

## lardataalg v1_01_03

-   2018-07-05 Lynn Garren : lardataalg v1_01_03 for larsoft v06_83_00

## larcorealg v1_23_01

## larcoreobj v1_24_00

## larbatch v01_42_01

-   2018-07-05 Lynn Garren : larbatch v01_42_01 for larsoft v06_83_00
-   2018-06-27 Lynn Garren : larsoft v06_82_00
-   2018-06-26 Herbert Greenlee : Add input dataset name to —check_input output.

## larutils v1_22_08

-   2018-07-05 Lynn Garren : larutils v1_22_08 for larsoft v06_83_00
-   2018-06-28 Lynn Garren : no source code manifest
