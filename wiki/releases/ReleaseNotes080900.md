# LArSoft v08_09_00 Release Notes



[list of LArSoft releases](LArSoft_release_list)  
Download instructions for [larsoft v08_09_00](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v08_09_00/larsoft-v08_09_00.html)  
Download instructions for [just larsoftobj v08_06_00](http://scisoft.fnal.gov/scisoft/bundles/larsoftobj/v08_06_00/larsoftobj-v08_06_00.html)

## Purpose

-   changes in develop
-   approved feature branches

## New features

\* larpandoracontent feature/sgreen_T0Calculation

\* space charge interface improvements

larevt branch feature/herogers_voxelizedSCE

larreco feature/herogers_dxSCE_calibrationCorrection

ubevt feature/herogers_voxelizedSCE

ubana feature/herogers_dESCE_calibrationCorrection

dunetpc feature/herogers_voxelizedSCE

sbndcode feature/herogers_voxelizedSCE

icaruscode feature/herogers_voxelizedSCE

breaking change

https://indico.fnal.gov/event/19644/contribution/1/material/slides/0.pdf

\* larcorealg larcore feature/gp_factorizeGeometryBuilding

    I have done some refactorisation work for the initialisation of LArSoft 
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

## Bug fixes

## Updated dependencies

-   wirecell 0.10.9

# Change List

## larsoft v08_09_00

-   2019-02-14 Lynn Garren : larsoft v08_09_00 for larsoft v08_09_00
-   2019-02-14 Lynn Garren : product versions
-   2019-02-11 Lynn Garren : nusystematics v00_02_06
-   2019-02-07 Lynn Garren : fix version

## lareventdisplay v08_03_04

-   2019-02-14 Lynn Garren : lareventdisplay v08_03_04 for larsoft v08_09_00
-   2019-02-11 Kyle Knoepfel : Update header dependencies.
-   2019-02-08 Kyle Knoepfel : Call non-default base-class constructors in preparation for art 3.02.

## larexamples v08_01_04

-   2019-02-14 Lynn Garren : larexamples v08_01_04 for larsoft v08_09_00
-   2019-02-11 Kyle Knoepfel : Disambiguate between util and larsoft::util namespaces.
-   2019-02-08 Kyle Knoepfel : Call non-default base-class constructors in preparation for art 3.02.

## larg4 v08_01_04

-   2019-02-14 Lynn Garren : larg4 v08_01_04 for larsoft v08_09_00

## larpandora v08_04_03

-   2019-02-14 Lynn Garren : larpandora v08_04_03 for larsoft v08_09_00
-   2019-02-11 Kyle Knoepfel : Add missing header dependency.
-   2019-02-08 Kyle Knoepfel : Call non-default base-class constructors in preparation for art 3.02.

## larwirecell v08_02_04

-   2019-02-14 Lynn Garren : larwirecell v08_02_04 for larsoft v08_09_00a
-   2019-02-08 Kyle Knoepfel : Call non-default base-class constructors in preparation for art 3.02.

## larana v08_02_01

-   2019-02-14 Lynn Garren : larana v08_02_01

## larreco v08_08_00

-   2019-02-14 Lynn Garren : larreco v08_08_00 for larsoft v08_09_00
-   2019-02-13 Lynn Garren : Merge branch 'feature/herogers_dxSCE_calibrationCorrection' into release/v08_09_00
-   2019-02-11 Thomas Junk : Protect against segfault if we only have one APA (Iceberg)
-   2019-02-11 Kyle Knoepfel : Remove unnecessary header dependency.
-   2019-02-08 Lynn Garren : larsoft v08_08_00
-   2019-02-08 Kyle Knoepfel : Call non-default base-class constructors in preparation for art 3.02.
-   2019-02-07 Hannah Rogers : Merge tag 'tags/v08_06_01' into feature/herogers_dxSCE_calibrationCorrection
-   2019-01-17 Hannah Rogers : Add fcl parameter to control SCE corrections
-   2019-01-15 Hannah Rogers : Merge tags/v08_02_01
-   2018-11-30 Hannah Rogers : Remove debug cout statments
-   2018-11-28 Hannah Rogers : Added space charge dx correction to calorimetry module

## larsim v08_03_01

-   2019-02-14 Lynn Garren : larsim v08_03_01 for larsoft v08_09_00
-   2019-02-08 Kyle Knoepfel : Call non-default base-class constructors in preparation for art 3.02.
-   2019-02-07 Kyle Knoepfel : Fix clang errors.
-   2019-02-07 Lynn Garren : Merge branch 'feature/knoepfel_nodiscard' into release/v08_08_00
-   2019-02-08 Lynn Garren : larsoft v08_08_00
-   2019-02-07 Lynn Garren : Revert “larsim v08_03_00 for larsoft v08_08_00”
-   2019-02-07 Lynn Garren : Merge branch 'develop' of ssh://cdcvs.fnal.gov/cvs/projects/larsim into develop
-   2019-02-07 Chris Green : Revert “Merge branch 'feature/knoepfel_nodiscard' into release/v08_08_00”
-   2019-02-07 Chris Green : Revert “Merge branch 'feature/knoepfel_nodiscard' into release/v08_08_00”
-   2019-02-07 Lynn Garren : larsim v08_03_00 for larsoft v08_08_00

## larevt v08_02_00

-   2019-02-14 Lynn Garren : larevt v08_02_00 for larsoft v08_09_00
-   2019-02-13 Lynn Garren : Merge branch 'feature/herogers_voxelizedSCE' into release/v08_09_00
-   2019-02-13 Hannah Rogers : Add default space charge fcl
-   2019-02-08 Kyle Knoepfel : Call non-default base-class constructors in preparation for art 3.02.
-   2019-02-07 Hannah Rogers : Merge tag 'tags/v08_01_02' into feature/herogers_voxelizedSCE
-   2018-11-28 Hannah Rogers : Added functionality back for 'CorrSCE'
-   2018-11-26 Hannah Rogers : Merge tag 'tags/v07_01_03' into feature/herogers_voxelizedSCE
-   2018-09-24 Hannah Rogers : Added necessary nominal functions to add SCE for reconstruction using calibration maps

## lardata v08_03_01

-   2019-02-14 Lynn Garren : lardata v08_03_01 for larsoft v08_09_00

## larcore v08_02_00

-   2019-02-14 Lynn Garren : recover from a revert
-   2019-02-14 Lynn Garren : Merge branch 'release/v08_09_00'
-   2019-02-14 Lynn Garren : larcore v08_01_03
-   2019-02-12 Lynn Garren : Merge branch 'feature/gp_factorizeGeometryBuilding' into release/v08_09_00
-   2019-02-07 Gianluca Petrillo : Merge remote-tracking branch 'origin/develop' into feature/gp_factorizeGeometryBuilding

## larpandoracontent v03_14_05

-   2019-02-14 Lynn Garren : larpandoracontent v03_14_05 for larsoft v08_09_00
-   2019-02-12 Steven Green : Merge branch 'updates'
-   2019-02-01 Steven Green : Update version and change log.
-   2019-02-12 Steven Green : Merge pull request \#76 from StevenGreen1/feature/ApplyT0Calculation
-   2019-02-11 Steven Green : Adjusting the resetting of hit positions post stitching for ambiguous cosmic rays to reflect X0 setting modifications.
-   2019-02-11 Steven Green : Set the x0 shift for all pfos in the hierarchy when stitching.
-   2019-02-11 Steven Green : Added helper functions that indicate whether a pfo was stitched and to return the stitched x0 value.
-   2019-02-05 Steven Green : Post cosmic ray tagging, reset calo hit positions for ambiguous pfos that have been stitched.
-   2019-01-28 Steven Green : Adding option to always calculate T0 when stitching cosmics rays.
-   2019-02-11 Kyle Knoepfel : Add missing header dependencies.

## larsoftobj v08_06_00

-   2019-02-14 Lynn Garren : larsoftobj v08_06_00 for larsoft v08_09_00
-   2019-02-14 Lynn Garren : product versions

## lardataobj v08_02_00

-   2019-02-14 Lynn Garren : lardataobj v08_02_00 for larsoft v08_09_00
-   2019-02-12 Gianluca Petrillo : Another bug fix in \`lar::sparse_vector::combine_range()\`.
-   2019-02-12 Gianluca Petrillo : More documentation changes on \`lar::sparse_vector\`
-   2019-02-12 Gianluca Petrillo : Bug fixes to \`sparse_vector::combine_range()\`.
-   2019-02-12 Gianluca Petrillo : Documentation typos in \`sparse_vector\`
-   2019-02-12 Gianluca Petrillo : Converting indentation from tabular to spaces.
-   2018-11-08 Gianluca Petrillo : Added features to lar::sparse_vector

## lardataalg v08_03_04

-   2019-02-14 Lynn Garren : lardataalg v08_03_04 for larsoft v08_09_00

## larcorealg v08_04_00

-   2019-02-14 Lynn Garren : Merge branch 'release/v08_09_00'
-   2019-02-14 Lynn Garren : Revert “Revert ”Merge branch 'feature/gp_factorizeGeometryBuilding' into release/v08_08_00””
-   2019-02-14 Lynn Garren : larcorealg v08_04_00 for larsoft v08_09_00
-   2019-02-12 Lynn Garren : Merge branch 'feature/gp_factorizeGeometryBuilding' into release/v08_09_00
-   2019-02-07 Gianluca Petrillo : Removed obsolete and/or improper condition assertions.
-   2019-02-07 Gianluca Petrillo : Removed dead code.
-   2019-02-07 Gianluca Petrillo : Merge remote-tracking branch 'origin/develop' into feature/gp_factorizeGeometryBuilding
-   2019-02-07 Lynn Garren : larcorealg v08_03_00
-   2019-02-07 Lynn Garren : Merge branch 'feature/ss_issue19191' into release/v08_08_00

## larcoreobj v08_02_01

## larbatch v01_47_03

## larutils v1_23_11
