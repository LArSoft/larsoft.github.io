LArSoft v08\_00\_00 Release Notes
======================================================================

-   **Table of contents**
-   [LArSoft v08\_00\_00 Release Notes](#LArSoft-v08_00_00-Release-Notes)
    -   [Purpose](#Purpose)
    -   [Breaking Changes](#Breaking-Changes)
    -   [Feature branches for experiment code](#Feature-branches-for-experiment-code)
    -   [Updated dependencies](#Updated-dependencies)
-   [Change List](#Change-List)
    -   [larsoft v08\_00\_00](#larsoft-v08_00_00)
    -   [lareventdisplay v08\_00\_00](#lareventdisplay-v08_00_00)
    -   [larexamples v08\_00\_00](#larexamples-v08_00_00)
    -   [larg4 v08\_00\_00](#larg4-v08_00_00)
    -   [larpandora v08\_00\_00](#larpandora-v08_00_00)
    -   [larwirecell v08\_00\_00](#larwirecell-v08_00_00)
    -   [larana v08\_00\_00](#larana-v08_00_00)
    -   [larreco v08\_00\_00](#larreco-v08_00_00)
    -   [larsim v08\_00\_00](#larsim-v08_00_00)
    -   [larevt v08\_00\_00](#larevt-v08_00_00)
    -   [lardata v08\_00\_00](#lardata-v08_00_00)
    -   [larcore v08\_00\_00](#larcore-v08_00_00)
    -   [larpandoracontent v03\_14\_03](#larpandoracontent-v03_14_03)
    -   [larsoftobj v08\_00\_00](#larsoftobj-v08_00_00)
    -   [lardataobj v08\_00\_00](#lardataobj-v08_00_00)
    -   [lardataalg v08\_00\_00](#lardataalg-v08_00_00)
    -   [larcorealg v08\_00\_00](#larcorealg-v08_00_00)
    -   [larcoreobj v08\_00\_00](#larcoreobj-v08_00_00)
    -   [larbatch v01\_47\_02](#larbatch-v01_47_02)
    -   [larutils v1\_23\_07](#larutils-v1_23_07)

[list of LArSoft releases](LArSoft_release_list)\
Download instructions for [larsoft v08\_00\_00](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v08_00_00/larsoft-v08_00_00.html)\
Download instructions for [just larsoftobj v08\_00\_00](http://scisoft.fnal.gov/scisoft/bundles/larsoftobj/v08_00_00/larsoftobj-v08_00_00.html)

Purpose
--------------------

-   use art v3\_00\_00

Breaking Changes
--------------------------------------

-   See the [upgrade notes](Update_from_art_v2_to_art_v3)
-   And also the [art v3\_00 breaking changes page](/redmine/projects/art/wiki/300_breaking_changes)

Feature branches for experiment code
------------------------------------------------------------------------------

The feature branches for larsoft v08\_00\_00\_rc2 were based on larsoft v07\_12\_00. We have updated the feature branches, and in many cases provided a new feature branch based off the head of develop. Look first for feature/team\_for\_art\_v3\_final and use that branch if it exists, otherwise use feature/team\_for\_art\_v3. The full list is below.

-   argoneutcode feature/team\_for\_art\_v3\_final

-   dunetpc, duneutil feature/team\_for\_art\_v3\_final

-   icaruscode, icarusutil feature/team\_for\_art\_v3

-   lariatsoft, lariatutil feature/team\_for\_art\_v3

-   sbndcode feature/team\_for\_art\_v3\_final
-   sbndutil feature/team\_for\_art\_v3

-   ubana feature/team\_for\_art\_v3\_final
-   ubcore feature/team\_for\_art\_v3\_final
-   ubcrt feature/team\_for\_art\_v3\_final
-   ubcv feature/team\_for\_art\_v3\_final
-   ubevt feature/team\_for\_art\_v3\_final
-   ublite feature/team\_for\_art\_v3
-   ubobj feature/team\_for\_art\_v3
-   uboonecode feature/team\_for\_art\_v3\_final
-   ubraw feature/team\_for\_art\_v3
-   ubreco feature/team\_for\_art\_v3\_final
-   ubsim feature/team\_for\_art\_v3\_final
-   ubutil feature/team\_for\_art\_v3\_final

Updated dependencies
----------------------------------------------

-   art v3\_00\_00
-   gallery v1\_09\_00
-   nutools v2\_26\_01
-   artg4tk v09\_00\_00
-   nusystematics v00\_01\_05

Change List
============================

larsoft v08\_00\_00
------------------------------------------

-   2018-12-12 Lynn Garren : s69
-   2018-12-12 Lynn Garren : larsoft v08\_00\_00 for larsoft v08\_00\_00
-   2018-12-12 Lynn Garren : update product versions
-   2018-12-12 Lynn Garren : Merge branch ‘v08\_00\_00\_rc\_br’ into release/v08\_00\_00
-   2018-12-06 Lynn Garren : v08\_00\_00\_rc2
-   2018-12-04 Lynn Garren : Merge branch ‘ref\_v07\_12\_00’ into v08\_00\_00\_rc\_br
-   2018-12-03 Lynn Garren : larsoft v08\_00\_00\_rc1
-   2018-12-03 Lynn Garren : product versions
-   2018-10-30 Lynn Garren : product versions
-   2018-10-25 Lynn Garren : v08\_00\_00\_rc0
-   2018-10-01 Lynn Garren : for art v3\_00\_00

lareventdisplay v08\_00\_00
----------------------------------------------------------

-   2018-12-12 Lynn Garren : lareventdisplay v08\_00\_00 for larsoft v08\_00\_00
-   2018-12-12 Lynn Garren : Merge branch ‘v08\_00\_00\_rc\_br’ into release/v08\_00\_00
-   2018-12-05 Lynn Garren : v08\_00\_00\_rc2
-   2018-12-04 Lynn Garren : Merge branch ‘ref\_v07\_12\_00’ into v08\_00\_00\_rc\_br
-   2018-12-03 Lynn Garren : lareventdisplay v08\_00\_00\_rc1
-   2018-10-25 Lynn Garren : v08\_00\_00\_rc0
-   2018-10-03 Kyle Knoepfel : Migrate for art 3.

larexamples v08\_00\_00
--------------------------------------------------

-   2018-12-12 Lynn Garren : larexamples v08\_00\_00 for larsoft v08\_00\_00
-   2018-12-12 Lynn Garren : Merge branch ‘v08\_00\_00\_rc\_br’ into release/v08\_00\_00
-   2018-12-05 Lynn Garren : v08\_00\_00\_rc2
-   2018-12-04 Lynn Garren : Merge branch ‘ref\_v07\_12\_00’ into v08\_00\_00\_rc\_br
-   2018-12-03 Lynn Garren : larexamples v08\_00\_00\_rc1
-   2018-11-01 Lynn Garren : add art\_Persistency\_Provenance
-   2018-10-25 Lynn Garren : v08\_00\_00\_rc0
-   2018-10-03 Kyle Knoepfel : Upgrade to art 3.

larg4 v08\_00\_00
--------------------------------------

-   2018-12-12 Lynn Garren : larg4 v08\_00\_00 for larsoft v08\_00\_00
-   2018-12-12 Lynn Garren : Merge branch ‘v08\_00\_00\_rc\_br’ into release/v08\_00\_00
-   2018-12-05 Lynn Garren : v08\_00\_00\_rc2
-   2018-12-04 Lynn Garren : Merge branch ‘ref\_v07\_12\_00’ into v08\_00\_00\_rc\_br
-   2018-12-03 Lynn Garren : larg4 v08\_00\_00\_rc1
-   2018-10-25 Lynn Garren : v08\_00\_00\_rc0
-   2018-10-03 Kyle Knoepfel : Upgrade to art 3.
-   2018-10-01 Lynn Garren : header now in art

larpandora v08\_00\_00
------------------------------------------------

-   2018-12-12 Lynn Garren : larpandora v08\_00\_00 for larsoft v08\_00\_00
-   2018-12-12 Lynn Garren : Merge branch ‘v08\_00\_00\_rc\_br’ into release/v08\_00\_00
-   2018-12-05 Lynn Garren : v08\_00\_00\_rc2
-   2018-12-04 Lynn Garren : Merge branch ‘ref\_v07\_12\_00’ into v08\_00\_00\_rc\_br
-   2018-12-03 Lynn Garren : larpandora v08\_00\_00\_rc1
-   2018-10-30 Lynn Garren : use larpandoracontent v03\_14\_02
-   2018-10-25 Lynn Garren : v08\_00\_00\_rc0
-   2018-10-03 Kyle Knoepfel : Upgrade to art 3.

larwirecell v08\_00\_00
--------------------------------------------------

-   2018-12-12 Lynn Garren : larwirecell v08\_00\_00 for larsoft v08\_00\_00
-   2018-12-12 Lynn Garren : Merge branch ‘v08\_00\_00\_rc\_br’ into release/v08\_00\_00
-   2018-12-05 Lynn Garren : v08\_00\_00\_rc2
-   2018-12-04 Lynn Garren : Merge branch ‘ref\_v07\_12\_00’ into v08\_00\_00\_rc\_br
-   2018-12-03 Lynn Garren : larwirecell v08\_00\_00\_rc1
-   2018-10-25 Lynn Garren : v08\_00\_00\_rc0
-   2018-10-03 Kyle Knoepfel : Upgrade to art 3.

larana v08\_00\_00
----------------------------------------

-   2018-12-12 Lynn Garren : larana v08\_00\_00 for larsoft v08\_00\_00
-   2018-12-12 Lynn Garren : Merge branch ‘v08\_00\_00\_rc\_br’ into release/v08\_00\_00
-   2018-12-05 Lynn Garren : v08\_00\_00\_rc2
-   2018-12-04 Lynn Garren : Merge branch ‘ref\_v07\_12\_00’ into v08\_00\_00\_rc\_br
-   2018-12-03 Lynn Garren : larana v08\_00\_00\_rc1
-   2018-11-01 Lynn Garren : add art\_Persistency\_Provenance
-   2018-10-25 Lynn Garren : v08\_00\_00\_rc0
-   2018-10-03 Kyle Knoepfel : Upgrade to art 3.

larreco v08\_00\_00
------------------------------------------

-   2018-12-12 Lynn Garren : larreco v08\_00\_00 for larsoft v08\_00\_00
-   2018-12-12 Lynn Garren : Merge branch ‘v08\_00\_00\_rc\_br’ into release/v08\_00\_00
-   2018-12-05 Lynn Garren : v08\_00\_00\_rc2
-   2018-12-04 Lynn Garren : Merge branch ‘ref\_v07\_12\_00’ into v08\_00\_00\_rc\_br
-   2018-12-03 Lynn Garren : larreco v08\_00\_00\_rc1 with nutools v2\_26\_01
-   2018-11-01 Lynn Garren : add art\_Persistency\_Provenance
-   2018-10-25 Lynn Garren : v08\_00\_00\_rc0
-   2018-10-03 Kyle Knoepfel : Migrate to art 3.
-   2018-10-01 Lynn Garren : nutools v2\_26\_00 for art v3\_00\_00

larsim v08\_00\_00
----------------------------------------

-   2018-12-12 Lynn Garren : larsim v08\_00\_00 for larsoft v08\_00\_00
-   2018-12-12 Lynn Garren : Merge branch ‘v08\_00\_00\_rc\_br’ into release/v08\_00\_00
-   2018-12-05 Lynn Garren : v08\_00\_00\_rc2
-   2018-12-04 Lynn Garren : Merge branch ‘ref\_v07\_12\_00’ into v08\_00\_00\_rc\_br
-   2018-12-03 Lynn Garren : larsim v08\_00\_00\_rc1
-   2018-12-03 Lynn Garren : Merge branch ‘feature/team\_for\_art\_v3’ into v08\_00\_00\_rc\_br
-   2018-11-09 Kyle Knoepfel : Fix getEngine usage.
-   2018-11-01 Lynn Garren : use override
-   2018-10-25 Lynn Garren : v08\_00\_00\_rc0
-   2018-10-16 Kyle Knoepfel : Adjust EventWeight system interface to fix getEngine issues.
-   2018-10-02 Kyle Knoepfel : Migrate to art 3.
-   2018-10-01 Lynn Garren : EngineCreator.h moved to detail

larevt v08\_00\_00
----------------------------------------

-   2018-12-12 Lynn Garren : larevt v08\_00\_00 for larsoft v08\_00\_00
-   2018-12-12 Lynn Garren : Merge branch ‘v08\_00\_00\_rc\_br’ into release/v08\_00\_00
-   2018-12-05 Lynn Garren : v08\_00\_00\_rc2
-   2018-12-04 Lynn Garren : Merge branch ‘ref\_v07\_12\_00’ into v08\_00\_00\_rc\_br
-   2018-12-03 Lynn Garren : larevt v08\_00\_00\_rc1
-   2018-10-31 Lynn Garren : add library to link list
-   2018-10-25 Lynn Garren : v08\_00\_00\_rc0
-   2018-10-02 Kyle Knoepfel : Migrate to art 3.

lardata v08\_00\_00
------------------------------------------

-   2018-12-12 Lynn Garren : lardata v08\_00\_00 for larsoft v08\_00\_00
-   2018-12-12 Lynn Garren : Merge branch ‘v08\_00\_00\_rc\_br’ into release/v08\_00\_00
-   2018-12-05 Lynn Garren : v08\_00\_00\_rc2
-   2018-12-04 Lynn Garren : Merge branch ‘ref\_v07\_12\_00’ into v08\_00\_00\_rc\_br
-   2018-12-03 Lynn Garren : lardata v08\_00\_00\_rc1
-   2018-10-25 Lynn Garren : v08\_00\_00\_rc0
-   2018-10-02 Kyle Knoepfel : Fix getProductID calls.
-   2018-10-02 Kyle Knoepfel : Migrate to art 3.
-   2018-10-01 Lynn Garren : nutools v2\_26\_00 for art v3\_00\_00

larcore v08\_00\_00
------------------------------------------

-   2018-12-12 Lynn Garren : larcore v08\_00\_00 for larsoft v08\_00\_00
-   2018-12-05 Lynn Garren : v08\_00\_00\_rc2
-   2018-12-04 Lynn Garren : Merge branch ‘ref\_v07\_12\_00’ into v08\_00\_00\_rc\_br
-   2018-12-03 Lynn Garren : larcore v08\_00\_00\_rc1
-   2018-10-25 Lynn Garren : v08\_00\_00\_rc0
-   2018-10-02 Kyle Knoepfel : Add missing library to link line.
-   2018-10-01 Lynn Garren : art v3\_00\_00

larpandoracontent v03\_14\_03
--------------------------------------------------------------

larsoftobj v08\_00\_00
------------------------------------------------

-   2018-12-12 Lynn Garren : larsoftobj v08\_00\_00 for larsoft v08\_00\_00
-   2018-12-12 Lynn Garren : product versions

lardataobj v08\_00\_00
------------------------------------------------

-   2018-12-12 Lynn Garren : lardataobj v08\_00\_00 for larsoft v08\_00\_00

lardataalg v08\_00\_00
------------------------------------------------

-   2018-12-12 Lynn Garren : lardataalg v08\_00\_00 for larsoft v08\_00\_00

larcorealg v08\_00\_00
------------------------------------------------

-   2018-12-12 Lynn Garren : larcorealg v08\_00\_00 for larsoft v08\_00\_00

larcoreobj v08\_00\_00
------------------------------------------------

-   2018-12-12 Lynn Garren : larcoreobj v08\_00\_00 for larsoft v08\_00\_00

larbatch v01\_47\_02
--------------------------------------------

larutils v1\_23\_07
------------------------------------------
