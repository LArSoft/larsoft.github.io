LArSoft v03\_04\_06 Release Notes(#LArSoft-v03_04_06-Release-Notes)
======================================================================

-   **Table of contents**
-   [LArSoft v03\_04\_06 Release Notes](#LArSoft-v03_04_06-Release-Notes)
    -   [Purpose](#Purpose)
    -   [New features](#New-features)
    -   [Bug fixes](#Bug-fixes)
    -   [Updated dependencies](#Updated-dependencies)
-   [Change List](#Change-List)
    -   [larsoft v03\_04\_06](#larsoft-v03_04_06)
    -   [lareventdisplay v03\_02\_09](#lareventdisplay-v03_02_09)
    -   [larexamples v03\_02\_09](#larexamples-v03_02_09)
    -   [larpandora v03\_04\_02](#larpandora-v03_04_02)
    -   [larana v03\_03\_06](#larana-v03_03_06)
    -   [larreco v03\_04\_01](#larreco-v03_04_01)
    -   [larsim v03\_03\_01](#larsim-v03_03_01)
    -   [larevt v03\_02\_09](#larevt-v03_02_09)
    -   [lardata v03\_04\_02](#lardata-v03_04_02)

[list of LArSoft releases](LArSoft_release_list)\
[Download instructions](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v03_04_06/larsoft-v03_04_06.html)

Purpose(#Purpose)
--------------------

Changes in develop since v03\_04\_05

New features(#New-features)
------------------------------

Bug fixes(#Bug-fixes)
------------------------

Updated dependencies(#Updated-dependencies)
----------------------------------------------

-   larbatch v01\_00\_00 has been added to the distribution

Change List(#Change-List)
============================

larsoft v03\_04\_06(#larsoft-v03_04_06)
------------------------------------------

-   2014-12-16 Lynn Garren : larsoft v03\_04\_06 for larsoft v03\_04\_06
-   2014-12-16 Lynn Garren : update product list
-   2014-12-16 Lynn Garren : add larbatch to the distribution
-   2014-12-16 Lynn Garren : new dependencies

lareventdisplay v03\_02\_09(#lareventdisplay-v03_02_09)
----------------------------------------------------------

-   2014-12-16 Lynn Garren : lareventdisplay v03\_02\_09 for larsoft v03\_04\_06

larexamples v03\_02\_09(#larexamples-v03_02_09)
--------------------------------------------------

-   2014-12-16 Lynn Garren : larexamples v03\_02\_09 for larsoft v03\_04\_06

larpandora v03\_04\_02(#larpandora-v03_04_02)
------------------------------------------------

-   2014-12-16 Lynn Garren : larpandora v03\_04\_02 for larsoft v03\_04\_06
-   2014-12-16 John Marshall : Adjust logic for selection of event vertex when running in beam-mode.
-   2014-12-15 John Marshall : Remove tab characters.
-   2014-12-15 John Marshall : Wide-ranging improvements to reduce tension between reconstruction of tracks and showers. Improve reconstruction of particles with features obscured in one or more views. Improved mop-up functionality.

larana v03\_03\_06(#larana-v03_03_06)
----------------------------------------

-   2014-12-16 Lynn Garren : larana v03\_03\_06 for larsoft v03\_04\_06

larreco v03\_04\_01(#larreco-v03_04_01)
------------------------------------------

-   2014-12-16 Lynn Garren : larreco v03\_04\_01 for larsoft v03\_04\_06

larsim v03\_03\_01(#larsim-v03_03_01)
----------------------------------------

-   2014-12-16 Lynn Garren : larsim v03\_03\_01 for larsoft v03\_04\_06
-   2014-12-16 Brian\_Rebel : put both non-default constructors behind the \#ifndef *GCCXML* guard because genreflex does not need to know about anything but the default ctor and the data members

larevt v03\_02\_09(#larevt-v03_02_09)
----------------------------------------

-   2014-12-16 Lynn Garren : larevt v03\_02\_09 for larsoft v03\_04\_06
-   2014-12-12 Tingjun Yang : put back the argoneut list temprarily

lardata v03\_04\_02(#lardata-v03_04_02)
------------------------------------------

-   2014-12-16 Lynn Garren : lardata v03\_04\_02 for larsoft v03\_04\_06
-   2014-12-16 Brian\_Rebel : remove data member that is AuxDetType\_t in favor of using a std::string containing an experiment determined value for the AuxDetName. This scheme is now the preferred method in LArSoft according to Erica
-   2014-12-12 drinkingkazu : Merge branch ‘feature/mcreco\_update’ into develop
-   2014-12-12 drinkingkazu : Merge branch ‘develop’ into feature/mcreco\_update
-   2014-11-13 drinkingkazu : Merge branch ‘develop’ into feature/mcreco\_update
-   2014-11-12 drinkingkazu : Add Charge() function –kazu
-   2014-11-12 drinkingkazu : Change in attributes’ name propagated –kazu
-   2014-11-12 drinkingkazu : MCTrack added. MCShower updated –kazu
