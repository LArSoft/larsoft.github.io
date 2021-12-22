LArSoft v08\_61\_00 Release Notes(#LArSoft-v08_61_00-Release-Notes)
======================================================================

-   **Table of contents**
-   [LArSoft v08\_61\_00 Release Notes](#LArSoft-v08_61_00-Release-Notes)
    -   [Purpose](#Purpose)
    -   [New features](#New-features)
    -   [Bug fixes](#Bug-fixes)
    -   [Updated dependencies](#Updated-dependencies)
-   [Change List](#Change-List)
    -   [larsoft v08\_61\_00](#larsoft-v08_61_00)
    -   [lareventdisplay v08\_12\_24](#lareventdisplay-v08_12_24)
    -   [larexamples v08\_06\_24](#larexamples-v08_06_24)
    -   [larg4 v08\_14\_07](#larg4-v08_14_07)
    -   [larpandora v08\_13\_04](#larpandora-v08_13_04)
    -   [larsimrad v08\_00\_02](#larsimrad-v08_00_02)
    -   [larrecodnn v08\_06\_04](#larrecodnn-v08_06_04)
    -   [larwirecell v08\_12\_17](#larwirecell-v08_12_17)
    -   [larana v08\_17\_16](#larana-v08_17_16)
    -   [larreco v08\_32\_09](#larreco-v08_32_09)
    -   [larsim v08\_32\_00](#larsim-v08_32_00)
    -   [larevt v08\_12\_01](#larevt-v08_12_01)
    -   [lardata v08\_15\_10](#lardata-v08_15_10)
    -   [larcore v08\_11\_10](#larcore-v08_11_10)
    -   [larpandoracontent v03\_19\_01](#larpandoracontent-v03_19_01)
    -   [larsoftobj v08\_29\_03](#larsoftobj-v08_29_03)
    -   [lardataobj v08\_11\_03](#lardataobj-v08_11_03)
    -   [lardataalg v08\_13\_15](#lardataalg-v08_13_15)
    -   [larcorealg v08\_22\_02](#larcorealg-v08_22_02)
    -   [larcoreobj v08\_12\_01](#larcoreobj-v08_12_01)
    -   [webevd v08\_01\_00](#webevd-v08_01_00)
    -   [larbatch v01\_52\_02](#larbatch-v01_52_02)
    -   [larutils v1\_26\_01](#larutils-v1_26_01)

[list of LArSoft releases](LArSoft_release_list)\
Download instructions for [larsoft v08\_61\_00](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v08_61_00/larsoft-v08_61_00.html)\
Download instructions for [just larsoftobj v08\_29\_03](http://scisoft.fnal.gov/scisoft/bundles/larsoftobj/v08_29_03/larsoftobj-v08_29_03.html)

Purpose(#Purpose)
--------------------

-   changes in develop
-   approved PRs

New features(#New-features)
------------------------------

-   larsim PR 32
    -   Add (hopefully) simple to use truth matching utilities
    -   Utilities use the back tracker service under the hood.
    -   All are freestanding functions wrapped in a namespace, rather than in a class structure.
    -   The functions take either a art::Ptr\<recob::Hit\> or a std::vector\<art::Ptr\<recob::Hit\> \> and return the ID of the most significantly contributing G4 particle. There are different functions for the various definitions of ‘most significantly contributing’.
    -   I’ve attempted to balance efficiency and readability: for utility functions that tend to act on containers that only have \~10 or so elements in them (the elements here are G4 IDs matched to the hit vectors), I think a certain amount of inefficiency can be allowed if it helps with clarity/intent.

Bug fixes(#Bug-fixes)
------------------------

Updated dependencies(#Updated-dependencies)
----------------------------------------------

-   pandora v03\_15\_00

Change List(#Change-List)
============================

larsoft v08\_61\_00(#larsoft-v08_61_00)
------------------------------------------

-   2020-08-04 Lynn Garren : larsoft v08\_61\_00 for larsoft v08\_61\_00
-   2020-08-04 Lynn Garren : product versions

lareventdisplay v08\_12\_24(#lareventdisplay-v08_12_24)
----------------------------------------------------------

-   2020-08-04 Lynn Garren : lareventdisplay v08\_12\_24 for larsoft v08\_61\_00

larexamples v08\_06\_24(#larexamples-v08_06_24)
--------------------------------------------------

-   2020-08-04 Lynn Garren : larexamples v08\_06\_24 for larsoft v08\_61\_00

larg4 v08\_14\_07(#larg4-v08_14_07)
--------------------------------------

larpandora v08\_13\_04(#larpandora-v08_13_04)
------------------------------------------------

-   2020-08-04 Lynn Garren : larpandora v08\_13\_04 for larsoft v08\_61\_00

larsimrad v08\_00\_02(#larsimrad-v08_00_02)
----------------------------------------------

-   2020-08-04 Lynn Garren : larsimrad v08\_00\_02 for larsoft v08\_61\_00

larrecodnn v08\_06\_04(#larrecodnn-v08_06_04)
------------------------------------------------

-   2020-08-04 Lynn Garren : larrecodnn v08\_06\_04 for larsoft v08\_61\_00

larwirecell v08\_12\_17(#larwirecell-v08_12_17)
--------------------------------------------------

larana v08\_17\_16(#larana-v08_17_16)
----------------------------------------

-   2020-08-04 Lynn Garren : larana v08\_17\_16 for larsoft v08\_61\_00

larreco v08\_32\_09(#larreco-v08_32_09)
------------------------------------------

-   2020-08-04 Lynn Garren : larreco v08\_32\_09 for larsoft v08\_61\_00

larsim v08\_32\_00(#larsim-v08_32_00)
----------------------------------------

-   2020-08-04 Lynn Garren : larsim v08\_32\_00 for larsoft v08\_61\_00
-   2020-08-04 Lynn Garren : Merge pull request \#32 from absolution1/dbrailsf\_truthmatchutils
-   2020-08-04 Dom Brailsford : Function for checking whether a returned G4ID is valid. The kNoG4ID has been removed from the header and redeclared in the anon. namespace in the imp file
-   2020-08-04 Dom Brailsford : Use more C++11/17 features
-   2020-07-20 Dom Brailsford : Add (hopefully) simple to use truth matching utilities, based on the back tracker service. All are freestanding functions wrapped in a namespace, rather than in a class structure.

larevt v08\_12\_01(#larevt-v08_12_01)
----------------------------------------

lardata v08\_15\_10(#lardata-v08_15_10)
------------------------------------------

larcore v08\_11\_10(#larcore-v08_11_10)
------------------------------------------

larpandoracontent v03\_19\_01(#larpandoracontent-v03_19_01)
--------------------------------------------------------------

-   2020-08-04 Lynn Garren : larpandoracontent v03\_19\_01 for larsoft v08\_61\_00
-   2020-08-04 Lynn Garren : larpandoracontent v03\_19\_01 with pandora v03\_15\_00

larsoftobj v08\_29\_03(#larsoftobj-v08_29_03)
------------------------------------------------

lardataobj v08\_11\_03(#lardataobj-v08_11_03)
------------------------------------------------

lardataalg v08\_13\_15(#lardataalg-v08_13_15)
------------------------------------------------

larcorealg v08\_22\_02(#larcorealg-v08_22_02)
------------------------------------------------

larcoreobj v08\_12\_01(#larcoreobj-v08_12_01)
------------------------------------------------

webevd v08\_01\_00(#webevd-v08_01_00)
----------------------------------------

larbatch v01\_52\_02(#larbatch-v01_52_02)
--------------------------------------------

larutils v1\_26\_01(#larutils-v1_26_01)
------------------------------------------
