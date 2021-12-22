LArSoft v06\_38\_00 Release Notes(#LArSoft-v06_38_00-Release-Notes)
======================================================================

-   **Table of contents**
-   [LArSoft v06\_38\_00 Release Notes](#LArSoft-v06_38_00-Release-Notes)
    -   [Purpose](#Purpose)
    -   [New features](#New-features)
    -   [Bug fixes](#Bug-fixes)
    -   [Updated dependencies](#Updated-dependencies)
-   [Change List](#Change-List)
    -   [larsoft v06\_38\_00](#larsoft-v06_38_00)
    -   [lareventdisplay v06\_05\_07](#lareventdisplay-v06_05_07)
    -   [larexamples v06\_03\_07](#larexamples-v06_03_07)
    -   [larpandora v06\_11\_01](#larpandora-v06_11_01)
    -   [larwirecell v06\_04\_06](#larwirecell-v06_04_06)
    -   [larana v06\_06\_02](#larana-v06_06_02)
    -   [larreco v06\_30\_00](#larreco-v06_30_00)
    -   [larsim v06\_23\_00](#larsim-v06_23_00)
    -   [larevt v06\_13\_04](#larevt-v06_13_04)
    -   [lardata v06\_21\_01](#lardata-v06_21_01)
    -   [larcore v06\_09\_02](#larcore-v06_09_02)
    -   [larpandoracontent v03\_06\_00](#larpandoracontent-v03_06_00)
    -   [larsoftobj v1\_20\_00](#larsoftobj-v1_20_00)
    -   [lardataobj v1\_16\_00](#lardataobj-v1_16_00)
    -   [larcoreobj v1\_13\_01](#larcoreobj-v1_13_01)
    -   [larbatch v01\_32\_01](#larbatch-v01_32_01)
    -   [larutils v1\_14\_00](#larutils-v1_14_00)

[list of LArSoft releases](LArSoft_release_list)\
Download instructions for [larsoft v06\_38\_00](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v06_38_00/larsoft-v06_38_00.html)\
Download instructions for [just larsoftobj v1\_20\_00](http://scisoft.fnal.gov/scisoft/bundles/larsoftobj/v1_20_00/larsoftobj-v1_20_00.html)

Purpose(#Purpose)
--------------------

-   changes to develop
-   merge approved feature branches

New features(#New-features)
------------------------------

-   radiological generator
    -   larsim, dunetpc feature/JStock\_RadioGen\_SearchForNuclide

Bug fixes(#Bug-fixes)
------------------------

Updated dependencies(#Updated-dependencies)
----------------------------------------------

Change List(#Change-List)
============================

larsoft v06\_38\_00(#larsoft-v06_38_00)
------------------------------------------

-   2017-05-30 Lynn Garren : larsoft v06\_38\_00 for larsoft v06\_37\_01
-   2017-05-30 Lynn Garren : update product versions
-   2017-05-30 Lynn Garren : update dependency database

lareventdisplay v06\_05\_07(#lareventdisplay-v06_05_07)
----------------------------------------------------------

-   2017-05-30 Lynn Garren : lareventdisplay v06\_05\_07 for larsoft v06\_37\_01

larexamples v06\_03\_07(#larexamples-v06_03_07)
--------------------------------------------------

-   2017-05-30 Lynn Garren : larexamples v06\_03\_07 for larsoft v06\_37\_01

larpandora v06\_11\_01(#larpandora-v06_11_01)
------------------------------------------------

-   2017-05-30 Lynn Garren : larpandora v06\_11\_01 for larsoft v06\_37\_01

larwirecell v06\_04\_06(#larwirecell-v06_04_06)
--------------------------------------------------

larana v06\_06\_02(#larana-v06_06_02)
----------------------------------------

-   2017-05-30 Lynn Garren : larana v06\_06\_02 for larsoft v06\_37\_01

larreco v06\_30\_00(#larreco-v06_30_00)
------------------------------------------

-   2017-05-30 Lynn Garren : larreco v06\_30\_00 for larsoft v06\_37\_01
-   2017-05-30 Dorota Stefan : we use DetectDriftDetection function to correct for time offset
-   2017-05-29 Dorota Stefan : add correction for the time offset in getProjection function
-   2017-05-29 Dorota Stefan : Merge branch ‘develop’ of ssh://cdcvs.fnal.gov/cvs/projects/larreco into develop
-   2017-05-29 Dorota Stefan : adding flag for the primary neutrino vertex.
-   2017-05-28 Robert Sulej : add more exact calculation of the inference mode (with best regards to LArIAT data), and several reorganizations and optimizations by the way
-   2017-05-26 Robert Sulej : Merge branch ‘develop’ of ssh://cdcvs.fnal.gov/cvs/projects/larreco into develop
-   2017-05-26 Robert Sulej : add defaut values for parameters used by the real data dumping function
-   2017-05-26 Dorota Stefan : Merge branch ‘develop’ of ssh://cdcvs.fnal.gov/cvs/projects/larreco into develop
-   2017-05-08 Dorota Stefan : Merge branch ‘develop’ of ssh://cdcvs.fnal.gov/cvs/projects/larreco into develop
-   2017-05-08 Dorota Stefan : change the logic to save the dump: now, we choose either text file or root file

larsim v06\_23\_00(#larsim-v06_23_00)
----------------------------------------

-   2017-05-30 Lynn Garren : larsim v06\_23\_00 for larsoft v06\_37\_01
-   2017-05-30 Jason Stock : Modified code in RadioGen to allow for use of experiment specific radiologic spectra in their own FW\_SEARCH\_PATH.
-   2017-05-26 Jason Stock : Merge branch ‘develop’ of ssh://cdcvs.fnal.gov/cvs/projects/larsim into develop
-   2017-05-25 Jason Stock : Adding ability to handle neutrons to radiogen

larevt v06\_13\_04(#larevt-v06_13_04)
----------------------------------------

lardata v06\_21\_01(#lardata-v06_21_01)
------------------------------------------

larcore v06\_09\_02(#larcore-v06_09_02)
------------------------------------------

larpandoracontent v03\_06\_00(#larpandoracontent-v03_06_00)
--------------------------------------------------------------

larsoftobj v1\_20\_00(#larsoftobj-v1_20_00)
----------------------------------------------

lardataobj v1\_16\_00(#lardataobj-v1_16_00)
----------------------------------------------

larcoreobj v1\_13\_01(#larcoreobj-v1_13_01)
----------------------------------------------

larbatch v01\_32\_01(#larbatch-v01_32_01)
--------------------------------------------

-   2017-05-30 Lynn Garren : larbatch v01\_32\_01 for larsoft v06\_37\_01
-   2017-05-26 Herbert Greenlee : Turn off pubs file list truncation of maxfilesperjob is 1.

larutils v1\_14\_00(#larutils-v1_14_00)
------------------------------------------

-   2017-05-30 Lynn Garren : larutils v1\_14\_00 for larsoft v06\_37\_01
-   2017-05-23 Herbert Greenlee : Add support for building against uboonedata.
