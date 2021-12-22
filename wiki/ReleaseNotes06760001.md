LArSoft v06\_76\_00\_01 Release Notes
=============================================================================

-   **Table of contents**
-   [LArSoft v06\_76\_00\_01 Release Notes](#LArSoft-v06_76_00_01-Release-Notes)
    -   [Purpose](#Purpose)
    -   [Breaking changes](#Breaking-changes)
    -   [Migration script and branches](#Migration-script-and-branches)
    -   [Updated dependencies](#Updated-dependencies)
-   [Change List](#Change-List)
    -   [larsoft v06\_76\_00\_01](#larsoft-v06_76_00_01)
    -   [lareventdisplay v06\_19\_05\_01](#lareventdisplay-v06_19_05_01)
    -   [larexamples v06\_13\_04\_01](#larexamples-v06_13_04_01)
    -   [larpandora v06\_26\_05\_01](#larpandora-v06_26_05_01)
    -   [larwirecell v06\_12\_04\_01](#larwirecell-v06_12_04_01)
    -   [larana v06\_19\_05\_01](#larana-v06_19_05_01)
    -   [larreco v06\_60\_02\_01](#larreco-v06_60_02_01)
    -   [larsim v06\_46\_00\_01](#larsim-v06_46_00_01)
    -   [larevt v06\_20\_04\_01](#larevt-v06_20_04_01)
    -   [lardata v06\_44\_00\_01](#lardata-v06_44_00_01)
    -   [larcore v06\_19\_02\_01](#larcore-v06_19_02_01)
    -   [larpandoracontent v03\_12\_00\_01](#larpandoracontent-v03_12_00_01)
    -   [larsoftobj v1\_44\_00\_01](#larsoftobj-v1_44_00_01)
    -   [lardataobj v1\_32\_00\_01](#lardataobj-v1_32_00_01)
    -   [larcorealg v1\_20\_00\_01](#larcorealg-v1_20_00_01)
    -   [larcoreobj v1\_23\_00\_02](#larcoreobj-v1_23_00_02)

[list of LArSoft releases](LArSoft_release_list)

**THIS IS A TEST RELEASE**

Download instructions for [larsoft v06\_76\_00\_01](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v06_76_00_01/larsoft-v06_76_00_01.html)\
Download instructions for [just larsoftobj v1\_44\_00\_01](http://scisoft.fnal.gov/scisoft/bundles/larsoftobj/v1_44_00_01/larsoftobj-v1_44_00_01.html)

Purpose
--------------------

-   This release has updates to use art v2\_11\_02.
-   It is otherwise the same as larsoft v06\_76\_00.

Breaking changes
--------------------------------------

-   Messagefacility now has a single library: MF\_MessageLogger
-   “cetlib/exception.h” is now “cetlib\_except/exception.h”
-   missing the exception header:\

        /home/garren/scratch/larsoft/v06_75_00_01/srcs/lardataobj/lardataobj/RawData/OpDetPulse.cxx:58:13: error: ‘cet’ has not been declared
               throw cet::exception("OpDetPulse")
                     ^~~

    -   Add the missing header: \#include “cetlib\_except/exception.h”

Migration script and branches
----------------------------------------------------------------

-   necessary changes are provided for dunetpc, lariatsoft, sbndcode, and uboonecode in feature/team\_for\_art\_2\_11\_02
-   a migration script is available
    -   setup larsoft v06\_76\_00\_01
    -   cd to your directory
    -   UpdateArt211.sh

Updated dependencies
----------------------------------------------

-   boost v1\_66\_0
-   clhep v2\_3\_4\_6
-   root v6\_12\_06a
-   eigen v3\_3\_4a
-   canvas v3\_03\_02
-   gallery v1\_08\_02
-   art v2\_11\_02
-   nusimdata v1\_13\_01
-   nutools v2\_23\_01

Change List
============================

larsoft v06\_76\_00\_01
-------------------------------------------------

-   2018-05-15 Lynn Garren : fix config
-   2018-05-15 Lynn Garren : using nulite bundle
-   2018-05-15 Lynn Garren : larsoft v06\_76\_00\_01 for larsoft v06\_76\_00\_branch
-   2018-05-15 Lynn Garren : update build
-   2018-05-15 Lynn Garren : install the art 2.11 scripts
-   2018-05-14 Lynn Garren : s68
-   2018-05-14 Lynn Garren : more spellings of MF\_Utilities
-   2018-05-10 Lynn Garren : remove the LOG\_DEBUG workaround
-   2018-05-10 Lynn Garren : Merge branch ‘v06\_75\_01\_branch’ into v06\_76\_00\_branch
-   2018-05-02 Lynn Garren : dk2nudata and cetbuildtools
-   2018-05-02 Lynn Garren : larsoft v06\_75\_01\_01
-   2018-05-02 Lynn Garren : update product versions and get rid of old artifacts
-   2018-05-02 Lynn Garren : notes
-   2018-05-02 Lynn Garren : workaround for [\#19851](/redmine/issues/19851 "Bug: messagefacility problem (Closed)")
-   2018-05-02 Lynn Garren : s67
-   2018-05-02 Lynn Garren : accept a list
-   2018-05-02 Lynn Garren : temporary home for the fixup scripts

lareventdisplay v06\_19\_05\_01
-----------------------------------------------------------------

-   2018-05-15 Lynn Garren : lareventdisplay v06\_19\_05\_01 for larsoft v06\_76\_00\_branch
-   2018-05-14 Lynn Garren : cetlib\_except/exception.h
-   2018-05-14 Lynn Garren : only one messagefacility library

larexamples v06\_13\_04\_01
---------------------------------------------------------

-   2018-05-15 Lynn Garren : larexamples v06\_13\_04\_01 for larsoft v06\_76\_00\_branch
-   2018-05-10 Lynn Garren : cetlib\_except/exception.h and messagefacility has one library

larpandora v06\_26\_05\_01
-------------------------------------------------------

-   2018-05-15 Lynn Garren : larpandora v06\_26\_05\_01 for larsoft v06\_76\_00\_branch
-   2018-05-14 Lynn Garren : cetlib\_except/exception.h
-   2018-05-14 Lynn Garren : only one messagefacility library

larwirecell v06\_12\_04\_01
---------------------------------------------------------

-   2018-05-15 Lynn Garren : larwirecell v06\_12\_04\_01 for larsoft v06\_76\_00\_branch
-   2018-05-14 Lynn Garren : one messagefacility library

larana v06\_19\_05\_01
-----------------------------------------------

-   2018-05-15 Lynn Garren : larana v06\_19\_05\_01
-   2018-05-14 Lynn Garren : only one messagefacility library

larreco v06\_60\_02\_01
-------------------------------------------------

-   2018-05-15 Lynn Garren : larreco v06\_60\_02\_01 for larsoft v06\_76\_00\_branch
-   2018-05-14 Lynn Garren : cetlib\_except/exception.h
-   2018-05-14 Lynn Garren : only one messagefacility library
-   2018-05-14 Lynn Garren : only one messagefacility library

larsim v06\_46\_00\_01
-----------------------------------------------

-   2018-05-15 Lynn Garren : larsim v06\_46\_00\_01 for larsoft v06\_76\_00\_branch
-   2018-05-14 Lynn Garren : cetlib\_except/exception.h
-   2018-05-14 Lynn Garren : only one messagefacility library
-   2018-05-14 Lynn Garren : only one messagefacility library

larevt v06\_20\_04\_01
-----------------------------------------------

-   2018-05-15 Lynn Garren : larevt v06\_20\_04\_01 for larsoft v06\_76\_00\_branch
-   2018-05-14 Lynn Garren : cetlib\_except/exception.h
-   2018-05-14 Lynn Garren : only one messagefacility library

lardata v06\_44\_00\_01
-------------------------------------------------

-   2018-05-15 Lynn Garren : lardata v06\_44\_00\_01 for larsoft v06\_76\_00\_branch
-   2018-05-14 Lynn Garren : cetlib\_except/exception.h
-   2018-05-14 Lynn Garren : only one messagefacility library

larcore v06\_19\_02\_01
-------------------------------------------------

-   2018-05-15 Lynn Garren : larcore v06\_19\_02\_01
-   2018-05-14 Lynn Garren : only one messagefacility library
-   2018-05-14 Lynn Garren : cetlib\_except/exception.h

larpandoracontent v03\_12\_00\_01
---------------------------------------------------------------------

-   2018-05-15 Lynn Garren : larpandoracontent v03\_12\_00\_01 for larsoft v06\_76\_00\_branch

larsoftobj v1\_44\_00\_01
-----------------------------------------------------

-   2018-05-15 Lynn Garren : fix config
-   2018-05-15 Lynn Garren : dk2nudata
-   2018-05-15 Lynn Garren : removed larsoftobj-buildcfg.in
-   2018-05-15 Lynn Garren : larsoftobj v1\_44\_00\_01 for larsoft v06\_76\_00\_branch
-   2018-05-15 Lynn Garren : dk2nudata
-   2018-05-15 Lynn Garren : for art v2\_11\_02
-   2018-05-15 Lynn Garren : just need the cfg file

lardataobj v1\_32\_00\_01
-----------------------------------------------------

-   2018-05-15 Lynn Garren : with larcoreobj v1\_23\_00\_02
-   2018-05-15 Lynn Garren : lardataobj v1\_32\_00\_01 for larsoft v06\_76\_00\_branch
-   2018-05-01 Lynn Garren : cetlib\_except/exception.h
-   2018-05-10 Lynn Garren : cetlib\_except/exception.h
-   2018-05-10 Lynn Garren : messagefacility has a single library
-   2018-05-01 Lynn Garren : add missing header

larcorealg v1\_20\_00\_01
-----------------------------------------------------

-   2018-05-15 Lynn Garren : larcorealg v1\_20\_00\_01
-   2018-05-14 Lynn Garren : cetlib\_except/exception.h
-   2018-05-14 Lynn Garren : only one messagefacility library

larcoreobj v1\_23\_00\_02
-----------------------------------------------------

-   2018-05-15 Lynn Garren : larcoreobj v1\_23\_00\_02
-   2018-05-15 Lynn Garren : larcoreobj v1\_23\_00\_01 for larsoft v06\_76\_00\_branch
-   2018-05-01 Gianluca Petrillo : No constexpr support for GenVector in ROOT 6.12.6. Keep hoping.
