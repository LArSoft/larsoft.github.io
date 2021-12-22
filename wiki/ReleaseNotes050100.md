LArSoft v05\_01\_00 Release Notes
======================================================================

-   **Table of contents**
-   [LArSoft v05\_01\_00 Release Notes](#LArSoft-v05_01_00-Release-Notes)
    -   [Purpose](#Purpose)
    -   [New features](#New-features)
    -   [Bug fixes](#Bug-fixes)
    -   [Updated dependencies](#Updated-dependencies)
-   [Change List](#Change-List)
    -   [larsoft v05\_01\_00](#larsoft-v05_01_00)
    -   [lareventdisplay v05\_01\_00](#lareventdisplay-v05_01_00)
    -   [larexamples v05\_00\_02](#larexamples-v05_00_02)
    -   [larpandora v05\_00\_02](#larpandora-v05_00_02)
    -   [larana v05\_00\_02](#larana-v05_00_02)
    -   [larreco v05\_01\_00](#larreco-v05_01_00)
    -   [larsim v05\_00\_02](#larsim-v05_00_02)
    -   [larevt v05\_00\_02](#larevt-v05_00_02)
    -   [lardata v05\_01\_00](#lardata-v05_01_00)
    -   [larcore v05\_00\_01](#larcore-v05_00_01)
    -   [larbatch v01\_20\_04](#larbatch-v01_20_04)
    -   [larutils v1\_05\_02](#larutils-v1_05_02)

[list of LArSoft releases](LArSoft_release_list)\
[Download instructions](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v05_01_00/larsoft-v05_01_00.html)

Purpose
--------------------

-   changes to develop since v05\_00\_02

New features
------------------------------

-   genie 2.10.4

Bug fixes
------------------------

Updated dependencies
----------------------------------------------

  --------------- ------------ --------------------------- -------
  Product         Version      Qualifiers                  Notes
  nutools         v1\_23\_00   e9                          
  genie           v2\_10\_4    e9:r5                       
  genie\_phyopt   v2\_10\_2    dkcharm, dkcharmtau         
  genie\_xsec     v2\_10\_2    default, defaultplusccmec   
  --------------- ------------ --------------------------- -------

Change List
============================

larsoft v05\_01\_00
------------------------------------------

-   2016-02-18 Lynn Garren : fix typo
-   2016-02-18 Lynn Garren : larsoft v05\_01\_00 for larsoft v05\_01\_00
-   2016-02-18 Lynn Garren : update product versions

lareventdisplay v05\_01\_00
----------------------------------------------------------

-   2016-02-18 Lynn Garren : lareventdisplay v05\_01\_00 for larsoft v05\_01\_00
-   2016-02-16 Lynn Garren : Merge branch ‘v05\_00\_branch’ into dm
-   2016-02-10 Tingjun Yang : Reimplement the fixes to the shower display.

larexamples v05\_00\_02
--------------------------------------------------

-   2016-02-18 Lynn Garren : larexamples v05\_00\_02 for larsoft v05\_01\_00

larpandora v05\_00\_02
------------------------------------------------

-   2016-02-18 Lynn Garren : larpandora v05\_00\_02 for larsoft v05\_01\_00

larana v05\_00\_02
----------------------------------------

-   2016-02-18 Lynn Garren : larana v05\_00\_02 for larsoft v05\_01\_00

larreco v05\_01\_00
------------------------------------------

-   2016-02-18 Lynn Garren : larreco v05\_01\_00 for larsoft v05\_01\_00
-   2016-02-16 Lynn Garren : final fixes
-   2016-02-16 Lynn Garren : run UpdateCoreServices.py again
-   2016-02-16 Lynn Garren : run update\_sources again
-   2016-02-16 Lynn Garren : Merge branch ‘v05\_00\_branch’ into dm
-   2016-02-12 Robert Sulej : remove mc-based info saved in the module; add option to save only those vertices which interconnect tracks to facilitate debugging; further refactor to reuse code doing corrections to 2D pattern recognition (will enable this corrections later, when tested)
-   2016-02-09 Lynn Garren : larsoft v04\_37\_00
-   2016-02-09 Bruce Baller : Comment out hit merge restoration code
-   2016-02-09 Bruce Baller : Comment out hit merge restoration

larsim v05\_00\_02
----------------------------------------

-   2016-02-18 Lynn Garren : larsim v05\_00\_02 for larsoft v05\_01\_00

larevt v05\_00\_02
----------------------------------------

-   2016-02-18 Lynn Garren : larevt v05\_00\_02 for larsoft v05\_01\_00

lardata v05\_01\_00
------------------------------------------

-   2016-02-18 Lynn Garren : lardata v05\_01\_00 for larsoft v05\_01\_00

larcore v05\_00\_01
------------------------------------------

larbatch v01\_20\_04
--------------------------------------------

-   2016-02-18 Lynn Garren : larbatch v01\_20\_04 for larsoft v05\_01\_00
-   2016-02-18 Lynn Garren : larbatch v01\_20\_04 for larsoft v05\_01\_00
-   2016-02-16 Tingjun Yang : Use the old method to get crc if the new method does not work.

larutils v1\_05\_02
------------------------------------------

-   2016-02-18 Lynn Garren : larutils v1\_05\_02 for larsoft v05\_01\_00
-   2016-02-16 Lynn Garren : building v05
-   2016-02-13 Herbert Greenlee : Only copy libXmu.so.6 on linux.
-   2016-02-13 Herbert Greenlee : Merge branch ‘develop’ of ssh://cdcvs.fnal.gov/cvs/projects/larutils into develop
-   2016-02-13 Herbert Greenlee : Copy libXmu.so.6.
