LArSoft v06\_57\_00 Release Notes
======================================================================

-   **Table of contents**
-   [LArSoft v06\_57\_00 Release Notes](#LArSoft-v06_57_00-Release-Notes)
    -   [Purpose](#Purpose)
    -   [New features](#New-features)
    -   [Bug fixes](#Bug-fixes)
    -   [Updated dependencies](#Updated-dependencies)
-   [Change List](#Change-List)
    -   [larsoft v06\_57\_00](#larsoft-v06_57_00)
    -   [lareventdisplay v06\_15\_02](#lareventdisplay-v06_15_02)
    -   [larexamples v06\_07\_10](#larexamples-v06_07_10)
    -   [larpandora v06\_17\_07](#larpandora-v06_17_07)
    -   [larwirecell v06\_08\_04](#larwirecell-v06_08_04)
    -   [larana v06\_12\_02](#larana-v06_12_02)
    -   [larreco v06\_46\_00](#larreco-v06_46_00)
    -   [larsim v06\_35\_00](#larsim-v06_35_00)
    -   [larevt v06\_16\_09](#larevt-v06_16_09)
    -   [lardata v06\_32\_00](#lardata-v06_32_00)
    -   [larcore v06\_15\_06](#larcore-v06_15_06)
    -   [larpandoracontent v03\_08\_01](#larpandoracontent-v03_08_01)
    -   [larsoftobj v1\_31\_00](#larsoftobj-v1_31_00)
    -   [lardataobj v1\_22\_00](#lardataobj-v1_22_00)
    -   [larcorealg v1\_10\_00](#larcorealg-v1_10_00)
    -   [larcoreobj v1\_16\_02](#larcoreobj-v1_16_02)
    -   [larbatch v01\_34\_00](#larbatch-v01_34_00)
    -   [larutils v1\_20\_01](#larutils-v1_20_01)

[list of LArSoft releases](LArSoft_release_list)\
Download instructions for [larsoft v06\_57\_00](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v06_57_00/larsoft-v06_57_00.html)\
Download instructions for [just larsoftobj v1\_31\_00](http://scisoft.fnal.gov/scisoft/bundles/larsoftobj/v1_31_00/larsoftobj-v1_31_00.html)

Purpose
--------------------

-   changes in develop
-   approved feature branches
-   new release of nutools

New features
------------------------------

-   fcl validation of `SingleGen`
    -   larsim feature/gp\_Issue17869
-   remove MemoryPeakTracker ([\#18220](/redmine/issues/18220 "Necessary Maintenance: Remove MemoryPeakReporter service from lardata (Closed)"))
    -   lardata feature/gp\_Issue18220
    -   feature branch also available for icaruscode and uboonecode

Bug fixes
------------------------

-   lareventdisplay feature/cerati\_fix-evd-invalid-hits for [\#17843](/redmine/issues/17843 "Bug: Fix event display so that hits associated to invalid trajectory points are not connected to the t... (Assigned)")

Updated dependencies
----------------------------------------------

-   ifdhc v2\_2\_1
-   dk2nu v01\_05\_01
-   genie v2\_12\_8a with ROOT\_INCLUDE\_PATH improvement
-   [nutools v2\_16\_07](/redmine/projects/nutools/wiki/NuTools_Release_Notes#nutools-v2_16_07-11212017)

Change List
============================

larsoft v06\_57\_00
------------------------------------------

-   2017-11-21 Lynn Garren : larsoft v06\_57\_00 for larsoft v06\_57\_00
-   2017-11-21 Lynn Garren : update dependency database
-   2017-11-21 Lynn Garren : update products
-   2017-11-21 Lynn Garren : for nutools v2\_16\_07
-   2017-11-14 Lynn Garren : Yosemite is no longer supported

lareventdisplay v06\_15\_02
----------------------------------------------------------

-   2017-11-21 Lynn Garren : lareventdisplay v06\_15\_02 for larsoft v06\_57\_00
-   2017-11-20 Giuseppe Cerati : fix bug of displaying hits associated to invalid points

larexamples v06\_07\_10
--------------------------------------------------

-   2017-11-21 Lynn Garren : larexamples v06\_07\_10 for larsoft v06\_57\_00

larpandora v06\_17\_07
------------------------------------------------

-   2017-11-21 Lynn Garren : larpandora v06\_17\_07 for larsoft v06\_57\_00

larwirecell v06\_08\_04
--------------------------------------------------

-   2017-11-21 Lynn Garren : larwirecell v06\_08\_04 for larsoft v06\_57\_00

larana v06\_12\_02
----------------------------------------

-   2017-11-21 Lynn Garren : larana v06\_12\_02 for larsoft v06\_57\_00

larreco v06\_46\_00
------------------------------------------

-   2017-11-21 Lynn Garren : recover from previous revert
-   2017-11-21 Lynn Garren : Merge branch ‘release/v06\_57\_00’
-   2017-11-21 Lynn Garren : larreco v06\_46\_00
-   2017-11-14 Wesley Ketchum : add explicit options of wire and rawdigit assns
-   2017-11-20 baller : Merge branch ‘feature/bb\_TJWork’ into develop
-   2017-11-20 baller : Merge branch ‘develop’ of ssh://cdcvs.fnal.gov/cvs/projects/larreco into develop
-   2017-11-20 baller : Add shower algorithm
-   2017-11-20 baller : Add shower algorithm
-   2017-11-20 baller : Add shower algorithm
-   2017-11-20 baller : Remove check that clobbers neutrino PFParticles.
-   2017-11-20 baller : Clean up debug hit printing.
-   2017-11-20 baller : Tighten hard cut in SplitTrajCrossingVertices.
-   2017-11-20 Chris Backhouse : Merge branch ‘develop’ of ssh://cdcvs.fnal.gov/cvs/projects/larreco into develop
-   2017-11-20 Chris Backhouse : Fix associations to induction wires.
-   2017-11-19 Christoph Alt : Merge branch ‘develop’ into feature/chalt\_DPRawHitFinderUpdate
-   2017-11-19 Christoph Alt : small fix for dual phase raw hit finder
-   2017-11-19 Christoph Alt : small fix for dual phase raw hit finder
-   2017-11-17 baller : Merge branch ‘develop’ of ssh://cdcvs.fnal.gov/cvs/projects/larreco into develop
-   2017-11-17 Gianluca Petrillo : Fix for compilation error in assertion in SpacePointSolver
-   2017-11-17 baller : Merge branch ‘develop’ of ssh://cdcvs.fnal.gov/cvs/projects/larreco into develop
-   2017-11-16 Chris Backhouse : Active 2view mode (and call it that) correctly for lariat and argoneut.
-   2017-11-16 Chris Backhouse : Oops, need to swap V-\>U in a lot more places.
-   2017-11-16 Chris Backhouse : Adapt for Argoneut and Lariat too.
-   2017-11-15 Chris Backhouse : Need this for HitMap merger too.
-   2017-11-15 Chris Backhouse : Simplify by removing distinction between IHitMap and CHitMap.
-   2017-11-15 Chris Backhouse : Associate SpacePoints with their induction wire hits too.
-   2017-11-15 Lynn Garren : Revert “Support for dual phase. If dual phase detected, only search for one crossing wire. Tolerate missing crossing wires in the solver.”
-   2017-11-15 Chris Backhouse : Merge branch ‘master’ of ssh://cdcvs.fnal.gov/cvs/projects/larreco into bckhouse/feature\_reco3d
-   2017-11-15 Chris Backhouse : Support for dual phase. If dual phase detected, only search for one crossing wire. Tolerate missing crossing wires in the solver.
-   2017-11-14 baller : Comment out unused code
-   2017-11-14 baller : Recover from an error instead of stopping.

larsim v06\_35\_00
----------------------------------------

-   2017-11-21 Lynn Garren : larsim v06\_35\_00 for larsoft v06\_57\_00
-   2017-11-21 Lynn Garren : Merge branch ‘feature/gp\_Issue17869’ into release/v06\_57\_00
-   2017-10-27 Gianluca Petrillo : Merge branch ‘develop’ into feature/gp\_Issue17869
-   2017-10-17 Gianluca Petrillo : Revised SingleGen internal parsing of histograms.
-   2017-10-20 Gianluca Petrillo : Merge remote-tracking branch ‘origin/develop’ into feature/gp\_Issue17869
-   2017-10-18 Gianluca Petrillo : Distribution and mode configuration now support names.
-   2017-10-18 Gianluca Petrillo : Introduced FHiCL validation for SingleGen
-   2017-10-18 Gianluca Petrillo : Removing old code from SingleGen
-   2017-10-17 Gianluca Petrillo : Revised internal management of SingleGen histograms.
-   2017-10-17 Gianluca Petrillo : Revised SingleGen internal parsing of histograms.

larevt v06\_16\_09
----------------------------------------

-   2017-11-21 Lynn Garren : larevt v06\_16\_09 for larsoft v06\_57\_00

lardata v06\_32\_00
------------------------------------------

-   2017-11-21 Lynn Garren : lardata v06\_32\_00 for larsoft v06\_57\_00
-   2017-11-20 Gianluca Petrillo : Removing deprecated MemoryPeakTracker service.

larcore v06\_15\_06
------------------------------------------

-   2017-11-21 Lynn Garren : larcore v06\_15\_06 for larsoft v06\_57\_00

larpandoracontent v03\_08\_01
--------------------------------------------------------------

larsoftobj v1\_31\_00
----------------------------------------------

-   2017-11-21 Lynn Garren : larsoftobj v1\_31\_00 for larsoft v06\_57\_00
-   2017-11-21 Lynn Garren : update products
-   2017-11-14 Lynn Garren : Yosemite is no longer supported

lardataobj v1\_22\_00
----------------------------------------------

larcorealg v1\_10\_00
----------------------------------------------

-   2017-11-21 Lynn Garren : larcorealg v1\_10\_00 for larsoft v06\_57\_00
-   2017-11-17 Gianluca Petrillo : Fixed documentation of PlaneGeo
-   2017-10-26 Gianluca Petrillo : Added a box of active volume in TPCGeo
-   2017-10-26 Gianluca Petrillo : Added TPC half-length methods.
-   2017-10-26 Gianluca Petrillo : Cosmetic changes to documentation.

larcoreobj v1\_16\_02
----------------------------------------------

larbatch v01\_34\_00
--------------------------------------------

-   2017-11-21 Lynn Garren : larbatch v01\_34\_00 for larsoft v06\_57\_00
-   2017-11-21 Herbert Greenlee : Add \<role\> project element.
-   2017-11-21 Herbert Greenlee : Add xml stage configuration overrides (issue 16469).
-   2017-11-17 Herbert Greenlee : Use batch metadata if available.
-   2017-11-17 Herbert Greenlee : Fix bug due to ProjectDef change.
-   2017-11-16 Herbert Greenlee : Add initializer.
-   2017-11-14 Herbert Greenlee : Add –recur option.

larutils v1\_20\_01
------------------------------------------
