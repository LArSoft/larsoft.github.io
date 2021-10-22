LArSoft v06\_34\_01 Release Notes[¶](#LArSoft-v06_34_01-Release-Notes)
======================================================================

-   **Table of contents**
-   [LArSoft v06\_34\_01 Release Notes](#LArSoft-v06_34_01-Release-Notes)
    -   [Purpose](#Purpose)
    -   [New features](#New-features)
    -   [Bug fixes](#Bug-fixes)
    -   [Updated dependencies](#Updated-dependencies)
-   [Change List](#Change-List)
    -   [larsoft v06\_34\_01](#larsoft-v06_34_01)
    -   [lareventdisplay v06\_05\_03](#lareventdisplay-v06_05_03)
    -   [larexamples v06\_03\_03](#larexamples-v06_03_03)
    -   [larpandora v06\_10\_03](#larpandora-v06_10_03)
    -   [larwirecell v06\_04\_03](#larwirecell-v06_04_03)
    -   [larana v06\_05\_03](#larana-v06_05_03)
    -   [larreco v06\_26\_01](#larreco-v06_26_01)
    -   [larsim v06\_20\_01](#larsim-v06_20_01)
    -   [larevt v06\_13\_01](#larevt-v06_13_01)
    -   [lardata v06\_20\_02](#lardata-v06_20_02)
    -   [larcore v06\_09\_02](#larcore-v06_09_02)
    -   [larpandoracontent v03\_04\_00](#larpandoracontent-v03_04_00)
    -   [larsoftobj v1\_19\_01](#larsoftobj-v1_19_01)
    -   [lardataobj v1\_15\_02](#lardataobj-v1_15_02)
    -   [larcoreobj v1\_13\_01](#larcoreobj-v1_13_01)
    -   [larbatch v01\_32\_00](#larbatch-v01_32_00)
    -   [larutils v1\_12\_04](#larutils-v1_12_04)

[list of LArSoft releases](LArSoft_release_list)\
Download instructions for [larsoft v06\_34\_01](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v06_34_01/larsoft-v06_34_01.html)\
Download instructions for [just larsoftobj v1\_19\_01](http://scisoft.fnal.gov/scisoft/bundles/larsoftobj/v1_19_01/larsoftobj-v1_19_01.html)


Purpose[¶](#Purpose)
--------------------

-   bug fix release


New features[¶](#New-features)
------------------------------


Bug fixes[¶](#Bug-fixes)
------------------------

-   larcore geometry problem [\#16382](/redmine/issues/16382 "Bug: Larsoft geometry does not compile in Root (Closed)")
-   larsim Forgotten fix! integer effect was still there. this really fixes it.
-   larsim Fixed timing bias due to correlations between spatial and time coordinates by adding independent randomness in the spatial coordinates.


Updated dependencies[¶](#Updated-dependencies)
----------------------------------------------


Change List[¶](#Change-List)
============================


larsoft v06\_34\_01[¶](#larsoft-v06_34_01)
------------------------------------------

-   2017-05-02 Lynn Garren : fix lardata version
-   2017-05-02 Lynn Garren : larsoft v06\_34\_01 for larsoft v06\_34\_01
-   2017-05-02 Lynn Garren : update product versions


lareventdisplay v06\_05\_03[¶](#lareventdisplay-v06_05_03)
----------------------------------------------------------

-   2017-05-02 Lynn Garren : lareventdisplay v06\_05\_03 for larsoft v06\_34\_01


larexamples v06\_03\_03[¶](#larexamples-v06_03_03)
--------------------------------------------------

-   2017-05-02 Lynn Garren : larexamples v06\_03\_03 for larsoft v06\_34\_01


larpandora v06\_10\_03[¶](#larpandora-v06_10_03)
------------------------------------------------

-   2017-05-02 Lynn Garren : larpandora v06\_10\_03 for larsoft v06\_34\_01


larwirecell v06\_04\_03[¶](#larwirecell-v06_04_03)
--------------------------------------------------

-   2017-05-02 Lynn Garren : larwirecell v06\_04\_03 for larsoft v06\_34\_01


larana v06\_05\_03[¶](#larana-v06_05_03)
----------------------------------------

-   2017-05-02 Lynn Garren : larana v06\_05\_03 for larsoft v06\_34\_01


larreco v06\_26\_01[¶](#larreco-v06_26_01)
------------------------------------------

-   2017-05-02 Lynn Garren : larreco v06\_26\_01 for larsoft v06\_34\_01
-   2017-05-02 Gianluca Petrillo : Fixed some more Doxygen warnings.
-   2017-05-02 Robert Sulej : Merge branch ‘develop’ of ssh://cdcvs.fnal.gov/cvs/projects/larreco into develop
-   2017-05-02 Robert Sulej : prepare code for different gain in mc and data (not yet applied)
-   2017-05-02 Robert Sulej : add cluster-level pid value to hits tree
-   2017-05-02 Robert Sulej : typo
-   2017-05-02 Robert Sulej : fix in clean track patch selection
-   2017-05-01 Tingjun Yang : Gives error if no shower record was found.
-   2017-04-27 Lynn Garren : larsoft v06\_34\_00
-   2017-04-27 Thomas Junk : change auto\_ptr to unique\_ptr


larsim v06\_20\_01[¶](#larsim-v06_20_01)
----------------------------------------

-   2017-05-02 Lynn Garren : larsim v06\_20\_01 for larsoft v06\_34\_01
-   2017-05-02 Lynn Garren : Merge branch ‘feature/mibass\_CorsikaGenTimingFix’ into release/v06\_34\_01
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


larevt v06\_13\_01[¶](#larevt-v06_13_01)
----------------------------------------

-   2017-05-02 Lynn Garren : fix lardata version
-   2017-05-02 Lynn Garren : larevt v06\_13\_01 for larsoft v06\_34\_01
-   2017-05-02 Gianluca Petrillo : Removed dumper that popped back after having moved to lardata.


lardata v06\_20\_02[¶](#lardata-v06_20_02)
------------------------------------------

-   2017-05-02 Lynn Garren : lardata v06\_20\_02
-   2017-05-02 Lynn Garren : lardata v06\_34\_01 for larsoft v06\_34\_01


larcore v06\_09\_02[¶](#larcore-v06_09_02)
------------------------------------------

-   2017-05-02 Lynn Garren : larcore v06\_09\_02 for larsoft v06\_34\_01
-   2017-05-02 Gianluca Petrillo : Moved geo::PlaneDecomposer\<\>::AffinePlaneBase\_t to public access.


larpandoracontent v03\_04\_00[¶](#larpandoracontent-v03_04_00)
--------------------------------------------------------------


larsoftobj v1\_19\_01[¶](#larsoftobj-v1_19_01)
----------------------------------------------


lardataobj v1\_15\_02[¶](#lardataobj-v1_15_02)
----------------------------------------------


larcoreobj v1\_13\_01[¶](#larcoreobj-v1_13_01)
----------------------------------------------


larbatch v01\_32\_00[¶](#larbatch-v01_32_00)
--------------------------------------------

-   2017-05-02 Lynn Garren : larbatch v01\_32\_00 for larsoft v06\_34\_01
-   2017-04-28 Herbert Greenlee : Explicitly convert all string xml data to python type str (prevent unicode data).


larutils v1\_12\_04[¶](#larutils-v1_12_04)
------------------------------------------
