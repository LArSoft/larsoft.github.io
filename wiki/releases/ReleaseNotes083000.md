LArSoft v08_30_00 Release Notes
======================================================================

[list of LArSoft releases](LArSoft_release_list)
Download instructions for [larsoft v08_30_00](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v08_30_00/larsoft-v08_30_00.html)
Download instructions for [just larsoftobj v08_17_03](http://scisoft.fnal.gov/scisoft/bundles/larsoftobj/v08_17_03/larsoftobj-v08_17_03.html)

Purpose
--------------------

-   changes in develop
-   approved feature branches

New features
------------------------------

-   larpandora, larpandoracontent feature/larpandoracontent_v03_15_04
    -   pick up changes that did not actually go into v08_27_02
    -   A change to the inheritance structure of the master algorithm allowing external uses to register algorithms in the Pandora cosmic and neutrino reconstruction chains.
    -   A fix in the untarring command used by the Coverity static analysis tool.
    -   A configurable cut added that will skip the reconstruction if an event contains an excessive number of hits (by default this cut is std::numeric_limits\<int\>::max(), so is effectively off).
    -   A modification to the way a matching map between reconstructed and MC particles is used to avoid an exception being thrown when validating the reconstruction. This only occurs in a small number of events.
    -   A restructuring of the algorithms we use for evaluating the reconstruction performance.
-   larcore feature/gp_OpDetMappingDump\`
    -   extend the dump of channel mapping to optical detector channels (as opposed to only TPC wire channels)
    -   already merged into develop

Breaking changes
--------------------------------------

-   We have updated to ifdhc v2_5_1.
    -   Python bindings are now generated via pybindgen rather than swig.
-   IMPORTANT: Users who “import ifdh” in their python scripts may need to make changes. The pybindgen bindings are **not** entirely identical to the swig generated ones.

Mojave build
------------------------------

-   The command line tool on the Mojave jenkins build slave were accidentally upgraded. Although we managed to produce a release, there is a problem with the existing build of root. This release should not be used for Mojave.

Updated dependencies
----------------------------------------------

-   ifdhc v2_5_1
    -   config file changes for dcache door list access via https
    -   config file removal of legacy srm: (srmls, srmcp) etc.
    -   python bindings generated via pybindgen rather than swig.
-   ifdhc_config v2_5_1
-   ifdh_art v2_08_07
-   nugen v1_03_01
-   nusystematics v00_05_02

Change List
============================

larsoft v08_30_00
------------------------------------------

-   2019-08-28 Lynn Garren : larsoft v08_30_00
-   2019-08-28 Lynn Garren : larsoft v08_29_01 for larsoft v08_30_00
-   2019-08-28 Lynn Garren : product versions

lareventdisplay v08_08_10
----------------------------------------------------------

-   2019-08-28 Lynn Garren : lareventdisplay v08_08_10 for larsoft v08_30_00

larexamples v08_02_16
--------------------------------------------------

-   2019-08-28 Lynn Garren : larexamples v08_02_16 for larsoft v08_30_00

larg4 v08_03_14
--------------------------------------

-   2019-08-28 Lynn Garren : larg4 v08_03_14 for larsoft v08_30_00

larpandora v08_07_14
------------------------------------------------

-   2019-08-28 Lynn Garren : larpandora v08_07_14 for larsoft v08_30_00
-   2019-07-25 John Marshall : Move additional slice-related output into slice production block.
-   2019-07-25 John Marshall : First proposed changes to allow free development in an experiment-specific area.

larwirecell v08_05_14
--------------------------------------------------

-   2019-08-28 Lynn Garren : larwirecell v08_05_14 for larsoft v08_30_00

larana v08_10_10
----------------------------------------

-   2019-08-28 Lynn Garren : larana v08_10_10 for larsoft v08_30_00

larreco v08_18_00
------------------------------------------

-   2019-08-28 Lynn Garren : larreco v08_18_00 for larsoft v08_30_00
-   2019-08-27 Edward Tyley : Moved the shower element holder for tracs into RecoAlg
-   2019-08-26 Tingjun Yang : Merge branch ‘develop’ of ssh://cdcvs.fnal.gov/cvs/projects/larreco into develop
-   2019-08-26 Tingjun Yang : Fix bug spotted by Kyle knoepfel.
-   2019-08-26 Kyle Knoepfel : Fix bug [redmine issue 23159](https://cdcvs.fnal.gov/redmine/issues/23159): switch from Event::get to Event::getByLabel.
-   2019-08-23 Kyle Knoepfel : Improve const correctness.
-   2019-08-22 Kyle Knoepfel : Remove unnecessary constructors/destructors.
-   2019-08-22 Kyle Knoepfel : Remove unnecessary virtual tables.
-   2019-08-22 Kyle Knoepfel : Improve access protections in modules.
-   2019-08-22 Kyle Knoepfel : Remove unnecessary functions.
-   2019-08-22 Kyle Knoepfel : Change RecoAlg pointers to stack objects.
-   2019-08-22 Kyle Knoepfel : Remove reconfigure functions from modules.
-   2019-08-22 Kyle Knoepfel : Remove unnecessary RecoAlg reconfigure calls from modules.

larsim v08_12_02
----------------------------------------

-   2019-08-28 Lynn Garren : larsim v08_12_02 for larsoft v08_30_00

larevt v08_06_07
----------------------------------------

-   2019-08-28 Lynn Garren : larevt v08_06_07 for larsoft v08_30_00

lardata v08_07_05
------------------------------------------

-   2019-08-28 Lynn Garren : lardata v08_07_05 for larsoft v08_30_00

larcore v08_05_00
------------------------------------------

-   2019-08-28 Lynn Garren : larcore v08_05_00 for larsoft v08_30_00
-   2019-08-16 Gianluca Petrillo : DumpChannelMap: added configuration validation.
-   2019-08-16 Gianluca Petrillo : Added dumpung of optical detectors to \`DumpChannelMap\` module.

larpandoracontent v03_15_04
--------------------------------------------------------------

-   2019-08-28 Lynn Garren : larpandoracontent v03_15_04 for larsoft v08_30_00
-   2019-08-26 Steven Green : Merge branch ‘updates’
-   2019-08-26 Steven Green : Update version and change log.
-   2019-08-26 Steven Green : Merge branch ‘feature/ProtoDUNEHierarchyMode’
-   2019-08-16 StevenGreen1 : Alter definition of split test beam hierarchy.
-   2019-07-05 Steven Green : Altering calls to LArInteractionTypeHelper and setting of mc index.
-   2019-07-01 StevenGreen1 : Refactoring LArInteractionTypeHelper functions.
-   2019-07-01 StevenGreen1 : Using preprocessor to define interaction types.
-   2019-07-01 StevenGreen1 : Separating GetInteractionType test beam hierarchy and default modes into distinct functions.
-   2019-06-26 StevenGreen1 : Separating the EventValidationAlgorithm into separate classes for neutrino and test beam use cases.
-   2019-05-13 Steven Green : Separating functions related to test beam particle hierarchy in helper functions.
-   2019-05-13 Steven Green : Creation of event validation base algorithm and test beam event validation algorithm.
-   2019-04-01 Steven Green : Separating test beam hierarchy mode logic.
-   2019-03-28 Steven Green : Adding helper functions to access particle tier in hierarchy. Veto totally invisible particles from analysis.
-   2019-03-28 Steven Green : Adapting event validation algorithm for protoDUNE hierarchy mode.
-   2019-03-28 Steven Green : Adding test beam hierarchy mode to MCParticleHelper functions.
-   2019-08-02 StevenGreen1 : Merge branch ‘feature/EventValidation_MCToPfoMatching’
-   2019-08-02 StevenGreen1 : Modification to LArMonitoringHelper::PrintMatchingTable to no longer throw an exception if a target MCParticle is not present in the MCParticleToPfoHitSharingMap.
-   2019-08-02 StevenGreen1 : Merge branch ‘feature/MaxHits’
-   2019-07-23 StevenGreen1 : Ensure MCToPfoHitSharingMap populated for all mc primaries, even if no associated pfos, in event validation algorithm.
-   2019-08-01 StevenGreen1 : Adding noexcept member function to reduce code contained inside catch block.
-   2019-07-31 StevenGreen1 : Moving from signed to unsigned int for comparison.
-   2019-08-02 StevenGreen1 : Merge branch ‘feature/CoverityFix’
-   2019-07-31 StevenGreen1 : Adding optional cut on number of hits in event to pre processing algorithm.
-   2019-07-22 John Marshall : Fix coverity stripping in untar.
-   2019-08-02 StevenGreen1 : Merge branch ‘feature/PandoraDevelopmentArea’
-   2019-07-26 John Marshall : Facilitate experiment-specific development.
-   2019-08-26 Steven Green : Merge branch ‘updates’ into newMaster
-   2019-08-05 Steven Green : Update version and change log.

larsoftobj v08_17_03
------------------------------------------------

lardataobj v08_04_09
------------------------------------------------

lardataalg v08_08_04
------------------------------------------------

larcorealg v08_14_02
------------------------------------------------

larcoreobj v08_05_03
------------------------------------------------

larbatch v01_51_07
--------------------------------------------

larutils v1_24_02
------------------------------------------
