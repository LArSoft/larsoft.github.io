LArSoft v04_33_00 Release Notes
======================================================================

[list of LArSoft releases](LArSoft_release_list)
[Download instructions](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v04_33_00/larsoft-v04_33_00.html)

Purpose
--------------------

-   changes to development since v04_32_01
-   use art v1_17_06

New features
------------------------------

Bug fixes
------------------------

-   Bug [redmine issue 11340](https://cdcvs.fnal.gov/redmine/issues/11340) reported by MicroBooNE

Known problems
----------------------------------

-   generating with genie is broken [redmine issue 11441](https://cdcvs.fnal.gov/redmine/issues/11441)
    -   The problem is resolved with nutools v1_20_02

Updated dependencies
----------------------------------------------

||
|Product|Version|Qualifiers|Notes|
|art|v1_17_06|e9:nu|[Release Notes 1.17.06](https://cdcvs.fnal.gov/redmine/projects/art/wiki/Release_Notes_11706)|
|artdaq_core|v1_04_27|e9:nu:s28||
|ifdh_art|v1_14_06|e9:nu:s28||
|libwda|v2_22_2|||
|nutools|v1_20_01|e9||
|artextensions|v1_02_06|e9:nu:s28||

Change List
============================

larsoft v04_33_00
------------------------------------------

-   2016-01-14 Lynn Garren : larsoft v04_33_00 for larsoft v04_33_00
-   2016-01-14 Lynn Garren : artextensions v1_02_06
-   2016-01-14 Lynn Garren : s28
-   2016-01-14 Lynn Garren : update product versions
-   2016-01-14 Lynn Garren : libwda v2_22_2
-   2016-01-07 Lynn Garren : s26

lareventdisplay v04_14_00
----------------------------------------------------------

-   2016-01-14 Lynn Garren : lareventdisplay v04_14_00 for larsoft v04_33_00
-   2016-01-13 Tracy Usher : Add option to draw tracks associated to a vertex (this will allow MicroBooNE to “see” candidate neutrinos tagged by its filter). Should not change anything else!

larexamples v04_06_11
--------------------------------------------------

-   2016-01-14 Lynn Garren : larexamples v04_06_11 for larsoft v04_33_00

larpandora v04_09_02
------------------------------------------------

-   2016-01-14 Lynn Garren : larpandora v04_09_02 for larsoft v04_33_00

larana v04_16_09
----------------------------------------

-   2016-01-14 Lynn Garren : larana v04_16_09 for larsoft v04_33_00
-   2016-01-12 Tingjun Yang : Update dune calorimetry configurations.

larreco v04_27_02
------------------------------------------

-   2016-01-14 Lynn Garren : larreco v04_27_02 for larsoft v04_33_00
-   2016-01-13 Chao Zhang : Merge branch ‘develop’ of ssh://cdcvs.fnal.gov/cvs/projects/larreco into develop
-   2016-01-13 Chao Zhang : add dune10kt_workspace detector
-   2016-01-12 Mike Wallbank : Change to work with global TPC
-   2016-01-12 Mike Wallbank : Provide the start of the shower to the PMAlg track making methods, to improve quality of shower start

larsim v04_18_00
----------------------------------------

-   2016-01-14 Lynn Garren : larsim v04_18_00 for larsoft v04_33_00
-   2016-01-08 Matthew Bass : Added retrieval of flux database files via ifdhc based on fixed or wildcard file paths.

larevt v04_14_01
----------------------------------------

-   2016-01-14 Lynn Garren : larevt v04_14_01 for larsoft v04_33_00

lardata v04_20_00
------------------------------------------

-   2016-01-14 Lynn Garren : lardata v04_20_00 for larsoft v04_33_00

larcore v04_25_00
------------------------------------------

-   2016-01-14 Lynn Garren : larcore v04_25_00 for larsoft v04_33_00

larbatch v01_20_02
--------------------------------------------

larutils v1_04_07
------------------------------------------

-   2016-01-14 Lynn Garren : larutils v1_04_07 for larsoft v04_33_00
-   2016-01-14 Herbert Greenlee : Change tarball name for uboone_data from .gz to .bz2.
-   2016-01-14 Lynn Garren : add s28
-   2016-01-10 Lynn Garren : add s18:e7
