LArSoft v04\_15\_00 Release Notes(#LArSoft-v04_15_00-Release-Notes)
======================================================================

-   **Table of contents**
-   [LArSoft v04\_15\_00 Release Notes](#LArSoft-v04_15_00-Release-Notes)
    -   [Purpose](#Purpose)
    -   [New features](#New-features)
    -   [Bug fixes](#Bug-fixes)
    -   [Updated dependencies](#Updated-dependencies)
-   [Change List](#Change-List)
    -   [larsoft v04\_15\_00](#larsoft-v04_15_00)
    -   [lareventdisplay v04\_05\_05](#lareventdisplay-v04_05_05)
    -   [larexamples v04\_04\_15](#larexamples-v04_04_15)
    -   [larpandora v04\_04\_15](#larpandora-v04_04_15)
    -   [larana v04\_07\_07](#larana-v04_07_07)
    -   [larreco v04\_11\_00](#larreco-v04_11_00)
    -   [larsim v04\_08\_02](#larsim-v04_08_02)
    -   [larevt v04\_08\_05](#larevt-v04_08_05)
    -   [lardata v04\_10\_02](#lardata-v04_10_02)
    -   [larcore v04\_12\_01](#larcore-v04_12_01)
    -   [larbatch v01\_12\_00](#larbatch-v01_12_00)
    -   [larutils v1\_02\_00](#larutils-v1_02_00)

[list of LArSoft releases](LArSoft_release_list)\
[Download instructions](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v04_15_00/larsoft-v04_15_00.html)

Purpose(#Purpose)
--------------------

New features(#New-features)
------------------------------

-   improvement in larreco/RecoAlg/PMAlg

Bug fixes(#Bug-fixes)
------------------------

-   larcore feature/gp\_FixBoostGeometryTest
    -   fix the Geometry test’s use of Boost
    -   uboonecode will also need feature/gp\_FixBoostGeometryTest

Updated dependencies(#Updated-dependencies)
----------------------------------------------

Change List(#Change-List)
============================

larsoft v04\_15\_00(#larsoft-v04_15_00)
------------------------------------------

-   2015-07-07 Lynn Garren : larsoft v04\_15\_00 for larsoft v04\_15\_00
-   2015-07-07 Lynn Garren : update product versions

lareventdisplay v04\_05\_05(#lareventdisplay-v04_05_05)
----------------------------------------------------------

-   2015-07-07 Lynn Garren : lareventdisplay v04\_05\_05 for larsoft v04\_15\_00

larexamples v04\_04\_15(#larexamples-v04_04_15)
--------------------------------------------------

-   2015-07-07 Lynn Garren : larexamples v04\_04\_15 for larsoft v04\_15\_00

larpandora v04\_04\_15(#larpandora-v04_04_15)
------------------------------------------------

-   2015-07-07 Lynn Garren : larpandora v04\_04\_15 for larsoft v04\_15\_00

larana v04\_07\_07(#larana-v04_07_07)
----------------------------------------

-   2015-07-07 Lynn Garren : larana v04\_07\_07 for larsoft v04\_15\_00

larreco v04\_11\_00(#larreco-v04_11_00)
------------------------------------------

-   2015-07-07 Lynn Garren : larreco v04\_11\_00 for larsoft v04\_15\_00
-   2015-07-07 Tingjun Yang : Change code to Gianluca’s suggestion.
-   2015-07-07 Gianluca Petrillo : Fixed “maybe-uninitialized” variables warning
-   2015-07-07 Tingjun Yang : Put back the old algorithm.
-   2015-07-04 Tingjun Yang : add pmalgtrackmaker
-   2015-07-02 Robert Sulej : Merge branch ‘develop’ of ssh://cdcvs.fnal.gov/cvs/projects/larreco into develop
-   2015-07-02 Robert Sulej : added one more measure of track correctness native to PMA to improve cluster selection in busy events; added dQdx for shower initial part calculated from any plane; track stitching still disabled and under development
-   2015-07-02 Herbert Greenlee : Remove wrongly added noifdh qualifiers.
-   2015-07-02 Bruce Baller : Merge branch ‘develop’ of ssh://cdcvs.fnal.gov/cvs/projects/larreco into develop
-   2015-07-02 Bruce Baller : Renamed trackfindermodules\_argoneut.fcl.example
-   2015-06-22 Bruce Baller : Merge branch ‘develop’ of ssh://cdcvs.fnal.gov/cvs/projects/larreco into develop
-   2015-06-22 Bruce Baller : Merge branch ‘develop’ of ssh://cdcvs.fnal.gov/cvs/projects/larreco into develop
-   2015-05-30 Bruce Baller : temp mod to get this to work with noifdh

larsim v04\_08\_02(#larsim-v04_08_02)
----------------------------------------

-   2015-07-07 Lynn Garren : larsim v04\_08\_02 for larsoft v04\_15\_00

larevt v04\_08\_05(#larevt-v04_08_05)
----------------------------------------

-   2015-07-07 Lynn Garren : larevt v04\_08\_05 for larsoft v04\_15\_00

lardata v04\_10\_02(#lardata-v04_10_02)
------------------------------------------

-   2015-07-07 Lynn Garren : lardata v04\_10\_02 for larsoft v04\_15\_00

larcore v04\_12\_01(#larcore-v04_12_01)
------------------------------------------

-   2015-07-07 Lynn Garren : larcore v04\_12\_01 for larsoft v04\_15\_00
-   2015-07-07 Lynn Garren : Merge branch ‘feature/gp\_FixBoostGeometryTest’ into release/v04\_15\_00
-   2015-06-17 Gianluca Petrillo : Fix to the Boost unit test framework initialization in geometry iterator test.

larbatch v01\_12\_00(#larbatch-v01_12_00)
--------------------------------------------

larutils v1\_02\_00(#larutils-v1_02_00)
------------------------------------------

-   2015-07-08 Lynn Garren : using nu-v1\_13\_01
-   2015-07-07 Lynn Garren : larutils v1\_02\_00 for larsoft v04\_15\_00
-   2015-07-03 Herbert Greenlee : Use uboone.opensciencegrid.org instead of oasis.opensciencegrid.org.
