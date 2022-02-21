LArSoft v06_34_01 Release Notes
======================================================================

[list of LArSoft releases](LArSoft_release_list)
Download instructions for [larsoft v06_34_01](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v06_34_01/larsoft-v06_34_01.html)
Download instructions for [just larsoftobj v1_19_01](http://scisoft.fnal.gov/scisoft/bundles/larsoftobj/v1_19_01/larsoftobj-v1_19_01.html)

Purpose
--------------------

-   bug fix release

New features
------------------------------

Bug fixes
------------------------

-   larcore geometry problem [redmine issue 16382](https://cdcvs.fnal.gov/redmine/issues/16382)
-   larsim Forgotten fix! integer effect was still there. this really fixes it.
-   larsim Fixed timing bias due to correlations between spatial and time coordinates by adding independent randomness in the spatial coordinates.

Updated dependencies
----------------------------------------------

Change List
============================

larsoft v06_34_01
------------------------------------------

-   2017-05-02 Lynn Garren : fix lardata version
-   2017-05-02 Lynn Garren : larsoft v06_34_01 for larsoft v06_34_01
-   2017-05-02 Lynn Garren : update product versions

lareventdisplay v06_05_03
----------------------------------------------------------

-   2017-05-02 Lynn Garren : lareventdisplay v06_05_03 for larsoft v06_34_01

larexamples v06_03_03
--------------------------------------------------

-   2017-05-02 Lynn Garren : larexamples v06_03_03 for larsoft v06_34_01

larpandora v06_10_03
------------------------------------------------

-   2017-05-02 Lynn Garren : larpandora v06_10_03 for larsoft v06_34_01

larwirecell v06_04_03
--------------------------------------------------

-   2017-05-02 Lynn Garren : larwirecell v06_04_03 for larsoft v06_34_01

larana v06_05_03
----------------------------------------

-   2017-05-02 Lynn Garren : larana v06_05_03 for larsoft v06_34_01

larreco v06_26_01
------------------------------------------

-   2017-05-02 Lynn Garren : larreco v06_26_01 for larsoft v06_34_01
-   2017-05-02 Gianluca Petrillo : Fixed some more Doxygen warnings.
-   2017-05-02 Robert Sulej : Merge branch ‘develop’ of ssh://cdcvs.fnal.gov/cvs/projects/larreco into develop
-   2017-05-02 Robert Sulej : prepare code for different gain in mc and data (not yet applied)
-   2017-05-02 Robert Sulej : add cluster-level pid value to hits tree
-   2017-05-02 Robert Sulej : typo
-   2017-05-02 Robert Sulej : fix in clean track patch selection
-   2017-05-01 Tingjun Yang : Gives error if no shower record was found.
-   2017-04-27 Lynn Garren : larsoft v06_34_00
-   2017-04-27 Thomas Junk : change auto_ptr to unique_ptr

larsim v06_20_01
----------------------------------------

-   2017-05-02 Lynn Garren : larsim v06_20_01 for larsoft v06_34_01
-   2017-05-02 Lynn Garren : Merge branch ‘feature/mibass_CorsikaGenTimingFix’ into release/v06_34_01
-   2017-05-02 drinkingkazu : Forgotten fix! integer effect was still there. this really fixes it, and I left commented-out lines for me to run analysis using csv file.
-   2017-05-02 Gianluca Petrillo : Remove duplicate plugin (now in nutools)
-   2017-05-02 Gianluca Petrillo : Fixed some more Doxygen warnings.
-   2017-05-01 Lynn Garren : Revert “modify to make it work with geant 10.3.p01”
-   2017-05-01 Lynn Garren : Revert “modify to make it work with geant 10.3.p01”
-   2017-05-01 Lynn Garren : Revert “modify to make it work with geant 10.3.p01”
-   2017-05-01 Lynn Garren : Revert “modify to make it work with geant 10.3.p01”
-   2017-05-01 Hans Wenzel : modify to make it work with geant 10.3.p01
-   2017-05-01 Hans Wenzel : modify to make it work with geant 10.3.p01
-   2017-05-01 Hans Wenzel : modify to make it work with geant 10.3.p01
-   2017-05-01 Hans Wenzel : modify to make it work with geant 10.3.p01
-   2017-04-26 Matthew Bass : Fixed timing bias due to correlations between spatial and time coordinates by adding independent randomness in the spatial coordinates.

larevt v06_13_01
----------------------------------------

-   2017-05-02 Lynn Garren : fix lardata version
-   2017-05-02 Lynn Garren : larevt v06_13_01 for larsoft v06_34_01
-   2017-05-02 Gianluca Petrillo : Removed dumper that popped back after having moved to lardata.

lardata v06_20_02
------------------------------------------

-   2017-05-02 Lynn Garren : lardata v06_20_02
-   2017-05-02 Lynn Garren : lardata v06_34_01 for larsoft v06_34_01

larcore v06_09_02
------------------------------------------

-   2017-05-02 Lynn Garren : larcore v06_09_02 for larsoft v06_34_01
-   2017-05-02 Gianluca Petrillo : Moved geo::PlaneDecomposer\<\>::AffinePlaneBase_t to public access.

larpandoracontent v03_04_00
--------------------------------------------------------------

larsoftobj v1_19_01
----------------------------------------------

lardataobj v1_15_02
----------------------------------------------

larcoreobj v1_13_01
----------------------------------------------

larbatch v01_32_00
--------------------------------------------

-   2017-05-02 Lynn Garren : larbatch v01_32_00 for larsoft v06_34_01
-   2017-04-28 Herbert Greenlee : Explicitly convert all string xml data to python type str (prevent unicode data).

larutils v1_12_04
------------------------------------------
