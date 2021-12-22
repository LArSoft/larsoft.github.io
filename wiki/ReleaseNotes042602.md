LArSoft v04\_26\_02 Release Notes(#LArSoft-v04_26_02-Release-Notes)
======================================================================

-   **Table of contents**
-   [LArSoft v04\_26\_02 Release Notes](#LArSoft-v04_26_02-Release-Notes)
    -   [Purpose](#Purpose)
    -   [New features](#New-features)
    -   [Bug fixes](#Bug-fixes)
    -   [Updated dependencies](#Updated-dependencies)
-   [Change List](#Change-List)
    -   [larsoft v04\_26\_02](#larsoft-v04_26_02)
    -   [lareventdisplay v04\_10\_01](#lareventdisplay-v04_10_01)
    -   [larexamples v04\_05\_08](#larexamples-v04_05_08)
    -   [larpandora v04\_07\_02](#larpandora-v04_07_02)
    -   [larana v04\_14\_00](#larana-v04_14_00)
    -   [larreco v04\_19\_01](#larreco-v04_19_01)
    -   [larsim v04\_12\_01](#larsim-v04_12_01)
    -   [larevt v04\_12\_01](#larevt-v04_12_01)
    -   [lardata v04\_15\_01](#lardata-v04_15_01)
    -   [larcore v04\_17\_02](#larcore-v04_17_02)
    -   [larbatch v01\_18\_00](#larbatch-v01_18_00)
    -   [larutils v1\_04\_00](#larutils-v1_04_00)

[list of LArSoft releases](LArSoft_release_list)\
[Download instructions](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v04_26_02/larsoft-v04_26_02.html)

Purpose(#Purpose)
--------------------

-   Microboone requests a special build of larsoft. This request is related \
    to our ability to process the impending arrival of BNB beam data.

New features(#New-features)
------------------------------

-   larana commits from Kazu

Bug fixes(#Bug-fixes)
------------------------

Updated dependencies(#Updated-dependencies)
----------------------------------------------

  --------------- ------------ ----------- ----------------------------------------------------------------------
  Product         Version      Qualifier   Notes
  cetbuildtools   v4\_14\_02               [Release\_Notes](/redmine/projects/cetbuildtools/wiki/Release_Notes)
  --------------- ------------ ----------- ----------------------------------------------------------------------

Change List(#Change-List)
============================

larsoft v04\_26\_02(#larsoft-v04_26_02)
------------------------------------------

-   2015-10-16 Lynn Garren : use larbase
-   2015-10-16 Lynn Garren : ifdh v1\_8\_7 and libwda v2\_22\_0 in source code manifest
-   2015-10-16 Lynn Garren : product names and cetbuildtools v4\_14\_02
-   2015-10-16 Lynn Garren : larsoft v04\_26\_02 for larsoft v04\_26\_02

lareventdisplay v04\_10\_01(#lareventdisplay-v04_10_01)
----------------------------------------------------------

larexamples v04\_05\_08(#larexamples-v04_05_08)
--------------------------------------------------

larpandora v04\_07\_02(#larpandora-v04_07_02)
------------------------------------------------

larana v04\_14\_00(#larana-v04_14_00)
----------------------------------------

-   2015-10-16 Lynn Garren : larana v04\_14\_00 for larsoft v04\_26\_02
-   2015-10-16 Lynn Garren : match the type of first\_index
-   2015-10-15 drinkingkazu : Adding new algorithm & a bit of re-organization –kazu

larreco v04\_19\_01(#larreco-v04_19_01)
------------------------------------------

larsim v04\_12\_01(#larsim-v04_12_01)
----------------------------------------

larevt v04\_12\_01(#larevt-v04_12_01)
----------------------------------------

lardata v04\_15\_01(#lardata-v04_15_01)
------------------------------------------

larcore v04\_17\_02(#larcore-v04_17_02)
------------------------------------------

larbatch v01\_18\_00(#larbatch-v01_18_00)
--------------------------------------------

-   2015-10-16 Lynn Garren : larbatch v01\_18\_00 for larsoft v04\_26\_02
-   2015-10-16 Herbert Greenlee : Sort input file list according to decreasing size to avoid having zero-event files first.
-   2015-10-15 Herbert Greenlee : Look for init, source, and end scripts on execution path (as well as allowing these scripts to be specified via their actual path).
-   2015-10-15 Herbert Greenlee : Automatically obtain a kca certificate (if necessary) before attempting to create a sam snapshot.
-   2015-10-15 Herbert Greenlee : Add error message.
-   2015-10-15 Herbert Greenlee : Make sure initialization and finalization scripts are executable.
-   2015-10-14 Herbert Greenlee : Catch exceptions from samweb when making pubs snapshot.
-   2015-10-14 Herbert Greenlee : Add support for multiple output streams and nonlinear staging. Raise PubsInputError if restricted pubs dataset definition would not return any files.

larutils v1\_04\_00(#larutils-v1_04_00)
------------------------------------------

-   2015-10-16 Lynn Garren : larutils v1\_04\_00 for larsoft v04\_26\_02
-   2015-10-15 Lynn Garren : adding a larbase distribution
-   2015-10-15 Lynn Garren : add s18:e9 support
-   2015-10-14 Lynn Garren : need nutools v1\_14\_05
