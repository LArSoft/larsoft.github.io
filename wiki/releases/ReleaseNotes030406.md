LArSoft v03_04_06 Release Notes
======================================================================

-   **Table of contents**
-   [LArSoft v03_04_06 Release Notes](#LArSoft-v03_04_06-Release-Notes)
    -   [Purpose](#Purpose)
    -   [New features](#New-features)
    -   [Bug fixes](#Bug-fixes)
    -   [Updated dependencies](#Updated-dependencies)
-   [Change List](#Change-List)
    -   [larsoft v03_04_06](#larsoft-v03_04_06)
    -   [lareventdisplay v03_02_09](#lareventdisplay-v03_02_09)
    -   [larexamples v03_02_09](#larexamples-v03_02_09)
    -   [larpandora v03_04_02](#larpandora-v03_04_02)
    -   [larana v03_03_06](#larana-v03_03_06)
    -   [larreco v03_04_01](#larreco-v03_04_01)
    -   [larsim v03_03_01](#larsim-v03_03_01)
    -   [larevt v03_02_09](#larevt-v03_02_09)
    -   [lardata v03_04_02](#lardata-v03_04_02)

[list of LArSoft releases](LArSoft_release_list)
[Download instructions](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v03_04_06/larsoft-v03_04_06.html)

Purpose
--------------------

Changes in develop since v03_04_05

New features
------------------------------

Bug fixes
------------------------

Updated dependencies
----------------------------------------------

-   larbatch v01_00_00 has been added to the distribution

Change List
============================

larsoft v03_04_06
------------------------------------------

-   2014-12-16 Lynn Garren : larsoft v03_04_06 for larsoft v03_04_06
-   2014-12-16 Lynn Garren : update product list
-   2014-12-16 Lynn Garren : add larbatch to the distribution
-   2014-12-16 Lynn Garren : new dependencies

lareventdisplay v03_02_09
----------------------------------------------------------

-   2014-12-16 Lynn Garren : lareventdisplay v03_02_09 for larsoft v03_04_06

larexamples v03_02_09
--------------------------------------------------

-   2014-12-16 Lynn Garren : larexamples v03_02_09 for larsoft v03_04_06

larpandora v03_04_02
------------------------------------------------

-   2014-12-16 Lynn Garren : larpandora v03_04_02 for larsoft v03_04_06
-   2014-12-16 John Marshall : Adjust logic for selection of event vertex when running in beam-mode.
-   2014-12-15 John Marshall : Remove tab characters.
-   2014-12-15 John Marshall : Wide-ranging improvements to reduce tension between reconstruction of tracks and showers. Improve reconstruction of particles with features obscured in one or more views. Improved mop-up functionality.

larana v03_03_06
----------------------------------------

-   2014-12-16 Lynn Garren : larana v03_03_06 for larsoft v03_04_06

larreco v03_04_01
------------------------------------------

-   2014-12-16 Lynn Garren : larreco v03_04_01 for larsoft v03_04_06

larsim v03_03_01
----------------------------------------

-   2014-12-16 Lynn Garren : larsim v03_03_01 for larsoft v03_04_06
-   2014-12-16 Brian_Rebel : put both non-default constructors behind the \#ifndef *GCCXML* guard because genreflex does not need to know about anything but the default ctor and the data members

larevt v03_02_09
----------------------------------------

-   2014-12-16 Lynn Garren : larevt v03_02_09 for larsoft v03_04_06
-   2014-12-12 Tingjun Yang : put back the argoneut list temprarily

lardata v03_04_02
------------------------------------------

-   2014-12-16 Lynn Garren : lardata v03_04_02 for larsoft v03_04_06
-   2014-12-16 Brian_Rebel : remove data member that is AuxDetType_t in favor of using a std::string containing an experiment determined value for the AuxDetName. This scheme is now the preferred method in LArSoft according to Erica
-   2014-12-12 drinkingkazu : Merge branch ‘feature/mcreco_update’ into develop
-   2014-12-12 drinkingkazu : Merge branch ‘develop’ into feature/mcreco_update
-   2014-11-13 drinkingkazu : Merge branch ‘develop’ into feature/mcreco_update
-   2014-11-12 drinkingkazu : Add Charge() function –kazu
-   2014-11-12 drinkingkazu : Change in attributes’ name propagated –kazu
-   2014-11-12 drinkingkazu : MCTrack added. MCShower updated –kazu
