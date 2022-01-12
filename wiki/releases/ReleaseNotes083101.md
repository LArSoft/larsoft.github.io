LArSoft v08_31_01 Release Notes
======================================================================

-   **Table of contents**
-   [LArSoft v08_31_01 Release Notes](#LArSoft-v08_31_01-Release-Notes)
    -   [Purpose](#Purpose)
    -   [New features](#New-features)
    -   [Bug fixes](#Bug-fixes)
    -   [Updated dependencies](#Updated-dependencies)
-   [Change List](#Change-List)
    -   [larsoft v08_31_01](#larsoft-v08_31_01)
    -   [lareventdisplay v08_08_14](#lareventdisplay-v08_08_14)
    -   [larexamples v08_02_20](#larexamples-v08_02_20)
    -   [larg4 v08_04_00](#larg4-v08_04_00)
    -   [larpandora v08_07_18](#larpandora-v08_07_18)
    -   [larwirecell v08_05_17](#larwirecell-v08_05_17)
    -   [larana v08_10_14](#larana-v08_10_14)
    -   [larreco v08_18_04](#larreco-v08_18_04)
    -   [larsim v08_13_01](#larsim-v08_13_01)
    -   [larevt v08_06_10](#larevt-v08_06_10)
    -   [lardata v08_07_08](#lardata-v08_07_08)
    -   [larcore v08_05_01](#larcore-v08_05_01)
    -   [larpandoracontent v03_15_05](#larpandoracontent-v03_15_05)
    -   [larsoftobj v08_18_00](#larsoftobj-v08_18_00)
    -   [lardataobj v08_05_00](#lardataobj-v08_05_00)
    -   [lardataalg v08_08_06](#lardataalg-v08_08_06)
    -   [larcorealg v08_14_03](#larcorealg-v08_14_03)
    -   [larcoreobj v08_05_04](#larcoreobj-v08_05_04)
    -   [larbatch v01_51_07](#larbatch-v01_51_07)
    -   [larutils v1_24_04](#larutils-v1_24_04)

[list of LArSoft releases](LArSoft_release_list)
Download instructions for [larsoft v08_31_01](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v08_31_01/larsoft-v08_31_01.html)
Download instructions for [just larsoftobj v08_18_00](http://scisoft.fnal.gov/scisoft/bundles/larsoftobj/v08_18_00/larsoftobj-v08_18_00.html)

Purpose
--------------------

-   changes in develop
-   approved feature branch

New features
------------------------------

-   larsim feature/drivera_bug_23279_suggested_kyle_fix
    -   resolves [\#23279](/redmine/issues/23279 "Bug: LArSim revision/commit d96375d3 breaks DUNE analysis. (Closed)")
-   larpandora feature/sgreen_RemovingRootGraphics
    -   resolves macOS build problem

Bug fixes
------------------------

-   new release of artdaq_core
    -   see [\#23319](/redmine/issues/23319 "Bug: Problems reading ProtoDUNE-SP raw data file with artdaq_core v3_05_02 (Closed)")

Updated dependencies
----------------------------------------------

-   nugen v1_05_02
    -   for [\#23308](/redmine/issues/23308 "Support: Useful NuGen related modules left "lost" during split from nutools (Closed)")
    -   restore build of (most) modules in nugen/EventGeneratorBase/test
-   nusystematics v00_06_02
-   artdaq_core v3_05_04
    -   resolution for DUNE’s problem [\#23319](/redmine/issues/23319 "Bug: Problems reading ProtoDUNE-SP raw data file with artdaq_core v3_05_02 (Closed)")

Change List
============================

larsoft v08_31_01
------------------------------------------

-   2019-09-25 Lynn Garren : larsoft v08_31_01 for larsoft v08_31_01
-   2019-09-25 Lynn Garren : update versions

lareventdisplay v08_08_14
----------------------------------------------------------

-   2019-09-25 Lynn Garren : lareventdisplay v08_08_14 for larsoft v08_31_01
-   2019-09-25 Usher, Tracy L : bypass attempting to draw “Edge” objects in the PFParticle 3D display if not asked for.
-   2019-09-20 Lynn Garren : larsoft v08_31_00
-   2019-09-20 Usher, Tracy L : Removing extraneous verbage from OpFlash 3D display

larexamples v08_02_20
--------------------------------------------------

-   2019-09-25 Lynn Garren : larexamples v08_02_20 for larsoft v08_31_01

larg4 v08_04_00
--------------------------------------

larpandora v08_07_18
------------------------------------------------

-   2019-09-25 Lynn Garren : larpandora v08_07_18 for larsoft v08_31_01
-   2019-09-23 Lynn Garren : Merge branch ‘feature/sgreen_RemovingRootGraphics’ into develop
-   2019-09-23 Steven Green : Removing references to root graphics.

larwirecell v08_05_17
--------------------------------------------------

larana v08_10_14
----------------------------------------

-   2019-09-25 Lynn Garren : larana v08_10_14 for larsoft v08_31_01

larreco v08_18_04
------------------------------------------

-   2019-09-25 Lynn Garren : larreco v08_18_04 for larsoft v08_31_01
-   2019-09-20 Lynn Garren : larsoft v08_31_00
-   2019-09-19 Tingjun Yang : Add elastic and inelastic scattering vertex.
-   2019-09-19 Tingjun Yang : Indent.

larsim v08_13_01
----------------------------------------

-   2019-09-25 Lynn Garren : larsim v08_13_01 for larsoft v08_31_01
-   2019-09-25 Lynn Garren : nugen v1_05_02
-   2019-09-24 Lynn Garren : Merge branch ‘feature/drivera_bug_23279_suggested_kyle_fix’ into release/v08_31_01
-   2019-09-19 David Rivera : Removed unnecessary art::Handle dependency and implemented the use of templated handles for compatibility with both larsoft and gallery.
-   2019-09-17 David Rivera : Implemented a getByLabel as suggested by Kyle Knoepfel to retrieve the MCTruth, MCParticle associations. This is aimed at fixing bug [\#23279](/redmine/issues/23279 "Bug: LArSim revision/commit d96375d3 breaks DUNE analysis. (Closed)").

larevt v08_06_10
----------------------------------------

lardata v08_07_08
------------------------------------------

larcore v08_05_01
------------------------------------------

larpandoracontent v03_15_05
--------------------------------------------------------------

larsoftobj v08_18_00
------------------------------------------------

lardataobj v08_05_00
------------------------------------------------

lardataalg v08_08_06
------------------------------------------------

larcorealg v08_14_03
------------------------------------------------

larcoreobj v08_05_04
------------------------------------------------

larbatch v01_51_07
--------------------------------------------

larutils v1_24_04
------------------------------------------
