LArSoft v04_08_01 Release Notes
======================================================================

-   **Table of contents**
-   [LArSoft v04_08_01 Release Notes](#LArSoft-v04_08_01-Release-Notes)
    -   [Purpose](#Purpose)
    -   [New features](#New-features)
    -   [Bug fixes](#Bug-fixes)
    -   [Updated dependencies](#Updated-dependencies)
-   [Change List](#Change-List)
    -   [larsoft v04_08_01](#larsoft-v04_08_01)
    -   [lareventdisplay v04_04_05](#lareventdisplay-v04_04_05)
    -   [larexamples v04_04_05](#larexamples-v04_04_05)
    -   [larpandora v04_04_05](#larpandora-v04_04_05)
    -   [larana v04_06_03](#larana-v04_06_03)
    -   [larreco v04_06_00](#larreco-v04_06_00)
    -   [larsim v04_07_01](#larsim-v04_07_01)
    -   [larevt v04_06_02](#larevt-v04_06_02)
    -   [lardata v04_07_00](#lardata-v04_07_00)
    -   [larcore v04_07_01](#larcore-v04_07_01)
    -   [larbatch v01_07_00](#larbatch-v01_07_00)
    -   [larutils v1_00_10](#larutils-v1_00_10)

[list of LArSoft releases](LArSoft_release_list)
[Download instructions](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v04_08_01/larsoft-v04_08_01.html)

Purpose
--------------------

Changes in development since v04_08_00

New features
------------------------------

-   Blurred Clustering option added to larreco

Bug fixes
------------------------

-   [redmine issue 8873](https://cdcvs.fnal.gov/redmine/issues/8873) resolved

Updated dependencies
----------------------------------------------

Change List
============================

larsoft v04_08_01
------------------------------------------

-   2015-05-20 Lynn Garren : larsoft v04_08_01 for larsoft v04_08_01
-   2015-05-20 Lynn Garren : update product versions
-   2015-05-20 Lynn Garren : update dependency database

lareventdisplay v04_04_05
----------------------------------------------------------

-   2015-05-20 Lynn Garren : lareventdisplay v04_04_05 for larsoft v04_08_01

larexamples v04_04_05
--------------------------------------------------

-   2015-05-20 Lynn Garren : larexamples v04_04_05 for larsoft v04_08_01

larpandora v04_04_05
------------------------------------------------

-   2015-05-20 Lynn Garren : larpandora v04_04_05 for larsoft v04_08_01

larana v04_06_03
----------------------------------------

-   2015-05-20 Lynn Garren : larana v04_06_03 for larsoft v04_08_01

larreco v04_06_00
------------------------------------------

-   2015-05-20 Lynn Garren : larreco v04_06_00 for larsoft v04_08_01
-   2015-05-19 Mike Wallbank : Added new clustering technique: Blurred Clustering
-   2015-05-15 Mike Wallbank : Added new reconstruction technique: Blurred Clustering
-   2015-05-15 Tingjun Yang : Merge branch ‘develop’ of ssh://cdcvs.fnal.gov/cvs/projects/larreco into develop
-   2015-05-15 Tingjun Yang : Merge branch ‘feature/tjyang_clustermatching’ into develop
-   2015-05-14 Tingjun Yang : Move cluster matching to an algorithm.
-   2015-05-14 Tingjun Yang : Change length to be float.
-   2015-05-13 Tingjun Yang : Add ClusterMatchTQ to do matching based on time and charge. This is taken from CosmicTracker.
-   2015-05-13 Kalousis Leonidas : Fix seg. fault bug

larsim v04_07_01
----------------------------------------

-   2015-05-20 Lynn Garren : larsim v04_07_01 for larsoft v04_08_01
-   2015-05-12 Alex Himmel : Add option to Library Analyzer module to make plots for a single optical detector.

larevt v04_06_02
----------------------------------------

-   2015-05-20 Lynn Garren : larevt v04_06_02 for larsoft v04_08_01

lardata v04_07_00
------------------------------------------

-   2015-05-20 Lynn Garren : lardata v04_07_00 for larsoft v04_08_01
-   2015-05-19 Jonathan Insler : Added new zero suppression method that looks at nearest neighboring wires
-   2015-05-14 Tingjun Yang : Convert ticks to us if the fTriggerOffsetTPC is obtained from database.

larcore v04_07_01
------------------------------------------

-   2015-05-20 Lynn Garren : larcore v04_07_01 for larsoft v04_08_01
-   2015-05-19 Brian_Rebel : move NAuxDetSensitive from ChannelMapAlg to Geometry and implement it.

larbatch v01_07_00
--------------------------------------------

-   2015-05-20 Lynn Garren : larbatch v01_07_00 for larsoft v04_08_01
-   2015-05-15 Herbert Greenlee : Move next and previous stage functions out of projectapp.py into project.py.
-   2015-05-15 Herbert Greenlee : Modify batch script to make sure destination directory is empty before copying results there.
-   2015-05-13 Herbert Greenlee : Add ability to daisy chain stages accros projects without specifying input list explicitly.
-   2015-05-12 Herbert Greenlee : Remove unused option –sam_url.
-   2015-05-13 Lynn Garren : larsoft v04_08_00
-   2015-05-12 Herbert Greenlee : Remove unused function check_root_json. Remove ability to regenerate json art metadata on the fly, rather, rely exclusively on art metadata generated on the batch worker.
-   2015-05-12 Herbert Greenlee : Get rid of unused method parsedir.

larutils v1_00_10
------------------------------------------
