# LArSoft v06_25_00 Release Notes



[list of LArSoft releases](LArSoft_release_list)  
Download instructions for [larsoft v06_25_00](https://scisoft.fnal.gov/scisoft/bundles/larsoft/v06_25_00/larsoft-v06_25_00.html)  
Download instructions for [just larsoftobj v1_11_00](https://scisoft.fnal.gov/scisoft/bundles/larsoftobj/v1_11_00/larsoftobj-v1_11_00.html)

## Purpose

-   changes to develop
-   approved features

## New features

-   lardataobj, larpandora feature/gp_LArShowerPfoSuggestions
    -   [Shower reconstruction / changes to recob::Shower](https://indico.fnal.gov/getFile.py/access?contribId=2&amp;resId=0&amp;materialId=slides&amp;confId=13823)
    -   uboonecode - feature/LArShowerPfo
-   larreco feature/bb_TJWork
-   larsim feature/trj_radiogeom
    -   [Radiological generator and geometry](https://indico.fnal.gov/getFile.py/access?contribId=3&amp;resId=0&amp;materialId=slides&amp;confId=13823)

## Bug fixes

-   lardata \#15400

## Updated dependencies

# Change List

## larsoft v06_25_00

-   2017-02-15 Lynn Garren : larsoft v06_25_00 for larsoft v06_25_00
-   2017-02-15 Lynn Garren : update product versions
-   2017-02-15 Lynn Garren : update dependency database

## lareventdisplay v06_02_13

-   2017-02-15 Lynn Garren : lareventdisplay v06_02_13 for larsoft v06_25_00

## larexamples v06_01_14

-   2017-02-15 Lynn Garren : larexamples v06_01_14 for larsoft v06_25_00

## larpandora v06_07_00

-   2017-02-15 Lynn Garren : larpandora now depends directly on eigen
-   2017-02-15 Lynn Garren : larpandora v06_07_00 for larsoft v06_25_00
-   2017-02-15 Lynn Garren : Merge branch 'feature/gp_LArShowerPfoSuggestions' into release/v06_25_00
-   2017-02-14 Yun-Tse Tsai : modify the definition of the opening angle of showers
-   2017-02-13 Yun-Tse Tsai : add the PCAxis id
-   2017-02-13 loressa : Untabified
-   2017-02-11 loressa : Remove print outs
-   2017-02-11 loressa : Function checkign min trajectory points
-   2017-02-11 Gianluca Petrillo : Compacted the filling of a vector of vectors.
-   2017-02-11 Gianluca Petrillo : Reworked the flow of shower storage without exceptions.
-   2017-02-10 Gianluca Petrillo : Added the forgotten ID field to shower constructor.
-   2017-02-10 Gianluca Petrillo : Merge branch 'develop' into feature/LArShowerPfo
-   2017-02-10 loressa : \>=
-   2017-02-09 loressa : Added a simple fix to avoid crashes due to interplay with recob::Trajectory object created, which now requires a minimum of 2 trajectory points
-   2017-02-03 Yun-Tse Tsai : fix a problem on calculating the covariance matrix in SVD
-   2017-02-03 John Marshall : Declare output data products and associations.
-   2017-02-03 John Marshall : Cosmetic.
-   2017-02-03 Yun-Tse Tsai : add PCAxis and the association, although a bit ugly
-   2017-02-02 Yun-Tse Tsai : build pandora-based shower recontruction in larsoft; eigenvalues need to be normalized
-   2017-02-02 John Marshall : Placeholder shower output code.
-   2017-02-02 John Marshall : Add LArPandoraShowers content, with eigen dependency. This content may move to separate larpandoracontent library as it matures.

## larwirecell v06_00_11

-   2017-02-15 Lynn Garren : larwirecell v06_00_11 for larsoft v06_25_00

## larana v06_03_17

-   2017-02-15 Lynn Garren : larana v06_03_17 for larsoft v06_25_00

## larreco v06_19_00

-   2017-02-15 Lynn Garren : larreco v06_19_00 for larsoft v06_25_00
-   2017-02-15 Lynn Garren : Merge branch 'feature/bb_TJWork' into release/v06_25_00
-   2017-02-15 Robert Sulej : protect against corrupted data dump
-   2017-02-15 Robert Sulej : protect against corrupted data dump
-   2017-02-13 Robert Sulej : add script preparing data for em-track-michel distinction
-   2017-02-13 Robert Sulej : fix condition for clean track filtering
-   2017-02-13 Robert Sulej : only check if wire adc is not shorter than numbertimesamples
-   2017-02-10 baller : Merge branch 'develop' into feature/bb_TJWork
-   2017-02-10 baller : Clean up code and comments.
-   2017-02-10 baller : Remove unused code.
-   2017-02-09 baller : More checks for valid yp, zp
-   2017-02-09 baller : Check yp, zp before finding wire coordinate.
-   2017-02-06 baller : Modify histograms. Check for invalid NearestWire.
-   2017-02-06 baller : Modify histograms.
-   2017-02-06 baller : Add NNeighbors to Trajectory. Shower finding development.
-   2017-02-06 baller : Add NNeighbors to Trajectory.
-   2017-02-03 baller : Merge branch 'develop' into feature/bb_TJWork
-   2017-02-03 baller : Re-arrange ShowerTag inputs
-   2017-02-03 baller : Re-arrange ShowerTag inputs. Shower finding development.
-   2017-02-03 baller : Shower finding development
-   2017-02-03 baller : Re-arrange ShowerTag inputs
-   2017-02-02 baller : Shower finding development - incomplete.
-   2017-02-02 baller : More selective trajectory printing.
-   2017-02-02 baller : Turn 3D trajectory matching default to on.
-   2017-02-02 baller : Add TagShowerTjs. Fix bug in MaskTrajEndPts.
-   2017-02-02 baller : Add TagShowerTjs.
-   2017-02-02 baller : Update ShowerTag.
-   2017-02-02 baller : Update ShowerTag
-   2017-02-01 baller : Move WatchHit to Utils. Add alg StopIfBadFits. Add StepDir check in ReversePropagate. Don't reverse Tjs in MakeAllTrajClusters. Vertex improvements in EndMerge and Find3DVertices.
-   2017-02-01 baller : Move WatchHit to Utils. Add alg StopIfBadFits.
-   2017-02-01 baller : Add WatchHit debug function and a variant of TrajIntersection. Fixed bug in TrimEndPts. Distinguish between kShowerTj and kInShower. Shower finding development.
-   2017-02-01 baller : Add WatchHit debug function and a variant of TrajIntersection.
-   2017-02-01 baller : Add alg StopIfBadFits and kInShower.
-   2017-02-01 baller : Add alg StopIfBadFits.
-   2017-01-31 baller : Define MinMCSMom
-   2017-01-31 baller : Add ParentTjID to ShowerStruct. Rename kShowerTag to kShowerParent.
-   2017-01-31 baller : Add ParentTjID to ShowerStruct. Rename kShowerTag to kShowerParent.
-   2017-01-31 baller : Add ParentTjID to ShowerStruct. Rename kShowerTag to kShowerParent.
-   2017-01-31 baller : Add ParentTjID to ShowerStruct. Rename kShowerTag to kShowerParent.
-   2017-01-31 baller : Merge branch 'develop' into feature/bb_TJWork
-   2017-01-31 baller : Remove gratuitous clear.
-   2017-01-30 baller : Development of end point definition in 3D Tj matching. Add 3D version of PosSep2. Remove TagShowerTraj. Mods to fShowerTag vector. Add fMinMCSMom.
-   2017-01-30 baller : Add fMinMCSMom.
-   2017-01-30 baller : Development of end point definition in 3D Tj matching. Add 3D version of PosSep2. Remove TagShowerTraj. Mods to fShowerTag vector.
-   2017-01-30 baller : Development of end point definition in 3D Tj matching. Add 3D version of PosSep2. Remove TagShowerTraj.
-   2017-01-30 baller : Development of end point definition in 3D Tj matching.
-   2017-01-30 baller : Use sVtx3DIndex.
-   2017-01-21 baller : Add comment
-   2017-01-21 baller : ShowerTag revisions.
-   2017-01-21 baller : Revise fShowerTag. Add call to CheckVtxAssociations.
-   2017-01-21 baller : Add SetPDGCode.
-   2017-01-21 baller : Work on shower finding code. CheckVtxAssociations. Kill 3D vertices and 2D vertices in other planes in MakeVertexObsolete.
-   2017-01-21 baller : Work on shower finding code. CheckVtxAssociations.
-   2017-01-21 baller : Add shower finding variables.
-   2017-01-21 baller : Add shower finding variables.
-   2017-01-17 Bruce Baller : Merge branch 'develop' into feature/bb_TJWork
-   2017-01-17 Bruce Baller : Add shower parent
-   2017-01-17 Bruce Baller : Shower finding development
-   2017-01-17 Bruce Baller : Add comment to self
-   2017-01-15 Bruce Baller : ShowerTag fcl change. Add call to FindMatchEndPoints. Change shower PDGCode from 12 to 11.
-   2017-01-15 Bruce Baller : ShowerTag fcl change. Add call to FindMatchEndPoints.
-   2017-01-15 Bruce Baller : Add call to FindShowers. Fix PDGCode for shower particles.
-   2017-01-15 Bruce Baller : Add shower code
-   2017-01-15 Bruce Baller : Add ShowerTag
-   2017-01-15 Bruce Baller : Add ShowerStruct, ShowerTag and cots (Cluster Of Trajectories).
-   2017-01-03 Bruce Baller : Add comment for SpecialAlgs.
-   2017-01-03 Bruce Baller : Merge branch 'develop' into feature/bb_TJWork
-   2017-01-03 Bruce Baller : Set defaults (adjusted for MicroBooNE).
-   2017-01-03 Bruce Baller : Remove unnecessary module tctrack.
-   2017-01-03 Bruce Baller : Remove unnecessary module tctrack.
-   2017-01-03 Bruce Baller : Mods to create PFParticle - Vertex associations.
-   2017-01-03 Bruce Baller : Add code to aid in the creation of PFParticles. Fix logic error in EndMerge and Find3DVertices.
-   2017-01-03 Bruce Baller : Add code to aid in the creation of PFParticles.
-   2017-01-03 Bruce Baller : Add Reverse3DMatchTjs to reverse matched trajectories using dQ/dx.
-   2017-01-03 Bruce Baller : Add Reverse3DMatchTjs to reverse matched trajectories using dQ/dx, etc
-   2017-01-03 Bruce Baller : Add PFParticle stuff to MatchStruct.
-   2016-12-28 Bruce Baller : Merge branch 'develop' into feature/bb_TJWork
-   2016-12-28 Bruce Baller : Fix typo. Add variant of SignalBetween in EndMerge. Fix bugs in Find3DVertices, Match3D, CompleteIncomplete3DVertices. Add VtxID checking in ChkInTraj.
-   2016-12-28 Bruce Baller : Fix typo
-   2016-12-28 Bruce Baller : Add variant of SignalBetween.
-   2016-12-28 Bruce Baller : Add variant of SignalBetween
-   2016-12-21 Bruce Baller : Add cut to reduce searching for broken trajectories
-   2016-12-21 Bruce Baller : Add another Match3DCuts element.
-   2016-12-21 Bruce Baller : Merge branch 'develop' into feature/bb_TJWork
-   2016-12-21 Bruce Baller : Ongoing work on 3D matching
-   2016-12-21 Bruce Baller : Ongoing work on 3D matching
-   2016-12-21 Bruce Baller : Ongoing work on 3D matching
-   2016-12-20 Bruce Baller : Add 2-View 3D trajectory matching
-   2016-12-20 Bruce Baller : Add 2-View 3D trajectory matching
-   2016-12-20 Bruce Baller : benign edit
-   2016-12-20 Bruce Baller : Change MatchStruct structure to deal with 2-view 3D matches
-   2016-12-20 Bruce Baller : Add 2-view matching criterion for Match3DCuts.
-   2016-12-19 Bruce Baller : Add tctrack
-   2016-12-19 Bruce Baller : Add tctrack
-   2016-12-19 Bruce Baller : Add tctrack module
-   2016-12-19 Bruce Baller : Add trajcluster Match3DCuts vector
-   2016-12-19 Bruce Baller : Add Hit Sigma variables. Fix 3D matching code. Remove SetMatch. Reverse trajectories in MakeAllTrajClusters to pass the proper order to downstream modules.
-   2016-12-19 Bruce Baller : Add Get3DMatchedClusters.
-   2016-12-19 Bruce Baller : Add Hit Sigma variables and MatchedClusters.
-   2016-12-16 Bruce Baller : Add 3D trajectory matching.
-   2016-12-16 Bruce Baller : Add 3D trajectory matching. Code fix in EndMerge.
-   2016-12-16 Bruce Baller : Add NearestPtWithChg
-   2016-12-16 Bruce Baller : Add NearestPtWithChg
-   2016-12-16 Bruce Baller : Add 3D trajectory matching.
-   2016-12-16 Bruce Baller : Add 3D trajectory matching.
-   2016-12-16 Bruce Baller : Add 3D trajectory matching.
-   2016-12-16 Bruce Baller : Remove unused variable.
-   2016-12-13 Bruce Baller : Increase wire window size in Find2DVertices
-   2016-12-13 Bruce Baller : Replace fMaxAngleRange with fMaxAngleCode. Add SetAngleCode. Replace old versions of EndMerge and MaskedHitsOK with new versions. Add CompleteIncomplete3DVerticesInGaps.
-   2016-12-13 Bruce Baller : Replace fMaxAngleRange with fMaxAngleCode. Add SetAngleCode. Replace old versions of EndMerge and MaskedHitsOK with new versions. Add CompleteIncomplete3DVerticesInGaps.
-   2016-12-13 Bruce Baller : Modifications to SignalBetween. Add MakeVertexObsolete. Improvements in TrimEndPts. Print AngCode.
-   2016-12-13 Bruce Baller : Modifications to SignalBetween. Add MakeVertexObsolete.
-   2016-12-13 Bruce Baller : Modify AlgBits
-   2016-12-13 Bruce Baller : Add traj point and vertex variables. Modify AlgBits.
-   2016-12-13 Bruce Baller : Change default settings
-   2016-12-09 Bruce Baller : Vertex improvements for low MCSMom trajectories.
-   2016-12-09 Bruce Baller : Move code from TrajClusterAlg.
-   2016-12-09 Bruce Baller : Move code from TrajClusterAlg.
-   2016-12-09 Bruce Baller : Remove TrimHits. Add TrimEndPts.
-   2016-12-09 Bruce Baller : Remove TrimHits. Add TrimEndPts.
-   2016-12-09 Bruce Baller : Add fQualityCuts. Move code to Utils. Replace trim hits code in CheckTraj with Utils/TrimEndTps. Remove GhostMerge. Add SignalBetween in Find2DVertices. Improvements in IsGhost. Move ChkTrajBegin code into FixTrajBegin.
-   2016-12-09 Bruce Baller : Add fQualityCuts. Move code to Utils.
-   2016-12-07 Bruce Baller : Add GhostMerge. Work on IsGhost.
-   2016-12-07 Bruce Baller : Add GhostMerge
-   2016-12-07 Bruce Baller : Code cleanup
-   2016-12-07 Bruce Baller : Add GhostMerge
-   2016-12-07 Bruce Baller : Add GhostMerge
-   2016-12-07 Bruce Baller : Don't print out killed AlgModCounts
-   2016-12-07 Bruce Baller : Add SpecialAlgs vector. Work on UseUnusedHits, AddLAHits, FindUseHits2, EndMerge and ChkInTraj.
-   2016-12-07 Bruce Baller : Clean up. Add another version of AngleRange.
-   2016-12-07 Bruce Baller : Improve TrajTrajDOCA a bit
-   2016-12-07 Bruce Baller : Add more AlgBit and StopFlag names
-   2016-12-07 Bruce Baller : Add more AlgBit and StopFlag names
-   2016-12-05 Bruce Baller : Add another check in UseUnusedHits. Improvements in ReversePropagate and checks for kRevProp in various places. Add angle cut in FindHammerVertices2. Check local MCSMom in UpdateTraj before reducing points.
-   2016-12-05 Bruce Baller : Add kRvPrp to StopFlagNames
-   2016-12-05 Bruce Baller : Add 2D vtx Ptr3D
-   2016-12-04 Bruce Baller : Comment out code that is not so good for MicroBooNE. Tweak charge pull cut in EndMerge. Improvements in FindHammerVertices2 and FixTrajBegin. StepCrawl step check.
-   2016-12-04 Bruce Baller : Move code to Utils. Change WorkID to int.
-   2016-12-04 Bruce Baller : Move code here from TrajCluster.cxx
-   2016-12-04 Bruce Baller : Move code here from TrajCluster.cxx
-   2016-12-04 Bruce Baller : Change WorkID to int
-   2016-12-02 Bruce Baller : Code tweaks in UseUnusedHits, AddHits, AddLAHits and FindUseHits2.
-   2016-12-02 Bruce Baller : Add MC variables for vertex reconstruction performance checking. Code tweaks in ReconstructAllTraj, UseUnusedHits, FindUseHits2. Move MaxHitDelta to Utils. Recover old version of MaskedHitsOK and add a new version.
-   2016-12-02 Bruce Baller : Add MC variables. Move MaxHitDelta to Utils. Add MaskedHitsOK2.
-   2016-12-02 Bruce Baller : Add MaxHitDelta
-   2016-12-02 Bruce Baller : Add MaxHitDelta
-   2016-12-02 Bruce Baller : Add MHOK2
-   2016-12-02 Bruce Baller : Add MHOK2
-   2016-11-30 Bruce Baller : Add PrintStopFlag and associated names. Replace StopsAtEnd and KinkAtEnd with StopFlag. Add ChkTrajBegin to set the traj begin StopFlag. Add optional call to ReversePropagate in FixTrajBegin.
-   2016-11-30 Bruce Baller : Add ChkTrajBegin
-   2016-11-30 Bruce Baller : Pass print variable to HasDuplicateHits. Replace StopsAtEnd and KinkAtEnd with PrintStopFlag.
-   2016-11-30 Bruce Baller : Pass print variable to HasDuplicateHits. Add PrintStopFlag.
-   2016-11-30 Bruce Baller : Truncate AlgBitNames and add StopFlagNames
-   2016-11-30 Bruce Baller : Replace StopsAtEnd and KinkAtEnd with a more general purpose StopFlag vector.
-   2016-11-29 Bruce Baller : Add switch to turn off ReversePropagate code in FixTrajBegin.
-   2016-11-29 Bruce Baller : Add switch to turn off ReversePropagate code in FixTrajBegin
-   2016-11-29 Bruce Baller : Add switch to turn off ReversePropagate code in FixTrajBegin

## larsim v06_13_00

-   2017-02-15 Lynn Garren : larsim v06_13_00 for larsoft v06_25_00
-   2017-02-14 Thomas Junk : Update my feature branch with other commits
-   2017-02-14 Thomas Junk : Remove ad-hoc 39Ar simulation from LArVoxelReadout and associated files setting up its random number generator and rates. This has been superseded by the radiological generator in the EventGenerators directory.
-   2017-02-01 Thomas Junk : Add some commented-out logdebugs
-   2017-02-01 Thomas Junk : Better comment
-   2017-02-01 Thomas Junk : Add descriptive comment, and a check that we have as many material regex's as we have nuclides on the list
-   2017-02-01 Thomas Junk : make radiogen aware of geometry — need to specify which materials are radioactive and skip others in the prism
-   2017-02-01 Thomas Junk : Make radiogen aware of geometry — specify only those materials we want to be radioactive and skip others

## larevt v06_07_08

-   2017-02-15 Lynn Garren : larevt v06_07_08 for larsoft v06_25_00

## lardata v06_14_03

-   2017-02-15 Lynn Garren : lardata v06_14_03 for larsoft v06_25_00
-   2017-02-14 Gianluca Petrillo : And added another bit of test for issue \#15400 .
-   2017-02-14 Gianluca Petrillo : Merge branch 'feature/gp_Issue15400' into develop
-   2017-02-14 Gianluca Petrillo : Another try to fix issue \#15400 (this one works on Linux).
-   2017-02-14 Lynn Garren : fix file name
-   2017-02-14 Lynn Garren : fenced code blocks require the same number of tildes on both lines
-   2017-02-10 Gianluca Petrillo : Tentative fix to RangeForWrapperBox (util::range_for) per issue \#15400 .
-   2017-02-09 Gianluca Petrillo : Disabled also the new association_groups_test (fails in profiling mode)
-   2017-02-08 Gianluca Petrillo : Added artless unit test for associated_groups().
-   2017-02-08 Gianluca Petrillo : Fixed the test of for_each_associated_groups().

## larcore v06_05_02

## larpandoracontent v03_02_00

## larsoftobj v1_11_00

-   2017-02-15 Lynn Garren : larsoftobj v1_11_00 for larsoft v06_25_00

## lardataobj v1_11_00

-   2017-02-15 Lynn Garren : lardataobj v1_11_00 for larsoft v06_25_00
-   2017-02-15 Lynn Garren : Merge branch 'feature/gp_LArShowerPfoSuggestions' into release/v06_25_00
-   2017-02-14 Yun-Tse Tsai : modify and update the comments
-   2017-02-14 Yun-Tse Tsai : add more comments in the doxygen format
-   2017-02-14 Lynn Garren : fix file name
-   2017-02-14 Lynn Garren : fenced code blocks require the same number of tildes on both lines
-   2017-02-14 Lynn Garren : fenced code blocks require the same number of tildes on both lines
-   2017-02-14 Gianluca Petrillo : Default values for new recob::Shower data set to the lowest representable number.
-   2017-02-11 Gianluca Petrillo : Uniformed the style of the new recob::Shower methods.
-   2017-02-10 Gianluca Petrillo : Split recob::Shower constructor into two.
-   2017-02-10 Gianluca Petrillo : Removed obsolete *GCCXML* guards.
-   2017-02-10 Gianluca Petrillo : Merge branch 'develop' into feature/LArShowerPfo
-   2017-02-07 Yun-Tse Tsai : change the order of the variables in the constructor and assign a default value
-   2017-02-03 Yun-Tse Tsai : add PCAxis related association in classes_def.xml
-   2017-02-02 Yun-Tse Tsai : add more variables for the shower object
-   2017-02-02 Yun-Tse Tsai : add more variables for the shower object

## larcoreobj v1_06_02

## larbatch v01_26_05

## larutils v1_11_01

-   2017-02-15 Lynn Garren : larutils v1_11_01 for larsoft v06_25_00
-   2017-02-14 Lynn Garren : set UPS_OVERRIDE
-   2017-02-14 Lynn Garren : more platform checking
-   2017-02-14 Lynn Garren : using the new buildFW
