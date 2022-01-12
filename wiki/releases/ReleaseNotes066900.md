LArSoft v06_69_00 Release Notes
======================================================================

-   **Table of contents**
-   [LArSoft v06_69_00 Release Notes](#LArSoft-v06_69_00-Release-Notes)
    -   [Purpose](#Purpose)
    -   [Breaking Changes](#Breaking-Changes)
    -   [New features](#New-features)
    -   [Bug fixes](#Bug-fixes)
    -   [Updated dependencies](#Updated-dependencies)
-   [Change List](#Change-List)
    -   [larsoft v06_69_00](#larsoft-v06_69_00)
    -   [lareventdisplay v06_17_03](#lareventdisplay-v06_17_03)
    -   [larexamples v06_10_03](#larexamples-v06_10_03)
    -   [larpandora v06_24_00](#larpandora-v06_24_00)
    -   [larwirecell v06_10_03](#larwirecell-v06_10_03)
    -   [larana v06_17_01](#larana-v06_17_01)
    -   [larreco v06_55_00](#larreco-v06_55_00)
    -   [larsim v06_41_00](#larsim-v06_41_00)
    -   [larevt v06_18_03](#larevt-v06_18_03)
    -   [lardata v06_39_03](#lardata-v06_39_03)
    -   [larcore v06_17_01](#larcore-v06_17_01)
    -   [larpandoracontent v03_10_00](#larpandoracontent-v03_10_00)
    -   [larsoftobj v1_40_01](#larsoftobj-v1_40_01)
    -   [lardataobj v1_28_02](#lardataobj-v1_28_02)
    -   [larcorealg v1_17_01](#larcorealg-v1_17_01)
    -   [larcoreobj v1_21_00](#larcoreobj-v1_21_00)
    -   [larbatch v01_37_00](#larbatch-v01_37_00)
    -   [larutils v1_21_00](#larutils-v1_21_00)

[list of LArSoft releases](LArSoft_release_list)
Download instructions for [larsoft v06_69_00](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v06_69_00/larsoft-v06_69_00.html)
Download instructions for [just larsoftobj v1_40_01](http://scisoft.fnal.gov/scisoft/bundles/larsoftobj/v1_40_01/larsoftobj-v1_40_01.html)

Purpose
--------------------

-   approved changes

Breaking Changes
--------------------------------------

-   nutools geniehelper now uses the ifdh_art service instead of calling ifdhc directly.
    -   add an “IFDH: {}” line to the services block of appropriate prodgenie fcl files.

New features
------------------------------

-   feature/TrkShwId3D
    -   consistency update for the SVM-based track/shower Id in Pandora
    -   dunetpc and larpandora
-   feature/mdeltutt_evtwgt_migration
    -   move EventWeight from uboonecode to larsim
    -   larsim, uboonecode
    -   This is a breaking change for users of uboonecode. The fix is to merge the feature branch into your copy of uboonecode.
-   feature/blake_truthmatching_asmith
    -   larpandora
    -   propagate the new BackTrackerMatching data product into the larpandora Producer and Analyser modules
-   build larbatch as current

Bug fixes
------------------------

-   larreco - resolve [\#19067](/redmine/issues/19067 "Bug: Trajcluster segfault (Resolved)")
    -   this bug fix also included a change to data products

Updated dependencies
----------------------------------------------

-   nutools v2_18_01 with NOvA updates
-   dk2nu is now dk2nugenie and dk2nudata so data products can be accessed via gallery

Change List
============================

larsoft v06_69_00
------------------------------------------

-   2018-02-21 Lynn Garren : larsoft v06_69_00 for larsoft v06_69_00
-   2018-02-21 Lynn Garren : update versions
-   2018-02-14 Lynn Garren : fix oversight

lareventdisplay v06_17_03
----------------------------------------------------------

-   2018-02-21 Lynn Garren : lareventdisplay v06_17_03 for larsoft v06_69_00

larexamples v06_10_03
--------------------------------------------------

-   2018-02-21 Lynn Garren : larexamples v06_10_03 for larsoft v06_69_00

larpandora v06_24_00
------------------------------------------------

-   2018-02-21 Lynn Garren : larpandora v06_24_00 for larsoft v06_69_00
-   2018-02-21 Lynn Garren : Merge branch ‘feature/blake_truthmatching_asmith’ into release/v06_69_00
-   2018-02-19 Andrew Blake : Analyzer modules will switch to BackTracker truth-matching if SimChannels are not present.
-   2018-02-19 Andrew Smith : removed the skeleton neutrino id module and the associated LArPandoraSlices class
-   2018-02-19 loressa : Updates needed for consistency after 3D implementation of SVM-based track/shower Id
-   2018-02-19 Andrew Smith : Automatically try to use hit to mcparticle associations if simchannels are not available
-   2018-02-18 Andrew Blake : Add an optional switch for TrackCreation and ShowerCreation modules to try to make tracks and showers for all PFParticles.
-   2018-02-18 Andrew Blake : Add functionality to perform reco/truth matching using back-tracker information
-   2018-02-18 Andrew Blake : Add an option to use bcak-tracker reco/truth matching in all LArPandoraAnalysis analyzer modules. Also, add separate labels for tracks and showers (to accommodate their production by separate modules), remove the separate label for clusters, and remove checks on seeds altogether. LArPandoraAnalysis analyzer modules will now look for PFParticle/T0 associations rather than Track/T0 associations.

larwirecell v06_10_03
--------------------------------------------------

-   2018-02-21 Lynn Garren : larwirecell v06_10_03 for larsoft v06_69_00

larana v06_17_01
----------------------------------------

-   2018-02-21 Lynn Garren : larana v06_17_01 for larsoft v06_69_00

larreco v06_55_00
------------------------------------------

-   2018-02-21 Lynn Garren : larreco v06_55_00 for larsoft v06_69_00
-   2018-02-21 Lynn Garren : use nutools v2_18_02
-   2018-02-21 baller : Add histograms
-   2018-02-21 baller : Add histograms
-   2018-02-21 baller : Add histograms
-   2018-02-21 baller : Comment out UpdateTjEnvironment
-   2018-02-21 baller : Use new TP Environment variable
-   2018-02-21 baller : Add study histograms. Evaluate 2D PID. Removed kalman track fit histograms.
-   2018-02-21 baller : Add study histograms. Evaluate 2D PID. Removed kalman track fit histograms.
-   2018-02-21 baller : Add study histograms. Evaluate 2D PID. Removed kalman track fit histograms.
-   2018-02-21 baller : Use Point2_t.
-   2018-02-21 baller : Add TP Environment bitset. Add Tj NeedsUpdate bool - replacement for fUpdateTrajOK in TrajClusterAlg.
-   2018-02-21 baller : Add TP Environment bitset. Add Tj NeedsUpdate bool - replacement for fUpdateTrajOK in TrajClusterAlg.
-   2018-02-21 baller : Add TP Environment bitset. Add Tj NeedsUpdate bool - replacement for fUpdateTrajOK in TrajClusterAlg.
-   2018-02-21 baller : Add TP Environment bitset. Add Tj NeedsUpdate bool - replacement for fUpdateTrajOK in TrajClusterAlg.
-   2018-02-21 baller : Add TjDirection and UpdateTjEnvironment. Add protection in MCSThetaRMS. Debug print improvements
-   2018-02-21 baller : Add TjDirection and UpdateTjEnvironment
-   2018-02-19 baller : Merge branch ‘develop’ into feature/bb_TJWork
-   2018-02-19 baller : Work on TruVxCounts
-   2018-02-19 baller : Work on TruVxCounts
-   2018-02-19 baller : Add code to debug hit -\> MCParticle associations
-   2018-02-19 baller : Remove commented line
-   2018-02-16 baller : Backed out version update when trying to merge with v06_67_01
-   2018-02-16 baller : Improve printout
-   2018-02-16 baller : Add NearInShower variable. Rename variable
-   2018-02-16 baller : Add NearInShower variable. Rename variable
-   2018-02-16 baller : Add NearInShower variable.
-   2018-02-16 baller : Add NearInShower variable.
-   2018-02-16 baller : Move CheckHiMultHits. Temporary code to debug MCParticle - hit associations commented out.
-   2018-02-14 baller : Comment out writing SpacePoints - needs work.
-   2018-02-14 baller : Simplify filling ShowerPoints
-   2018-02-14 baller : Name change
-   2018-02-14 baller : Improve printing.
-   2018-02-14 baller : Add another trim points condition.
-   2018-02-14 baller : Comment out TP3 code - needs work
-   2018-02-14 baller : Comment out TP3 code - needs work
-   2018-02-14 baller : Add FTBChg algorithm
-   2018-02-14 baller : Add FTBChg algorithm
-   2018-02-14 baller : Add FTBChg algorithm
-   2018-02-10 baller : Reconcile Giuseppe’s fixes to make PFParticle - shower associations with local changes. Hopefully done correctly…
-   2018-02-10 baller : Merge branch ‘develop’ into feature/bb_TJWork
-   2018-02-10 baller : Merge branch ‘develop’ into feature/bb_TJWork
-   2018-02-10 baller : Add final check to ensure that all PFParticles have a start vertex.
-   2018-02-10 baller : Tweak delta-ray tag for LArIAT
-   2018-02-10 baller : Commit Tp3 changes before updating versions
-   2018-02-10 baller : Commit Tp3 changes before updating versions
-   2018-02-10 baller : Remove Tp3 Fit variables
-   2018-02-06 baller : Check for IsValid before writing SpacePoints
-   2018-02-06 baller : Add DirectionFixed to PFPstruct
-   2018-02-06 baller : Work on Tp3 finding
-   2018-02-06 baller : Work on Tp3 finding
-   2018-02-06 baller : Add utility functions
-   2018-02-06 baller : Add utility functions
-   2018-01-30 baller : Add TestBeam mode. Temporarily disable stuff for development
-   2018-01-30 baller : Add TestBeam mode.
-   2018-01-30 baller : Add TestBeam mode
-   2018-01-30 baller : Add TestBeam mode
-   2018-01-30 baller : Add TestBeam mode
-   2018-01-26 baller : Add check for valid Tj ID. Optionally set non-MC-matched hits invalid for testing.
-   2018-01-26 baller : Add check for valid Tj ID
-   2018-01-26 baller : Add check for valid Tj ID
-   2018-01-26 baller : Check for bogus Tj ID
-   2018-01-26 baller : Removed spurious code that doesn’t do much and was poorly constructed.
-   2018-01-26 baller : Merge branch ‘develop’ into feature/bb_TJWork
-   2018-01-26 baller : Comment out suspicious code in UpdateTraj.
-   2018-01-25 baller : Merge branch ‘feature/bb_TJWork’ of ssh://cdcvs.fnal.gov/cvs/projects/larreco into feature/bb_TJWork
-   2018-01-25 baller : Comment out code to fill a wire signal vector for use in checking if a signal exists at a point. The code works but doesn’t exactly do what is needed.
-   2018-01-25 baller : Remove unused references.
-   2018-01-25 baller : Reduce minPts to 2.
-   2018-01-25 baller : Removed unused reference
-   2018-01-23 baller : Protect against bad reference variable. Fix bug in AttachTrajTovertex.
-   2018-01-23 baller : Protect against bad reference variable
-   2018-01-23 baller : 3D match InShower Tis
-   2018-01-23 baller : Don’t clobber high score vertices on InShower Tis
-   2018-01-23 baller : Remove RecoVx2Count and simplify TruVxCounts
-   2018-01-23 baller : Remove RecoVx2Count and simplify TruVxCounts
-   2018-01-23 baller : Change hard cuts
-   2018-01-23 baller : Only create a neutrino PFParticle if 3D matching is enabled
-   2018-01-22 Giuseppe Cerati : add protection against no ss.ParentID
-   2018-01-22 baller : Write SpacePoints to the event
-   2018-01-22 baller : Remove track and space point variables.
-   2018-01-22 baller : Use old backtracker code
-   2018-01-22 baller : Pass fcnLabel to TrimEndPts.
-   2018-01-22 baller : Pass fcnLabel to TrimEndPts.
-   2018-01-22 baller : Remove track fitting. Fix bugs
-   2018-01-22 baller : Remove track fitting
-   2018-01-20 baller : Merge branch ‘develop’ into feature/bb_TJWork
-   2018-01-20 baller : Change some defaults
-   2018-01-20 baller : Allow using the old or new backtrackers.
-   2018-01-20 baller : Allow using the old or new backtrackers.
-   2018-01-20 baller : code cleanup

larsim v06_41_00
----------------------------------------

-   2018-02-21 Lynn Garren : larsim v06_41_00 for larsoft v06_69_00
-   2018-02-20 Lynn Garren : Merge branch ‘feature/mdeltutt_evtwgt_migration’ into release/v06_69_00
-   2018-02-14 Marco Del Tutto : clean up and document more
-   2018-02-12 Marco Del Tutto : adjusting fcls - ub fcls are in uboonecode, here keep only the general config for genie reweight, and an example for running
-   2018-02-09 Marco Del Tutto : Core of EventWeight migrated from uboonecode to larsim

larevt v06_18_03
----------------------------------------

-   2018-02-21 Lynn Garren : larevt v06_18_03 for larsoft v06_69_00

lardata v06_39_03
------------------------------------------

-   2018-02-21 Lynn Garren : lardata v06_39_03 for larsoft v06_69_00
-   2018-02-21 Lynn Garren : use nutools v2_18_02
-   2018-02-16 Giuseppe Cerati : add elmass

larcore v06_17_01
------------------------------------------

larpandoracontent v03_10_00
--------------------------------------------------------------

larsoftobj v1_40_01
----------------------------------------------

-   2018-02-21 Lynn Garren : larsoftobj v1_40_01 for larsoft v06_69_00
-   2018-02-21 Lynn Garren : update versions

lardataobj v1_28_02
----------------------------------------------

-   2018-02-21 Lynn Garren : lardataobj v1_28_02 for larsoft v06_69_00
-   2018-02-21 Lynn Garren : use nusimdata v1_10_00

larcorealg v1_17_01
----------------------------------------------

larcoreobj v1_21_00
----------------------------------------------

larbatch v01_37_00
--------------------------------------------

-   2018-02-21 Lynn Garren : larbatch v01_37_00 for larsoft v06_69_00
-   2018-02-21 Lynn Garren : Merge branch ‘develop’ into release/v06_69_00
-   2018-02-21 Herbert Greenlee : Add back status 65 exception for art versions before v2_01.
-   2018-02-21 Lynn Garren : declare larbatch current
-   2018-02-20 Herbert Greenlee : Make failure to declare histogram files nonfatal.
-   2018-02-17 Herbert Greenlee : Tweak tarball extraction.
-   2018-02-17 Herbert Greenlee : Untar .txt files also.
-   2018-02-16 Herbert Greenlee : Add some protections against unmatched wildcards.
-   2018-02-15 Herbert Greenlee : Fix bug in condor_lar with missing subrun dir. Increase jobsub timeout to 1 hour
-   2018-02-14 Herbert Greenlee : Don’t crash if output tarball is unextractable.
-   2018-02-14 Herbert Greenlee : Merge branch ‘develop’ of ssh://cdcvs.fnal.gov/cvs/projects/larbatch into develop
-   2018-02-14 Herbert Greenlee : Only make one tarball on batch worker.

larutils v1_21_00
------------------------------------------
