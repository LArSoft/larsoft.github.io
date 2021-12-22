LArSoft v04\_06\_02 Release Notes
======================================================================

-   **Table of contents**
-   [LArSoft v04\_06\_02 Release Notes](#LArSoft-v04_06_02-Release-Notes)
    -   [Purpose](#Purpose)
    -   [Bug fixes](#Bug-fixes)
    -   [Updated dependencies](#Updated-dependencies)
-   [Change List](#Change-List)
    -   [larsoft v04\_06\_02](#larsoft-v04_06_02)
    -   [lareventdisplay v04\_04\_02](#lareventdisplay-v04_04_02)
    -   [larexamples v04\_04\_02](#larexamples-v04_04_02)
    -   [larpandora v04\_04\_02](#larpandora-v04_04_02)
    -   [larana v04\_06\_00](#larana-v04_06_00)
    -   [larreco v04\_04\_02](#larreco-v04_04_02)
    -   [larsim v04\_05\_02](#larsim-v04_05_02)
    -   [larevt v04\_05\_02](#larevt-v04_05_02)
    -   [lardata v04\_05\_02](#lardata-v04_05_02)
    -   [larcore v04\_05\_00](#larcore-v04_05_00)
    -   [larbatch v01\_06\_00](#larbatch-v01_06_00)
    -   [larutils v1\_00\_09](#larutils-v1_00_09)

[list of LArSoft releases](LArSoft_release_list)\
[Download instructions](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v04_06_02/larsoft-v04_06_02.html)

Purpose
--------------------

-   Requested by MicroBooNE to pick up a bug fix in larana
-   Includes changes to develop since v04\_06\_01

Bug fixes
------------------------

Updated dependencies
----------------------------------------------

  --------- ------------ ------------------ -----------------------------------------------
  Product   Version      Qualifier          Notes
  nutools   v1\_10\_02   e7 and e7:noifdh   restore missing headers from nutools/Database
  --------- ------------ ------------------ -----------------------------------------------

Change List
============================

larsoft v04\_06\_02
------------------------------------------

-   2015-04-29 Lynn Garren : larutils v1\_00\_09
-   2015-04-29 Lynn Garren : update product versions

lareventdisplay v04\_04\_02
----------------------------------------------------------

-   2015-04-29 Lynn Garren : lareventdisplay v04\_04\_02 for larsoft v04\_06\_02

larexamples v04\_04\_02
--------------------------------------------------

-   2015-04-29 Lynn Garren : larexamples v04\_04\_02 for larsoft v04\_06\_02

larpandora v04\_04\_02
------------------------------------------------

-   2015-04-29 Lynn Garren : larpandora v04\_04\_02 for larsoft v04\_06\_02

larana v04\_06\_00
----------------------------------------

-   2015-04-29 Lynn Garren : larana v04\_06\_00 for larsoft v04\_06\_02
-   2015-04-29 Tracy Usher : Merge branch ‘develop’ of ssh://cdcvs.fnal.gov/cvs/projects/larana into develop
-   2015-04-29 Tracy Usher : Reversing order of declaration of associations to be written out to prevent crash observed on OS X (cannot say if also linux problem).
-   2015-04-28 Alex Himmel : Put back pre-reservation of the WaveformVector removed in previous commit.
-   2015-04-28 Thomas Warburton : Retuned the 35ton calorimetry constants for the new signal shaping service used
-   2015-04-27 Lynn Garren : larsoft v04\_06\_01
-   2015-04-27 Wesley Ketchum : Merge branch ‘feature/wketchum\_OpFlashAna’ into develop
-   2015-04-27 Wesley Ketchum : forgot the ophit amplitude, and removed a cout statement
-   2015-04-27 Wesley Ketchum : silly compile error fix
-   2015-04-27 Wesley Ketchum : make the changes to store the ophit information
-   2015-04-23 Wesley Ketchum : rearrange the tree structure, as the one with the recob::Flash directly was not working for me
-   2015-04-21 Wesley Ketchum : add in simple flash ana module, and fcl file
-   2015-04-20 Wesley Ketchum : add in tree for ophits, and modify cmake
-   2015-04-10 Wesley Ketchum : add in a histogram for flash times
-   2015-04-10 Wesley Ketchum : fill tree for a single opflash collection
-   2015-04-10 Wesley Ketchum : filling out things to put in tree
-   2015-04-09 Wesley Ketchum : add in files for standalong OpFlashAnaAlg

larreco v04\_04\_02
------------------------------------------

-   2015-04-29 Lynn Garren : larreco v04\_04\_02 for larsoft v04\_06\_02

larsim v04\_05\_02
----------------------------------------

-   2015-04-29 Lynn Garren : larsim v04\_05\_02 for larsoft v04\_06\_02
-   2015-04-28 Alex Himmel : Use number of optical detectors instead of number of optical channels when creating the OpDetPhotonTable. Bug fix for library generation, no impact on LitePhotons used during event simulation.

larevt v04\_05\_02
----------------------------------------

-   2015-04-29 Lynn Garren : larevt v04\_05\_02 for larsoft v04\_06\_02

lardata v04\_05\_02
------------------------------------------

-   2015-04-29 Lynn Garren : lardata v04\_05\_02 for larsoft v04\_06\_02

larcore v04\_05\_00
------------------------------------------

larbatch v01\_06\_00
--------------------------------------------

larutils v1\_00\_09
------------------------------------------

-   2015-04-29 Lynn Garren : Merge branch ‘release/v04\_06\_02’
-   2015-04-29 Lynn Garren : larutils v1\_00\_09 for larsoft v04\_06\_02
-   2015-04-29 Lynn Garren : using nutools v1\_10\_02 now
