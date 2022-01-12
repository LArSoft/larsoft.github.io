LArSoft v06\_80\_00 Release Notes
======================================================================

-   **Table of contents**
-   [LArSoft v06\_80\_00 Release Notes](#LArSoft-v06_80_00-Release-Notes)
    -   [Purpose](#Purpose)
    -   [Breaking Changes](#Breaking-Changes)
    -   [Bug fixes](#Bug-fixes)
    -   [Updated dependencies](#Updated-dependencies)
-   [Change List](#Change-List)
    -   [larsoft v06\_80\_00](#larsoft-v06_80_00)
    -   [lareventdisplay v06\_20\_00](#lareventdisplay-v06_20_00)
    -   [larexamples v06\_14\_00](#larexamples-v06_14_00)
    -   [larpandora v06\_30\_00](#larpandora-v06_30_00)
    -   [larwirecell v06\_14\_00](#larwirecell-v06_14_00)
    -   [larana v06\_20\_00](#larana-v06_20_00)
    -   [larreco v06\_61\_00](#larreco-v06_61_00)
    -   [larsim v06\_50\_00](#larsim-v06_50_00)
    -   [larevt v06\_21\_00](#larevt-v06_21_00)
    -   [lardata v06\_46\_00](#lardata-v06_46_00)
    -   [larcore v06\_20\_00](#larcore-v06_20_00)
    -   [larpandoracontent v03\_12\_01](#larpandoracontent-v03_12_01)
    -   [larsoftobj v1\_47\_00](#larsoftobj-v1_47_00)
    -   [lardataobj v1\_33\_00](#lardataobj-v1_33_00)
    -   [lardataalg v1\_01\_00](#lardataalg-v1_01_00)
    -   [larcorealg v1\_23\_00](#larcorealg-v1_23_00)
    -   [larcoreobj v1\_24\_00](#larcoreobj-v1_24_00)
    -   [larbatch v01\_40\_00](#larbatch-v01_40_00)
    -   [larutils v1\_22\_06](#larutils-v1_22_06)

[list of LArSoft releases](LArSoft_release_list)
Download instructions for [larsoft v06\_80\_00](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v06_80_00/larsoft-v06_80_00.html)
Download instructions for [just larsoftobj v1\_47\_00](http://scisoft.fnal.gov/scisoft/bundles/larsoftobj/v1_47_00/larsoftobj-v1_47_00.html)

Purpose
--------------------

-   update to art v2\_11\_02

Breaking Changes
--------------------------------------

-   Some headers that were previously in cetlib are now only found in cetlib\_except.
-   There is now a single messagefacility library.
-   The branch feature/team\_for\_art\_2\_11\_02 is available for argoneutcode, dunetpc, lariatsoft, sbndcode, and uboonecode.
-   Use UpdateArt211.sh after setup of larsoft v06\_80\_00.

Bug fixes
------------------------

Updated dependencies
----------------------------------------------

-   art v2\_11\_02
-   boost v1\_66\_0a
-   canvas v3\_03\_02
-   canvas\_root\_io v1\_01\_06
-   clhep v2\_3\_4\_6
-   eigen v3\_3\_4a
-   nutools v2\_23\_02
-   root v6\_12\_06a

Change List
============================

larsoft v06\_80\_00
------------------------------------------

-   2018-05-31 Lynn Garren : larsoft v06\_80\_00 for larsoft v06\_80\_00
-   2018-05-31 Lynn Garren : update versions
-   2018-05-31 Lynn Garren : final name for art v2\_11\_02 update scripts
-   2018-05-31 Lynn Garren : final name for art v2\_11\_02 update scripts
-   2018-05-31 Lynn Garren : Merge branch ‘v06\_76\_00\_branch’ into release/v06\_80\_00
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

lareventdisplay v06\_20\_00
----------------------------------------------------------

-   2018-05-31 Lynn Garren : lareventdisplay v06\_20\_00 for larsoft v06\_80\_00
-   2018-05-31 Lynn Garren : Merge branch ‘v06\_76\_00\_branch’ into release/v06\_80\_00
-   2018-05-15 Lynn Garren : lareventdisplay v06\_19\_05\_01 for larsoft v06\_76\_00\_branch
-   2018-05-14 Lynn Garren : cetlib\_except/exception.h
-   2018-05-14 Lynn Garren : only one messagefacility library

larexamples v06\_14\_00
--------------------------------------------------

-   2018-05-31 Lynn Garren : larexamples v06\_14\_00 for larsoft v06\_80\_00
-   2018-05-31 Lynn Garren : Merge branch ‘v06\_76\_00\_branch’ into release/v06\_80\_00
-   2018-05-15 Lynn Garren : larexamples v06\_13\_04\_01 for larsoft v06\_76\_00\_branch
-   2018-05-10 Lynn Garren : cetlib\_except/exception.h and messagefacility has one library

larpandora v06\_30\_00
------------------------------------------------

-   2018-05-31 Lynn Garren : larpandora v06\_30\_00 for larsoft v06\_80\_00
-   2018-05-31 Lynn Garren : Merge branch ‘v06\_76\_00\_branch’ into release/v06\_80\_00
-   2018-05-15 Lynn Garren : larpandora v06\_26\_05\_01 for larsoft v06\_76\_00\_branch
-   2018-05-14 Lynn Garren : cetlib\_except/exception.h
-   2018-05-14 Lynn Garren : only one messagefacility library

larwirecell v06\_14\_00
--------------------------------------------------

-   2018-05-31 Lynn Garren : larwirecell v06\_14\_00 for larsoft v06\_80\_00
-   2018-05-31 Lynn Garren : only one messagefacility library

larana v06\_20\_00
----------------------------------------

-   2018-05-31 Lynn Garren : larana v06\_20\_00 for larsoft v06\_80\_00
-   2018-05-31 Lynn Garren : Merge branch ‘v06\_76\_00\_branch’ into release/v06\_80\_00
-   2018-05-15 Lynn Garren : larana v06\_19\_05\_01
-   2018-05-14 Lynn Garren : only one messagefacility library

larreco v06\_61\_00
------------------------------------------

-   2018-05-31 Lynn Garren : larreco v06\_61\_00 for larsoft v06\_80\_00
-   2018-05-31 Lynn Garren : Merge branch ‘v06\_76\_00\_branch’ into release/v06\_80\_00
-   2018-05-15 Lynn Garren : larreco v06\_60\_02\_01 for larsoft v06\_76\_00\_branch
-   2018-05-14 Lynn Garren : cetlib\_except/exception.h
-   2018-05-14 Lynn Garren : only one messagefacility library
-   2018-05-14 Lynn Garren : only one messagefacility library

larsim v06\_50\_00
----------------------------------------

-   2018-05-31 Lynn Garren : larsim v06\_50\_00 for larsoft v06\_80\_00
-   2018-05-31 Lynn Garren : Merge branch ‘v06\_76\_00\_branch’ into release/v06\_80\_00
-   2018-05-15 Lynn Garren : larsim v06\_46\_00\_01 for larsoft v06\_76\_00\_branch
-   2018-05-14 Lynn Garren : cetlib\_except/exception.h
-   2018-05-14 Lynn Garren : only one messagefacility library
-   2018-05-14 Lynn Garren : only one messagefacility library

larevt v06\_21\_00
----------------------------------------

-   2018-05-31 Lynn Garren : larevt v06\_21\_00 for larsoft v06\_80\_00
-   2018-05-31 Lynn Garren : Merge branch ‘v06\_76\_00\_branch’ into release/v06\_80\_00
-   2018-05-15 Lynn Garren : larevt v06\_20\_04\_01 for larsoft v06\_76\_00\_branch
-   2018-05-14 Lynn Garren : cetlib\_except/exception.h
-   2018-05-14 Lynn Garren : only one messagefacility library

lardata v06\_46\_00
------------------------------------------

-   2018-05-31 Lynn Garren : lardata v06\_46\_00 for larsoft v06\_80\_00
-   2018-05-31 Lynn Garren : only one messagefacility library and cetlib\_except/exception.h

larcore v06\_20\_00
------------------------------------------

-   2018-05-31 Lynn Garren : larcore v06\_20\_00 for larsoft v06\_80\_00
-   2018-05-31 Lynn Garren : Merge branch ‘v06\_76\_00\_branch’ into release/v06\_80\_00
-   2018-05-15 Lynn Garren : larcore v06\_19\_02\_01
-   2018-05-14 Lynn Garren : only one messagefacility library
-   2018-05-14 Lynn Garren : cetlib\_except/exception.h

larpandoracontent v03\_12\_01
--------------------------------------------------------------

-   2018-05-31 Lynn Garren : larpandoracontent v03\_12\_01 for larsoft v06\_80\_00
-   2018-05-31 Lynn Garren : ignore some files
-   2018-05-31 Lynn Garren : v03\_12\_01
-   2018-05-15 Lynn Garren : larpandoracontent v03\_12\_00\_01 for larsoft v06\_76\_00\_branch

larsoftobj v1\_47\_00
----------------------------------------------

-   2018-05-31 Lynn Garren : larsoftobj v1\_47\_00 for larsoft v06\_80\_00
-   2018-05-31 Lynn Garren : update versions
-   2018-05-31 Lynn Garren : Merge branch ‘v06\_76\_00\_branch’ into release/v06\_80\_00
-   2018-05-15 Lynn Garren : fix config
-   2018-05-15 Lynn Garren : dk2nudata
-   2018-05-15 Lynn Garren : removed larsoftobj-buildcfg.in
-   2018-05-15 Lynn Garren : larsoftobj v1\_44\_00\_01 for larsoft v06\_76\_00\_branch
-   2018-05-15 Lynn Garren : dk2nudata
-   2018-05-15 Lynn Garren : for art v2\_11\_02
-   2018-05-15 Lynn Garren : just need the cfg file

lardataobj v1\_33\_00
----------------------------------------------

-   2018-05-31 Lynn Garren : lardataobj v1\_33\_00 for larsoft v06\_80\_00
-   2018-05-31 Lynn Garren : Merge branch ‘v06\_76\_00\_branch’ into release/v06\_80\_00
-   2018-05-29 Lynn Garren : ignore some files
-   2018-05-15 Lynn Garren : with larcoreobj v1\_23\_00\_02
-   2018-05-15 Lynn Garren : lardataobj v1\_32\_00\_01 for larsoft v06\_76\_00\_branch
-   2018-05-01 Lynn Garren : cetlib\_except/exception.h
-   2018-05-10 Lynn Garren : cetlib\_except/exception.h
-   2018-05-10 Lynn Garren : messagefacility has a single library
-   2018-05-01 Lynn Garren : add missing header

lardataalg v1\_01\_00
----------------------------------------------

-   2018-05-31 Lynn Garren : lardataalg v1\_01\_00 for larsoft v06\_80\_00
-   2018-05-31 Lynn Garren : cetlib\_except/exception.h
-   2018-05-31 Lynn Garren : only one messagefacility library

larcorealg v1\_23\_00
----------------------------------------------

-   2018-05-31 Lynn Garren : larcorealg v1\_23\_00 for larsoft v06\_80\_00
-   2018-05-31 Lynn Garren : Merge branch ‘v06\_76\_00\_branch’ into release/v06\_80\_00
-   2018-05-15 Lynn Garren : larcorealg v1\_20\_00\_01
-   2018-05-14 Lynn Garren : cetlib\_except/exception.h
-   2018-05-14 Lynn Garren : only one messagefacility library

larcoreobj v1\_24\_00
----------------------------------------------

-   2018-05-31 Lynn Garren : larcoreobj v1\_24\_00 for larsoft v06\_80\_00
-   2018-05-31 Lynn Garren : Merge branch ‘v06\_76\_00\_branch’ into release/v06\_80\_00
-   2018-05-29 Lynn Garren : ignore some files
-   2018-05-15 Lynn Garren : larcoreobj v1\_23\_00\_02
-   2018-05-15 Lynn Garren : larcoreobj v1\_23\_00\_01 for larsoft v06\_76\_00\_branch
-   2018-05-01 Gianluca Petrillo : No constexpr support for GenVector in ROOT 6.12.6. Keep hoping.

larbatch v01\_40\_00
--------------------------------------------

larutils v1\_22\_06
------------------------------------------
