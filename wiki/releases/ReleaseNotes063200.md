LArSoft v06_32_00 Release Notes
======================================================================

-   **Table of contents**
-   [LArSoft v06_32_00 Release Notes](#LArSoft-v06_32_00-Release-Notes)
    -   [Purpose](#Purpose)
    -   [New features](#New-features)
    -   [Bug fixes](#Bug-fixes)
    -   [Updated dependencies](#Updated-dependencies)
-   [Change List](#Change-List)
    -   [larsoft v06_32_00](#larsoft-v06_32_00)
    -   [lareventdisplay v06_05_00](#lareventdisplay-v06_05_00)
    -   [larexamples v06_03_00](#larexamples-v06_03_00)
    -   [larpandora v06_10_00](#larpandora-v06_10_00)
    -   [larwirecell v06_04_00](#larwirecell-v06_04_00)
    -   [larana v06_05_00](#larana-v06_05_00)
    -   [larreco v06_25_00](#larreco-v06_25_00)
    -   [larsim v06_18_00](#larsim-v06_18_00)
    -   [larevt v06_11_00](#larevt-v06_11_00)
    -   [lardata v06_19_00](#lardata-v06_19_00)
    -   [larcore v06_08_00](#larcore-v06_08_00)
    -   [larpandoracontent v03_04_00](#larpandoracontent-v03_04_00)
    -   [larsoftobj v1_18_00](#larsoftobj-v1_18_00)
    -   [lardataobj v1_15_00](#lardataobj-v1_15_00)
    -   [larcoreobj v1_12_00](#larcoreobj-v1_12_00)
    -   [larbatch v01_30_00](#larbatch-v01_30_00)
    -   [larutils v1_12_03](#larutils-v1_12_03)

[list of LArSoft releases](LArSoft_release_list)
Download instructions for [larsoft v06_32_00](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v06_32_00/larsoft-v06_32_00.html)
Download instructions for [just larsoftobj v1_18_00](http://scisoft.fnal.gov/scisoft/bundles/larsoftobj/v1_18_00/larsoftobj-v1_18_00.html)

Purpose
--------------------

-   build with gcc 6.3.0
-   Based off the v06_31_01 tag.

New features
------------------------------

-   Support added for Sierra with SIP disabled and Ubuntu LTS 16
-   Please see the [Breaking Changes Notes](Breaking_Changes#Update-to-GCC-6) and the [GCC 6 migration](Updating_code_to_GCC_6) page
-   feature/team_for_gcc630 is available for argoneutcode, dunetpc, lariatsoft, and uboonecode.

Bug fixes
------------------------

Updated dependencies
----------------------------------------------

Change List
============================

larsoft v06_32_00
------------------------------------------

-   2017-04-13 Lynn Garren : larsoft v06_32_00 for larsoft v06_32_00
-   2017-04-13 Lynn Garren : update dependency database
-   2017-04-13 Lynn Garren : update product versions
-   2017-04-13 Lynn Garren : Merge branch ‘feature/team_for_gcc630’ into release/v06_32_00
-   2017-04-11 Lynn Garren : use e14

lareventdisplay v06_05_00
----------------------------------------------------------

-   2017-04-13 Lynn Garren : lareventdisplay v06_05_00 for larsoft v06_32_00
-   2017-04-13 Lynn Garren : Merge branch ‘feature/team_for_gcc630’ into release/v06_32_00
-   2017-04-11 Lynn Garren : make sure the code is interpreted correctly
-   2017-04-11 Lynn Garren : use e14

larexamples v06_03_00
--------------------------------------------------

-   2017-04-13 Lynn Garren : larexamples v06_03_00 for larsoft v06_32_00
-   2017-04-13 Lynn Garren : Merge branch ‘feature/team_for_gcc630’ into release/v06_32_00
-   2017-04-07 Gianluca Petrillo : Updated STL library use with GCC \>=5.1.
-   2017-04-06 Lynn Garren : add missing header
-   2017-04-06 Lynn Garren : use e14

larpandora v06_10_00
------------------------------------------------

-   2017-04-13 Lynn Garren : larpandora v06_10_00 for larsoft v06_32_00
-   2017-04-13 Lynn Garren : Merge branch ‘feature/team_for_gcc630’ into release/v06_32_00
-   2017-04-11 Lynn Garren : eigen v3_3_3 is gcc 6.3 compliant
-   2017-04-11 Lynn Garren : use e14

larwirecell v06_04_00
--------------------------------------------------

-   2017-04-13 Lynn Garren : larwirecell v06_04_00 for larsoft v06_32_00
-   2017-04-13 Lynn Garren : Merge branch ‘feature/team_for_gcc630’ into release/v06_32_00
-   2017-04-06 Lynn Garren : use e14

larana v06_05_00
----------------------------------------

-   2017-04-13 Lynn Garren : larana v06_05_00 for larsoft v06_32_00
-   2017-04-13 Lynn Garren : Merge branch ‘feature/team_for_gcc630’ into release/v06_32_00
-   2017-04-11 Lynn Garren : include missing header
-   2017-04-11 Lynn Garren : use e14

larreco v06_25_00
------------------------------------------

-   2017-04-13 Lynn Garren : larreco v06_25_00 for larsoft v06_32_00
-   2017-04-13 Lynn Garren : Merge branch ‘feature/team_for_gcc630’ into release/v06_32_00
-   2017-04-09 Lynn Garren : vla fixes from Robert
-   2017-04-07 Giuseppe Cerati : fix compilation for gcc630
-   2017-04-06 Lynn Garren : fix misleading indentation
-   2017-04-06 Lynn Garren : add curly braces
-   2017-04-06 Lynn Garren : making gcc 6.3.0 happy
-   2017-04-06 Lynn Garren : adding curly braces
-   2017-04-06 Lynn Garren : fix confusing template instantiation
-   2017-04-06 Lynn Garren : use e14

larsim v06_18_00
----------------------------------------

-   2017-04-13 Lynn Garren : larsim v06_18_00 for larsoft v06_32_00
-   2017-04-13 Lynn Garren : Merge branch ‘feature/team_for_gcc630’ into release/v06_32_00
-   2017-04-06 Lynn Garren : use e14
-   2017-04-06 Lynn Garren : cast stringstream to string
-   2017-04-06 Lynn Garren : use curly braces

larevt v06_11_00
----------------------------------------

-   2017-04-13 Lynn Garren : larevt v06_11_00 for larsoft v06_32_00
-   2017-04-13 Lynn Garren : Merge branch ‘feature/team_for_gcc630’ into release/v06_32_00
-   2017-04-06 Lynn Garren : use e14

lardata v06_19_00
------------------------------------------

-   2017-04-13 Lynn Garren : lardata v06_19_00 for larsoft v06_32_00
-   2017-04-13 Lynn Garren : Merge branch ‘feature/team_for_gcc630’ into release/v06_32_00
-   2017-04-06 Lynn Garren : change comment
-   2017-04-06 Lynn Garren : Merge branch ‘develop’ into feature/team_for_gcc630
-   2017-04-05 Gianluca Petrillo : Reworked constructors of supporting classes in dumper modules.
-   2017-04-05 Gianluca Petrillo : Made static a method that should have been.
-   2017-04-05 Gianluca Petrillo : Solved issue [\#16107](/redmine/issues/16107 "Support: problem compiling lardata/Utilities/NestedIterator.h with gcc 6.3.0 (Closed)") .
-   2017-04-05 Lynn Garren : for gcc 6.3.0
-   2017-04-05 Lynn Garren : use the correct header
-   2017-04-05 Lynn Garren : use curly braces

larcore v06_08_00
------------------------------------------

-   2017-04-13 Lynn Garren : larcore v06_08_00 for larsoft v06_32_00
-   2017-04-13 Lynn Garren : Merge branch ‘feature/team_for_gcc630’ into release/v06_32_00
-   2017-04-06 Lynn Garren : cleanup
-   2017-04-06 Lynn Garren : Merge branch ‘develop’ into feature/team_for_gcc630
-   2017-04-05 Gianluca Petrillo : Fixed bug on erase of items from a provider list.
-   2017-04-05 Gianluca Petrillo : Added missing headers. Solves issue [\#16112](/redmine/issues/16112 "Support: larcore/CoreUtils/RealComparisons.h fails to compile with gcc 6.3.0 (Closed)") .
-   2017-04-05 Lynn Garren : for gcc 6.3.0
-   2017-04-05 Lynn Garren : add missing headers

larpandoracontent v03_04_00
--------------------------------------------------------------

-   2017-04-13 Lynn Garren : larpandoracontent v03_04_00 for larsoft v06_32_00
-   2017-04-13 Lynn Garren : v03_04_00 with gcc 6.3.0
-   2017-04-13 Lynn Garren : Merge branch ‘feature/team_for_gcc630’ into release/v06_32_00
-   2017-04-11 Lynn Garren : use e14

larsoftobj v1_18_00
----------------------------------------------

-   2017-04-13 Lynn Garren : larsoftobj v1_18_00 for larsoft v06_32_00
-   2017-04-13 Lynn Garren : use e14
-   2017-04-13 Lynn Garren : update product versions

lardataobj v1_15_00
----------------------------------------------

-   2017-04-13 Lynn Garren : this is lardataobj v1_15_00
-   2017-04-13 Lynn Garren : correct larcoreobj release
-   2017-04-13 Lynn Garren : use e14 …

larcoreobj v1_12_00
----------------------------------------------

-   2017-04-13 Lynn Garren : larcoreobj v1_12_00 for larsoft v06_32_00
-   2017-04-13 Lynn Garren : Merge branch ‘feature/team_for_gcc630’ into release/v06_32_00
-   2017-04-06 Lynn Garren : cleanup
-   2017-04-05 Lynn Garren : for gcc 6.3.0

larbatch v01_30_00
--------------------------------------------

larutils v1_12_03
------------------------------------------
