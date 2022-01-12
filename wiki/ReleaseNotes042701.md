LArSoft v04\_27\_01 Release Notes
======================================================================

-   **Table of contents**
-   [LArSoft v04\_27\_01 Release Notes](#LArSoft-v04_27_01-Release-Notes)
    -   [Purpose](#Purpose)
    -   [New features](#New-features)
    -   [Bug fixes](#Bug-fixes)
    -   [Updated dependencies](#Updated-dependencies)
-   [Change List](#Change-List)
    -   [larsoft v04\_27\_01](#larsoft-v04_27_01)
    -   [lareventdisplay v04\_12\_00](#lareventdisplay-v04_12_00)
    -   [larexamples v04\_06\_01](#larexamples-v04_06_01)
    -   [larpandora v04\_08\_01](#larpandora-v04_08_01)
    -   [larana v04\_15\_01](#larana-v04_15_01)
    -   [larreco v04\_21\_00](#larreco-v04_21_00)
    -   [larsim v04\_13\_01](#larsim-v04_13_01)
    -   [larevt v04\_13\_01](#larevt-v04_13_01)
    -   [lardata v04\_17\_00](#lardata-v04_17_00)
    -   [larcore v04\_18\_00](#larcore-v04_18_00)
    -   [larbatch v01\_18\_00](#larbatch-v01_18_00)
    -   [larutils v1\_04\_00](#larutils-v1_04_00)

[list of LArSoft releases](LArSoft_release_list)
[Download instructions](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v04_27_01/larsoft-v04_27_01.html)

Purpose
--------------------

-   changes to develop since v04\_27\_01/v04\_26\_02

New features
------------------------------

-   hit-track association with metadata
    -   lardata: rsulej\_lardata\_TrkAssnIdx
    -   larreco: rsulej\_larreco\_TrkAssnIdx

Bug fixes
------------------------

-   fix eventdisplay problem

Updated dependencies
----------------------------------------------

Change List
============================

larsoft v04\_27\_01
------------------------------------------

-   2015-10-21 Lynn Garren : larsoft v04\_27\_01 for larsoft v04\_27\_01
-   2015-10-21 Lynn Garren : update product versions
-   2015-10-21 Lynn Garren : no Mavericks build
-   2015-10-21 Lynn Garren : update dependency database

lareventdisplay v04\_12\_00
----------------------------------------------------------

-   2015-10-21 Lynn Garren : lareventdisplay v04\_12\_00 for larsoft v04\_27\_01
-   2015-10-21 Lynn Garren : Merge branch ‘feature/gp\_DisplayByChannelStatusRange’ into release/v04\_27\_01
-   2015-10-19 Gianluca Petrillo : Added a ‘MinChannelStatus’ parameter to the event display (RawDrawingOptions service) allowing to exclude channels with a status below a limit from drawing. The new parameter support is the same as its elder brother ‘MaxChannelStatus’.

larexamples v04\_06\_01
--------------------------------------------------

-   2015-10-21 Lynn Garren : larexamples v04\_06\_01 for larsoft v04\_27\_01

larpandora v04\_08\_01
------------------------------------------------

-   2015-10-21 Lynn Garren : larpandora v04\_08\_01 for larsoft v04\_27\_01

larana v04\_15\_01
----------------------------------------

-   2015-10-21 Lynn Garren : larana v04\_15\_01 for larsoft v04\_27\_01
-   2015-10-19 Herbert Greenlee : Fix crash.

larreco v04\_21\_00
------------------------------------------

-   2015-10-21 Lynn Garren : larreco v04\_21\_00 for larsoft v04\_27\_01
-   2015-10-21 Lynn Garren : Merge branch ‘feature/rsulej\_larreco\_TrkAssnIdx’ into release/v04\_27\_01
-   2015-10-17 Tingjun Yang : Merge track and shower information.
-   2015-10-08 Robert Sulej : include news from develop; produce old and new assn types to be not-breaking change
-   2015-10-07 Robert Sulej : create trh-hit assns with metadata
-   2015-10-06 Robert Sulej : Merge branch ‘develop’ into feature/rsulej\_larreco\_TrkAssnIdx
-   2015-08-27 Robert Sulej : one more correction to track-hit-index assn
-   2015-08-27 Robert Sulej : correct declared assn type for producer
-   2015-08-27 Robert Sulej : add assn for track,hit,index

larsim v04\_13\_01
----------------------------------------

-   2015-10-21 Lynn Garren : larsim v04\_13\_01 for larsoft v04\_27\_01

larevt v04\_13\_01
----------------------------------------

-   2015-10-21 Lynn Garren : larevt v04\_13\_01 for larsoft v04\_27\_01

lardata v04\_17\_00
------------------------------------------

-   2015-10-21 Lynn Garren : lardata v04\_17\_00 for larsoft v04\_27\_01
-   2015-10-21 Lynn Garren : Merge branch ‘feature/rsulej\_lardata\_TrkAssnIdx’ into release/v04\_27\_01
-   2015-10-07 Robert Sulej : add trk-hit metadata class
-   2015-08-27 Robert Sulej : one more correction to track-hit-index assn
-   2015-08-27 Robert Sulej : add also wrapper template and xml entries
-   2015-08-27 Robert Sulej : add assn for track,hit,index

larcore v04\_18\_00
------------------------------------------

larbatch v01\_18\_00
--------------------------------------------

larutils v1\_04\_00
------------------------------------------
