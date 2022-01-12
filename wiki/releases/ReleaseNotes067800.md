LArSoft v06\_78\_00 Release Notes
======================================================================

-   **Table of contents**
-   [LArSoft v06\_78\_00 Release Notes](#LArSoft-v06_78_00-Release-Notes)
    -   [Purpose](#Purpose)
    -   [New features](#New-features)
    -   [Bug fixes](#Bug-fixes)
    -   [Updated dependencies](#Updated-dependencies)
-   [Change List](#Change-List)
    -   [larsoft v06\_78\_00](#larsoft-v06_78_00)
    -   [lareventdisplay v06\_19\_07](#lareventdisplay-v06_19_07)
    -   [larexamples v06\_13\_06](#larexamples-v06_13_06)
    -   [larpandora v06\_27\_01](#larpandora-v06_27_01)
    -   [larwirecell v06\_13\_01](#larwirecell-v06_13_01)
    -   [larana v06\_19\_07](#larana-v06_19_07)
    -   [larreco v06\_60\_04](#larreco-v06_60_04)
    -   [larsim v06\_48\_00](#larsim-v06_48_00)
    -   [larevt v06\_20\_06](#larevt-v06_20_06)
    -   [lardata v06\_45\_00](#lardata-v06_45_00)
    -   [larcore v06\_19\_03](#larcore-v06_19_03)
    -   [larpandoracontent v03\_12\_00](#larpandoracontent-v03_12_00)
    -   [larsoftobj v1\_45\_00](#larsoftobj-v1_45_00)
    -   [lardataalg v1\_00\_00](#lardataalg-v1_00_00)
    -   [lardataobj v1\_32\_02](#lardataobj-v1_32_02)
    -   [larcorealg v1\_21\_00](#larcorealg-v1_21_00)
    -   [larcoreobj v1\_23\_00](#larcoreobj-v1_23_00)
    -   [larbatch v01\_40\_00](#larbatch-v01_40_00)
    -   [larutils v1\_22\_06](#larutils-v1_22_06)

[list of LArSoft releases](LArSoft_release_list)
Download instructions for [larsoft v06\_78\_00](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v06_78_00/larsoft-v06_78_00.html)
Download instructions for [just larsoftobj v1\_45\_00](http://scisoft.fnal.gov/scisoft/bundles/larsoftobj/v1_45_00/larsoftobj-v1_45_00.html)

Purpose
--------------------

New features
------------------------------

-   lardataalg
    -   move lardata/DetectorInfo to lardataalg/DetectorInfo
    -   This allows gallery to use the services
    -   The migration script is UpdateLArDataAlg.sh
    -   feature/ss\_issue17179 is provided for argoneutcode, dunetpc, lariatsoft, sbndcode, and uboonecode

Bug fixes
------------------------

-   feature/russo\_ticket\_19313
    -   larsim
-   feature/russo\_ticket\_18136
    -   larcorealg
    -   dunetpc, icaruscode, lariatsoft

Updated dependencies
----------------------------------------------

-   nutools v2\_21\_04
    -   bug fix for atmospheric flux
-   mrb v1\_15\_01

Change List
============================

larsoft v06\_78\_00
------------------------------------------

-   2018-05-24 Lynn Garren : larsoft v06\_78\_00 for larsoft v06\_78\_00
-   2018-05-24 Lynn Garren : add lardataalg and use nutools v2\_21\_04
-   2018-05-24 Lynn Garren : update dependency database
-   2018-05-24 Lynn Garren : script for lardataalg

lareventdisplay v06\_19\_07
----------------------------------------------------------

-   2018-05-24 Lynn Garren : lareventdisplay v06\_19\_07 for larsoft v06\_78\_00
-   2018-05-24 Lynn Garren : using lardataalg

larexamples v06\_13\_06
--------------------------------------------------

-   2018-05-24 Lynn Garren : larexamples v06\_13\_06 for larsoft v06\_78\_00

larpandora v06\_27\_01
------------------------------------------------

-   2018-05-24 Lynn Garren : larpandora v06\_27\_01 for larsoft v06\_78\_00

larwirecell v06\_13\_01
--------------------------------------------------

-   2018-05-24 Lynn Garren : larwirecell v06\_13\_01 for larsoft v06\_78\_00

larana v06\_19\_07
----------------------------------------

-   2018-05-24 Lynn Garren : larana v06\_19\_07 for larsoft v06\_78\_00
-   2018-05-22 Saba Sehrish : header changes as a result of moving DetectorInfo to lardataalg

larreco v06\_60\_04
------------------------------------------

-   2018-05-24 Lynn Garren : larreco v06\_60\_04 for larsoft v06\_78\_00
-   2018-05-22 Saba Sehrish : header changes as a result of moving DetectorInfo to lardataalg
-   2018-05-19 Tingjun Yang : Fix compiling errors.
-   2018-05-18 baller : cast to int
-   2018-05-18 baller : remove debug statements
-   2018-05-18 baller : move debugMode from FillWireHitRange call
-   2018-05-18 baller : Remove debugMode
-   2018-05-18 baller : Merge branch ‘develop’ into feature/bb\_TCWork
-   2018-05-18 baller : Move fDebugMode to tjs.DebugMode
-   2018-05-18 baller : Move fDebugMode to tjs.DebugMode
-   2018-05-18 baller : Move fDebug to tjs.DebugMode
-   2018-05-18 baller : Fix ShowerTag<sup>[0](#fn0)</sup> selection.
-   2018-05-18 baller : Move fDebug to tjs.DebugMode
-   2018-05-18 baller : Move fDebug to tjs.DebugMode
-   2018-05-18 baller : Check for an invalid ID.
-   2018-05-18 baller : Pass IDs instead of indices. Ongoing shower reconstruction development.
-   2018-05-18 baller : Pass IDs instead of indices
-   2018-05-18 baller : Pass IDs instead of indices
-   2018-05-18 baller : Change TagInShowerTjs to TagShowerLike. Add kShowerLike AlgMod bit. Convert all IDs to ints. Protect against invalid TrajPoint Pos.
-   2018-05-18 baller : Change TagInShowerTjs to TagShowerLike. Add kShowerLike AlgMod bit. Convert all IDs to ints. Protect against invalid TrajPoint Pos. Set default ParentID to 0.
-   2018-05-18 baller : Add GetAssns.
-   2018-05-18 baller : Change TagInShowerTjs to TagShowerLike. Add kShowerLike AlgMod bit. Convert all IDs to ints. Protect against invalid TrajPoint Pos.
-   2018-05-18 baller : Change TagInShowerTjs to TagShowerLike. Add kShowerLike AlgMod bit.
-   2018-05-18 baller : Change TagInShowerTjs to TagShowerLike. Add kShowerLike AlgMod bit. Change all IDs to ints.
-   2018-05-18 baller : Change TagInShowerTjs to TagShowerLike. Add kShowerLike AlgMod bit.
-   2018-05-16 baller : Add utility functions.
-   2018-05-16 baller : Add utility functions.
-   2018-05-16 baller : Tweak debug printout cuts
-   2018-05-16 baller : Ongoing shower reconstruction development
-   2018-05-16 baller : Ongoing shower reconstruction development
-   2018-05-16 baller : Add FilldEdx for pfps. Set default pfp to 0. Tweak cuts in InsideTPC.
-   2018-05-16 baller : Add FilldEdx for pfps
-   2018-05-16 baller : Edit comments
-   2018-05-16 baller : Print 3D showers
-   2018-05-04 baller : Merge branch ‘develop’ into feature/bb\_TCWork
-   2018-05-04 baller : Add NeutralVxCuts
-   2018-05-04 baller : Add 3D functions
-   2018-05-04 baller : Add 3D functions
-   2018-05-04 baller : Tweak cuts for creating a neutrino pop
-   2018-05-04 baller : Add NeutralVxCuts
-   2018-05-04 baller : Add NeutralVxCuts
-   2018-05-04 baller : Add NeutralVxCuts

larsim v06\_48\_00
----------------------------------------

-   2018-05-24 Lynn Garren : larsim v06\_48\_00 for larsoft v06\_78\_00
-   2018-05-23 Lynn Garren : Merge branch ‘feature/russo\_ticket\_19313’ into release/v06\_78\_00
-   2018-05-23 Lynn Garren : using lardataalg
-   2018-05-22 Paul Russo : Use FW\_SEARCH\_PATH to find the HistogramFile.

larevt v06\_20\_06
----------------------------------------

-   2018-05-24 Lynn Garren : larevt v06\_20\_06 for larsoft v06\_78\_00

lardata v06\_45\_00
------------------------------------------

-   2018-05-24 Lynn Garren : lardata v06\_45\_00 for larsoft v06\_78\_00
-   2018-05-24 Lynn Garren : retain DetectorPropertiesBo\_test for now
-   2018-05-22 Saba Sehrish : move lardata/DetectorInfo to lardataalg/DetectorInfo

larcore v06\_19\_03
------------------------------------------

-   2018-05-24 Lynn Garren : larcore v06\_19\_03 for larsoft v06\_78\_00

larpandoracontent v03\_12\_00
--------------------------------------------------------------

larsoftobj v1\_45\_00
----------------------------------------------

-   2018-05-24 Lynn Garren : larsoftobj v1\_45\_00 for larsoft v06\_78\_00
-   2018-05-24 Lynn Garren : adding lardataalg

lardataalg v1\_00\_00
----------------------------------------------

-   2018-05-24 Lynn Garren : lardataalg v1\_00\_00 for larsoft v06\_78\_00
-   2018-05-23 Lynn Garren : lardataalg depends on larcorealg
-   2018-05-22 Saba Sehrish : move lardata/DetectorInfo to lardataalg/DetectorInfo

lardataobj v1\_32\_02
----------------------------------------------

-   2018-05-24 Lynn Garren : lardataobj v1\_32\_02 for larsoft v06\_78\_00

larcorealg v1\_21\_00
----------------------------------------------

-   2018-05-24 Lynn Garren : larcorealg v1\_21\_00 for larsoft v06\_78\_00
-   2018-05-22 Paul Russo : Fix design flaw in geo::ChannelMapAlg interface.

larcoreobj v1\_23\_00
----------------------------------------------

larbatch v01\_40\_00
--------------------------------------------

-   2018-05-24 Lynn Garren : larbatch v01\_40\_00 for larsoft v06\_78\_00
-   2018-05-21 Herbert Greenlee : Merge branch ‘feature/greenlee\_test’ into develop
-   2018-05-21 Herbert Greenlee : Fix tarball time stemp.
-   2018-05-21 Herbert Greenlee : Fix job status.
-   2018-05-16 Herbert Greenlee : Force use of dag if start/stop script is overridden.

larutils v1\_22\_06
------------------------------------------
