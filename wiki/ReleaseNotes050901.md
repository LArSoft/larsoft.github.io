LArSoft v05\_09\_01 Release Notes
======================================================================

-   **Table of contents**
-   [LArSoft v05\_09\_01 Release Notes](#LArSoft-v05_09_01-Release-Notes)
    -   [Purpose](#Purpose)
    -   [New features](#New-features)
    -   [Bug fixes](#Bug-fixes)
    -   [Updated dependencies](#Updated-dependencies)
-   [Change List](#Change-List)
    -   [larsoft v05\_09\_01](#larsoft-v05_09_01)
    -   [lareventdisplay v05\_06\_04](#lareventdisplay-v05_06_04)
    -   [larexamples v05\_06\_04](#larexamples-v05_06_04)
    -   [larpandora v05\_09\_01](#larpandora-v05_09_01)
    -   [larana v05\_08\_01](#larana-v05_08_01)
    -   [larreco v05\_09\_01](#larreco-v05_09_01)
    -   [larsim v05\_09\_01](#larsim-v05_09_01)
    -   [larevt v05\_06\_04](#larevt-v05_06_04)
    -   [lardata v05\_07\_03](#lardata-v05_07_03)
    -   [larcore v05\_07\_01](#larcore-v05_07_01)
    -   [larbatch v01\_21\_01](#larbatch-v01_21_01)
    -   [larutils v1\_06\_00](#larutils-v1_06_00)

[list of LArSoft releases](LArSoft_release_list)
[Download instructions](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v05_09_01/larsoft-v05_09_01.html)

Purpose
--------------------

-   DUNE MCC6 production

New features
------------------------------

Bug fixes
------------------------

Updated dependencies
----------------------------------------------

||
|Product|Version|Qualifiers|Notes|
|larpandoracontent|v02\_07\_01|e9:nu:r5||

Change List
============================

larsoft v05\_09\_01
------------------------------------------

-   2016-04-19 Lynn Garren : larsoft v05\_09\_01 for larsoft v05\_09\_01
-   2016-04-19 Lynn Garren : update product versions
-   2016-04-19 Lynn Garren : update dependency database

lareventdisplay v05\_06\_04
----------------------------------------------------------

-   2016-04-19 Lynn Garren : lareventdisplay v05\_06\_04 for larsoft v05\_09\_01

larexamples v05\_06\_04
--------------------------------------------------

-   2016-04-19 Lynn Garren : larexamples v05\_06\_04 for larsoft v05\_09\_01

larpandora v05\_09\_01
------------------------------------------------

-   2016-04-19 Lynn Garren : larpandora v05\_09\_01 for larsoft v05\_09\_01
-   2016-04-18 John Marshall : Tweaks to ensure reproducible translation from the Pandora EDM. Some cosmetic changes.

larana v05\_08\_01
----------------------------------------

-   2016-04-19 Lynn Garren : larana v05\_08\_01 for larsoft v05\_09\_01

larreco v05\_09\_01
------------------------------------------

-   2016-04-19 Lynn Garren : larreco v05\_09\_01 for larsoft v05\_09\_01
-   2016-04-19 Alexander Booth : Minor bug fix and the addition that bad channels as listed in channelstatus\_dune.fcl are now skipped.
-   2016-04-19 Michael Wallbank : Change global wire so it takes into account different detector geometries. Hopefully this is a temporary hack which will be replaced by the developing ‘global wire’ concept in the larsoft geometry service. Right now, the DUNE35t and DUNE10kt geometries are hard coded – the correct detector is picked by a switch which is set by default in the standard detector configurations and shouldn’t need to be touched by the user
-   2016-04-15 Lynn Garren : larsoft v05\_09\_00
-   2016-04-15 Dorota Stefan : Merge branch ‘develop’ of ssh://cdcvs.fnal.gov/cvs/projects/larreco into develop
-   2016-04-15 Dorota Stefan : fix vertex missing on tpc boundaries

larsim v05\_09\_01
----------------------------------------

-   2016-04-19 Lynn Garren : larsim v05\_09\_01 for larsoft v05\_09\_01
-   2016-04-19 Tingjun Yang : Move dunefd\_workspace\_supernova to dunetpc

larevt v05\_06\_04
----------------------------------------

-   2016-04-19 Lynn Garren : larevt v05\_06\_04 for larsoft v05\_09\_01

lardata v05\_07\_03
------------------------------------------

-   2016-04-19 Lynn Garren : lardata v05\_07\_03 for larsoft v05\_09\_01

larcore v05\_07\_01
------------------------------------------

-   2016-04-19 Lynn Garren : larcore v05\_07\_01 for larsoft v05\_09\_01
-   2016-04-19 Lynn Garren : remove old, unused DUNE scripts

larbatch v01\_21\_01
--------------------------------------------

-   2016-04-19 Lynn Garren : larbatch v01\_21\_01 for larsoft v05\_09\_01
-   2016-04-19 Herbert Greenlee : Change name of locally generated input list from input.list to condor\_lar\_input.list.
-   2016-04-19 Herbert Greenlee : Fix generator makeup bug.
-   2016-04-18 Herbert Greenlee : Remove commented-out version of function.
-   2016-04-18 Herbert Greenlee : Teach projectgui.py to ignore lines containing only whitespace in status files bad.list and missing\_files.list.
-   2016-04-18 Herbert Greenlee : Add back events.list. Streamline sam dags.

larutils v1\_06\_00
------------------------------------------
