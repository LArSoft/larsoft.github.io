LArSoft v06\_11\_00 Release Notes
======================================================================

-   **Table of contents**
-   [LArSoft v06\_11\_00 Release Notes](#LArSoft-v06_11_00-Release-Notes)
    -   [Purpose](#Purpose)
    -   [Breaking Changes](#Breaking-Changes)
        -   [Code moving into nutools](#Code-moving-into-nutools)
        -   [Removal of algorithm code from lardata and deprecating BezierTrack](#Removal-of-algorithm-code-from-lardata-and-deprecating-BezierTrack)
        -   [Experiment code](#Experiment-code)
        -   [Updating user code](#Updating-user-code)
    -   [Bug fixes](#Bug-fixes)
    -   [Updated dependencies](#Updated-dependencies)
-   [Change List](#Change-List)
    -   [larsoft v06\_11\_00](#larsoft-v06_11_00)
    -   [lareventdisplay v06\_01\_08](#lareventdisplay-v06_01_08)
    -   [larexamples v06\_00\_12](#larexamples-v06_00_12)
    -   [larpandora v06\_01\_03](#larpandora-v06_01_03)
    -   [larana v06\_03\_00](#larana-v06_03_00)
    -   [larreco v06\_08\_00](#larreco-v06_08_00)
    -   [larsim v06\_05\_00](#larsim-v06_05_00)
    -   [larevt v06\_03\_01](#larevt-v06_03_01)
    -   [lardata v06\_07\_00](#lardata-v06_07_00)
    -   [larcore v06\_02\_03](#larcore-v06_02_03)
    -   [larsoftobj v1\_07\_00](#larsoftobj-v1_07_00)
    -   [lardataobj v1\_07\_00](#lardataobj-v1_07_00)
    -   [larcoreobj v1\_05\_00](#larcoreobj-v1_05_00)
    -   [larbatch v01\_23\_07](#larbatch-v01_23_07)
    -   [larutils v1\_09\_01](#larutils-v1_09_01)

[list of LArSoft releases](LArSoft_release_list)
[Download instructions](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v06_11_00/larsoft-v06_11_00.html)

Purpose
--------------------

-   art 2.04.01, nutools 2.06.01, and ifdhc 2.0.0
-   calorimetry reorganization
-   changes to develop since v06\_09\_00
-   NOTE that we are skipping v06\_10\_00 to avoid confusion with the release candidates.

Breaking Changes
--------------------------------------

### Code moving into nutools

The nutools product has absorbed the following classes that currently live in larsim:

-   ParticleList
-   ParticleHistory
-   EveIdCalculator
-   EmEveIdCalculator
    These classes are not specific to LAr, and are useful for particle navigation, so are being moved in order to provide access to other experiments. The new location will be nutools/ParticleNavigation.

### Removal of algorithm code from lardata and deprecating BezierTrack

In order to remove algorithm code from lardata, we are making the following changes:

-   To create a home for algorithm code currently in lardata
    -   Move larana/larana/Calorimetry/\* to larreco/larreco/Calorimetry/\*
-   Move algorithm code currently in lardata to more appropriate locations
    -   Move lardata/lardata/AnalysisAlg/Chi2PIDAlg\* to larana/larana/ParticleIdentification/
    -   Move lardata/lardata/AnalysisAlg/CalorimetryAlg\* to larreco/larreco/Calorimetry/
-   BezierTrack uses CalorimetryAlg, so needs to move also. Since there few clients and serious design issues with this class, we propose deprecating BezierTrack. Before removing it from the repository, it will be moved temporarily to larreco along with CalorimetryAlg
    -   Move lardata/lardata/RecoObjects/BezierTrack\* to larreco/larreco/Deprecated/

### Experiment code

-   Required changes for argoneutcode, dunetpc, lariatsoft, and uboonecode are in feature/for\_v06\_11\_00

### Updating user code

    setup larsoft v06_11_00 (or later)
    cd to your repository directory
    ${LARSOFT_DIR}/bin/v06_11_00-reorganize/UpdateReorg611.sh

Bug fixes
------------------------

Updated dependencies
----------------------------------------------

||
|Product|Version|Qualifiers|Notes|
|nutools|v2\_06\_01|e10|[NuTools\_Release\_Notes](/redmine/projects/nutools/wiki/NuTools_Release_Notes#nutools-v2_06_01)|
|ifdhc|v2\_0\_0|e10:p2711|[ifdh version 2](/redmine/projects/ifdhc/wiki/IFDH_Version_2_Major_Release)|
|ifdh\_art|v2\_00\_00|e10:nu:s44||
|artdaq\_core|v1\_05\_08|e10:nu:s44||
|art|v2\_04\_01|e10:nu|[Release Notes 2.04.01](/redmine/projects/art/wiki/Release_Notes_20401)|

Change List
============================

larsoft v06\_11\_00
------------------------------------------

-   2016-10-12 Lynn Garren : larsoft v06\_11\_00 for larsoft v06\_11\_00
-   2016-10-12 Lynn Garren : do our own install
-   2016-10-12 Lynn Garren : install the scripts
-   2016-10-12 Lynn Garren : root6 related script
-   2016-10-12 Lynn Garren : update product versions
-   2016-10-12 Lynn Garren : organize update scripts by release
-   2016-10-12 Lynn Garren : v06\_22\_00 update scripts
-   2016-10-12 Lynn Garren : update dependency database
-   2016-10-12 Lynn Garren : ifdh\_art v2\_00\_00
-   2016-10-12 Lynn Garren : tell user what is next
-   2016-10-12 Lynn Garren : simple move of files with history
-   2016-10-06 Lynn Garren : larsoft v06\_09\_00
-   2016-10-05 Lynn Garren : update dependency data base

lareventdisplay v06\_01\_08
----------------------------------------------------------

-   2016-10-13 Lynn Garren : lareventdisplay v06\_01\_08 for larsoft v06\_11\_00
-   2016-10-12 Lynn Garren : reorganization
-   2016-10-07 Tingjun Yang : Merge branch ‘develop’ of ssh://cdcvs.fnal.gov/cvs/projects/lareventdisplay into develop
-   2016-10-07 Tingjun Yang : Update evd for argoneut.

larexamples v06\_00\_12
--------------------------------------------------

-   2016-10-13 Lynn Garren : larexamples v06\_00\_12 for larsoft v06\_11\_00

larpandora v06\_01\_03
------------------------------------------------

-   2016-10-13 Lynn Garren : larpandora v06\_01\_03 for larsoft v06\_11\_00

larana v06\_03\_00
----------------------------------------

-   2016-10-13 Lynn Garren : larana v06\_03\_00 for larsoft v06\_11\_00
-   2016-10-12 Lynn Garren : reorganization
-   2016-10-12 Lynn Garren : Calorimetry moved to larreco
-   2016-10-12 Lynn Garren : moving Chi2PIDAlg to larana/ParticleIdentification
-   2016-09-28 Gianluca Petrillo : Attempt to fix CalorimetryAlg::reconfigure() problem
-   2016-09-23 Robert Sulej : add validation of fhicl parameters
-   2016-08-03 Tingjun Yang : Exclude the first and last point in the PID calculation.
-   2016-06-02 Lynn Garren : more changes for lardataobj
-   2016-06-02 Lynn Garren : build with lardataobj v1\_01\_01
-   2016-06-02 Lynn Garren : changes for nutools v2\_00\_00 and art v2\_00\_02
-   2016-01-15 Lynn Garren : remove LIBRARY\_NAME
-   2015-12-21 Lynn Garren : refactor lardata
-   2015-12-18 Lynn Garren : move AnalysisAlg to lardata/AnalysisAlg

larreco v06\_08\_00
------------------------------------------

-   2016-10-13 Lynn Garren : add missing libraries
-   2016-10-13 Lynn Garren : larreco v06\_08\_00 for larsoft v06\_11\_00
-   2016-10-12 Lynn Garren : reorganization
-   2016-10-12 Lynn Garren : BezierTrack is deprecated
-   2016-06-02 Lynn Garren : more changes for lardataobj
-   2016-06-02 Lynn Garren : build with lardataobj v1\_01\_01
-   2016-02-10 Lynn Garren : refactored larsoft
-   2016-02-10 Lynn Garren : move RecoObjects to lardata/RecoObjects
-   2016-06-02 Lynn Garren : more changes for lardataobj
-   2016-06-02 Lynn Garren : changes for nutools v2\_00\_00 and art v2\_00\_02
-   2015-12-21 Lynn Garren : refactor lardata
-   2015-12-18 Lynn Garren : move RecoObjects to lardata/RecoObjects
-   2016-06-02 Lynn Garren : more changes for lardataobj
-   2016-02-10 Lynn Garren : refactored larsoft
-   2016-02-10 Lynn Garren : move RecoObjects to lardata/RecoObjects
-   2016-06-02 Lynn Garren : more changes for lardataobj
-   2016-06-02 Lynn Garren : changes for nutools v2\_00\_00 and art v2\_00\_02
-   2016-02-10 Lynn Garren : refactored larsoft
-   2016-02-10 Lynn Garren : move RecoObjects to lardata/RecoObjects
-   2016-10-12 Lynn Garren : moving CalorimetryAlg to larreco/Calorimetry
-   2016-09-28 Gianluca Petrillo : Attempt to fix CalorimetryAlg::reconfigure() problem
-   2016-09-23 Robert Sulej : add validation of fhicl parameters
-   2016-08-03 Tingjun Yang : Exclude the first and last point in the PID calculation.
-   2016-06-02 Lynn Garren : more changes for lardataobj
-   2016-06-02 Lynn Garren : build with lardataobj v1\_01\_01
-   2016-06-02 Lynn Garren : changes for nutools v2\_00\_00 and art v2\_00\_02
-   2016-01-15 Lynn Garren : remove LIBRARY\_NAME
-   2015-12-21 Lynn Garren : refactor lardata
-   2015-12-18 Lynn Garren : move AnalysisAlg to lardata/AnalysisAlg
-   2016-10-12 Lynn Garren : add Calorimetry
-   2016-09-28 Tingjun Yang : Use TrackHitMeta information to get position and direction of trajectory point associated with a hit if TrackHitMeta information is available. Currently only works for PMA.
-   2016-09-28 Tingjun Yang : Add option to decide whether to flip track direction if dQ/dx is higher at track start. This used to be the default behavior. Turn it off for argoneut.
-   2016-09-28 Tingjun Yang : Clean up code to remove TTree related stuff.
-   2016-08-30 Lynn Garren : larsimobj/Simulation moved to lardataobj/Simulation
-   2016-08-04 Gianluca Petrillo : Replaced nsmaepace lar::utils with lar::util (issue [\#12367](/redmine/issues/12367 "Necessary Maintenance: Merge namespaces lar::utils and lar::util (Closed)"))
-   2016-08-03 Tingjun Yang : Save all points (including the first and last points).
-   2016-06-14 Gianluca Petrillo : Update after modification to the unit test infrastructure
-   2016-06-02 Lynn Garren : changes for larsoftobj
-   2016-06-02 Lynn Garren : build with nutools 2.00.00
-   2016-04-07 Tingjun Yang : New constants for MCC7.
-   2016-03-31 Tingjun Yang : Put back try/catch.
-   2016-03-30 Tingjun Yang : Use the next trajectory point if the first one is outside TPC.
-   2016-03-23 Tingjun Yang : Fix the offset in x if no t0 correction is available.
-   2016-03-09 Hamlet : Moved TrackUtils.h into lardata (lardata/RecoBaseArt)
-   2016-03-08 Hamlet : Moving recob::Track methods PitchInView() and ProjectedLength() into larreco/RecoAlg/TrackUtils.h
-   2016-03-02 Xiao Luo : update the calibration constants from data muon MIP
-   2016-02-12 Gianluca Petrillo : Core service modification applied (from scratch)
-   2016-02-10 Lynn Garren : refactored larsoft
-   2016-02-10 Lynn Garren : move Calorimetry to larana/Calorimetry
-   2016-10-10 Bruce Baller : Merge branch ‘develop’ into feature/bb\_TJWork
-   2016-10-10 Bruce Baller : Throw an exception if SkipAlgs isn’t configured properly. Ongoing development of Refine2DVertices. Add CheckWireHitRange. Work on EraseHit and CreateHit.
-   2016-10-10 Bruce Baller : Remove unused routine.
-   2016-10-10 Bruce Baller : Add EraseHit, CreateHit and CorrectTrajectoryHits. Fix bug in FindCloseHits. Don’t recalculate Chg in SetEndPoints.
-   2016-10-10 Bruce Baller : Add EraseHit, CreateHit and CorrectTrajectoryHits
-   2016-10-10 Bruce Baller : Add CheckWireHitRange, EraseHit, CreateHit. Remove step.
-   2016-10-10 Robert Sulej : missed commas spotted by Dorota
-   2016-10-09 Bruce Baller : Add CheckWireHitRange, EraseHit, CreateHit.
-   2016-10-07 Robert Sulej : Merge branch ‘develop’ of ssh://cdcvs.fnal.gov/cvs/projects/larreco into develop
-   2016-10-07 Robert Sulej : move clean-track-fraction to json parameters
-   2016-10-06 Bruce Baller : Ongoing development of Refine2DVertices - incomplete.
-   2016-10-06 Bruce Baller : Add CorrectTrajectoryHits.
-   2016-10-06 Bruce Baller : Add CorrectTrajectoryHits.
-   2016-10-06 Bruce Baller : Turn off RefineVtx algorithm - not ready for release yet.
-   2016-10-05 Bruce Baller : Ongoing Refine2DVertices development.
-   2016-10-05 Bruce Baller : Change FindCloseHits calling structure. Remove direction requirement in TPNearVertex.
-   2016-10-05 Bruce Baller : Change FindCloseHits calling structure
-   2016-10-05 Bruce Baller : Modify VtxHit.
-   2016-10-05 Bruce Baller : Change data stored in VtxHit. Add HitStatus enum. Ongoing Refine2DVertices development.
-   2016-10-05 Bruce Baller : Change data stored in VtxHit. Add CreateHit. Add kHitStatus enum
-   2016-10-05 Bruce Baller : Add HitStatus enum. Replace CloneHit (which didn’t work) with CreateHit.
-   2016-10-05 Bruce Baller : Change data stored in VtxHit.
-   2016-10-04 Bruce Baller : Remove option to make new hits - it is now always done.
-   2016-10-04 Bruce Baller : Remove option to make new hits - it is now always done.
-   2016-10-04 Bruce Baller : Convert fHits to vector of hits. Remove option to make new hits - it is now always done.
-   2016-10-04 Bruce Baller : Convert fHits to vector of hits. Remove option to make new hits - it is now always done.
-   2016-10-04 Bruce Baller : Add EraseHit and CloneHit. Convert fHits.
-   2016-10-04 Bruce Baller : Add EraseHit and CloneHit.
-   2016-10-04 Bruce Baller : Added VtxHit struct.
-   2016-10-03 Bruce Baller : Convert UseHit to bitset
-   2016-10-03 Bruce Baller : Convert UseHit to bitset
-   2016-10-03 Bruce Baller : Convert UseHit to bitset
-   2016-10-03 Bruce Baller : cleanup
-   2016-10-03 Bruce Baller : Create vtx status bitset.
-   2016-10-03 Bruce Baller : Create vtx status bitset.
-   2016-10-03 Bruce Baller : Create vtx status bitset.
-   2016-10-03 Bruce Baller : Create vtx status bitset.
-   2016-10-03 Bruce Baller : Rename newHits to nHits.
-   2016-10-03 Bruce Baller : Rename newHits to nHits.
-   2016-10-03 Bruce Baller : Remove EraseHit. Rename newHits to nHits.
-   2016-10-03 Bruce Baller : Remove EraseHit
-   2016-10-03 Bruce Baller : Rename newHits to nHits.
-   2016-10-02 Bruce Baller : Replace fPass with local pass. Move Attach routines and TPNearVertex to Utils. Add Refine2DVertices and FindVtxTraj. Loosen up mPull cut in AddLAHits. Simplify 2 point fit in FitTraj. Modify StartTraj to determine StepDir using the order of the points/hits passed to it.
-   2016-10-02 Bruce Baller : Remove fPass. Attach routines moved to Utils. Add FindVtxTraj and Refine2DVertices.
-   2016-10-02 Bruce Baller : Add EraseHit and FindCloseHits. Fix bug in ReverseTraj. Change calling structure to Attach routines. Fix bug in FitVertex.
-   2016-10-02 Bruce Baller : Add EraseHit. Change call to FindCloseHits.
-   2016-10-02 Bruce Baller : Add VtxTj and RefineVtx
-   2016-10-02 Bruce Baller : Add VtxTj and RefineVtx
-   2016-09-30 Bruce Baller : Merge branch ‘develop’ into feature/bb\_TJWork
-   2016-09-30 Bruce Baller : Improve trajectory definition at the beginning and end in MergeAndStore. Work on ReversePropagate and tweaks to StepCrawl for reverse propagation. Remove unnecessary fQuitAlg in MakeJunkTraj. Add checks for validity of WireHitRange. Add charge checking in GottaKink. Remove unnecessary EndTP code.
-   2016-09-30 Bruce Baller : Mods to FixTrajBegin and add FixTrajEnd.
-   2016-09-30 Bruce Baller : Remove EndTP. Add code to check the validity of WireHitRange. Change FindCloseHits structure.
-   2016-09-30 Bruce Baller : Remove EndTP. Add code to check the validity of WireHitRange.
-   2016-09-30 Bruce Baller : Change FixBegin to FixEnd
-   2016-09-30 Bruce Baller : Remove EndTP. Add parameters to check the validity of WireHitRange.
-   2016-09-29 Bruce Baller : Eliminate global work trajectory. Rename fGoodWork to fGoodTraj.
-   2016-09-29 Bruce Baller : Eliminate global work trajectory. Rename fGoodWork to fGoodTraj.
-   2016-09-29 Bruce Baller : Modify TrajHitsOK to use hit vectors instead of single hits. Move ReverseTraj to utils. Debugging improvements. Start work on ReversePropagate. Mods to allow more than 3 angle ranges. Fix logic errors in Find2DVertices. UpdateTraj in StepCrawl before checking for missed steps. Don’t use charge in FixTrajBegin for stopping tracks. Set dead wire condition in FillWireHitRange before setting hit ranges to allow for the situation where the channel status database is wrong.
-   2016-09-29 Bruce Baller : Modify TrajHitsOK to use hit vectors instead of single hits. Move ReverseTraj to utils.
-   2016-09-29 Bruce Baller : Add FindCloseHits and ReverseTraj
-   2016-09-29 Bruce Baller : Add FindCloseHits and ReverseTraj
-   2016-09-27 Bruce Baller : Code cleanup in AddHits.

larsim v06\_05\_00
----------------------------------------

-   2016-10-12 Lynn Garren : larsim v06\_05\_00 for larsoft v06\_11\_00
-   2016-10-12 Lynn Garren : classes moved to nutools
-   2016-10-12 Lynn Garren : these classes are now in nutools/ParticleNavigation

larevt v06\_03\_01
----------------------------------------

-   2016-10-13 Lynn Garren : larevt v06\_03\_01 for larsoft v06\_11\_00

lardata v06\_07\_00
------------------------------------------

-   2016-10-13 Lynn Garren : lardata v06\_07\_00 for larsoft v06\_11\_00
-   2016-10-12 Lynn Garren : AnalysisAlg classes moved to larreco and larana
-   2016-10-12 Lynn Garren : BezierTrack is deprecated
-   2016-10-12 Lynn Garren : AnalysisAlg classes moved to larreco and larana

larcore v06\_02\_03
------------------------------------------

-   2016-10-13 Lynn Garren : larcore v06\_02\_03 for larsoft v06\_11\_00

larsoftobj v1\_07\_00
----------------------------------------------

lardataobj v1\_07\_00
----------------------------------------------

larcoreobj v1\_05\_00
----------------------------------------------

larbatch v01\_23\_07
--------------------------------------------

-   2016-10-13 Lynn Garren : larbatch v01\_23\_07 for larsoft v06\_11\_00
-   2016-10-07 Herbert Greenlee : Fix bug adding mix options.

larutils v1\_09\_01
------------------------------------------

-   2016-10-12 Lynn Garren : larutils v1\_09\_01 for larsoft v06\_11\_00
-   2016-10-12 Lynn Garren : add s44
-   2016-10-11 Herbert Greenlee : Updatre repo.
