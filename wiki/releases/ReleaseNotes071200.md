LArSoft v07_12_00 Release Notes
======================================================================

-   **Table of contents**
-   [LArSoft v07_12_00 Release Notes](#LArSoft-v07_12_00-Release-Notes)
    -   [Purpose](#Purpose)
    -   [Breaking changes](#Breaking-changes)
    -   [New features](#New-features)
    -   [Bug fixes](#Bug-fixes)
    -   [Updated dependencies](#Updated-dependencies)
-   [Change List](#Change-List)
    -   [larsoft v07_12_00](#larsoft-v07_12_00)
    -   [lareventdisplay v07_02_00](#lareventdisplay-v07_02_00)
    -   [larexamples v07_00_18](#larexamples-v07_00_18)
    -   [larg4 v07_04_00](#larg4-v07_04_00)
    -   [larpandora v07_05_00](#larpandora-v07_05_00)
    -   [larwirecell v07_05_00](#larwirecell-v07_05_00)
    -   [larana v07_04_00](#larana-v07_04_00)
    -   [larreco v07_10_00](#larreco-v07_10_00)
    -   [larsim v07_08_00](#larsim-v07_08_00)
    -   [larevt v07_02_00](#larevt-v07_02_00)
    -   [lardata v07_01_00](#lardata-v07_01_00)
    -   [larcore v07_00_05](#larcore-v07_00_05)
    -   [larpandoracontent v03_14_02](#larpandoracontent-v03_14_02)
    -   [larsoftobj v07_08_00](#larsoftobj-v07_08_00)
    -   [lardataobj v07_06_00](#lardataobj-v07_06_00)
    -   [lardataalg v07_02_07](#lardataalg-v07_02_07)
    -   [larcorealg v07_03_00](#larcorealg-v07_03_00)
    -   [larcoreobj v07_00_01](#larcoreobj-v07_00_01)
    -   [larbatch v01_47_01](#larbatch-v01_47_01)
    -   [larutils v1_23_07](#larutils-v1_23_07)

[list of LArSoft releases](LArSoft_release_list)
Download instructions for [larsoft v07_12_00](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v07_12_00/larsoft-v07_12_00.html)
Download instructions for [just larsoftobj v07_08_00](http://scisoft.fnal.gov/scisoft/bundles/larsoftobj/v07_08_00/larsoftobj-v07_08_00.html)

Purpose
--------------------

-   changes in develop
-   approved feature branches

Breaking changes
--------------------------------------

-   [recob::Track](Breaking_Changes#Remove-deprecated-members-and-methods-from-recobTrack)

New features
------------------------------

-   larwirecell
    -   feature/brussell_scpos
    -   larwirecell feature/weihy_larwirecell
    -   feature/bv-protodune
    -   wirecell 0.10.1
-   larreco
    -   feature/bb_TCArgo
    -   feature/bb_TCArgo2
-   lazy db
    -   larevt feature/greenlee_lazy_db_develop
    -   ubevt feature/greenlee_lazy_db
    -   [https://indico.fnal.gov/event/19103/contribution/2/material/slides/0.pdf](https://indico.fnal.gov/event/19103/contribution/2/material/slides/0.pdf)
-   recob::Track
    -   [https://indico.fnal.gov/event/19103/contribution/1/material/slides/0.pdf](https://indico.fnal.gov/event/19103/contribution/1/material/slides/0.pdf)
    -   larreco feature/cerati_double2float_v2_breaktrack_deldepr_fixconflict
    -   feature/cerati_double2float_v2_breaktrack_deldepr
    -   lardataobj, lardata, lareventdisplay, larpandora, larreco, larana
    -   argoneutcode, sbndcode, dunetpc, lariatsoft, ubcrt, ubana, ubcore, ubobj, ubreco, ublite
-   larg4 updates
    -   artg4tk feature/wenzel_fixbuild
    -   larg4 feature/wenzel_fixbuild2

Bug fixes
------------------------

-   bug fixes for MicroBooNE
    -   larsim: feature/wketchum_OverrideRealDataBackTracker
    -   larana: feature/wketchum_OverrideRealData
-   larsim bug fix for [redmine issue 21417](https://cdcvs.fnal.gov/redmine/issues/21417)

Updated dependencies
----------------------------------------------

-   mrb v2_00_01
    -   mrb gitCheckout completely rewritten
    -   new commands mrb zapDist (zd) and zapInstall (zi)
-   wirecell v0_10_3
-   artg4tk v08_03_00

Change List
============================

larsoft v07_12_00
------------------------------------------

-   2018-11-28 Lynn Garren : artg4tk v08_03_00
-   2018-11-28 Lynn Garren : larsoft v07_12_00 for larsoft v07_12_00
-   2018-11-28 Lynn Garren : product versions
-   2018-11-28 Lynn Garren : mrb v2_00_01
-   2018-11-27 Lynn Garren : mrb v2 and wirecell v0_10_3

lareventdisplay v07_02_00
----------------------------------------------------------

-   2018-11-28 Lynn Garren : lareventdisplay v07_02_00 for larsoft v07_12_00
-   2018-11-28 Lynn Garren : Merge branch ‘feature/cerati_double2float_v2_breaktrack_deldepr’ into release/v07_12_00
-   2018-11-09 Giuseppe Cerati : update recob::Track interface with templated functions for returning TVector3-like objects

larexamples v07_00_18
--------------------------------------------------

-   2018-11-28 Lynn Garren : larexamples v07_00_18 for larsoft v07_12_00

larg4 v07_04_00
--------------------------------------

-   2018-11-28 Lynn Garren : larg4 v07_04_00 for larsoft v07_12_00
-   2018-11-28 Lynn Garren : braces for clang
-   2018-11-28 Lynn Garren : Merge branch ‘feature/wenzel_fixbuild2’ into release/v07_12_00
-   2018-11-28 Hans-Joachim Wenzel : add more analyzers
-   2018-11-28 Hans-Joachim Wenzel : remove dependencies to larsim, extend examples
-   2018-11-28 Hans-Joachim Wenzel : remove LArPhotonSD for now
-   2018-11-20 Hans-Joachim Wenzel : demonstrate the access to MCParticle.
-   2018-11-19 Hans-Joachim Wenzel : add module that checks the MCParticles
-   2018-11-07 Hans-Joachim Wenzel : remove fcl files here we will only have larsoft specific files. The other examples can be found in the artg4tk repository
-   2018-11-07 Hans-Joachim Wenzel : remove gdml files here we will only have larsoft specific files. The other examples can be found in the artg4tk repository
-   2018-11-07 Hans-Joachim Wenzel : add comments to split gdml file

larpandora v07_05_00
------------------------------------------------

-   2018-11-28 Lynn Garren : larpandora v07_05_00 for larsoft v07_12_00
-   2018-11-28 Lynn Garren : Merge branch ‘feature/cerati_double2float_v2_breaktrack_deldepr’ into release/v07_12_00
-   2018-11-15 Giuseppe Cerati : Remove deprecated data member, costructor, and functions from recob::Track
-   2018-11-09 Giuseppe Cerati : update recob::Track interface with templated functions for returning TVector3-like objects

larwirecell v07_05_00
--------------------------------------------------

-   2018-11-28 Lynn Garren : larwirecell v07_05_00 for larsoft v07_12_00
-   2018-11-28 Lynn Garren : wirecell v0_10_3
-   2018-11-27 Lynn Garren : Merge branch ‘feature/weihy_larwirecell’ into release/v07_12_00
-   2018-11-27 Lynn Garren : Merge branch ‘feature/bv-protodune’ into release/v07_12_00
-   2018-11-21 Hanyu Wei : option to set pedestals for RawDigits
-   2018-11-19 Brett Viren : Add a WCT source which converts from recob::Wire to IFrame.
-   2018-11-19 Hanyu Wei : update for empty depos
-   2018-11-16 Brooke Russell : fix position information

larana v07_04_00
----------------------------------------

-   2018-11-28 Lynn Garren : larana v07_04_00 for larsoft v07_12_00
-   2018-11-28 Lynn Garren : Merge branch ‘feature/cerati_double2float_v2_breaktrack_deldepr’ into release/v07_12_00
-   2018-11-20 Wesley Ketchum : add option in MCTruthT0Matching for overriding in case of Overlays
-   2018-11-09 Giuseppe Cerati : update recob::Track interface with templated functions for returning TVector3-like objects

larreco v07_10_00
------------------------------------------

-   2018-11-28 Lynn Garren : larreco v07_10_00 for larsoft v07_12_00
-   2018-11-28 Lynn Garren : Merge branch ‘feature/cerati_double2float_v2_breaktrack_deldepr_fixconflict’ into release/v07_12_00
-   2018-11-28 baller : Merge branch ‘feature/bb_TCArgo’ of ssh://cdcvs.fnal.gov/cvs/projects/larreco into feature/bb_TCArgo
-   2018-11-28 baller : Work on low energy electron reconstruction and tagging
-   2018-11-28 baller : Work on low energy electron reconstruction and tagging
-   2018-11-28 baller : Work on low energy electron reconstruction and tagging
-   2018-11-28 baller : Work on low energy electron reconstruction and tagging.
-   2018-11-28 baller : Work on low energy electron reconstruction and tagging
-   2018-11-26 Giuseppe Cerati : Merge remote-tracking branch ‘origin/feature/cerati_double2float_v2_breaktrack_deldepr’ into develop
-   2018-11-26 baller : Work on forecasting and Stopping strategy
-   2018-11-26 baller : Work on forecasting and Stopping strategy
-   2018-11-26 baller : Check for PDGCode 111
-   2018-11-26 baller : Work on forecasting and Stopping strategy
-   2018-11-26 baller : Work on forecasting and Stopping strategy
-   2018-11-26 baller : Work on forecasting and Stopping strategy
-   2018-11-26 baller : Work on forecasting and Stopping strategy
-   2018-11-26 Tingjun Yang : Update fcl parameters for uboone.
-   2018-11-20 Tingjun Yang : Merge remote-tracking branch ‘origin/feature/rsf_tcshowerPFP’ into feature/bb_TCArgo
-   2018-11-20 baller : Debug print using prt
-   2018-11-20 baller : Add dressed muons
-   2018-11-20 baller : Add dressed muons
-   2018-11-20 baller : Add dressed muons
-   2018-11-20 baller : Add dressed muons
-   2018-11-20 baller : Add dressed muons
-   2018-11-20 baller : Add dressed muons
-   2018-11-20 baller : Add dressed muons
-   2018-11-20 baller : Add dressed muons
-   2018-11-20 baller : Add dressed muons
-   2018-11-19 Rory Fitzpatrick : Merge commit ‘v07_08_00’ into feature/rsf_tcshowerPFP
-   2018-11-19 Rory Fitzpatrick : Merge commit ‘v07_07_00’ into feature/rsf_tcshowerPFP
-   2018-11-19 baller : Merge branch ‘develop’ into feature/bb_TCArgo
-   2018-11-18 baller : Add seed TPs
-   2018-11-18 baller : Add seed TPs and another forecast variable.
-   2018-11-18 baller : Add seed TPs
-   2018-11-18 baller : Ongoing development of forecasts and strategies
-   2018-11-18 baller : Tweak the vertex fit to de-weight short Tjs that could bias the fit
-   2018-11-18 baller : Don’t kill vertices with Tjs having PDGCode 111
-   2018-11-18 baller : Add temporary print
-   2018-11-16 baller : Add ChgSlope variant
-   2018-11-16 baller : Add ChgSlope variant
-   2018-11-16 baller : Debugging improvements
-   2018-11-16 baller : Debugging improvements
-   2018-11-16 baller : Study 2 printing
-   2018-11-16 baller : Debugging improvements
-   2018-11-16 baller : Work on forecast and strategy.
-   2018-11-16 baller : 3D matching improvements for PDGCode 111
-   2018-11-16 baller : Add variable to TjForecast
-   2018-11-15 Giuseppe Cerati : restore functionality
-   2018-11-15 Giuseppe Cerati : restore functionality
-   2018-11-15 Giuseppe Cerati : Remove deprecated data member, costructor, and functions from recob::Track
-   2018-11-15 baller : Adjudicate vertices in Comp3DVx.
-   2018-11-14 Patrick Gartung : Merge remote-tracking branch ‘origin/develop’ into develop
-   2018-11-14 baller : Reduce the print volume.
-   2018-11-13 Christopher Backhouse : Merge branch ‘develop’ of ssh://cdcvs.fnal.gov/cvs/projects/larreco into develop
-   2018-11-13 Christopher Backhouse : Iterate over the wires in a pseudo-random order, rather than sweeping through them linearly. This helps us converge to the correct minimum more efficiently and leads to much better results on my test event.
-   2018-11-12 baller : Make a high count match a PFParticle first.
-   2018-11-12 baller : Work on forecasting and strategies
-   2018-11-12 baller : Add PDGCode 111
-   2018-11-09 Giuseppe Cerati : update recob::Track interface with templated functions for returning TVector3-like objects
-   2018-11-09 baller : Require doForecast true. Work on Slowing strategy.
-   2018-11-08 baller : Add ChgSlope function
-   2018-11-08 baller : Add ChgSlope function
-   2018-11-08 baller : Add Strategy bit names and forecast variables.
-   2018-11-08 baller : Add Strategy bit names and forecast variables.
-   2018-11-08 baller : Add Strategy bit names.
-   2018-11-08 baller : Remove badSlice
-   2018-11-08 baller : Merge branch ‘feature/bb_TCArgo’ of ssh://cdcvs.fnal.gov/cvs/projects/larreco into feature/bb_TCArgo
-   2018-11-07 baller : Merge branch ‘develop’ into feature/bb_TCArgo
-   2018-11-07 baller : Hack it so it builds
-   2018-11-07 baller : Make function names more descriptive. Work on trajectory reconstruction strategy.
-   2018-11-07 baller : Make function names more descriptive. Work on trajectory reconstruction strategy.
-   2018-11-07 baller : Make function names more descriptive. Work on trajectory reconstruction strategy.
-   2018-11-07 baller : Make function names more descriptive. Work on trajectory reconstruction strategy.
-   2018-11-07 baller : Make function names more descriptive.
-   2018-11-07 baller : Fix bug in merging hits.
-   2018-11-07 baller : Fix bug in merging hits.
-   2018-11-07 baller : Fix bug in merging hits.
-   2018-11-07 Wanwei Wu : add the association between spacepoints and hits (trajcluster hits in hitCol).
-   2018-10-30 Tingjun Yang : Fix comparison between signed and unsigned numbers.
-   2018-10-30 baller : Merge branch ‘develop’ into feature/bb_TCArgo
-   2018-10-30 baller : Add DoForecast fcl input.
-   2018-10-30 baller : Fix bug in FindCloseHits.
-   2018-10-30 baller : Add TjForecast struct vector. Fixed incorrect size of Trajectory AlgMod. Add kStiff tracking strategy.
-   2018-10-30 baller : Add TjForecast struct vector. Fixed incorrect size of Trajectory AlgMod. Add kStiff tracking strategy.
-   2018-10-30 baller : Add TjForecast struct vector. Fixed incorrect size of Trajectory AlgMod. Add kStiff tracking strategy.
-   2018-10-30 baller : Add TjForecast struct vector
-   2018-10-29 baller : Throw an exception if the hit collection isn’t loaded. Match MCParticles to hits before reconstruction.
-   2018-10-29 baller : Added electronTag fcl configuration. Pass reconstruction pass to Find2DVertices. Fixes to FindJunkTraj.
-   2018-10-29 baller : Removed SetDir and added VtxIndPlnNoChg and kEnvDeadWire. Add Trajectory StartEnd. Added electronTag fcl configuration.
-   2018-10-29 baller : Removed SetDir and added VtxIndPlnNoChg and kEnvDeadWire. Add Trajectory StartEnd. Added electronTag fcl configuration.
-   2018-10-29 baller : Pass reconstruction pass to Find2DVertices.
-   2018-10-29 baller : Pass reconstruction pass to Find2DVertices. Add kNewVtxCuts algorithm tweaks. Fix bugs.
-   2018-10-29 baller : Removed SetDir and added VtxIndPlnNoChg and kEnvDeadWire. Add Trajectory StartEnd. Added electronTag fcl configuration.
-   2018-10-29 baller : Removed SetDir and added VtxIndPlnNoChg and kEnvDeadWire. Add Trajectory StartEnd. Added electronTag fcl configuration and Forecast function.
-   2018-10-29 baller : Removed SetDir and added VtxIndPlnNoChg and kEnvDeadWire. Add Trajectory StartEnd. Added electronTag fcl configuration, Forecast function. Tweaks and bug fixes
-   2018-10-29 baller : Removed SetDir and added VtxIndPlnNoChg and kEnvDeadWire. Add Trajectory StartEnd. Added electronTag fcl configuration.
-   2018-10-29 baller : Removed SetDir and added VtxIndPlnNoChg and kEnvDeadWire. Add Trajectory StartEnd. Added electronTag fcl configuration.
-   2018-10-29 baller : Removed SetDir and added VtxIndPlnNoChg
-   2018-10-24 baller : Fix indentation
-   2018-10-23 Rory Fitzpatrick : updated fcl files for use with mcc9
-   2018-10-23 Rory Fitzpatrick : updated fcls for uboone
-   2018-10-19 baller : back up a bit
-   2018-10-19 baller : fix bug in MakeJunkTraj
-   2018-10-19 baller : fix bug in Fit2D
-   2018-10-19 baller : fix bug in Fit2D
-   2018-10-19 baller : Merge branch ‘develop’ into feature/bb_TCArgo
-   2018-10-19 baller : Move core stepping algorithms to StepUtils.
-   2018-10-19 baller : Move core stepping algorithms to StepUtils.
-   2018-10-19 baller : Move core stepping algorithms to StepUtils.
-   2018-10-19 baller : Move core stepping algorithms to StepUtils.
-   2018-10-19 baller : Fix bug
-   2018-10-19 baller : Move core stepping algorithms to StepUtils.
-   2018-10-19 baller : noop
-   2018-10-19 baller : Move core stepping algorithms to StepUtils.
-   2018-10-19 baller : Move core stepping algorithms to StepUtils.
-   2018-10-19 baller : Move core stepping algorithms to StepUtils.
-   2018-10-15 baller : Add new kNewStpCuts cuts.
-   2018-10-15 baller : Change DumpTj and debug printing.
-   2018-10-15 baller : Change debug printing
-   2018-10-15 baller : Change tj point loop
-   2018-10-09 baller : Merge branch ‘develop’ into feature/bb_TCArgo
-   2018-10-09 baller : Tweak debug printing
-   2018-10-09 baller : Tweak the ChgRMS calculation.
-   2018-10-09 baller : Tweak vertex cuts
-   2018-10-05 baller : Add two algorithms with bundled cuts. Add dbgDump option to dump Tj points to a csv file.
-   2018-10-05 baller : Add two algorithms with bundled cuts. Add dbgDump option to dump Tj points to a csv file.
-   2018-10-05 baller : Add two algorithms with bundled cuts. Add dbgDump option to dump Tj points to a csv file.
-   2018-10-05 baller : Add two algorithms with bundled cuts. Add dbgDump option to dump Tj points to a csv file.
-   2018-10-05 baller : Add two algorithms with bundled cuts. Add dbgDump option to dump Tj points to a csv file.
-   2018-10-05 baller : Add two algorithms with bundled cuts.
-   2018-10-01 baller : Merge branch ‘develop’ into feature/bb_TCArgo
-   2018-10-01 baller : Code tweak and bug fix in AnalyzeHits
-   2018-10-01 baller : Add feature to turn off M3DVxTj
-   2018-10-01 baller : Add feature to turn off M3DVxTj
-   2018-10-01 baller : Add feature to turn off M3DVxTj
-   2018-10-01 baller : Check for empty hitCol. Improve debugging.
-   2018-09-28 baller : Fixed error in AlgBitNames
-   2018-09-28 baller : Add optional user specification of aveHitRMS. Fix logic error in FindUseHits. Apply minMCSMom cut in CheckTraj.

larsim v07_08_00
----------------------------------------

-   2018-11-28 Lynn Garren : larsim v07_08_00 for larsoft v07_12_00
-   2018-11-28 Jason Stock : Merge branch ‘feature/JStock_fix21417’ into develop
-   2018-11-28 Jason Stock : Merge branch ‘develop’ of ssh://cdcvs.fnal.gov/cvs/projects/larsim into develop
-   2018-11-28 Jason Stock : Merge branch ‘feature/JStock_fix21417’ of ssh://cdcvs.fnal.gov/cvs/projects/larsim into feature/JStock_fix21417
-   2018-11-27 Jason Stock : Bugfix larsoft issue [redmine issue 21417](https://cdcvs.fnal.gov/redmine/issues/21417)
-   2018-11-27 Jason Stock : Bugfix larsoft issue [redmine issue 21417](https://cdcvs.fnal.gov/redmine/issues/21417)
-   2018-11-21 Wesley Ketchum : Merge branch ‘feature/wketchum_OverrideRealDataBackTracker’ into develop
-   2018-11-21 Wesley Ketchum : forgot a default option on override real data…
-   2018-11-21 Wesley Ketchum : Merge branch ‘feature/wketchum_OverrideRealDataBackTracker’ into develop
-   2018-11-21 Alex Himmel : Bug fix: add Reflected label to reflected SimPhoton collection (missed since CI does not have any tests with reflected light).
-   2018-11-20 Wesley Ketchum : add in override paramater to BackTracker for use of overlays on top of data events
-   2018-11-19 Patrick Gartung : Merge branch ‘master’ into develop
-   2018-11-19 Patrick Gartung : Revert “update larevt version”
-   2018-11-19 Patrick Gartung : Revert “correct larsim version”
-   2018-11-15 Patrick Gartung : correct larsim version
-   2018-11-15 Patrick Gartung : update larevt version

larevt v07_02_00
----------------------------------------

-   2018-11-28 Lynn Garren : larevt v07_02_00 for larsoft v07_12_00
-   2018-11-28 Lynn Garren : Merge branch ‘feature/greenlee_lazy_db_develop’ into release/v07_12_00
-   2018-11-08 Herbert Greenlee : Make database service database accesses lazy.

lardata v07_01_00
------------------------------------------

-   2018-11-28 Lynn Garren : lardata v07_01_00 for larsoft v07_12_00
-   2018-11-28 Lynn Garren : Merge branch ‘feature/cerati_double2float_v2_breaktrack_deldepr’ into release/v07_12_00
-   2018-11-15 Giuseppe Cerati : Remove deprecated data member, costructor, and functions from recob::Track
-   2018-11-09 Giuseppe Cerati : update recob::Track interface with templated functions for returning TVector3-like objects

larcore v07_00_05
------------------------------------------

larpandoracontent v03_14_02
--------------------------------------------------------------

larsoftobj v07_08_00
------------------------------------------------

-   2018-11-28 Lynn Garren : larsoftobj v07_08_00 for larsoft v07_12_00
-   2018-11-28 Lynn Garren : product versions

lardataobj v07_06_00
------------------------------------------------

-   2018-11-28 Lynn Garren : lardataobj v07_06_00 for larsoft v07_12_00
-   2018-11-26 Giuseppe Cerati : Merge branch ‘develop’ into feature/cerati_double2float_v2_breaktrack_deldepr
-   2018-11-12 Giuseppe Cerati : add documentation about Double32_t
-   2018-11-26 Giuseppe Cerati : remove spurious const
-   2018-11-15 Giuseppe Cerati : fix GlobalToLocalRotationAtPoint\<T\> and LocalToGlobalRotationAtPoint\<T\>
-   2018-11-15 Giuseppe Cerati : Remove deprecated data member, costructor, and functions from recob::Track
-   2018-11-09 Giuseppe Cerati : update recob::Track interface with templated functions for returning TVector3-like objects

lardataalg v07_02_07
------------------------------------------------

-   2018-11-28 Lynn Garren : lardataalg v07_02_07 for larsoft v07_12_00

larcorealg v07_03_00
------------------------------------------------

larcoreobj v07_00_01
------------------------------------------------

larbatch v01_47_01
--------------------------------------------

-   2018-11-28 Lynn Garren : larbatch v01_47_01 for larsoft v07_12_00
-   2018-11-26 Herbert Greenlee : Use makeProjectName subdefinition names.

larutils v1_23_07
------------------------------------------

-   2018-11-28 Lynn Garren : larutils v1_23_07 for larsoft v07_12_00
-   2018-11-18 Thomas Junk : revert back to /grid/fermiapp on mac
-   2018-11-16 Thomas Junk : remove grid/fermiapp for mac
