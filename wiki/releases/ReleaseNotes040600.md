LArSoft v04_06_00 Release Notes
======================================================================

[list of LArSoft releases](LArSoft_release_list)
[Download instructions](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v04_06_00/larsoft-v04_06_00.html)

Purpose
--------------------

Migrate to art v1_13_02 and pick up postgresql v9_3_6.

New features
------------------------------

-   CalibrationDBI is enabled in larevt
-   larpandora has been rewritten for pandora v01_01_00a
-   This release is built with art v1_13_02
-   The distribution qualifer set is now s8-e7 [AboutQualifiers](https://cdcvs.fnal.gov/redmine/projects/cet-is-public/wiki/AboutQualifiers)

Bug fixes
------------------------

-   [Art v1_13_02 Release Notes](https://cdcvs.fnal.gov/redmine/projects/art/wiki/Release_Notes_11302)

Updated dependencies
----------------------------------------------

||
|Product|Version|Qualifier|Notes|
|artdaq_core|v1_04_11|e7:nu:s8||
|nutools|v1_09_02|e7 and e7:noifdh||
|genie|v2_8_6a|e7||
|dk2nu|v01_01_03a|e7||
|pandora|v01_01_00a|e7:nu||
|postgresql|v9_3_6|p279||
|artextensions|v1_01_03|e7:nu:s8||
|ifdh_art|v1_09_00|e7:nu:s8|not available for OSX|
|nucondb|v1_4_9|e7:p279|not available for OSX|
|ifbeam|v1_4_9|e7:p279|not available for OSX|
|ifdhc|v1_8_2|e7:p279|not available for OSX|
|libwda|v2_21_0||works on OSX|
|art|v1_13_02|e7:nu||
|root|v5_34_25a|e7:nu||
|cetbuildtools|v4_09_02|||
|cetpkgsupport|v1_08_05|||
|cmake|v3_2_1|||
|ups|v5_1_4|||

Change List
============================

larsoft v04_06_00
------------------------------------------

-   2015-04-23 Lynn Garren : Merge branch ‘release/v04_06_00’
-   2015-04-23 Lynn Garren : larutils v1_00_08
-   2015-04-23 Lynn Garren : larsoft v04_06_00 for larsoft v04_06_00
-   2015-04-23 Lynn Garren : new products for art v1_13_02
-   2015-04-23 Lynn Garren : update releaseDB/base_dependency_database

lareventdisplay v04_04_00
----------------------------------------------------------

-   2015-04-23 Lynn Garren : lareventdisplay v04_04_00 for larsoft v04_06_00

larexamples v04_04_00
--------------------------------------------------

-   2015-04-23 Lynn Garren : larexamples v04_04_00 for larsoft v04_06_00

larpandora v04_04_00
------------------------------------------------

-   2015-04-23 Lynn Garren : larpandora v04_04_00 for larsoft v04_06_00
-   2015-04-23 Lynn Garren : Merge branch ‘feature/blake_pandora_v1_0_0’ into release/v04_06_00
-   2015-04-23 Lynn Garren : larpandora v04_04_00 for larsoft v04_06_00
-   2015-03-13 Andrew Blake : Modifying cmake scripts to use external Pandoa version, and adding full paths to header files in LArPandoraInterface.
-   2015-03-13 Andrew Blake : Removing LArPandoraAlgorithms from larpandora repository

larana v04_05_00
----------------------------------------

-   2015-04-23 Lynn Garren : larana v04_05_00 for larsoft v04_06_00
-   2015-04-21 Alex Himmel : Bug fix to prevent attempts to use invalid handles. Occurs when all labels in the input array do not actually exist in the event. Fixes crashes in uboone cosmic MCC reconstruction.
-   2015-04-18 Alex Himmel : Don’t double count QE for Microboone (not currently an issues since uboone does not use opdetresponse in the digitizer).
-   2015-04-18 Alex Himmel : Only use input labels to the flash finder which have data on them. Already fixed in uboone production fcl files, but fix here also just in case.

larreco v04_04_00
------------------------------------------

-   2015-04-23 Lynn Garren : larreco v04_04_00 for larsoft v04_06_00
-   2015-04-20 Tingjun Yang : Add protection.
-   2015-04-17 Gianluca Petrillo : ClusterCrawlerAlg: fixed a bug in sorting hits by index
-   2015-04-15 Tingjun Yang : change wirehitrange from short to int
-   2015-04-23 Tingjun Yang : Make the sizes of trkPos and trkDir equal.
-   2015-04-22 Tingjun Yang : Change unsigned short to unsigned int since size of matcomb can exceed 65534.
-   2015-04-19 Tingjun Yang : Check trk[itr].nDtr is less than 20 (the array size).
-   2015-04-16 Kalousis Leonidas : Add a separate MCS muon LLHD function

larsim v04_05_00
----------------------------------------

-   2015-04-23 Lynn Garren : larsim v04_05_00 for larsoft v04_06_00

larevt v04_05_00
----------------------------------------

-   2015-04-23 Lynn Garren : larevt v04_05_00 for larsoft v04_06_00
-   2015-04-23 Lynn Garren : minimum release libwda v2_21_0
-   2015-04-23 Lynn Garren : Merge branch ‘feature/eberly_calibdb’ into release/v04_06_00
-   2015-04-23 Lynn Garren : larevt v04_05_00 for larsoft v04_06_00
-   2015-04-15 Lynn Garren : use find_library to get the correct library name on all supported platforms
-   2015-04-15 Lynn Garren : libwda v2_21_0_rc1 is available for all supported platforms
-   2015-04-15 Lynn Garren : use find_ups_product(libwda)

lardata v04_05_00
------------------------------------------

-   2015-04-23 Lynn Garren : lardata v04_05_00 for larsoft v04_06_00

larcore v04_05_00
------------------------------------------

-   2015-04-23 Lynn Garren : larcore v04_05_00 for larsoft v04_06_00

larbatch v01_06_00
--------------------------------------------

-   2015-04-23 Lynn Garren : larbatch v01_06_00 for larsoft v04_06_00
-   2015-04-23 Herbert Greenlee : Fix randomized name of analysis files.
-   2015-04-21 Herbert Greenlee : Set subrun for makeup generation jobs.
-   2015-04-21 Mike Kirby : Made modifications to larbatch to allow for sending only once file as input to each job. This adds “–nfiles \<maxfilesperjob\>” to the condor_lar.sh command line options.

larutils v1_00_08
------------------------------------------

-   2015-04-23 Lynn Garren : Merge branch ‘release/v04_06_00’
-   2015-04-23 Lynn Garren : larutils v1_00_08
-   2015-04-23 Lynn Garren : add s8 for art v1_13_02
