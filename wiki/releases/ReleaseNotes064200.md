# LArSoft v06_42_00 Release Notes



[list of LArSoft releases](LArSoft_release_list)  
Download instructions for [larsoft v06_42_00](https://scisoft.fnal.gov/scisoft/bundles/larsoft/v06_42_00/larsoft-v06_42_00.html)  
Download instructions for [just larsoftobj v1_22_01](https://scisoft.fnal.gov/scisoft/bundles/larsoftobj/v1_22_01/larsoftobj-v1_22_01.html)

## Purpose

-   changes to develop
-   approved feature branches
-   larsoft_data update

## New features

-   larpandora feature/jm_PerObjectRejection
    -   Changes to larpandora exception handling. All input parameters to Pandora are already automatically NaN- and inf-checked. Previously, would abort event processing if any input parameter was not finite. Now explicitly reject only the single bad input, printing a message via the warning stream if any input object is rejected. No interface changes; only a breaking change if the inputs are NaNs or infs!
-   larpandoracontent
    -   minor changes, including removal of an unused member variable from CutPfoCharacterisationAlgorithm and addition of LArSvmHelper::CalculateProbability(…). Minor edit to out-of-larsoft build. No breaking changes.
-   lareventdisplay: feature/chalt_RawHitFindingDP

## Bug fixes

-   larcore feature/gp_Issue13972 \#13972
    -   final changes
-   larreco \#17048

## Updated dependencies

|              |          |            |                                                                                                                           |
|--------------|----------|------------|---------------------------------------------------------------------------------------------------------------------------|
| Product      | Version  | Qualifiers | Notes                                                                                                                     |
| larsoft_data | v1_02_00 |            | [Ar39 Spectrum](https://indico.fnal.gov/getFile.py/access?contribId=1&amp;resId=0&amp;materialId=slides&amp;confId=14779) |

# Change List

## larsoft v06_42_00

-   2017-06-28 Lynn Garren : larsoft v06_42_00 for larsoft v06_42_00
-   2017-06-28 Lynn Garren : update product versions
-   2017-06-27 Lynn Garren : larsoft_data v1_02_00

## lareventdisplay v06_08_00

-   2017-06-28 Lynn Garren : lareventdisplay v06_08_00 for larsoft v06_42_00
-   2017-06-27 Lynn Garren : Merge branch 'feature/chalt_RawHitFindingDP' into release/v06_42_00
-   2017-06-22 Christoph Alt : Implemented two functions to evaluate raw waveform fits and changed lable and title offsets for raw waveform fits

## larexamples v06_04_03

-   2017-06-28 Lynn Garren : larexamples v06_04_03 for larsoft v06_42_00

## larpandora v06_14_00

-   2017-06-28 Lynn Garren : larpandora v06_14_00 for larsoft v06_42_00
-   2017-06-27 Lynn Garren : Merge branch 'feature/jm_PerObjectRejection' into release/v06_42_00
-   2017-06-22 John Marshall : Provide ability to write compact geometry xml description via fcl steering.
-   2017-06-22 John Marshall : Explicitly deal with exceptions raised during input object creation. If input parameters for a given object are not finite, only the relevant object is now omitted. A message is printed via the warning stream.

## larwirecell v06_05_03

-   2017-06-28 Lynn Garren : larwirecell v06_05_03 for larsoft v06_42_00

## larana v06_07_03

-   2017-06-28 Lynn Garren : larana v06_07_03 for larsoft v06_42_00

## larreco v06_33_00

-   2017-06-28 Lynn Garren : larreco v06_33_00 for larsoft v06_42_00
-   2017-06-28 Bruce Baller : Return 1 instead of 0 if an invalid trajectory is passed
-   2017-06-26 Robert Sulej : add tag for muons, similar to primary electron, might become useful
-   2017-06-25 Robert Sulej : fix condition
-   2017-06-25 Robert Sulej : add one more type flag for electrons
-   2017-06-25 Robert Sulej : more simple counting and plotting of vertices
-   2017-06-25 Robert Sulej : Merge branch 'develop' of ssh://cdcvs.fnal.gov/cvs/projects/larreco into develop
-   2017-06-25 Robert Sulej : minor improvement, before goint to the next release
-   2017-06-24 Robert Sulej : tune script for 1-output network running
-   2017-06-24 Robert Sulej : setup backend from the script level
-   2017-06-24 Robert Sulej : remove old script
-   2017-06-24 Robert Sulej : add script to plot data dumped to root file
-   2017-06-23 baller : Merge branch 'develop' into feature/bb_TJWork
-   2017-06-23 baller : Change vertex Ptr2D to Vtx2ID.
-   2017-06-23 baller : Add Vertex2DCuts debug parameter.
-   2017-06-23 baller : Change vertex bit names.
-   2017-06-23 baller : Convert Ptr3D to Vtx3ID, etc. Add kVtxKilled status bit.
-   2017-06-23 baller : Convert vertex Ptr2D to Vtx2ID
-   2017-06-23 baller : Move MakeVertexObsolete from Utils. Improvements in Find2DVertices. Create new kVtxKilled bit. Calculate vertex Score in CheckVtxAssociations
-   2017-06-23 baller : Move MakeVertexObsolete from Utils
-   2017-06-23 baller : Changed Ptr2D to Vtx2ID, etc. Add UpdateChgRMS. Add vertex Score. Move MakeVertexObsolete to TCVertex. Improvements to FindCloseTjs.
-   2017-06-23 baller : Add UpdateChgRMS.
-   2017-06-23 baller : Increase Vertex2DCuts size. Add call to CheckVtxAssociations. Fix bug in MergeAndStore.
-   2017-06-22 Lynn Garren : larsoft v06_41_00
-   2017-06-22 Robert Sulej : few more easy replacements of TVector with DisplacementVector
-   2017-06-22 Robert Sulej : propagate direction at each hit to recobTrack
-   2017-06-21 baller : Add AddCloseTjsToList. Define a special mode for debugging shower code. Add calls to DefineShower and AddTjsInsideEnvelope in FindExternalParent
-   2017-06-21 baller : Add AddCloseTjsToList
-   2017-06-21 baller : Add FindCloseTjs. Minor fixes.
-   2017-06-21 baller : Add FindCloseTjs.
-   2017-06-21 baller : Add special mode for debugging shower code
-   2017-06-21 baller : Set default debug cryostat and tpc

## larsim v06_25_01

-   2017-06-28 Lynn Garren : larsim v06_25_01 for larsoft v06_42_00
-   2017-06-27 Lynn Garren : larsoft_data v1_02_00

## larevt v06_14_03

-   2017-06-28 Lynn Garren : larevt v06_14_03 for larsoft v06_42_00

## lardata v06_23_01

-   2017-06-28 Lynn Garren : lardata v06_23_01 for larsoft v06_42_00

## larcore v06_12_00

-   2017-06-28 Lynn Garren : larcore v06_12_00 for larsoft v06_42_00
-   2017-06-27 Lynn Garren : Merge branch 'feature/gp_Issue13972' into release/v06_42_00
-   2017-06-21 Gianluca Petrillo : Cosmetic changes.
-   2017-06-21 Gianluca Petrillo : Added “local” iterators for all readout IDs.
-   2017-06-21 Gianluca Petrillo : Added “local” iterators for all wires in a specified TPC and plane.
-   2017-06-21 Gianluca Petrillo : Added “local” iterators for all planes in a specified TPC.
-   2017-06-21 Gianluca Petrillo : Added GeoemtryCore method to increment geometry element IDs.
-   2017-06-21 Gianluca Petrillo : Added text description of the iterator loop test.

## larpandoracontent v03_07_02

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

## larsoftobj v1_22_01

-   2017-06-28 Lynn Garren : larsoftobj v1_22_01 for larsoft v06_42_00
-   2017-06-28 Lynn Garren : update product versions

## lardataobj v1_17_02

-   2017-06-28 Lynn Garren : lardataobj v1_17_02 for larsoft v06_42_00

## larcoreobj v1_15_01

-   2017-06-28 Lynn Garren : larcoreobj v1_15_01 for larsoft v06_42_00
-   2017-06-22 Lynn Garren : larsoft v06_41_00
-   2017-06-21 Gianluca Petrillo : Added validity interface to geometry IDs.
-   2017-06-21 Gianluca Petrillo : Added convenience geometry ID conversion methods.

## larbatch v01_32_03

-   2017-06-28 Lynn Garren : larbatch v01_32_03 for larsoft v06_42_00
-   2017-06-22 Herbert Greenlee : Fix some problems with validate-on-worker.

## larutils v1_16_00
