LArSoft v05_09_01 Release Notes
======================================================================

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
|larpandoracontent|v02_07_01|e9:nu:r5||

Change List
============================

larsoft v05_09_01
------------------------------------------

-   2016-04-19 Lynn Garren : larsoft v05_09_01 for larsoft v05_09_01
-   2016-04-19 Lynn Garren : update product versions
-   2016-04-19 Lynn Garren : update dependency database

lareventdisplay v05_06_04
----------------------------------------------------------

-   2016-04-19 Lynn Garren : lareventdisplay v05_06_04 for larsoft v05_09_01

larexamples v05_06_04
--------------------------------------------------

-   2016-04-19 Lynn Garren : larexamples v05_06_04 for larsoft v05_09_01

larpandora v05_09_01
------------------------------------------------

-   2016-04-19 Lynn Garren : larpandora v05_09_01 for larsoft v05_09_01
-   2016-04-18 John Marshall : Tweaks to ensure reproducible translation from the Pandora EDM. Some cosmetic changes.

larana v05_08_01
----------------------------------------

-   2016-04-19 Lynn Garren : larana v05_08_01 for larsoft v05_09_01

larreco v05_09_01
------------------------------------------

-   2016-04-19 Lynn Garren : larreco v05_09_01 for larsoft v05_09_01
-   2016-04-19 Alexander Booth : Minor bug fix and the addition that bad channels as listed in channelstatus_dune.fcl are now skipped.
-   2016-04-19 Michael Wallbank : Change global wire so it takes into account different detector geometries. Hopefully this is a temporary hack which will be replaced by the developing ‘global wire’ concept in the larsoft geometry service. Right now, the DUNE35t and DUNE10kt geometries are hard coded – the correct detector is picked by a switch which is set by default in the standard detector configurations and shouldn’t need to be touched by the user
-   2016-04-15 Lynn Garren : larsoft v05_09_00
-   2016-04-15 Dorota Stefan : Merge branch ‘develop’ of ssh://cdcvs.fnal.gov/cvs/projects/larreco into develop
-   2016-04-15 Dorota Stefan : fix vertex missing on tpc boundaries

larsim v05_09_01
----------------------------------------

-   2016-04-19 Lynn Garren : larsim v05_09_01 for larsoft v05_09_01
-   2016-04-19 Tingjun Yang : Move dunefd_workspace_supernova to dunetpc

larevt v05_06_04
----------------------------------------

-   2016-04-19 Lynn Garren : larevt v05_06_04 for larsoft v05_09_01

lardata v05_07_03
------------------------------------------

-   2016-04-19 Lynn Garren : lardata v05_07_03 for larsoft v05_09_01

larcore v05_07_01
------------------------------------------

-   2016-04-19 Lynn Garren : larcore v05_07_01 for larsoft v05_09_01
-   2016-04-19 Lynn Garren : remove old, unused DUNE scripts

larbatch v01_21_01
--------------------------------------------

-   2016-04-19 Lynn Garren : larbatch v01_21_01 for larsoft v05_09_01
-   2016-04-19 Herbert Greenlee : Change name of locally generated input list from input.list to condor_lar_input.list.
-   2016-04-19 Herbert Greenlee : Fix generator makeup bug.
-   2016-04-18 Herbert Greenlee : Remove commented-out version of function.
-   2016-04-18 Herbert Greenlee : Teach projectgui.py to ignore lines containing only whitespace in status files bad.list and missing_files.list.
-   2016-04-18 Herbert Greenlee : Add back events.list. Streamline sam dags.

larutils v1_06_00
------------------------------------------
