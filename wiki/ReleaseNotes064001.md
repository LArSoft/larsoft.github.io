LArSoft v06\_40\_01 Release Notes(#LArSoft-v06_40_01-Release-Notes)
======================================================================

-   **Table of contents**
-   [LArSoft v06\_40\_01 Release Notes](#LArSoft-v06_40_01-Release-Notes)
    -   [Purpose](#Purpose)
    -   [New features](#New-features)
    -   [Bug fixes](#Bug-fixes)
    -   [Updated dependencies](#Updated-dependencies)
-   [Change List](#Change-List)
    -   [larsoft v06\_40\_01](#larsoft-v06_40_01)
    -   [lareventdisplay v06\_06\_01](#lareventdisplay-v06_06_01)
    -   [larexamples v06\_04\_01](#larexamples-v06_04_01)
    -   [larpandora v06\_13\_01](#larpandora-v06_13_01)
    -   [larwirecell v06\_05\_01](#larwirecell-v06_05_01)
    -   [larana v06\_07\_01](#larana-v06_07_01)
    -   [larreco v06\_31\_01](#larreco-v06_31_01)
    -   [larsim v06\_24\_01](#larsim-v06_24_01)
    -   [larevt v06\_14\_01](#larevt-v06_14_01)
    -   [lardata v06\_22\_01](#lardata-v06_22_01)
    -   [larcore v06\_10\_00](#larcore-v06_10_00)
    -   [larpandoracontent v03\_07\_01](#larpandoracontent-v03_07_01)
    -   [larsoftobj v1\_21\_00](#larsoftobj-v1_21_00)
    -   [lardataobj v1\_17\_00](#lardataobj-v1_17_00)
    -   [larcoreobj v1\_14\_00](#larcoreobj-v1_14_00)
    -   [larbatch v01\_32\_01](#larbatch-v01_32_01)
    -   [larutils v1\_16\_00](#larutils-v1_16_00)

[list of LArSoft releases](LArSoft_release_list)\
Download instructions for [larsoft v06\_40\_01](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v06_40_01/larsoft-v06_40_01.html)\
Download instructions for [just larsoftobj v1\_21\_00](http://scisoft.fnal.gov/scisoft/bundles/larsoftobj/v1_21_00/larsoftobj-v1_21_00.html)

Purpose(#Purpose)
--------------------

-   changes to develop since v06\_39\_00
-   ifdhc v2\_0\_8

New features(#New-features)
------------------------------

-   ifdhc and ifdhc\_config v2\_0\_8: preferring file:/// paths to gsiftp:/// paths for bluearc volumes if fhey are mounted locally (we have gotten numerous complaints due to not having this in v2\_x and various volumes having been unmounted from the bestman server)

Bug fixes(#Bug-fixes)
------------------------

-   ifdh\_art: fix art\_sam\_wrap.sh

Updated dependencies(#Updated-dependencies)
----------------------------------------------

  ----------- ------------ ------------ --------------------------------------------------------------------------------------------------
  Product     Version      Qualifiers   Notes
  nutools     v2\_14\_01   e14          [NuTools\_Release\_Notes](/redmine/projects/nutools/wiki/NuTools_Release_Notes#nutools-v2_14_01)
  ifdhc       v2\_0\_8     e14          
  ifdh\_art   v2\_02\_00   e14:nu:s50   fix for [\#16804](/redmine/issues/16804 "Bug: Typo in art_sam_wrap.sh (Closed)")
  ----------- ------------ ------------ --------------------------------------------------------------------------------------------------

Change List(#Change-List)
============================

larsoft v06\_40\_01(#larsoft-v06_40_01)
------------------------------------------

-   2017-06-14 Lynn Garren : larsoft v06\_40\_01 for larsoft v06\_40\_01
-   2017-06-14 Lynn Garren : update for nutools v2\_14\_01

lareventdisplay v06\_06\_01(#lareventdisplay-v06_06_01)
----------------------------------------------------------

-   2017-06-14 Lynn Garren : lareventdisplay v06\_06\_01 for larsoft v06\_40\_01

larexamples v06\_04\_01(#larexamples-v06_04_01)
--------------------------------------------------

-   2017-06-14 Lynn Garren : larexamples v06\_04\_01 for larsoft v06\_40\_01

larpandora v06\_13\_01(#larpandora-v06_13_01)
------------------------------------------------

-   2017-06-14 Lynn Garren : larpandora v06\_13\_01 for larsoft v06\_40\_01

larwirecell v06\_05\_01(#larwirecell-v06_05_01)
--------------------------------------------------

-   2017-06-14 Lynn Garren : larwirecell v06\_05\_01 for larsoft v06\_40\_01

larana v06\_07\_01(#larana-v06_07_01)
----------------------------------------

-   2017-06-14 Lynn Garren : larana v06\_07\_01 for larsoft v06\_40\_01

larreco v06\_31\_01(#larreco-v06_31_01)
------------------------------------------

-   2017-06-14 Lynn Garren : larreco v06\_31\_01 for larsoft v06\_40\_01
-   2017-06-13 Lynn Garren : larsoft v06\_40\_00
-   2017-06-13 Robert Sulej : add more of usually used parameters
-   2017-06-13 Robert Sulej : add more plotting the cnn output
-   2017-06-10 Robert Sulej : update and improve the script for displaying the network outputs
-   2017-06-09 Robert Sulej : from now use one script for em-trk-michel-none and optionally remove michel labels for 3-class training
-   2017-06-09 Robert Sulej : Merge branch ‘develop’ of ssh://cdcvs.fnal.gov/cvs/projects/larreco into develop
-   2017-06-09 Robert Sulej : add calibration and noise testing configurations to example fcl files
-   2017-06-09 Robert Sulej : add cluster index to information dumped with hits

larsim v06\_24\_01(#larsim-v06_24_01)
----------------------------------------

-   2017-06-14 Lynn Garren : larsim v06\_24\_01 for larsoft v06\_40\_01

larevt v06\_14\_01(#larevt-v06_14_01)
----------------------------------------

-   2017-06-14 Lynn Garren : larevt v06\_14\_01 for larsoft v06\_40\_01

lardata v06\_22\_01(#lardata-v06_22_01)
------------------------------------------

-   2017-06-14 Lynn Garren : lardata v06\_22\_01 for larsoft v06\_40\_01

larcore v06\_10\_00(#larcore-v06_10_00)
------------------------------------------

larpandoracontent v03\_07\_01(#larpandoracontent-v03_07_01)
--------------------------------------------------------------

larsoftobj v1\_21\_00(#larsoftobj-v1_21_00)
----------------------------------------------

lardataobj v1\_17\_00(#lardataobj-v1_17_00)
----------------------------------------------

larcoreobj v1\_14\_00(#larcoreobj-v1_14_00)
----------------------------------------------

larbatch v01\_32\_01(#larbatch-v01_32_01)
--------------------------------------------

larutils v1\_16\_00(#larutils-v1_16_00)
------------------------------------------

-   2017-06-14 Lynn Garren : larutils v1\_16\_00 for larsoft v06\_40\_01
-   2017-06-14 Herbert Greenlee : Revert to using official repo.
-   2017-06-14 Herbert Greenlee : Revert to using official repo.
-   2017-06-12 Herbert Greenlee : Fix repo name.
-   2017-06-12 Herbert Greenlee : Switch to other repo.
-   2017-06-12 Herbert Greenlee : Merge branch ‘develop’ of ssh://cdcvs.fnal.gov/cvs/projects/larutils into develop
-   2017-06-12 Herbert Greenlee : Switch to hbg fememulator.
-   2017-06-09 Lynn Garren : fix typo
-   2017-06-09 Lynn Garren : add s50
-   2017-06-09 Lynn Garren : use version
-   2017-06-09 Lynn Garren : Merge branch ‘develop’ of ssh://cdcvs.fnal.gov/cvs/projects/larutils into develop
-   2017-06-09 Lynn Garren : build larsoftobj by itself
-   2017-06-09 Herbert Greenlee : Strip kernel minor version from os flavor for macos builds.
-   2017-06-09 Herbert Greenlee : Echo \$PRODUCTS.
