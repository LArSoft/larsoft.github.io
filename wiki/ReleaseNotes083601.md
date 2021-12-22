LArSoft v08\_36\_01 Release Notes(#LArSoft-v08_36_01-Release-Notes)
======================================================================

-   **Table of contents**
-   [LArSoft v08\_36\_01 Release Notes](#LArSoft-v08_36_01-Release-Notes)
    -   [Purpose](#Purpose)
    -   [New features](#New-features)
    -   [Bug fixes](#Bug-fixes)
    -   [Updated dependencies](#Updated-dependencies)
-   [Change List](#Change-List)
    -   [larsoft v08\_36\_01](#larsoft-v08_36_01)
    -   [lareventdisplay v08\_09\_01](#lareventdisplay-v08_09_01)
    -   [larexamples v08\_03\_01](#larexamples-v08_03_01)
    -   [larg4 v08\_06\_01](#larg4-v08_06_01)
    -   [larpandora v08\_08\_01](#larpandora-v08_08_01)
    -   [larwirecell v08\_09\_01](#larwirecell-v08_09_01)
    -   [larana v08\_13\_01](#larana-v08_13_01)
    -   [larreco v08\_23\_01](#larreco-v08_23_01)
    -   [larsim v08\_16\_01](#larsim-v08_16_01)
    -   [larevt v08\_07\_01](#larevt-v08_07_01)
    -   [lardata v08\_10\_01](#lardata-v08_10_01)
    -   [larcore v08\_07\_01](#larcore-v08_07_01)
    -   [larpandoracontent v03\_15\_08](#larpandoracontent-v03_15_08)
    -   [larsoftobj v08\_22\_01](#larsoftobj-v08_22_01)
    -   [lardataobj v08\_07\_01](#lardataobj-v08_07_01)
    -   [lardataalg v08\_09\_01](#lardataalg-v08_09_01)
    -   [larcorealg v08\_17\_01](#larcorealg-v08_17_01)
    -   [larcoreobj v08\_07\_00](#larcoreobj-v08_07_00)
    -   [larbatch v01\_51\_11](#larbatch-v01_51_11)
    -   [larutils v1\_25\_02](#larutils-v1_25_02)

[list of LArSoft releases](LArSoft_release_list)\
Download instructions for [larsoft v08\_36\_01](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v08_36_01/larsoft-v08_36_01.html)\
Download instructions for [just larsoftobj v08\_22\_01](http://scisoft.fnal.gov/scisoft/bundles/larsoftobj/v08_22_01/larsoftobj-v08_22_01.html)

Purpose(#Purpose)
--------------------

-   changes in develop
-   approved feature branch
-   fixes for Ubuntu LTS 18

New features(#New-features)
------------------------------

-   Ubuntu LTS 18 best effort support
-   drop High Sierra build

Bug fixes(#Bug-fixes)
------------------------

-   lardata bugfix for Ubuntu LTS 18
-   larreco bug fix for [\#23605](/redmine/issues/23605 "Bug: Potential infinite loop in PFPUtils.cxx (Closed)")
    -   feature/vpec\_pfputils\_types\_fix

Updated dependencies(#Updated-dependencies)
----------------------------------------------

-   artdaq\_core v3\_05\_08a with TRACE v3\_15\_05
    -   bugfix to TRACE for Ubuntu LTS 18
-   nurandom v1\_03\_00
    -   feature/gp\_ValidationForEngineSeeds
    -   allows users to use validated FHiCL parameters (more precisely, fhicl::OptionalAtom) to specify the seed of their random engines to \`rndm::NuRandomService\`
-   nuevdb v1\_01\_01 with bugfix for [\#23575](/redmine/issues/23575 "Bug: Instance name in services.RecoDrawingOptions.WireModuleLabels (Closed)")

Change List(#Change-List)
============================

larsoft v08\_36\_01(#larsoft-v08_36_01)
------------------------------------------

-   2019-11-19 Lynn Garren : larsoft v08\_36\_01 for larsoft v08\_36\_01
-   2019-11-19 Lynn Garren : product versions
-   2019-11-19 Lynn Garren : using nudist v3\_05\_00a
-   2019-11-14 Lynn Garren : remove unnecessary comment

lareventdisplay v08\_09\_01(#lareventdisplay-v08_09_01)
----------------------------------------------------------

-   2019-11-19 Lynn Garren : lareventdisplay v08\_09\_01 for larsoft v08\_36\_01
-   2019-11-14 Lynn Garren : event display base now in nuevdb

larexamples v08\_03\_01(#larexamples-v08_03_01)
--------------------------------------------------

-   2019-11-19 Lynn Garren : larexamples v08\_03\_01 for larsoft v08\_36\_01
-   2019-11-14 Lynn Garren : fix old comments

larg4 v08\_06\_01(#larg4-v08_06_01)
--------------------------------------

-   2019-11-19 Lynn Garren : larg4 v08\_06\_01 for larsoft v08\_36\_01

larpandora v08\_08\_01(#larpandora-v08_08_01)
------------------------------------------------

-   2019-11-19 Lynn Garren : larpandora v08\_08\_01 for larsoft v08\_36\_01

larwirecell v08\_09\_01(#larwirecell-v08_09_01)
--------------------------------------------------

-   2019-11-19 Lynn Garren : larwirecell v08\_09\_01 for larsoft v08\_36\_01

larana v08\_13\_01(#larana-v08_13_01)
----------------------------------------

-   2019-11-19 Lynn Garren : larana v08\_13\_01 for larsoft v08\_36\_01
-   2019-11-14 Lynn Garren : fix old comments

larreco v08\_23\_01(#larreco-v08_23_01)
------------------------------------------

-   2019-11-19 Lynn Garren : larreco v08\_23\_01 for larsoft v08\_36\_01
-   2019-11-19 Lynn Garren : remove trailing whitespace
-   2019-11-19 Viktor Pec : Fourth iteration of fixing iterator types. Additional replacement of `unsigned int` and `short` defs for variables used as iterators, wherever they were compared to the output of a `size()`.
-   2019-11-19 Viktor Pec : Third iteration of fixing iterator types. Replaced `unsigned int` and `short` definition of loop iterators wherever they were compared to the output of a `size() - 1`.
-   2019-11-19 Viktor Pec : Second iteration of fixing iterator types. Replaced `unsigned int` definition of loop iterators wherever they were compared to the output of a `size()` method.
-   2019-11-19 Viktor Pec : First iteration of fixin iterator types. Replaced `unsigned short` definition of loop iterators wherever they were compared to the output of a `size()` method.
-   2019-11-19 Viktor Pec : Fix related to Bug [\#23605](/redmine/issues/23605 "Bug: Potential infinite loop in PFPUtils.cxx (Closed)")

larsim v08\_16\_01(#larsim-v08_16_01)
----------------------------------------

-   2019-11-19 Lynn Garren : larsim v08\_16\_01 for larsoft v08\_36\_01
-   2019-11-19 Lynn Garren : nurandom v1\_03\_00
-   2019-11-14 Lynn Garren : cleanup obsolete references to nutools in various comments

larevt v08\_07\_01(#larevt-v08_07_01)
----------------------------------------

-   2019-11-19 Lynn Garren : larevt v08\_07\_01 for larsoft v08\_36\_01

lardata v08\_10\_01(#lardata-v08_10_01)
------------------------------------------

-   2019-11-19 Lynn Garren : lardata v08\_10\_01 for larsoft v08\_36\_01
-   2019-11-18 Lynn Garren : rename to minorTensor per request
-   2019-11-18 Lynn Garren : rename minor to avoid conflict with system types
-   2019-11-13 Kyle Knoepfel : undef ‘minor’ macro which can be introduced by the compiler.

larcore v08\_07\_01(#larcore-v08_07_01)
------------------------------------------

-   2019-11-19 Lynn Garren : larcore v08\_07\_01 for larsoft v08\_36\_01

larpandoracontent v03\_15\_08(#larpandoracontent-v03_15_08)
--------------------------------------------------------------

larsoftobj v08\_22\_01(#larsoftobj-v08_22_01)
------------------------------------------------

-   2019-11-19 Lynn Garren : larsoftobj v08\_22\_01 for larsoft v08\_36\_01
-   2019-11-19 Lynn Garren : product versions
-   2019-11-14 Lynn Garren : remove unnecessary comment

lardataobj v08\_07\_01(#lardataobj-v08_07_01)
------------------------------------------------

-   2019-11-19 Lynn Garren : lardataobj v08\_07\_01 for larsoft v08\_36\_01
-   2019-11-14 Lynn Garren : fix old comments

lardataalg v08\_09\_01(#lardataalg-v08_09_01)
------------------------------------------------

-   2019-11-19 Lynn Garren : lardataalg v08\_09\_01 for larsoft v08\_36\_01
-   2019-11-14 Lynn Garren : fix old comments

larcorealg v08\_17\_01(#larcorealg-v08_17_01)
------------------------------------------------

-   2019-11-19 Lynn Garren : larcorealg v08\_17\_01 for larsoft v08\_36\_01
-   2019-11-19 Gianluca Petrillo : Changed wire orientation query for wires parallel to z axis.
-   2019-11-13 Gianluca Petrillo : Replacing a deprecated function in the geometry test.

larcoreobj v08\_07\_00(#larcoreobj-v08_07_00)
------------------------------------------------

larbatch v01\_51\_11(#larbatch-v01_51_11)
--------------------------------------------

-   2019-11-19 Lynn Garren : larbatch v01\_51\_11 for larsoft v08\_36\_01
-   2019-11-18 Herbert Greenlee : Get rid of first event logic for generator jobs.

larutils v1\_25\_02(#larutils-v1_25_02)
------------------------------------------

-   2019-11-19 Lynn Garren : larutils v1\_25\_02 for larsoft v08\_36\_01
-   2019-11-13 Herbert Greenlee : Save wcp tarball.
