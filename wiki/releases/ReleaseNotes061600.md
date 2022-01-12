LArSoft v06\_16\_00 Release Notes
======================================================================

-   **Table of contents**
-   [LArSoft v06\_16\_00 Release Notes](#LArSoft-v06_16_00-Release-Notes)
    -   [Purpose](#Purpose)
    -   [New features](#New-features)
    -   [Breaking changes](#Breaking-changes)
    -   [Updated dependencies](#Updated-dependencies)
-   [Change List](#Change-List)
    -   [larsoft v06\_16\_00](#larsoft-v06_16_00)
    -   [lareventdisplay v06\_02\_03](#lareventdisplay-v06_02_03)
    -   [larexamples v06\_01\_04](#larexamples-v06_01_04)
    -   [larpandora v06\_03\_02](#larpandora-v06_03_02)
    -   [larwirecell](#larwirecell)
    -   [larana v06\_03\_07](#larana-v06_03_07)
    -   [larreco v06\_12\_00](#larreco-v06_12_00)
    -   [larsim v06\_08\_00](#larsim-v06_08_00)
    -   [larevt v06\_06\_02](#larevt-v06_06_02)
    -   [lardata v06\_10\_00](#lardata-v06_10_00)
    -   [larcore v06\_04\_01](#larcore-v06_04_01)
    -   [larsoftobj v1\_08\_01](#larsoftobj-v1_08_01)
    -   [lardataobj v1\_07\_02](#lardataobj-v1_07_02)
    -   [larcoreobj v1\_06\_01](#larcoreobj-v1_06_01)
    -   [larbatch v01\_24\_02](#larbatch-v01_24_02)
    -   [larutils v1\_11\_00](#larutils-v1_11_00)

[list of LArSoft releases](LArSoft_release_list)
Download instructions for [larsoft v06\_16\_00](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v06_16_00/larsoft-v06_16_00.html)
Download instructions for [just larsoftobj v1\_08\_01](http://scisoft.fnal.gov/scisoft/bundles/larsoftobj/v1_08_01/larsoftobj-v1_08_01.html)

Purpose
--------------------

-   changes to develop
-   use nutools v2\_08\_00
-   merge approved feature branches

New features
------------------------------

-   larreco feature/bb\_TJWork
-   lardata feature/ss\_ptrmaker
-   lardata, larreco feature/tjyang\_TrackKalmanHitTrackHitMeta

Breaking changes
--------------------------------------

-   [LArSeedService from larsim replaced by NuRandomService from nutools](Breaking_Changes#LArSeedService-from-larsim-replaced-by-NuRandomService-from-nutools)
    -   required changes for argoneutcode, dunetpc, lariatsoft, and uboonecode in feature/lg\_use\_nutools\_2\_08
    -   or just use the UpdateToNuRandomService.py script

Updated dependencies
----------------------------------------------

||
|Product|Version|Qualifiers|Notes|
|nutools|v2\_08\_00|e10|[NuTools\_Release\_Notes](/redmine/projects/nutools/wiki/NuTools_Release_Notes#nutools-v2_08_00)|
|ifdhc\_config|v2\_0\_2|||
|mrb|v1\_08\_04||larsoft\_suite includes larwirecell|

Change List
============================

larsoft v06\_16\_00
------------------------------------------

-   2016-11-29 Lynn Garren : larsoft v06\_16\_00 for larsoft v06\_16\_00
-   2016-11-29 Lynn Garren : update product versions
-   2016-11-29 Lynn Garren : Merge branch ‘feature/lg\_use\_nutools\_2\_08’ into release/v06\_16\_00
-   2016-11-29 Lynn Garren : cetbuildtools v5\_06\_01
-   2016-11-29 Lynn Garren : mrb v1\_08\_04
-   2016-11-29 Lynn Garren : cetbuildtools v5\_06\_01 and cmake v3\_7\_0
-   2016-11-28 Lynn Garren : larsoft v06\_16\_00\_rc
-   2016-11-28 Lynn Garren : update dependency database
-   2016-11-28 Lynn Garren : update code to use NuRandomService
-   2016-11-28 Lynn Garren : latest cetbuildtools

lareventdisplay v06\_02\_03
----------------------------------------------------------

-   2016-11-29 Lynn Garren : lareventdisplay v06\_02\_03 for larsoft v06\_16\_00

larexamples v06\_01\_04
--------------------------------------------------

-   2016-11-29 Lynn Garren : larexamples v06\_01\_04 for larsoft v06\_16\_00

larpandora v06\_03\_02
------------------------------------------------

-   2016-11-29 Lynn Garren : larpandora v06\_03\_02 for larsoft v06\_16\_00

larwirecell
----------------------------

-   2016-11-29 Lynn Garren : larwirecell for larsoft v06\_16\_00

larana v06\_03\_07
----------------------------------------

-   2016-11-29 Lynn Garren : larana v06\_03\_07 for larsoft v06\_16\_00
-   2016-11-29 Lynn Garren : using NuRandomService

larreco v06\_12\_00
------------------------------------------

-   2016-11-29 Lynn Garren : larreco v06\_12\_00 for larsoft v06\_16\_00
-   2016-11-29 Lynn Garren : Merge branch ‘feature/tjyang\_TrackKalmanHitTrackHitMeta’ into release/v06\_16\_00
-   2016-11-29 Lynn Garren : Merge branch ‘feature/bb\_TJWork’ into release/v06\_16\_00
-   2016-11-29 Lynn Garren : Merge branch ‘feature/lg\_use\_nutools\_2\_08’ into release/v06\_16\_00
-   2016-11-29 Lynn Garren : nutools v2\_08\_00
-   2016-11-29 Bruce Baller : Comment out bad code.
-   2016-11-29 Bruce Baller : Fix logic error in MaskedHitsOK.
-   2016-11-29 Tingjun Yang : change MaxWireSkipNoSignal from 4 to 5.
-   2016-11-29 Bruce Baller : Add another version of FindUseHits for testing. Clean up code. Normalize AveChg to 1 WSE unit. Improve TJ end checking in EndMerge. Require a signal on every wire between candidate TJs in FindHammerVertices2. Add a variant of IsGhost. Add a cut in GottaKink.
-   2016-11-29 Bruce Baller : Add another version of FindUseHits for testing.
-   2016-11-29 Tingjun Yang : Merge branch ‘feature/tjyang\_TJWork’ into develop
-   2016-11-29 Tingjun Yang : fcl tuning from Bruce.
-   2016-11-28 Lynn Garren : Merge branch ‘develop’ into feature/lg\_use\_nutools\_2\_08
-   2016-11-28 Lynn Garren : larsoft v06\_16\_00\_rc
-   2016-11-28 Lynn Garren : using nutools v2\_08\_00
-   2016-11-28 Lynn Garren : latest cetbuildtools
-   2016-11-25 Mike Wallbank : Fix bug with global wire finding
-   2016-11-25 Robert Sulej : add hit adc to control output
-   2016-11-24 Robert Sulej : Merge branch ‘develop’ of ssh://cdcvs.fnal.gov/cvs/projects/larreco into develop
-   2016-11-24 Robert Sulej : remove cout
-   2016-11-24 Mike Wallbank : Fix a couple of bugs accidentally pushed into develop. Also improve the global wire finding and point projection methods in global wire space – they *should* be ok now\\!
-   2016-11-24 Robert Sulej : Merge branch ‘develop’ of ssh://cdcvs.fnal.gov/cvs/projects/larreco into develop
-   2016-11-24 Robert Sulej : adopt updates from Piotr to Keras models running
-   2016-11-23 Bruce Baller : Merge branch ‘feature/bb\_TJWork’ into develop
-   2016-11-23 Bruce Baller : Merge branch ‘feature/tjyang\_TJWork’ into feature/bb\_TJWork
-   2016-11-22 Tingjun Yang : Merge branch ‘develop’ of ssh://cdcvs.fnal.gov/cvs/projects/larreco into feature/tjyang\_TJWork
-   2016-11-22 Tingjun Yang : Revert “Merge remote-tracking branch ‘origin/feature/rnd\_PmaRefitter’ into develop”
-   2016-11-22 Tingjun Yang : Merge branch ‘feature/tjyang\_TJWork’ of ssh://cdcvs.fnal.gov/cvs/projects/larreco into feature/tjyang\_TJWork
-   2016-11-22 Bruce Baller : Merge remote-tracking branch ‘remotes/origin/feature/tjyang\_TJWork’ into feature/bb\_TJWork
-   2016-11-22 Tingjun Yang : Update argoneut\_trajclusteralg.
-   2016-11-22 Bruce Baller : Check for dead wires in FindCloseHits.
-   2016-11-22 Bruce Baller : Check for a vertex in a dead wire region in Find2DVertices.
-   2016-11-22 Tingjun Yang : Merge branch ‘feature/bb\_TJWork’ into feature/tjyang\_TJWork
-   2016-11-22 Tingjun Yang : Merge branch ‘feature/bb\_TJWork’ of ssh://cdcvs.fnal.gov/cvs/projects/larreco into feature/bb\_TJWork
-   2016-11-22 Bruce Baller : Fixed logic error in EndMerge. Improvements in MaskedHitsOK.
-   2016-11-22 Bruce Baller : Define ChargeCuts.
-   2016-11-21 Tingjun Yang : Delete obsolete fcl files.
-   2016-11-21 Tingjun Yang : Add TrackHitMeta to Track3DKalmanHit to save trajectory point index for each hit on track.
-   2016-11-21 Bruce Baller : Replace fChgPullCut with a vector. Improvements in FindHammerVertices2, MaskedHitsOK and UpdateTraj.
-   2016-11-21 Bruce Baller : Replace fChgPullCut with a vector.
-   2016-11-21 Bruce Baller : Change default ChgRMS
-   2016-11-21 Tingjun Yang : Remove StoreNPPlane from KGTrack::fillTrack.
-   2016-11-21 Tingjun Yang : Remove option StoreNPPlane so always store nonpreferred planes trajectory points.
-   2016-11-21 Bruce Baller : Merge branch ‘develop’ into feature/bb\_TJWork
-   2016-11-21 Bruce Baller : Comment out bad code in MergeAndStore. Improvements in FillGaps. Code cleanup.
-   2016-11-21 Bruce Baller : Change floats to doubles
-   2016-11-20 Tingjun Yang : Merge branch ‘develop’ of ssh://cdcvs.fnal.gov/cvs/projects/larreco into feature/tjyang\_TJWork
-   2016-11-19 Tingjun Yang : Merge branch ‘feature/bb\_TJWork’ into feature/tjyang\_TJWork
-   2016-11-19 Tingjun Yang : Merge branch ‘feature/bb\_TJWork’ of ssh://cdcvs.fnal.gov/cvs/projects/larreco into feature/bb\_TJWork
-   2016-11-19 Bruce Baller : Change fVLAStepSize. Fixes in EndMerge, FindHammerVertices.
-   2016-11-19 Bruce Baller : Printing mods
-   2016-11-17 Tingjun Yang : Merge branch ‘feature/bb\_TJWork’ into feature/tjyang\_TJWork
-   2016-11-17 Tingjun Yang : Merge branch ‘feature/bb\_TJWork’ of ssh://cdcvs.fnal.gov/cvs/projects/larreco into feature/bb\_TJWork
-   2016-11-17 Bruce Baller : Define a step size for Very Large Angle stepping. Use it in AddLAHits, etc. Fix error in EndMerge. Comment out suspect code snippet in GottaKink.
-   2016-11-17 Bruce Baller : Add fVLAStepSize.
-   2016-11-17 Bruce Baller : Merge branch ‘develop’ into feature/bb\_TJWork
-   2016-11-17 Bruce Baller : Change scheme for counting trajectory hits
-   2016-11-15 Tingjun Yang : Change MaxWireSkipNoSignal to 4 for argoneut.
-   2016-11-15 Tingjun Yang : Remove argoneut\_trajclusteralg.Vertex2DCuts.
-   2016-11-15 Tingjun Yang : Merge branch ‘feature/bb\_TJWork’ into feature/tjyang\_TJWork
-   2016-11-15 Tingjun Yang : Merge branch ‘feature/bb\_TJWork’ of [http://cdcvs.fnal.gov/projects/larreco](http://cdcvs.fnal.gov/projects/larreco) into feature/bb\_TJWork
-   2016-11-15 Bruce Baller : Merge branch ‘develop’ into feature/bb\_TJWork
-   2016-11-15 Tingjun Yang : Merge remote-tracking branch ‘origin/feature/bb\_TJWork’ into feature/tjyang\_TJWork
-   2016-11-15 Bruce Baller : Fix prt problem.
-   2016-11-15 Tingjun Yang : Merge branch ‘develop’ of [http://cdcvs.fnal.gov/projects/larreco](http://cdcvs.fnal.gov/projects/larreco) into develop
-   2016-11-15 Tingjun Yang : Merge branch ‘feature/tjyang\_TJWork’ into develop
-   2016-11-15 Tingjun Yang : Merge branch ‘feature/bb\_TJWork’ of [http://cdcvs.fnal.gov/projects/larreco](http://cdcvs.fnal.gov/projects/larreco) into feature/bb\_TJWork
-   2016-11-15 Tingjun Yang : Merge branch ‘develop’ of ssh://cdcvs.fnal.gov/cvs/projects/larreco into feature/tjyang\_TJWork
-   2016-11-14 Tingjun Yang : Merge branch ‘develop’ of [http://cdcvs.fnal.gov/projects/larreco](http://cdcvs.fnal.gov/projects/larreco) into develop
-   2016-11-14 Bruce Baller : Add TrajIsClean.
-   2016-11-14 Bruce Baller : Add TrajIsClean.
-   2016-11-14 Bruce Baller : Comment out SetHitMultiplicity.
-   2016-11-14 Bruce Baller : MatchTruth development. Uncomment CompleteIncomplete3DVertices. Add TrajIsClean.
-   2016-11-07 Tingjun Yang : Merge branch ‘develop’ of ssh://cdcvs.fnal.gov/cvs/projects/larreco into feature/tjyang\_TJWork
-   2016-11-04 Tingjun Yang : Merge branch ‘feature/bb\_TJWork’ into feature/tjyang\_TJWork
-   2016-11-04 Bruce Baller : Change typedef names.
-   2016-11-04 Bruce Baller : Change typed names.
-   2016-11-04 Bruce Baller : Add another version of MCSThetaRMS.
-   2016-11-04 Bruce Baller : Add another version of MCSThetaRMS.
-   2016-11-04 Bruce Baller : Add SetHitMultiplicity but don’t use it yet. Comment out code snippet in FindUseHits that Tingjun found to do bad things. Re-write EndMerge. Change kink check in CheckTraj to use Delta ratios instead of chisq ratios.
-   2016-11-04 Bruce Baller : Add SetHitMultiplicity but don’t use it yet.
-   2016-11-03 Tingjun Yang : Merge branch ‘feature/bb\_TJWork’ into develop
-   2016-11-03 Tingjun Yang : Merge branch ‘feature/bb\_TJWork’ of [http://cdcvs.fnal.gov/projects/larreco](http://cdcvs.fnal.gov/projects/larreco) into feature/bb\_TJWork
-   2016-11-03 Tingjun Yang : Merge branch ‘develop’ of [http://cdcvs.fnal.gov/projects/larreco](http://cdcvs.fnal.gov/projects/larreco) into develop
-   2016-11-03 Tingjun Yang : Merge branch ‘feature/bb\_TJWork’ into feature/tjyang\_TJWork
-   2016-11-03 Tingjun Yang : Check plane number in CTP for debugging.
-   2016-11-03 Bruce Baller : Modify EP printing code.
-   2016-11-03 Bruce Baller : Set default KinkCuts
-   2016-11-03 Bruce Baller : Add NPtsFit to fKinkCuts and improve kinkAngCut definition. Add ChkAllStop. Fill MCSMom on every step. Don’t useChg in FixTrajBegin
-   2016-11-03 Bruce Baller : Change arrays passed to FindCloseHits. Check for fixed vertex in FitVertex after NTraj is calculated.
-   2016-11-03 Bruce Baller : Change arrays passed to FindCloseHits.
-   2016-11-03 Bruce Baller : Add ChkAllStop.
-   2016-11-03 Bruce Baller : Add ChkAllStop.
-   2016-11-03 Bruce Baller : Remove unused routine. Add ChkAllStop.
-   2016-11-01 Tingjun Yang : Merge branch ‘feature/bb\_TJWork’ into feature/tjyang\_TJWork
-   2016-11-01 Bruce Baller : Update default trajclusteralg settings.
-   2016-11-01 Bruce Baller : Add EPTSums, etc. Replace fKinkAngCut with fKinkCuts. Modify fVertex2DCuts. Add help info if fcl parameters are invalid. Print out trajectory extent in plane. Add checks for StopsAtEnd and KinkAtEnd. EndMerge improvements. Replace NumUsedHits with NumHitsInTP. GottaKink improvements. Fix bug in ChkStop.
-   2016-11-01 Bruce Baller : Replace fKinkAngCut with fKinkCuts. Add EPCounts and EPTSums. Remove obsolete code.
-   2016-11-01 Bruce Baller : Reverse KinkAtEnd. Split MCSMom to separately extract MCSThetaRMS.
-   2016-11-01 Bruce Baller : Add MCSThetaRMS.
-   2016-11-01 Bruce Baller : Initialize MCSMom negative. Add KinkAtEnd.
-   2016-11-01 Tingjun Yang : Merge branch ‘feature/bb\_TJWork’ into feature/tjyang\_TJWork
-   2016-10-31 Tingjun Yang : Merge branch ‘develop’ of ssh://cdcvs.fnal.gov/cvs/projects/larreco into feature/tjyang\_TJWork
-   2016-10-31 Bruce Baller : Add NumHitsInTP.
-   2016-10-31 Bruce Baller : Add NumHitsInTP
-   2016-10-31 Bruce Baller : Comment out Refine2DVertices. Turn kNoKinkChk off after turning it on? ChkStop fixes.
-   2016-10-28 Tingjun Yang : Merge branch ‘develop’ of ssh://cdcvs.fnal.gov/cvs/projects/larreco into feature/tjyang\_TJWork
-   2016-10-28 Bruce Baller : Merge branch ‘develop’ into feature/bb\_TJWork
-   2016-10-28 Bruce Baller : Change debug print in Find2DVertices.
-   2016-10-28 Bruce Baller : Merge branch ‘feature/tjyang\_TJWork’ into feature/bb\_TJWork
-   2016-10-28 Bruce Baller : Print job configuration in debug mode.
-   2016-10-28 Bruce Baller : Remove temporary variables.
-   2016-10-28 Bruce Baller : Add ChkStop code. Add performance histograms. Add hit width consistency check in CheckTraj. Fix MaskHitsOK.
-   2016-10-28 Bruce Baller : Remove temporary variables. Add fChkStopCuts.
-   2016-10-28 Bruce Baller : Add ChkStopCuts
-   2016-10-28 Tingjun Yang : Merge branch ‘develop’ of [http://cdcvs.fnal.gov/projects/larreco](http://cdcvs.fnal.gov/projects/larreco) into develop
-   2016-10-28 Tingjun Yang : Use information of original trajectory when adding hits in CheckHiMultUnusedHits().
-   2016-10-28 Tingjun Yang : Increase maxDelta by 2.5x in FillGaps.
-   2016-10-28 Tingjun Yang : Fix indexing for deleting hits after hit merging.
-   2016-10-27 Bruce Baller : Remove SetStopsAtEnd
-   2016-10-27 Bruce Baller : Remove SetStopsAtEnd
-   2016-10-27 Bruce Baller : Add ChkStop AlgoBitName
-   2016-10-27 Bruce Baller : Change AlgMod bites size to 64. Add temporary variables for debugging stopping trajectories.
-   2016-10-27 Bruce Baller : Add study histograms. Add/rename SetStopsAtEnd to ChkStop. Change FillTrajTruth to MatchTruth.
-   2016-10-27 Bruce Baller : Add study histograms. Add/rename SetStopsAtEnd to ChkStop. Change FillTrajTruth to MatchTruth.
-   2016-10-27 Tingjun Yang : Make sure angle is really large (last in fAngleRanges).
-   2016-10-24 Bruce Baller : MC - reco matching improvements. Minor tweaks in EndMerge, CheckTraj and FillGaps.
-   2016-10-24 Bruce Baller : MC - reco matching improvements.
-   2016-10-24 Bruce Baller : Add PDGCodeIndex
-   2016-10-24 Bruce Baller : Add PDGCodeIndex
-   2016-10-24 Bruce Baller : Replace FillTruth with MatchTruth
-   2016-10-24 Tingjun Yang : Merge remote-tracking branch ‘origin/feature/rnd\_PmaRefitter’ into develop
-   2016-10-24 Robert Sulej : add re-fitting module and algorithm
-   2016-10-23 Tingjun Yang : Change std::cout to mf::LogVerbatim for debugging hits.
-   2016-10-23 Tingjun Yang : Merge branch ‘feature/bb\_TJWork’ into feature/tjyang\_TJWork
-   2016-10-23 Tingjun Yang : Merge branch ‘develop’ of ssh://cdcvs.fnal.gov/cvs/projects/larreco into feature/tjyang\_TJWork
-   2016-10-22 Tingjun Yang : Merge branch ‘feature/bb\_TJWork’ of [http://cdcvs.fnal.gov/projects/larreco](http://cdcvs.fnal.gov/projects/larreco) into feature/bb\_TJWork
-   2016-10-21 Bruce Baller : Fix loop logic in RunTrajClusterAlg. FillTrajTruth development.
-   2016-10-21 Bruce Baller : Don’t print bad values badly
-   2016-10-21 Bruce Baller : Merge branch ‘develop’ into feature/bb\_TJWork
-   2016-10-21 Bruce Baller : Remove commented out and unused code.
-   2016-10-21 Bruce Baller : remove unused vectors
-   2016-10-21 Bruce Baller : Code cleanup
-   2016-10-20 Bruce Baller : Modify FillTrajTruth to work with local hits.
-   2016-10-20 Bruce Baller : Sum muon and pion Efficiency \* Purity separately
-   2016-10-20 Bruce Baller : Formatting changes
-   2016-10-19 Tingjun Yang : Merge branch ‘develop’ of [http://cdcvs.fnal.gov/projects/larreco](http://cdcvs.fnal.gov/projects/larreco) into feature/bb\_TJWork
-   2016-10-19 Tingjun Yang : Merge branch ‘feature/bb\_TJWork’ of [http://cdcvs.fnal.gov/projects/larreco](http://cdcvs.fnal.gov/projects/larreco) into feature/bb\_TJWork
-   2016-10-18 Tingjun Yang : Merge branch ‘feature/bb\_TJWork’ into feature/tjyang\_TJWork
-   2016-10-18 Tingjun Yang : Merge branch ‘develop’ of ssh://cdcvs.fnal.gov/cvs/projects/larreco into develop
-   2016-10-18 Bruce Baller : Work on FillTrajTruth
-   2016-10-18 Bruce Baller : Remove comment.
-   2016-10-18 Bruce Baller : Mucking around in SetStopsAtEnd.
-   2016-10-17 Bruce Baller : Added call to SetStopsAtEnd.
-   2016-10-17 Bruce Baller : Added StopsAtEnd.
-   2016-10-17 Bruce Baller : Added SetStopsAtEnd.
-   2016-10-17 Bruce Baller : Added SetStopsAtEnd.
-   2016-10-17 Tingjun Yang : Merge branch ‘feature/bb\_TJWork’ of [http://cdcvs.fnal.gov/projects/larreco](http://cdcvs.fnal.gov/projects/larreco) into feature/bb\_TJWork
-   2016-10-17 Bruce Baller : Make the charge pull cut double-sided
-   2016-10-16 Tingjun Yang : Merge branch ‘develop’ of [http://cdcvs.fnal.gov/projects/larreco](http://cdcvs.fnal.gov/projects/larreco) into feature/bb\_TJWork
-   2016-10-16 Tingjun Yang : Merge branch ‘feature/bb\_TJWork’ of [http://cdcvs.fnal.gov/projects/larreco](http://cdcvs.fnal.gov/projects/larreco) into feature/bb\_TJWork
-   2016-10-13 Tingjun Yang : Merge branch ‘develop’ of [http://cdcvs.fnal.gov/projects/larreco](http://cdcvs.fnal.gov/projects/larreco) into feature/bb\_TJWork
-   2016-10-10 Tingjun Yang : Merge branch ‘feature/bb\_TJWork’ of [http://cdcvs.fnal.gov/projects/larreco](http://cdcvs.fnal.gov/projects/larreco) into feature/bb\_TJWork
-   2016-10-10 Tingjun Yang : Merge branch ‘develop’ of ssh://cdcvs.fnal.gov/cvs/projects/larreco into develop
-   2016-10-04 Tingjun Yang : Merge branch ‘feature/bb\_TJWork’ of [http://cdcvs.fnal.gov/projects/larreco](http://cdcvs.fnal.gov/projects/larreco) into feature/bb\_TJWork
-   2016-10-03 Tingjun Yang : Merge branch ‘feature/bb\_TJWork’ of [http://cdcvs.fnal.gov/projects/larreco](http://cdcvs.fnal.gov/projects/larreco) into feature/bb\_TJWork
-   2016-10-02 Tingjun Yang : Merge remote-tracking branch ‘origin/feature/bb\_TJWork’ into develop
-   2016-10-02 Tingjun Yang : Merge remote-tracking branch ‘origin/feature/bb\_TJWork’ into develop
-   2016-10-01 Tingjun Yang : Merge branch ‘feature/bb\_TJWork’ of [http://cdcvs.fnal.gov/projects/larreco](http://cdcvs.fnal.gov/projects/larreco) into feature/bb\_TJWork
-   2016-09-29 Tingjun Yang : Merge branch ‘develop’ of [http://cdcvs.fnal.gov/projects/larreco](http://cdcvs.fnal.gov/projects/larreco) into feature/bb\_TJWork

larsim v06\_08\_00
----------------------------------------

-   2016-11-29 Lynn Garren : larsim v06\_08\_00 for larsoft v06\_16\_00
-   2016-11-29 Lynn Garren : Merge branch ‘develop’ into release/v06\_16\_00
-   2016-11-29 Lynn Garren : RandomUtils has moved to nutools
-   2016-11-29 Lynn Garren : Merge branch ‘feature/lg\_use\_nutools\_2\_08’ into release/v06\_16\_00
-   2016-11-29 Lynn Garren : cetbuildtools v5\_06\_01
-   2016-11-29 Hans Wenzel : script that calculates optical properties of liquid Argon
-   2016-11-28 Lynn Garren : Merge branch ‘develop’ into feature/lg\_use\_nutools\_2\_08
-   2016-11-28 Lynn Garren : larsoft v06\_16\_00\_rc
-   2016-11-28 Lynn Garren : using NuRandomService
-   2016-11-28 Lynn Garren : latest cetbuildtools
-   2016-11-28 Lynn Garren : move final fcl file out of larsim/RandomUtils/Providers
-   2016-11-23 Libo Jiang : added the new fcl files for gen stage
-   2016-11-21 Lynn Garren : RandomUtils moved to nutools

larevt v06\_06\_02
----------------------------------------

-   2016-11-29 Lynn Garren : larevt v06\_06\_02 for larsoft v06\_16\_00

lardata v06\_10\_00
------------------------------------------

-   2016-11-29 Lynn Garren : lardata v06\_10\_00 for larsoft v06\_16\_00
-   2016-11-29 Lynn Garren : Merge branch ‘feature/tjyang\_TrackKalmanHitTrackHitMeta’ into release/v06\_16\_00
-   2016-11-29 Lynn Garren : Merge branch ‘feature/ss\_ptrmaker’ into release/v06\_16\_00
-   2016-11-29 Lynn Garren : Merge branch ‘feature/lg\_use\_nutools\_2\_08’ into release/v06\_16\_00
-   2016-11-29 Lynn Garren : nutools v2\_08\_00
-   2016-11-28 Lynn Garren : larsoft v06\_16\_00\_rc
-   2016-11-28 Saba Sehirsh : documentation/usage added
-   2016-11-28 Lynn Garren : using nutools v2\_08\_00
-   2016-11-28 Saba Sehirsh : added usage example
-   2016-11-28 Saba Sehirsh : 2 more tests to read in the ptrs from files created by other 2 tests
-   2016-11-24 Saba Sehirsh : test for PtrMaker for the case when product and ptr both are created in the same module
-   2016-11-23 Saba Sehirsh : integration test for PtrMaker, when making Ptrs to products created in other modules
-   2016-11-23 Saba Sehirsh : added testPtrMaker to the CMakeLists
-   2016-11-23 Saba Sehirsh : added a constructor for making Ptrs to products created in other modules
-   2016-11-22 Saba Sehirsh : removed an old comment
-   2016-11-21 Tingjun Yang : Save trajectory point index.
-   2016-11-21 Tingjun Yang : Add vector to save trajectory point index for each hit.
-   2016-11-21 Tingjun Yang : Remove StoreNPPlane from KGTrack::fillTrack.
-   2016-11-21 Saba Sehirsh : Merge branch ‘develop’ into feature/ss\_ptrmaker
-   2016-07-14 Saba Sehirsh : Merge branch ‘develop’ into feature/ss\_ptrmaker
-   2016-07-01 Saba Sehirsh : Merge branch ‘develop’ into feature/ss\_ptrmaker
-   2016-06-20 Saba Sehirsh : Merge branch ‘develop’ into feature/ss\_ptrmaker
-   2016-06-13 Saba Sehirsh : Merge branch ‘feature/gp\_RecoBaseDumpers’ into feature/ss\_ptrmaker
-   2016-06-13 Saba Sehirsh : lar::PtrMaker moved to Utilities

larcore v06\_04\_01
------------------------------------------

larsoftobj v1\_08\_01
----------------------------------------------

lardataobj v1\_07\_02
----------------------------------------------

larcoreobj v1\_06\_01
----------------------------------------------

larbatch v01\_24\_02
--------------------------------------------

-   2016-11-29 Lynn Garren : larbatch v01\_24\_02 for larsoft v06\_16\_00
-   2016-11-29 Joel Mousseau : Merge branch ‘feature/joelam\_validateOnNode’ into develop
-   2016-11-29 Joel Mousseau : Fix a few bugs regarding missing missingfiles list and file parentage
-   2016-11-15 Joel Mousseau : Fix a bug in quick check
-   2016-11-15 Joel Mousseau : Merge remote-tracking branch ‘refs/remotes/origin/feature/joelam\_validateOnNode’ into feature/joelam\_validateOnNode
-   2016-11-15 Joel Mousseau : Do not try and read the missing\_files.list if the file doesnt exist
-   2016-11-10 Joel Mousseau : Finalizing validating on node and multistage running
-   2016-10-23 Joel Mousseau : Valstat is now used to determine condor\_lars return code. Give copy\_to\_fts a default value of 0 in projectdef
-   2016-10-23 Joel Mousseau : Changes to allow correct parentage of files in metadata when running multiple stages simultaneously
-   2016-10-11 Joel Mousseau : Fix some issues with condor\_lar and overlay running
-   2016-09-22 Joel Mousseau : Fix some merging isuess
-   2016-09-21 Joel Mousseau : Directly copy root files to dropbox
-   2016-08-25 Joel Mousseau : project.py now handles on-grid validation and multiple jobs per stage more natively
-   2016-08-17 Joel Mousseau : Bug fixes to quick check in project.py condor\_lar will now work with multistage running for any stage even if an output file is not specified
-   2016-08-10 Joel Mousseau : Workable version of multi-stage projects. Updates to extractor dict to handle experiment specific metadata
-   2016-08-05 Joel Mousseau : Add in code to run multiple lar Stages in one worker node
-   2016-07-13 Joel Mousseau : First import of on-grid validation scripts
-   2016-09-21 Joel Mousseau : Directly copy root files to dropbox
-   2016-08-26 Joel Mousseau : Fix whitesapce issue in files.list
-   2016-08-25 Joel Mousseau : project.py now handles on-grid validation and multiple jobs per stage more natively
-   2016-08-17 Joel Mousseau : Bug fixes to quick check in project.py condor\_lar will now work with multistage running for any stage even if an output file is not specified
-   2016-08-10 Joel Mousseau : Workable version of multi-stage projects. Updates to extractor dict to handle experiment specific metadata
-   2016-08-05 Joel Mousseau : Add in code to run multiple lar Stages in one worker node
-   2016-08-05 Joel Mousseau : Add in code to run multiple lar Stages in one worker node
-   2016-07-13 Joel Mousseau : First import of on-grid validation scripts
-   2016-11-10 Joel Mousseau : Finalizing validating on node and multistage running
-   2016-10-23 Joel Mousseau : Valstat is now used to determine condor\_lars return code. Give copy\_to\_fts a default value of 0 in projectdef
-   2016-10-23 Joel Mousseau : Changes to allow correct parentage of files in metadata when running multiple stages simultaneously
-   2016-10-11 Joel Mousseau : Fix some issues with condor\_lar and overlay running
-   2016-10-10 Herbert Greenlee : Merge remote-tracking branch ‘origin/develop’ into feature/joelam\_validateOnNode
-   2016-09-22 Joel Mousseau : Fix some merging isuess
-   2016-09-21 Joel Mousseau : Attempting to merge
-   2016-09-21 Joel Mousseau : Directly copy root files to dropbox
-   2016-08-26 Joel Mousseau : Fix whitesapce issue in files.list
-   2016-08-25 Joel Mousseau : project.py now handles on-grid validation and multiple jobs per stage more natively
-   2016-08-17 Joel Mousseau : Bug fixes to quick check in project.py condor\_lar will now work with multistage running for any stage even if an output file is not specified
-   2016-08-10 Joel Mousseau : Workable version of multi-stage projects. Updates to extractor dict to handle experiment specific metadata
-   2016-08-05 Joel Mousseau : Add in code to run multiple lar Stages in one worker node
-   2016-08-05 Joel Mousseau : Add in code to run multiple lar Stages in one worker node
-   2016-07-13 Joel Mousseau : First import of on-grid validation scripts
-   2016-09-21 Joel Mousseau : Directly copy root files to dropbox
-   2016-08-26 Joel Mousseau : Fix whitesapce issue in files.list
-   2016-08-25 Joel Mousseau : project.py now handles on-grid validation and multiple jobs per stage more natively
-   2016-08-17 Joel Mousseau : Bug fixes to quick check in project.py condor\_lar will now work with multistage running for any stage even if an output file is not specified
-   2016-08-10 Joel Mousseau : Workable version of multi-stage projects. Updates to extractor dict to handle experiment specific metadata
-   2016-08-05 Joel Mousseau : Add in code to run multiple lar Stages in one worker node
-   2016-08-05 Joel Mousseau : Add in code to run multiple lar Stages in one worker node
-   2016-07-13 Joel Mousseau : First import of on-grid validation scripts

larutils v1\_11\_00
------------------------------------------
