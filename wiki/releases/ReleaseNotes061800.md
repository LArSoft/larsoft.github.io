LArSoft v06_18_00 Release Notes
======================================================================

-   **Table of contents**
-   [LArSoft v06_18_00 Release Notes](#LArSoft-v06_18_00-Release-Notes)
    -   [Purpose](#Purpose)
    -   [New features](#New-features)
    -   [Bug fixes](#Bug-fixes)
    -   [Updated dependencies](#Updated-dependencies)
-   [Change List](#Change-List)
    -   [larsoft v06_18_00](#larsoft-v06_18_00)
    -   [lareventdisplay v06_02_05](#lareventdisplay-v06_02_05)
    -   [larexamples v06_01_06](#larexamples-v06_01_06)
    -   [larpandora v06_04_01](#larpandora-v06_04_01)
    -   [larwirecell v06_00_03](#larwirecell-v06_00_03)
    -   [larana v06_03_09](#larana-v06_03_09)
    -   [larreco v06_13_00](#larreco-v06_13_00)
    -   [larsim v06_10_00](#larsim-v06_10_00)
    -   [larevt v06_07_01](#larevt-v06_07_01)
    -   [lardata v06_11_00](#lardata-v06_11_00)
    -   [larcore v06_05_01](#larcore-v06_05_01)
    -   [larsoftobj v1_08_02](#larsoftobj-v1_08_02)
    -   [lardataobj v1_08_00](#lardataobj-v1_08_00)
    -   [larcoreobj v1_06_01](#larcoreobj-v1_06_01)
    -   [larbatch v01_26_00](#larbatch-v01_26_00)
    -   [larutils v1_11_00](#larutils-v1_11_00)

[list of LArSoft releases](LArSoft_release_list)
Download instructions for [larsoft v06_18_00](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v06_18_00/larsoft-v06_18_00.html)
Download instructions for [just larsoftobj v1_08_02](http://scisoft.fnal.gov/scisoft/bundles/larsoftobj/v1_08_02/larsoftobj-v1_08_02.html)

Purpose
--------------------

-   changes to develop since v06_17_00
-   approved feature branches

New features
------------------------------

-   larreco, uboonecode feature/cerati_kffitupdates
    -   updates to the track fitter
-   lardata feature/ss_ranges and range ups product
-   feature/gp_Issue14138 branches in lardata and larreco [redmine issue 14138](https://cdcvs.fnal.gov/redmine/issues/14138)

Bug fixes
------------------------

-   LArG4 MCParticle hierarchy information [redmine issue 14843](https://cdcvs.fnal.gov/redmine/issues/14843)

Updated dependencies
----------------------------------------------

||
|Product|Version|Qualifiers|Notes|
|range|v3_0_0|||

Change List
============================

larsoft v06_18_00
------------------------------------------

-   2016-12-15 Lynn Garren : add range ups product
-   2016-12-15 Lynn Garren : larsoft v06_18_00 for larsoft v06_18_00
-   2016-12-15 Lynn Garren : remove Mavericks
-   2016-12-15 Lynn Garren : update product versions
-   2016-12-14 Lynn Garren : update dependency database

lareventdisplay v06_02_05
----------------------------------------------------------

-   2016-12-15 Lynn Garren : lareventdisplay v06_02_05 for larsoft v06_18_00

larexamples v06_01_06
--------------------------------------------------

-   2016-12-15 Lynn Garren : larexamples v06_01_06 for larsoft v06_18_00

larpandora v06_04_01
------------------------------------------------

-   2016-12-15 Lynn Garren : larpandora v06_04_01 for larsoft v06_18_00

larwirecell v06_00_03
--------------------------------------------------

-   2016-12-15 Lynn Garren : larwirecell v06_00_03 for larsoft v06_18_00
-   2016-12-14 Lynn Garren : a bit of cleanup

larana v06_03_09
----------------------------------------

-   2016-12-15 Lynn Garren : larana v06_03_09 for larsoft v06_18_00

larreco v06_13_00
------------------------------------------

-   2016-12-15 Lynn Garren : larreco v06_13_00 for larsoft v06_18_00
-   2016-12-14 Lynn Garren : Merge branch ‘feature/gp_Issue14138’ into release/v06_18_00
-   2016-12-14 Lynn Garren : Merge branch ‘feature/cerati_kffitupdates’ into release/v06_18_00
-   2016-12-13 Gianluca Petrillo : Dumper modules moved to lardata.
-   2016-12-13 Giuseppe Cerati : fix indent
-   2016-12-13 Giuseppe Cerati : remove use of KHitContainerWireX, change sorting option, allow dropping hits with negative propagation distance
-   2016-12-13 Usher, Tracy L : Change how “long” hits are returned in the event stream which should make them more accurately reflect the pulse trains, also change fit retry fcl variable to be a bool (since that is how it issued).
-   2016-12-10 Robert Sulej : reject failed fit to track in fit-only mode (to be checked when this happens, some cases may still be recovered)
-   2016-12-09 Giuseppe Cerati : make sure hit order from pattern recognition is preserved
-   2016-12-09 Giuseppe Cerati : Merge branch ‘develop’ into feature/cerati_kffitupdates
-   2016-12-09 Robert Sulej : Merge branch ‘develop’ of ssh://cdcvs.fnal.gov/cvs/projects/larreco into develop
-   2016-12-09 Robert Sulej : fix checking topology of track end parts in tracks crossing multiple tpc’s
-   2016-12-06 Giuseppe Cerati : default is to assume pid=13
-   2016-12-06 Giuseppe Cerati : minor fixes
-   2016-12-02 Giuseppe Cerati : a bunch of new features for the kalman track fit

larsim v06_10_00
----------------------------------------

-   2016-12-15 Lynn Garren : larsim v06_10_00 for larsoft v06_18_00
-   2016-12-15 Gianluca Petrillo : Added inline comments on top of John’s changes in the previous commit.
-   2016-12-15 John Marshall : Add track id offset to parent track id (in addition to the particle’s own track id).
-   2016-12-13 Jason Stock : Reverting check for Photon Visibities at Alex’s request to previous (If null ptr, silently do nothing).
-   2016-12-13 Gianluca Petrillo : OpFastScintillation now throws an exception when working out of the range of the photon library.
-   2016-12-13 Jason Stock : Merge branch ‘JStock_PhotonBackTracker’ into develop
-   2016-12-12 Libo Jiang : remove larsim/EventGenerator/GENIE/genie_default.fcl and genie_default_mec.fcl
-   2016-12-12 Jason Stock : Changed a name in OpFastScintillation for better description.
-   2016-12-11 Jason Stock : Correcting a problem with the OpDetBacktrackerRecord Map
-   2016-12-10 Jason Stock : Updating PhotonBackTracker with changes for memory leaks.
-   2016-12-10 Jason Stock : commenting out the backtracker Tested on 50 muon events.
-   2016-12-09 Tingjun Yang : Fix memorgy leak. Problem was fixed by Gianluca.

larevt v06_07_01
----------------------------------------

-   2016-12-15 Lynn Garren : larevt v06_07_01 for larsoft v06_18_00

lardata v06_11_00
------------------------------------------

-   2016-12-15 Lynn Garren : lardata v06_11_00 for larsoft v06_18_00
-   2016-12-15 Lynn Garren : fix link list
-   2016-12-14 Lynn Garren : Merge branch ‘feature/gp_Issue14138’ into release/v06_18_00
-   2016-12-14 Lynn Garren : adding range
-   2016-12-13 Gianluca Petrillo : DumpTracks module ported from larreco
-   2016-12-14 Saba Sehirsh : removed unused assn typedef
-   2016-12-13 Saba Sehirsh : Merge branch ‘develop’ into feature/ss_ranges
-   2016-12-13 Saba Sehirsh : tests added for ForEachAssociatedGroup
-   2016-12-13 Gianluca Petrillo : DumpClusters module ported from larreco
-   2016-12-13 Gianluca Petrillo : Removed superfluous linked libraries.
-   2016-12-07 Saba Sehirsh : Merge branch ‘develop’ into feature/ss_ranges
-   2016-11-19 Saba Sehirsh : commit as a result of merge with develop
-   2016-09-25 Saba Sehirsh : Merge branch ‘develop’ into feature/ss_ranges
-   2016-09-25 Saba Sehirsh : Added documentation and ranges namespace
-   2016-09-23 Saba Sehirsh : removed the namespae ranges for clarity
-   2016-08-25 Saba Sehirsh : fixed the header

larcore v06_05_01
------------------------------------------

-   2016-12-15 Lynn Garren : larcore v06_05_01 for larsoft v06_18_00
-   2016-12-08 Lynn Garren : larsoft v06_17_00
-   2016-12-08 Gianluca Petrillo : Added a set of options for the test environment itself.

larsoftobj v1_08_02
----------------------------------------------

lardataobj v1_08_00
----------------------------------------------

larcoreobj v1_06_01
----------------------------------------------

larbatch v01_26_00
--------------------------------------------

-   2016-12-15 Lynn Garren : larbatch v01_26_00 for larsoft v06_18_00
-   2016-12-14 Herbert Greenlee : Quick check optimizations.
-   2016-12-13 Herbert Greenlee : Merge branch ‘feature/greenlee_swizzle_validate_in_job’ into develop
-   2016-12-13 Herbert Greenlee : Revert “validate_in_job translates subdirectories”
-   2016-12-13 Herbert Greenlee : Merge branch ‘develop’ of ssh://cdcvs.fnal.gov/cvs/projects/larbatch into develop
-   2016-12-13 Herbert Greenlee : Don’t check ana files twice.
-   2016-12-13 yuntse : Update error message.
-   2016-12-12 yuntse : Don’t fail quickcheck because of no analysis files.
-   2016-12-12 Herbert Greenlee : Validate each subrun separately.
-   2016-12-12 Herbert Greenlee : Do separate validations for each subrun.
-   2016-12-12 Herbert Greenlee : Mismatched parentheses.
-   2016-12-12 Herbert Greenlee : Revert valdiate_in_job.py to not parse “@s” constructs.
-   2016-12-12 Herbert Greenlee : Fixes for swizzling validate in job.
-   2016-12-12 Herbert Greenlee : Add missing commit.
-   2016-12-12 Joel Mousseau : Merge branch ‘develop’ of ssh://cdcvs.fnal.gov/cvs/projects/larbatch into develop
-   2016-12-12 Herbert Greenlee : Build tarball in tmp directory.
-   2016-12-12 Joel Mousseau : validate_in_job translates subdirectories
-   2016-12-09 Herbert Greenlee : Aggregate filesana.list. Store tarball in workdir.
-   2016-12-09 Herbert Greenlee : Unroll tarballs in work directory.
-   2016-12-09 Herbert Greenlee : Add printout from quick check result.
-   2016-12-09 Herbert Greenlee : Skip _stop directory during quick check.
-   2016-12-09 Herbert Greenlee : Add more support validating on worker with old production releases.
-   2016-12-09 Herbert Greenlee : Remove unneeded imports.
-   2016-12-09 Herbert Greenlee : Move chmod’s.
-   2016-12-09 Herbert Greenlee : Add chmods.
-   2016-12-09 Herbert Greenlee : Maintain parentage: fcl name can be unicode.
-   2016-12-08 Herbert Greenlee : Add copy helper scripts to batch worker.
-   2016-12-08 yuntse : Merge branch ‘develop’ of ssh://cdcvs.fnal.gov/cvs/projects/larbatch into develop
-   2016-12-08 yuntse : Add new interface for quick check.
-   2016-12-08 yuntse : Initialize variable MAINTAIN_PARENTAGE.

larutils v1_11_00
------------------------------------------
