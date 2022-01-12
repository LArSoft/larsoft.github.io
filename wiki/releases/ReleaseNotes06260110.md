LArSoft v06\_26\_01\_10 Release Notes
=============================================================================

-   **Table of contents**
-   [LArSoft v06\_26\_01\_10 Release Notes](#LArSoft-v06_26_01_10-Release-Notes)
    -   [Purpose](#Purpose)
    -   [New features](#New-features)
    -   [Bug fixes](#Bug-fixes)
    -   [Updated dependencies](#Updated-dependencies)
-   [Change List](#Change-List)
    -   [larsoft v06\_26\_01\_10](#larsoft-v06_26_01_10)
    -   [lareventdisplay v06\_02\_14\_10](#lareventdisplay-v06_02_14_10)
    -   [larexamples v06\_01\_15\_06](#larexamples-v06_01_15_06)
    -   [larpandora v06\_08\_00\_10](#larpandora-v06_08_00_10)
    -   [larwirecell v06\_00\_13\_08](#larwirecell-v06_00_13_08)
    -   [larana v06\_03\_18\_10](#larana-v06_03_18_10)
    -   [larreco v06\_20\_00\_10](#larreco-v06_20_00_10)
    -   [larsim v06\_13\_01\_06](#larsim-v06_13_01_06)
    -   [larevt v06\_07\_09\_06](#larevt-v06_07_09_06)
    -   [lardata v06\_14\_04\_05](#lardata-v06_14_04_05)
    -   [larcore v06\_05\_03\_02](#larcore-v06_05_03_02)
    -   [larpandoracontent v03\_07\_02\_05](#larpandoracontent-v03_07_02_05)
    -   [larsoftobj v1\_11\_00\_05](#larsoftobj-v1_11_00_05)
    -   [lardataobj v1\_11\_00\_05](#lardataobj-v1_11_00_05)
    -   [larcoreobj v1\_06\_02\_02](#larcoreobj-v1_06_02_02)
    -   [larbatch v01\_36\_01](#larbatch-v01_36_01)
    -   [larutils v1\_20\_06](#larutils-v1_20_06)

[list of LArSoft releases](LArSoft_release_list)
Download instructions for [larsoft v06\_26\_01\_10](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v06_26_01_10/larsoft-v06_26_01_10.html)
Download instructions for [just larsoftobj v1\_11\_00\_05](http://scisoft.fnal.gov/scisoft/bundles/larsoftobj/v1_11_00_05/larsoftobj-v1_11_00_05.html)

Purpose
--------------------

-   MicroBoone request [\#18840](/redmine/issues/18840 "Support: Request patch release larsoft v06_26_01_10 (Closed)")

New features
------------------------------

Bug fixes
------------------------

Updated dependencies
----------------------------------------------

-   mrb v1\_13\_02

Change List
============================

larsoft v06\_26\_01\_10
-------------------------------------------------

-   2018-01-31 Lynn Garren : fix squal
-   2018-01-31 Lynn Garren : larsoft v06\_26\_01\_10 for larsoft v06\_26\_01\_10
-   2018-01-31 Lynn Garren : update product versions

lareventdisplay v06\_02\_14\_10
-----------------------------------------------------------------

-   2018-01-31 Lynn Garren : lareventdisplay v06\_02\_14\_10 for larsoft v06\_26\_01\_10

larexamples v06\_01\_15\_06
---------------------------------------------------------

-   2018-01-31 Lynn Garren : larexamples v06\_01\_15\_06 for larsoft v06\_26\_01\_10

larpandora v06\_08\_00\_10
-------------------------------------------------------

-   2018-01-31 Lynn Garren : larpandora v06\_08\_00\_10 for larsoft v06\_26\_01\_10

larwirecell v06\_00\_13\_08
---------------------------------------------------------

-   2018-01-31 Lynn Garren : larwirecell v06\_00\_13\_08 for larsoft v06\_26\_01\_10

larana v06\_03\_18\_10
-----------------------------------------------

-   2018-01-31 Lynn Garren : larana v06\_03\_18\_10 for larsoft v06\_26\_01\_10
-   2018-01-30 Herbert Greenlee : Merge remote-tracking branch ‘origin/feature/adi\_overlay\_v06\_03\_18\_09’ into v06\_26\_01\_01\_branch
-   2018-01-24 Gianluca Petrillo : Fixed inconsistent produces() declaration in MCParticleHitMatching
-   2018-01-11 Adi Ashkenazi : Enabling backtracking to work with overlay sample by adding OverrideRealData variable

larreco v06\_20\_00\_10
-------------------------------------------------

-   2018-01-31 Lynn Garren : larreco v06\_20\_00\_10 for larsoft v06\_26\_01\_10

larsim v06\_13\_01\_06
-----------------------------------------------

-   2018-01-31 Lynn Garren : larsim v06\_13\_01\_06 for larsoft v06\_26\_01\_10
-   2018-01-29 Herbert Greenlee : Merge branch ‘feature/greenlee\_mcc80compat’ into v06\_26\_01\_01\_branch
-   2018-01-29 Herbert Greenlee : Merge remote-tracking branch ‘origin/feature/yuntse\_MCHitAssnsUbooneMCC8’ into v06\_26\_01\_01\_branch
-   2018-01-24 Herbert Greenlee : MCC 8.0 compatibility mode.
-   2017-12-08 Wesley Ketchum : add in option to backtracker to ignore the realdata flag

larevt v06\_07\_09\_06
-----------------------------------------------

-   2018-01-31 Lynn Garren : larevt v06\_07\_09\_06 for larsoft v06\_26\_01\_10

lardata v06\_14\_04\_05
-------------------------------------------------

-   2018-01-31 Lynn Garren : lardata v06\_14\_04\_05 for larsoft v06\_26\_01\_10

larcore v06\_05\_03\_02
-------------------------------------------------

larpandoracontent v03\_07\_02\_05
---------------------------------------------------------------------

larsoftobj v1\_11\_00\_05
-----------------------------------------------------

-   2018-01-31 Lynn Garren : larsoftobj v1\_11\_00\_05 for larsoft v06\_26\_01\_10

lardataobj v1\_11\_00\_05
-----------------------------------------------------

-   2018-01-31 Lynn Garren : lardataobj v1\_11\_00\_05 for larsoft v06\_26\_01\_10
-   2018-01-24 Gianluca Petrillo : Added missing classes for association dictionary

larcoreobj v1\_06\_02\_02
-----------------------------------------------------

larbatch v01\_36\_01
--------------------------------------------

-   2018-01-23 Lynn Garren : larbatch v01\_36\_01 for larsoft v06\_66\_00
-   2018-01-19 Herbert Greenlee : Make bad parent metadata an error.
-   2018-01-19 Herbert Greenlee : Abort project and dag if project snapshot contains zero files.
-   2018-01-18 Lynn Garren : larsoft v06\_64\_00
-   2018-01-18 Tingjun Yang : Make validate\_in\_job.py work for simulation job with multiple fcl files. (committing for Herb)
-   2018-01-17 Lynn Garren : larbatch v01\_36\_00 for larsoft v06\_64\_00
-   2018-01-17 Herbert Greenlee : Merge branch ‘develop’ of ssh://cdcvs.fnal.gov/cvs/projects/larbatch into develop
-   2018-01-17 Herbert Greenlee : Make failure to determine parentage in validate-on-worker jobs a fatal error.
-   2018-01-10 Lynn Garren : larbatch v01\_35\_00 for larsoft v06\_62\_01
-   2018-01-09 Herbert Greenlee : Add recursive and analysis flags.
-   2018-01-08 Herbert Greenlee : Add support for recursive input datasets.
-   2018-01-05 Herbert Greenlee : Merge branch ‘develop’ of ssh://cdcvs.fnal.gov/cvs/projects/larbatch into develop
-   2018-01-05 Herbert Greenlee : Add ability to source environment initialization script directly from cvmfs. Remove ifdh force options from batch scripts. Use new-style way of forcing sam to take a snapshot when starting a project.
-   2017-12-19 Lynn Garren : larbatch v01\_34\_04 for larsoft v06\_61\_00
-   2017-12-14 Lynn Garren : larsoft v06\_60\_00
-   2017-12-13 Lynn Garren : larbatch v01\_34\_03 for larsoft v06\_60\_00
-   2017-12-13 Herbert Greenlee : Updates to condor\_lar.sh to reduce copying duplicate files back from batch jobs.
-   2017-12-07 Herbert Greenlee : Fix bug in copy to dropbox

larutils v1\_20\_06
------------------------------------------

-   2018-01-23 Lynn Garren : larutils v1\_20\_06 for larsoft v06\_66\_00
-   2018-01-22 Lynn Garren : add s62
-   2018-01-19 Thomas Junk : use dots instead of \_ in the version number for the output tarballs, and use get-directory-name subdir instead of the flavor
-   2018-01-10 Lynn Garren : larutils v1\_20\_05 for larsoft v06\_62\_01
-   2018-01-05 Thomas Junk : strip the v off of the version number of the tarball so copytoscisoft is happy
-   2018-01-02 Lynn Garren : larutils v1\_20\_04 for larsoft v06\_62\_00
-   2017-12-22 Thomas Junk : better comment
-   2017-12-22 Thomas Junk : add dune\_raw\_data (dune-raw-data) just like lbne\_raw\_data (lbne-raw-data)
-   2017-12-21 Thomas Brooks : put compiler qualifiers back in
-   2017-12-20 Thomas Brooks : removed compiler qualifiers for sbndcode
-   2017-12-13 Lynn Garren : larutils v1\_20\_03 for larsoft v06\_60\_00
-   2017-12-12 Lynn Garren : s59 for art v2\_05\_01
