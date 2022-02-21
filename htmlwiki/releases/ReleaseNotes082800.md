LArSoft v08_28_00 Release Notes
======================================================================

[list of LArSoft releases](LArSoft_release_list)
Download instructions for [larsoft v08_28_00](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v08_28_00/larsoft-v08_28_00.html)
Download instructions for [just larsoftobj v08_17_02](http://scisoft.fnal.gov/scisoft/bundles/larsoftobj/v08_17_02/larsoftobj-v08_17_02.html)

Purpose
--------------------

-   migrate to genie v3_00_06
-   support for optionally building with python3

New features
------------------------------

-   Python3 builds require an additional py3 qualifier.
-   feature/team_for_v08_28_00 is provided for experiment code

Breaking Changes
--------------------------------------

-   Moving to genie v3_00_06 is a [breaking change](Breaking_Changes#genie-v3_00_06).
    -   UseGenie3.sh is found in nugen. This script will update the headers.
    -   There is NO one-to-one mapping from genie v2 libraries to genie v3 libraries. Please use the provided feature branch.
-   The genie_xsec qualifiers have changed.
-   feature/team_for_v08_28_00 is provided for experiment code

Updated dependencies
----------------------------------------------

-   genie v3_00_06
-   genie_xsec v3_00_04a
    -   do not use genie_xsec v3_00_04
    -   see [https://genie-docdb.pp.rl.ac.uk/DocDB/0001/000129/001/genie_forum_16july.pdf](https://genie-docdb.pp.rl.ac.uk/DocDB/0001/000129/001/genie_forum_16july.pdf)
-   genie_phyopt v3_00_04
-   dk2nugenie v01_08_00b
-   nugen v1_03_00
-   nug4 v1_00_01
-   nutools v3_02_01
-   nusimdata v1_17_02
-   ifdhc v2_4_6
-   ifdh_art v2_08_06

Change List
============================

larsoft v08_28_00
------------------------------------------

-   2019-08-08 Lynn Garren : larsoft v08_28_00 for larsoft v08_28_00
-   2019-08-08 Lynn Garren : update versions
-   2019-08-08 Lynn Garren : build artg4tk in larbase
-   2019-08-08 Lynn Garren : adding py3 support
-   2019-08-08 Lynn Garren : adding py3 build option
-   2019-08-07 Lynn Garren : for genie v3
-   2019-08-07 Lynn Garren : first pass
-   2019-08-07 Lynn Garren : genie v3 scripts
-   2019-08-07 Lynn Garren : nutools v3_02_01

lareventdisplay v08_08_07
----------------------------------------------------------

-   2019-08-08 Lynn Garren : lareventdisplay v08_08_07 for larsoft v08_28_00
-   2019-08-08 Lynn Garren : adding py3 support

larexamples v08_02_14
--------------------------------------------------

-   2019-08-08 Lynn Garren : larexamples v08_02_14 for larsoft v08_28_00
-   2019-08-08 Lynn Garren : adding py3 support

larg4 v08_03_12
--------------------------------------

-   2019-08-08 Lynn Garren : larg4 v08_03_12 for larsoft v08_28_00
-   2019-08-08 Lynn Garren : adding py3 support
-   2019-08-07 Lynn Garren : nutools v3_02_01

larpandora v08_07_11
------------------------------------------------

-   2019-08-08 Lynn Garren : larpandora v08_07_11 for larsoft v08_28_00
-   2019-08-08 Lynn Garren : adding py3 support

larwirecell v08_05_12
--------------------------------------------------

-   2019-08-08 Lynn Garren : larwirecell v08_05_12 for larsoft v08_28_00
-   2019-08-08 Lynn Garren : adding py3 support

larana v08_10_07
----------------------------------------

-   2019-08-08 Lynn Garren : larana v08_10_07 for larsoft v08_28_00
-   2019-08-08 Lynn Garren : adding py3 support

larreco v08_16_04
------------------------------------------

-   2019-08-08 Lynn Garren : larreco v08_16_04 for larsoft v08_28_00
-   2019-08-08 Lynn Garren : adding py3 support

larsim v08_12_00
----------------------------------------

-   2019-08-08 Lynn Garren : larsim v08_12_00 for larsoft v08_28_00
-   2019-08-08 Lynn Garren : adding py3 support
-   2019-08-07 Lynn Garren : for genie v3

larevt v08_06_05
----------------------------------------

-   2019-08-08 Lynn Garren : larevt v08_06_05 for larsoft v08_28_00
-   2019-08-08 Lynn Garren : adding py3 support

lardata v08_07_03
------------------------------------------

-   2019-08-08 Lynn Garren : lardata v08_07_03 for larsoft v08_28_00
-   2019-08-08 Lynn Garren : adding py3 support

larcore v08_04_08
------------------------------------------

-   2019-08-08 Lynn Garren : larcore v08_04_08 for larsoft v08_28_00
-   2019-08-08 Lynn Garren : adding py3 support

larpandoracontent v03_15_03
--------------------------------------------------------------

larsoftobj v08_17_02
------------------------------------------------

-   2019-08-08 Lynn Garren : larsoftobj v08_17_02 for larsoft v08_28_00
-   2019-08-08 Lynn Garren : update versions
-   2019-08-08 Lynn Garren : support py3 builds
-   2019-08-08 Lynn Garren : adding py3 support
-   2019-08-07 Lynn Garren : for genie v3 compatibility

lardataobj v08_04_08
------------------------------------------------

-   2019-08-08 Lynn Garren : lardataobj v08_04_08 for larsoft v08_28_00
-   2019-08-08 Lynn Garren : adding py3 support
-   2019-08-07 Lynn Garren : nusimdata v1_17_02

lardataalg v08_08_03
------------------------------------------------

-   2019-08-08 Lynn Garren : lardataalg v08_08_03 for larsoft v08_28_00
-   2019-08-08 Lynn Garren : adding py3 support

larcorealg v08_14_01
------------------------------------------------

-   2019-08-08 Lynn Garren : larcorealg v08_14_01 for larsoft v08_28_00
-   2019-08-08 Lynn Garren : adding py3 support

larcoreobj v08_05_02
------------------------------------------------

-   2019-08-08 Lynn Garren : larcoreobj v08_05_02 for larsoft v08_28_00
-   2019-08-08 Lynn Garren : adding py3 support

larbatch v01_51_06
--------------------------------------------

larutils v1_24_00
------------------------------------------
