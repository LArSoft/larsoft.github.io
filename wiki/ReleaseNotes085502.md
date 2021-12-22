LArSoft v08\_55\_02 Release Notes
======================================================================

-   **Table of contents**
-   [LArSoft v08\_55\_02 Release Notes](#LArSoft-v08_55_02-Release-Notes)
    -   [Purpose](#Purpose)
    -   [Updated dependencies](#Updated-dependencies)
-   [Change List](#Change-List)
    -   [larsoft v08\_55\_02](#larsoft-v08_55_02)
    -   [webevd v08\_00\_06](#webevd-v08_00_06)

[list of LArSoft releases](LArSoft_release_list)\
Download instructions for [larsoft v08\_55\_02](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v08_55_02/larsoft-v08_55_02.html)\
Download instructions for [just larsoftobj v08\_29\_01](http://scisoft.fnal.gov/scisoft/bundles/larsoftobj/v08_29_01/larsoftobj-v08_29_01.html)

Purpose
--------------------

This release incorporates changes to webevd.

-   webevd PR 5
    -   This adds the saving of the PDG code for the MC, so that the drawing can depend on it and we can:
        -   Colour charged particles in a consistent way
        -   Only draw particles of interest (i.e. ones that are actually visible in the detector)

Updated dependencies
----------------------------------------------

-   stan v2\_18\_0a

Change List
============================

larsoft v08\_55\_02
------------------------------------------

-   2020-06-24 Lynn Garren : product versions
-   2020-06-24 Lynn Garren : larsoft v08\_55\_02 for larsoft v08\_55\_02

webevd v08\_00\_06
----------------------------------------

-   2020-06-24 Lynn Garren : webevd v08\_00\_06 for larsoft v08\_55\_02
-   2020-06-18 Lynn Garren : Merge pull request [\#5](/redmine/issues/5 "Feature: NIMROD extended to Accelerator Division (New)") from CrossR/CrossR/feat/MCOptions
-   2020-06-18 CrossR : Fix typo.
-   2020-06-18 CrossR : Swap to ignoring neutral particles.
-   2020-06-18 CrossR : Revert change in drawing options.
-   2020-06-18 CrossR : Use actual truth values.
-   2020-06-16 CrossR : Remove unused return.
-   2020-06-16 CrossR : Swap shower-like particles to draw as points, not lines.
-   2020-06-16 CrossR : Use PDG for consistent colouring of MC for charged particles.
