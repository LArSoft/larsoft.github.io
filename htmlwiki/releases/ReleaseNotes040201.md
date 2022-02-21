LArSoft v04_02_01 Release Notes
======================================================================

[list of LArSoft releases](LArSoft_release_list)

Purpose
--------------------

-   hotfix for v04_02_00
-   **This release has been tagged, but is not built.** It will be built if requested.

New features
------------------------------

Bug fixes
------------------------

ClusterCrawler bug in larreco

Updated dependencies
----------------------------------------------

Change List
============================

larsoft v04_02_01
------------------------------------------

-   2015-03-11 Lynn Garren : larsoft v04_02_01 for larsoft v04_02_01
-   2015-03-11 Lynn Garren : cleanup the html

larpandora v04_01_01
------------------------------------------------

-   2015-03-11 Lynn Garren : larpandora v04_01_01 for larsoft v04_02_01

larana v04_01_02
----------------------------------------

-   2015-03-11 Lynn Garren : larana v04_01_02 for larsoft v04_02_01

larreco v04_01_02
------------------------------------------

-   2015-03-11 Lynn Garren : larreco v04_01_02 for larsoft v04_02_01
-   2015-03-10 Gianluca Petrillo : Fix charge in recob::Hit creation in ClusterCrawler module

-   The initialization of the three charge members (integral, its uncertainty and sum of ADCs) are swapped.
-   This is serious since the users looking for Charge() would obtain the value of the charge error.
