LArSoft v06\_39\_00\_01 Release Notes
=============================================================================

-   **Table of contents**
-   [LArSoft v06\_39\_00\_01 Release Notes](#LArSoft-v06_39_00_01-Release-Notes)
    -   [Purpose](#Purpose)
    -   [New features](#New-features)
    -   [Known issues](#Known-issues)
        -   [ignoreTotal](#ignoreTotal)
        -   [lareventdisplay](#lareventdisplay)
        -   [uboonecode](#uboonecode)
        -   [dunetpc](#dunetpc)
    -   [Updated dependencies](#Updated-dependencies)
-   [Change List](#Change-List)
    -   [larsoft v06\_39\_00\_01](#larsoft-v06_39_00_01)
    -   [lareventdisplay v06\_05\_08\_01](#lareventdisplay-v06_05_08_01)
    -   [larexamples v06\_03\_07\_02](#larexamples-v06_03_07_02)
    -   [larpandora v06\_12\_00\_01](#larpandora-v06_12_00_01)
    -   [larwirecell v06\_04\_06\_02](#larwirecell-v06_04_06_02)
    -   [larana v06\_06\_03\_01](#larana-v06_06_03_01)
    -   [larreco v06\_30\_01\_01](#larreco-v06_30_01_01)
    -   [larsim v06\_23\_00\_02](#larsim-v06_23_00_02)
    -   [larevt v06\_13\_04\_02](#larevt-v06_13_04_02)
    -   [lardata v06\_21\_01\_02](#lardata-v06_21_01_02)
    -   [larcore v06\_09\_02\_01](#larcore-v06_09_02_01)
    -   [larpandoracontent v03\_07\_00\_01](#larpandoracontent-v03_07_00_01)
    -   [larsoftobj v1\_20\_00\_01](#larsoftobj-v1_20_00_01)
    -   [lardataobj v1\_16\_00\_01](#lardataobj-v1_16_00_01)
    -   [larcoreobj v1\_13\_01\_01](#larcoreobj-v1_13_01_01)
    -   [larbatch v01\_32\_01](#larbatch-v01_32_01)
    -   [larutils v1\_15\_00](#larutils-v1_15_00)

[list of LArSoft releases](LArSoft_release_list)\
Download instructions for [larsoft v06\_39\_00\_01](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v06_39_00_01/larsoft-v06_39_00_01.html)\
Download instructions for [just larsoftobj v1\_20\_00\_01](http://scisoft.fnal.gov/scisoft/bundles/larsoftobj/v1_20_00_01/larsoftobj-v1_20_00_01.html)

Purpose
--------------------

-   first attempt to build with art v2\_07\_03

New features
------------------------------

-   All work is on branch v06\_39\_00\_01\_branch
-   This branch is forked from the v06\_39\_00 tag
-   Branch v06\_39\_00\_01\_branch is also available for argoneutcode, dunetpc, duneutil, icaruscode, lariatsoft, uboonecode, and ubutil
    -   lariatutil needs appropriate updates to ups/product\_deps

Known issues
------------------------------

### ignoreTotal

The MemoryTracker ignoreTotal parameter has been deprecated since [art v2\_04\_01](/redmine/projects/art/wiki/Release_Notes_20401) and has now been completely removed. A one line script will edit fcl files appropriately, however there are other instances in the code base that need to be investigated.\

    find $PWD -name "*.fcl" | xargs perl -wapi\~ -e 's&MemoryTracker:(\s*)\{\s*ignoreTotal\s*:\s*1\s*\}&MemoryTracker:$1\{ \}&;'

### lareventdisplay

With art 2.07, reconfigurable services no longer automatically appear in the nutools event display edit tab. In order for your service to become visible to the event display for reconfiguration, your service must inherit from evdb::Reconfigurable, which is defined in nutools/EventDisplayBase/Reconfigurable.h. Inheriting from this class requires you to override a void reconfigure(fhicl::ParameterSet const&) virtual function, which should already be present in any service that intends to be reconfigured.

The evd::Reconfigurable constructor requires the ParameterSet object that was passed to your service. Your constructor will therefore look like:

    MyService::MyService(fhicl::ParameterSet const& ps) : 
      evdb::Reconfigurable{ps}, … 
    {}

In addition, your service will need to link against the nutools\_EventDisplayBase library if it is not doing so already.

Such changes are necessary ONLY for services that are intended to be reconfigurable via the event display. Implementing multi-threading in art has introduced various constraints, one of which involves disabling implicit reconfiguration of services, which was supported in previous versions.

See the [nutools v2\_14\_00 release notes](/redmine/projects/nutools/wiki/NuTools_Release_Notes#nutools-v2_14_00-672017)

### uboonecode

The production.sh unit test fails. This needs to be investigated by experts.

### dunetpc

dunetpc uses ServiceRegistry directly and needs a rewrite to accomodate changes in [art v2\_07\_03](/redmine/projects/art/wiki/Release_Notes_20703) See the list of [breaking changes](/redmine/projects/art/wiki/List_of_breaking_changes)

Updated dependencies
----------------------------------------------

Change List
============================

larsoft v06\_39\_00\_01
-------------------------------------------------

-   2017-06-09 Lynn Garren : updating for art v2\_07\_03, nutools v2\_14\_00, etc.
-   2017-06-09 Lynn Garren : support for u14 is dropped with art 2.07.03
-   2017-06-09 Lynn Garren : larsoft v06\_39\_00\_01
-   2017-06-09 Lynn Garren : the one liner for ignoreTotal
-   2017-06-09 Lynn Garren : ifdh\_art v2\_01\_06

lareventdisplay v06\_05\_08\_01
-----------------------------------------------------------------

-   2017-06-09 Lynn Garren : lareventdisplay v06\_05\_08\_01
-   2017-06-09 Lynn Garren : cetbuildtools v5\_09\_01

larexamples v06\_03\_07\_02
---------------------------------------------------------

-   2017-06-09 Lynn Garren : larsim v06\_23\_00\_02
-   2017-06-09 Lynn Garren : larexamples v06\_03\_07\_02
-   2017-06-09 Lynn Garren : larexamples v06\_03\_07\_01
-   2017-06-09 Lynn Garren : cetbuildtools v5\_09\_01

larpandora v06\_12\_00\_01
-------------------------------------------------------

-   2017-06-09 Lynn Garren : larpandora v06\_12\_00\_01
-   2017-06-09 Lynn Garren : add missing header
-   2017-06-09 Lynn Garren : cetbuildtools v5\_09\_01

larwirecell v06\_04\_06\_02
---------------------------------------------------------

-   2017-06-09 Lynn Garren : fix larevt
-   2017-06-09 Lynn Garren : larwirecell v06\_04\_06\_02
-   2017-06-09 Lynn Garren : wirecell v0\_5\_2c

larana v06\_06\_03\_01
-----------------------------------------------

-   2017-06-09 Lynn Garren : larana v06\_06\_03\_01
-   2017-06-09 Lynn Garren : ignoreTotal is obsolete
-   2017-06-09 Lynn Garren : cetbuildtools v5\_09\_01

larreco v06\_30\_01\_01
-------------------------------------------------

-   2017-06-09 Lynn Garren : larsim v06\_23\_00\_02
-   2017-06-09 Lynn Garren : larreco v06\_30\_01\_01
-   2017-06-09 Lynn Garren : ignoreTotal is obsolete
-   2017-06-09 Lynn Garren : nutools v2\_14\_00

larsim v06\_23\_00\_02
-----------------------------------------------

-   2017-06-09 Lynn Garren : fix larevt
-   2017-06-09 Lynn Garren : larsim v06\_23\_00\_02
-   2017-06-09 Lynn Garren : larsim v06\_23\_00\_01
-   2017-06-09 Lynn Garren : ignoreTotal is obsolete
-   2017-06-09 Lynn Garren : marley v0\_9\_5d
-   2017-06-09 Lynn Garren : igore \*\~

larevt v06\_13\_04\_02
-----------------------------------------------

-   2017-06-09 Lynn Garren : lardata v06\_21\_01\_02
-   2017-06-09 Lynn Garren : v06\_13\_04\_02
-   2017-06-09 Lynn Garren : larevt v06\_13\_04\_01
-   2017-06-09 Lynn Garren : cetbuildtools v5\_09\_01

lardata v06\_21\_01\_02
-------------------------------------------------

-   2017-06-09 Lynn Garren : lardata v06\_21\_01\_02
-   2017-06-09 Lynn Garren : lardata v06\_21\_01\_01
-   2017-06-09 Lynn Garren : ignoreTotal is obsolete
-   2017-06-09 Lynn Garren : Merge branch ‘release/v06\_40\_00’ into v06\_39\_00\_01\_branch
-   2017-06-08 Lynn Garren : nutools v2\_14\_00
-   2017-06-08 Lynn Garren : with nutools v2\_14\_00
-   2017-06-08 Lynn Garren : sPostSource renamed sPostSourceEvent
-   2017-06-08 Lynn Garren : use std::log explicitly

larcore v06\_09\_02\_01
-------------------------------------------------

-   2017-06-09 Lynn Garren : larcore v06\_09\_02\_01
-   2017-06-07 Lynn Garren : art v2\_07\_03
-   2017-06-07 Lynn Garren : message facility changes

larpandoracontent v03\_07\_00\_01
---------------------------------------------------------------------

-   2017-06-09 Lynn Garren : larpandoracontent v03\_07\_00\_01
-   2017-06-09 Lynn Garren : using cetlib v3\_00\_01 and pandora v03\_00\_00d

larsoftobj v1\_20\_00\_01
-----------------------------------------------------

-   2017-06-09 Lynn Garren : larsoftobj v1\_20\_00\_01
-   2017-06-09 Lynn Garren : update distribution
-   2017-06-07 Lynn Garren : gallery v1\_04\_03

lardataobj v1\_16\_00\_01
-----------------------------------------------------

-   2017-06-09 Lynn Garren : lardataobj v1\_16\_00\_01
-   2017-06-07 Lynn Garren : nusimdata v1\_08\_00
-   2017-06-07 Lynn Garren : add missing header

larcoreobj v1\_13\_01\_01
-----------------------------------------------------

-   2017-06-09 Lynn Garren : larcoreobj v1\_13\_01\_01
-   2017-06-07 Lynn Garren : canvas v2\_00\_02

larbatch v01\_32\_01
--------------------------------------------

larutils v1\_15\_00
------------------------------------------
