LArSoft v06_56_01 Release Notes
======================================================================

-   **Table of contents**
-   [LArSoft v06_56_01 Release Notes](#LArSoft-v06_56_01-Release-Notes)
    -   [Purpose](#Purpose)
    -   [New features](#New-features)
    -   [Bug fixes](#Bug-fixes)
    -   [Updated dependencies](#Updated-dependencies)
-   [Change List](#Change-List)
    -   [larsoft v06_56_01](#larsoft-v06_56_01)
    -   [lareventdisplay v06_15_01](#lareventdisplay-v06_15_01)
    -   [larexamples v06_07_09](#larexamples-v06_07_09)
    -   [larpandora v06_17_06](#larpandora-v06_17_06)
    -   [larwirecell v06_08_03](#larwirecell-v06_08_03)
    -   [larana v06_12_01](#larana-v06_12_01)
    -   [larreco v06_45_01](#larreco-v06_45_01)
    -   [larsim v06_34_01](#larsim-v06_34_01)
    -   [larevt v06_16_08](#larevt-v06_16_08)
    -   [lardata v06_31_04](#lardata-v06_31_04)
    -   [larcore v06_15_05](#larcore-v06_15_05)
    -   [larpandoracontent v03_08_01](#larpandoracontent-v03_08_01)
    -   [larsoftobj v1_30_00](#larsoftobj-v1_30_00)
    -   [lardataobj v1_22_00](#lardataobj-v1_22_00)
    -   [larcorealg v1_09_03](#larcorealg-v1_09_03)
    -   [larcoreobj v1_16_02](#larcoreobj-v1_16_02)
    -   [larbatch v01_33_00](#larbatch-v01_33_00)
    -   [larutils v1_20_01](#larutils-v1_20_01)

[list of LArSoft releases](LArSoft_release_list)
Download instructions for [larsoft v06_56_01](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v06_56_01/larsoft-v06_56_01.html)
Download instructions for [just larsoftobj v1_30_00](http://scisoft.fnal.gov/scisoft/bundles/larsoftobj/v1_30_00/larsoftobj-v1_30_00.html)

Purpose
--------------------

-   changes to develop

New features
------------------------------

Bug fixes
------------------------

Updated dependencies
----------------------------------------------

Change List
============================

larsoft v06_56_01
------------------------------------------

-   2017-11-14 Lynn Garren : larsoft v06_56_01 for larsoft v06_56_01
-   2017-11-14 Lynn Garren : update product versions
-   2017-11-08 Lynn Garren : have to add caffe in larbase as well

lareventdisplay v06_15_01
----------------------------------------------------------

-   2017-11-14 Lynn Garren : lareventdisplay v06_15_01 for larsoft v06_56_01
-   2017-11-14 Usher, Tracy L : Merge branch ‘develop’ of ssh://cdcvs.fnal.gov/cvs/projects/lareventdisplay into develop
-   2017-11-14 Usher, Tracy L : Fixing faux pas introduced by me which zapped the 2D display of clusters if there were no associated SpacePoints. Sorry!!

larexamples v06_07_09
--------------------------------------------------

-   2017-11-14 Lynn Garren : larexamples v06_07_09 for larsoft v06_56_01

larpandora v06_17_06
------------------------------------------------

-   2017-11-14 Lynn Garren : larpandora v06_17_06 for larsoft v06_56_01

larwirecell v06_08_03
--------------------------------------------------

larana v06_12_01
----------------------------------------

-   2017-11-14 Lynn Garren : larana v06_12_01 for larsoft v06_56_01

larreco v06_45_01
------------------------------------------

-   2017-11-14 Lynn Garren : larreco v06_45_01 for larsoft v06_56_01
-   2017-11-14 baller : Fix bug in MakeJunkVertices
-   2017-11-14 baller : Merge branch ‘develop’ into feature/bb_TJWork
-   2017-11-10 Robert Sulej : allow multiple flags in cosmic tag
-   2017-11-09 baller : Add MakeJunkVertices
-   2017-11-09 baller : Add MakeJunkVertices
-   2017-11-09 baller : Tweak cuts in TagInShowerTjs
-   2017-11-09 baller : PrimEP performance metric
-   2017-11-09 baller : Add MakeJunkVertices
-   2017-11-09 baller : Add MakeJunkVertices
-   2017-11-09 baller : Add Match3DCuts<sup>[4](#fn4)</sup> to limit the number of 3D combos. Work on PFParticle hierarchy.
-   2017-11-09 baller : Add Match3DCuts<sup>[4](#fn4)</sup> to limit the number of 3D combos.
-   2017-11-09 baller : Add Match3DCuts<sup>[4](#fn4)</sup> to limit the number of 3D combos.

larsim v06_34_01
----------------------------------------

-   2017-11-14 Lynn Garren : larsim v06_34_01 for larsoft v06_56_01
-   2017-11-10 Gianluca Petrillo : LArG4 now produces associations with art::PtrMaker.
-   2017-11-10 Gianluca Petrillo : Added some LArG4 documentation
-   2017-11-09 Gianluca Petrillo : GENIEGen now dumps interactions of unknown types.
-   2017-11-03 Gianluca Petrillo : Updated MCDumpers modules to use the new functions
-   2017-11-03 Gianluca Petrillo : Utility functions to dump simb objects on screen

larevt v06_16_08
----------------------------------------

lardata v06_31_04
------------------------------------------

larcore v06_15_05
------------------------------------------

larpandoracontent v03_08_01
--------------------------------------------------------------

larsoftobj v1_30_00
----------------------------------------------

lardataobj v1_22_00
----------------------------------------------

larcorealg v1_09_03
----------------------------------------------

larcoreobj v1_16_02
----------------------------------------------

larbatch v01_33_00
--------------------------------------------

-   2017-11-14 Lynn Garren : larbatch v01_33_00 for larsoft v06_56_01
-   2017-11-10 Herbert Greenlee : Add –clean_one.
-   2017-11-10 Herbert Greenlee : Merge branch ‘feature/greenlee_multisubmit’ into develop
-   2017-11-10 Herbert Greenlee : Make \<previousstage\> work for stages in other projects.
-   2017-11-08 Herbert Greenlee : Fix –clean option to respect stage ordering.
-   2017-11-08 Herbert Greenlee : Add documentation for base stage and multiple stages.
-   2017-11-08 Herbert Greenlee : Merge remote-tracking branch ‘origin/develop’ into feature/greenlee_multisubmit
-   2017-08-08 Herbert Greenlee : Allow multiple submits.
-   2017-08-08 Herbert Greenlee : Add ability to inherit from base stage.

larutils v1_20_01
------------------------------------------
