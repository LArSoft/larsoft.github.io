LArSoft v04\_08\_01 Release Notes(#LArSoft-v04_08_01-Release-Notes)
======================================================================

-   **Table of contents**
-   [LArSoft v04\_08\_01 Release Notes](#LArSoft-v04_08_01-Release-Notes)
    -   [Purpose](#Purpose)
    -   [New features](#New-features)
    -   [Bug fixes](#Bug-fixes)
    -   [Updated dependencies](#Updated-dependencies)
-   [Change List](#Change-List)
    -   [larsoft v04\_08\_01](#larsoft-v04_08_01)
    -   [lareventdisplay v04\_04\_05](#lareventdisplay-v04_04_05)
    -   [larexamples v04\_04\_05](#larexamples-v04_04_05)
    -   [larpandora v04\_04\_05](#larpandora-v04_04_05)
    -   [larana v04\_06\_03](#larana-v04_06_03)
    -   [larreco v04\_06\_00](#larreco-v04_06_00)
    -   [larsim v04\_07\_01](#larsim-v04_07_01)
    -   [larevt v04\_06\_02](#larevt-v04_06_02)
    -   [lardata v04\_07\_00](#lardata-v04_07_00)
    -   [larcore v04\_07\_01](#larcore-v04_07_01)
    -   [larbatch v01\_07\_00](#larbatch-v01_07_00)
    -   [larutils v1\_00\_10](#larutils-v1_00_10)

[list of LArSoft releases](LArSoft_release_list)\
[Download instructions](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v04_08_01/larsoft-v04_08_01.html)

Purpose(#Purpose)
--------------------

Changes in development since v04\_08\_00

New features(#New-features)
------------------------------

-   Blurred Clustering option added to larreco

Bug fixes(#Bug-fixes)
------------------------

-   [\#8873](/redmine/issues/8873 "Bug: ChannelMapAlg::NSensitiveAuxDet() has no implementation (Closed)") resolved

Updated dependencies(#Updated-dependencies)
----------------------------------------------

Change List(#Change-List)
============================

larsoft v04\_08\_01(#larsoft-v04_08_01)
------------------------------------------

-   2015-05-20 Lynn Garren : larsoft v04\_08\_01 for larsoft v04\_08\_01
-   2015-05-20 Lynn Garren : update product versions
-   2015-05-20 Lynn Garren : update dependency database

lareventdisplay v04\_04\_05(#lareventdisplay-v04_04_05)
----------------------------------------------------------

-   2015-05-20 Lynn Garren : lareventdisplay v04\_04\_05 for larsoft v04\_08\_01

larexamples v04\_04\_05(#larexamples-v04_04_05)
--------------------------------------------------

-   2015-05-20 Lynn Garren : larexamples v04\_04\_05 for larsoft v04\_08\_01

larpandora v04\_04\_05(#larpandora-v04_04_05)
------------------------------------------------

-   2015-05-20 Lynn Garren : larpandora v04\_04\_05 for larsoft v04\_08\_01

larana v04\_06\_03(#larana-v04_06_03)
----------------------------------------

-   2015-05-20 Lynn Garren : larana v04\_06\_03 for larsoft v04\_08\_01

larreco v04\_06\_00(#larreco-v04_06_00)
------------------------------------------

-   2015-05-20 Lynn Garren : larreco v04\_06\_00 for larsoft v04\_08\_01
-   2015-05-19 Mike Wallbank : Added new clustering technique: Blurred Clustering
-   2015-05-15 Mike Wallbank : Added new reconstruction technique: Blurred Clustering
-   2015-05-15 Tingjun Yang : Merge branch ‘develop’ of ssh://cdcvs.fnal.gov/cvs/projects/larreco into develop
-   2015-05-15 Tingjun Yang : Merge branch ‘feature/tjyang\_clustermatching’ into develop
-   2015-05-14 Tingjun Yang : Move cluster matching to an algorithm.
-   2015-05-14 Tingjun Yang : Change length to be float.
-   2015-05-13 Tingjun Yang : Add ClusterMatchTQ to do matching based on time and charge. This is taken from CosmicTracker.
-   2015-05-13 Kalousis Leonidas : Fix seg. fault bug

larsim v04\_07\_01(#larsim-v04_07_01)
----------------------------------------

-   2015-05-20 Lynn Garren : larsim v04\_07\_01 for larsoft v04\_08\_01
-   2015-05-12 Alex Himmel : Add option to Library Analyzer module to make plots for a single optical detector.

larevt v04\_06\_02(#larevt-v04_06_02)
----------------------------------------

-   2015-05-20 Lynn Garren : larevt v04\_06\_02 for larsoft v04\_08\_01

lardata v04\_07\_00(#lardata-v04_07_00)
------------------------------------------

-   2015-05-20 Lynn Garren : lardata v04\_07\_00 for larsoft v04\_08\_01
-   2015-05-19 Jonathan Insler : Added new zero suppression method that looks at nearest neighboring wires
-   2015-05-14 Tingjun Yang : Convert ticks to us if the fTriggerOffsetTPC is obtained from database.

larcore v04\_07\_01(#larcore-v04_07_01)
------------------------------------------

-   2015-05-20 Lynn Garren : larcore v04\_07\_01 for larsoft v04\_08\_01
-   2015-05-19 Brian\_Rebel : move NAuxDetSensitive from ChannelMapAlg to Geometry and implement it.

larbatch v01\_07\_00(#larbatch-v01_07_00)
--------------------------------------------

-   2015-05-20 Lynn Garren : larbatch v01\_07\_00 for larsoft v04\_08\_01
-   2015-05-15 Herbert Greenlee : Move next and previous stage functions out of projectapp.py into project.py.
-   2015-05-15 Herbert Greenlee : Modify batch script to make sure destination directory is empty before copying results there.
-   2015-05-13 Herbert Greenlee : Add ability to daisy chain stages accros projects without specifying input list explicitly.
-   2015-05-12 Herbert Greenlee : Remove unused option –sam\_url.
-   2015-05-13 Lynn Garren : larsoft v04\_08\_00
-   2015-05-12 Herbert Greenlee : Remove unused function check\_root\_json. Remove ability to regenerate json art metadata on the fly, rather, rely exclusively on art metadata generated on the batch worker.
-   2015-05-12 Herbert Greenlee : Get rid of unused method parsedir.

larutils v1\_00\_10(#larutils-v1_00_10)
------------------------------------------
