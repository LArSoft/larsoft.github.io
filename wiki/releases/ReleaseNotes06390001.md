# LArSoft v06_39_00_01 Release Notes



[list of LArSoft releases](LArSoft_release_list)  
Download instructions for [larsoft v06_39_00_01](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v06_39_00_01/larsoft-v06_39_00_01.html)  
Download instructions for [just larsoftobj v1_20_00_01](http://scisoft.fnal.gov/scisoft/bundles/larsoftobj/v1_20_00_01/larsoftobj-v1_20_00_01.html)

## Purpose

-   first attempt to build with art v2_07_03

## New features

-   All work is on branch v06_39_00_01_branch
-   This branch is forked from the v06_39_00 tag
-   Branch v06_39_00_01_branch is also available for argoneutcode, dunetpc, duneutil, icaruscode, lariatsoft, uboonecode, and ubutil
    -   lariatutil needs appropriate updates to ups/product_deps

## Known issues

### ignoreTotal

The MemoryTracker ignoreTotal parameter has been deprecated since [art v2_04_01](https://cdcvs.fnal.gov/redmine/projects/art/wiki/Release_Notes_20401) and has now been completely removed. A one line script will edit fcl files appropriately, however there are other instances in the code base that need to be investigated.

    find $PWD -name "*.fcl" | xargs perl -wapi\~ -e 's&amp;MemoryTracker:(\s*)\{\s*ignoreTotal\s*:\s*1\s*\}&amp;MemoryTracker:$1\{ \}&amp;;'

### lareventdisplay

With art 2.07, reconfigurable services no longer automatically appear in the nutools event display edit tab. In order for your service to become visible to the event display for reconfiguration, your service must inherit from evdb::Reconfigurable, which is defined in nutools/EventDisplayBase/Reconfigurable.h. Inheriting from this class requires you to override a void reconfigure(fhicl::ParameterSet const&amp;) virtual function, which should already be present in any service that intends to be reconfigured.

The evd::Reconfigurable constructor requires the ParameterSet object that was passed to your service. Your constructor will therefore look like:

    MyService::MyService(fhicl::ParameterSet const&amp; ps) : 
      evdb::Reconfigurable{ps}, … 
    {}

In addition, your service will need to link against the nutools_EventDisplayBase library if it is not doing so already.

Such changes are necessary ONLY for services that are intended to be reconfigurable via the event display. Implementing multi-threading in art has introduced various constraints, one of which involves disabling implicit reconfiguration of services, which was supported in previous versions.

See the [nutools v2_14_00 release notes](https://cdcvs.fnal.gov/redmine/projects/nutools/wiki/NuTools_Release_Notes#nutools-v2_14_00-672017)

### uboonecode

The production.sh unit test fails. This needs to be investigated by experts.

### dunetpc

dunetpc uses ServiceRegistry directly and needs a rewrite to accomodate changes in [art v2_07_03](https://cdcvs.fnal.gov/redmine/projects/art/wiki/Release_Notes_20703) See the list of \[\[art:List_of_breaking_changes\|breaking changes\]\]

## Updated dependencies

# Change List

## larsoft v06_39_00_01

-   2017-06-09 Lynn Garren : updating for art v2_07_03, nutools v2_14_00, etc.
-   2017-06-09 Lynn Garren : support for u14 is dropped with art 2.07.03
-   2017-06-09 Lynn Garren : larsoft v06_39_00_01
-   2017-06-09 Lynn Garren : the one liner for ignoreTotal
-   2017-06-09 Lynn Garren : ifdh_art v2_01_06

## lareventdisplay v06_05_08_01

-   2017-06-09 Lynn Garren : lareventdisplay v06_05_08_01
-   2017-06-09 Lynn Garren : cetbuildtools v5_09_01

## larexamples v06_03_07_02

-   2017-06-09 Lynn Garren : larsim v06_23_00_02
-   2017-06-09 Lynn Garren : larexamples v06_03_07_02
-   2017-06-09 Lynn Garren : larexamples v06_03_07_01
-   2017-06-09 Lynn Garren : cetbuildtools v5_09_01

## larpandora v06_12_00_01

-   2017-06-09 Lynn Garren : larpandora v06_12_00_01
-   2017-06-09 Lynn Garren : add missing header
-   2017-06-09 Lynn Garren : cetbuildtools v5_09_01

## larwirecell v06_04_06_02

-   2017-06-09 Lynn Garren : fix larevt
-   2017-06-09 Lynn Garren : larwirecell v06_04_06_02
-   2017-06-09 Lynn Garren : wirecell v0_5_2c

## larana v06_06_03_01

-   2017-06-09 Lynn Garren : larana v06_06_03_01
-   2017-06-09 Lynn Garren : ignoreTotal is obsolete
-   2017-06-09 Lynn Garren : cetbuildtools v5_09_01

## larreco v06_30_01_01

-   2017-06-09 Lynn Garren : larsim v06_23_00_02
-   2017-06-09 Lynn Garren : larreco v06_30_01_01
-   2017-06-09 Lynn Garren : ignoreTotal is obsolete
-   2017-06-09 Lynn Garren : nutools v2_14_00

## larsim v06_23_00_02

-   2017-06-09 Lynn Garren : fix larevt
-   2017-06-09 Lynn Garren : larsim v06_23_00_02
-   2017-06-09 Lynn Garren : larsim v06_23_00_01
-   2017-06-09 Lynn Garren : ignoreTotal is obsolete
-   2017-06-09 Lynn Garren : marley v0_9_5d
-   2017-06-09 Lynn Garren : igore \*\~

## larevt v06_13_04_02

-   2017-06-09 Lynn Garren : lardata v06_21_01_02
-   2017-06-09 Lynn Garren : v06_13_04_02
-   2017-06-09 Lynn Garren : larevt v06_13_04_01
-   2017-06-09 Lynn Garren : cetbuildtools v5_09_01

## lardata v06_21_01_02

-   2017-06-09 Lynn Garren : lardata v06_21_01_02
-   2017-06-09 Lynn Garren : lardata v06_21_01_01
-   2017-06-09 Lynn Garren : ignoreTotal is obsolete
-   2017-06-09 Lynn Garren : Merge branch 'release/v06_40_00' into v06_39_00_01_branch
-   2017-06-08 Lynn Garren : nutools v2_14_00
-   2017-06-08 Lynn Garren : with nutools v2_14_00
-   2017-06-08 Lynn Garren : sPostSource renamed sPostSourceEvent
-   2017-06-08 Lynn Garren : use std::log explicitly

## larcore v06_09_02_01

-   2017-06-09 Lynn Garren : larcore v06_09_02_01
-   2017-06-07 Lynn Garren : art v2_07_03
-   2017-06-07 Lynn Garren : message facility changes

## larpandoracontent v03_07_00_01

-   2017-06-09 Lynn Garren : larpandoracontent v03_07_00_01
-   2017-06-09 Lynn Garren : using cetlib v3_00_01 and pandora v03_00_00d

## larsoftobj v1_20_00_01

-   2017-06-09 Lynn Garren : larsoftobj v1_20_00_01
-   2017-06-09 Lynn Garren : update distribution
-   2017-06-07 Lynn Garren : gallery v1_04_03

## lardataobj v1_16_00_01

-   2017-06-09 Lynn Garren : lardataobj v1_16_00_01
-   2017-06-07 Lynn Garren : nusimdata v1_08_00
-   2017-06-07 Lynn Garren : add missing header

## larcoreobj v1_13_01_01

-   2017-06-09 Lynn Garren : larcoreobj v1_13_01_01
-   2017-06-07 Lynn Garren : canvas v2_00_02

## larbatch v01_32_01

## larutils v1_15_00
