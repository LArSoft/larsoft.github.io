LArSoft v06_30_00 Release Notes
======================================================================

-   **Table of contents**
-   [LArSoft v06_30_00 Release Notes](#LArSoft-v06_30_00-Release-Notes)
    -   [Purpose](#Purpose)
    -   [New features](#New-features)
    -   [Breaking Changes](#Breaking-Changes)
    -   [Updated dependencies](#Updated-dependencies)
-   [Change List](#Change-List)
    -   [larsoft v06_30_00](#larsoft-v06_30_00)
    -   [lareventdisplay v06_04_00](#lareventdisplay-v06_04_00)
    -   [larexamples v06_02_00](#larexamples-v06_02_00)
    -   [larpandora v06_09_00](#larpandora-v06_09_00)
    -   [larwirecell v06_02_00](#larwirecell-v06_02_00)
    -   [larana v06_04_00](#larana-v06_04_00)
    -   [larreco v06_24_00](#larreco-v06_24_00)
    -   [larsim v06_16_00](#larsim-v06_16_00)
    -   [larevt v06_09_00](#larevt-v06_09_00)
    -   [lardata v06_17_00](#lardata-v06_17_00)
    -   [larcore v06_07_00](#larcore-v06_07_00)
    -   [larpandoracontent v03_03_00](#larpandoracontent-v03_03_00)
    -   [larsoftobj v1_16_00](#larsoftobj-v1_16_00)
    -   [lardataobj v1_14_00](#lardataobj-v1_14_00)
    -   [larcoreobj v1_10_00](#larcoreobj-v1_10_00)
    -   [larbatch v01_28_01](#larbatch-v01_28_01)
    -   [larutils v1_12_01](#larutils-v1_12_01)

[list of LArSoft releases](LArSoft_release_list)
Download instructions for [larsoft v06_30_00](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v06_30_00/larsoft-v06_30_00.html)
Download instructions for [just larsoftobj v1_16_00](http://scisoft.fnal.gov/scisoft/bundles/larsoftobj/v1_16_00/larsoftobj-v1_16_00.html)

Purpose
--------------------

-   build with art 2.06.03 and nutools 2.12.00
-   based off the v06_29_00 tag
-   This release only supports an e10 build

New features
------------------------------

-   art [v2_06_03](https://cdcvs.fnal.gov/redmine/projects/art/wiki/Release_Notes_20603)
-   nutools [v2_12_00](https://cdcvs.fnal.gov/redmine/projects/nutools/wiki/NuTools_Release_Notes#nutools-v2_12_00-3302017)

Breaking Changes
--------------------------------------

-   There is only one canvas library, named canvas.
-   The cetlib library has been split into cetlib and cetlib_except.
    -   “cetlib/demangle.h” is now “cetlib_except/demangle.h”
-   Run UpdateArt206.sh
-   Required changes are found on v06_30_00-branch in the experiment repositories.

Updated dependencies
----------------------------------------------

||
|Product|Version|Qualifiers|Notes|
|nutools|v2_12_00|e10|[NuTools_Release_Notes](https://cdcvs.fnal.gov/redmine/projects/nutools/wiki/NuTools_Release_Notes#nutools-v2_12_00)|
|nusimdata|v1_07_01|e10||
|ifdh_art|v2_01_02|e10:nu:s48||
|artdaq_core|v1_07_02|e10:nu:s48||
|art|v2_06_03|e10:nu|[Release Notes 2.06.03](https://cdcvs.fnal.gov/redmine/projects/art/wiki/Release_Notes_20603)|
|canvas|v1_06_04|e10:nu||
|clhep|v2_3_4_4|e10||
|root|v6_08_06d|e10:nu||
|python|v2_7_13d|||

Change List
============================

larsoft v06_30_00
------------------------------------------

-   2017-04-03 Lynn Garren : larsoft v06_30_00
-   2017-04-03 Lynn Garren : for larsoftobj
-   2017-03-30 Lynn Garren : Merge branch ‘v06_30_00_rc’ into v06_30_00-branch
-   2017-03-10 Lynn Garren : cetbuildtools v5_06_07
-   2017-03-10 Lynn Garren : for larsoft v06_30_00_rc1 with art v2_06_01
-   2017-03-09 Lynn Garren : Merge branch ‘feature/at_for_art_2_06’ into release/v06_30_00_rc1
-   2017-03-09 Lynn Garren : for art v2_06
-   2017-03-09 Lynn Garren : working script
-   2017-03-05 Lynn Garren : update the product stack
-   2017-03-05 Lynn Garren : fixup scripts for art 2.06

lareventdisplay v06_04_00
----------------------------------------------------------

-   2017-04-03 Lynn Garren : lareventdisplay v06_04_00
-   2017-03-30 Lynn Garren : Merge branch ‘v06_30_00_rc’ into v06_30_00-branch
-   2017-03-10 Lynn Garren : for larsoft v06_30_00_rc1 with art v2_06_01
-   2017-03-10 Lynn Garren : Merge branch ‘feature/at_for_art_2_06’ into release/v06_30_00_rc1
-   2017-03-09 Lynn Garren : for art v2_06
-   2017-03-09 Lynn Garren : fix link lists
-   2017-03-09 Lynn Garren : fix header

larexamples v06_02_00
--------------------------------------------------

-   2017-04-03 Lynn Garren : larexamples v06_02_00
-   2017-03-30 Lynn Garren : Merge branch ‘v06_30_00_rc’ into v06_30_00-branch
-   2017-03-10 Lynn Garren : for larsoft v06_30_00_rc1 with art v2_06_01
-   2017-03-10 Lynn Garren : cleanup link list
-   2017-03-10 Lynn Garren : Merge branch ‘feature/at_for_art_2_06’ into release/v06_30_00_rc1
-   2017-03-09 Lynn Garren : for art v2_06
-   2017-03-09 Lynn Garren : fix link lists
-   2017-03-09 Lynn Garren : fix link lists

larpandora v06_09_00
------------------------------------------------

-   2017-04-03 Lynn Garren : larpandora v06_09_00
-   2017-03-30 Lynn Garren : Merge branch ‘v06_30_00_rc’ into v06_30_00-branch
-   2017-03-10 Lynn Garren : for larsoft v06_30_00_rc1 with art v2_06_01
-   2017-03-10 Lynn Garren : Merge branch ‘feature/at_for_art_2_06’ into release/v06_30_00_rc1
-   2017-03-09 Lynn Garren : for art v2_06
-   2017-03-09 Lynn Garren : fix link list

larwirecell v06_02_00
--------------------------------------------------

-   2017-04-03 Lynn Garren : larwirecell v06_02_00
-   2017-03-30 Lynn Garren : Merge branch ‘v06_30_00_rc’ into v06_30_00-branch
-   2017-03-10 Lynn Garren : for larsoft v06_30_00_rc1 with art v2_06_01
-   2017-03-10 Lynn Garren : Merge branch ‘feature/at_for_art_2_06’ into release/v06_30_00_rc1
-   2017-03-06 Lynn Garren : for art v2_06
-   2017-03-06 Lynn Garren : fix link list

larana v06_04_00
----------------------------------------

-   2017-04-03 Lynn Garren : larana v06_04_00 for larsoft v06_30_00
-   2017-03-30 Lynn Garren : Merge branch ‘v06_30_00_rc’ into v06_30_00-branch
-   2017-03-10 Lynn Garren : for larsoft v06_30_00_rc1 with art v2_06_01
-   2017-03-10 Lynn Garren : cleanup link list
-   2017-03-10 Lynn Garren : Merge branch ‘feature/at_for_art_2_06’ into release/v06_30_00_rc1
-   2017-03-09 Lynn Garren : for art v2_06
-   2017-03-09 Lynn Garren : fix link lists

larreco v06_24_00
------------------------------------------

-   2017-04-03 Lynn Garren : larreco v06_24_00
-   2017-03-30 Lynn Garren : fix link list
-   2017-03-30 Lynn Garren : Merge branch ‘v06_30_00_rc’ into v06_30_00-branch
-   2017-03-10 Lynn Garren : for larsoft v06_30_00_rc1 with art v2_06_01
-   2017-03-10 Lynn Garren : Merge branch ‘feature/at_for_art_2_06’ into release/v06_30_00_rc1
-   2017-03-06 Lynn Garren : use nutools v2_11_00
-   2017-03-06 Lynn Garren : picking up the proper fix
-   2017-03-06 Tingjun Yang : Initialize hitcoord.
-   2017-03-06 Lynn Garren : fix link lists
-   2017-03-06 Lynn Garren : initialize hitcoord and contact the author of the code
-   2017-03-06 Lynn Garren : replace InsertFailure with ProductRegistrationFailure
-   2017-03-06 Lynn Garren : include missing header

larsim v06_16_00
----------------------------------------

-   2017-04-03 Lynn Garren : larsim v06_16_00
-   2017-03-30 Lynn Garren : Merge branch ‘v06_30_00_rc’ into v06_30_00-branch
-   2017-03-10 Lynn Garren : for larsoft v06_30_00_rc1 with art v2_06_01
-   2017-03-10 Lynn Garren : Merge branch ‘feature/at_for_art_2_06’ into release/v06_30_00_rc1
-   2017-03-06 Lynn Garren : for art v2_06
-   2017-03-06 Lynn Garren : adjust link lists
-   2017-03-06 Lynn Garren : simple_plugin does not supply cetlib_except

larevt v06_09_00
----------------------------------------

-   2017-04-03 Lynn Garren : larevt v06_09_00
-   2017-03-30 Lynn Garren : Merge branch ‘v06_30_00_rc’ into v06_30_00-branch
-   2017-03-10 Lynn Garren : for larsoft v06_30_00_rc1 with art v2_06_01
-   2017-03-10 Lynn Garren : Merge branch ‘feature/at_for_art_2_06’ into release/v06_30_00_rc1
-   2017-03-06 Lynn Garren : for art v2_06
-   2017-03-06 Lynn Garren : adjust link libraries
-   2017-03-06 Lynn Garren : replace InsertFailure with ProductRegistrationFailure

lardata v06_17_00
------------------------------------------

-   2017-04-03 Lynn Garren : lardata v06_17_00 for larsoft v06_30_00
-   2017-03-30 Lynn Garren : fix link list
-   2017-03-30 Lynn Garren : Merge branch ‘v06_30_00_rc’ into v06_30_00-branch
-   2017-03-10 Lynn Garren : for larsoft v06_30_00_rc1 with art v2_06_01
-   2017-03-10 Lynn Garren : cleanup link list
-   2017-03-10 Lynn Garren : Merge branch ‘feature/at_for_art_2_06’ into release/v06_30_00_rc1
-   2017-03-06 Lynn Garren : replace InsertFailure with ProductRegistrationFailure
-   2017-03-06 Lynn Garren : use +nutools v2_11_00
-   2017-03-06 Lynn Garren : adjust link list
-   2017-03-06 Lynn Garren : cetlib/demangle.h is now cetlib_except/demangle.h
-   2017-03-06 Lynn Garren : add missing cetlib_except library
-   2017-03-06 Lynn Garren : add missing cetlib_except library

larcore v06_07_00
------------------------------------------

-   2017-04-03 Lynn Garren : larcore v06_07_00 for larsoftobj v1_16_00
-   2017-03-30 Lynn Garren : fix library list
-   2017-03-30 Lynn Garren : Merge branch ‘v06_30_00_rc’ into v06_30_00-branch
-   2017-03-10 Lynn Garren : for larsoft v06_30_00_rc1 with art v2_06_01
-   2017-03-06 Lynn Garren : for art v2_06_01
-   2017-03-06 Lynn Garren : adjust link list
-   2017-03-06 Lynn Garren : cetlib/demangle.h is now cetlib_except/demangle.h

larpandoracontent v03_03_00
--------------------------------------------------------------

-   2017-04-03 Lynn Garren : larpandoracontent v03_03_00 for larsoft v06_30_00
-   2017-03-10 Lynn Garren : for larsoft v06_30_00_rc1 with art v2_06_01
-   2017-03-10 Lynn Garren : for larsoft v06_30_00_rc1 with art v2_06_01
-   2017-03-09 Lynn Garren : for art v2_06

larsoftobj v1_16_00
----------------------------------------------

-   2017-04-03 Lynn Garren : fix typo
-   2017-04-03 Lynn Garren : cetbuildtools v5_06_06
-   2017-04-03 Lynn Garren : larsoftobj v1_16_00
-   2017-04-01 Lynn Garren : update product versions
-   2017-03-30 Lynn Garren : Merge branch ‘v06_30_00_rc’ into v06_30_00-branch
-   2017-03-10 Lynn Garren : for larsoft v06_30_00_rc1 with art v2_06_01
-   2017-03-05 Lynn Garren : for art 2.06.01
-   2017-03-09 Lynn Garren : Merge branch ‘feature/at_for_art_2_06’ into release/v06_30_00_rc1
-   2017-03-06 Lynn Garren : build cetbuildtools v5_06_07

lardataobj v1_14_00
----------------------------------------------

-   2017-04-03 Lynn Garren : lardataobj v1_14_00 for larsoftobj v1_16_00
-   2017-03-30 Lynn Garren : Merge branch ‘v06_30_00_rc’ into v06_30_00-branch
-   2017-03-10 Lynn Garren : for larsoft v06_30_00_rc1 with art v2_06_01
-   2017-03-05 Lynn Garren : for art 2.06.01
-   2017-03-09 Lynn Garren : fix link list

larcoreobj v1_10_00
----------------------------------------------

-   2017-04-03 Lynn Garren : larcoreobj v1_10_00 for larsoftobj v1_16_00
-   2017-03-30 Lynn Garren : fix link list
-   2017-03-30 Lynn Garren : Merge branch ‘v06_30_00_rc’ into v06_30_00-branch
-   2017-03-10 Lynn Garren : for larsoft v06_30_00_rc1 with art v2_06_01

larbatch v01_28_01
--------------------------------------------

larutils v1_12_01
------------------------------------------
