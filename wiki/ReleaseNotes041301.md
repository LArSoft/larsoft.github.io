LArSoft v04\_13\_01 Release Notes(#LArSoft-v04_13_01-Release-Notes)
======================================================================

-   **Table of contents**
-   [LArSoft v04\_13\_01 Release Notes](#LArSoft-v04_13_01-Release-Notes)
    -   [Purpose](#Purpose)
    -   [New features](#New-features)
    -   [Bug fixes](#Bug-fixes)
    -   [Updated dependencies](#Updated-dependencies)
-   [Change List](#Change-List)
    -   [larsoft v04\_13\_01](#larsoft-v04_13_01)
    -   [lareventdisplay v04\_05\_02](#lareventdisplay-v04_05_02)
    -   [larexamples v04\_04\_12](#larexamples-v04_04_12)
    -   [larpandora v04\_04\_12](#larpandora-v04_04_12)
    -   [larana v04\_07\_04](#larana-v04_07_04)
    -   [larreco v04\_09\_01](#larreco-v04_09_01)
    -   [larsim v04\_07\_08](#larsim-v04_07_08)
    -   [larevt v04\_08\_02](#larevt-v04_08_02)
    -   [lardata v04\_09\_01](#lardata-v04_09_01)
    -   [larcore v04\_11\_00](#larcore-v04_11_00)
    -   [larbatch v01\_11\_01](#larbatch-v01_11_01)
    -   [larutils v1\_00\_12](#larutils-v1_00_12)

[list of LArSoft releases](LArSoft_release_list)\
[Download instructions](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v04_13_01/larsoft-v04_13_01.html)

Purpose(#Purpose)
--------------------

-   changes to development since v04\_13\_00
-   final release with art v1\_14\_02

New features(#New-features)
------------------------------

Bug fixes(#Bug-fixes)
------------------------

Updated dependencies(#Updated-dependencies)
----------------------------------------------

Change List(#Change-List)
============================

larsoft v04\_13\_01(#larsoft-v04_13_01)
------------------------------------------

-   2015-06-24 Lynn Garren : larsoft v04\_13\_01 for larsoft v04\_13\_01
-   2015-06-23 Lynn Garren : need genie\_xsec v2\_8\_6a
-   2015-06-19 Lynn Garren : need find\_ups\_product calls for the dependencies

lareventdisplay v04\_05\_02(#lareventdisplay-v04_05_02)
----------------------------------------------------------

-   2015-06-24 Lynn Garren : lareventdisplay v04\_05\_02 for larsoft v04\_13\_01

larexamples v04\_04\_12(#larexamples-v04_04_12)
--------------------------------------------------

-   2015-06-24 Lynn Garren : larexamples v04\_04\_12 for larsoft v04\_13\_01

larpandora v04\_04\_12(#larpandora-v04_04_12)
------------------------------------------------

-   2015-06-24 Lynn Garren : larpandora v04\_04\_12 for larsoft v04\_13\_01

larana v04\_07\_04(#larana-v04_07_04)
----------------------------------------

-   2015-06-24 Lynn Garren : larana v04\_07\_04 for larsoft v04\_13\_01

larreco v04\_09\_01(#larreco-v04_09_01)
------------------------------------------

-   2015-06-24 Lynn Garren : larreco v04\_09\_01 for larsoft v04\_13\_01
-   2015-06-23 Robert Sulej : add function for dQdx in EM shower start
-   2015-06-23 Robert Sulej : correct missing id of created tracks
-   2015-06-22 Tracy Usher : Merge branch ‘develop’ of ssh://cdcvs.fnal.gov/cvs/projects/larreco into develop
-   2015-06-22 Tracy Usher : Fix bug where special case of cross axes detected (small fraction of events) did not return a new second cluster
-   2015-06-19 Mike Wallbank : Changes to BlurredClustering: changed the blurring process so it extends differently in each direction (makes much more sense); made the clustering radii parameters and increased them for better clustering
-   2015-06-19 Robert Sulej : functions for shower initial segment recontruction
-   2015-06-19 Robert Sulej : Merge branch ‘develop’ of ssh://cdcvs.fnal.gov/cvs/projects/larreco into develop
-   2015-06-19 Robert Sulej : more efficient use of clusters
-   2015-06-19 Robert Sulej : added fcl params for 2D validation distances and weighting data from different planes
-   2015-06-19 Robert Sulej : fix in the gradient formula
-   2015-06-19 Tingjun Yang : Merge branch ‘develop’ of ssh://cdcvs.fnal.gov/cvs/projects/larreco into develop
-   2015-06-19 Tingjun Yang : Change HitErrFac from 0.6 to 2.0.
-   2015-06-18 Robert Sulej : Merge branch ‘develop’ into feature/rsulej\_PmaTrack3D
-   2015-06-18 Robert Sulej : add function to check cluster usage (for devel. purposes mainly)
-   2015-06-18 Robert Sulej : use ind planes and fix track flipping by dQdx

larsim v04\_07\_08(#larsim-v04_07_08)
----------------------------------------

-   2015-06-24 Lynn Garren : larsim v04\_07\_08 for larsoft v04\_13\_01

larevt v04\_08\_02(#larevt-v04_08_02)
----------------------------------------

-   2015-06-24 Lynn Garren : larevt v04\_08\_02 for larsoft v04\_13\_01

lardata v04\_09\_01(#lardata-v04_09_01)
------------------------------------------

-   2015-06-24 Lynn Garren : lardata v04\_09\_01 for larsoft v04\_13\_01
-   2015-06-23 Taritree Wonjigrad : removed used of boost bimap by uboone connection database service. keeping copy in order to prevent repeated queries to database. instead access to const& provided. also provide reverse channel map as well.
-   2015-06-22 Taritree Wonjigrad : added bimap for uboone channel map database

larcore v04\_11\_00(#larcore-v04_11_00)
------------------------------------------

larbatch v01\_11\_01(#larbatch-v01_11_01)
--------------------------------------------

-   2015-06-24 Lynn Garren : larbatch v01\_11\_01 for larsoft v04\_13\_01
-   2015-06-20 Herbert Greenlee : Copy output files using “ifdh cp -D” instead of “ifch cp -r”.
-   2015-06-17 Lynn Garren : larsoft v04\_13\_00
-   2015-06-16 Tingjun Yang : Return production user name if the role is Production.

larutils v1\_00\_12(#larutils-v1_00_12)
------------------------------------------
