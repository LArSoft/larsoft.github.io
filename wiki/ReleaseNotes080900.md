LArSoft v08\_09\_00 Release Notes(#LArSoft-v08_09_00-Release-Notes)
======================================================================

-   **Table of contents**
-   [LArSoft v08\_09\_00 Release Notes](#LArSoft-v08_09_00-Release-Notes)
    -   [Purpose](#Purpose)
    -   [New features](#New-features)
    -   [Bug fixes](#Bug-fixes)
    -   [Updated dependencies](#Updated-dependencies)
-   [Change List](#Change-List)
    -   [larsoft v08\_09\_00](#larsoft-v08_09_00)
    -   [lareventdisplay v08\_03\_04](#lareventdisplay-v08_03_04)
    -   [larexamples v08\_01\_04](#larexamples-v08_01_04)
    -   [larg4 v08\_01\_04](#larg4-v08_01_04)
    -   [larpandora v08\_04\_03](#larpandora-v08_04_03)
    -   [larwirecell v08\_02\_04](#larwirecell-v08_02_04)
    -   [larana v08\_02\_01](#larana-v08_02_01)
    -   [larreco v08\_08\_00](#larreco-v08_08_00)
    -   [larsim v08\_03\_01](#larsim-v08_03_01)
    -   [larevt v08\_02\_00](#larevt-v08_02_00)
    -   [lardata v08\_03\_01](#lardata-v08_03_01)
    -   [larcore v08\_02\_00](#larcore-v08_02_00)
    -   [larpandoracontent v03\_14\_05](#larpandoracontent-v03_14_05)
    -   [larsoftobj v08\_06\_00](#larsoftobj-v08_06_00)
    -   [lardataobj v08\_02\_00](#lardataobj-v08_02_00)
    -   [lardataalg v08\_03\_04](#lardataalg-v08_03_04)
    -   [larcorealg v08\_04\_00](#larcorealg-v08_04_00)
    -   [larcoreobj v08\_02\_01](#larcoreobj-v08_02_01)
    -   [larbatch v01\_47\_03](#larbatch-v01_47_03)
    -   [larutils v1\_23\_11](#larutils-v1_23_11)

[list of LArSoft releases](LArSoft_release_list)\
Download instructions for [larsoft v08\_09\_00](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v08_09_00/larsoft-v08_09_00.html)\
Download instructions for [just larsoftobj v08\_06\_00](http://scisoft.fnal.gov/scisoft/bundles/larsoftobj/v08_06_00/larsoftobj-v08_06_00.html)

Purpose(#Purpose)
--------------------

-   changes in develop
-   approved feature branches

New features(#New-features)
------------------------------

-   larpandoracontent feature/sgreen\_T0Calculation
-   space charge interface improvements
    -   larevt branch feature/herogers\_voxelizedSCE
    -   larreco feature/herogers\_dxSCE\_calibrationCorrection
    -   ubevt feature/herogers\_voxelizedSCE
    -   ubana feature/herogers\_dESCE\_calibrationCorrection
    -   dunetpc feature/herogers\_voxelizedSCE
    -   sbndcode feature/herogers\_voxelizedSCE
    -   icaruscode feature/herogers\_voxelizedSCE
    -   breaking change
    -   [https://indico.fnal.gov/event/19644/contribution/1/material/slides/0.pdf](https://indico.fnal.gov/event/19644/contribution/1/material/slides/0.pdf)
-   larcorealg larcore feature/gp\_factorizeGeometryBuilding
    -   I have done some refactorisation work for the initialisation of LArSoft 
            geometry.
            Right now, the geometry is described in LArSoft by some "component" objects, 
            e.g. `geo::WireGeo`, `geo::TPCGeo` etc., which report things like the wire 
            position, the wire nearest to a point and so forth. These objects also have 
            code to interpret the geometry structure (let's say the GDML description, 
            although it's technically not precise), e.g. to discover which wire planes are 
            inside each TPC.
            My modifications extract the interpretation of the geometry source from them, 
            leaving them with the only task of providing information about the geometry.
            The task of constructing them is delegated now to an algorithm 
            (`geo::GeometryBuilder`), after the principle of separation of tasks.
            I provide a "standard" implementation of such algorithm, which behaves like 
            the old code. The algorithm can be replaced or customised without touching the 
            aforementioned geometry component objects.
            On LArSoft/art side, I have updated `geo::Geometry` and 
            `geo::AuxDetGeometryService` to always use the standard geometry building 
            algorithm. They are ready for toolisation, which would be a future step when 
            we'll need a custom algorithm.

            One noticeable effect of the new structure, which is why I undertook this 
            effort, is to allow loading a geometry without wires (we'll attempt something 
            with pixelated readout planes). I expect `geo::PlaneGeo` not to be ready for 
            that yet, and that will be a following step too.

            I have worked under the intention of changes being non-breaking (as long as 
            everything downstream is recompiled).

            Usual quality frills: provided unit test of some of the library components, 
            doxygen documentation included, ran unit tests locally (c2:prof, e17:prof), 
            triggered integration tests (but it's still hard to me to interpret the 
            failures: I believe most experiments had not updated to `v08_07_00` yet), 
            verified that I can still load ICARUS geometry in a python interactive 
            session.

Bug fixes(#Bug-fixes)
------------------------

Updated dependencies(#Updated-dependencies)
----------------------------------------------

-   wirecell 0.10.9

Change List(#Change-List)
============================

larsoft v08\_09\_00(#larsoft-v08_09_00)
------------------------------------------

-   2019-02-14 Lynn Garren : larsoft v08\_09\_00 for larsoft v08\_09\_00
-   2019-02-14 Lynn Garren : product versions
-   2019-02-11 Lynn Garren : nusystematics v00\_02\_06
-   2019-02-07 Lynn Garren : fix version

lareventdisplay v08\_03\_04(#lareventdisplay-v08_03_04)
----------------------------------------------------------

-   2019-02-14 Lynn Garren : lareventdisplay v08\_03\_04 for larsoft v08\_09\_00
-   2019-02-11 Kyle Knoepfel : Update header dependencies.
-   2019-02-08 Kyle Knoepfel : Call non-default base-class constructors in preparation for art 3.02.

larexamples v08\_01\_04(#larexamples-v08_01_04)
--------------------------------------------------

-   2019-02-14 Lynn Garren : larexamples v08\_01\_04 for larsoft v08\_09\_00
-   2019-02-11 Kyle Knoepfel : Disambiguate between util and larsoft::util namespaces.
-   2019-02-08 Kyle Knoepfel : Call non-default base-class constructors in preparation for art 3.02.

larg4 v08\_01\_04(#larg4-v08_01_04)
--------------------------------------

-   2019-02-14 Lynn Garren : larg4 v08\_01\_04 for larsoft v08\_09\_00

larpandora v08\_04\_03(#larpandora-v08_04_03)
------------------------------------------------

-   2019-02-14 Lynn Garren : larpandora v08\_04\_03 for larsoft v08\_09\_00
-   2019-02-11 Kyle Knoepfel : Add missing header dependency.
-   2019-02-08 Kyle Knoepfel : Call non-default base-class constructors in preparation for art 3.02.

larwirecell v08\_02\_04(#larwirecell-v08_02_04)
--------------------------------------------------

-   2019-02-14 Lynn Garren : larwirecell v08\_02\_04 for larsoft v08\_09\_00a
-   2019-02-08 Kyle Knoepfel : Call non-default base-class constructors in preparation for art 3.02.

larana v08\_02\_01(#larana-v08_02_01)
----------------------------------------

-   2019-02-14 Lynn Garren : larana v08\_02\_01

larreco v08\_08\_00(#larreco-v08_08_00)
------------------------------------------

-   2019-02-14 Lynn Garren : larreco v08\_08\_00 for larsoft v08\_09\_00
-   2019-02-13 Lynn Garren : Merge branch ‘feature/herogers\_dxSCE\_calibrationCorrection’ into release/v08\_09\_00
-   2019-02-11 Thomas Junk : Protect against segfault if we only have one APA (Iceberg)
-   2019-02-11 Kyle Knoepfel : Remove unnecessary header dependency.
-   2019-02-08 Lynn Garren : larsoft v08\_08\_00
-   2019-02-08 Kyle Knoepfel : Call non-default base-class constructors in preparation for art 3.02.
-   2019-02-07 Hannah Rogers : Merge tag ‘tags/v08\_06\_01’ into feature/herogers\_dxSCE\_calibrationCorrection
-   2019-01-17 Hannah Rogers : Add fcl parameter to control SCE corrections
-   2019-01-15 Hannah Rogers : Merge tags/v08\_02\_01
-   2018-11-30 Hannah Rogers : Remove debug cout statments
-   2018-11-28 Hannah Rogers : Added space charge dx correction to calorimetry module

larsim v08\_03\_01(#larsim-v08_03_01)
----------------------------------------

-   2019-02-14 Lynn Garren : larsim v08\_03\_01 for larsoft v08\_09\_00
-   2019-02-08 Kyle Knoepfel : Call non-default base-class constructors in preparation for art 3.02.
-   2019-02-07 Kyle Knoepfel : Fix clang errors.
-   2019-02-07 Lynn Garren : Merge branch ‘feature/knoepfel\_nodiscard’ into release/v08\_08\_00
-   2019-02-08 Lynn Garren : larsoft v08\_08\_00
-   2019-02-07 Lynn Garren : Revert “larsim v08\_03\_00 for larsoft v08\_08\_00”
-   2019-02-07 Lynn Garren : Merge branch ‘develop’ of ssh://cdcvs.fnal.gov/cvs/projects/larsim into develop
-   2019-02-07 Chris Green : Revert “Merge branch ‘feature/knoepfel\_nodiscard’ into release/v08\_08\_00”
-   2019-02-07 Chris Green : Revert “Merge branch ‘feature/knoepfel\_nodiscard’ into release/v08\_08\_00”
-   2019-02-07 Lynn Garren : larsim v08\_03\_00 for larsoft v08\_08\_00

larevt v08\_02\_00(#larevt-v08_02_00)
----------------------------------------

-   2019-02-14 Lynn Garren : larevt v08\_02\_00 for larsoft v08\_09\_00
-   2019-02-13 Lynn Garren : Merge branch ‘feature/herogers\_voxelizedSCE’ into release/v08\_09\_00
-   2019-02-13 Hannah Rogers : Add default space charge fcl
-   2019-02-08 Kyle Knoepfel : Call non-default base-class constructors in preparation for art 3.02.
-   2019-02-07 Hannah Rogers : Merge tag ‘tags/v08\_01\_02’ into feature/herogers\_voxelizedSCE
-   2018-11-28 Hannah Rogers : Added functionality back for ‘CorrSCE’
-   2018-11-26 Hannah Rogers : Merge tag ‘tags/v07\_01\_03’ into feature/herogers\_voxelizedSCE
-   2018-09-24 Hannah Rogers : Added necessary nominal functions to add SCE for reconstruction using calibration maps

lardata v08\_03\_01(#lardata-v08_03_01)
------------------------------------------

-   2019-02-14 Lynn Garren : lardata v08\_03\_01 for larsoft v08\_09\_00

larcore v08\_02\_00(#larcore-v08_02_00)
------------------------------------------

-   2019-02-14 Lynn Garren : recover from a revert
-   2019-02-14 Lynn Garren : Merge branch ‘release/v08\_09\_00’
-   2019-02-14 Lynn Garren : larcore v08\_01\_03
-   2019-02-12 Lynn Garren : Merge branch ‘feature/gp\_factorizeGeometryBuilding’ into release/v08\_09\_00
-   2019-02-07 Gianluca Petrillo : Merge remote-tracking branch ‘origin/develop’ into feature/gp\_factorizeGeometryBuilding

larpandoracontent v03\_14\_05(#larpandoracontent-v03_14_05)
--------------------------------------------------------------

-   2019-02-14 Lynn Garren : larpandoracontent v03\_14\_05 for larsoft v08\_09\_00
-   2019-02-12 Steven Green : Merge branch ‘updates’
-   2019-02-01 Steven Green : Update version and change log.
-   2019-02-12 Steven Green : Merge pull request [\#76](/redmine/issues/76 "Bug: Notification preferences link in email (Closed)") from StevenGreen1/feature/ApplyT0Calculation
-   2019-02-11 Steven Green : Adjusting the resetting of hit positions post stitching for ambiguous cosmic rays to reflect X0 setting modifications.
-   2019-02-11 Steven Green : Set the x0 shift for all pfos in the hierarchy when stitching.
-   2019-02-11 Steven Green : Added helper functions that indicate whether a pfo was stitched and to return the stitched x0 value.
-   2019-02-05 Steven Green : Post cosmic ray tagging, reset calo hit positions for ambiguous pfos that have been stitched.
-   2019-01-28 Steven Green : Adding option to always calculate T0 when stitching cosmics rays.
-   2019-02-11 Kyle Knoepfel : Add missing header dependencies.

larsoftobj v08\_06\_00(#larsoftobj-v08_06_00)
------------------------------------------------

-   2019-02-14 Lynn Garren : larsoftobj v08\_06\_00 for larsoft v08\_09\_00
-   2019-02-14 Lynn Garren : product versions

lardataobj v08\_02\_00(#lardataobj-v08_02_00)
------------------------------------------------

-   2019-02-14 Lynn Garren : lardataobj v08\_02\_00 for larsoft v08\_09\_00
-   2019-02-12 Gianluca Petrillo : Another bug fix in \`lar::sparse\_vector::combine\_range()\`.
-   2019-02-12 Gianluca Petrillo : More documentation changes on \`lar::sparse\_vector\`
-   2019-02-12 Gianluca Petrillo : Bug fixes to \`sparse\_vector::combine\_range()\`.
-   2019-02-12 Gianluca Petrillo : Documentation typos in \`sparse\_vector\`
-   2019-02-12 Gianluca Petrillo : Converting indentation from tabular to spaces.
-   2018-11-08 Gianluca Petrillo : Added features to lar::sparse\_vector

lardataalg v08\_03\_04(#lardataalg-v08_03_04)
------------------------------------------------

-   2019-02-14 Lynn Garren : lardataalg v08\_03\_04 for larsoft v08\_09\_00

larcorealg v08\_04\_00(#larcorealg-v08_04_00)
------------------------------------------------

-   2019-02-14 Lynn Garren : Merge branch ‘release/v08\_09\_00’
-   2019-02-14 Lynn Garren : Revert “Revert”Merge branch ‘feature/gp\_factorizeGeometryBuilding’ into release/v08\_08\_00“”
-   2019-02-14 Lynn Garren : larcorealg v08\_04\_00 for larsoft v08\_09\_00
-   2019-02-12 Lynn Garren : Merge branch ‘feature/gp\_factorizeGeometryBuilding’ into release/v08\_09\_00
-   2019-02-07 Gianluca Petrillo : Removed obsolete and/or improper condition assertions.
-   2019-02-07 Gianluca Petrillo : Removed dead code.
-   2019-02-07 Gianluca Petrillo : Merge remote-tracking branch ‘origin/develop’ into feature/gp\_factorizeGeometryBuilding
-   2019-02-07 Lynn Garren : larcorealg v08\_03\_00
-   2019-02-07 Lynn Garren : Merge branch ‘feature/ss\_issue19191’ into release/v08\_08\_00

larcoreobj v08\_02\_01(#larcoreobj-v08_02_01)
------------------------------------------------

larbatch v01\_47\_03(#larbatch-v01_47_03)
--------------------------------------------

larutils v1\_23\_11(#larutils-v1_23_11)
------------------------------------------
