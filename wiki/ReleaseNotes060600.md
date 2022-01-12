LArSoft v06\_06\_00 Release Notes
======================================================================

-   **Table of contents**
-   [LArSoft v06\_06\_00 Release Notes](#LArSoft-v06_06_00-Release-Notes)
    -   [Purpose](#Purpose)
    -   [New features](#New-features)
    -   [Bug fixes](#Bug-fixes)
    -   [Updated dependencies](#Updated-dependencies)
-   [Change List](#Change-List)
    -   [larsoft v06\_06\_00](#larsoft-v06_06_00)
    -   [lareventdisplay v06\_01\_03](#lareventdisplay-v06_01_03)
    -   [larexamples v06\_00\_07](#larexamples-v06_00_07)
    -   [larpandora v06\_00\_08](#larpandora-v06_00_08)
    -   [larana v06\_01\_04](#larana-v06_01_04)
    -   [larreco v06\_04\_01](#larreco-v06_04_01)
    -   [larsim v06\_03\_03](#larsim-v06_03_03)
    -   [larevt v06\_01\_02](#larevt-v06_01_02)
    -   [lardata v06\_04\_00](#lardata-v06_04_00)
    -   [larcore v06\_02\_01](#larcore-v06_02_01)
    -   [larsoftobj v1\_06\_01](#larsoftobj-v1_06_01)
    -   [lardataobj v1\_06\_01](#lardataobj-v1_06_01)
    -   [larcoreobj v1\_04\_02](#larcoreobj-v1_04_02)
    -   [larbatch v01\_23\_05](#larbatch-v01_23_05)
    -   [larutils v1\_08\_04](#larutils-v1_08_04)

[list of LArSoft releases](LArSoft_release_list)
[Download instructions](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v06_06_00/larsoft-v06_06_00.html)

Purpose
--------------------

-   changes to develop
-   larsim feature/gp\_QuieterCORSIKAGen
-   lardata feature/gp\_RecoBaseDumpers

New features
------------------------------

-   lardata feature/gp\_RecoBaseDumpers
    -   dumpers

Bug fixes
------------------------

-   documentation [\#11627](/redmine/issues/11627 "Necessary Maintenance: Document better how to define a PFParticle without a daughter (Closed)")
-   larsim feature/gp\_QuieterCORSIKAGen [\#13750](/redmine/issues/13750 "Bug: CORSIKAGen too verbose (Closed)")
    -   remove unnecessary information from the console log

Updated dependencies
----------------------------------------------

||
|Product|Version|Qualifiers|Notes|
|mrb|v1\_08\_02|||

Change List
============================

larsoft v06\_06\_00
------------------------------------------

-   2016-09-08 Lynn Garren : larsoft v06\_06\_00 for larsoft v06\_05\_01
-   2016-09-08 Lynn Garren : update product versions
-   2016-09-08 Lynn Garren : update dependency database
-   2016-09-01 Lynn Garren : skip if already fixed

lareventdisplay v06\_01\_03
----------------------------------------------------------

-   2016-09-08 Lynn Garren : lareventdisplay v06\_01\_03 for larsoft v06\_05\_01

larexamples v06\_00\_07
--------------------------------------------------

-   2016-09-08 Lynn Garren : larexamples v06\_00\_07 for larsoft v06\_05\_01

larpandora v06\_00\_08
------------------------------------------------

-   2016-09-08 Lynn Garren : larpandora v06\_00\_08 for larsoft v06\_05\_01

larana v06\_01\_04
----------------------------------------

-   2016-09-08 Lynn Garren : larana v06\_01\_04 for larsoft v06\_05\_01

larreco v06\_04\_01
------------------------------------------

-   2016-09-08 Lynn Garren : larreco v06\_04\_01 for larsoft v06\_05\_01
-   2016-09-02 Tingjun Yang : Fix memory leaks. Thanks to Kyle Knoepfel.

larsim v06\_03\_03
----------------------------------------

-   2016-09-08 Lynn Garren : larsim v06\_03\_03 for larsoft v06\_05\_01
-   2016-09-07 Lynn Garren : Merge branch ‘feature/gp\_QuieterCORSIKAGen’ into release/v06\_05\_01
-   2016-09-06 Gianluca Petrillo : This addresses LArSoft issue [\#13750](/redmine/issues/13750 "Bug: CORSIKAGen too verbose (Closed)").
-   2016-08-23 Gianluca Petrillo : Reduced the amount of CORSIKAGen output on screen

larevt v06\_01\_02
----------------------------------------

-   2016-09-08 Lynn Garren : larevt v06\_01\_02 for larsoft v06\_05\_01

lardata v06\_04\_00
------------------------------------------

-   2016-09-08 Lynn Garren : lardata v06\_04\_00 for larsoft v06\_05\_01
-   2016-09-01 Gianluca Petrillo : Updated new code to LArSoft 6.x
-   2016-09-01 Gianluca Petrillo : Merge remote-tracking branch ‘origin/develop’ into feature/gp\_RecoBaseDumpers
-   2016-05-02 Gianluca Petrillo : One fix to documentation of SpacePointDumpers
-   2016-04-30 Gianluca Petrillo : Added option PrintHexFloats to some dumpers
-   2016-04-29 Gianluca Petrillo : Optional base 16 printing of real numbers in DumpPFParticles and DumpPCAxes modules.
-   2016-04-29 Gianluca Petrillo : Merge remote-tracking branch ‘origin/develop’ into feature/gp\_RecoBaseDumpers
-   2016-04-28 Gianluca Petrillo : recob::Seed error arguments made “optional” for getters
-   2016-04-21 Gianluca Petrillo : Removed time stamps from messages in DumpPFParticles
-   2016-04-21 Gianluca Petrillo : Added a set of dumpers for RecoBase objects

larcore v06\_02\_01
------------------------------------------

larsoftobj v1\_06\_01
----------------------------------------------

-   2016-09-08 Lynn Garren : larsoftobj v1\_06\_01 for larsoft v06\_05\_01

lardataobj v1\_06\_01
----------------------------------------------

-   2016-09-08 Lynn Garren : lardataobj v1\_06\_01 for larsoft v06\_05\_01
-   2016-09-01 Gianluca Petrillo : The commit was a fix for issue [\#11627](/redmine/issues/11627 "Necessary Maintenance: Document better how to define a PFParticle without a daughter (Closed)")
-   2016-09-01 Gianluca Petrillo : This should be addressing [\#11627](/redmine/issues/11627 "Necessary Maintenance: Document better how to define a PFParticle without a daughter (Closed)") .
-   2016-09-01 Gianluca Petrillo : Added documentation to PFParticle
-   2016-09-01 Gianluca Petrillo : Allow recob::Seed methods to get its quantities without their uncertainty

larcoreobj v1\_04\_02
----------------------------------------------

larbatch v01\_23\_05
--------------------------------------------

larutils v1\_08\_04
------------------------------------------
