LArSoft v04\_33\_00 Release Notes(#LArSoft-v04_33_00-Release-Notes)
======================================================================

-   **Table of contents**
-   [LArSoft v04\_33\_00 Release Notes](#LArSoft-v04_33_00-Release-Notes)
    -   [Purpose](#Purpose)
    -   [New features](#New-features)
    -   [Bug fixes](#Bug-fixes)
    -   [Known problems](#Known-problems)
    -   [Updated dependencies](#Updated-dependencies)
-   [Change List](#Change-List)
    -   [larsoft v04\_33\_00](#larsoft-v04_33_00)
    -   [lareventdisplay v04\_14\_00](#lareventdisplay-v04_14_00)
    -   [larexamples v04\_06\_11](#larexamples-v04_06_11)
    -   [larpandora v04\_09\_02](#larpandora-v04_09_02)
    -   [larana v04\_16\_09](#larana-v04_16_09)
    -   [larreco v04\_27\_02](#larreco-v04_27_02)
    -   [larsim v04\_18\_00](#larsim-v04_18_00)
    -   [larevt v04\_14\_01](#larevt-v04_14_01)
    -   [lardata v04\_20\_00](#lardata-v04_20_00)
    -   [larcore v04\_25\_00](#larcore-v04_25_00)
    -   [larbatch v01\_20\_02](#larbatch-v01_20_02)
    -   [larutils v1\_04\_07](#larutils-v1_04_07)

[list of LArSoft releases](LArSoft_release_list)\
[Download instructions](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v04_33_00/larsoft-v04_33_00.html)

Purpose(#Purpose)
--------------------

-   changes to development since v04\_32\_01
-   use art v1\_17\_06

New features(#New-features)
------------------------------

Bug fixes(#Bug-fixes)
------------------------

-   Bug [\#11340](/redmine/issues/11340 "Bug: MemoryTracker and TimeTracker file sqlite db crash (Closed)") reported by MicroBooNE

Known problems(#Known-problems)
----------------------------------

-   generating with genie is broken [\#11441](/redmine/issues/11441 "Bug: misnamed library (Closed)")
    -   The problem is resolved with nutools v1\_20\_02

Updated dependencies(#Updated-dependencies)
----------------------------------------------

  --------------- ------------ ------------ -------------------------------------------------------------------------
  Product         Version      Qualifiers   Notes
  art             v1\_17\_06   e9:nu        [Release Notes 1.17.06](/redmine/projects/art/wiki/Release_Notes_11706)
  artdaq\_core    v1\_04\_27   e9:nu:s28    
  ifdh\_art       v1\_14\_06   e9:nu:s28    
  libwda          v2\_22\_2                 
  nutools         v1\_20\_01   e9           
  artextensions   v1\_02\_06   e9:nu:s28    
  --------------- ------------ ------------ -------------------------------------------------------------------------

Change List(#Change-List)
============================

larsoft v04\_33\_00(#larsoft-v04_33_00)
------------------------------------------

-   2016-01-14 Lynn Garren : larsoft v04\_33\_00 for larsoft v04\_33\_00
-   2016-01-14 Lynn Garren : artextensions v1\_02\_06
-   2016-01-14 Lynn Garren : s28
-   2016-01-14 Lynn Garren : update product versions
-   2016-01-14 Lynn Garren : libwda v2\_22\_2
-   2016-01-07 Lynn Garren : s26

lareventdisplay v04\_14\_00(#lareventdisplay-v04_14_00)
----------------------------------------------------------

-   2016-01-14 Lynn Garren : lareventdisplay v04\_14\_00 for larsoft v04\_33\_00
-   2016-01-13 Tracy Usher : Add option to draw tracks associated to a vertex (this will allow MicroBooNE to “see” candidate neutrinos tagged by its filter). Should not change anything else!

larexamples v04\_06\_11(#larexamples-v04_06_11)
--------------------------------------------------

-   2016-01-14 Lynn Garren : larexamples v04\_06\_11 for larsoft v04\_33\_00

larpandora v04\_09\_02(#larpandora-v04_09_02)
------------------------------------------------

-   2016-01-14 Lynn Garren : larpandora v04\_09\_02 for larsoft v04\_33\_00

larana v04\_16\_09(#larana-v04_16_09)
----------------------------------------

-   2016-01-14 Lynn Garren : larana v04\_16\_09 for larsoft v04\_33\_00
-   2016-01-12 Tingjun Yang : Update dune calorimetry configurations.

larreco v04\_27\_02(#larreco-v04_27_02)
------------------------------------------

-   2016-01-14 Lynn Garren : larreco v04\_27\_02 for larsoft v04\_33\_00
-   2016-01-13 Chao Zhang : Merge branch ‘develop’ of ssh://cdcvs.fnal.gov/cvs/projects/larreco into develop
-   2016-01-13 Chao Zhang : add dune10kt\_workspace detector
-   2016-01-12 Mike Wallbank : Change to work with global TPC
-   2016-01-12 Mike Wallbank : Provide the start of the shower to the PMAlg track making methods, to improve quality of shower start

larsim v04\_18\_00(#larsim-v04_18_00)
----------------------------------------

-   2016-01-14 Lynn Garren : larsim v04\_18\_00 for larsoft v04\_33\_00
-   2016-01-08 Matthew Bass : Added retrieval of flux database files via ifdhc based on fixed or wildcard file paths.

larevt v04\_14\_01(#larevt-v04_14_01)
----------------------------------------

-   2016-01-14 Lynn Garren : larevt v04\_14\_01 for larsoft v04\_33\_00

lardata v04\_20\_00(#lardata-v04_20_00)
------------------------------------------

-   2016-01-14 Lynn Garren : lardata v04\_20\_00 for larsoft v04\_33\_00

larcore v04\_25\_00(#larcore-v04_25_00)
------------------------------------------

-   2016-01-14 Lynn Garren : larcore v04\_25\_00 for larsoft v04\_33\_00

larbatch v01\_20\_02(#larbatch-v01_20_02)
--------------------------------------------

larutils v1\_04\_07(#larutils-v1_04_07)
------------------------------------------

-   2016-01-14 Lynn Garren : larutils v1\_04\_07 for larsoft v04\_33\_00
-   2016-01-14 Herbert Greenlee : Change tarball name for uboone\_data from .gz to .bz2.
-   2016-01-14 Lynn Garren : add s28
-   2016-01-10 Lynn Garren : add s18:e7
