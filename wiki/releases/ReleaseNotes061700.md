LArSoft v06_17_00 Release Notes
======================================================================

-   **Table of contents**
-   [LArSoft v06_17_00 Release Notes](#LArSoft-v06_17_00-Release-Notes)
    -   [Purpose](#Purpose)
    -   [New features](#New-features)
    -   [GENIE](#GENIE)
    -   [Bug fixes](#Bug-fixes)
    -   [Updated dependencies](#Updated-dependencies)
-   [Change List](#Change-List)
    -   [larsoft v06_17_00](#larsoft-v06_17_00)
    -   [lareventdisplay v06_02_04](#lareventdisplay-v06_02_04)
    -   [larexamples v06_01_05](#larexamples-v06_01_05)
    -   [larpandora v06_04_00](#larpandora-v06_04_00)
    -   [larwirecell](#larwirecell)
    -   [larana v06_03_08](#larana-v06_03_08)
    -   [larreco v06_12_01](#larreco-v06_12_01)
    -   [larsim v06_09_00](#larsim-v06_09_00)
    -   [larevt v06_07_00](#larevt-v06_07_00)
    -   [lardata v06_10_01](#lardata-v06_10_01)
    -   [larcore v06_05_00](#larcore-v06_05_00)
    -   [larsoftobj v1_08_02](#larsoftobj-v1_08_02)
    -   [lardataobj v1_08_00](#lardataobj-v1_08_00)
    -   [larcoreobj v1_06_01](#larcoreobj-v1_06_01)
    -   [larbatch v01_25_00](#larbatch-v01_25_00)
    -   [larutils v1_11_00](#larutils-v1_11_00)

[list of LArSoft releases](LArSoft_release_list)
Download instructions for [larsoft v06_17_00](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v06_17_00/larsoft-v06_17_00.html)
Download instructions for [just larsoftobj v1_08_02](http://scisoft.fnal.gov/scisoft/bundles/larsoftobj/v1_08_02/larsoftobj-v1_08_02.html)

Purpose
--------------------

-   changes to develop
-   approved feature branches
-   genie v2_12_2

New features
------------------------------

-   remove setup of genie_xsec and genie_phyopt from larsim
-   remove deprecated PlaneGeo::SignalType()
    -   larcore feature/gp_Issue14704 [redmine issue 14704](https://cdcvs.fnal.gov/redmine/issues/14704)
-   larsim, lardataobj feature/JStock_PhotonBackTracker
    -   also removes the deprecated UseParamaterization methods from the larsim optical simulation
-   larevt, uboonecode feature/eberly_asicDBI
    -   Add single-IoV service and provider base classes for retrieving electronics calibration information (gain, shaping time, etc.), it has generic implementations of the base classes, and updates the single-IoV database interface to be able to read the boolean type from postgresql databases. There are no breaking changes.
-   requested analyzer added to larpandora
-   larpandoracontent has changes related to performance monitoring

GENIE
----------------

In going from R-2_10_X to R-2_12_0, more values were added to an enum, but in the middle of the list rather than at the end.

Because of the way the information is stored (essentially indexed by this enum), this lead to a mis-match in values stored for weights to how they were interpreted. The basic physics of the event is not affected, only the ability to reweight.

GENIE R-2_12_2 restores the order to the older values and puts the new ones at the end.

Bug fixes
------------------------

Updated dependencies
----------------------------------------------

||
|Product|Version|Qualifiers|Notes|
|nutools|v2_09_00|e10|[NuTools_Release_Notes](https://cdcvs.fnal.gov/redmine/projects/nutools/wiki/NuTools_Release_Notes#nutools-v2_09_00)|
|genie|v2_12_2|e10:r6||
|dk2nu|v01_04_01g|e10:r6||

Change List
============================

larsoft v06_17_00
------------------------------------------

-   2016-12-08 Lynn Garren : larsoft v06_17_00 for larsoft v06_17_00
-   2016-12-08 Lynn Garren : updates for nutools and genie
-   2016-12-08 Lynn Garren : update product versions
-   2016-12-05 Lynn Garren : add bin/python/SerialSubstitution.py to PYTHONPATH

lareventdisplay v06_02_04
----------------------------------------------------------

-   2016-12-08 Lynn Garren : lareventdisplay v06_02_04 for larsoft v06_17_00

larexamples v06_01_05
--------------------------------------------------

-   2016-12-08 Lynn Garren : larexamples v06_01_05 for larsoft v06_17_00

larpandora v06_04_00
------------------------------------------------

-   2016-12-08 Lynn Garren : larpandora v06_04_00 for larsoft v06_17_00
-   2016-12-06 John Marshall : Merge branch ‘updates’ into develop
-   2016-12-06 John Marshall : Cosmetic.
-   2016-12-06 John Marshall : Merge branch ‘updates’ into develop
-   2016-12-06 John Marshall : Add option to only consider mc particles if they are induced by beam neutrinos.
-   2016-12-06 John Marshall : Add print out of some mc neutrino and reco neutrino properties.
-   2016-12-06 John Marshall : Update particle matching mechanics.
-   2016-07-15 John Marshall : Work in Progress, but hopefully already of use to those interested in reproducing Pandora pattern-recognition validation in LArSoft. Remove TTree for now; still some TODOs.
-   2016-04-29 John Marshall : Basic hit matching and printing mechanics all now present.
-   2016-04-29 John Marshall : First basic mechanics for PFParticleValidation module.
-   2016-12-06 John Marshall : Merge branch ‘updates’ into develop
-   2016-12-06 John Marshall : PandoraSettings files in LArPandoraInterface/scripts are now for use with generic detector models at DUNE; those in MicroBooNEPandora/scripts are for MicroBooNE usage.

larwirecell
----------------------------

-   2016-12-08 Lynn Garren : larwirecell for larsoft v06_17_00
-   2016-12-08 Lynn Garren : pick up larcoreobj headers

larana v06_03_08
----------------------------------------

-   2016-12-08 Lynn Garren : larana v06_03_08 for larsoft v06_17_00
-   2016-11-30 Usher, Tracy L : Modify logic so that a particle that “enters and exits” at the same fiducial volume boundary is not tagged as through going
-   2016-11-30 Usher, Tracy L : Merge branch ‘develop’ of ssh://cdcvs.fnal.gov/cvs/projects/larana into develop
-   2016-11-29 Usher, Tracy L : Add fcl controllable parameter to reject PFParticle hierarchies if more than n hits “out of time”

larreco v06_12_01
------------------------------------------

-   2016-12-08 Lynn Garren : larreco v06_12_01 for larsoft v06_17_00
-   2016-12-07 Robert Sulej : put hit info in the structure together with net output
-   2016-12-07 Robert Sulej : do not waist time in reloading wire planes data
-   2016-12-07 Robert Sulej : minor simplification in 2d conv loops
-   2016-12-04 Dorota Stefan : removed unnecessary variables
-   2016-12-03 Tingjun Yang : Check if track range is valid before calculating the momentum.
-   2016-12-03 Tingjun Yang : Merge branch ‘develop’ of ssh://cdcvs.fnal.gov/cvs/projects/larreco into develop
-   2016-12-03 Tingjun Yang : Change the order of checking empty trajectory so the ClusterIndex is consistent.
-   2016-12-01 Mike Wallbank : small bug fix which occassionally caused showering to crash
-   2016-11-30 Lynn Garren : larsoft v06_16_00
-   2016-11-30 Chao Zhang : minor correct leaf name
-   2016-11-29 Tingjun Yang : Merge branch ‘develop’ of ssh://cdcvs.fnal.gov/cvs/projects/larreco into develop
-   2016-11-22 Tingjun Yang : Merge branch ‘feature/tjyang_TJWork’ into develop
-   2016-11-22 Tingjun Yang : Merge branch ‘develop’ of ssh://cdcvs.fnal.gov/cvs/projects/larreco into develop
-   2016-11-22 Tingjun Yang : Merge branch ‘develop’ of ssh://cdcvs.fnal.gov/cvs/projects/larreco into feature/tjyang_TJWork

larsim v06_09_00
----------------------------------------

-   2016-12-08 Lynn Garren : larsim v06_09_00 for larsoft v06_17_00
-   2016-12-08 Lynn Garren : Merge branch ‘feature/JStock_PhotonBackTracker’ into release/v06_17_00
-   2016-12-07 Lynn Garren : remove genie_xsec and genie_phyopt
-   2016-12-07 Libo Jiang : replaced the genie_default by genie_default_mec.fcl
-   2016-12-01 Jason Stock : adding all changes in
-   2016-12-01 Jason Stock : Merging PhotonBackTracker in

larevt v06_07_00
----------------------------------------

-   2016-12-08 Lynn Garren : larevt v06_07_00 for larsoft v06_17_00
-   2016-12-08 Lynn Garren : Merge branch ‘feature/eberly_asicDBI’ into release/v06_17_00
-   2016-12-02 Brandon Eberly : Added support for retrieving boolean data from database, and storing booleans in CalibrationExtraInfo
-   2016-12-02 Brandon Eberly : Fixed some error messages
-   2016-11-29 Brandon Eberly : Electronics Calibrations Provider and Service

lardata v06_10_01
------------------------------------------

-   2016-12-08 Lynn Garren : lardata v06_10_01 for larsoft v06_17_00
-   2016-12-08 Lynn Garren : nutools v2_09_00

larcore v06_05_00
------------------------------------------

-   2016-12-08 Lynn Garren : larcore v06_05_00 for larsoft v06_17_00
-   2016-12-06 Gianluca Petrillo : Removed geo::PlaneGeo::SignalType() and geo::PlaneGeo::SetSignalType()

larsoftobj v1_08_02
----------------------------------------------

-   2016-12-08 Lynn Garren : larsoftobj v1_08_02 for larsoft v06_17_00

lardataobj v1_08_00
----------------------------------------------

-   2016-12-08 Lynn Garren : lardataobj v1_08_00 for larsoft v06_17_00
-   2016-12-08 Lynn Garren : lardataobj v1_08_00 for larsoft v06_17_00
-   2016-12-01 Jason Stock : adding OpDetBacktrackerRecord files
-   2016-12-01 Jason Stock : Merging in code for distibution.
-   2016-11-08 Gianluca Petrillo : Fixed documentation.

larcoreobj v1_06_01
----------------------------------------------

larbatch v01_25_00
--------------------------------------------

-   2016-12-08 Lynn Garren : larbatch v01_25_00 for larsoft v06_17_00
-   2016-12-08 Herbert Greenlee : Formatting.
-   2016-12-08 Herbert Greenlee : Formatting.
-   2016-12-07 yuntse : Turn off output from larbatch_posix, except when debug mode is enabled.
-   2016-12-07 Herbert Greenlee : Fixes for validate-on-node.
-   2016-12-06 Tingjun Yang : Do not reset event number for each subrun.
-   2016-12-06 yuntse : Add hang protection against reading dead directories in dCache.
-   2016-12-06 yuntse : Fix data_stream logic.
-   2016-12-05 Joel Mousseau : Fix a couple bugs. One major in validate_in_job which allows direct copy from worker nodes to fts. One minor in condor_lar which fixes an innocous error in maintain parentage
-   2016-12-05 Herbert Greenlee : Merge branch ‘develop’ of ssh://cdcvs.fnal.gov/cvs/projects/larbatch into develop
-   2016-12-05 Herbert Greenlee : Remove duplicate copies.
-   2016-12-01 Tingjun Yang : Fix textfile mode.

larutils v1_11_00
------------------------------------------
