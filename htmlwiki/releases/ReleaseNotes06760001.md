LArSoft v06_76_00_01 Release Notes
=============================================================================

[list of LArSoft releases](LArSoft_release_list)

**THIS IS A TEST RELEASE**

Download instructions for [larsoft v06_76_00_01](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v06_76_00_01/larsoft-v06_76_00_01.html)
Download instructions for [just larsoftobj v1_44_00_01](http://scisoft.fnal.gov/scisoft/bundles/larsoftobj/v1_44_00_01/larsoftobj-v1_44_00_01.html)

Purpose
--------------------

-   This release has updates to use art v2_11_02.
-   It is otherwise the same as larsoft v06_76_00.

Breaking changes
--------------------------------------

-   Messagefacility now has a single library: MF_MessageLogger
-   “cetlib/exception.h” is now “cetlib_except/exception.h”
-   missing the exception header:

        /home/garren/scratch/larsoft/v06_75_00_01/srcs/lardataobj/lardataobj/RawData/OpDetPulse.cxx:58:13: error: ‘cet’ has not been declared
        throw cet::exception("OpDetPulse")
        ^~~

    -   Add the missing header: \#include “cetlib_except/exception.h”

Migration script and branches
----------------------------------------------------------------

-   necessary changes are provided for dunetpc, lariatsoft, sbndcode, and uboonecode in feature/team_for_art_2_11_02
-   a migration script is available
    -   setup larsoft v06_76_00_01
    -   cd to your directory
    -   UpdateArt211.sh

Updated dependencies
----------------------------------------------

-   boost v1_66_0
-   clhep v2_3_4_6
-   root v6_12_06a
-   eigen v3_3_4a
-   canvas v3_03_02
-   gallery v1_08_02
-   art v2_11_02
-   nusimdata v1_13_01
-   nutools v2_23_01

Change List
============================

larsoft v06_76_00_01
-------------------------------------------------

-   2018-05-15 Lynn Garren : fix config
-   2018-05-15 Lynn Garren : using nulite bundle
-   2018-05-15 Lynn Garren : larsoft v06_76_00_01 for larsoft v06_76_00_branch
-   2018-05-15 Lynn Garren : update build
-   2018-05-15 Lynn Garren : install the art 2.11 scripts
-   2018-05-14 Lynn Garren : s68
-   2018-05-14 Lynn Garren : more spellings of MF_Utilities
-   2018-05-10 Lynn Garren : remove the LOG_DEBUG workaround
-   2018-05-10 Lynn Garren : Merge branch ‘v06_75_01_branch’ into v06_76_00_branch
-   2018-05-02 Lynn Garren : dk2nudata and cetbuildtools
-   2018-05-02 Lynn Garren : larsoft v06_75_01_01
-   2018-05-02 Lynn Garren : update product versions and get rid of old artifacts
-   2018-05-02 Lynn Garren : notes
-   2018-05-02 Lynn Garren : workaround for [redmine issue 19851](https://cdcvs.fnal.gov/redmine/issues/19851)
-   2018-05-02 Lynn Garren : s67
-   2018-05-02 Lynn Garren : accept a list
-   2018-05-02 Lynn Garren : temporary home for the fixup scripts

lareventdisplay v06_19_05_01
-----------------------------------------------------------------

-   2018-05-15 Lynn Garren : lareventdisplay v06_19_05_01 for larsoft v06_76_00_branch
-   2018-05-14 Lynn Garren : cetlib_except/exception.h
-   2018-05-14 Lynn Garren : only one messagefacility library

larexamples v06_13_04_01
---------------------------------------------------------

-   2018-05-15 Lynn Garren : larexamples v06_13_04_01 for larsoft v06_76_00_branch
-   2018-05-10 Lynn Garren : cetlib_except/exception.h and messagefacility has one library

larpandora v06_26_05_01
-------------------------------------------------------

-   2018-05-15 Lynn Garren : larpandora v06_26_05_01 for larsoft v06_76_00_branch
-   2018-05-14 Lynn Garren : cetlib_except/exception.h
-   2018-05-14 Lynn Garren : only one messagefacility library

larwirecell v06_12_04_01
---------------------------------------------------------

-   2018-05-15 Lynn Garren : larwirecell v06_12_04_01 for larsoft v06_76_00_branch
-   2018-05-14 Lynn Garren : one messagefacility library

larana v06_19_05_01
-----------------------------------------------

-   2018-05-15 Lynn Garren : larana v06_19_05_01
-   2018-05-14 Lynn Garren : only one messagefacility library

larreco v06_60_02_01
-------------------------------------------------

-   2018-05-15 Lynn Garren : larreco v06_60_02_01 for larsoft v06_76_00_branch
-   2018-05-14 Lynn Garren : cetlib_except/exception.h
-   2018-05-14 Lynn Garren : only one messagefacility library
-   2018-05-14 Lynn Garren : only one messagefacility library

larsim v06_46_00_01
-----------------------------------------------

-   2018-05-15 Lynn Garren : larsim v06_46_00_01 for larsoft v06_76_00_branch
-   2018-05-14 Lynn Garren : cetlib_except/exception.h
-   2018-05-14 Lynn Garren : only one messagefacility library
-   2018-05-14 Lynn Garren : only one messagefacility library

larevt v06_20_04_01
-----------------------------------------------

-   2018-05-15 Lynn Garren : larevt v06_20_04_01 for larsoft v06_76_00_branch
-   2018-05-14 Lynn Garren : cetlib_except/exception.h
-   2018-05-14 Lynn Garren : only one messagefacility library

lardata v06_44_00_01
-------------------------------------------------

-   2018-05-15 Lynn Garren : lardata v06_44_00_01 for larsoft v06_76_00_branch
-   2018-05-14 Lynn Garren : cetlib_except/exception.h
-   2018-05-14 Lynn Garren : only one messagefacility library

larcore v06_19_02_01
-------------------------------------------------

-   2018-05-15 Lynn Garren : larcore v06_19_02_01
-   2018-05-14 Lynn Garren : only one messagefacility library
-   2018-05-14 Lynn Garren : cetlib_except/exception.h

larpandoracontent v03_12_00_01
---------------------------------------------------------------------

-   2018-05-15 Lynn Garren : larpandoracontent v03_12_00_01 for larsoft v06_76_00_branch

larsoftobj v1_44_00_01
-----------------------------------------------------

-   2018-05-15 Lynn Garren : fix config
-   2018-05-15 Lynn Garren : dk2nudata
-   2018-05-15 Lynn Garren : removed larsoftobj-buildcfg.in
-   2018-05-15 Lynn Garren : larsoftobj v1_44_00_01 for larsoft v06_76_00_branch
-   2018-05-15 Lynn Garren : dk2nudata
-   2018-05-15 Lynn Garren : for art v2_11_02
-   2018-05-15 Lynn Garren : just need the cfg file

lardataobj v1_32_00_01
-----------------------------------------------------

-   2018-05-15 Lynn Garren : with larcoreobj v1_23_00_02
-   2018-05-15 Lynn Garren : lardataobj v1_32_00_01 for larsoft v06_76_00_branch
-   2018-05-01 Lynn Garren : cetlib_except/exception.h
-   2018-05-10 Lynn Garren : cetlib_except/exception.h
-   2018-05-10 Lynn Garren : messagefacility has a single library
-   2018-05-01 Lynn Garren : add missing header

larcorealg v1_20_00_01
-----------------------------------------------------

-   2018-05-15 Lynn Garren : larcorealg v1_20_00_01
-   2018-05-14 Lynn Garren : cetlib_except/exception.h
-   2018-05-14 Lynn Garren : only one messagefacility library

larcoreobj v1_23_00_02
-----------------------------------------------------

-   2018-05-15 Lynn Garren : larcoreobj v1_23_00_02
-   2018-05-15 Lynn Garren : larcoreobj v1_23_00_01 for larsoft v06_76_00_branch
-   2018-05-01 Gianluca Petrillo : No constexpr support for GenVector in ROOT 6.12.6. Keep hoping.
