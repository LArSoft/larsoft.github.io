LArSoft v06_40_00 Release Notes
======================================================================

-   **Table of contents**
-   [LArSoft v06_40_00 Release Notes](#LArSoft-v06_40_00-Release-Notes)
    -   [Purpose](#Purpose)
    -   [New features](#New-features)
    -   [Changes](#Changes)
        -   [general](#general)
        -   [MemoryTracker](#MemoryTracker)
        -   [lareventdisplay](#lareventdisplay)
    -   [Updated dependencies](#Updated-dependencies)
-   [Change List](#Change-List)
    -   [larsoft v06_40_00](#larsoft-v06_40_00)
    -   [lareventdisplay v06_06_00](#lareventdisplay-v06_06_00)
    -   [larexamples v06_04_00](#larexamples-v06_04_00)
    -   [larpandora v06_13_00](#larpandora-v06_13_00)
    -   [larwirecell v06_05_00](#larwirecell-v06_05_00)
    -   [larana v06_07_00](#larana-v06_07_00)
    -   [larreco v06_31_00](#larreco-v06_31_00)
    -   [larsim v06_24_00](#larsim-v06_24_00)
    -   [larevt v06_14_00](#larevt-v06_14_00)
    -   [lardata v06_22_00](#lardata-v06_22_00)
    -   [larcore v06_10_00](#larcore-v06_10_00)
    -   [larpandoracontent v03_07_01](#larpandoracontent-v03_07_01)
    -   [larsoftobj v1_21_00](#larsoftobj-v1_21_00)
    -   [lardataobj v1_17_00](#lardataobj-v1_17_00)
    -   [larcoreobj v1_14_00](#larcoreobj-v1_14_00)
    -   [larbatch v01_32_01](#larbatch-v01_32_01)
    -   [larutils v1_15_00](#larutils-v1_15_00)

[list of LArSoft releases](LArSoft_release_list)
Download instructions for [larsoft v06_40_00](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v06_40_00/larsoft-v06_40_00.html)
Download instructions for [just larsoftobj v1_21_00](http://scisoft.fnal.gov/scisoft/bundles/larsoftobj/v1_21_00/larsoftobj-v1_21_00.html)

Purpose
--------------------

-   first release with art 2.07.03

New features
------------------------------

-   based on the LARSOFT_SUITE_v06_39_00 tag
-   use branch v06_39_00_01_branch for
    -   argoneutcode dunetpc duneutil icaruscode lariatsoft uboonecode ubutil

Changes
--------------------

### general

-   see the list of [breaking changes](/redmine/projects/art/wiki/List_of_breaking_changes) in art

### MemoryTracker

The MemoryTracker ignoreTotal parameter has been deprecated since [art v2_04_01](/redmine/projects/art/wiki/Release_Notes_20401) and is now completely removed. A one line command will edit nearly all fcl files appropriately.

    find $PWD -name "*.fcl" | xargs perl -wapi\~ -e 's&MemoryTracker:(\s*)\{\s*ignoreTotal\s*:\s*1\s*\}&MemoryTracker:$1\{ \}&;'

The MemoryTracker parameter printSummaries has been dropped.

### lareventdisplay

With art 2.07, services that need to be reconfigurable via the EventDisplay service must now inherit from the evdb::Reconfigurable base class. See the [nutools v2_14_00 release notes](/redmine/projects/nutools/wiki/NuTools_Release_Notes#nutools-v2_14_00-672017)

Such changes are necessary ONLY for services that are intended to be reconfigurable via the event display. Implementing multi-threading in art has introduced various constraints, one of which involves disabling implicit reconfiguration of services, which was supported in previous versions.

Updated dependencies
----------------------------------------------

||
|Product|Version|Qualifiers|Notes|
|nutools|v2_14_00|e14|[NuTools_Release_Notes](/redmine/projects/nutools/wiki/NuTools_Release_Notes#nutools-v2_14_00)|
|nusimdata|v1_08_00|e14||
|ifdh_art|v2_01_06|e14:nu:s50||
|artdaq_core|v1_07_08|e14:nu:s50||
|art|v2_07_03|e14:nu|[Release Notes 2.07.03](/redmine/projects/art/wiki/Release_Notes_20703)|
|canvas|v2_00_02|e14:nu||
|root|v6_08_06g|e14:nu||
|cetbuildtools|v5_09_01|||

Change List
============================

larsoft v06_40_00
------------------------------------------

-   2017-06-13 Lynn Garren : larsoft v06_40_00 for larsoft v06_40_00
-   2017-06-13 Lynn Garren : update product versions
-   2017-06-09 Lynn Garren : lardata v06_21_01_02
-   2017-06-09 Lynn Garren : fix larevt
-   2017-06-09 Lynn Garren : updating for art v2_07_03, nutools v2_14_00, etc.
-   2017-06-09 Lynn Garren : support for u14 is dropped with art 2.07.03
-   2017-06-09 Lynn Garren : larsoft v06_39_00_01
-   2017-06-09 Lynn Garren : the one liner for ignoreTotal
-   2017-06-09 Lynn Garren : ifdh_art v2_01_06

lareventdisplay v06_06_00
----------------------------------------------------------

-   2017-06-13 Lynn Garren : lareventdisplay v06_06_00 for larsoft v06_40_00
-   2017-06-10 Tingjun Yang : Make EventDisplay services reconfigurable in art v2_07_03. Resolve issue [redmine issue 16803](https://cdcvs.fnal.gov/redmine/issues/16803)
-   2017-06-09 Lynn Garren : lareventdisplay v06_05_08_01
-   2017-06-09 Lynn Garren : cetbuildtools v5_09_01

larexamples v06_04_00
--------------------------------------------------

-   2017-06-13 Lynn Garren : larexamples v06_04_00 for larsoft v06_40_00
-   2017-06-09 Lynn Garren : larsim v06_23_00_02
-   2017-06-09 Lynn Garren : larexamples v06_03_07_02
-   2017-06-09 Lynn Garren : larexamples v06_03_07_01
-   2017-06-09 Lynn Garren : cetbuildtools v5_09_01

larpandora v06_13_00
------------------------------------------------

-   2017-06-13 Lynn Garren : larpandora v06_13_00 for larsoft v06_40_00
-   2017-06-09 Lynn Garren : larpandora v06_12_00_01
-   2017-06-09 Lynn Garren : add missing header
-   2017-06-09 Lynn Garren : cetbuildtools v5_09_01

larwirecell v06_05_00
--------------------------------------------------

-   2017-06-13 Lynn Garren : larwirecell v06_05_00 for larsoft v06_40_00
-   2017-06-09 Lynn Garren : fix larevt
-   2017-06-09 Lynn Garren : larwirecell v06_04_06_02
-   2017-06-09 Lynn Garren : wirecell v0_5_2c

larana v06_07_00
----------------------------------------

-   2017-06-13 Lynn Garren : larana v06_07_00 for larsoft v06_40_00
-   2017-06-09 Lynn Garren : larana v06_06_03_01
-   2017-06-09 Lynn Garren : ignoreTotal is obsolete
-   2017-06-09 Lynn Garren : cetbuildtools v5_09_01

larreco v06_31_00
------------------------------------------

-   2017-06-13 Lynn Garren : larreco v06_31_00 for larsoft v06_40_00
-   2017-06-09 Lynn Garren : larsim v06_23_00_02
-   2017-06-09 Lynn Garren : larreco v06_30_01_01
-   2017-06-09 Lynn Garren : ignoreTotal is obsolete
-   2017-06-09 Lynn Garren : nutools v2_14_00

larsim v06_24_00
----------------------------------------

-   2017-06-13 Lynn Garren : larsim v06_24_00 for larsoft v06_40_00
-   2017-06-09 Lynn Garren : fix larevt
-   2017-06-09 Lynn Garren : larsim v06_23_00_02
-   2017-06-09 Lynn Garren : larsim v06_23_00_01
-   2017-06-09 Lynn Garren : ignoreTotal is obsolete
-   2017-06-09 Lynn Garren : marley v0_9_5d
-   2017-06-09 Lynn Garren : igore \*\~

larevt v06_14_00
----------------------------------------

-   2017-06-13 Lynn Garren : larevt v06_14_00 for larsoft v06_40_00
-   2017-06-09 Lynn Garren : lardata v06_21_01_02
-   2017-06-09 Lynn Garren : v06_13_04_02
-   2017-06-09 Lynn Garren : larevt v06_13_04_01
-   2017-06-09 Lynn Garren : cetbuildtools v5_09_01

lardata v06_22_00
------------------------------------------

-   2017-06-13 Lynn Garren : lardata v06_22_00 for larsoft v06_40_00
-   2017-06-09 Lynn Garren : lardata v06_21_01_02
-   2017-06-09 Lynn Garren : lardata v06_21_01_01
-   2017-06-09 Lynn Garren : ignoreTotal is obsolete
-   2017-06-09 Lynn Garren : Merge branch ‘release/v06_40_00’ into v06_39_00_01_branch
-   2017-06-08 Lynn Garren : nutools v2_14_00
-   2017-06-08 Lynn Garren : with nutools v2_14_00
-   2017-06-08 Lynn Garren : sPostSource renamed sPostSourceEvent
-   2017-06-08 Lynn Garren : use std::log explicitly

larcore v06_10_00
------------------------------------------

-   2017-06-13 Lynn Garren : larcore v06_10_00 for larsoft v06_40_00
-   2017-06-09 Lynn Garren : larcore v06_09_02_01
-   2017-06-07 Lynn Garren : art v2_07_03
-   2017-06-07 Lynn Garren : message facility changes

larpandoracontent v03_07_01
--------------------------------------------------------------

-   2017-06-13 Lynn Garren : larpandoracontent v03_07_01 for larsoft v06_40_00
-   2017-06-13 Lynn Garren : v03_07_01 with pandora v03_00_00d
-   2017-06-09 Lynn Garren : larpandoracontent v03_07_00_01
-   2017-06-09 Lynn Garren : using cetlib v3_00_01 and pandora v03_00_00d

larsoftobj v1_21_00
----------------------------------------------

-   2017-06-13 Lynn Garren : larsoftobj v1_21_00 for larsoft v06_40_00
-   2017-06-13 Lynn Garren : use old form
-   2017-06-13 Lynn Garren : update product versions
-   2017-06-09 Lynn Garren : larsoftobj v1_20_00_01
-   2017-06-09 Lynn Garren : update distribution
-   2017-06-07 Lynn Garren : gallery v1_04_03

lardataobj v1_17_00
----------------------------------------------

-   2017-06-13 Lynn Garren : lardataobj v1_17_00 for larsoft v06_40_00
-   2017-06-09 Lynn Garren : lardataobj v1_16_00_01
-   2017-06-07 Lynn Garren : nusimdata v1_08_00
-   2017-06-07 Lynn Garren : add missing header

larcoreobj v1_14_00
----------------------------------------------

-   2017-06-13 Lynn Garren : larcoreobj v1_14_00 for larsoft v06_40_00
-   2017-06-09 Lynn Garren : larcoreobj v1_13_01_01
-   2017-06-07 Lynn Garren : canvas v2_00_02

larbatch v01_32_01
--------------------------------------------

larutils v1_15_00
------------------------------------------
