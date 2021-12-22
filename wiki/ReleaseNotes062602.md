LArSoft v06\_26\_02 Release Notes(#LArSoft-v06_26_02-Release-Notes)
======================================================================

-   **Table of contents**
-   [LArSoft v06\_26\_02 Release Notes](#LArSoft-v06_26_02-Release-Notes)
    -   [Purpose](#Purpose)
    -   [New features](#New-features)
    -   [Bug fixes](#Bug-fixes)
    -   [Updated dependencies](#Updated-dependencies)
-   [Change List](#Change-List)
    -   [larsoft v06\_26\_02](#larsoft-v06_26_02)
    -   [lareventdisplay v06\_02\_15](#lareventdisplay-v06_02_15)
    -   [larexamples v06\_01\_16](#larexamples-v06_01_16)
    -   [larpandora v06\_08\_01](#larpandora-v06_08_01)
    -   [larwirecell v06\_00\_14](#larwirecell-v06_00_14)
    -   [larana v06\_03\_19](#larana-v06_03_19)
    -   [larreco v06\_20\_01](#larreco-v06_20_01)
    -   [larsim v06\_13\_02](#larsim-v06_13_02)
    -   [larevt v06\_07\_10](#larevt-v06_07_10)
    -   [lardata v06\_14\_05](#lardata-v06_14_05)
    -   [larcore v06\_05\_03](#larcore-v06_05_03)
    -   [larpandoracontent v03\_02\_00](#larpandoracontent-v03_02_00)
    -   [larsoftobj v1\_11\_00](#larsoftobj-v1_11_00)
    -   [lardataobj v1\_11\_00](#lardataobj-v1_11_00)
    -   [larcoreobj v1\_06\_02](#larcoreobj-v1_06_02)
    -   [larbatch v01\_27\_00](#larbatch-v01_27_00)
    -   [larutils v1\_11\_02](#larutils-v1_11_02)

[list of LArSoft releases](LArSoft_release_list)\
Download instructions for [larsoft v06\_26\_02](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v06_26_02/larsoft-v06_26_02.html)\
Download instructions for [just larsoftobj v1\_11\_00](http://scisoft.fnal.gov/scisoft/bundles/larsoftobj/v1_11_00/larsoftobj-v1_11_00.html)

Purpose(#Purpose)
--------------------

-   changes to develop since v06\_26\_00, including all changes in v06\_26\_01

New features(#New-features)
------------------------------

Bug fixes(#Bug-fixes)
------------------------

-   [\#15131](/redmine/issues/15131 "Bug: LArG4: diffusion causes errors in SpaceCharge computation (Closed)") resolved with commits to larsim

Updated dependencies(#Updated-dependencies)
----------------------------------------------

Change List(#Change-List)
============================

larsoft v06\_26\_02(#larsoft-v06_26_02)
------------------------------------------

-   2017-02-28 Lynn Garren : larsoft v06\_26\_02 for larsoft v06\_26\_02
-   2017-02-28 Lynn Garren : update product versions
-   2017-02-23 Lynn Garren : larsoft v06\_26\_01 for larsoft v06\_26\_01
-   2017-02-23 Lynn Garren : larwirecell v06\_00\_13

lareventdisplay v06\_02\_15(#lareventdisplay-v06_02_15)
----------------------------------------------------------

-   2017-02-28 Lynn Garren : lareventdisplay v06\_02\_15 for larsoft v06\_26\_02
-   2017-02-22 Andrzej Szelc : Merge branch ‘develop’ of ssh://cdcvs.fnal.gov/cvs/projects/lareventdisplay into develop
-   2017-02-18 Andrzej Szelc : fix bugs in bad use of GeometryUtilities

larexamples v06\_01\_16(#larexamples-v06_01_16)
--------------------------------------------------

-   2017-02-28 Lynn Garren : larexamples v06\_01\_16 for larsoft v06\_26\_02

larpandora v06\_08\_01(#larpandora-v06_08_01)
------------------------------------------------

-   2017-02-28 Lynn Garren : larpandora v06\_08\_01 for larsoft v06\_26\_02

larwirecell v06\_00\_14(#larwirecell-v06_00_14)
--------------------------------------------------

-   2017-02-28 Lynn Garren : larwirecell v06\_00\_14 for larsoft v06\_26\_02
-   2017-02-23 Lynn Garren : larwirecell v06\_00\_13 for larsoft v06\_26\_01
-   2017-02-23 Brian Kirby : Corrected run range
-   2017-02-23 Brian Kirby : Fixed gain factor used in misconfig channel fix, included hardcoded run ranges

larana v06\_03\_19(#larana-v06_03_19)
----------------------------------------

-   2017-02-28 Lynn Garren : larana v06\_03\_19 for larsoft v06\_26\_02

larreco v06\_20\_01(#larreco-v06_20_01)
------------------------------------------

-   2017-02-28 Lynn Garren : larreco v06\_20\_01 for larsoft v06\_26\_02
-   2017-02-28 Robert Sulej : go back to conservative auto-flip
-   2017-02-27 Daniel Lewis Smith : Also Updating CMake file
-   2017-02-27 Daniel Lewis Smith : Optimize the Conv2D computer output. Should be a few times faster.
-   2017-02-25 Robert Sulej : missed cleanup of array
-   2017-02-24 Robert Sulej : use the new flip in dedx auto-flip
-   2017-02-22 Brooke Russell : added optical info to celltree -brussell

larsim v06\_13\_02(#larsim-v06_13_02)
----------------------------------------

-   2017-02-28 Lynn Garren : larsim v06\_13\_02 for larsoft v06\_26\_02
-   2017-02-23 Gianluca Petrillo : Prevent space charge distortion from making charge cross the wire planes.
-   2017-02-22 Gianluca Petrillo : DumpMCTruth module added. It does what it says.

larevt v06\_07\_10(#larevt-v06_07_10)
----------------------------------------

-   2017-02-28 Lynn Garren : larevt v06\_07\_10 for larsoft v06\_26\_02
-   2017-02-22 Eberly : Merge branch ‘develop’ of ssh://cdcvs.fnal.gov/cvs/projects/larevt into develop
-   2017-02-22 Eberly : Use function with built in timeout to query database. This is the function now supported by SCD and may help alleviate the channel 494 problem

lardata v06\_14\_05(#lardata-v06_14_05)
------------------------------------------

-   2017-02-28 Lynn Garren : lardata v06\_14\_05 for larsoft v06\_26\_02
-   2017-02-28 Lynn Garren : Merge branch ‘feature/gp\_DumpSeedsUpdate’ into develop
-   2017-02-28 Gianluca Petrillo : Updated DumpSeeds to use FHiCL configuration validation.
-   2017-02-22 Andrzej Szelc : Merge branch ‘develop’ of ssh://cdcvs.fnal.gov/cvs/projects/lardata into develop
-   2017-02-18 Andrzej Szelc : bug fixes

larcore v06\_05\_03(#larcore-v06_05_03)
------------------------------------------

larpandoracontent v03\_02\_00(#larpandoracontent-v03_02_00)
--------------------------------------------------------------

larsoftobj v1\_11\_00(#larsoftobj-v1_11_00)
----------------------------------------------

lardataobj v1\_11\_00(#lardataobj-v1_11_00)
----------------------------------------------

larcoreobj v1\_06\_02(#larcoreobj-v1_06_02)
----------------------------------------------

larbatch v01\_27\_00(#larbatch-v01_27_00)
--------------------------------------------

-   2017-02-28 Lynn Garren : larbatch v01\_27\_00 for larsoft v06\_26\_02
-   2017-02-28 Herbert Greenlee : Fix truncation.
-   2017-02-28 Herbert Greenlee : Aggregate quick check files from log/book directory, not output directory.
-   2017-02-25 Herbert Greenlee : mkdir -\> makedirs.
-   2017-02-25 Herbert Greenlee : Don’t unnecessarily check or make directories.
-   2017-02-25 Herbert Greenlee : Add missing initialization.
-   2017-02-25 Herbert Greenlee : Fix some check issues.
-   2017-02-24 Herbert Greenlee : outdir -\> logdir.
-   2017-02-24 Herbert Greenlee : Tar log files.
-   2017-02-24 Herbert Greenlee : Add comments.
-   2017-02-23 Herbert Greenlee : Add bookkeeping directory xml element.

larutils v1\_11\_02(#larutils-v1_11_02)
------------------------------------------

-   2017-02-28 Lynn Garren : larutils v1\_11\_02 for larsoft v06\_26\_02
-   2017-02-23 Lynn Garren : less copy back
