LArSoft v08\_08\_00 Release Notes
======================================================================

-   **Table of contents**
-   [LArSoft v08\_08\_00 Release Notes](#LArSoft-v08_08_00-Release-Notes)
    -   [Purpose](#Purpose)
    -   [New features](#New-features)
    -   [Bug fixes](#Bug-fixes)
    -   [Updated dependencies](#Updated-dependencies)
-   [Change List](#Change-List)
    -   [larsoft v08\_08\_00](#larsoft-v08_08_00)
    -   [lareventdisplay v08\_03\_03](#lareventdisplay-v08_03_03)
    -   [larexamples v08\_01\_03](#larexamples-v08_01_03)
    -   [larg4 v08\_01\_03](#larg4-v08_01_03)
    -   [larpandora v08\_04\_02](#larpandora-v08_04_02)
    -   [larwirecell v08\_02\_03](#larwirecell-v08_02_03)
    -   [larana v08\_02\_00](#larana-v08_02_00)
    -   [larreco v08\_07\_00](#larreco-v08_07_00)
    -   [larsim v08\_03\_00](#larsim-v08_03_00)
    -   [larevt v08\_01\_03](#larevt-v08_01_03)
    -   [lardata v08\_03\_00](#lardata-v08_03_00)
    -   [larcore v08\_01\_03](#larcore-v08_01_03)
    -   [larpandoracontent v03\_14\_04](#larpandoracontent-v03_14_04)
    -   [larsoftobj v08\_05\_00](#larsoftobj-v08_05_00)
    -   [lardataobj v08\_01\_03](#lardataobj-v08_01_03)
    -   [lardataalg v08\_03\_03](#lardataalg-v08_03_03)
    -   [larcorealg v08\_03\_00](#larcorealg-v08_03_00)
    -   [larcoreobj v08\_02\_01](#larcoreobj-v08_02_01)
    -   [larbatch v01\_47\_03](#larbatch-v01_47_03)
    -   [larutils v1\_23\_11](#larutils-v1_23_11)

[list of LArSoft releases](LArSoft_release_list)\
Download instructions for [larsoft v08\_08\_00](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v08_08_00/larsoft-v08_08_00.html)\
Download instructions for [just larsoftobj v08\_05\_00](http://scisoft.fnal.gov/scisoft/bundles/larsoftobj/v08_05_00/larsoftobj-v08_05_00.html)

Purpose
--------------------

-   changes to develop
-   approved feature branches

New features
------------------------------

-   Avoid discarding createEngine’s returned reference
    -   [Kyle’s talk](https://indico.fnal.gov/event/19644/contribution/2/material/slides/0.pdf)
    -   nutools:feature/knoepfel\_nodiscard
    -   larana:feature/knoepfel\_nodiscard
    -   larsim:feature/knoepfel\_nodiscard
    -   larreco:feature/knoepfel\_nodiscard
    -   lariatsoft:feature/knoepfel\_nodiscard
    -   uboonecode:feature/knoepfel\_nodiscard
    -   ubreco:feature/knoepfel\_nodiscard
    -   ubcrt:feature/knoepfel\_nodiscard
    -   ubsim:feature/knoepfel\_nodiscard
    -   ubcore:feature/knoepfel\_nodiscard
    -   ubevt:feature/knoepfel\_nodiscard
    -   sbndcode:feature/knoepfel\_nodiscard
    -   dunetpc:feature/knoepfel\_nodiscard
    -   argoneutcode:feature/knoepfel\_nodiscard
    -   icaruscode:feature/knoepfel\_nodiscard
-   issue [\#19191](/redmine/issues/19191 "Feature: Add ability to iterate over ChannelID_t within a TPC (Closed)")
    -   larcorealg feature/ss\_issue19191
    -   dunetpc feature/ss\_issue19191
-   larreco feature/cerati\_shw-trk-fits

Bug fixes
------------------------

Updated dependencies
----------------------------------------------

-   nutools v2\_26\_07
-   nusystematics v00\_02\_06

Change List
============================

larsoft v08\_08\_00
------------------------------------------

-   2019-02-07 Lynn Garren : product versions
-   2019-02-07 Lynn Garren : larsoft v08\_08\_00 for larsoft v08\_08\_00
-   2019-02-05 Lynn Garren : s75

lareventdisplay v08\_03\_03
----------------------------------------------------------

-   2019-02-07 Lynn Garren : lareventdisplay v08\_03\_03 for larsoft v08\_08\_00

larexamples v08\_01\_03
--------------------------------------------------

-   2019-02-07 Lynn Garren : larexamples v08\_01\_03 for larsoft v08\_08\_00

larg4 v08\_01\_03
--------------------------------------

-   2019-02-07 Lynn Garren : larg4 v08\_01\_03 for larsoft v08\_08\_00

larpandora v08\_04\_02
------------------------------------------------

-   2019-02-07 Lynn Garren : larpandora v08\_04\_02 for larsoft v08\_08\_00

larwirecell v08\_02\_03
--------------------------------------------------

-   2019-02-07 Lynn Garren : larwirecell v08\_02\_03 for larsoft v08\_08\_00

larana v08\_02\_00
----------------------------------------

-   2019-02-07 Lynn Garren : larana v08\_02\_00
-   2019-02-07 Lynn Garren : Merge branch ‘feature/knoepfel\_nodiscard’ into release/v08\_08\_00
-   2019-02-07 Kyle Knoepfel : Fix clang errors.
-   2019-02-07 Lynn Garren : Merge branch ‘feature/knoepfel\_nodiscard’ into release/v08\_08\_00
-   2019-02-06 Kyle Knoepfel : Call non-default base-class constructors in preparation for art 3.02.
-   2019-02-04 Kyle Knoepfel : Merge branch ‘develop’ into feature/knoepfel\_nodiscard
-   2019-01-18 Kyle Knoepfel : Whitespace cleanup.
-   2019-01-18 Kyle Knoepfel : Remove getEngine calls; some cleanups.

larreco v08\_07\_00
------------------------------------------

-   2019-02-07 Lynn Garren : larreco v08\_07\_00 for larsoft v08\_08\_00
-   2019-02-07 Lynn Garren : Merge branch ‘feature/knoepfel\_nodiscard’ into release/v08\_08\_00
-   2019-02-07 Kyle Knoepfel : Fix clang errors.
-   2019-02-07 Lynn Garren : Merge branch ‘feature/knoepfel\_nodiscard’ into release/v08\_08\_00
-   2019-02-06 Lynn Garren : Merge branch ‘feature/cerati\_shw-trk-fits’ into release/v08\_08\_00
-   2019-02-04 Kyle Knoepfel : Merge branch ‘develop’ into feature/knoepfel\_nodiscard
-   2019-01-30 Giuseppe Cerati : kalman filter fixes and updates for MicroBooNE MCC9
-   2019-01-18 Kyle Knoepfel : Remove getEngine calls; some cleanups.

larsim v08\_03\_00
----------------------------------------

-   2019-02-07 Lynn Garren : larsim v08\_03\_00
-   2019-02-07 Lynn Garren : Merge branch ‘feature/knoepfel\_nodiscard’ into release/v08\_08\_00
-   2019-02-07 Kyle Knoepfel : Fix clang errors.
-   2019-02-07 Lynn Garren : Merge branch ‘feature/knoepfel\_nodiscard’ into release/v08\_08\_00
-   2019-02-04 Kyle Knoepfel : Merge branch ‘develop’ into feature/knoepfel\_nodiscard
-   2018-10-08 Kyle Knoepfel : Remove getEngine calls; other cleanups.

larevt v08\_01\_03
----------------------------------------

-   2019-02-07 Lynn Garren : larevt v08\_01\_03 for larsoft v08\_08\_00

lardata v08\_03\_00
------------------------------------------

-   2019-02-07 Lynn Garren : larcore back down to v08\_01\_03
-   2019-02-07 Lynn Garren : lardata v08\_03\_00 for larsoft v08\_08\_00
-   2019-02-06 Kyle Knoepfel : Call non-default base-class constructors in preparation for art 3.02.

larcore v08\_01\_03
------------------------------------------

-   2019-02-07 Lynn Garren : Merge branch ‘release/v08\_08\_00’
-   2019-02-07 Lynn Garren : larcore v08\_01\_03
-   2019-02-07 Lynn Garren : Revert “Merge branch ‘feature/gp\_factorizeGeometryBuilding’ into release/v08\_08\_00”
-   2019-02-07 Lynn Garren : larcore v08\_02\_00
-   2019-02-07 Lynn Garren : Merge branch ‘feature/gp\_factorizeGeometryBuilding’ into release/v08\_08\_00
-   2019-02-01 Gianluca Petrillo : Added code in Geometry service to control which geometry builder to use.

larpandoracontent v03\_14\_04
--------------------------------------------------------------

larsoftobj v08\_05\_00
------------------------------------------------

-   2019-02-07 Lynn Garren : product versions
-   2019-02-07 Lynn Garren : larsoftobj v08\_05\_00 for larsoft v08\_08\_00

lardataobj v08\_01\_03
------------------------------------------------

-   2019-02-07 Lynn Garren : lardataobj v08\_01\_03

lardataalg v08\_03\_03
------------------------------------------------

-   2019-02-07 Lynn Garren : lardataalg v08\_03\_03 for larsoft v08\_08\_00

larcorealg v08\_03\_00
------------------------------------------------

-   2019-02-07 Lynn Garren : Revert “Merge branch ‘feature/gp\_factorizeGeometryBuilding’ into release/v08\_08\_00”
-   2019-02-07 Lynn Garren : larcorealg v08\_03\_00
-   2019-02-07 Lynn Garren : Merge branch ‘feature/gp\_factorizeGeometryBuilding’ into release/v08\_08\_00
-   2019-02-06 Lynn Garren : Merge branch ‘feature/ss\_issue19191’ into release/v08\_08\_00
-   2019-02-04 Saba Sehrish : Merge branch ‘develop’ into feature/ss\_issue19191
-   2019-02-01 Gianluca Petrillo : Geometry builder can now be chosen by the service or via interface.
-   2019-02-01 Gianluca Petrillo : Geometry object structure discovery factorised from the object themselves.
-   2019-02-01 Gianluca Petrillo : Added classes which are only not movable and not copiable.
-   2019-02-01 Gianluca Petrillo : Nested namespaces changed to follow C++17 style.
-   2019-02-01 Gianluca Petrillo : Added iterator and utilities to iterate physics vector coordinates.
-   2019-02-01 Gianluca Petrillo : Added simple object enabling range-for loops.
-   2019-02-01 Gianluca Petrillo : Bug fix in old geometry test.
-   2019-01-22 Saba Sehrish : updated the function name
-   2019-01-18 Saba Sehrish : Merge branch ‘develop’ into feature/ss\_issue19191
-   2019-01-16 Saba Sehrish : added functionality to returrn channels in TPC
-   2019-01-16 Saba Sehrish : added functionality to returrn channels in TPC

larcoreobj v08\_02\_01
------------------------------------------------

larbatch v01\_47\_03
--------------------------------------------

larutils v1\_23\_11
------------------------------------------

-   2019-02-07 Lynn Garren : larutils v1\_23\_11 for larsoft v08\_08\_00
-   2019-02-04 Lynn Garren : add s75 for art v3\_01\_01
