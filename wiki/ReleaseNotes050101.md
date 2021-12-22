LArSoft v05\_01\_01 Release Notes
======================================================================

-   **Table of contents**
-   [LArSoft v05\_01\_01 Release Notes](#LArSoft-v05_01_01-Release-Notes)
    -   [Purpose](#Purpose)
    -   [New features](#New-features)
    -   [Bug fixes](#Bug-fixes)
    -   [Updated dependencies](#Updated-dependencies)
-   [Change List](#Change-List)
    -   [larsoft v05\_01\_01](#larsoft-v05_01_01)
    -   [lareventdisplay v05\_01\_01](#lareventdisplay-v05_01_01)
    -   [larexamples v05\_00\_03](#larexamples-v05_00_03)
    -   [larpandora v05\_00\_03](#larpandora-v05_00_03)
    -   [larana v05\_01\_00](#larana-v05_01_00)
    -   [larreco v05\_01\_01](#larreco-v05_01_01)
    -   [larsim v05\_00\_03](#larsim-v05_00_03)
    -   [larevt v05\_00\_03](#larevt-v05_00_03)
    -   [lardata v05\_01\_01](#lardata-v05_01_01)
    -   [larcore v05\_00\_01](#larcore-v05_00_01)
    -   [larbatch v01\_20\_04](#larbatch-v01_20_04)
    -   [larutils v1\_05\_02](#larutils-v1_05_02)

[list of LArSoft releases](LArSoft_release_list)\
[Download instructions](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v05_01_01/larsoft-v05_01_01.html)

Purpose
--------------------

-   fixes for genie 2.10.4

New features
------------------------------

-   larana feature/tjyang\_crhitremovalupdate
    -   CRHitRemoval\_module.cc removes cosmic ray hits and creates a new list of hits. However, it does not create hit-wire and hit-rawdigit associations, which causes problems for some use cases.
    -   CRHitRemoval\_module.cc has been modified to add hit-wire and hit-rawdigit associations.

Bug fixes
------------------------

-   larsim genie.fcl updated with appropriate information for genie 2.10.4
    -   see [\#11794](/redmine/issues/11794 "Bug: nutools and genie v2_10_4 (Closed)")

Updated dependencies
----------------------------------------------

  --------------- ------------ ------------ ----------------------------------------------------------------------------------------
  Product         Version      Qualifiers   Notes
  nutools         v1\_23\_01   e9           [\#11794](/redmine/issues/11794 "Bug: nutools and genie v2_10_4 (Closed)")
  genie           v2\_10\_4a   e9:r5        includes gevgen\_fnal executable
  cetbuildtools   v4\_18\_03                [\#11708](/redmine/issues/11708 "Bug: install_fhicl does not honor EXCLUDES (Closed)")
  --------------- ------------ ------------ ----------------------------------------------------------------------------------------

Change List
============================

larsoft v05\_01\_01
------------------------------------------

-   2016-02-24 Lynn Garren : larsoft v05\_01\_01 for larsoft v05\_01\_01
-   2016-02-24 Lynn Garren : genie v2\_10\_4a
-   2016-02-24 Lynn Garren : add cetbuildtools v4\_18\_03
-   2016-02-24 Lynn Garren : update product versions
-   2016-02-24 Lynn Garren : update dependency database
-   2016-02-19 Lynn Garren : larsoft v05\_01\_00
-   2016-02-18 Gianluca Petrillo : Added heuristics to UpdateCoreServices.py not to warn about members moved from LArProperties to DetectorProperties when it is believed that the code has been already fixed. Works fairly well except on lardata.

lareventdisplay v05\_01\_01
----------------------------------------------------------

-   2016-02-24 Lynn Garren : lareventdisplay v05\_01\_01 for larsoft v05\_01\_01

larexamples v05\_00\_03
--------------------------------------------------

-   2016-02-24 Lynn Garren : larexamples v05\_00\_03 for larsoft v05\_01\_01

larpandora v05\_00\_03
------------------------------------------------

-   2016-02-24 Lynn Garren : larpandora v05\_00\_03 for larsoft v05\_01\_01

larana v05\_01\_00
----------------------------------------

-   2016-02-24 Lynn Garren : larana v05\_01\_00 for larsoft v05\_01\_01
-   2016-02-20 Tingjun Yang : Add hit-wire and hit-rawdigit associaitons.

larreco v05\_01\_01
------------------------------------------

-   2016-02-24 Lynn Garren : larreco v05\_01\_01 for larsoft v05\_01\_01
-   2016-02-24 Jonathan Davies : Fixing bug in RawHitFinder which was causing raw adcs to not be filled when the Compression Type was set to kNone

larsim v05\_00\_03
----------------------------------------

-   2016-02-24 Lynn Garren : larsim v05\_00\_03 for larsoft v05\_01\_01
-   2016-02-23 Lynn Garren : changes for genie v2\_10\_4

larevt v05\_00\_03
----------------------------------------

-   2016-02-24 Lynn Garren : larevt v05\_00\_03 for larsoft v05\_01\_01

lardata v05\_01\_01
------------------------------------------

-   2016-02-24 Lynn Garren : lardata v05\_01\_01 for larsoft v05\_01\_01

larcore v05\_00\_01
------------------------------------------

larbatch v01\_20\_04
--------------------------------------------

larutils v1\_05\_02
------------------------------------------
