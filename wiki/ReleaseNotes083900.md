LArSoft v08\_39\_00 Release Notes(#LArSoft-v08_39_00-Release-Notes)
======================================================================

-   **Table of contents**
-   [LArSoft v08\_39\_00 Release Notes](#LArSoft-v08_39_00-Release-Notes)
    -   [Purpose](#Purpose)
    -   [New features](#New-features)
    -   [Bug fixes](#Bug-fixes)
    -   [Updated dependencies](#Updated-dependencies)
-   [Change List](#Change-List)
    -   [larsoft v08\_39\_00](#larsoft-v08_39_00)
    -   [lareventdisplay v08\_11\_00](#lareventdisplay-v08_11_00)
    -   [larexamples v08\_05\_00](#larexamples-v08_05_00)
    -   [larg4 v08\_09\_00](#larg4-v08_09_00)
    -   [larpandora v08\_10\_00](#larpandora-v08_10_00)
    -   [larwirecell v08\_11\_00](#larwirecell-v08_11_00)
    -   [larana v08\_15\_00](#larana-v08_15_00)
    -   [larreco v08\_26\_00](#larreco-v08_26_00)
    -   [larsim v08\_18\_00](#larsim-v08_18_00)
    -   [larevt v08\_09\_00](#larevt-v08_09_00)
    -   [lardata v08\_12\_00](#lardata-v08_12_00)
    -   [larcore v08\_09\_00](#larcore-v08_09_00)
    -   [larpandoracontent v03\_15\_11](#larpandoracontent-v03_15_11)
    -   [larsoftobj v08\_24\_00](#larsoftobj-v08_24_00)
    -   [lardataobj v08\_09\_00](#lardataobj-v08_09_00)
    -   [lardataalg v08\_11\_00](#lardataalg-v08_11_00)
    -   [larcorealg v08\_19\_00](#larcorealg-v08_19_00)
    -   [larcoreobj v08\_09\_00](#larcoreobj-v08_09_00)
    -   [larbatch v01\_51\_12](#larbatch-v01_51_12)
    -   [larutils v1\_25\_03](#larutils-v1_25_03)

[list of LArSoft releases](LArSoft_release_list)\
Download instructions for [larsoft v08\_39\_00](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v08_39_00/larsoft-v08_39_00.html)\
Download instructions for [just larsoftobj v08\_24\_00](http://scisoft.fnal.gov/scisoft/bundles/larsoftobj/v08_24_00/larsoftobj-v08_24_00.html)

Purpose(#Purpose)
--------------------

-   With this release, only e19 and c7 builds are supported. Support for e17 and c2 has been dropped.
-   changes in develop
-   approved feature branches

New features(#New-features)
------------------------------

-   larsim feature/gputnam-MergeSimSources for [\#23815](/redmine/issues/23815 "Feature: Add MergeSimSources Back into larsim (Closed)")
-   removing vestigial code in larreco [\#23794](/redmine/issues/23794 "Necessary Maintenance: Remove vestigial code using TVirtualMC from larreco (Closed)")
-   larwirecell feature/wgu\_simch\_priorDepo
    -   internal logic changes

Bug fixes(#Bug-fixes)
------------------------

Updated dependencies(#Updated-dependencies)
----------------------------------------------

-   mrb v3\_04\_03
-   wirecell v0\_12\_4g
    -   fixes bug found when building with clang

Change List(#Change-List)
============================

larsoft v08\_39\_00(#larsoft-v08_39_00)
------------------------------------------

-   2020-01-08 Lynn Garren : larpandoracontent v03\_15\_11
-   2020-01-07 Lynn Garren : larsoft v08\_39\_00 for larsoft v08\_39\_00
-   2020-01-07 Lynn Garren : product versions

lareventdisplay v08\_11\_00(#lareventdisplay-v08_11_00)
----------------------------------------------------------

-   2020-01-07 Lynn Garren : lareventdisplay v08\_11\_00 for larsoft v08\_39\_00

larexamples v08\_05\_00(#larexamples-v08_05_00)
--------------------------------------------------

-   2020-01-07 Lynn Garren : larexamples v08\_05\_00 for larsoft v08\_39\_00

larg4 v08\_09\_00(#larg4-v08_09_00)
--------------------------------------

-   2020-01-07 Lynn Garren : larg4 v08\_09\_00 for larsoft v08\_39\_00

larpandora v08\_10\_00(#larpandora-v08_10_00)
------------------------------------------------

-   2020-01-08 Lynn Garren : larpandoracontent v03\_15\_11
-   2020-01-07 Lynn Garren : larpandora v08\_10\_00 for larsoft v08\_39\_00

larwirecell v08\_11\_00(#larwirecell-v08_11_00)
--------------------------------------------------

-   2020-01-07 Lynn Garren : larwirecell v08\_11\_00 for larsoft v08\_39\_00
-   2020-01-07 Lynn Garren : wirecell v0\_12\_4g with clang bugfix
-   2020-01-07 Wenqiang Gu : save the original depo position in simchannel
-   2020-01-07 Wenqiang Gu : fill simchannel map with the DUNE style

larana v08\_15\_00(#larana-v08_15_00)
----------------------------------------

-   2020-01-07 Lynn Garren : larana v08\_15\_00 for larsoft v08\_39\_00

larreco v08\_26\_00(#larreco-v08_26_00)
------------------------------------------

-   2020-01-07 Lynn Garren : larreco v08\_26\_00 for larsoft v08\_39\_00
-   2020-01-07 Lynn Garren : whitespace
-   2020-01-07 Lynn Garren : Merge branch ‘feature/remove\_GeaneMCApplication’ into release/v08\_39\_00
-   2020-01-07 Tingjun Yang : Fix a bug spotted by Glenn, Ajib and Heng-Ye.
-   2020-01-07 Lynn Garren : removing GeaneMCApplication

larsim v08\_18\_00(#larsim-v08_18_00)
----------------------------------------

-   2020-01-07 Lynn Garren : larsim v08\_18\_00 for larsoft v08\_39\_00
-   2020-01-06 gputnam : Merge branch ‘develop’ into feature/gputnam-MergeSimSources
-   2019-12-20 Kyle Knoepfel : larsoft v08\_38\_01
-   2019-12-18 Tingjun Yang : Merge branch ‘develop’ of ssh://cdcvs.fnal.gov/cvs/projects/larsim into develop
-   2019-12-18 Tingjun Yang : Comment out dune configurations as they are moved to dunetpc.
-   2019-11-18 gputnam : Merge commit ‘f3fb1b7a53b17a33cfa44fca86695f9ce5bfe4db’ into feature/gputnam-MergeSimSources
-   2019-11-15 gputnam : Merge tag ‘v08\_14\_00’ into feature/gputnam-MergeSimSources
-   2019-11-06 gputnam : Move MergeSimSource module back into larsim.

larevt v08\_09\_00(#larevt-v08_09_00)
----------------------------------------

-   2020-01-07 Lynn Garren : larevt v08\_09\_00 for larsoft v08\_39\_00

lardata v08\_12\_00(#lardata-v08_12_00)
------------------------------------------

-   2020-01-07 Lynn Garren : lardata v08\_12\_00 for larsoft v08\_39\_00

larcore v08\_09\_00(#larcore-v08_09_00)
------------------------------------------

-   2020-01-07 Lynn Garren : larcore v08\_09\_00 for larsoft v08\_39\_00

larpandoracontent v03\_15\_11(#larpandoracontent-v03_15_11)
--------------------------------------------------------------

-   2020-01-08 Lynn Garren : sorry - fixing the version
-   2020-01-07 Lynn Garren : larpandoracontent v03\_16\_00 for larsoft v08\_39\_00

larsoftobj v08\_24\_00(#larsoftobj-v08_24_00)
------------------------------------------------

-   2020-01-07 Lynn Garren : larsoftobj v08\_24\_00 for larsoft v08\_39\_00
-   2020-01-07 Lynn Garren : product versions

lardataobj v08\_09\_00(#lardataobj-v08_09_00)
------------------------------------------------

-   2020-01-07 Lynn Garren : lardataobj v08\_09\_00 for larsoft v08\_39\_00

lardataalg v08\_11\_00(#lardataalg-v08_11_00)
------------------------------------------------

-   2020-01-07 Lynn Garren : lardataalg v08\_11\_00 for larsoft v08\_39\_00

larcorealg v08\_19\_00(#larcorealg-v08_19_00)
------------------------------------------------

-   2020-01-07 Lynn Garren : larcorealg v08\_19\_00 for larsoft v08\_39\_00
-   2019-12-31 Gianluca Petrillo : Added \`geo::PlaneGeo::InterWireDistance()\` computing 3D distance between wires.
-   2019-12-31 Gianluca Petrillo : \`geo::PlaneGeo::InterWireProjectedDistance()\` does not handle directions parallel to wires specially any more.
-   2019-12-31 Gianluca Petrillo : The usual Clang 5.0.0 bug (\`c7\` has it fixed).
-   2019-12-31 Gianluca Petrillo : Added \`geo::PlaneGeo::InterWireProjectedDistance()\`.
-   2019-12-31 Gianluca Petrillo : Added vector composition methods \`geo::PlaneGeo::ComposeVector()\`.

larcoreobj v08\_09\_00(#larcoreobj-v08_09_00)
------------------------------------------------

-   2020-01-07 Lynn Garren : larcoreobj v08\_09\_00 for larsoft v08\_39\_00

larbatch v01\_51\_12(#larbatch-v01_51_12)
--------------------------------------------

larutils v1\_25\_03(#larutils-v1_25_03)
------------------------------------------
