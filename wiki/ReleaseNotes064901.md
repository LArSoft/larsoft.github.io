LArSoft v06\_49\_01 Release Notes(#LArSoft-v06_49_01-Release-Notes)
======================================================================

-   **Table of contents**
-   [LArSoft v06\_49\_01 Release Notes](#LArSoft-v06_49_01-Release-Notes)
    -   [Purpose](#Purpose)
    -   [New features](#New-features)
    -   [Bug fixes](#Bug-fixes)
    -   [Updated dependencies](#Updated-dependencies)
-   [Change List](#Change-List)
    -   [larsoft v06\_49\_01](#larsoft-v06_49_01)
    -   [lareventdisplay v06\_12\_01](#lareventdisplay-v06_12_01)
    -   [larexamples v06\_07\_01](#larexamples-v06_07_01)
    -   [larpandora v06\_16\_01](#larpandora-v06_16_01)
    -   [larwirecell v06\_07\_01](#larwirecell-v06_07_01)
    -   [larana v06\_10\_01](#larana-v06_10_01)
    -   [larreco v06\_39\_01](#larreco-v06_39_01)
    -   [larsim v06\_31\_01](#larsim-v06_31_01)
    -   [larevt v06\_16\_01](#larevt-v06_16_01)
    -   [lardata v06\_28\_01](#lardata-v06_28_01)
    -   [larcore v06\_15\_00](#larcore-v06_15_00)
    -   [larpandoracontent v03\_07\_05](#larpandoracontent-v03_07_05)
    -   [larsoftobj v1\_27\_00](#larsoftobj-v1_27_00)
    -   [lardataobj v1\_21\_00](#lardataobj-v1_21_00)
    -   [larcorealg v1\_07\_00](#larcorealg-v1_07_00)
    -   [larcoreobj v1\_16\_00](#larcoreobj-v1_16_00)
    -   [larbatch v01\_32\_04](#larbatch-v01_32_04)
    -   [larutils v1\_19\_02](#larutils-v1_19_02)

[list of LArSoft releases](LArSoft_release_list)\
Download instructions for [larsoft v06\_49\_01](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v06_49_01/larsoft-v06_49_01.html)\
Download instructions for [just larsoftobj v1\_27\_00](http://scisoft.fnal.gov/scisoft/bundles/larsoftobj/v1_27_00/larsoftobj-v1_27_00.html)

Purpose(#Purpose)
--------------------

-   new ifdhc release
-   changes to develop

New features(#New-features)
------------------------------

Bug fixes(#Bug-fixes)
------------------------

Updated dependencies(#Updated-dependencies)
----------------------------------------------

  ------------------------------------------------------- ------------ ------------ --------------------------------------------------------------------------------------------------
  Product                                                 Version      Qualifiers   Notes
  nutools                                                 v2\_16\_04   e14          [NuTools\_Release\_Notes](/redmine/projects/nutools/wiki/NuTools_Release_Notes#nutools-v2_16_04)
  libwda                                                  v2\_24\_0                 
  ifdhc                                                   v2\_1\_0     e14:p2713d   
  ifdh\_art                                               v2\_03\_04   e14:nu:s54   
  [cetpkgsupport](/redmine/projects/cetpkgsupport/wiki)   v1\_12\_02                with new remove\_product script
  ------------------------------------------------------- ------------ ------------ --------------------------------------------------------------------------------------------------

Change List(#Change-List)
============================

larsoft v06\_49\_01(#larsoft-v06_49_01)
------------------------------------------

-   2017-09-12 Lynn Garren : larsoft v06\_49\_01 for larsoft v06\_49\_01
-   2017-09-12 Lynn Garren : with nutools v2\_16\_04
-   2017-09-06 Lynn Garren : update dependency database

lareventdisplay v06\_12\_01(#lareventdisplay-v06_12_01)
----------------------------------------------------------

-   2017-09-12 Lynn Garren : lareventdisplay v06\_12\_01 for larsoft v06\_49\_01

larexamples v06\_07\_01(#larexamples-v06_07_01)
--------------------------------------------------

-   2017-09-12 Lynn Garren : larexamples v06\_07\_01 for larsoft v06\_49\_01

larpandora v06\_16\_01(#larpandora-v06_16_01)
------------------------------------------------

-   2017-09-12 Lynn Garren : larpandora v06\_16\_01 for larsoft v06\_49\_01

larwirecell v06\_07\_01(#larwirecell-v06_07_01)
--------------------------------------------------

-   2017-09-12 Lynn Garren : larwirecell v06\_07\_01 for larsoft v06\_49\_01

larana v06\_10\_01(#larana-v06_10_01)
----------------------------------------

-   2017-09-12 Lynn Garren : larana v06\_10\_01 for larsoft v06\_49\_01
-   2017-09-08 Alex Himmel : Fix a bug in if/else levels.

larreco v06\_39\_01(#larreco-v06_39_01)
------------------------------------------

-   2017-09-12 Lynn Garren : larreco v06\_39\_01 for larsoft v06\_49\_01
-   2017-09-11 Robert Sulej : compile with optimizer corresponding correctly to what was used in the initial training
-   2017-09-11 Robert Sulej : fix class number
-   2017-09-08 Robert Sulej : Merge branch ‘develop’ of ssh://cdcvs.fnal.gov/cvs/projects/larreco into develop
-   2017-09-08 Robert Sulej : lower the memory usage
-   2017-09-06 Lynn Garren : larsoft v06\_49\_00
-   2017-09-06 William Foreman : More intuitive hit sorting behavior (for given fhicl params), removal of MinWidth which is no longer used, added comments
-   2017-09-06 Christoph Alt : Updated handling of MinSig in DPRawHitFinder\_module.cc

larsim v06\_31\_01(#larsim-v06_31_01)
----------------------------------------

-   2017-09-12 Lynn Garren : larsim v06\_31\_01 for larsoft v06\_49\_01

larevt v06\_16\_01(#larevt-v06_16_01)
----------------------------------------

-   2017-09-12 Lynn Garren : larevt v06\_16\_01 for larsoft v06\_49\_01

lardata v06\_28\_01(#lardata-v06_28_01)
------------------------------------------

-   2017-09-12 Lynn Garren : lardata v06\_28\_01 for larsoft v06\_49\_01
-   2017-09-07 Gianluca Petrillo : No forgiveness: using lar::PtrMaker gives compilation errors.
-   2017-09-07 Gianluca Petrillo : Temporary legacy version of lar::PtrMaker for transition time.

larcore v06\_15\_00(#larcore-v06_15_00)
------------------------------------------

larpandoracontent v03\_07\_05(#larpandoracontent-v03_07_05)
--------------------------------------------------------------

larsoftobj v1\_27\_00(#larsoftobj-v1_27_00)
----------------------------------------------

lardataobj v1\_21\_00(#lardataobj-v1_21_00)
----------------------------------------------

larcorealg v1\_07\_00(#larcorealg-v1_07_00)
----------------------------------------------

larcoreobj v1\_16\_00(#larcoreobj-v1_16_00)
----------------------------------------------

larbatch v01\_32\_04(#larbatch-v01_32_04)
--------------------------------------------

larutils v1\_19\_02(#larutils-v1_19_02)
------------------------------------------

-   2017-09-12 Lynn Garren : larutils v1\_19\_02 for larsoft v06\_49\_01
-   2017-09-08 Herbert Greenlee : Merge branch ‘develop’ of ssh://cdcvs.fnal.gov/cvs/projects/larutils into develop
-   2017-09-08 Herbert Greenlee : Get larbatch version for manifest from ubutil product\_deps.
-   2017-09-06 Lynn Garren : larsoft v06\_49\_00
-   2017-09-06 Lynn Garren : add s54
