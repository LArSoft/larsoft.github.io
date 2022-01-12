LArSoft v06_21_00 Release Notes
======================================================================

-   **Table of contents**
-   [LArSoft v06_21_00 Release Notes](#LArSoft-v06_21_00-Release-Notes)
    -   [Purpose](#Purpose)
    -   [New features](#New-features)
    -   [Bug fixes](#Bug-fixes)
    -   [Updated dependencies](#Updated-dependencies)
-   [Change List](#Change-List)
    -   [larsoft v06_21_00](#larsoft-v06_21_00)
    -   [lareventdisplay v06_02_09](#lareventdisplay-v06_02_09)
    -   [larexamples v06_01_10](#larexamples-v06_01_10)
    -   [larpandora v06_05_02](#larpandora-v06_05_02)
    -   [larwirecell v06_00_07](#larwirecell-v06_00_07)
    -   [larana v06_03_13](#larana-v06_03_13)
    -   [larreco v06_16_00](#larreco-v06_16_00)
    -   [larsim v06_10_04](#larsim-v06_10_04)
    -   [larevt v06_07_04](#larevt-v06_07_04)
    -   [lardata v06_13_00](#lardata-v06_13_00)
    -   [larcore v06_05_01](#larcore-v06_05_01)
    -   [larsoftobj v1_08_02](#larsoftobj-v1_08_02)
    -   [lardataobj v1_08_00](#lardataobj-v1_08_00)
    -   [larcoreobj v1_06_01](#larcoreobj-v1_06_01)
    -   [larbatch v01_26_03](#larbatch-v01_26_03)
    -   [larutils v1_11_00](#larutils-v1_11_00)

[list of LArSoft releases](LArSoft_release_list)
Download instructions for [larsoft v06_21_00](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v06_21_00/larsoft-v06_21_00.html)
Download instructions for [just larsoftobj v1_08_02](http://scisoft.fnal.gov/scisoft/bundles/larsoftobj/v1_08_02/larsoftobj-v1_08_02.html)

Purpose
--------------------

-   changes in develop
-   approved features
-   nutools bug fix

New features
------------------------------

-   lardata, larreco feature/gp_MoveDumpHits
-   larsim feature/wketchum_InTimeCosmic

Bug fixes
------------------------

-   nutools with fix for [\#15123](/redmine/issues/15123 "Bug: sim::ParticleList::clear() does not clear the set of primary particles (Closed)")
-   photon backtracker bug [\#15012](/redmine/issues/15012 "Bug: Job crashes if no photon backtracker information is available (Closed)") is resolved

Updated dependencies
----------------------------------------------

||
|Product|Version|Qualifiers|Notes|
|nutools|v2_09_02|e10|[NuTools_Release_Notes](/redmine/projects/nutools/wiki/NuTools_Release_Notes#nutools-v2_09_02)|
|larpandoracontent|v03_01_03|e10||

Change List
============================

larsoft v06_21_00
------------------------------------------

-   2017-01-18 Lynn Garren : larsoft v06_21_00 for larsoft v06_21_00
-   2017-01-18 Lynn Garren : update product versions
-   2017-01-18 Lynn Garren : update dependency database

lareventdisplay v06_02_09
----------------------------------------------------------

-   2017-01-18 Lynn Garren : lareventdisplay v06_02_09 for larsoft v06_21_00

larexamples v06_01_10
--------------------------------------------------

-   2017-01-18 Lynn Garren : larexamples v06_01_10 for larsoft v06_21_00

larpandora v06_05_02
------------------------------------------------

-   2017-01-18 Lynn Garren : larpandora v06_05_02 for larsoft v06_21_00

larwirecell v06_00_07
--------------------------------------------------

-   2017-01-18 Lynn Garren : larwirecell v06_00_07 for larsoft v06_21_00

larana v06_03_13
----------------------------------------

-   2017-01-18 Lynn Garren : larana v06_03_13 for larsoft v06_21_00

larreco v06_16_00
------------------------------------------

-   2017-01-18 Lynn Garren : larreco v06_16_00 for larsoft v06_21_00
-   2017-01-18 Lynn Garren : use nutools v2_09_02
-   2017-01-18 Lynn Garren : Merge branch ‘feature/gp_MoveDumpHits’ into release/v06_21_00
-   2017-01-09 Gianluca Petrillo : DumpHits module moved to lardata (with the other dumpers)

larsim v06_10_04
----------------------------------------

-   2017-01-18 Lynn Garren : larsim v06_10_04 for larsoft v06_21_00
-   2017-01-18 Lynn Garren : Merge branch ‘feature/wketchum_InTimeCosmic’ into release/v06_21_00
-   2017-01-17 Jason Stock : Implimenting fix to only throw an error for missing OpDetBacktrackerRecords when using backtracker functions. The configuration will succede with non-photonbacktrackable files, but calling backtracker functions from such files will now throw a CET exception.
-   2017-01-02 Wesley Ketchum : add an always pass option
-   2016-12-27 Wesley Ketchum : Merge branch ‘develop’ of ssh://cdcvs.fnal.gov/cvs/projects/larsim into feature/wketchum_InTimeCosmic
-   2016-12-21 Wesley Ketchum : do poisson randomization on the number of showers to process
-   2016-12-21 Wesley Ketchum : allow filter to split mctruth into two collections

larevt v06_07_04
----------------------------------------

-   2017-01-18 Lynn Garren : larevt v06_07_04 for larsoft v06_21_00

lardata v06_13_00
------------------------------------------

-   2017-01-18 Lynn Garren : lardata v06_13_00 for larsoft v06_21_00
-   2017-01-18 Lynn Garren : use nutools v2_09_02
-   2017-01-18 Lynn Garren : Merge branch ‘feature/gp_MoveDumpHits’ into release/v06_21_00
-   2017-01-09 Gianluca Petrillo : Moved DumpHits from larreco to lardata with the other dumpers.

larcore v06_05_01
------------------------------------------

larsoftobj v1_08_02
----------------------------------------------

lardataobj v1_08_00
----------------------------------------------

larcoreobj v1_06_01
----------------------------------------------

larbatch v01_26_03
--------------------------------------------

-   2017-01-18 Lynn Garren : larbatch v01_26_03 for larsoft v06_21_00
-   2017-01-13 Herbert Greenlee : Merge branch ‘develop’ of ssh://cdcvs.fnal.gov/cvs/projects/larbatch into develop
-   2017-01-13 Herbert Greenlee : Improve ability of larbatch_posix to handle directory paths that end in ‘/’.

larutils v1_11_00
------------------------------------------
