LArSoft v06\_21\_00 Release Notes(#LArSoft-v06_21_00-Release-Notes)
======================================================================

-   **Table of contents**
-   [LArSoft v06\_21\_00 Release Notes](#LArSoft-v06_21_00-Release-Notes)
    -   [Purpose](#Purpose)
    -   [New features](#New-features)
    -   [Bug fixes](#Bug-fixes)
    -   [Updated dependencies](#Updated-dependencies)
-   [Change List](#Change-List)
    -   [larsoft v06\_21\_00](#larsoft-v06_21_00)
    -   [lareventdisplay v06\_02\_09](#lareventdisplay-v06_02_09)
    -   [larexamples v06\_01\_10](#larexamples-v06_01_10)
    -   [larpandora v06\_05\_02](#larpandora-v06_05_02)
    -   [larwirecell v06\_00\_07](#larwirecell-v06_00_07)
    -   [larana v06\_03\_13](#larana-v06_03_13)
    -   [larreco v06\_16\_00](#larreco-v06_16_00)
    -   [larsim v06\_10\_04](#larsim-v06_10_04)
    -   [larevt v06\_07\_04](#larevt-v06_07_04)
    -   [lardata v06\_13\_00](#lardata-v06_13_00)
    -   [larcore v06\_05\_01](#larcore-v06_05_01)
    -   [larsoftobj v1\_08\_02](#larsoftobj-v1_08_02)
    -   [lardataobj v1\_08\_00](#lardataobj-v1_08_00)
    -   [larcoreobj v1\_06\_01](#larcoreobj-v1_06_01)
    -   [larbatch v01\_26\_03](#larbatch-v01_26_03)
    -   [larutils v1\_11\_00](#larutils-v1_11_00)

[list of LArSoft releases](LArSoft_release_list)\
Download instructions for [larsoft v06\_21\_00](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v06_21_00/larsoft-v06_21_00.html)\
Download instructions for [just larsoftobj v1\_08\_02](http://scisoft.fnal.gov/scisoft/bundles/larsoftobj/v1_08_02/larsoftobj-v1_08_02.html)

Purpose(#Purpose)
--------------------

-   changes in develop
-   approved features
-   nutools bug fix

New features(#New-features)
------------------------------

-   lardata, larreco feature/gp\_MoveDumpHits
-   larsim feature/wketchum\_InTimeCosmic

Bug fixes(#Bug-fixes)
------------------------

-   nutools with fix for [\#15123](/redmine/issues/15123 "Bug: sim::ParticleList::clear() does not clear the set of primary particles (Closed)")
-   photon backtracker bug [\#15012](/redmine/issues/15012 "Bug: Job crashes if no photon backtracker information is available (Closed)") is resolved

Updated dependencies(#Updated-dependencies)
----------------------------------------------

  ------------------- ------------- ------------ --------------------------------------------------------------------------------------------------
  Product             Version       Qualifiers   Notes
  nutools             v2\_09\_02    e10          [NuTools\_Release\_Notes](/redmine/projects/nutools/wiki/NuTools_Release_Notes#nutools-v2_09_02)
  larpandoracontent   v03\_01\_03   e10          
  ------------------- ------------- ------------ --------------------------------------------------------------------------------------------------

Change List(#Change-List)
============================

larsoft v06\_21\_00(#larsoft-v06_21_00)
------------------------------------------

-   2017-01-18 Lynn Garren : larsoft v06\_21\_00 for larsoft v06\_21\_00
-   2017-01-18 Lynn Garren : update product versions
-   2017-01-18 Lynn Garren : update dependency database

lareventdisplay v06\_02\_09(#lareventdisplay-v06_02_09)
----------------------------------------------------------

-   2017-01-18 Lynn Garren : lareventdisplay v06\_02\_09 for larsoft v06\_21\_00

larexamples v06\_01\_10(#larexamples-v06_01_10)
--------------------------------------------------

-   2017-01-18 Lynn Garren : larexamples v06\_01\_10 for larsoft v06\_21\_00

larpandora v06\_05\_02(#larpandora-v06_05_02)
------------------------------------------------

-   2017-01-18 Lynn Garren : larpandora v06\_05\_02 for larsoft v06\_21\_00

larwirecell v06\_00\_07(#larwirecell-v06_00_07)
--------------------------------------------------

-   2017-01-18 Lynn Garren : larwirecell v06\_00\_07 for larsoft v06\_21\_00

larana v06\_03\_13(#larana-v06_03_13)
----------------------------------------

-   2017-01-18 Lynn Garren : larana v06\_03\_13 for larsoft v06\_21\_00

larreco v06\_16\_00(#larreco-v06_16_00)
------------------------------------------

-   2017-01-18 Lynn Garren : larreco v06\_16\_00 for larsoft v06\_21\_00
-   2017-01-18 Lynn Garren : use nutools v2\_09\_02
-   2017-01-18 Lynn Garren : Merge branch ‘feature/gp\_MoveDumpHits’ into release/v06\_21\_00
-   2017-01-09 Gianluca Petrillo : DumpHits module moved to lardata (with the other dumpers)

larsim v06\_10\_04(#larsim-v06_10_04)
----------------------------------------

-   2017-01-18 Lynn Garren : larsim v06\_10\_04 for larsoft v06\_21\_00
-   2017-01-18 Lynn Garren : Merge branch ‘feature/wketchum\_InTimeCosmic’ into release/v06\_21\_00
-   2017-01-17 Jason Stock : Implimenting fix to only throw an error for missing OpDetBacktrackerRecords when using backtracker functions. The configuration will succede with non-photonbacktrackable files, but calling backtracker functions from such files will now throw a CET exception.
-   2017-01-02 Wesley Ketchum : add an always pass option
-   2016-12-27 Wesley Ketchum : Merge branch ‘develop’ of ssh://cdcvs.fnal.gov/cvs/projects/larsim into feature/wketchum\_InTimeCosmic
-   2016-12-21 Wesley Ketchum : do poisson randomization on the number of showers to process
-   2016-12-21 Wesley Ketchum : allow filter to split mctruth into two collections

larevt v06\_07\_04(#larevt-v06_07_04)
----------------------------------------

-   2017-01-18 Lynn Garren : larevt v06\_07\_04 for larsoft v06\_21\_00

lardata v06\_13\_00(#lardata-v06_13_00)
------------------------------------------

-   2017-01-18 Lynn Garren : lardata v06\_13\_00 for larsoft v06\_21\_00
-   2017-01-18 Lynn Garren : use nutools v2\_09\_02
-   2017-01-18 Lynn Garren : Merge branch ‘feature/gp\_MoveDumpHits’ into release/v06\_21\_00
-   2017-01-09 Gianluca Petrillo : Moved DumpHits from larreco to lardata with the other dumpers.

larcore v06\_05\_01(#larcore-v06_05_01)
------------------------------------------

larsoftobj v1\_08\_02(#larsoftobj-v1_08_02)
----------------------------------------------

lardataobj v1\_08\_00(#lardataobj-v1_08_00)
----------------------------------------------

larcoreobj v1\_06\_01(#larcoreobj-v1_06_01)
----------------------------------------------

larbatch v01\_26\_03(#larbatch-v01_26_03)
--------------------------------------------

-   2017-01-18 Lynn Garren : larbatch v01\_26\_03 for larsoft v06\_21\_00
-   2017-01-13 Herbert Greenlee : Merge branch ‘develop’ of ssh://cdcvs.fnal.gov/cvs/projects/larbatch into develop
-   2017-01-13 Herbert Greenlee : Improve ability of larbatch\_posix to handle directory paths that end in ‘/’.

larutils v1\_11\_00(#larutils-v1_11_00)
------------------------------------------
