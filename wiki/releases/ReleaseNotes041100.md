LArSoft v04_11_00 Release Notes
======================================================================

-   **Table of contents**
-   [LArSoft v04_11_00 Release Notes](#LArSoft-v04_11_00-Release-Notes)
    -   [Purpose](#Purpose)
    -   [New features](#New-features)
    -   [Bug fixes](#Bug-fixes)
    -   [Known Problems](#Known-Problems)
    -   [Updated dependencies](#Updated-dependencies)
-   [Change List](#Change-List)
    -   [larsoft v04_11_00](#larsoft-v04_11_00)
    -   [lareventdisplay v04_04_09](#lareventdisplay-v04_04_09)
    -   [larexamples v04_04_09](#larexamples-v04_04_09)
    -   [larpandora v04_04_09](#larpandora-v04_04_09)
    -   [larana v04_07_01](#larana-v04_07_01)
    -   [larreco v04_07_02](#larreco-v04_07_02)
    -   [larsim v04_07_05](#larsim-v04_07_05)
    -   [larevt v04_07_03](#larevt-v04_07_03)
    -   [lardata v04_08_00](#lardata-v04_08_00)
    -   [larcore v04_10_00](#larcore-v04_10_00)
    -   [larbatch v01_09_00](#larbatch-v01_09_00)
    -   [larutils v1_00_11](#larutils-v1_00_11)

[list of LArSoft releases](LArSoft_release_list)
[Download instructions](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v04_11_00/larsoft-v04_11_00.html)

Purpose
--------------------

-   Build with [art v1_14_02](https://cdcvs.fnal.gov/redmine/projects/art/wiki/Release_Notes_11402)
-   See [redmine issue 8898](https://cdcvs.fnal.gov/redmine/issues/8898)

New features
------------------------------

-   art now supports reading data products from secondary input files
-   art has improved memory usage

Bug fixes
------------------------

-   ifdhc v1_8_3
-   libwda v2_21_0a

Known Problems
----------------------------------

-   See [redmine issue 9108](https://cdcvs.fnal.gov/redmine/issues/9108)
-   If you see undefined reference errors similar to those shown below, add \${Boost_SYSTEM_LIBRARY} to the library link list

        CMakeFiles/LArPandoraInterface.dir/LArPandoraBase.cxx.o: In function `__static_initialization_and_destruction_0':
        /products/boost/v1_57_0/Linux64bit+2.6-2.12-e7-prof/include/boost/system/error_code.hpp:221: undefined reference to `boost::system::generic_category()'
        /products/boost/v1_57_0/Linux64bit+2.6-2.12-e7-prof/include/boost/system/error_code.hpp:222: undefined reference to `boost::system::generic_category()'
        /products/boost/v1_57_0/Linux64bit+2.6-2.12-e7-prof/include/boost/system/error_code.hpp:223: undefined reference to `boost::system::system_category()'

Updated dependencies
----------------------------------------------

||
|Product|Version|Qualifier|Notes|
|git|v2_3_0|||
|gdb|v7_9|||
|tbb|v4_3_5|e7||
|root|v5_34_30|e7:nu||
|pandora|v01_01_00b|e7:nu||
|genie|v2_8_6b|e7||
|dk2nu|v01_01_03b|e7||
|libwda|v2_21_0a|||
|qt|v5_4_1|e7||
|geant4|v4_9_6_p04a|e7:qt|qt build of geant4 available|
|ifdhc|v1_8_3|p279:e7||
|ifbeam|v1_4_10|p279:e7||
|nucondb|v1_4_10|p279:e7||
|cetbuildtools|v4_11_01|||
|cpp0x|v1_04_10|e7||
|cetlib|v1_12_01|e7||
|fhiclcpp|v3_05_02|e7||
|messagefacility|v1_14_05|e7||
|art|v1_14_02|e7:nu||
|ifdh_art|v1_10_01|e7:nu:s11||
|nutools|v1_11_01|e7 & e7:noifdh||
|artdaq_core|v1_04_13|e7:nu:s11||
|artextensions|v1_01_05|e7:nu:s11||
|mrb|v1_04_05|||

Change List
============================

larsoft v04_11_00
------------------------------------------

-   2015-06-05 Lynn Garren : larsoft v04_11_00 for larsoft v04_11_00
-   2015-06-05 Lynn Garren : using cetbuildtools v4_11_01
-   2015-06-03 Lynn Garren : new product suite for art v1_14_02

lareventdisplay v04_04_09
----------------------------------------------------------

-   2015-06-03 Lynn Garren : lareventdisplay v04_04_09 for larsoft v04_11_00

larexamples v04_04_09
--------------------------------------------------

-   2015-06-03 Lynn Garren : larexamples v04_04_09 for larsoft v04_11_00

larpandora v04_04_09
------------------------------------------------

-   2015-06-05 Lynn Garren : larpandora v04_04_09 for larsoft v04_11_00
-   2015-06-05 Lynn Garren : add Boost_SYSTEM_LIBRARY

larana v04_07_01
----------------------------------------

-   2015-06-05 Lynn Garren : larana v04_07_01 for larsoft v04_11_00
-   2015-06-04 Lynn Garren : add Boost_SYSTEM_LIBRARY

larreco v04_07_02
------------------------------------------

-   2015-06-05 Lynn Garren : larreco v04_07_02 for larsoft v04_11_00
-   2015-06-04 Lynn Garren : need Boost_SYSTEM_LIBRARY
-   2015-06-04 Lynn Garren : specify library name
-   2015-06-03 Lynn Garren : need Boost_SYSTEM_LIBRARY

larsim v04_07_05
----------------------------------------

-   2015-06-05 Lynn Garren : larsim v04_07_05 for larsoft v04_11_00
-   2015-06-04 Lynn Garren : add Boost_SYSTEM_LIBRARY

larevt v04_07_03
----------------------------------------

-   2015-06-05 Lynn Garren : larevt v04_07_03 for larsoft v04_11_00
-   2015-06-04 Lynn Garren : need Boost_SYSTEM_LIBRARY
-   2015-06-04 Lynn Garren : add Boost_SYSTEM_LIBRARY

lardata v04_08_00
------------------------------------------

-   2015-06-05 Lynn Garren : lardata v04_08_00 for larsoft v04_11_00
-   2015-06-04 Lynn Garren : RawData also needs Boost_SYSTEM_LIBRARY
-   2015-06-03 Lynn Garren : need Boost_SYSTEM_LIBRARY

larcore v04_10_00
------------------------------------------

-   2015-06-03 Lynn Garren : larcore v04_10_00 for larsoft v04_11_00

larbatch v01_09_00
--------------------------------------------

larutils v1_00_11
------------------------------------------

-   2015-06-05 Lynn Garren : larutils v1_00_11 for larsoft v04_11_00
-   2015-06-03 Lynn Garren : add s11:e7
