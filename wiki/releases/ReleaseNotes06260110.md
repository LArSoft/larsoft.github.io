LArSoft v06_26_01_10 Release Notes
=============================================================================

-   **Table of contents**
-   [LArSoft v06_26_01_10 Release Notes](#LArSoft-v06_26_01_10-Release-Notes)
    -   [Purpose](#Purpose)
    -   [New features](#New-features)
    -   [Bug fixes](#Bug-fixes)
    -   [Updated dependencies](#Updated-dependencies)
-   [Change List](#Change-List)
    -   [larsoft v06_26_01_10](#larsoft-v06_26_01_10)
    -   [lareventdisplay v06_02_14_10](#lareventdisplay-v06_02_14_10)
    -   [larexamples v06_01_15_06](#larexamples-v06_01_15_06)
    -   [larpandora v06_08_00_10](#larpandora-v06_08_00_10)
    -   [larwirecell v06_00_13_08](#larwirecell-v06_00_13_08)
    -   [larana v06_03_18_10](#larana-v06_03_18_10)
    -   [larreco v06_20_00_10](#larreco-v06_20_00_10)
    -   [larsim v06_13_01_06](#larsim-v06_13_01_06)
    -   [larevt v06_07_09_06](#larevt-v06_07_09_06)
    -   [lardata v06_14_04_05](#lardata-v06_14_04_05)
    -   [larcore v06_05_03_02](#larcore-v06_05_03_02)
    -   [larpandoracontent v03_07_02_05](#larpandoracontent-v03_07_02_05)
    -   [larsoftobj v1_11_00_05](#larsoftobj-v1_11_00_05)
    -   [lardataobj v1_11_00_05](#lardataobj-v1_11_00_05)
    -   [larcoreobj v1_06_02_02](#larcoreobj-v1_06_02_02)
    -   [larbatch v01_36_01](#larbatch-v01_36_01)
    -   [larutils v1_20_06](#larutils-v1_20_06)

[list of LArSoft releases](LArSoft_release_list)
Download instructions for [larsoft v06_26_01_10](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v06_26_01_10/larsoft-v06_26_01_10.html)
Download instructions for [just larsoftobj v1_11_00_05](http://scisoft.fnal.gov/scisoft/bundles/larsoftobj/v1_11_00_05/larsoftobj-v1_11_00_05.html)

Purpose
--------------------

-   MicroBoone request [redmine issue 18840](https://cdcvs.fnal.gov/redmine/issues/18840)

New features
------------------------------

Bug fixes
------------------------

Updated dependencies
----------------------------------------------

-   mrb v1_13_02

Change List
============================

larsoft v06_26_01_10
-------------------------------------------------

-   2018-01-31 Lynn Garren : fix squal
-   2018-01-31 Lynn Garren : larsoft v06_26_01_10 for larsoft v06_26_01_10
-   2018-01-31 Lynn Garren : update product versions

lareventdisplay v06_02_14_10
-----------------------------------------------------------------

-   2018-01-31 Lynn Garren : lareventdisplay v06_02_14_10 for larsoft v06_26_01_10

larexamples v06_01_15_06
---------------------------------------------------------

-   2018-01-31 Lynn Garren : larexamples v06_01_15_06 for larsoft v06_26_01_10

larpandora v06_08_00_10
-------------------------------------------------------

-   2018-01-31 Lynn Garren : larpandora v06_08_00_10 for larsoft v06_26_01_10

larwirecell v06_00_13_08
---------------------------------------------------------

-   2018-01-31 Lynn Garren : larwirecell v06_00_13_08 for larsoft v06_26_01_10

larana v06_03_18_10
-----------------------------------------------

-   2018-01-31 Lynn Garren : larana v06_03_18_10 for larsoft v06_26_01_10
-   2018-01-30 Herbert Greenlee : Merge remote-tracking branch ‘origin/feature/adi_overlay_v06_03_18_09’ into v06_26_01_01_branch
-   2018-01-24 Gianluca Petrillo : Fixed inconsistent produces() declaration in MCParticleHitMatching
-   2018-01-11 Adi Ashkenazi : Enabling backtracking to work with overlay sample by adding OverrideRealData variable

larreco v06_20_00_10
-------------------------------------------------

-   2018-01-31 Lynn Garren : larreco v06_20_00_10 for larsoft v06_26_01_10

larsim v06_13_01_06
-----------------------------------------------

-   2018-01-31 Lynn Garren : larsim v06_13_01_06 for larsoft v06_26_01_10
-   2018-01-29 Herbert Greenlee : Merge branch ‘feature/greenlee_mcc80compat’ into v06_26_01_01_branch
-   2018-01-29 Herbert Greenlee : Merge remote-tracking branch ‘origin/feature/yuntse_MCHitAssnsUbooneMCC8’ into v06_26_01_01_branch
-   2018-01-24 Herbert Greenlee : MCC 8.0 compatibility mode.
-   2017-12-08 Wesley Ketchum : add in option to backtracker to ignore the realdata flag

larevt v06_07_09_06
-----------------------------------------------

-   2018-01-31 Lynn Garren : larevt v06_07_09_06 for larsoft v06_26_01_10

lardata v06_14_04_05
-------------------------------------------------

-   2018-01-31 Lynn Garren : lardata v06_14_04_05 for larsoft v06_26_01_10

larcore v06_05_03_02
-------------------------------------------------

larpandoracontent v03_07_02_05
---------------------------------------------------------------------

larsoftobj v1_11_00_05
-----------------------------------------------------

-   2018-01-31 Lynn Garren : larsoftobj v1_11_00_05 for larsoft v06_26_01_10

lardataobj v1_11_00_05
-----------------------------------------------------

-   2018-01-31 Lynn Garren : lardataobj v1_11_00_05 for larsoft v06_26_01_10
-   2018-01-24 Gianluca Petrillo : Added missing classes for association dictionary

larcoreobj v1_06_02_02
-----------------------------------------------------

larbatch v01_36_01
--------------------------------------------

-   2018-01-23 Lynn Garren : larbatch v01_36_01 for larsoft v06_66_00
-   2018-01-19 Herbert Greenlee : Make bad parent metadata an error.
-   2018-01-19 Herbert Greenlee : Abort project and dag if project snapshot contains zero files.
-   2018-01-18 Lynn Garren : larsoft v06_64_00
-   2018-01-18 Tingjun Yang : Make validate_in_job.py work for simulation job with multiple fcl files. (committing for Herb)
-   2018-01-17 Lynn Garren : larbatch v01_36_00 for larsoft v06_64_00
-   2018-01-17 Herbert Greenlee : Merge branch ‘develop’ of ssh://cdcvs.fnal.gov/cvs/projects/larbatch into develop
-   2018-01-17 Herbert Greenlee : Make failure to determine parentage in validate-on-worker jobs a fatal error.
-   2018-01-10 Lynn Garren : larbatch v01_35_00 for larsoft v06_62_01
-   2018-01-09 Herbert Greenlee : Add recursive and analysis flags.
-   2018-01-08 Herbert Greenlee : Add support for recursive input datasets.
-   2018-01-05 Herbert Greenlee : Merge branch ‘develop’ of ssh://cdcvs.fnal.gov/cvs/projects/larbatch into develop
-   2018-01-05 Herbert Greenlee : Add ability to source environment initialization script directly from cvmfs. Remove ifdh force options from batch scripts. Use new-style way of forcing sam to take a snapshot when starting a project.
-   2017-12-19 Lynn Garren : larbatch v01_34_04 for larsoft v06_61_00
-   2017-12-14 Lynn Garren : larsoft v06_60_00
-   2017-12-13 Lynn Garren : larbatch v01_34_03 for larsoft v06_60_00
-   2017-12-13 Herbert Greenlee : Updates to condor_lar.sh to reduce copying duplicate files back from batch jobs.
-   2017-12-07 Herbert Greenlee : Fix bug in copy to dropbox

larutils v1_20_06
------------------------------------------

-   2018-01-23 Lynn Garren : larutils v1_20_06 for larsoft v06_66_00
-   2018-01-22 Lynn Garren : add s62
-   2018-01-19 Thomas Junk : use dots instead of _ in the version number for the output tarballs, and use get-directory-name subdir instead of the flavor
-   2018-01-10 Lynn Garren : larutils v1_20_05 for larsoft v06_62_01
-   2018-01-05 Thomas Junk : strip the v off of the version number of the tarball so copytoscisoft is happy
-   2018-01-02 Lynn Garren : larutils v1_20_04 for larsoft v06_62_00
-   2017-12-22 Thomas Junk : better comment
-   2017-12-22 Thomas Junk : add dune_raw_data (dune-raw-data) just like lbne_raw_data (lbne-raw-data)
-   2017-12-21 Thomas Brooks : put compiler qualifiers back in
-   2017-12-20 Thomas Brooks : removed compiler qualifiers for sbndcode
-   2017-12-13 Lynn Garren : larutils v1_20_03 for larsoft v06_60_00
-   2017-12-12 Lynn Garren : s59 for art v2_05_01
