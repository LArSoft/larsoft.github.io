LArSoft v08\_55\_01 Release Notes
======================================================================

-   **Table of contents**
-   [LArSoft v08\_55\_01 Release Notes](#LArSoft-v08_55_01-Release-Notes)
    -   [Purpose](#Purpose)
    -   [New features](#New-features)
    -   [Bug fixes](#Bug-fixes)
    -   [Updated dependencies](#Updated-dependencies)
-   [Change List](#Change-List)
    -   [larsoft v08\_55\_01](#larsoft-v08_55_01)
    -   [lareventdisplay v08\_12\_18](#lareventdisplay-v08_12_18)
    -   [larexamples v08\_06\_18](#larexamples-v08_06_18)
    -   [larg4 v08\_14\_04](#larg4-v08_14_04)
    -   [larpandora v08\_12\_11](#larpandora-v08_12_11)
    -   [larrecodnn v08\_04\_03](#larrecodnn-v08_04_03)
    -   [larwirecell v08\_12\_15](#larwirecell-v08_12_15)
    -   [larana v08\_17\_10](#larana-v08_17_10)
    -   [larreco v08\_32\_03](#larreco-v08_32_03)
    -   [larsim v08\_27\_00](#larsim-v08_27_00)
    -   [larevt v08\_11\_08](#larevt-v08_11_08)
    -   [lardata v08\_15\_08](#lardata-v08_15_08)
    -   [larcore v08\_11\_09](#larcore-v08_11_09)
    -   [larpandoracontent v03\_16\_02](#larpandoracontent-v03_16_02)
    -   [larsoftobj v08\_29\_01](#larsoftobj-v08_29_01)
    -   [lardataobj v08\_11\_01](#lardataobj-v08_11_01)
    -   [lardataalg v08\_13\_13](#lardataalg-v08_13_13)
    -   [larcorealg v08\_22\_01](#larcorealg-v08_22_01)
    -   [larcoreobj v08\_12\_00](#larcoreobj-v08_12_00)
    -   [webevd v08\_00\_05](#webevd-v08_00_05)
    -   [larbatch v01\_52\_02](#larbatch-v01_52_02)
    -   [larutils v1\_25\_09](#larutils-v1_25_09)

[list of LArSoft releases](LArSoft_release_list)
Download instructions for [larsoft v08\_55\_01](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v08_55_01/larsoft-v08_55_01.html)
Download instructions for [just larsoftobj v08\_29\_01](http://scisoft.fnal.gov/scisoft/bundles/larsoftobj/v08_29_01/larsoftobj-v08_29_01.html)

Purpose
--------------------

-   changes in develop
-   approved PRs

New features
------------------------------

-   larsoft PR 12
    -   add stan, stan\_math, and sundials to the larsoft distribution (issue [\#23688](/redmine/issues/23688 "Support: Requesting new UPS packages CVODES, Stan-math, Stan (and new version of Eigen) (Closed)"))
    -   do some cleanup of the build config scripts
-   larpandoracontent PR 6
    -   This PR includes a minor update to ensure LArContent builds with GCC 7.3. Versions of GCC prior to 8 that support C++ 17 issue warnings when there are unused structured bindings. This update avoids this problem. The details can be found in PandoraPFA\#126
    -   There are no behavioural changes as a result of this update and no experiment code/config changes are necessary.

Bug fixes
------------------------

-   larg4 PR 11
    -   Remove some memory leaks caught by profiler

Updated dependencies
----------------------------------------------

-   stan v2\_18\_0
-   stan\_math v2\_18\_0
-   sundials v3\_2\_1

Change List
============================

larsoft v08\_55\_01
------------------------------------------

-   2020-06-16 Lynn Garren : product versions
-   2020-06-16 Lynn Garren : larsoft v08\_55\_01 for larsoft v08\_55\_01
-   2020-06-12 Lynn Garren : Merge pull request \#12 from lgarren/feature/lg\_add\_stan
-   2020-06-12 Lynn Garren : add stan and cleanup config files

lareventdisplay v08\_12\_18
----------------------------------------------------------

larexamples v08\_06\_18
--------------------------------------------------

larg4 v08\_14\_04
--------------------------------------

-   2020-06-16 Lynn Garren : larg4 v08\_14\_04 for larsoft v08\_55\_01
-   2020-06-11 Lynn Garren : Merge pull request \#11 from drivera-fnal/feature\_drivera\_memleak\_cleanup
-   2020-06-11 David Rivera : Incorporate reviewer’s suggestions.
-   2020-06-09 David Rivera : Merge branch ‘develop’ into feature\_drivera\_memleak\_cleanup (pull in changes from LARSOFT\_SUITE\_v08\_55\_0)
-   2020-06-09 David Rivera : Remove some commented code. Reduce number of std::endls.
-   2020-06-09 David Rivera : Use G4AutoDelete to mitigate memory leaks from dynamically allocated G4UserLimits; these cannot be deleted in the normal way because they belong to the corresponding G4LogicalVolumes which are geometry-related split-classes in Geant4. Also changed the setStepLimits function to utilize the LogicalVolumeStore instead of the parser itself. Use a map instead of a vector for the list of override step limits.
-   2020-06-05 David Rivera : First pass – delete dynamically allocated GDML parser and reader

larpandora v08\_12\_11
------------------------------------------------

-   2020-06-16 Lynn Garren : larpandora v08\_12\_11 for larsoft v08\_55\_01

larrecodnn v08\_04\_03
------------------------------------------------

larwirecell v08\_12\_15
--------------------------------------------------

larana v08\_17\_10
----------------------------------------

larreco v08\_32\_03
------------------------------------------

larsim v08\_27\_00
----------------------------------------

larevt v08\_11\_08
----------------------------------------

lardata v08\_15\_08
------------------------------------------

larcore v08\_11\_09
------------------------------------------

larpandoracontent v03\_16\_02
--------------------------------------------------------------

-   2020-06-16 Lynn Garren : larpandoracontent v03\_16\_02 for larsoft v08\_55\_01
-   2020-06-16 Lynn Garren : Merge pull request [\#6](/redmine/issues/6 "Feature: Non-KCA Remediation (New)") from PandoraPFA/feature/larpandoracontent\_v03\_16\_02
-   2020-06-15 Andrew Chappell : Update version and change log
-   2020-06-15 AndyChappell : Merge pull request [\#126](/redmine/issues/126 "Bug: REQUESTER_GROUP needs to be calculated using a different date when people are re-orged while req ... (New)") from AndyChappell/feature/gcc7
-   2020-06-15 Andrew Chappell : Allow gcc 7 to compile an unused structured binding

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
