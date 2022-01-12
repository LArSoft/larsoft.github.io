LArSoft v08_02_00 Release Notes
======================================================================

-   **Table of contents**
-   [LArSoft v08_02_00 Release Notes](#LArSoft-v08_02_00-Release-Notes)
    -   [Purpose](#Purpose)
    -   [New features](#New-features)
    -   [Bug fixes](#Bug-fixes)
    -   [Updated dependencies](#Updated-dependencies)
-   [Change List](#Change-List)
    -   [larsoft v08_02_00](#larsoft-v08_02_00)
    -   [lareventdisplay v08_00_02](#lareventdisplay-v08_00_02)
    -   [larexamples v08_00_01](#larexamples-v08_00_01)
    -   [larg4 v08_00_01](#larg4-v08_00_01)
    -   [larpandora v08_01_01](#larpandora-v08_01_01)
    -   [larwirecell v08_01_00](#larwirecell-v08_01_00)
    -   [larana v08_00_02](#larana-v08_00_02)
    -   [larreco v08_02_00](#larreco-v08_02_00)
    -   [larsim v08_00_01](#larsim-v08_00_01)
    -   [larevt v08_00_01](#larevt-v08_00_01)
    -   [lardata v08_00_01](#lardata-v08_00_01)
    -   [larcore v08_00_00](#larcore-v08_00_00)
    -   [larpandoracontent v03_14_03](#larpandoracontent-v03_14_03)
    -   [larsoftobj v08_01_00](#larsoftobj-v08_01_00)
    -   [lardataobj v08_00_00](#lardataobj-v08_00_00)
    -   [lardataalg v08_01_00](#lardataalg-v08_01_00)
    -   [larcorealg v08_00_00](#larcorealg-v08_00_00)
    -   [larcoreobj v08_00_00](#larcoreobj-v08_00_00)
    -   [larbatch v01_47_03](#larbatch-v01_47_03)
    -   [larutils v1_23_08](#larutils-v1_23_08)

[list of LArSoft releases](LArSoft_release_list)
Download instructions for [larsoft v08_02_00](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v08_02_00/larsoft-v08_02_00.html)
Download instructions for [just larsoftobj v08_01_00](http://scisoft.fnal.gov/scisoft/bundles/larsoftobj/v08_01_00/larsoftobj-v08_01_00.html)

Purpose
--------------------

New features
------------------------------

-   larwirecell feature/bviren_perapa
-   larreco feature/bb_TCArgo2
    -   The reconstruction performance using the MCC9 sliced hit collection was not that good although the performance did improve using the tweaks that I described in the previous email. I made another code change that resulted in a 5% increase in Efficiency \* Purity and pushed this change to the feature branch. Here is a summary of the changes:The reconstruction performance using the MCC9 sliced hit collection was not that good although the performance did improve using the tweaks that I described in the previous email. I made another code change that resulted in a 5% increase in Efficiency \* Purity and pushed this change to the feature branch. Here is a summary of the changes:
    -   Previously, TrajCluster only knew about the sliced hit collection that was passed to it, so many trajectories got broken when hits were erroneously not included in the collection. The function SignalAtTp previously only checked the hits in the sliced hit collection for the existence of a wire signal at a specific cryostat, tpc, plane, wire, tick position but now tests the full hit collection.
    -   These four lines summarize the state of things on this feature branch with uB events:

            # reconstruct 320 reference data events
            Evt 500 El 0.47 Mu 0.60 Pi 0.70 P 0.65 MuPiKP 0.63 BadEP 229 longGood 0.84 MCP cnt 2515 PFP 0.51
            reco:trajcluster2:TrajCluster                   1.21304       49.2282       2967.27       7.98704       225.267        320    
            # reconstruct 320 reference data events with NewStpCuts + NewVtxCuts + SignalAtTp change
            Evt 500 El 0.44 Mu 0.75 Pi 0.72 P 0.66 MuPiKP 0.72 BadEP 154 longGood 0.89 MCP cnt 2515 PFP 0.60
            reco:trajcluster2:TrajCluster                  0.829552       45.8936       2700.58       6.02367       179.068        320

    -   The bottom line is that the Efficiency \* Purity 2D metric for muons, pions, kaons and protons improved from 0.63 to 0.72. The 3D metric PFP improved from 0.51 to 0.60. The number of really bad Efficiency \* Purity trajectories dropped from 229 to 154.
    -   A significant component of these improvements, DoForecast, in cluster_microboone.fcl is already defined and will be in place when this feature branch is merged with develop.

Bug fixes
------------------------

Updated dependencies
----------------------------------------------

-   wirecell v0_10_7
-   mrb v2_00_02

Change List
============================

larsoft v08_02_00
------------------------------------------

-   2019-01-02 Lynn Garren : product versions
-   2019-01-02 Lynn Garren : larsoft v08_02_00 for larsoft v08_01_01

lareventdisplay v08_00_02
----------------------------------------------------------

-   2019-01-02 Lynn Garren : lareventdisplay v08_00_02 for larsoft v08_01_01

larexamples v08_00_01
--------------------------------------------------

larg4 v08_00_01
--------------------------------------

larpandora v08_01_01
------------------------------------------------

-   2019-01-02 Lynn Garren : larpandora v08_01_01 for larsoft v08_01_01

larwirecell v08_01_00
--------------------------------------------------

-   2019-01-02 Lynn Garren : larwirecell v08_01_00 for larsoft v08_01_01
-   2019-01-02 Lynn Garren : Merge branch ‘feature/bviren_perapa’ into release/v08_01_01
-   2019-01-02 Lynn Garren : wirecell v0_10_7
-   2019-01-02 Brett Viren : Fix indexing bug found by Hanyu.
-   2018-12-31 Brett Viren : Restore lost built-in sparsifying.
-   2018-12-28 Brett Viren : Better handle sparse input frames.
-   2018-12-27 Brett Viren : Handle an input IFrame that is sparse and give parity to the case where recob::Wire is made sparse or not.

larana v08_00_02
----------------------------------------

-   2019-01-02 Lynn Garren : larana v08_00_02 for larsoft v08_01_01

larreco v08_02_00
------------------------------------------

-   2019-01-02 Lynn Garren : larreco v08_02_00 for larsoft v08_01_01
-   2019-01-02 Lynn Garren : workaround for gcc 7.3 complaint
-   2019-01-02 Lynn Garren : Merge branch ‘feature/bb_TCArgo2’ into release/v08_01_01
-   2018-12-29 baller : remove std::cout
-   2018-12-29 baller : Add AllHitsRange to SignalAtTp.
-   2018-12-29 baller : Add AllHitsRange to SignalAtTp.
-   2018-12-29 baller : Add AllHitsRange to SignalAtTp.
-   2018-12-29 baller : Add AllHitsRange to SignalAtTp.
-   2018-12-29 baller : Add AllHitsRange to SignalAtTp.
-   2018-12-29 baller : Add AllHitsRange to SignalAtTp.
-   2018-12-29 baller : Add AllHitsRange to SignalAtTp.
-   2018-12-28 baller : fix MC matching
-   2018-12-28 baller : fix MC matching
-   2018-12-28 baller : fix MC matching
-   2018-12-28 baller : fix MC matching
-   2018-12-28 baller : fix MC matching
-   2018-12-28 baller : fix MC matching
-   2018-12-28 baller : fix MC matching
-   2018-12-28 baller : fix MC matching
-   2018-12-28 baller : Limit the size of mallTraj.
-   2018-12-28 baller : Comment out FindSoftKink - again
-   2018-12-28 baller : fix MC matching
-   2018-12-21 ascarpel : Merge branch ‘feature/ascarpel_trackstitch’ into develop
-   2018-12-20 ascarpel : Merge branch ‘develop’ into feature/ascarpel_trackstitch
-   2018-12-20 baller : Merge branch ‘develop’ into feature/bb_TCArgo2
-   2018-12-20 baller : Merge branch ‘feature/bb_TCArgo2’ of ssh://cdcvs.fnal.gov/cvs/projects/larreco into feature/bb_TCArgo2
-   2018-12-20 baller : Replace Chgslope with FitChg. Add BraggSplit.
-   2018-12-20 baller : Replace Chgslope with FitChg. Add BraggSplit
-   2018-12-20 baller : Replace Chgslope with FitChg. Tweak forecasts and strategies
-   2018-12-20 baller : Replace Chgslope with FitChg
-   2018-12-20 baller : Add ChgFit struct
-   2018-12-20 baller : Add ChgFit struct
-   2018-12-19 Tingjun Yang : Merge branch ‘develop’ of ssh://cdcvs.fnal.gov/cvs/projects/larreco into develop
-   2018-12-19 Tingjun Yang : Protect against empty event.
-   2018-12-19 Tingjun Yang : Protect against empty collection hits (Thanks Chris)
-   2018-12-18 baller : Improve vex position in FindHammerVertices
-   2018-12-12 baller : Set default ElectronLikelihood to 0
-   2018-12-12 baller : Add ElectronLikelihood to SetPDGCode.
-   2018-12-12 baller : Add ElectronLikelihood to SetPDGCode.
-   2018-12-12 baller : Add ElectronLikelihood to SetPDGCode.
-   2018-12-12 baller : Add ElectronLikelihood to SetPDGCode.
-   2018-12-12 baller : Add ElectronLikelihood to SetPDGCode.
-   2018-12-12 baller : Add ElectronLikelihood to SetPDGCode.
-   2018-12-12 baller : Merge branch ‘develop’ into feature/bb_TCArgo2
-   2018-12-12 baller : Improve debug output
-   2018-12-12 baller : Improve debug output
-   2018-12-12 baller : Improve debug output
-   2018-12-03 ascarpel : Merge branch ‘develop’ into feature/ascarpel_trackstitch
-   2018-12-03 ascarpel : ups/product_deps update
-   2018-11-27 ascarpel : merge version conflict solved
-   2018-11-27 ascarpel : Correct bug in pmalg to stitch tracks within the same TPC

larsim v08_00_01
----------------------------------------

larevt v08_00_01
----------------------------------------

lardata v08_00_01
------------------------------------------

larcore v08_00_00
------------------------------------------

larpandoracontent v03_14_03
--------------------------------------------------------------

larsoftobj v08_01_00
------------------------------------------------

lardataobj v08_00_00
------------------------------------------------

lardataalg v08_01_00
------------------------------------------------

larcorealg v08_00_00
------------------------------------------------

larcoreobj v08_00_00
------------------------------------------------

larbatch v01_47_03
--------------------------------------------

-   2019-01-02 Lynn Garren : larbatch v01_47_03 for larsoft v08_01_01
-   2019-01-02 Herbert Greenlee : Merge branch ‘develop’ of ssh://cdcvs.fnal.gov/cvs/projects/larbatch into develop
-   2019-01-02 Herbert Greenlee : Remove 12 hour project cooling off period (use dropboxwait instead).
-   2019-01-02 Herbert Greenlee : Update start project script to deal better with situation where project is already started at submit time.

larutils v1_23_08
------------------------------------------
