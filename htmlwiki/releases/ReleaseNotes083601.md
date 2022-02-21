LArSoft v08_36_01 Release Notes
======================================================================

[list of LArSoft releases](LArSoft_release_list)
Download instructions for [larsoft v08_36_01](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v08_36_01/larsoft-v08_36_01.html)
Download instructions for [just larsoftobj v08_22_01](http://scisoft.fnal.gov/scisoft/bundles/larsoftobj/v08_22_01/larsoftobj-v08_22_01.html)

Purpose
--------------------

-   changes in develop
-   approved feature branch
-   fixes for Ubuntu LTS 18

New features
------------------------------

-   Ubuntu LTS 18 best effort support
-   drop High Sierra build

Bug fixes
------------------------

-   lardata bugfix for Ubuntu LTS 18
-   larreco bug fix for [redmine issue 23605](https://cdcvs.fnal.gov/redmine/issues/23605)
    -   feature/vpec_pfputils_types_fix

Updated dependencies
----------------------------------------------

-   artdaq_core v3_05_08a with TRACE v3_15_05
    -   bugfix to TRACE for Ubuntu LTS 18
-   nurandom v1_03_00
    -   feature/gp_ValidationForEngineSeeds
    -   allows users to use validated FHiCL parameters (more precisely, fhicl::OptionalAtom) to specify the seed of their random engines to \`rndm::NuRandomService\`
-   nuevdb v1_01_01 with bugfix for [redmine issue 23575](https://cdcvs.fnal.gov/redmine/issues/23575)

Change List
============================

larsoft v08_36_01
------------------------------------------

-   2019-11-19 Lynn Garren : larsoft v08_36_01 for larsoft v08_36_01
-   2019-11-19 Lynn Garren : product versions
-   2019-11-19 Lynn Garren : using nudist v3_05_00a
-   2019-11-14 Lynn Garren : remove unnecessary comment

lareventdisplay v08_09_01
----------------------------------------------------------

-   2019-11-19 Lynn Garren : lareventdisplay v08_09_01 for larsoft v08_36_01
-   2019-11-14 Lynn Garren : event display base now in nuevdb

larexamples v08_03_01
--------------------------------------------------

-   2019-11-19 Lynn Garren : larexamples v08_03_01 for larsoft v08_36_01
-   2019-11-14 Lynn Garren : fix old comments

larg4 v08_06_01
--------------------------------------

-   2019-11-19 Lynn Garren : larg4 v08_06_01 for larsoft v08_36_01

larpandora v08_08_01
------------------------------------------------

-   2019-11-19 Lynn Garren : larpandora v08_08_01 for larsoft v08_36_01

larwirecell v08_09_01
--------------------------------------------------

-   2019-11-19 Lynn Garren : larwirecell v08_09_01 for larsoft v08_36_01

larana v08_13_01
----------------------------------------

-   2019-11-19 Lynn Garren : larana v08_13_01 for larsoft v08_36_01
-   2019-11-14 Lynn Garren : fix old comments

larreco v08_23_01
------------------------------------------

-   2019-11-19 Lynn Garren : larreco v08_23_01 for larsoft v08_36_01
-   2019-11-19 Lynn Garren : remove trailing whitespace
-   2019-11-19 Viktor Pec : Fourth iteration of fixing iterator types. Additional replacement of `unsigned int` and `short` defs for variables used as iterators, wherever they were compared to the output of a `size()`.
-   2019-11-19 Viktor Pec : Third iteration of fixing iterator types. Replaced `unsigned int` and `short` definition of loop iterators wherever they were compared to the output of a `size() - 1`.
-   2019-11-19 Viktor Pec : Second iteration of fixing iterator types. Replaced `unsigned int` definition of loop iterators wherever they were compared to the output of a `size()` method.
-   2019-11-19 Viktor Pec : First iteration of fixin iterator types. Replaced `unsigned short` definition of loop iterators wherever they were compared to the output of a `size()` method.
-   2019-11-19 Viktor Pec : Fix related to Bug [redmine issue 23605](https://cdcvs.fnal.gov/redmine/issues/23605)

larsim v08_16_01
----------------------------------------

-   2019-11-19 Lynn Garren : larsim v08_16_01 for larsoft v08_36_01
-   2019-11-19 Lynn Garren : nurandom v1_03_00
-   2019-11-14 Lynn Garren : cleanup obsolete references to nutools in various comments

larevt v08_07_01
----------------------------------------

-   2019-11-19 Lynn Garren : larevt v08_07_01 for larsoft v08_36_01

lardata v08_10_01
------------------------------------------

-   2019-11-19 Lynn Garren : lardata v08_10_01 for larsoft v08_36_01
-   2019-11-18 Lynn Garren : rename to minorTensor per request
-   2019-11-18 Lynn Garren : rename minor to avoid conflict with system types
-   2019-11-13 Kyle Knoepfel : undef ‘minor’ macro which can be introduced by the compiler.

larcore v08_07_01
------------------------------------------

-   2019-11-19 Lynn Garren : larcore v08_07_01 for larsoft v08_36_01

larpandoracontent v03_15_08
--------------------------------------------------------------

larsoftobj v08_22_01
------------------------------------------------

-   2019-11-19 Lynn Garren : larsoftobj v08_22_01 for larsoft v08_36_01
-   2019-11-19 Lynn Garren : product versions
-   2019-11-14 Lynn Garren : remove unnecessary comment

lardataobj v08_07_01
------------------------------------------------

-   2019-11-19 Lynn Garren : lardataobj v08_07_01 for larsoft v08_36_01
-   2019-11-14 Lynn Garren : fix old comments

lardataalg v08_09_01
------------------------------------------------

-   2019-11-19 Lynn Garren : lardataalg v08_09_01 for larsoft v08_36_01
-   2019-11-14 Lynn Garren : fix old comments

larcorealg v08_17_01
------------------------------------------------

-   2019-11-19 Lynn Garren : larcorealg v08_17_01 for larsoft v08_36_01
-   2019-11-19 Gianluca Petrillo : Changed wire orientation query for wires parallel to z axis.
-   2019-11-13 Gianluca Petrillo : Replacing a deprecated function in the geometry test.

larcoreobj v08_07_00
------------------------------------------------

larbatch v01_51_11
--------------------------------------------

-   2019-11-19 Lynn Garren : larbatch v01_51_11 for larsoft v08_36_01
-   2019-11-18 Herbert Greenlee : Get rid of first event logic for generator jobs.

larutils v1_25_02
------------------------------------------

-   2019-11-19 Lynn Garren : larutils v1_25_02 for larsoft v08_36_01
-   2019-11-13 Herbert Greenlee : Save wcp tarball.
