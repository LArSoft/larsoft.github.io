LArSoft v06\_40\_00 Release Notes
======================================================================

-   **Table of contents**
-   [LArSoft v06\_40\_00 Release Notes](#LArSoft-v06_40_00-Release-Notes)
    -   [Purpose](#Purpose)
    -   [New features](#New-features)
    -   [Changes](#Changes)
        -   [general](#general)
        -   [MemoryTracker](#MemoryTracker)
        -   [lareventdisplay](#lareventdisplay)
    -   [Updated dependencies](#Updated-dependencies)
-   [Change List](#Change-List)
    -   [larsoft v06\_40\_00](#larsoft-v06_40_00)
    -   [lareventdisplay v06\_06\_00](#lareventdisplay-v06_06_00)
    -   [larexamples v06\_04\_00](#larexamples-v06_04_00)
    -   [larpandora v06\_13\_00](#larpandora-v06_13_00)
    -   [larwirecell v06\_05\_00](#larwirecell-v06_05_00)
    -   [larana v06\_07\_00](#larana-v06_07_00)
    -   [larreco v06\_31\_00](#larreco-v06_31_00)
    -   [larsim v06\_24\_00](#larsim-v06_24_00)
    -   [larevt v06\_14\_00](#larevt-v06_14_00)
    -   [lardata v06\_22\_00](#lardata-v06_22_00)
    -   [larcore v06\_10\_00](#larcore-v06_10_00)
    -   [larpandoracontent v03\_07\_01](#larpandoracontent-v03_07_01)
    -   [larsoftobj v1\_21\_00](#larsoftobj-v1_21_00)
    -   [lardataobj v1\_17\_00](#lardataobj-v1_17_00)
    -   [larcoreobj v1\_14\_00](#larcoreobj-v1_14_00)
    -   [larbatch v01\_32\_01](#larbatch-v01_32_01)
    -   [larutils v1\_15\_00](#larutils-v1_15_00)

[list of LArSoft releases](LArSoft_release_list)\
Download instructions for [larsoft v06\_40\_00](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v06_40_00/larsoft-v06_40_00.html)\
Download instructions for [just larsoftobj v1\_21\_00](http://scisoft.fnal.gov/scisoft/bundles/larsoftobj/v1_21_00/larsoftobj-v1_21_00.html)

Purpose
--------------------

-   first release with art 2.07.03

New features
------------------------------

-   based on the LARSOFT\_SUITE\_v06\_39\_00 tag
-   use branch v06\_39\_00\_01\_branch for
    -   argoneutcode dunetpc duneutil icaruscode lariatsoft uboonecode ubutil

Changes
--------------------

### general

-   see the list of [breaking changes](/redmine/projects/art/wiki/List_of_breaking_changes) in art

### MemoryTracker

The MemoryTracker ignoreTotal parameter has been deprecated since [art v2\_04\_01](/redmine/projects/art/wiki/Release_Notes_20401) and is now completely removed. A one line command will edit nearly all fcl files appropriately.\

    find $PWD -name "*.fcl" | xargs perl -wapi\~ -e 's&MemoryTracker:(\s*)\{\s*ignoreTotal\s*:\s*1\s*\}&MemoryTracker:$1\{ \}&;'

The MemoryTracker parameter printSummaries has been dropped.

### lareventdisplay

With art 2.07, services that need to be reconfigurable via the EventDisplay service must now inherit from the evdb::Reconfigurable base class. See the [nutools v2\_14\_00 release notes](/redmine/projects/nutools/wiki/NuTools_Release_Notes#nutools-v2_14_00-672017)

Such changes are necessary ONLY for services that are intended to be reconfigurable via the event display. Implementing multi-threading in art has introduced various constraints, one of which involves disabling implicit reconfiguration of services, which was supported in previous versions.

Updated dependencies
----------------------------------------------

  --------------- ------------- ------------ --------------------------------------------------------------------------------------------------
  Product         Version       Qualifiers   Notes
  nutools         v2\_14\_00    e14          [NuTools\_Release\_Notes](/redmine/projects/nutools/wiki/NuTools_Release_Notes#nutools-v2_14_00)
  nusimdata       v1\_08\_00    e14          
  ifdh\_art       v2\_01\_06    e14:nu:s50   
  artdaq\_core    v1\_07\_08    e14:nu:s50   
  art             v2\_07\_03    e14:nu       [Release Notes 2.07.03](/redmine/projects/art/wiki/Release_Notes_20703)
  canvas          v2\_00\_02    e14:nu       
  root            v6\_08\_06g   e14:nu       
  cetbuildtools   v5\_09\_01                 
  --------------- ------------- ------------ --------------------------------------------------------------------------------------------------

Change List
============================

larsoft v06\_40\_00
------------------------------------------

-   2017-06-13 Lynn Garren : larsoft v06\_40\_00 for larsoft v06\_40\_00
-   2017-06-13 Lynn Garren : update product versions
-   2017-06-09 Lynn Garren : lardata v06\_21\_01\_02
-   2017-06-09 Lynn Garren : fix larevt
-   2017-06-09 Lynn Garren : updating for art v2\_07\_03, nutools v2\_14\_00, etc.
-   2017-06-09 Lynn Garren : support for u14 is dropped with art 2.07.03
-   2017-06-09 Lynn Garren : larsoft v06\_39\_00\_01
-   2017-06-09 Lynn Garren : the one liner for ignoreTotal
-   2017-06-09 Lynn Garren : ifdh\_art v2\_01\_06

lareventdisplay v06\_06\_00
----------------------------------------------------------

-   2017-06-13 Lynn Garren : lareventdisplay v06\_06\_00 for larsoft v06\_40\_00
-   2017-06-10 Tingjun Yang : Make EventDisplay services reconfigurable in art v2\_07\_03. Resolve issue [\#16803](/redmine/issues/16803 "Necessary Maintenance: Updates to event display service classes for art 2.7 (Closed)")
-   2017-06-09 Lynn Garren : lareventdisplay v06\_05\_08\_01
-   2017-06-09 Lynn Garren : cetbuildtools v5\_09\_01

larexamples v06\_04\_00
--------------------------------------------------

-   2017-06-13 Lynn Garren : larexamples v06\_04\_00 for larsoft v06\_40\_00
-   2017-06-09 Lynn Garren : larsim v06\_23\_00\_02
-   2017-06-09 Lynn Garren : larexamples v06\_03\_07\_02
-   2017-06-09 Lynn Garren : larexamples v06\_03\_07\_01
-   2017-06-09 Lynn Garren : cetbuildtools v5\_09\_01

larpandora v06\_13\_00
------------------------------------------------

-   2017-06-13 Lynn Garren : larpandora v06\_13\_00 for larsoft v06\_40\_00
-   2017-06-09 Lynn Garren : larpandora v06\_12\_00\_01
-   2017-06-09 Lynn Garren : add missing header
-   2017-06-09 Lynn Garren : cetbuildtools v5\_09\_01

larwirecell v06\_05\_00
--------------------------------------------------

-   2017-06-13 Lynn Garren : larwirecell v06\_05\_00 for larsoft v06\_40\_00
-   2017-06-09 Lynn Garren : fix larevt
-   2017-06-09 Lynn Garren : larwirecell v06\_04\_06\_02
-   2017-06-09 Lynn Garren : wirecell v0\_5\_2c

larana v06\_07\_00
----------------------------------------

-   2017-06-13 Lynn Garren : larana v06\_07\_00 for larsoft v06\_40\_00
-   2017-06-09 Lynn Garren : larana v06\_06\_03\_01
-   2017-06-09 Lynn Garren : ignoreTotal is obsolete
-   2017-06-09 Lynn Garren : cetbuildtools v5\_09\_01

larreco v06\_31\_00
------------------------------------------

-   2017-06-13 Lynn Garren : larreco v06\_31\_00 for larsoft v06\_40\_00
-   2017-06-09 Lynn Garren : larsim v06\_23\_00\_02
-   2017-06-09 Lynn Garren : larreco v06\_30\_01\_01
-   2017-06-09 Lynn Garren : ignoreTotal is obsolete
-   2017-06-09 Lynn Garren : nutools v2\_14\_00

larsim v06\_24\_00
----------------------------------------

-   2017-06-13 Lynn Garren : larsim v06\_24\_00 for larsoft v06\_40\_00
-   2017-06-09 Lynn Garren : fix larevt
-   2017-06-09 Lynn Garren : larsim v06\_23\_00\_02
-   2017-06-09 Lynn Garren : larsim v06\_23\_00\_01
-   2017-06-09 Lynn Garren : ignoreTotal is obsolete
-   2017-06-09 Lynn Garren : marley v0\_9\_5d
-   2017-06-09 Lynn Garren : igore \*\~

larevt v06\_14\_00
----------------------------------------

-   2017-06-13 Lynn Garren : larevt v06\_14\_00 for larsoft v06\_40\_00
-   2017-06-09 Lynn Garren : lardata v06\_21\_01\_02
-   2017-06-09 Lynn Garren : v06\_13\_04\_02
-   2017-06-09 Lynn Garren : larevt v06\_13\_04\_01
-   2017-06-09 Lynn Garren : cetbuildtools v5\_09\_01

lardata v06\_22\_00
------------------------------------------

-   2017-06-13 Lynn Garren : lardata v06\_22\_00 for larsoft v06\_40\_00
-   2017-06-09 Lynn Garren : lardata v06\_21\_01\_02
-   2017-06-09 Lynn Garren : lardata v06\_21\_01\_01
-   2017-06-09 Lynn Garren : ignoreTotal is obsolete
-   2017-06-09 Lynn Garren : Merge branch ‘release/v06\_40\_00’ into v06\_39\_00\_01\_branch
-   2017-06-08 Lynn Garren : nutools v2\_14\_00
-   2017-06-08 Lynn Garren : with nutools v2\_14\_00
-   2017-06-08 Lynn Garren : sPostSource renamed sPostSourceEvent
-   2017-06-08 Lynn Garren : use std::log explicitly

larcore v06\_10\_00
------------------------------------------

-   2017-06-13 Lynn Garren : larcore v06\_10\_00 for larsoft v06\_40\_00
-   2017-06-09 Lynn Garren : larcore v06\_09\_02\_01
-   2017-06-07 Lynn Garren : art v2\_07\_03
-   2017-06-07 Lynn Garren : message facility changes

larpandoracontent v03\_07\_01
--------------------------------------------------------------

-   2017-06-13 Lynn Garren : larpandoracontent v03\_07\_01 for larsoft v06\_40\_00
-   2017-06-13 Lynn Garren : v03\_07\_01 with pandora v03\_00\_00d
-   2017-06-09 Lynn Garren : larpandoracontent v03\_07\_00\_01
-   2017-06-09 Lynn Garren : using cetlib v3\_00\_01 and pandora v03\_00\_00d

larsoftobj v1\_21\_00
----------------------------------------------

-   2017-06-13 Lynn Garren : larsoftobj v1\_21\_00 for larsoft v06\_40\_00
-   2017-06-13 Lynn Garren : use old form
-   2017-06-13 Lynn Garren : update product versions
-   2017-06-09 Lynn Garren : larsoftobj v1\_20\_00\_01
-   2017-06-09 Lynn Garren : update distribution
-   2017-06-07 Lynn Garren : gallery v1\_04\_03

lardataobj v1\_17\_00
----------------------------------------------

-   2017-06-13 Lynn Garren : lardataobj v1\_17\_00 for larsoft v06\_40\_00
-   2017-06-09 Lynn Garren : lardataobj v1\_16\_00\_01
-   2017-06-07 Lynn Garren : nusimdata v1\_08\_00
-   2017-06-07 Lynn Garren : add missing header

larcoreobj v1\_14\_00
----------------------------------------------

-   2017-06-13 Lynn Garren : larcoreobj v1\_14\_00 for larsoft v06\_40\_00
-   2017-06-09 Lynn Garren : larcoreobj v1\_13\_01\_01
-   2017-06-07 Lynn Garren : canvas v2\_00\_02

larbatch v01\_32\_01
--------------------------------------------

larutils v1\_15\_00
------------------------------------------
