LArSoft v08\_28\_00 Release Notes
======================================================================

-   **Table of contents**
-   [LArSoft v08\_28\_00 Release Notes](#LArSoft-v08_28_00-Release-Notes)
    -   [Purpose](#Purpose)
    -   [New features](#New-features)
    -   [Breaking Changes](#Breaking-Changes)
    -   [Updated dependencies](#Updated-dependencies)
-   [Change List](#Change-List)
    -   [larsoft v08\_28\_00](#larsoft-v08_28_00)
    -   [lareventdisplay v08\_08\_07](#lareventdisplay-v08_08_07)
    -   [larexamples v08\_02\_14](#larexamples-v08_02_14)
    -   [larg4 v08\_03\_12](#larg4-v08_03_12)
    -   [larpandora v08\_07\_11](#larpandora-v08_07_11)
    -   [larwirecell v08\_05\_12](#larwirecell-v08_05_12)
    -   [larana v08\_10\_07](#larana-v08_10_07)
    -   [larreco v08\_16\_04](#larreco-v08_16_04)
    -   [larsim v08\_12\_00](#larsim-v08_12_00)
    -   [larevt v08\_06\_05](#larevt-v08_06_05)
    -   [lardata v08\_07\_03](#lardata-v08_07_03)
    -   [larcore v08\_04\_08](#larcore-v08_04_08)
    -   [larpandoracontent v03\_15\_03](#larpandoracontent-v03_15_03)
    -   [larsoftobj v08\_17\_02](#larsoftobj-v08_17_02)
    -   [lardataobj v08\_04\_08](#lardataobj-v08_04_08)
    -   [lardataalg v08\_08\_03](#lardataalg-v08_08_03)
    -   [larcorealg v08\_14\_01](#larcorealg-v08_14_01)
    -   [larcoreobj v08\_05\_02](#larcoreobj-v08_05_02)
    -   [larbatch v01\_51\_06](#larbatch-v01_51_06)
    -   [larutils v1\_24\_00](#larutils-v1_24_00)

[list of LArSoft releases](LArSoft_release_list)
Download instructions for [larsoft v08\_28\_00](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v08_28_00/larsoft-v08_28_00.html)
Download instructions for [just larsoftobj v08\_17\_02](http://scisoft.fnal.gov/scisoft/bundles/larsoftobj/v08_17_02/larsoftobj-v08_17_02.html)

Purpose
--------------------

-   migrate to genie v3\_00\_06
-   support for optionally building with python3

New features
------------------------------

-   Python3 builds require an additional py3 qualifier.
-   feature/team\_for\_v08\_28\_00 is provided for experiment code

Breaking Changes
--------------------------------------

-   Moving to genie v3\_00\_06 is a [breaking change](Breaking_Changes#genie-v3_00_06).
    -   UseGenie3.sh is found in nugen. This script will update the headers.
    -   There is NO one-to-one mapping from genie v2 libraries to genie v3 libraries. Please use the provided feature branch.
-   The genie\_xsec qualifiers have changed.
-   feature/team\_for\_v08\_28\_00 is provided for experiment code

Updated dependencies
----------------------------------------------

-   genie v3\_00\_06
-   genie\_xsec v3\_00\_04a
    -   do not use genie\_xsec v3\_00\_04
    -   see [https://genie-docdb.pp.rl.ac.uk/DocDB/0001/000129/001/genie\_forum\_16july.pdf](https://genie-docdb.pp.rl.ac.uk/DocDB/0001/000129/001/genie_forum_16july.pdf)
-   genie\_phyopt v3\_00\_04
-   dk2nugenie v01\_08\_00b
-   nugen v1\_03\_00
-   nug4 v1\_00\_01
-   nutools v3\_02\_01
-   nusimdata v1\_17\_02
-   ifdhc v2\_4\_6
-   ifdh\_art v2\_08\_06

Change List
============================

larsoft v08\_28\_00
------------------------------------------

-   2019-08-08 Lynn Garren : larsoft v08\_28\_00 for larsoft v08\_28\_00
-   2019-08-08 Lynn Garren : update versions
-   2019-08-08 Lynn Garren : build artg4tk in larbase
-   2019-08-08 Lynn Garren : adding py3 support
-   2019-08-08 Lynn Garren : adding py3 build option
-   2019-08-07 Lynn Garren : for genie v3
-   2019-08-07 Lynn Garren : first pass
-   2019-08-07 Lynn Garren : genie v3 scripts
-   2019-08-07 Lynn Garren : nutools v3\_02\_01

lareventdisplay v08\_08\_07
----------------------------------------------------------

-   2019-08-08 Lynn Garren : lareventdisplay v08\_08\_07 for larsoft v08\_28\_00
-   2019-08-08 Lynn Garren : adding py3 support

larexamples v08\_02\_14
--------------------------------------------------

-   2019-08-08 Lynn Garren : larexamples v08\_02\_14 for larsoft v08\_28\_00
-   2019-08-08 Lynn Garren : adding py3 support

larg4 v08\_03\_12
--------------------------------------

-   2019-08-08 Lynn Garren : larg4 v08\_03\_12 for larsoft v08\_28\_00
-   2019-08-08 Lynn Garren : adding py3 support
-   2019-08-07 Lynn Garren : nutools v3\_02\_01

larpandora v08\_07\_11
------------------------------------------------

-   2019-08-08 Lynn Garren : larpandora v08\_07\_11 for larsoft v08\_28\_00
-   2019-08-08 Lynn Garren : adding py3 support

larwirecell v08\_05\_12
--------------------------------------------------

-   2019-08-08 Lynn Garren : larwirecell v08\_05\_12 for larsoft v08\_28\_00
-   2019-08-08 Lynn Garren : adding py3 support

larana v08\_10\_07
----------------------------------------

-   2019-08-08 Lynn Garren : larana v08\_10\_07 for larsoft v08\_28\_00
-   2019-08-08 Lynn Garren : adding py3 support

larreco v08\_16\_04
------------------------------------------

-   2019-08-08 Lynn Garren : larreco v08\_16\_04 for larsoft v08\_28\_00
-   2019-08-08 Lynn Garren : adding py3 support

larsim v08\_12\_00
----------------------------------------

-   2019-08-08 Lynn Garren : larsim v08\_12\_00 for larsoft v08\_28\_00
-   2019-08-08 Lynn Garren : adding py3 support
-   2019-08-07 Lynn Garren : for genie v3

larevt v08\_06\_05
----------------------------------------

-   2019-08-08 Lynn Garren : larevt v08\_06\_05 for larsoft v08\_28\_00
-   2019-08-08 Lynn Garren : adding py3 support

lardata v08\_07\_03
------------------------------------------

-   2019-08-08 Lynn Garren : lardata v08\_07\_03 for larsoft v08\_28\_00
-   2019-08-08 Lynn Garren : adding py3 support

larcore v08\_04\_08
------------------------------------------

-   2019-08-08 Lynn Garren : larcore v08\_04\_08 for larsoft v08\_28\_00
-   2019-08-08 Lynn Garren : adding py3 support

larpandoracontent v03\_15\_03
--------------------------------------------------------------

larsoftobj v08\_17\_02
------------------------------------------------

-   2019-08-08 Lynn Garren : larsoftobj v08\_17\_02 for larsoft v08\_28\_00
-   2019-08-08 Lynn Garren : update versions
-   2019-08-08 Lynn Garren : support py3 builds
-   2019-08-08 Lynn Garren : adding py3 support
-   2019-08-07 Lynn Garren : for genie v3 compatibility

lardataobj v08\_04\_08
------------------------------------------------

-   2019-08-08 Lynn Garren : lardataobj v08\_04\_08 for larsoft v08\_28\_00
-   2019-08-08 Lynn Garren : adding py3 support
-   2019-08-07 Lynn Garren : nusimdata v1\_17\_02

lardataalg v08\_08\_03
------------------------------------------------

-   2019-08-08 Lynn Garren : lardataalg v08\_08\_03 for larsoft v08\_28\_00
-   2019-08-08 Lynn Garren : adding py3 support

larcorealg v08\_14\_01
------------------------------------------------

-   2019-08-08 Lynn Garren : larcorealg v08\_14\_01 for larsoft v08\_28\_00
-   2019-08-08 Lynn Garren : adding py3 support

larcoreobj v08\_05\_02
------------------------------------------------

-   2019-08-08 Lynn Garren : larcoreobj v08\_05\_02 for larsoft v08\_28\_00
-   2019-08-08 Lynn Garren : adding py3 support

larbatch v01\_51\_06
--------------------------------------------

larutils v1\_24\_00
------------------------------------------
