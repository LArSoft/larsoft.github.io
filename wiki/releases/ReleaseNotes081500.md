LArSoft v08_15_00 Release Notes
======================================================================

[list of LArSoft releases](LArSoft_release_list)
Download instructions for [larsoft v08_15_00](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v08_15_00/larsoft-v08_15_00.html)
Download instructions for [just larsoftobj v08_10_00](http://scisoft.fnal.gov/scisoft/bundles/larsoftobj/v08_10_00/larsoftobj-v08_10_00.html)

Purpose
--------------------

-   changes in develop
-   approved feature branches

New features
------------------------------

-   larpandoracontent “feature/sgreen_CRTagging”
    -   These changes contain a minor improvement to the cosmic ray tagging inside Pandora.
-   larsim feature/pgreen_lightprop_updated
-   Exploiting detector symmetry in the photon visibility library
    -   [https://indico.fnal.gov/event/20409/contribution/2/material/slides/0.pdf](https://indico.fnal.gov/event/20409/contribution/2/material/slides/0.pdf)
    -   feature/gp_PhotonVisTransformations branches, for:
    -   larcoreobj… oh, I introduced a geographical ID for optical detectors too, it’s called geo::OpDetID!
    -   larcorealg for metaprogramming stuff (and assignation of geo::OpDetID)
    -   lardataalg (new mapping container objects)
    -   larsim (the mappings)
    -   larana (updates only)
    -   dunetpc
    -   icaruscode
-   MicroBoone requests from MCC9
    -   [https://indico.fnal.gov/event/20409/contribution/3/material/slides/0.pdf](https://indico.fnal.gov/event/20409/contribution/3/material/slides/0.pdf)
    -   larsim: feature/davidc_mcreco_segfaultfix
    -   larreco: feature/cerati_fix-vtx-fit-bug-v08_05_00_br

Bug fixes
------------------------

-   resolve [redmine issue 22250](https://cdcvs.fnal.gov/redmine/issues/22250)
    -   larsim, dunetpc and sbndcode “feature/dgg_opt_maintenance”

Updated dependencies
----------------------------------------------

-   mrb v3_01_01

Change List
============================

larsoft v08_15_00
------------------------------------------

-   2019-04-10 Lynn Garren : larsoft v08_15_00 for larsoft v08_15_00
-   2019-04-10 Lynn Garren : product versions
-   2019-04-09 Lynn Garren : mrb v3_01_01
-   2019-04-08 Lynn Garren : guideline_sl v2_0_0

lareventdisplay v08_05_00
----------------------------------------------------------

-   2019-04-10 Lynn Garren : lareventdisplay v08_05_00 for larsoft v08_15_00
-   2019-04-04 Tingjun Yang : Do not return so the dead channels will be shown.
-   2019-04-04 Tingjun Yang : Set range for deconvolved signal.
-   2019-04-04 Tingjun Yang : Change the way to set wire color.
-   2019-04-03 Tingjun Yang : Merge branch ‘develop’ of ssh://cdcvs.fnal.gov/cvs/projects/lareventdisplay into develop
-   2019-04-03 Tingjun Yang : Add option to display a single track in calorimetry display.
-   2019-04-03 Tingjun Yang : Use index instead of ID to set shower color.
-   2019-04-03 Tingjun Yang : Add protection if the data product does not exist.

larexamples v08_01_14
--------------------------------------------------

-   2019-04-10 Lynn Garren : larexamples v08_01_14 for larsoft v08_15_00
-   2019-03-21 Kyle Knoepfel : Remove unnecessary headers.

larg4 v08_01_12
--------------------------------------

-   2019-04-10 Lynn Garren : larg4 v08_01_12 for larsoft v08_15_00

larpandora v08_05_07
------------------------------------------------

-   2019-04-10 Lynn Garren : larpandora v08_05_07 for larsoft v08_15_00
-   2019-03-21 Kyle Knoepfel : Remove unnecessary headers.

larwirecell v08_03_05
--------------------------------------------------

-   2019-04-10 Lynn Garren : larwirecell v08_03_05 for larsoft v08_15_00

larana v08_04_05
----------------------------------------

-   2019-04-10 Lynn Garren : larana v08_04_05 for larsoft v08_15_00
-   2019-04-05 Gianluca Petrillo : Code updated after PhotonVisibilityService changes.

larreco v08_11_00
------------------------------------------

-   2019-04-10 Lynn Garren : larreco v08_11_00 for larsoft v08_15_00
-   2019-04-10 Lynn Garren : Merge branch ‘feature/cerati_fix-vtx-fit-bug-v08_05_00_br’ into release/v08_15_00
-   2019-03-29 Kyle Knoepfel : Avoid multiple art::Ptr dereferencing, and unnecessary pow calls.
-   2019-02-22 Giuseppe Cerati : fix bug in accessing daughter pfps
-   2019-02-13 Lynn Garren : larreco v08_04_00_02 for larsoft v08_05_00_br
-   2019-02-12 Herbert Greenlee : Merge remote-tracking branch ‘origin/v08_05_00_br’ into feature/cerati_kf-ub-mcc9
-   2019-01-30 Giuseppe Cerati : kalman filter fixes and updates for MicroBooNE MCC9
-   2019-01-30 Lynn Garren : larreco v08_04_00_01 for larsoft v08_05_00_br
-   2019-01-08 Lynn Garren : larreco v08_00_00_01 for larsoft v08_00_00_br

larsim v08_05_00
----------------------------------------

-   2019-04-10 Lynn Garren : larsim v08_05_00 for larsoft v08_15_00
-   2019-04-10 Lynn Garren : Merge branch ‘feature/gp_PhotonVisTransformations’ into release/v08_15_00
-   2019-04-10 Lynn Garren : Merge branch ‘feature/dgg_opt_maintenance’ into release/v08_15_00
-   2019-04-10 Lynn Garren : Merge branch ‘feature/davidc_mcreco_segfaultfix’ into release/v08_15_00
-   2019-04-10 Lynn Garren : Merge branch ‘feature/pgreen_lightprop_updated’ into release/v08_15_00
-   2019-03-21 Kyle Knoepfel : Remove unnecessary headers.
-   2019-02-27 David Caratelli : removed an old COUT and added exception handling for nearestwire function call from geometry service –DC
-   2019-04-08 Patrick Green : updated comments
-   2019-04-08 Patrick Green : Merge branch ‘develop’ into feature/pgreen_lightprop_updated
-   2019-04-05 Gianluca Petrillo : Moved definition of new PhotonVisibilityService types into their own header.
-   2019-04-04 Gianluca Petrillo : Many changes to the photon library mapping.
-   2019-04-01 Gianluca Petrillo : Photon library transformations made into art tools.
-   2019-04-01 Gianluca Petrillo : Updated formatting of PhotonPropagation module documentation.
-   2019-04-01 Gianluca Petrillo : Moved documentation of \`PhotonLibraryPropagation\` from file to class.
-   2019-03-29 Gianluca Petrillo : Added mapping for all optical library related information I could find.
-   2019-03-28 Gianluca Petrillo : Added a mapping for photon library optical detectors.
-   2019-03-20 Gianluca Petrillo : Introduced customisation of photon mapping location in \`PhotonVisibilityService\`.
-   2019-03-20 Gianluca Petrillo : \`PhotonVisibilityService\` interface extended to support any vector type.
-   2019-03-20 Gianluca Petrillo : Updated trivial implementation of changed member functions in \`PhotonVisibilityService\`.
-   2019-03-20 Gianluca Petrillo : Updated implementation of static member functions in \`PhotonVisibilityService\`.
-   2019-03-20 Gianluca Petrillo : Moved the interface of \`PhotonVisibilityService\` implementation functions to LArSoft vectors.
-   2019-03-20 Gianluca Petrillo : Introducing an indirection layer in \`PhotonVisibilityService\` interface.
-   2019-03-20 Gianluca Petrillo : Removed internal use of \`TVector3\` in \`PhotonVisibilityService\`
-   2019-03-20 Gianluca Petrillo : Documentation format changed to Doxygen.
-   2019-03-20 Gianluca Petrillo : Breaking change: common \`sim::PhotonVoxelDef\` methods now return a LArSoft vector.
-   2019-03-20 Gianluca Petrillo : \`PhotonVoxelDef\` internally using LArSoft vectors instead of \`TVector3\`
-   2019-03-20 Gianluca Petrillo : \`PhotonVoxelDef::GetNeighboringVoxelIDs()\` returns an optional array instead of a vector
-   2019-03-20 Gianluca Petrillo : \`PhotonVoxelDef::GetPhotonVoxel()\` now returns an array rather than a vector
-   2019-03-19 Gianluca Petrillo : Changed internals and interface of \`PhotonVoxelDef::GetNeighboringVoxelIDs()\`.
-   2019-03-19 Gianluca Petrillo : \`PhotonVoxelDef::GetSteps()\` now returns an array of integers.
-   2019-03-19 Gianluca Petrillo : Removed undefined method.
-   2019-03-19 Gianluca Petrillo : \`sim::PhotonVoxelDef::GetVoxelID()\` supports any vector input.
-   2019-03-19 Gianluca Petrillo : Interface change: \`sim::PhotonVoxelDef::GetNVoxels()\` turned unsigned.
-   2019-03-19 Gianluca Petrillo : Cosmetic changes to \`sim::PhotonVoxelDef\`.
-   2019-03-19 Gianluca Petrillo : \`sim::PhotonVoxelDef\` can return any vector type for its voxel size.
-   2019-03-19 Gianluca Petrillo : More internal changes to \`sim::PhotonVoxelDef\` storage.
-   2019-03-19 Gianluca Petrillo : \`sim::PhotonVoxelDef\` can return any vector type for its vertices.
-   2019-03-19 Gianluca Petrillo : Internal changes to \`sim::PhotonVoxelDef\` storage.
-   2019-03-19 Gianluca Petrillo : \`sim::PhotonVoxel\` full support for LArSoft vector types.
-   2019-03-19 Gianluca Petrillo : \`sim::PhotonVoxel\` can return any vector type.
-   2019-03-19 Gianluca Petrillo : Internal changes to \`sim::PhotonVoxel\` storage.
-   2019-03-18 Gianluca Petrillo : Replaced \<TAB\> characters with spaces.
-   2019-03-18 Gianluca Petrillo : Applying some standard LArSoft/C++ practices to \`PhotonVoxel\`.
-   2019-04-02 Patrick Green : renamed width and height variables to be more explicit to avoid confusion, previously wrong way around
-   2019-04-02 Patrick Green : semi-analytic model opdet tpc selection fix
-   2019-04-02 Diego Gamez : moving SBND specific code to sbndcode

larevt v08_02_08
----------------------------------------

-   2019-04-10 Lynn Garren : larevt v08_02_08 for larsoft v08_15_00

lardata v08_03_09
------------------------------------------

-   2019-04-10 Lynn Garren : lardata v08_03_09 for larsoft v08_15_00

larcore v08_02_05
------------------------------------------

-   2019-04-10 Lynn Garren : larcore v08_02_05 for larsoft v08_15_00
-   2019-04-10 Lynn Garren : larcore v08_02_05 for larsoft v08_15_00

larpandoracontent v03_14_06
--------------------------------------------------------------

-   2019-04-10 Lynn Garren : larpandoracontent v03_14_06 for larsoft v08_15_00
-   2019-04-08 Steven Green : Merge branch ‘updates’
-   2019-04-08 Steven Green : Update version and change log.
-   2019-04-05 Multi-algorithm pattern recognition : Merge pull request \#79 from StevenGreen1/feature/CosmicRayInTimeTagging
-   2019-04-05 Steven Green : Define out of time slices in CR tagging using all pfos in slice.
-   2019-03-14 John Marshall : Merge branch ‘feature/SvmVertexClusterMapping’
-   2019-03-14 John Marshall : Correct mapping between HitType and ClusterList in an hitherto unused map.

larsoftobj v08_10_00
------------------------------------------------

-   2019-04-10 Lynn Garren : larsoftobj v08_10_00 for larsoft v08_15_00
-   2019-04-10 Lynn Garren : Product versions

lardataobj v08_02_06
------------------------------------------------

-   2019-04-10 Lynn Garren : lardataobj v08_02_06 for larsoft v08_15_00
-   2019-04-09 Kyle Knoepfel : Remove inappropriate preprocessor macros.
-   2019-04-01 Kyle Knoepfel : Full paths for header dependencies.
-   2019-03-21 Kyle Knoepfel : Remove unnecessary headers.

lardataalg v08_05_00
------------------------------------------------

-   2019-04-10 Lynn Garren : lardataalg v08_05_00 for larsoft v08_15_00
-   2019-04-10 Lynn Garren : Merge branch ‘feature/gp_PhotonVisTransformations’ into release/v08_15_00
-   2019-03-21 Kyle Knoepfel : Remove unnecessary headers.
-   2019-03-26 Gianluca Petrillo : Added \`util::MappedContainer\` transparently applying index mapping to another random access container.

larcorealg v08_07_00
------------------------------------------------

-   2019-04-10 Lynn Garren : larcorealg v08_07_00 for larsoft v08_15_00
-   2019-04-10 Lynn Garren : larcorealg v08_07_00 for larsoft v08_15_00
-   2019-04-10 Lynn Garren : Merge branch ‘feature/gp_PhotonVisTransformations’ into release/v08_15_00
-   2019-04-09 Kyle Knoepfel : Remove inappropriate preprocessor macros.
-   2019-04-02 Kyle Knoepfel : Fix header dependencies.
-   2019-03-21 Kyle Knoepfel : Remove unnecessary headers.
-   2019-03-08 Kyle Knoepfel : Remove unsupported GCCXML preprocessor macros.
-   2019-04-04 Gianluca Petrillo : Optical detector class \`geo::OpDetGeo\` now has its own ID stored.
-   2019-03-29 Gianluca Petrillo : Loads of bug fixes in \`ContainerMeta.h\` involving less-than-usual data types.
-   2019-03-29 Gianluca Petrillo : Added \`util::collection_from_reference()\` to unwrap referenced collections
-   2019-03-28 Gianluca Petrillo : Added a load more traits and their test.
-   2019-03-28 Gianluca Petrillo : Added \`lar::debug::static_assert_on\<\>\` causing the compiler to print a type.
-   2019-03-28 Gianluca Petrillo : Updated \`DebugUtils.h\` coding style.
-   2019-03-26 Gianluca Petrillo : Updated container traits to deal with \`std::reference_wrapper\`.
-   2019-03-26 Gianluca Petrillo : Added traits to identify \`std::reference_wrapper\`, to remove references and to “copy” constantness.

larcoreobj v08_03_00
------------------------------------------------

-   2019-04-10 Lynn Garren : larcoreobj v08_03_00 for larsoft v08_15_00
-   2019-04-04 Gianluca Petrillo : Added optical detector ID class \`geo::opDetID\`.

larbatch v01_51_00
--------------------------------------------

-   2019-04-10 Lynn Garren : larbatch v01_51_00 for larsoft v08_15_00
-   2019-04-05 Herbert Greenlee : Update filelistdef start project without with limit clause.
-   2019-04-05 Herbert Greenlee : Add filelistdef flag.

larutils v1_23_14
------------------------------------------

-   2019-04-10 Lynn Garren : larutils v1_23_14 for larsoft v08_15_00
-   2019-04-03 Lynn Garren : use dash and add s81
