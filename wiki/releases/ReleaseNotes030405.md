LArSoft v03\_04\_05 Release Notes
======================================================================

-   **Table of contents**
-   [LArSoft v03\_04\_05 Release Notes](#LArSoft-v03_04_05-Release-Notes)
    -   [Purpose](#Purpose)
    -   [New features](#New-features)
    -   [Bug fixes](#Bug-fixes)
    -   [Updated dependencies](#Updated-dependencies)
-   [Change List](#Change-List)
    -   [larsoft v03\_04\_05](#larsoft-v03_04_05)
    -   [lareventdisplay v03\_02\_08](#lareventdisplay-v03_02_08)
    -   [larexamples v03\_02\_08](#larexamples-v03_02_08)
    -   [larpandora v03\_04\_01](#larpandora-v03_04_01)
    -   [larana v03\_03\_05](#larana-v03_03_05)
    -   [larreco v03\_04\_00](#larreco-v03_04_00)
    -   [larsim v03\_03\_00](#larsim-v03_03_00)
    -   [larevt v03\_02\_08](#larevt-v03_02_08)
    -   [lardata v03\_04\_01](#lardata-v03_04_01)
    -   [larcore v03\_03\_04](#larcore-v03_03_04)

[list of LArSoft releases](LArSoft_release_list)
[Download instructions](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v03_04_05/larsoft-v03_04_05.html)

Purpose
--------------------

-   Changes in develop since v03\_04\_04

New features
------------------------------

-   LBNE is testing a new fast hit finder that works directly on the raw waveforms (rawdigits) and skips
    the deconvolution (caldata) step. Thus there is no recob:Wire object, which would normally be
    created in the caldata step. The disambig-cheater routine, which creates a new set of hits, previously
    assumed that the recob:Wire object existed. The new version does not.

Bug fixes
------------------------

-   [\#7460](/redmine/issues/7460 "Bug: NaN's in the simulation (Closed)") (NaNs in simulation) is fixed

Updated dependencies
----------------------------------------------

Change List
============================

larsoft v03\_04\_05
------------------------------------------

-   2014-12-10 Lynn Garren : mrb v1\_03\_02 with small fix for OSX
-   2014-12-10 Lynn Garren : larsoft v03\_04\_05 for larsoft v03\_04\_05
-   2014-12-10 Lynn Garren : product versions
-   2014-12-02 Lynn Garren : product versions

lareventdisplay v03\_02\_08
----------------------------------------------------------

-   2014-12-10 Lynn Garren : lareventdisplay v03\_02\_08 for larsoft v03\_04\_05

larexamples v03\_02\_08
--------------------------------------------------

-   2014-12-10 Lynn Garren : larexamples v03\_02\_08 for larsoft v03\_04\_05

larpandora v03\_04\_01
------------------------------------------------

-   2014-12-10 Lynn Garren : larpandora v03\_04\_01 for larsoft v03\_04\_05

larana v03\_03\_05
----------------------------------------

-   2014-12-10 Lynn Garren : larana v03\_03\_05 for larsoft v03\_04\_05
-   2014-12-05 Alex Himmel : Disable unipolar histograms which don’t make sense for the 35ton optical digitizer.

larreco v03\_04\_00
------------------------------------------

-   2014-12-10 Lynn Garren : larreco v03\_04\_00 for larsoft v03\_04\_05
-   2014-12-08 Michelle Stancari : Change hit construction to use rawdigits instead of recob:Wire, needed for fast hit finder
-   2014-12-08 Wesley Ketchum : add in some comparisons for peak amplitude and time
-   2014-12-05 Wesley Ketchum : change channel type to plane in hitfinderana
-   2014-12-05 Wesley Ketchum : add in a map for collecting MCHits from the same particle together

larsim v03\_03\_00
----------------------------------------

-   2014-12-10 Lynn Garren : larsim v03\_03\_00 for larsoft v03\_04\_05
-   2014-12-10 Gianluca Petrillo : Adding a error message when trying to add no electrons or no energy to a SimChannel
-   2014-12-09 Gianluca Petrillo : Fix to Issue [\#7460](/redmine/issues/7460 "Bug: NaN's in the simulation (Closed)"): do not add ionization contributions with no electrons to SimChannel’s

larevt v03\_02\_08
----------------------------------------

-   2014-12-10 Lynn Garren : larevt v03\_02\_08 for larsoft v03\_04\_05

lardata v03\_04\_01
------------------------------------------

-   2014-12-10 Lynn Garren : lardata v03\_04\_01 for larsoft v03\_04\_05

larcore v03\_03\_04
------------------------------------------

-   2014-12-10 Lynn Garren : larcore v03\_03\_04 for larsoft v03\_04\_05
-   2014-12-09 Gianluca Petrillo : Removed a (long) debugging output line
