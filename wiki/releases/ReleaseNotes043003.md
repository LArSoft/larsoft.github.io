LArSoft v04_30_03 Release Notes
======================================================================

-   **Table of contents**
-   [LArSoft v04_30_03 Release Notes](#LArSoft-v04_30_03-Release-Notes)
    -   [Purpose](#Purpose)
    -   [New features](#New-features)
    -   [Bug fixes](#Bug-fixes)
    -   [Updated dependencies](#Updated-dependencies)
-   [Change List](#Change-List)
    -   [larsoft v04_30_03](#larsoft-v04_30_03)
    -   [lareventdisplay v04_13_00](#lareventdisplay-v04_13_00)
    -   [larexamples v04_06_07](#larexamples-v04_06_07)
    -   [larpandora v04_08_09](#larpandora-v04_08_09)
    -   [larana v04_16_05](#larana-v04_16_05)
    -   [larreco v04_25_00](#larreco-v04_25_00)
    -   [larsim v04_15_02](#larsim-v04_15_02)
    -   [larevt v04_13_07](#larevt-v04_13_07)
    -   [lardata v04_19_02](#lardata-v04_19_02)
    -   [larcore v04_22_00](#larcore-v04_22_00)
    -   [larbatch v01_20_01](#larbatch-v01_20_01)
    -   [larutils v1_04_04](#larutils-v1_04_04)

[list of LArSoft releases](LArSoft_release_list)
[Download instructions](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v04_30_03/larsoft-v04_30_03.html)

Purpose
--------------------

-   changes to develop
-   update to art v1_17_04

New features
------------------------------

-   include lareventdisplay feature/gp_FasterDigits

Bug fixes
------------------------

Updated dependencies
----------------------------------------------

||
|Product|Version|Qualifiers|Notes|
|art|v1_17_04|e9:nu|[Release Notes 1.17.04](https://cdcvs.fnal.gov/redmine/projects/art/wiki/Release_Notes_11704)|
|artdaq_core|v1_04_24|e9:nu:s24||
|ifdh_art|v1_14_02|e9:nu:s24||
|nutools|v1_17_01|e9||
|artextensions|v1_02_03|e9:nu:s24||
|mrb|v1_05_06|||

Change List
============================

larsoft v04_30_03
------------------------------------------

-   2015-12-09 Lynn Garren : larsoft v04_30_03 for larsoft v04_30_03
-   2015-12-09 Lynn Garren : update product versions

lareventdisplay v04_13_00
----------------------------------------------------------

-   2015-12-09 Lynn Garren : lareventdisplay v04_13_00 for larsoft v04_30_03
-   2015-12-09 Gianluca Petrillo : Merge with develop – again.
-   2015-12-08 Tingjun Yang : Add option to uncompress with pedestal. This is needed for 35t.
-   2015-12-08 Gianluca Petrillo : Merge remote-tracking branch ‘origin/develop’ into feature/gp_FasterDigits
-   2015-09-29 Gianluca Petrillo : Added missing header
-   2015-09-25 Gianluca Petrillo : Merge branch ‘develop’ into feature/gp_FasterDigits
-   2015-09-25 Gianluca Petrillo : - new event detection code made more generic and moved out of RawDataDrawer.h - pad size is now stored (since the source of that information could forget it) - drawing procedure rewritten and made modular to accommodate RoI extraction and drawing as distinct operations - added a separate threshold specification for the determination of RoI - fixed glitches in zooming to region of interest (I hope) - added a lot of debugging output
-   2015-09-18 Gianluca Petrillo : Merge remote-tracking branch ‘origin/develop’ into feature/gp_FasterDigits
-   2015-09-15 Gianluca Petrillo : TPC locator moved to two lines
-   2015-09-11 Gianluca Petrillo : Added an alternative, faster (?), experimental way to change the TPC visualized in the 2D view.

larexamples v04_06_07
--------------------------------------------------

-   2015-12-09 Lynn Garren : larexamples v04_06_07 for larsoft v04_30_03

larpandora v04_08_09
------------------------------------------------

-   2015-12-09 Lynn Garren : larpandora v04_08_09 for larsoft v04_30_03
-   2015-12-04 Andrew Blake : Enabling Pandora monitoring module to run on real data without trying to look up MC particle lists.
-   2015-12-04 Andrew Blake : Making a small change to ‘LArPandoraParticleCreator.cxx’ that allows Producer to be tested and debugged without producing anything. Also adding an extra variable to LArPandora analysis ntuple.

larana v04_16_05
----------------------------------------

-   2015-12-09 Lynn Garren : larana v04_16_05 for larsoft v04_30_03

larreco v04_25_00
------------------------------------------

-   2015-12-09 Lynn Garren : larreco v04_25_00 for larsoft v04_30_03
-   2015-12-09 Bruce Baller : Merge branch ‘feature/bb_ccwork’ into develop
-   2015-12-09 Bruce Baller : Fixed error in ClusterHitsOK
-   2015-12-09 Bruce Baller : Work on VLA clusters
-   2015-12-09 Tingjun Yang : Merge branch ‘develop’ of ssh://cdcvs.fnal.gov/cvs/projects/larreco into develop
-   2015-12-09 Tingjun Yang : Add option to use pedestal when doing uncompression.
-   2015-12-08 Mike Wallbank : Added temp fix to the code which projects a 2D point onto a 3D plane. This is mainly for the benefit of lariat, where tracking isn’t as good as it is in DUNE. Its use will be negated once updates to the showering code, currently on feature branch wallbank_EMShowerImprovements, are merged into develop
-   2015-12-08 Bruce Baller : Removed vagrant variable
-   2015-12-08 Bruce Baller : Use gaushit instead of cchit for linecluster module
-   2015-12-08 Bruce Baller : Merge branch ‘feature/bb_ccwork’ into develop
-   2015-12-08 Bruce Baller : Modify fcl inputs. Remove not-useful variables. Add Very Large Angle cluster code. Add code to restore merged hits. Comment out dubious code. Fix GetHitRange.
-   2015-12-08 Bruce Baller : Change/add fcl parameters. Add mergeAvailable vector for hit merging. Remove not-useful variables. Add new code references.
-   2015-12-08 Bruce Baller : Updated ClusterCrawler settings. Changed HammerCluster to FindHammerClusters. Added RefineVertexClusters, FindVLAClusters
-   2015-12-04 Mike Wallbank : Modified the code so it doesn’t look for output from tracking unless we’re explicitly performing track shower separation
-   2015-12-03 Mike Wallbank : Changed the kernel to a vector to increase efficiency
-   2015-12-03 Mike Wallbank : Merge branch ‘develop’ of ssh://cdcvs.fnal.gov/cvs/projects/larreco into develop
-   2015-12-03 Mike Wallbank : Added an algorithm in the shower finder to try to identify particles which are well reconstructed by the clustering in two views but poorly reconstructed in the third (if it exists). When these are found, the third view is ignored and the shower finding is re run
-   2015-12-03 Bruce Baller : Add Fixed bool to VtxStore
-   2015-12-03 Bruce Baller : Add RefineVertexClusters. Allow vertex positions to be fixed. Calculate cluster tracking resolution.
-   2015-12-02 Bruce Baller : Work in progress
-   2015-11-20 Bruce Baller : Check for invalid fcl input
-   2015-11-20 Bruce Baller : Check for cluster hit consistency. Fix bug in ChkSignal. Fix bugs in ChkMerge. Add ClusterHitsOK.
-   2015-11-20 Bruce Baller : Rearrange for clarity
-   2015-11-17 Bruce Baller : Merge branch ‘develop’ into feature/bb_ccwork
-   2015-11-12 Bruce Baller : Merge branch ‘develop’ into feature/bb_ccwork
-   2015-11-12 Bruce Baller : work in progress
-   2015-11-10 Bruce Baller : Merge branch ‘develop’ into feature/bb_ccwork
-   2015-10-28 Bruce Baller : Add ART flag
-   2015-10-28 Bruce Baller : Merge branch ‘develop’ into feature/bb_ccwork
-   2015-10-23 Bruce Baller : Merge branch ‘develop’ into feature/bb_ccwork
-   2015-10-22 Bruce Baller : Merge branch ‘develop’ into feature/bb_ccwork
-   2015-10-22 Bruce Baller : work in progress
-   2015-10-18 Bruce Baller : Merge branch ‘develop’ into feature/bb_ccwork
-   2015-10-02 Bruce Baller : Work in progress
-   2015-09-21 Bruce Baller : Merge branch ‘develop’ into feature/bb_ccwork
-   2015-09-21 Bruce Baller : Cluster crawler development
-   2015-09-16 Bruce Baller : Add fUseChannelFilter
-   2015-09-16 Bruce Baller : fcl parameter to use ChannelFilter or no filter
-   2015-09-16 Bruce Baller : Merge branch ‘develop’ into feature/bb_ccwork
-   2015-09-16 Bruce Baller : Redefine algorithm parameters
-   2015-09-16 Bruce Baller : CCTrackMaker development
-   2015-09-16 Bruce Baller : Convert VtxClusterSplit to return bool
-   2015-09-16 Bruce Baller : Iterate on call to VtxClusterSplit. Convert VtxClusterSplit to return status. Add EndKinkAngle method. Modify crawling cuts.
-   2015-09-16 Bruce Baller : Change default HitMergeChiCut
-   2015-09-16 Bruce Baller : Remove fuBCode
-   2015-09-15 Bruce Baller : remove fuBCode
-   2015-09-15 Bruce Baller : remove fuBCode
-   2015-09-13 Bruce Baller : remove cchitrefineralg reference
-   2015-09-13 Bruce Baller : remove cchitrefineralg reference
-   2015-09-13 Bruce Baller : remove cchitrefineralg reference
-   2015-09-13 Bruce Baller : remove cchitrefineralg reference
-   2015-09-13 Bruce Baller : Improve space point finding code in ShortTrackTrajectory. Change print structure
-   2015-09-13 Bruce Baller : Move prt to header file
-   2015-09-10 Bruce Baller : Change to plane dependent cuts. Add uB code boolean
-   2015-09-10 Bruce Baller : Change to plane dependent cuts. Add uB code boolean.
-   2015-09-10 Bruce Baller : Change to plane dependent cuts. Add uB code boolean

larsim v04_15_02
----------------------------------------

-   2015-12-09 Lynn Garren : larsim v04_15_02 for larsoft v04_30_03
-   2015-12-07 Thomas Warburton : Fixing a bug where wrong PDGCode was entered into the event record.

larevt v04_13_07
----------------------------------------

-   2015-12-09 Lynn Garren : larevt v04_13_07 for larsoft v04_30_03
-   2015-12-08 Gianluca Petrillo : Throw when a non-implemented feature is requested
-   2015-12-08 Gianluca Petrillo : A problem that could happen silenty when changing geometry, now happens loudly

lardata v04_19_02
------------------------------------------

-   2015-12-09 Lynn Garren : lardata v04_19_02 for larsoft v04_30_03

larcore v04_22_00
------------------------------------------

-   2015-12-09 Lynn Garren : larcore v04_22_00 for larsoft v04_30_03

larbatch v01_20_01
--------------------------------------------

larutils v1_04_04
------------------------------------------
