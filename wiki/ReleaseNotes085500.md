LArSoft v08\_55\_00 Release Notes
======================================================================

-   **Table of contents**
-   [LArSoft v08\_55\_00 Release Notes](#LArSoft-v08_55_00-Release-Notes)
    -   [Purpose](#Purpose)
    -   [New features](#New-features)
    -   [Bug fixes](#Bug-fixes)
    -   [Updated dependencies](#Updated-dependencies)
-   [Change List](#Change-List)
    -   [larsoft v08\_55\_00](#larsoft-v08_55_00)
    -   [lareventdisplay v08\_12\_18](#lareventdisplay-v08_12_18)
    -   [larexamples v08\_06\_18](#larexamples-v08_06_18)
    -   [larg4 v08\_14\_03](#larg4-v08_14_03)
    -   [larpandora v08\_12\_10](#larpandora-v08_12_10)
    -   [larrecodnn v08\_04\_03](#larrecodnn-v08_04_03)
    -   [larwirecell v08\_12\_15](#larwirecell-v08_12_15)
    -   [larana v08\_17\_10](#larana-v08_17_10)
    -   [larreco v08\_32\_03](#larreco-v08_32_03)
    -   [larsim v08\_27\_00](#larsim-v08_27_00)
    -   [larevt v08\_11\_08](#larevt-v08_11_08)
    -   [lardata v08\_15\_08](#lardata-v08_15_08)
    -   [larcore v08\_11\_09](#larcore-v08_11_09)
    -   [larpandoracontent v03\_16\_01](#larpandoracontent-v03_16_01)
    -   [larsoftobj v08\_29\_01](#larsoftobj-v08_29_01)
    -   [lardataobj v08\_11\_01](#lardataobj-v08_11_01)
    -   [lardataalg v08\_13\_13](#lardataalg-v08_13_13)
    -   [larcorealg v08\_22\_01](#larcorealg-v08_22_01)
    -   [larcoreobj v08\_12\_00](#larcoreobj-v08_12_00)
    -   [webevd v08\_00\_05](#webevd-v08_00_05)
    -   [larbatch v01\_52\_02](#larbatch-v01_52_02)
    -   [larutils v1\_25\_09](#larutils-v1_25_09)

[list of LArSoft releases](LArSoft_release_list)
Download instructions for [larsoft v08\_55\_00](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v08_55_00/larsoft-v08_55_00.html)
Download instructions for [just larsoftobj v08\_29\_01](http://scisoft.fnal.gov/scisoft/bundles/larsoftobj/v08_29_01/larsoftobj-v08_29_01.html)

Purpose
--------------------

-   changes in develop
-   approved PRs

New features
------------------------------

-   larpandora content PR 12
    -   This PR includes features to support the selection of slices based on user-defined criteria, as well as some minor modifications to boolean manipulation to conform to the -Wint-in-bool-context flag. The PR breakdown is as follows:
        -   Slice selection support added in PandoraPFA\#121 and PandoraPFA\#123
        -   Minor modification to boolean handling in PandoraPFA\#120
    -   The slice selection updates are intended to support training set generation and as such are not part of the standard configuration, so no changes are expected and no experiment code/config changes are necessary.
-   larsim PR 20
    -   In short, I wrote code aggregating POT summaries (a data product) from different runs using art::SummedValue, but it now appears to me that art ranges (art::RangeSet) do not support ranges crossing runs. The effect is that R:1 S:1 and R:2 S:1 events are treated as belonging to the same subrun, and an exception is thrown when their event number range overlaps.
    -   In this fix I dropped art::SummedValue for the inter-run aggregation.In short, I wrote code aggregating POT summaries (a data product) from different runs using art::SummedValue, but it now appears to me that art ranges (art::RangeSet) do not support ranges crossing runs.
        The effect is that R:1 S:1 and R:2 S:1 events are treated as belonging to the same subrun, and an exception is thrown when their event number range overlaps.
    -   In this fix I dropped art::SummedValue for the inter-run aggregation.

Bug fixes
------------------------

-   larsim PR 22
    -   rhatcher fixes for redmine support issue [\#24283](/redmine/issues/24283 "Support: review larsim for geant4 v4_10_6_p01 (Closed)")
    -   These changes are compatible with all versions of Geant4 10.3 to 10.6.
-   larsim PR 21
    -   Bug fix for setting fScintillationYieldRatio in the Correlated alg

Updated dependencies
----------------------------------------------

Change List
============================

larsoft v08\_55\_00
------------------------------------------

-   2020-06-03 Lynn Garren : larsoft v08\_55\_00 for larsoft v08\_55\_00
-   2020-06-03 Lynn Garren : product versions

lareventdisplay v08\_12\_18
----------------------------------------------------------

-   2020-06-03 Lynn Garren : lareventdisplay v08\_12\_18 for larsoft v08\_55\_00

larexamples v08\_06\_18
--------------------------------------------------

-   2020-06-03 Lynn Garren : larexamples v08\_06\_18 for larsoft v08\_55\_00

larg4 v08\_14\_03
--------------------------------------

larpandora v08\_12\_10
------------------------------------------------

-   2020-06-03 Lynn Garren : larpandora v08\_12\_10 for larsoft v08\_55\_00

larrecodnn v08\_04\_03
------------------------------------------------

-   2020-06-03 Lynn Garren : larrecodnn v08\_04\_03 for larsoft v08\_55\_00

larwirecell v08\_12\_15
--------------------------------------------------

larana v08\_17\_10
----------------------------------------

-   2020-06-03 Lynn Garren : larana v08\_17\_10 for larsoft v08\_55\_00

larreco v08\_32\_03
------------------------------------------

-   2020-06-03 Lynn Garren : larreco v08\_32\_03 for larsoft v08\_55\_00

larsim v08\_27\_00
----------------------------------------

-   2020-06-03 Lynn Garren : larsim v08\_27\_00 for larsoft v08\_55\_00
-   2020-06-03 Lynn Garren : Merge pull request \#22 from nusense/rhatcher\_support24283
-   2020-06-02 Lynn Garren : Merge pull request \#21 from wforeman/wforeman\_iscalc
-   2020-06-01 Robert Hatcher : G4DataQuestionaire goes away in G4.10.6 and all references to it can just be removed; leave it in place for earlier version (though it could be removed without serious issue)
-   2020-06-01 Robert Hatcher : need to link G4GLOBAL library for G4.10.6; no issues to do so for earlier versions either
-   2020-06-01 Kyle Knoepfel : Merge pull request \#20 from PetrilloAtWork/gp\_POTaggregatorFix
-   2020-05-31 William Foreman : Bug fix for setting fScintillationYieldRatio in the Correlated alg
-   2020-05-26 Gianluca Petrillo : Oh no the indomitable, fearsome trailingwhitespace.
-   2020-05-26 Gianluca Petrillo : Fixed bug in POTaggregator module for jobs over multiple runs.

larevt v08\_11\_08
----------------------------------------

lardata v08\_15\_08
------------------------------------------

larcore v08\_11\_09
------------------------------------------

larpandoracontent v03\_16\_01
--------------------------------------------------------------

-   2020-06-03 Lynn Garren : larpandoracontent v03\_16\_01 for larsoft v08\_55\_00
-   2020-06-02 Lynn Garren : Merge pull request [\#5](/redmine/issues/5 "Feature: NIMROD extended to Accelerator Division (New)") from PandoraPFA/feature/larpandoracontent\_v03\_16\_01
-   2020-06-01 AndyChappell : Merge pull request \#123 from AndyChappell/feature/slice\_select
-   2020-06-01 Andrew Chappell : Fix signed/unsigned comparison
-   2020-06-01 AndyChappell : Merge pull request \#121 from AndyChappell/feature/slice\_select
-   2020-06-01 Andrew Chappell : Update version and change log
-   2020-05-29 Andrew Chappell : Remove whitespace
-   2020-05-29 Andrew Chappell : Add move semantics to avoid copy overhead when no slice selection is used. Minor format changes.
-   2020-05-28 Andrew Chappell : Address review comments
-   2020-05-28 Andrew Chappell : Move and rename classes to explicitly identify cheating status
-   2020-05-19 Andrew Chappell : Remove MC subset selection. Make this an option for pre-processing in worker.
-   2020-05-19 Andrew Chappell : Refactor target condition to template method.
-   2020-05-19 Andrew Chappell : Alter MC copy to workers flow to allow only slice MC.
-   2020-05-18 Andrew Chappell : Add provisional (testbeam) slice selection tool.
-   2020-05-28 AndyChappell : Merge pull request \#120 from steverdennis/feature/gcc10
-   2020-05-20 Steve Dennis : stop using \`\*\` with booleans to survive \`-Wint-in-bool-context\`

larsoftobj v08\_29\_01
------------------------------------------------

lardataobj v08\_11\_01
------------------------------------------------

lardataalg v08\_13\_13
------------------------------------------------

larcorealg v08\_22\_01
------------------------------------------------

larcoreobj v08\_12\_00
------------------------------------------------

webevd v08\_00\_05
----------------------------------------

larbatch v01\_52\_02
--------------------------------------------

larutils v1\_25\_09
------------------------------------------
