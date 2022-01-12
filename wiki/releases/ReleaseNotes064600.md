LArSoft v06_46_00 Release Notes
======================================================================

-   **Table of contents**
-   [LArSoft v06_46_00 Release Notes](#LArSoft-v06_46_00-Release-Notes)
    -   [Purpose](#Purpose)
    -   [New features](#New-features)
    -   [Bug fixes](#Bug-fixes)
    -   [Updated dependencies](#Updated-dependencies)
-   [Change List](#Change-List)
    -   [larsoft v06_46_00](#larsoft-v06_46_00)
    -   [lareventdisplay v06_10_03](#lareventdisplay-v06_10_03)
    -   [larexamples v06_05_04](#larexamples-v06_05_04)
    -   [larpandora v06_15_04](#larpandora-v06_15_04)
    -   [larwirecell v06_05_08](#larwirecell-v06_05_08)
    -   [larana v06_08_04](#larana-v06_08_04)
    -   [larreco v06_37_00](#larreco-v06_37_00)
    -   [larsim v06_29_00](#larsim-v06_29_00)
    -   [larevt v06_15_04](#larevt-v06_15_04)
    -   [lardata v06_26_00](#lardata-v06_26_00)
    -   [larcore v06_14_00](#larcore-v06_14_00)
    -   [larpandoracontent v03_07_03](#larpandoracontent-v03_07_03)
    -   [larsoftobj v1_24_01](#larsoftobj-v1_24_01)
    -   [lardataobj v1_18_01](#lardataobj-v1_18_01)
    -   [larcorealg v1_06_01](#larcorealg-v1_06_01)
    -   [larcoreobj v1_15_01](#larcoreobj-v1_15_01)
    -   [larbatch v01_32_04](#larbatch-v01_32_04)
    -   [larutils v1_17_00](#larutils-v1_17_00)

[list of LArSoft releases](LArSoft_release_list)
Download instructions for [larsoft v06_46_00](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v06_46_00/larsoft-v06_46_00.html)
Download instructions for [just larsoftobj v1_24_01](http://scisoft.fnal.gov/scisoft/bundles/larsoftobj/v1_24_01/larsoftobj-v1_24_01.html)

Purpose
--------------------

-   changes from develop

New features
------------------------------

-   update the 3D clustering to handle multiple TPC’s
    -   other enhancements
-   improvements to the event display
    -   for example, the 3D geometry is now handled by an experiment specific art tool so that multiple TPC’s can be displayed (e.g. ICARUS).
    -   Plus lots of other enhancements.

Bug fixes
------------------------

-   fix of the shower energy in larreco/Calorimetry/LinearEnergyAlg.\*

Updated dependencies
----------------------------------------------

-   mrb v1_10_00

Change List
============================

larsoft v06_46_00
------------------------------------------

-   2017-08-09 Lynn Garren : larsoft v06_46_00 for larsoft v06_46_00
-   2017-08-09 Lynn Garren : provide cetbuildtools v5_14_00
-   2017-08-09 Lynn Garren : update dependency database
-   2017-08-09 Lynn Garren : update product versions

lareventdisplay v06_10_03
----------------------------------------------------------

-   2017-08-09 Lynn Garren : lareventdisplay v06_10_03 for larsoft v06_46_00

larexamples v06_05_04
--------------------------------------------------

-   2017-08-09 Lynn Garren : larexamples v06_05_04 for larsoft v06_46_00

larpandora v06_15_04
------------------------------------------------

-   2017-08-09 Lynn Garren : larpandora v06_15_04 for larsoft v06_46_00

larwirecell v06_05_08
--------------------------------------------------

-   2017-08-09 Lynn Garren : larwirecell v06_05_08 for larsoft v06_45_02
-   2017-08-08 Usher, Tracy L : Merge branch ‘master’ into feature/usher_truncationorderswap
-   2017-07-27 Usher, Tracy L : Swap the order of truncation/filtering - noise filter runs on full set of ticks, truncation then picks out the sub waveform for output.

larana v06_08_04
----------------------------------------

-   2017-08-09 Lynn Garren : larana v06_08_04 for larsoft v06_46_00
-   2017-08-08 Usher, Tracy L : Merge branch ‘master’ into feature/usher_cluster3dupdates
-   2017-07-27 Usher, Tracy L : Merge branch ‘master’ into feature/usher_cluster3dupdates
-   2017-07-20 Usher, Tracy L : Merge branch ‘master’ into feature/usher_cluster3dupdates
-   2017-07-17 Usher, Tracy L : Merge branch ‘master’ into feature/usher_cluster3dupdates
-   2017-06-14 Usher, Tracy L : Merge branch ‘master’ into feature/usher_cluster3dupdates
-   2017-05-18 Usher, Tracy L : Merge branch ‘master’ into feature/usher_cluster3dupdates
-   2017-05-12 Usher, Tracy L : Add the check requiring more than 1 hit on a PFParticle to be out of time before rejecting

larreco v06_37_00
------------------------------------------

-   2017-08-09 Lynn Garren : larreco has grown a dependency on eigen
-   2017-08-09 Lynn Garren : larreco v06_37_00 for larsoft v06_46_00
-   2017-08-09 Usher, Tracy L : Default for MicroBooNE is to output only one hit collection at the moment
-   2017-08-09 Usher, Tracy L : initialize pointer so compiler will be happy.
-   2017-08-09 Usher, Tracy L : Default is meant to be the standard peak finding
-   2017-08-09 Usher, Tracy L : Clean up the fhicl parameters and make sure all definitions in the base fcl file
-   2017-08-09 Usher, Tracy L : Merge remote-tracking branch ‘origin/feature/usher_cluster3dupdates’ into develop
-   2017-08-09 Robert Sulej : and function checking if two wire drift coordinates point to the sam patch
-   2017-08-09 Robert Sulej : Merge branch ‘develop’ of ssh://cdcvs.fnal.gov/cvs/projects/larreco into develop
-   2017-08-09 Robert Sulej : add function checking if wire drift coordinates point to the recently processed patch
-   2017-08-08 Andrea Scarpelli : Fixed bugs with recob::TrackHitMeta::Dx()
-   2017-08-08 Usher, Tracy L : Merge branch ‘develop’ into feature/usher_cluster3dupdates
-   2017-08-08 Usher, Tracy L : Default run mode is for only one hit collection (work in progress here)
-   2017-08-04 Yun-Tse Tsai : Merge branch ‘feature/yuntse_calo_fix’ into develop
-   2017-08-04 Christoph Alt : added an ADC sum threshold to the raw hit finder (before fitting)
-   2017-08-04 Christoph Alt : added an ADC sum threshold to the raw hit finder (before fitting)
-   2017-07-30 Yun-Tse Tsai : correct the calculation on electron drift time
-   2017-07-27 Usher, Tracy L : Merge branch ‘develop’ into feature/usher_cluster3dupdates
-   2017-07-22 Usher, Tracy L : Turn of cout output when encountering an infinite chi-square…
-   2017-07-22 Usher, Tracy L : Set so the filtered hits go to the standard “gaushit” hit collection and ALL hits go to the “all hits” instance of the hit collection
-   2017-07-20 Usher, Tracy L : Merge branch ‘master’ into feature/usher_cluster3dupdates
-   2017-07-20 Usher, Tracy L : Merge branch ‘feature/usher_cluster3dupdates’ of ssh://cdcvs.fnal.gov/cvs/projects/larreco into feature/usher_cluster3dupdates
-   2017-07-20 Usher, Tracy L : Set up two output collections for hit finding, handle “infinite chi-square” gracefully, improvements to peak finding and fitting
-   2017-07-17 Usher, Tracy L : Don’t forget tools
-   2017-07-17 Usher, Tracy L : Fix breaking geometry changes
-   2017-07-17 Usher, Tracy L : Merge branch ‘develop’ into feature/usher_cluster3dupdates
-   2017-06-14 Usher, Tracy L : Merge branch ‘master’ into feature/usher_cluster3dupdates
-   2017-06-03 Usher, Tracy L : Add tool subfolder
-   2017-06-03 Usher, Tracy L : Convert to tool usage
-   2017-06-03 Usher, Tracy L : Move key hit finding functions into tools, introduce new peak finder (based on derivatives)
-   2017-06-03 Usher, Tracy L : Formatting to improve readability
-   2017-05-18 Usher, Tracy L : Merge branch ‘master’ into feature/usher_cluster3dupdates
-   2017-05-10 Usher, Tracy L : Merge branch ‘develop’ into feature/usher_cluster3dupdates
-   2017-05-04 Usher, Tracy L : Merge branch ‘develop’ into feature/usher_cluster3dupdates
-   2017-05-04 Usher, Tracy L : updating to try to make work…
-   2017-05-04 Usher, Tracy L : More handling of multiple TPC’s
-   2017-04-28 Usher, Tracy L : Reconcile the view/plane interchange problem - first step to generalizing to multiple cryostats and tpc’s
-   2017-04-26 Usher, Tracy L : Fixes for icarus
-   2017-04-26 Usher, Tracy L : Merge commit ‘94dffb6e02e025085cb0eb0cb894fb86adb18393’ into feature/usher_cluster3dupdates
-   2017-04-17 Usher, Tracy L : Merge branch ‘develop’ into feature/usher_cluster3dupdates
-   2017-04-08 Usher, Tracy L : Merge branch ‘master’ into feature/usher_cluster3dupdates
-   2017-04-08 Usher, Tracy L : Protection for missing vertices
-   2017-04-08 Usher, Tracy L : Add reference to eigen package
-   2017-03-27 Usher, Tracy L : Merge branch ‘develop’ into feature/usher_cluster3dupdates
-   2017-03-03 Usher, Tracy L : Merge branch ‘develop’ into feature/usher_cluster3dupdates
-   2017-02-23 Usher, Tracy L : Merge branch ‘develop’ into feature/usher_cluster3dupdates
-   2017-02-09 Usher, Tracy L : Merge branch ‘master’ into feature/usher_cluster3dupdates
-   2017-02-03 Usher, Tracy L : Merge branch ‘master’ into feature/usher_cluster3dupdates
-   2017-01-28 Usher, Tracy L : Merge commit ‘000f30d2356c5c7a6ecc39e822418a750ccd4db9’ into feature/usher_cluster3dupdates
-   2017-01-28 Usher, Tracy L : Trial multi gaussians for long pulses, fix to prevent a category of negative charge hits
-   2017-01-20 Usher, Tracy L : Merge branch ‘master’ into feature/usher_cluster3dupdates
-   2017-01-19 Usher, Tracy L : Check for input buffer size, can be removed… (should be removed?)
-   2017-01-09 Usher, Tracy L : Merge branch ‘master’ into feature/usher_cluster3dupdates
-   2017-01-08 Usher, Tracy L : Some formatting changes, cleanup of dead code, tweaks to method…
-   2016-12-30 Usher, Tracy L : Merge commit ‘1d2c27af157039ae75ed49fbcfe78ff7e8067927’ into feature/usher_cluster3dupdates
-   2016-12-30 Usher, Tracy L : Development oriented diagnostic changes
-   2016-12-21 Usher, Tracy L : Looking at how to better use PCA for breaking clusters
-   2016-12-21 Usher, Tracy L : Merge commit ‘066961e3a456cbf1c16ec6172c262c3087fe1a81’ into feature/usher_cluster3dupdates
-   2016-12-17 Usher, Tracy L : Merge branch ‘develop’ into feature/usher_cluster3dupdates
-   2016-12-17 Usher, Tracy L : Work in progress for clustering refinement
-   2016-12-12 Usher, Tracy L : Change peak height and width calculation for case of single large peak. Remove a cut that was taking out small peak heights, originally aimed at now non existent problem.
-   2016-12-02 Usher, Tracy L : Merge branch ‘develop’ into feature/usher_cluster3dupdates
-   2016-12-02 Usher, Tracy L : Quick algorithm to remove ambiguous hits, more updates on handling of clusters
-   2016-12-02 Usher, Tracy L : Use declared bit rather than assumed bit
-   2016-12-02 Usher, Tracy L : Output the path finding time at the end of the “produce” method
-   2016-11-23 Usher, Tracy L : Merge branch ‘develop’ into feature/usher_cluster3dupdates
-   2016-11-23 Usher, Tracy L : include dependency on eigen package
-   2016-11-23 Usher, Tracy L : Changes to keep pace with development, also include output of new “Edge” data product (for my use in the event display)
-   2016-11-23 Usher, Tracy L : Updates to keep pace with external changes - no change in code/performance
-   2016-11-23 Usher, Tracy L : Tag 2D hits by their usage in 3D hits
-   2016-11-23 Usher, Tracy L : Include new pathfinding algorithm based on A\* algorithm to find tracks in clusters
-   2016-11-23 Usher, Tracy L : Calculate PCA using the eigen package and remove dependency on root
-   2016-11-23 Usher, Tracy L : add a dependency to the new eigen library included in larsoft
-   2016-11-03 Usher, Tracy L : Merge commit ‘823575ffa9e392c7743bcf8585eb8043d6aae02d’ into feature/usher_cluster3dupdates
-   2016-11-03 Usher, Tracy L : Merge branch ‘master’ into feature/usher_cluster3dupdates
-   2016-11-03 Usher, Tracy L : Change what was a boolean variable to be really boolean
-   2016-11-03 Usher, Tracy L : Switch to use MST for clustering for testing
-   2016-11-03 Usher, Tracy L : Relatively minor updates to methods for selecting 3D hits
-   2016-11-03 Usher, Tracy L : Weight calculation of PCA with charge from the collection plane hit
-   2016-11-03 Usher, Tracy L : Formatting cleanup
-   2016-11-03 Usher, Tracy L : New clustering algorithm using a minimum spanning tree approach - initial implementation with still lots of debugging stuff, will clean before merging into development
-   2016-10-20 Usher, Tracy L : Keeping fcl files up to date with underlying changes to Cluster3D
-   2016-10-20 Usher, Tracy L : Revamped to reflect changes in 3D hit construction and new clustering module.
-   2016-10-20 Usher, Tracy L : Mostly minor changes in formatting… try to separate out code for charge calculation to make more clear
-   2016-10-20 Usher, Tracy L : Updates to accommodate a change in the way 3D hits keep track of associated 2D hits
-   2016-10-20 Usher, Tracy L : Remove the code to build 3D points (moved to separate module) and then bring in the remaining clustering code that had been separated into the cluster3d module. Goal is to have a complete clustering algorithm in one algorithm/module (which and then be interchanged).
-   2016-10-20 Usher, Tracy L : Separate the construction of 3D hits from the clustering algorithm

larsim v06_29_00
----------------------------------------

-   2017-08-09 Lynn Garren : larsim v06_29_00 for larsoft v06_46_00
-   2017-08-08 Gianluca Petrillo : Reformatted TextFileGen documentation to be exposed to Doxygen.
-   2017-08-07 Lucas Mendes Santos : Merge branch ‘feature/dump_opdetbacktrackerrecords’ into develop
-   2017-08-07 Lucas Mendes Santos : Merge branch ‘develop’ of ssh://cdcvs.fnal.gov/cvs/projects/larsim into feature/dump_opdetbacktrackerrecords
-   2017-08-07 Lucas Mendes Santos : New OpDetBacktrackerRecord Dumper, did some corrections in comments and changed the author name From Gianluca to myself
-   2017-08-07 Jason Stock : Restoring bug fix removed by commit 13f7f1bf. This should also address LArSoft Issue [\#17124](/redmine/issues/17124 "Bug: PhotonBacktracking to track 0. (Closed)").
-   2017-08-06 Lucas Mendes Santos : Creation of a OpDetBacktrackerRecords Dumper
-   2017-08-06 Lucas Mendes Santos : Creation of a OpDetBacktrackerRecords Dumper
-   2017-08-06 Jason Stock : Changing ides to sdps in a couple places for correctness and consistency.

larevt v06_15_04
----------------------------------------

-   2017-08-09 Lynn Garren : larevt v06_15_04 for larsoft v06_46_00

lardata v06_26_00
------------------------------------------

-   2017-08-09 Lynn Garren : lardata v06_26_00 for larsoft v06_46_00
-   2017-08-08 Usher, Tracy L : Merge branch ‘develop’ into feature/usher_cluster3dupdates
-   2017-08-08 Gianluca Petrillo : Fixed all reasonable Doxygen warnings in lardata.
-   2017-07-27 Usher, Tracy L : Merge branch ‘master’ into feature/usher_cluster3dupdates
-   2017-07-20 Usher, Tracy L : Merge branch ‘master’ into feature/usher_cluster3dupdates
-   2017-07-17 Usher, Tracy L : Merge branch ‘master’ into feature/usher_cluster3dupdates
-   2017-07-17 Usher, Tracy L : Include the instance when outputting hits
-   2017-06-14 Usher, Tracy L : Merge branch ‘master’ into feature/usher_cluster3dupdates
-   2017-05-18 Usher, Tracy L : Merge branch ‘master’ into feature/usher_cluster3dupdates
-   2017-05-04 Usher, Tracy L : Merge branch ‘feature/usher_cluster3dupdates’ of ssh://cdcvs.fnal.gov/cvs/projects/lardata into feature/usher_cluster3dupdates
-   2017-05-04 Usher, Tracy L : Updates to enable multi-TPC running
-   2017-05-04 Usher, Tracy L : Merge branch ‘master’ into feature/usher_cluster3dupdates
-   2017-04-26 Usher, Tracy L : Merge branch ‘develop’ into feature/usher_cluster3dupdates
-   2017-04-17 Usher, Tracy L : Merge branch ‘master’ into feature/usher_cluster3dupdates
-   2017-04-08 Usher, Tracy L : Merge branch ‘develop’ into feature/usher_cluster3dupdates
-   2017-03-27 Usher, Tracy L : Merge branch ‘develop’ into feature/usher_cluster3dupdates
-   2017-03-03 Usher, Tracy L : Merge branch ‘master’ into feature/usher_cluster3dupdates
-   2017-02-23 Usher, Tracy L : Merge branch ‘master’ into feature/usher_cluster3dupdates
-   2017-02-09 Usher, Tracy L : Merge branch ‘develop’ into feature/usher_cluster3dupdates
-   2017-02-03 Usher, Tracy L : Merge branch ‘master’ into feature/usher_cluster3dupdates
-   2017-01-28 Usher, Tracy L : Merge commit ‘53f0c583c28e51a21e97e69807794e4b29aab2c4’ into feature/usher_cluster3dupdates
-   2017-01-20 Usher, Tracy L : Merge branch ‘master’ into feature/usher_cluster3dupdates
-   2017-01-19 Usher, Tracy L : Merge branch ‘develop’ into feature/usher_cluster3dupdates
-   2017-01-19 Usher, Tracy L : There is a special case where roundoff error can cause a slight negative value here… replace it with zero and move on.
-   2017-01-09 Usher, Tracy L : Merge branch ‘master’ into feature/usher_cluster3dupdates
-   2016-12-30 Usher, Tracy L : Merge commit ‘35996323c2e38f2c0277df53cb3344ea55f81aa7’ into feature/usher_cluster3dupdates
-   2016-12-30 Usher, Tracy L : Testing hit errors
-   2016-12-17 Usher, Tracy L : Merge branch ‘master’ into feature/usher_cluster3dupdates
-   2016-12-17 Usher, Tracy L : Keep track of the maximum and minimum overlaps for 3 hit space points
-   2016-12-02 Usher, Tracy L : Merge branch ‘master’ into feature/usher_cluster3dupdates
-   2016-12-02 Usher, Tracy L : Add elements to candidate cluster object
-   2016-11-23 Usher, Tracy L : Merge branch ‘master’ into feature/usher_cluster3dupdates
-   2016-11-23 Usher, Tracy L : Updating base 3D clustering reco objects to include development of path finding algorithms.
-   2016-11-03 Usher, Tracy L : Merge branch ‘master’ into feature/usher_cluster3dupdates
-   2016-11-03 Usher, Tracy L : add more status bit definitions
-   2016-10-20 Usher, Tracy L : Make sure the wire id vector is properly initialized

larcore v06_14_00
------------------------------------------

-   2017-08-09 Lynn Garren : larcore v06_14_00 for larsoft v06_46_00
-   2017-08-04 Gianluca Petrillo : Removed detector name check from StandardGeometryHelper

larpandoracontent v03_07_03
--------------------------------------------------------------

larsoftobj v1_24_01
----------------------------------------------

-   2017-08-09 Lynn Garren : larsoftobj v1_24_01 for larsoft v06_46_00
-   2017-08-09 Lynn Garren : new mrb

lardataobj v1_18_01
----------------------------------------------

-   2017-08-09 Lynn Garren : lardataobj v1_18_01 for larsoft v06_46_00
-   2017-08-01 Gianluca Petrillo : Added a constructor to track flags object.
-   2017-08-01 Gianluca Petrillo : Cosmetic documentation fixes.

larcorealg v1_06_01
----------------------------------------------

-   2017-08-09 Lynn Garren : larcorealg v1_06_01 for larsoft v06_46_00
-   2017-08-02 Lynn Garren : larsoft v06_45_01
-   2017-08-01 Gianluca Petrillo : Improve error message in geometry unit tests.
-   2017-08-01 Gianluca Petrillo : Cosmetic fix to driftvolume_test.

larcoreobj v1_15_01
----------------------------------------------

larbatch v01_32_04
--------------------------------------------

-   2017-08-09 Lynn Garren : larbatch v01_32_04 for larsoft v06_46_00
-   2017-08-09 Herbert Greenlee : Allow more ifdh retries.

larutils v1_17_00
------------------------------------------

-   2017-08-09 Lynn Garren : larutils v1_17_00 for larsoft v06_46_00
-   2017-08-07 Herbert Greenlee : Add build scripts for larlite and larcv.
