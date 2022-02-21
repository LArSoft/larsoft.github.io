LArSoft v06_08_00 Release Notes
======================================================================

[list of LArSoft releases](LArSoft_release_list)
[Download instructions](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v06_08_00/larsoft-v06_08_00.html)

Purpose
--------------------

-   changes in develop since v06_07_00

New features
------------------------------

Bug fixes
------------------------

Updated dependencies
----------------------------------------------

Change List
============================

larsoft v06_08_00
------------------------------------------

-   2016-09-28 Lynn Garren : larsoft v06_08_00 for larsoft v06_08_00
-   2016-09-28 Lynn Garren : update product versions

lareventdisplay v06_01_06
----------------------------------------------------------

-   2016-09-28 Lynn Garren : lareventdisplay v06_01_06 for larsoft v06_08_00

larexamples v06_00_10
--------------------------------------------------

-   2016-09-28 Lynn Garren : larexamples v06_00_10 for larsoft v06_08_00

larpandora v06_01_01
------------------------------------------------

-   2016-09-28 Lynn Garren : larpandora v06_01_01 for larsoft v06_08_00

larana v06_01_07
----------------------------------------

-   2016-09-28 Lynn Garren : larana v06_01_07 for larsoft v06_08_00

larreco v06_06_00
------------------------------------------

-   2016-09-28 Lynn Garren : larreco v06_06_00 for larsoft v06_08_00
-   2016-09-28 Robert Sulej : testing vertex creation from cnn raw output
-   2016-09-28 Robert Sulej : Merge branch ‘develop’ of ssh://cdcvs.fnal.gov/cvs/projects/larreco into develop
-   2016-09-27 Bruce Baller : Add another MuonTag parameter. Clean up code. Replace HitMultipletPosition with utility routines. Improvements to FixTrajBegin for stopping tracks. Fix bug in CheckHiMultEndHits.
-   2016-09-27 Bruce Baller : Replace HitMultipletPosition with calls to utility routines
-   2016-09-27 Bruce Baller : Add utility routines
-   2016-09-27 Bruce Baller : Add utility routines to find position and RMS of hit collections in ticks and in time (WSE units)
-   2016-09-27 Bruce Baller : Define initial trajcluster settings - not optimized yet
-   2016-09-27 Bruce Baller : Added another MuonTag parameter
-   2016-09-26 Bruce Baller : Add failure output print statements
-   2016-09-26 Robert Sulej : Merge branch ‘develop’ of ssh://cdcvs.fnal.gov/cvs/projects/larreco into develop
-   2016-09-25 Bruce Baller : Merge branch ‘develop’ into feature/bb_TJWork
-   2016-09-25 Bruce Baller : Fix bug in GetHitMultiplet
-   2016-09-24 Bruce Baller : Fix bug in GetHitMultiplet
-   2016-09-24 Bruce Baller : Merge branch ‘develop’ into feature/bb_TJWork
-   2016-09-24 Bruce Baller : Replace LAStep with MaxAngleRange and AngleRanges. Rename DebugHit to DebugTick.
-   2016-09-24 Bruce Baller : Replace LAStep with fMaxAngleRnge and fAngleRanges. Add fAveHitRMS calculation.
-   2016-09-24 Bruce Baller : Replace fLAStep with fAngleRanges, fMaxAngleRange. Set prt using debug.Hit instead of testing plane, wire, time. Replace LA stepping code in AddHits with AddLAHits. Improvements in DefineHitPos and EndMerge. Changed min length cut in GottaKink.
-   2016-09-24 Bruce Baller : Add TPHitsRMS and HitsRMS.
-   2016-09-24 Bruce Baller : Fix bug in MoveTPToWire. Add quality check in MCSMom. Add TPHitsRMS and HitsRMS
-   2016-09-24 Bruce Baller : Add debug.Hit
-   2016-09-24 Bruce Baller : Remove muon, deltaray and kinkang
-   2016-09-24 Bruce Baller : Remove muon and deltaray
-   2016-09-23 Robert Sulej : start module for cnn-based decay tagging
-   2016-09-23 Robert Sulej : add validation of fhicl params
-   2016-09-23 Robert Sulej : add validation of fhicl params
-   2016-09-23 Robert Sulej : add brief description on the top

larsim v06_03_06
----------------------------------------

-   2016-09-28 Lynn Garren : larsim v06_03_06 for larsoft v06_08_00

larevt v06_02_02
----------------------------------------

-   2016-09-28 Lynn Garren : larevt v06_02_02 for larsoft v06_08_00

lardata v06_06_00
------------------------------------------

-   2016-09-28 Lynn Garren : lardata v06_06_00 for larsoft v06_08_00
-   2016-09-28 Gianluca Petrillo : Attempt to fix CalorimetryAlg::reconfigure() problem
-   2016-09-28 Robert Sulej : Merge branch ‘develop’ of ssh://cdcvs.fnal.gov/cvs/projects/lardata into develop
-   2016-09-27 Gianluca Petrillo : Merge branch ‘feature/gp_RecoBaseDumpers’ into develop
-   2016-09-27 Gianluca Petrillo : Merge remote-tracking branch ‘origin/develop’ into feature/gp_RecoBaseDumpers
-   2016-09-26 Robert Sulej : Merge branch ‘develop’ of ssh://cdcvs.fnal.gov/cvs/projects/lardata into develop
-   2016-09-23 Robert Sulej : add validation of fhicl parameters
-   2016-09-08 Gianluca Petrillo : DumpPFParticle updated to use configuration validation.
-   2016-09-07 Gianluca Petrillo : DumpPFParticles can create GraphViz DOT graphs
-   2016-09-07 Gianluca Petrillo : DumpPFParticles is better protected from cyclical graphs

larcore v06_02_02
------------------------------------------

larsoftobj v1_07_00
----------------------------------------------

lardataobj v1_07_00
----------------------------------------------

larcoreobj v1_05_00
----------------------------------------------

larbatch v01_23_06
--------------------------------------------

larutils v1_08_06
------------------------------------------

-   2016-09-28 Lynn Garren : larutils v1_08_06 for larsoft v06_08_00
-   2016-09-23 Tingjun Yang : updates for argoneut
-   2016-09-22 Lynn Garren : nubase
-   2016-09-22 Lynn Garren : add s42
-   2016-09-09 Lynn Garren : Merge tag ‘v1_08_05’ into develop
