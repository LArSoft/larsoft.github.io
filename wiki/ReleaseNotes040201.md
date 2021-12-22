LArSoft v04\_02\_01 Release Notes(#LArSoft-v04_02_01-Release-Notes)
======================================================================

-   **Table of contents**
-   [LArSoft v04\_02\_01 Release Notes](#LArSoft-v04_02_01-Release-Notes)
    -   [Purpose](#Purpose)
    -   [New features](#New-features)
    -   [Bug fixes](#Bug-fixes)
    -   [Updated dependencies](#Updated-dependencies)
-   [Change List](#Change-List)
    -   [larsoft v04\_02\_01](#larsoft-v04_02_01)
    -   [larpandora v04\_01\_01](#larpandora-v04_01_01)
    -   [larana v04\_01\_02](#larana-v04_01_02)
    -   [larreco v04\_01\_02](#larreco-v04_01_02)

[list of LArSoft releases](LArSoft_release_list)

Purpose(#Purpose)
--------------------

-   hotfix for v04\_02\_00
-   **This release has been tagged, but is not built.** It will be built if requested.

New features(#New-features)
------------------------------

Bug fixes(#Bug-fixes)
------------------------

ClusterCrawler bug in larreco

Updated dependencies(#Updated-dependencies)
----------------------------------------------

Change List(#Change-List)
============================

larsoft v04\_02\_01(#larsoft-v04_02_01)
------------------------------------------

-   2015-03-11 Lynn Garren : larsoft v04\_02\_01 for larsoft v04\_02\_01
-   2015-03-11 Lynn Garren : cleanup the html

larpandora v04\_01\_01(#larpandora-v04_01_01)
------------------------------------------------

-   2015-03-11 Lynn Garren : larpandora v04\_01\_01 for larsoft v04\_02\_01

larana v04\_01\_02(#larana-v04_01_02)
----------------------------------------

-   2015-03-11 Lynn Garren : larana v04\_01\_02 for larsoft v04\_02\_01

larreco v04\_01\_02(#larreco-v04_01_02)
------------------------------------------

-   2015-03-11 Lynn Garren : larreco v04\_01\_02 for larsoft v04\_02\_01
-   2015-03-10 Gianluca Petrillo : Fix charge in recob::Hit creation in ClusterCrawler module

-   The initialization of the three charge members (integral, its uncertainty and sum of ADCs) are swapped.
-   This is serious since the users looking for Charge() would obtain the value of the charge error.
