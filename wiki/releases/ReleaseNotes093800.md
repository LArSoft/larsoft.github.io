LArSoft v09_38_00 Release Notes
======================================================================

-   **Table of contents**
-   [LArSoft v09_38_00 Release Notes](#LArSoft-v09_38_00-Release-Notes)
    -   [Purpose](#Purpose)
    -   [New features](#New-features)
    -   [Bug fixes](#Bug-fixes)
    -   [Updated dependencies](#Updated-dependencies)
-   [Change List](#Change-List)
    -   [larsoft v09_38_00](#larsoft-v09_38_00)
    -   [lareventdisplay v09_02_09](#lareventdisplay-v09_02_09)
    -   [larexamples v09_02_09](#larexamples-v09_02_09)
    -   [larpandora v09_10_03](#larpandora-v09_10_03)
    -   [larsimrad v09_03_08](#larsimrad-v09_03_08)
    -   [larrecodnn v09_09_10](#larrecodnn-v09_09_10)
    -   [larwirecell v09_04_06](#larwirecell-v09_04_06)
    -   [larana v09_03_10](#larana-v09_03_10)
    -   [larreco v09_07_09](#larreco-v09_07_09)
    -   [larsim v09_19_02](#larsim-v09_19_02)
    -   [larg4 v09_06_03](#larg4-v09_06_03)
    -   [larevt v09_03_06](#larevt-v09_03_06)
    -   [lardata v09_04_03](#lardata-v09_04_03)
    -   [larcore v09_03_02](#larcore-v09_03_02)
    -   [larpandoracontent v03_26_02](#larpandoracontent-v03_26_02)
    -   [larsoftobj v09_13_00](#larsoftobj-v09_13_00)
    -   [lardataobj v09_03_06](#lardataobj-v09_03_06)
    -   [lardataalg v09_08_00](#lardataalg-v09_08_00)
    -   [larcorealg v09_04_00](#larcorealg-v09_04_00)
    -   [larcoreobj v09_03_01](#larcoreobj-v09_03_01)
    -   [webevd v09_07_00](#webevd-v09_07_00)
    -   [larbatch v01_56_02](#larbatch-v01_56_02)
    -   [larutils v1_28_02](#larutils-v1_28_02)

[list of LArSoft releases](LArSoft_release_list)
Download instructions for [larsoft v09_38_00](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v09_38_00/larsoft-v09_38_00.html)
Download instructions for [just larsoftobj v09_13_00](http://scisoft.fnal.gov/scisoft/bundles/larsoftobj/v09_13_00/larsoftobj-v09_13_00.html)

Purpose
--------------------

-   changes in develop
-   approved PRs

New features
------------------------------

-   lardataalg PR 28
    -   Add a new parameter controlling whether or not to allow for timing offsets between the different readout planes
    -   This is a pragmatic short-term solution while we work out how to encode this information somewhere such that no such switch is necessary.
    -   I think the main thing to be debated here is the variable name / comment. I went for the most literal code-level name, because I couldn’t think of a succinct way of capturing the content.
    -   Given the default value, this ought to have no observable effect on anyone, but it gives DUNE an easy knob to turn to reproduce the behaviour that is currently in the hacked ProtoDUNE service.
    -   Looking at the code, I don’t think it’s necessarily treating the collection plane as the origin, rather whatever TPCGeo::PlaneLocation() returns, which the comments imply might be the grid plane? In any case, the toggle will treat all planes the same, and the same as we had them in ProtoDUNE. Any remaining small absolute offset is less significant.
-   webevd PR 34
    -   Work out size of PNGView structure on demand
    -   This is necessary for ICARUS data, where there apparently exist Wire objects with different numbers of ticks.
-   larpandoracontent PR 35
    -   This PR includes updates to the hierarchy tools to support a new folding technique and updates to metrics, and quality and reconstructability criteria for assessing the reconstruction. It also contains updates for new warnings in the most recent versions of Clang. No product changes.
-   larpandora PR 24
    -   Adds the primaryBackground MC process to avoid (harmless) warnings in ProtoDUNE-SP running. No product changes.

Bug fixes
------------------------

-   larsim PR 83
    -   Fix AuxDetHits and SimEnergyDeposits types
    -   This PR contains fixes for a bug introduced with PR \#81 .
-   larsim PR 82
    -   Map SimChannels by Cryostat only to prevent extra SimChannels from being created when a channel is associated with multiple TPCs
    -   Part of redmine issue [\#26453](/redmine/issues/26453 "Bug: Incorrect SimChannel Instantiation in SimDriftElectrons_modules.cc (Closed)")
-   larsim PR 79
    -   Removed spurious configuration parameter
    -   Parameter UseModLarqlRecomb does not belong to LegacyLArG4, so it should not be in its configuration.
        It is, in fact, supported by LArG4Parameters “service”.
-   webevd PR 33
    -   Be more pedantic about URL to connect to, as required by recent firefox versions
-   lardataobj PR 19
    -   Added missing header to BeamGateInfo.h
    -   It turns out std::less was not defined.
    -   Also removing an unnecessary destructor, just because.

Updated dependencies
----------------------------------------------

-   marley v1_2_0f
    -   DUNE users have let me know that there is still some lingering trouble in the data file search paths used by marley v1_2_0e. This is entirely due to some mistakes I made when first applying updates for v1_2_0. I revisited this today and made a new commit on the master branch of build-framework-marley-ssi-build which should resolve everything. I tested it with the newest release of dunetpc and everything ran okay.

Change List
============================

larsoft v09_38_00
------------------------------------------

-   2021-12-01 Lynn Garren : larsoft v09_38_00 for larsoft v09_38_00
-   2021-12-01 Lynn Garren : larsoft v09_38_00 for larsoft v09_38_00
-   2021-12-01 Lynn Garren : product versions
-   2021-11-30 Lynn Garren : adding genie_phyopt -q dkstandard-resfixfix here for now

lareventdisplay v09_02_09
----------------------------------------------------------

-   2021-12-01 Lynn Garren : lareventdisplay v09_02_09 for larsoft v09_38_00
-   2021-12-01 Lynn Garren : lareventdisplay v09_02_09 for larsoft v09_38_00

larexamples v09_02_09
--------------------------------------------------

-   2021-12-01 Lynn Garren : larexamples v09_02_09 for larsoft v09_38_00
-   2021-12-01 Lynn Garren : larexamples v09_02_09 for larsoft v09_38_00

larpandora v09_10_03
------------------------------------------------

-   2021-12-01 Lynn Garren : larpandora v09_10_03 for larsoft v09_38_00
-   2021-12-01 Lynn Garren : larpandora v09_10_03 for larsoft v09_38_00
-   2021-11-29 AndyChappell : Merge pull request \#26 from AndyChappell/feature/mc_proc_update
-   2021-10-22 Andrew Chappell : Add primaryBackground MC process

larsimrad v09_03_08
----------------------------------------------

-   2021-12-01 Lynn Garren : larsimrad v09_03_08 for larsoft v09_38_00
-   2021-12-01 Lynn Garren : larsimrad v09_03_08 for larsoft v09_38_00

larrecodnn v09_09_10
------------------------------------------------

-   2021-12-01 Lynn Garren : larrecodnn v09_09_10 for larsoft v09_38_00
-   2021-12-01 Lynn Garren : larrecodnn v09_09_10 for larsoft v09_38_00

larwirecell v09_04_06
--------------------------------------------------

-   2021-12-01 Lynn Garren : larwirecell v09_04_06 for larsoft v09_38_00
-   2021-12-01 Lynn Garren : larwirecell v09_04_06 for larsoft v09_38_00

larana v09_03_10
----------------------------------------

-   2021-12-01 Lynn Garren : larana v09_03_10 for larsoft v09_38_00
-   2021-12-01 Lynn Garren : larana v09_03_10 for larsoft v09_38_00

larreco v09_07_09
------------------------------------------

-   2021-12-01 Lynn Garren : larreco v09_07_09 for larsoft v09_38_00
-   2021-12-01 Lynn Garren : larreco v09_07_09 for larsoft v09_38_00

larsim v09_19_02
----------------------------------------

-   2021-12-01 Lynn Garren : larsim v09_19_02 for larsoft v09_38_00
-   2021-12-01 Lynn Garren : larsim v09_19_02 for larsoft v09_38_00
-   2021-12-01 Lynn Garren : Merge pull request \#83 from SBNSoftware/mdeltutt_mergesimsources_fix
-   2021-11-29 Marco Del Tutto : Fix AuxDetHits and SimEnergyDeposits types
-   2021-11-29 Lynn Garren : Merge pull request \#82 from JamesJieranShen/feature/jierans_elecDrift_duplicate_simchannel_fix
-   2021-11-22 James Shen : Map SimChannels by Cryostat only to prevent extra SimChannels from being created when a channel is associated with multiple TPCs
-   2021-11-22 Lynn Garren : Merge pull request \#79 from PetrilloAtWork/patch-2
-   2021-11-16 Gianluca Petrillo : Removed spurious configuration parameter

larg4 v09_06_03
--------------------------------------

-   2021-12-01 Lynn Garren : larg4 v09_06_03 for larsoft v09_38_00
-   2021-12-01 Lynn Garren : larg4 v09_06_03 for larsoft v09_38_00

larevt v09_03_06
----------------------------------------

-   2021-12-01 Lynn Garren : larevt v09_03_06 for larsoft v09_38_00
-   2021-12-01 Lynn Garren : larevt v09_03_06 for larsoft v09_38_00

lardata v09_04_03
------------------------------------------

-   2021-12-01 Lynn Garren : lardata v09_04_03 for larsoft v09_38_00
-   2021-12-01 Lynn Garren : lardata v09_04_03 for larsoft v09_38_00

larcore v09_03_02
------------------------------------------

larpandoracontent v03_26_02
--------------------------------------------------------------

-   2021-12-01 Lynn Garren : larpandoracontent v03_26_02 for larsoft v09_38_00
-   2021-11-29 AndyChappell : Merge pull request [\#186](/redmine/issues/186 "Bug: Properly handle SWF line items across changes in Effort Reportable flag. (Closed)") from AndyChappell/feature/ht_update
-   2021-11-01 Steve Dennis : changes for Clang 12
-   2021-11-23 Andrew Chappell : Add tier 1 specific metrics and updates to quality cuts and reconstructability criteria
-   2021-11-09 Andrew Chappell : Add expected ADC weight to validation
-   2021-09-16 Andrew Chappell : Add new node level metrics
-   2021-09-15 Andrew Chappell : Add new event level metrics
-   2021-09-06 Andrew Chappell : Allow folding option selection in monitoring
-   2021-09-03 Andrew Chappell : Test dynamic folding
-   2021-09-03 Andrew Chappell : Add dynamic hierarchy folding based on process information
-   2021-08-23 Andrew Chappell : Visualize process information
-   2021-08-23 Andrew Chappell : Refactoring
-   2021-08-23 Andrew Chappell : Visualize MC without PDG grouping

larsoftobj v09_13_00
------------------------------------------------

-   2021-12-01 Lynn Garren : larsoftobj v09_13_00 for larsoft v09_38_00
-   2021-12-01 Lynn Garren : larsoftobj v09_13_00 for larsoft v09_38_00
-   2021-12-01 Lynn Garren : product versions

lardataobj v09_03_06
------------------------------------------------

-   2021-12-01 Lynn Garren : lardataobj v09_03_06 for larsoft v09_38_00
-   2021-11-23 Lynn Garren : Merge pull request \#19 from PetrilloAtWork/patch-1
-   2021-11-18 Gianluca Petrillo : Added missing header

lardataalg v09_08_00
------------------------------------------------

-   2021-12-01 Lynn Garren : lardataalg v09_08_00 for larsoft v09_38_00
-   2021-12-01 Lynn Garren : lardataalg v09_08_00 for larsoft v09_38_00
-   2021-11-29 Lynn Garren : Merge pull request \#28 from cjbackhouse/feature/view_timing_offsets_switch
-   2021-11-23 Christopher Backhouse : Add a new parameter controlling whether or not to allow for timing offsets between the different readout planes. This is a pragmatic short-term solution while we work out how to encode this information somewhere such that no such switch is necessary.

larcorealg v09_04_00
------------------------------------------------

larcoreobj v09_03_01
------------------------------------------------

webevd v09_07_00
----------------------------------------

-   2021-12-01 Lynn Garren : webevd v09_07_00 for larsoft v09_38_00
-   2021-12-01 Lynn Garren : webevd v09_07_00 for larsoft v09_38_00
-   2021-11-29 Lynn Garren : Merge pull request \#34 from LArSoft/feature/flexible_view_size
-   2021-11-25 Christopher Backhouse : Work out size of PNGView structure on demand rather than specifying it up front.
-   2021-11-23 Lynn Garren : Merge pull request \#33 from LArSoft/feature/url
-   2021-11-23 Chris Backhouse : Be more pedantic about URL to connect to, as required by recent firefox versions.

larbatch v01_56_02
--------------------------------------------

larutils v1_28_02
------------------------------------------
