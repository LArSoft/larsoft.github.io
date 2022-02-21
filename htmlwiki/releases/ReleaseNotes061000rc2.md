LArSoft v06_10_00_rc2 Release Notes
===============================================================================

[list of LArSoft releases](LArSoft_release_list)
[Download instructions](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v06_10_00_rc2/larsoft-v06_10_00_rc2.html)

Purpose
--------------------

-   created from the larsoft v06_08_00 tag
-   allow testing of GENIE, Geant4, and ifdhc 2

New features
------------------------------

-   The v06_10_00_rc branch is also available for argoneutcode, dunetpc, lariatsoft, and uboonecode.
-   A docker image is available: docker pull fnalart/larsoft:v06_10_00_rc2-s42-e10-prof
    -   Please note that this image starts with larsoft already setup and ready to use.

Bug fixes
------------------------

Updated dependencies
----------------------------------------------

||
|Product|Version|Qualifiers|Notes|
|nutools|v2_04_03|e10|nutools 2.04.xx are beta releases for use with larsoft 6.10.00.rc|
|ifdh_art|v2_00_00_rc0|e10:nu:s42||
|ifdhc|b2_0_3|e10:p2711||
|geant4|v4_10_2_p02b|e10||
|genie|v2_11_2|e10:r6||
|genie_phyopt|v2_11_0|dkcharmtau||
|genie_xsec|v2_11_0|DefaultPlusMECWithNCUseOldBYScaleVar||
|genie_xsec|v2_11_0|EffSFTEMUseOldBYScaleVar||
|dk2nu|v01_04_01b|e10:r6||

Change List
============================

larsoft v06_10_00_rc2
---------------------------------------------------

-   2016-10-04 Lynn Garren : larsoftobj cfg file
-   2016-10-04 Lynn Garren : the nu distribution has git v2_8_2 and gitflow v1_9_1
-   2016-10-03 Lynn Garren : larsoft v06_10_00_rc2
-   2016-10-03 Lynn Garren : new config files
-   2016-10-03 Lynn Garren : ifdhc b2_0_3, genie v2_11_2, and geant4 v4_10_2_p02b
-   2016-09-30 Lynn Garren : Merge tag ‘LARSOFT_SUITE_v06_08_00’ into v06_10_00_rc
-   2016-09-09 Lynn Garren : update the source code manifest
-   2016-09-09 Lynn Garren : v06_10_00_rc1 with nutools v2_04_01

lareventdisplay v06_10_00_rc2
-------------------------------------------------------------------

-   2016-10-03 Lynn Garren : lareventdisplay v06_10_00_rc2
-   2016-09-30 Lynn Garren : Merge tag ‘LARSOFT_SUITE_v06_08_00’ into v06_10_00_rc
-   2016-09-09 Lynn Garren : v06_10_00_rc1

larexamples v06_10_00_rc2
-----------------------------------------------------------

-   2016-10-03 Lynn Garren : larexamples v06_10_00_rc2
-   2016-09-30 Lynn Garren : Merge tag ‘LARSOFT_SUITE_v06_08_00’ into v06_10_00_rc
-   2016-09-09 Lynn Garren : v06_10_00_rc1

larpandora v06_10_00_rc2
---------------------------------------------------------

-   2016-10-03 Lynn Garren : larpandora v06_10_00_rc2
-   2016-09-30 Lynn Garren : Merge tag ‘LARSOFT_SUITE_v06_08_00’ into v06_10_00_rc
-   2016-09-09 Lynn Garren : v06_10_00_rc1

larana v06_10_00_rc2
-------------------------------------------------

-   2016-10-03 Lynn Garren : larana v06_10_00_rc2
-   2016-09-30 Lynn Garren : Merge tag ‘LARSOFT_SUITE_v06_08_00’ into v06_10_00_rc
-   2016-09-09 Lynn Garren : larana v06_10_00_rc1

larreco v06_10_00_rc2
---------------------------------------------------

-   2016-10-03 Lynn Garren : larreco v06_10_00_rc2
-   2016-09-30 Lynn Garren : Merge tag ‘LARSOFT_SUITE_v06_08_00’ into v06_10_00_rc
-   2016-09-26 Lynn Garren : revert to nutools v2_04_00 with geant4 v4_10_2_p02a
-   2016-09-09 Lynn Garren : v06_10_00_rc1 with nutools v2_04_01

larsim v06_10_00_rc2
-------------------------------------------------

-   2016-10-03 Lynn Garren : larsim v06_10_00_rc2
-   2016-09-30 Lynn Garren : Merge tag ‘LARSOFT_SUITE_v06_08_00’ into v06_10_00_rc
-   2016-09-26 Hans-Joachim Wenzel : replace VisibleEnergyDeposition with \>VisibleEnergyDepositionAtAStep
-   2016-09-09 Lynn Garren : v06_10_00_rc1

larevt v06_10_00_rc2
-------------------------------------------------

-   2016-10-03 Lynn Garren : larevt v06_10_00_rc2
-   2016-09-30 Lynn Garren : Merge tag ‘LARSOFT_SUITE_v06_08_00’ into v06_10_00_rc
-   2016-09-09 Lynn Garren : v06_10_00_rc1

lardata v06_10_00_rc2
---------------------------------------------------

-   2016-10-03 Lynn Garren : lardata v06_10_00_rc2
-   2016-09-30 Lynn Garren : Merge tag ‘LARSOFT_SUITE_v06_08_00’ into v06_10_00_rc
-   2016-09-26 Lynn Garren : revert to nutools v2_04_00 with geant4 v4_10_2_p02a
-   2016-09-09 Lynn Garren : lardata v06_10_00_rc1 with nutools v2_04_01

larcore v06_10_00_rc2
---------------------------------------------------

-   2016-10-03 Lynn Garren : larcore v06_10_00_rc2
-   2016-09-30 Lynn Garren : Merge tag ‘LARSOFT_SUITE_v06_08_00’ into v06_10_00_rc

larsoftobj v1_07_00
----------------------------------------------

lardataobj v1_07_00
----------------------------------------------

larcoreobj v1_05_00
----------------------------------------------

larbatch v01_23_06
--------------------------------------------

larutils v1_08_06
------------------------------------------
