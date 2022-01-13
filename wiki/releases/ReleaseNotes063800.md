LArSoft v06_38_00 Release Notes
======================================================================

[list of LArSoft releases](LArSoft_release_list)
Download instructions for [larsoft v06_38_00](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v06_38_00/larsoft-v06_38_00.html)
Download instructions for [just larsoftobj v1_20_00](http://scisoft.fnal.gov/scisoft/bundles/larsoftobj/v1_20_00/larsoftobj-v1_20_00.html)

Purpose
--------------------

-   changes to develop
-   merge approved feature branches

New features
------------------------------

-   radiological generator
    -   larsim, dunetpc feature/JStock_RadioGen_SearchForNuclide

Bug fixes
------------------------

Updated dependencies
----------------------------------------------

Change List
============================

larsoft v06_38_00
------------------------------------------

-   2017-05-30 Lynn Garren : larsoft v06_38_00 for larsoft v06_37_01
-   2017-05-30 Lynn Garren : update product versions
-   2017-05-30 Lynn Garren : update dependency database

lareventdisplay v06_05_07
----------------------------------------------------------

-   2017-05-30 Lynn Garren : lareventdisplay v06_05_07 for larsoft v06_37_01

larexamples v06_03_07
--------------------------------------------------

-   2017-05-30 Lynn Garren : larexamples v06_03_07 for larsoft v06_37_01

larpandora v06_11_01
------------------------------------------------

-   2017-05-30 Lynn Garren : larpandora v06_11_01 for larsoft v06_37_01

larwirecell v06_04_06
--------------------------------------------------

larana v06_06_02
----------------------------------------

-   2017-05-30 Lynn Garren : larana v06_06_02 for larsoft v06_37_01

larreco v06_30_00
------------------------------------------

-   2017-05-30 Lynn Garren : larreco v06_30_00 for larsoft v06_37_01
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

larsim v06_23_00
----------------------------------------

-   2017-05-30 Lynn Garren : larsim v06_23_00 for larsoft v06_37_01
-   2017-05-30 Jason Stock : Modified code in RadioGen to allow for use of experiment specific radiologic spectra in their own FW_SEARCH_PATH.
-   2017-05-26 Jason Stock : Merge branch ‘develop’ of ssh://cdcvs.fnal.gov/cvs/projects/larsim into develop
-   2017-05-25 Jason Stock : Adding ability to handle neutrons to radiogen

larevt v06_13_04
----------------------------------------

lardata v06_21_01
------------------------------------------

larcore v06_09_02
------------------------------------------

larpandoracontent v03_06_00
--------------------------------------------------------------

larsoftobj v1_20_00
----------------------------------------------

lardataobj v1_16_00
----------------------------------------------

larcoreobj v1_13_01
----------------------------------------------

larbatch v01_32_01
--------------------------------------------

-   2017-05-30 Lynn Garren : larbatch v01_32_01 for larsoft v06_37_01
-   2017-05-26 Herbert Greenlee : Turn off pubs file list truncation of maxfilesperjob is 1.

larutils v1_14_00
------------------------------------------

-   2017-05-30 Lynn Garren : larutils v1_14_00 for larsoft v06_37_01
-   2017-05-23 Herbert Greenlee : Add support for building against uboonedata.
