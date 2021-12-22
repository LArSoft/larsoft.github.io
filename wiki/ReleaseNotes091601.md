LArSoft v09\_16\_01 Release Notes(#LArSoft-v09_16_01-Release-Notes)
======================================================================

-   **Table of contents**
-   [LArSoft v09\_16\_01 Release Notes](#LArSoft-v09_16_01-Release-Notes)
    -   [Purpose](#Purpose)
    -   [New features](#New-features)
    -   [Bug fixes](#Bug-fixes)
    -   [Updated dependencies](#Updated-dependencies)
-   [Change List](#Change-List)
    -   [larsoft v09\_16\_01](#larsoft-v09_16_01)
    -   [lareventdisplay v09\_01\_00](#lareventdisplay-v09_01_00)
    -   [larexamples v09\_01\_00](#larexamples-v09_01_00)
    -   [larpandora v09\_05\_01](#larpandora-v09_05_01)
    -   [larsimrad v09\_01\_00](#larsimrad-v09_01_00)
    -   [larrecodnn v09\_05\_01](#larrecodnn-v09_05_01)
    -   [larwirecell v09\_02\_00](#larwirecell-v09_02_00)
    -   [larana v09\_01\_00](#larana-v09_01_00)
    -   [larreco v09\_05\_00](#larreco-v09_05_00)
    -   [larsim v09\_09\_00](#larsim-v09_09_00)
    -   [larg4 v09\_03\_00](#larg4-v09_03_00)
    -   [larevt v09\_02\_00](#larevt-v09_02_00)
    -   [lardata v09\_02\_00](#lardata-v09_02_00)
    -   [larcore v09\_02\_00](#larcore-v09_02_00)
    -   [larpandoracontent v03\_22\_06](#larpandoracontent-v03_22_06)
    -   [larsoftobj v09\_05\_00](#larsoftobj-v09_05_00)
    -   [lardataobj v09\_01\_00](#lardataobj-v09_01_00)
    -   [lardataalg v09\_04\_00](#lardataalg-v09_04_00)
    -   [larcorealg v09\_01\_00](#larcorealg-v09_01_00)
    -   [larcoreobj v09\_02\_00](#larcoreobj-v09_02_00)
    -   [webevd v09\_04\_00](#webevd-v09_04_00)
    -   [larbatch v01\_54\_01](#larbatch-v01_54_01)
    -   [larutils v1\_27\_04](#larutils-v1_27_04)

[list of LArSoft releases](LArSoft_release_list)\
Download instructions for [larsoft v09\_16\_01](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v09_16_01/larsoft-v09_16_01.html)\
Download instructions for [just larsoftobj v09\_05\_00](http://scisoft.fnal.gov/scisoft/bundles/larsoftobj/v09_05_00/larsoftobj-v09_05_00.html)

Purpose(#Purpose)
--------------------

-   changes in develop
-   approved PRs

New features(#New-features)
------------------------------

-   webevd PRs 20, 21, 22, and 23
    -   Preserve event display settings when navigating between events. This makes it much less more efficient to use, because you don’t have to continually navigate the same menus to get things the way you want them. Press the “Reset” button to clear all the state in case you get stuck.
    -   Use gallery::Event::getInputTags() now available with gallery 1.16.02
        -   This means the gallery version of the event display now has access to all the product labels instead of having to hardcode them.
    -   Add display of OpFlash objects.
    -   Adds a mode that shows RawDigit and recob::Wires as a time series.
-   larpandoracontent PR 18
    -   This PR adds the capability to make use of PandoraMonitoring API functionality added in a previous SDK update for saving events and also updates the Makefile-based build available for standalone instances of Pandora (the build for LArSoft is unchanged).
    -   These changes will not alter product outputs for any experiment.

Bug fixes(#Bug-fixes)
------------------------

-   larrecodnn PR 15
    -   PointIdTrainingData: write and dispose of histograms as soon as possible
    -   This is a workaround to Redmine issue [\#25476](/redmine/issues/25476 "Support: Large memory usage in analyzer job (Closed)").
    -   Basically the module PointIdTrainingData creates several histograms per event, and the commit is forcing ROOT to write them to file at the end of each event instead of “automatically” at the end of the job.

Updated dependencies(#Updated-dependencies)
----------------------------------------------

Change List(#Change-List)
============================

larsoft v09\_16\_01(#larsoft-v09_16_01)
------------------------------------------

-   2021-02-11 Lynn Garren : larsoft v09\_16\_01 for larsoft v09\_16\_01
-   2021-02-11 Lynn Garren : product versions
-   2021-02-04 Lynn Garren : fix larwire distribution

lareventdisplay v09\_01\_00(#lareventdisplay-v09_01_00)
----------------------------------------------------------

larexamples v09\_01\_00(#larexamples-v09_01_00)
--------------------------------------------------

larpandora v09\_05\_01(#larpandora-v09_05_01)
------------------------------------------------

-   2021-02-11 Lynn Garren : larpandora v09\_05\_01 for larsoft v09\_16\_01

larsimrad v09\_01\_00(#larsimrad-v09_01_00)
----------------------------------------------

larrecodnn v09\_05\_01(#larrecodnn-v09_05_01)
------------------------------------------------

-   2021-02-11 Lynn Garren : larrecodnn v09\_05\_01 for larsoft v09\_16\_01
-   2021-02-11 Lynn Garren : whitespace cleanup
-   2021-02-10 Lynn Garren : Merge pull request \#15 from PetrilloAtWork/feature/gp\_PointIdTrainingData
-   2021-02-05 Gianluca Petrillo : PointIdTrainingData: write and dispose of histograms as soon as possible.

larwirecell v09\_02\_00(#larwirecell-v09_02_00)
--------------------------------------------------

larana v09\_01\_00(#larana-v09_01_00)
----------------------------------------

larreco v09\_05\_00(#larreco-v09_05_00)
------------------------------------------

larsim v09\_09\_00(#larsim-v09_09_00)
----------------------------------------

larg4 v09\_03\_00(#larg4-v09_03_00)
--------------------------------------

larevt v09\_02\_00(#larevt-v09_02_00)
----------------------------------------

lardata v09\_02\_00(#lardata-v09_02_00)
------------------------------------------

larcore v09\_02\_00(#larcore-v09_02_00)
------------------------------------------

larpandoracontent v03\_22\_06(#larpandoracontent-v03_22_06)
--------------------------------------------------------------

-   2021-02-11 Lynn Garren : larpandoracontent v03\_22\_06 for larsoft v09\_16\_01
-   2021-02-04 Andrew Chappell : Update version and ChangeLog
-   2019-11-25 CrossR : Fix ordering.
-   2019-11-25 CrossR : Hook up save event API.
-   2020-12-18 John Marshall : Update dl sources in Makefile.

larsoftobj v09\_05\_00(#larsoftobj-v09_05_00)
------------------------------------------------

lardataobj v09\_01\_00(#lardataobj-v09_01_00)
------------------------------------------------

lardataalg v09\_04\_00(#lardataalg-v09_04_00)
------------------------------------------------

larcorealg v09\_01\_00(#larcorealg-v09_01_00)
------------------------------------------------

larcoreobj v09\_02\_00(#larcoreobj-v09_02_00)
------------------------------------------------

webevd v09\_04\_00(#webevd-v09_04_00)
----------------------------------------

-   2021-02-11 Lynn Garren : webevd v09\_04\_00 for larsoft v09\_16\_01
-   2021-02-11 Lynn Garren : Merge pull request \#23 from cjbackhouse/feature/adc\_traces
-   2021-02-11 Christopher Backhouse : Remove unused variable caught by clang.
-   2021-02-11 Christopher Backhouse : Adapt to changes from feature/getInputTags
-   2021-02-10 Chris Backhouse : Merge branch ‘develop’ into feature/adc\_traces
-   2021-02-10 Lynn Garren : Merge pull request \#22 from cjbackhouse/feature/optical
-   2021-02-10 Lynn Garren : Merge pull request \#21 from cjbackhouse/feature/getInputTags
-   2021-02-10 Lynn Garren : Merge pull request \#20 from cjbackhouse/feature/localStorage
-   2021-02-09 Christopher Backhouse : Less obnoxious UI for switching modes
-   2021-02-09 Christopher Backhouse : Navigation from traces page remains on traces page. Implementation is a bit clumsy.
-   2021-02-09 Christopher Backhouse : Preserve settings between events in traces view too.
-   2021-02-09 Christopher Backhouse : Merge branch ‘feature/localStorage’ into feature/adc\_traces
-   2021-02-09 Christopher Backhouse : Fix toggling of flash labels.
-   2021-02-09 Christopher Backhouse : Merge branch ‘feature/localStorage’ into feature/optical
-   2021-02-09 Christopher Backhouse : Label flash PE and time rather than trying to represent visually. Add side and front views. Label toggling doesn’t work right, need the refactoring that happened on branch feature/localStorage.
-   2021-02-05 Christopher Backhouse : Figured out the somewhat abstruse template syntax.
-   2021-02-05 Christopher Backhouse : Use gallery::Event::getInputTags() now available with gallery 1.16.02
-   2021-02-05 Christopher Backhouse : WIP OpFlashes
-   2021-02-04 Christopher Backhouse : Ensure the interstitial page is the same color as the theme background.
-   2021-02-04 Christopher Backhouse : Fix issue where textures that are needed immediately are never loaded.
-   2021-02-04 Christopher Backhouse : Load/save axis label type.
-   2021-02-04 Christopher Backhouse : Load/save TPC and OpDet label state.
-   2021-02-04 Christopher Backhouse : Save and restore camera, controls, and layers state.
-   2021-02-03 Christopher Backhouse : Persistify physical and truth settings too.
-   2021-02-03 Christopher Backhouse : Store various state in sessionStorage so that it persists while navigating. Currently not stored are the camera settings, display of physical objects, and MC truth.
-   2021-02-03 Christopher Backhouse : Allow toggling wires/digits/hits on and off.
-   2021-02-03 Christopher Backhouse : Digits and wires and hits all overlaid in the same display. Need to work on controls to toggle their display.
-   2021-02-02 Christopher Backhouse : Add wire traces json. Not used by the display yet.
-   2021-02-02 Christopher Backhouse : Give the name of the file being written along with its size and compressed size.
-   2021-02-02 Christopher Backhouse : Make use of ROIs in RawDigit to minimize amount of json transmitted.
-   2021-02-02 Christopher Backhouse : Start of a wire signal viewing mode.

larbatch v01\_54\_01(#larbatch-v01_54_01)
--------------------------------------------

larutils v1\_27\_04(#larutils-v1_27_04)
------------------------------------------
