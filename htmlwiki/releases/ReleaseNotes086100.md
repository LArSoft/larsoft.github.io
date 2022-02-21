LArSoft v08_61_00 Release Notes
======================================================================

[list of LArSoft releases](LArSoft_release_list)
Download instructions for [larsoft v08_61_00](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v08_61_00/larsoft-v08_61_00.html)
Download instructions for [just larsoftobj v08_29_03](http://scisoft.fnal.gov/scisoft/bundles/larsoftobj/v08_29_03/larsoftobj-v08_29_03.html)

Purpose
--------------------

-   changes in develop
-   approved PRs

New features
------------------------------

-   larsim PR 32
    -   Add (hopefully) simple to use truth matching utilities
    -   Utilities use the back tracker service under the hood.
    -   All are freestanding functions wrapped in a namespace, rather than in a class structure.
    -   The functions take either a art::Ptr\<recob::Hit\> or a std::vector\<art::Ptr\<recob::Hit\> \> and return the ID of the most significantly contributing G4 particle. There are different functions for the various definitions of ‘most significantly contributing’.
    -   I’ve attempted to balance efficiency and readability: for utility functions that tend to act on containers that only have \~10 or so elements in them (the elements here are G4 IDs matched to the hit vectors), I think a certain amount of inefficiency can be allowed if it helps with clarity/intent.

Bug fixes
------------------------

Updated dependencies
----------------------------------------------

-   pandora v03_15_00

Change List
============================

larsoft v08_61_00
------------------------------------------

-   2020-08-04 Lynn Garren : larsoft v08_61_00 for larsoft v08_61_00
-   2020-08-04 Lynn Garren : product versions

lareventdisplay v08_12_24
----------------------------------------------------------

-   2020-08-04 Lynn Garren : lareventdisplay v08_12_24 for larsoft v08_61_00

larexamples v08_06_24
--------------------------------------------------

-   2020-08-04 Lynn Garren : larexamples v08_06_24 for larsoft v08_61_00

larg4 v08_14_07
--------------------------------------

larpandora v08_13_04
------------------------------------------------

-   2020-08-04 Lynn Garren : larpandora v08_13_04 for larsoft v08_61_00

larsimrad v08_00_02
----------------------------------------------

-   2020-08-04 Lynn Garren : larsimrad v08_00_02 for larsoft v08_61_00

larrecodnn v08_06_04
------------------------------------------------

-   2020-08-04 Lynn Garren : larrecodnn v08_06_04 for larsoft v08_61_00

larwirecell v08_12_17
--------------------------------------------------

larana v08_17_16
----------------------------------------

-   2020-08-04 Lynn Garren : larana v08_17_16 for larsoft v08_61_00

larreco v08_32_09
------------------------------------------

-   2020-08-04 Lynn Garren : larreco v08_32_09 for larsoft v08_61_00

larsim v08_32_00
----------------------------------------

-   2020-08-04 Lynn Garren : larsim v08_32_00 for larsoft v08_61_00
-   2020-08-04 Lynn Garren : Merge pull request \#32 from absolution1/dbrailsf_truthmatchutils
-   2020-08-04 Dom Brailsford : Function for checking whether a returned G4ID is valid. The kNoG4ID has been removed from the header and redeclared in the anon. namespace in the imp file
-   2020-08-04 Dom Brailsford : Use more C++11/17 features
-   2020-07-20 Dom Brailsford : Add (hopefully) simple to use truth matching utilities, based on the back tracker service. All are freestanding functions wrapped in a namespace, rather than in a class structure.

larevt v08_12_01
----------------------------------------

lardata v08_15_10
------------------------------------------

larcore v08_11_10
------------------------------------------

larpandoracontent v03_19_01
--------------------------------------------------------------

-   2020-08-04 Lynn Garren : larpandoracontent v03_19_01 for larsoft v08_61_00
-   2020-08-04 Lynn Garren : larpandoracontent v03_19_01 with pandora v03_15_00

larsoftobj v08_29_03
------------------------------------------------

lardataobj v08_11_03
------------------------------------------------

lardataalg v08_13_15
------------------------------------------------

larcorealg v08_22_02
------------------------------------------------

larcoreobj v08_12_01
------------------------------------------------

webevd v08_01_00
----------------------------------------

larbatch v01_52_02
--------------------------------------------

larutils v1_26_01
------------------------------------------
