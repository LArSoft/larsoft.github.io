# LArSoft v09_32_00 Release Notes



[list of LArSoft releases](LArSoft_release_list)  
Download instructions for [larsoft v09_32_00](https://scisoft.fnal.gov/scisoft/bundles/larsoft/v09_32_00/larsoft-v09_32_00.html)  
Download instructions for [just larsoftobj v09_10_01](https://scisoft.fnal.gov/scisoft/bundles/larsoftobj/v09_10_01/larsoftobj-v09_10_01.html)

## Purpose

-   changes in develop
-   approved PRs
-   changes needed by the Ubuntu build

## New features

-   larsim PR 74
    -   Light simulation updates for DUNE vertical drift
    -   This PR adds the requires modifications/extensions to the semi-analytic fast optical simulation in PDFastSimPAR for simulating the DUNE vertical drift geometry:
        -   adds geometry calculations required for lateral detectors
        -   adds alternate parameterisation approach developed for lateral detectors
        -   adds option to use reflected light model to simulate light reflected from anode (for use at Xenon wavelength)
        -   adds options to simulate light external to the active volume and to account for field cage shadowing via scaling factors, used to allow modelling of lateral detectors located outside of the field cage
        -   adds geometric only transport time model (for use at Xenon wavelength)
    -   These changes should not impact the light simulation in DUNE horizontal drift or SBND.
-   larsimrad PR 4
    -   Change to the interface to decay0:
        -   There was a bug in the mass of the alpha particle, which made it unusable
        -   Improved error messages
        -   Improved some of the rejection method, and made it configurable. This is helpful if somebody wants to generate decays in small volumes of a big detector
        -   It is now possible to generate positions for the decays according to a TF1 (and that works for x, y, z position independently). This is useful in case we want to have ion drifting.
-   lardataobj PR 16
    -   Added dictionaries for vectors of art pointers to reconstructed objects
    -   ICARUS is a detector with two cryostats, and it's not unusual that reconstruction of the different cryostats (or TPC) is performed by different modules. But it may be useful afterwards to have selection of objects that cross those boundaries and pick from several collections (and several data products).  
        For that, a list of art::Ptr to the reconstructed objects can be saved.
    -   Currently, dictionaries are available for many data products of type art::PtrVector<recob::Xxxx>, but art::PtrVector can't host pointers from different collections. This pull request adds ROOT dictionaries for the objects that are more likely to be needed in a selection (particles, tracks, showers, vertices…).
-   larsim PR 73
    -   Replace coord subtraction with pitch to prevent negative distances
    -   Resolution for \#26277
-   larpandoracontent PR 33
    -   This PR includes two fixes, after which valgrind memcheck results are completely clean again for tests with ProtoDUNE-SP data:
        -   Avoid use of an iterator that has been potentially invalidated in ClusterAssociation algorithm. Simply create a new/refreshed iterator after the first ambiguous propagation pass.
        -   Keep track of modified/deleted clusters in the CosmicRayRemoval tool, to ensure that no comparisons are made with a potentially deleted cluster.
-   larbatch PR 17
    -   Revert to old version of mrb when necessary

## Bug fixes

-   lardataalg PR 26
    -   Fixed bug in detinfo::DetectorTimings::BeamGateTime()
    -   Nasty copy&amp;paste error fixed.
    -   Presumably unnoticed for two years (i.e. from its inception) because:
        -   beam and trigger time are typically different only in real data, and trigger simulation is apparently not very popular in LAr
        -   unit test also uses simulation-style settings
        -   MicroBooNE (i.e. who has data) does not use detinfo::DetectorClocks
-   lardata PR 18
    -   Documentation format fix to DetectorClocksServiceStandard

## Updated dependencies

-   wirecell 0.17.0 with gojsonnet
    -   replace jsonnet with gojsonnet
-   mrb v5_19_04
-   cetbuildtools v8_18_00 and v8_18_01

# Change List

## larsoft v09_32_00

-   2021-09-30 Lynn Garren : cetbuildtools v8_18_01, cetmodules v2_29_02, and golang
-   2021-09-29 Lynn Garren : larsoft v09_32_00 for larsoft v09_32_00
-   2021-09-29 Lynn Garren : larsoft v09_32_00 for larsoft v09_32_00
-   2021-09-29 Lynn Garren : product versions
-   2021-09-29 Lynn Garren : wirecell v0_17_0, gojsonnet v0_17_0, and mrb v5_19_04

## lareventdisplay v09_02_01

-   2021-09-29 Lynn Garren : lareventdisplay v09_02_01 for larsoft v09_32_00
-   2021-09-29 Lynn Garren : lareventdisplay v09_02_01 for larsoft v09_32_00

## larexamples v09_02_01

-   2021-09-29 Lynn Garren : larexamples v09_02_01 for larsoft v09_32_00
-   2021-09-29 Lynn Garren : larexamples v09_02_01 for larsoft v09_32_00
-   2021-09-29 Lynn Garren : find boost

## larpandora v09_09_01

-   2021-09-29 Lynn Garren : larpandora v09_09_01 for larsoft v09_32_00
-   2021-09-29 Lynn Garren : larpandora v09_09_01 for larsoft v09_32_00

## larsimrad v09_03_00

-   2021-09-29 Lynn Garren : larsimrad v09_03_00 for larsoft v09_32_00
-   2021-09-29 Lynn Garren : larsimrad v09_03_00 for larsoft v09_32_00
-   2021-09-29 Lynn Garren : Merge pull request \#4 from plasorak/feature/plasorak-better-decay0
-   2021-09-22 Pierre Lasorak : correct a little bug
-   2021-09-22 Pierre Lasorak : rm useless var and trailing whitespace
-   2021-09-22 Pierre Lasorak : nicer handling of ill formed fcl
-   2021-09-22 Pierre Lasorak : use initialiser lists
-   2021-09-22 Pierre Lasorak : remove duplicate code for testing node
-   2021-09-22 Pierre Lasorak : revert useless change
-   2021-09-22 Pierre Lasorak : use empty for checking empty vectors
-   2021-09-22 Pierre Lasorak : std::cout -\> MF_LOG_INFO
-   2021-09-16 Pierre Lasorak : new method to throw, directly from TGeoNode
-   2021-09-10 Pierre Lasorak : no need for such complicated way to estimate the volume of the TGeoVolumes anymore
-   2021-09-06 Pierre Lasorak : Add the possibility to generate decays according to a TF1 for the xyz positions
-   2021-09-06 Pierre Lasorak : improve rejection method
-   2021-09-06 Pierre Lasorak : correct a bug in the mass of alpha particle, and better handling when generation doesn't work properly

## larrecodnn v09_09_01

-   2021-09-29 Lynn Garren : larrecodnn v09_09_01 for larsoft v09_32_00
-   2021-09-29 Lynn Garren : larrecodnn v09_09_01 for larsoft v09_32_00

## larwirecell v09_04_01

-   2021-09-29 Lynn Garren : larwirecell v09_04_01 for larsoft v09_32_00
-   2021-09-29 Lynn Garren : larwirecell v09_04_01 for larsoft v09_32_00
-   2021-09-29 Lynn Garren : using gojsonnet instead of jsonnet

## larana v09_03_01

-   2021-09-29 Lynn Garren : larana v09_03_01 for larsoft v09_32_00
-   2021-09-29 Lynn Garren : larana v09_03_01 for larsoft v09_32_00

## larreco v09_07_01

-   2021-09-29 Lynn Garren : larreco v09_07_01 for larsoft v09_32_00
-   2021-09-29 Lynn Garren : larreco v09_07_01 for larsoft v09_32_00
-   2021-09-29 Lynn Garren : find boost

## larsim v09_16_00

-   2021-09-29 Lynn Garren : larsim v09_16_00 for larsoft v09_32_00
-   2021-09-29 Lynn Garren : larsim v09_16_00 for larsoft v09_32_00
-   2021-09-29 Lynn Garren : Merge pull request \#74 from pgreen135/feature/pgreen_semiana_vertical_drift
-   2021-09-29 Patrick Green : fixing bug impacting SBND
-   2021-09-27 Lynn Garren : Merge pull request \#73 from JamesJieranShen/feature/jierans_elecDrift_plane_pitch_fix
-   2021-09-27 Patrick Green : fixing issues identified during validation and cleaning up
-   2021-09-21 Jieran Shen : Replace coord subtraction with pitch to prevent negative distances
-   2021-09-10 Patrick Green : improving config flexibility and debugging
-   2021-09-01 Patrick Green : Added geometric photon transport time approximation for Xe doped scenarios
-   2021-08-26 Patrick Green : Implemented extensions to semi-analytic fast optical simulation required for vertical drift configuration

## larg4 v09_05_01

-   2021-09-29 Lynn Garren : larg4 v09_05_01 for larsoft v09_32_00
-   2021-09-29 Lynn Garren : larg4 v09_05_01 for larsoft v09_32_00

## larevt v09_03_01

-   2021-09-29 Lynn Garren : larevt v09_03_01 for larsoft v09_32_00
-   2021-09-29 Lynn Garren : larevt v09_03_01 for larsoft v09_32_00
-   2021-09-29 Lynn Garren : find sqlite

## lardata v09_03_01

-   2021-09-29 Lynn Garren : lardata v09_03_01 for larsoft v09_32_00
-   2021-09-29 Lynn Garren : lardata v09_03_01 for larsoft v09_32_00
-   2021-09-29 Lynn Garren : Merge pull request \#18 from PetrilloAtWork/feature/gp_DetClockServDoc
-   2021-09-20 Gianluca Petrillo : Documentation format fixes

## larcore v09_03_00

## larpandoracontent v03_26_00

-   2021-09-29 Lynn Garren : larpandoracontent vVERSION for larsoft v09_32_00
-   2021-09-29 Lynn Garren : got a little carried away, no libtorch on Ubuntu
-   2021-09-24 Andrew Chappell : Update version and ChangeLog and set temporary export policy for standalone build
-   2021-09-20 John Marshall : Use new iterator to cluster association map after potential changes during ambiguous propagation.
-   2021-09-20 Andrew Chappell : Ensure test element is not a modified (deleted) cluster

## larsoftobj v09_10_01

-   2021-09-30 Lynn Garren : cetbuildtools v8_18_01 and cetmodules v2_29_02
-   2021-09-29 Lynn Garren : need cetmodules v2_29_00 to satisfy dependencies
-   2021-09-29 Lynn Garren : larsoftobj v09_10_01 for larsoft v09_32_00
-   2021-09-29 Lynn Garren : larsoftobj v09_10_01 for larsoft v09_32_00
-   2021-09-29 Lynn Garren : product versions
-   2021-09-29 Lynn Garren : mrb v5_19_04

## lardataobj v09_03_01

-   2021-09-29 Lynn Garren : lardataobj v09_03_01 for larsoft v09_32_00
-   2021-09-29 Lynn Garren : lardataobj v09_03_01 for larsoft v09_32_00
-   2021-09-29 Lynn Garren : Merge pull request \#16 from PetrilloAtWork/feature/gp_TrackPtrDicts
-   2021-09-17 Gianluca Petrillo : Added dictionaries for vectors of art pointers to reconstructed objects

## lardataalg v09_06_01

-   2021-09-29 Lynn Garren : lardataalg v09_06_01 for larsoft v09_32_00
-   2021-09-29 Lynn Garren : lardataalg v09_06_01 for larsoft v09_32_00
-   2021-09-29 Lynn Garren : Merge pull request \#26 from PetrilloAtWork/feature/gp_BeamTimeFix
-   2021-09-21 Gianluca Petrillo : Fixed bug in detinfo::DetectorTimings::BeamGateTime()

## larcorealg v09_03_00

## larcoreobj v09_03_00

## webevd v09_06_01

-   2021-09-29 Lynn Garren : webevd for larsoft v09_32_00
-   2021-09-29 Lynn Garren : webevd for larsoft v09_32_00

## larbatch v01_56_02

-   2021-09-30 Lynn Garren : need to call cet_cmake_config in order to generate the tarball
-   2021-09-30 Lynn Garren : this noarch product needs cetbuildtools v8_18_01
-   2021-09-29 Lynn Garren : larbatch v01_56_02 for larsoft v09_32_00
-   2021-09-29 Lynn Garren : larbatch v01_56_02 for larsoft v09_32_00
-   2021-09-28 Lynn Garren : Merge pull request \#17 from hgreenlee/develop
-   2021-09-27 Herbert Greenlee : Revert to old version of mrb if necessary.

## larutils v1_28_02
