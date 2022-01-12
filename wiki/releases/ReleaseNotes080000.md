LArSoft v08_00_00 Release Notes
======================================================================

-   **Table of contents**
-   [LArSoft v08_00_00 Release Notes](#LArSoft-v08_00_00-Release-Notes)
    -   [Purpose](#Purpose)
    -   [Breaking Changes](#Breaking-Changes)
    -   [Feature branches for experiment code](#Feature-branches-for-experiment-code)
    -   [Updated dependencies](#Updated-dependencies)
-   [Change List](#Change-List)
    -   [larsoft v08_00_00](#larsoft-v08_00_00)
    -   [lareventdisplay v08_00_00](#lareventdisplay-v08_00_00)
    -   [larexamples v08_00_00](#larexamples-v08_00_00)
    -   [larg4 v08_00_00](#larg4-v08_00_00)
    -   [larpandora v08_00_00](#larpandora-v08_00_00)
    -   [larwirecell v08_00_00](#larwirecell-v08_00_00)
    -   [larana v08_00_00](#larana-v08_00_00)
    -   [larreco v08_00_00](#larreco-v08_00_00)
    -   [larsim v08_00_00](#larsim-v08_00_00)
    -   [larevt v08_00_00](#larevt-v08_00_00)
    -   [lardata v08_00_00](#lardata-v08_00_00)
    -   [larcore v08_00_00](#larcore-v08_00_00)
    -   [larpandoracontent v03_14_03](#larpandoracontent-v03_14_03)
    -   [larsoftobj v08_00_00](#larsoftobj-v08_00_00)
    -   [lardataobj v08_00_00](#lardataobj-v08_00_00)
    -   [lardataalg v08_00_00](#lardataalg-v08_00_00)
    -   [larcorealg v08_00_00](#larcorealg-v08_00_00)
    -   [larcoreobj v08_00_00](#larcoreobj-v08_00_00)
    -   [larbatch v01_47_02](#larbatch-v01_47_02)
    -   [larutils v1_23_07](#larutils-v1_23_07)

[list of LArSoft releases](LArSoft_release_list)
Download instructions for [larsoft v08_00_00](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v08_00_00/larsoft-v08_00_00.html)
Download instructions for [just larsoftobj v08_00_00](http://scisoft.fnal.gov/scisoft/bundles/larsoftobj/v08_00_00/larsoftobj-v08_00_00.html)

Purpose
--------------------

-   use art v3_00_00

Breaking Changes
--------------------------------------

-   See the [upgrade notes](Update_from_art_v2_to_art_v3)
-   And also the [art v3_00 breaking changes page](/redmine/projects/art/wiki/300_breaking_changes)

Feature branches for experiment code
------------------------------------------------------------------------------

The feature branches for larsoft v08_00_00_rc2 were based on larsoft v07_12_00. We have updated the feature branches, and in many cases provided a new feature branch based off the head of develop. Look first for feature/team_for_art_v3_final and use that branch if it exists, otherwise use feature/team_for_art_v3. The full list is below.

-   argoneutcode feature/team_for_art_v3_final

-   dunetpc, duneutil feature/team_for_art_v3_final

-   icaruscode, icarusutil feature/team_for_art_v3

-   lariatsoft, lariatutil feature/team_for_art_v3

-   sbndcode feature/team_for_art_v3_final
-   sbndutil feature/team_for_art_v3

-   ubana feature/team_for_art_v3_final
-   ubcore feature/team_for_art_v3_final
-   ubcrt feature/team_for_art_v3_final
-   ubcv feature/team_for_art_v3_final
-   ubevt feature/team_for_art_v3_final
-   ublite feature/team_for_art_v3
-   ubobj feature/team_for_art_v3
-   uboonecode feature/team_for_art_v3_final
-   ubraw feature/team_for_art_v3
-   ubreco feature/team_for_art_v3_final
-   ubsim feature/team_for_art_v3_final
-   ubutil feature/team_for_art_v3_final

Updated dependencies
----------------------------------------------

-   art v3_00_00
-   gallery v1_09_00
-   nutools v2_26_01
-   artg4tk v09_00_00
-   nusystematics v00_01_05

Change List
============================

larsoft v08_00_00
------------------------------------------

-   2018-12-12 Lynn Garren : s69
-   2018-12-12 Lynn Garren : larsoft v08_00_00 for larsoft v08_00_00
-   2018-12-12 Lynn Garren : update product versions
-   2018-12-12 Lynn Garren : Merge branch ‘v08_00_00_rc_br’ into release/v08_00_00
-   2018-12-06 Lynn Garren : v08_00_00_rc2
-   2018-12-04 Lynn Garren : Merge branch ‘ref_v07_12_00’ into v08_00_00_rc_br
-   2018-12-03 Lynn Garren : larsoft v08_00_00_rc1
-   2018-12-03 Lynn Garren : product versions
-   2018-10-30 Lynn Garren : product versions
-   2018-10-25 Lynn Garren : v08_00_00_rc0
-   2018-10-01 Lynn Garren : for art v3_00_00

lareventdisplay v08_00_00
----------------------------------------------------------

-   2018-12-12 Lynn Garren : lareventdisplay v08_00_00 for larsoft v08_00_00
-   2018-12-12 Lynn Garren : Merge branch ‘v08_00_00_rc_br’ into release/v08_00_00
-   2018-12-05 Lynn Garren : v08_00_00_rc2
-   2018-12-04 Lynn Garren : Merge branch ‘ref_v07_12_00’ into v08_00_00_rc_br
-   2018-12-03 Lynn Garren : lareventdisplay v08_00_00_rc1
-   2018-10-25 Lynn Garren : v08_00_00_rc0
-   2018-10-03 Kyle Knoepfel : Migrate for art 3.

larexamples v08_00_00
--------------------------------------------------

-   2018-12-12 Lynn Garren : larexamples v08_00_00 for larsoft v08_00_00
-   2018-12-12 Lynn Garren : Merge branch ‘v08_00_00_rc_br’ into release/v08_00_00
-   2018-12-05 Lynn Garren : v08_00_00_rc2
-   2018-12-04 Lynn Garren : Merge branch ‘ref_v07_12_00’ into v08_00_00_rc_br
-   2018-12-03 Lynn Garren : larexamples v08_00_00_rc1
-   2018-11-01 Lynn Garren : add art_Persistency_Provenance
-   2018-10-25 Lynn Garren : v08_00_00_rc0
-   2018-10-03 Kyle Knoepfel : Upgrade to art 3.

larg4 v08_00_00
--------------------------------------

-   2018-12-12 Lynn Garren : larg4 v08_00_00 for larsoft v08_00_00
-   2018-12-12 Lynn Garren : Merge branch ‘v08_00_00_rc_br’ into release/v08_00_00
-   2018-12-05 Lynn Garren : v08_00_00_rc2
-   2018-12-04 Lynn Garren : Merge branch ‘ref_v07_12_00’ into v08_00_00_rc_br
-   2018-12-03 Lynn Garren : larg4 v08_00_00_rc1
-   2018-10-25 Lynn Garren : v08_00_00_rc0
-   2018-10-03 Kyle Knoepfel : Upgrade to art 3.
-   2018-10-01 Lynn Garren : header now in art

larpandora v08_00_00
------------------------------------------------

-   2018-12-12 Lynn Garren : larpandora v08_00_00 for larsoft v08_00_00
-   2018-12-12 Lynn Garren : Merge branch ‘v08_00_00_rc_br’ into release/v08_00_00
-   2018-12-05 Lynn Garren : v08_00_00_rc2
-   2018-12-04 Lynn Garren : Merge branch ‘ref_v07_12_00’ into v08_00_00_rc_br
-   2018-12-03 Lynn Garren : larpandora v08_00_00_rc1
-   2018-10-30 Lynn Garren : use larpandoracontent v03_14_02
-   2018-10-25 Lynn Garren : v08_00_00_rc0
-   2018-10-03 Kyle Knoepfel : Upgrade to art 3.

larwirecell v08_00_00
--------------------------------------------------

-   2018-12-12 Lynn Garren : larwirecell v08_00_00 for larsoft v08_00_00
-   2018-12-12 Lynn Garren : Merge branch ‘v08_00_00_rc_br’ into release/v08_00_00
-   2018-12-05 Lynn Garren : v08_00_00_rc2
-   2018-12-04 Lynn Garren : Merge branch ‘ref_v07_12_00’ into v08_00_00_rc_br
-   2018-12-03 Lynn Garren : larwirecell v08_00_00_rc1
-   2018-10-25 Lynn Garren : v08_00_00_rc0
-   2018-10-03 Kyle Knoepfel : Upgrade to art 3.

larana v08_00_00
----------------------------------------

-   2018-12-12 Lynn Garren : larana v08_00_00 for larsoft v08_00_00
-   2018-12-12 Lynn Garren : Merge branch ‘v08_00_00_rc_br’ into release/v08_00_00
-   2018-12-05 Lynn Garren : v08_00_00_rc2
-   2018-12-04 Lynn Garren : Merge branch ‘ref_v07_12_00’ into v08_00_00_rc_br
-   2018-12-03 Lynn Garren : larana v08_00_00_rc1
-   2018-11-01 Lynn Garren : add art_Persistency_Provenance
-   2018-10-25 Lynn Garren : v08_00_00_rc0
-   2018-10-03 Kyle Knoepfel : Upgrade to art 3.

larreco v08_00_00
------------------------------------------

-   2018-12-12 Lynn Garren : larreco v08_00_00 for larsoft v08_00_00
-   2018-12-12 Lynn Garren : Merge branch ‘v08_00_00_rc_br’ into release/v08_00_00
-   2018-12-05 Lynn Garren : v08_00_00_rc2
-   2018-12-04 Lynn Garren : Merge branch ‘ref_v07_12_00’ into v08_00_00_rc_br
-   2018-12-03 Lynn Garren : larreco v08_00_00_rc1 with nutools v2_26_01
-   2018-11-01 Lynn Garren : add art_Persistency_Provenance
-   2018-10-25 Lynn Garren : v08_00_00_rc0
-   2018-10-03 Kyle Knoepfel : Migrate to art 3.
-   2018-10-01 Lynn Garren : nutools v2_26_00 for art v3_00_00

larsim v08_00_00
----------------------------------------

-   2018-12-12 Lynn Garren : larsim v08_00_00 for larsoft v08_00_00
-   2018-12-12 Lynn Garren : Merge branch ‘v08_00_00_rc_br’ into release/v08_00_00
-   2018-12-05 Lynn Garren : v08_00_00_rc2
-   2018-12-04 Lynn Garren : Merge branch ‘ref_v07_12_00’ into v08_00_00_rc_br
-   2018-12-03 Lynn Garren : larsim v08_00_00_rc1
-   2018-12-03 Lynn Garren : Merge branch ‘feature/team_for_art_v3’ into v08_00_00_rc_br
-   2018-11-09 Kyle Knoepfel : Fix getEngine usage.
-   2018-11-01 Lynn Garren : use override
-   2018-10-25 Lynn Garren : v08_00_00_rc0
-   2018-10-16 Kyle Knoepfel : Adjust EventWeight system interface to fix getEngine issues.
-   2018-10-02 Kyle Knoepfel : Migrate to art 3.
-   2018-10-01 Lynn Garren : EngineCreator.h moved to detail

larevt v08_00_00
----------------------------------------

-   2018-12-12 Lynn Garren : larevt v08_00_00 for larsoft v08_00_00
-   2018-12-12 Lynn Garren : Merge branch ‘v08_00_00_rc_br’ into release/v08_00_00
-   2018-12-05 Lynn Garren : v08_00_00_rc2
-   2018-12-04 Lynn Garren : Merge branch ‘ref_v07_12_00’ into v08_00_00_rc_br
-   2018-12-03 Lynn Garren : larevt v08_00_00_rc1
-   2018-10-31 Lynn Garren : add library to link list
-   2018-10-25 Lynn Garren : v08_00_00_rc0
-   2018-10-02 Kyle Knoepfel : Migrate to art 3.

lardata v08_00_00
------------------------------------------

-   2018-12-12 Lynn Garren : lardata v08_00_00 for larsoft v08_00_00
-   2018-12-12 Lynn Garren : Merge branch ‘v08_00_00_rc_br’ into release/v08_00_00
-   2018-12-05 Lynn Garren : v08_00_00_rc2
-   2018-12-04 Lynn Garren : Merge branch ‘ref_v07_12_00’ into v08_00_00_rc_br
-   2018-12-03 Lynn Garren : lardata v08_00_00_rc1
-   2018-10-25 Lynn Garren : v08_00_00_rc0
-   2018-10-02 Kyle Knoepfel : Fix getProductID calls.
-   2018-10-02 Kyle Knoepfel : Migrate to art 3.
-   2018-10-01 Lynn Garren : nutools v2_26_00 for art v3_00_00

larcore v08_00_00
------------------------------------------

-   2018-12-12 Lynn Garren : larcore v08_00_00 for larsoft v08_00_00
-   2018-12-05 Lynn Garren : v08_00_00_rc2
-   2018-12-04 Lynn Garren : Merge branch ‘ref_v07_12_00’ into v08_00_00_rc_br
-   2018-12-03 Lynn Garren : larcore v08_00_00_rc1
-   2018-10-25 Lynn Garren : v08_00_00_rc0
-   2018-10-02 Kyle Knoepfel : Add missing library to link line.
-   2018-10-01 Lynn Garren : art v3_00_00

larpandoracontent v03_14_03
--------------------------------------------------------------

larsoftobj v08_00_00
------------------------------------------------

-   2018-12-12 Lynn Garren : larsoftobj v08_00_00 for larsoft v08_00_00
-   2018-12-12 Lynn Garren : product versions

lardataobj v08_00_00
------------------------------------------------

-   2018-12-12 Lynn Garren : lardataobj v08_00_00 for larsoft v08_00_00

lardataalg v08_00_00
------------------------------------------------

-   2018-12-12 Lynn Garren : lardataalg v08_00_00 for larsoft v08_00_00

larcorealg v08_00_00
------------------------------------------------

-   2018-12-12 Lynn Garren : larcorealg v08_00_00 for larsoft v08_00_00

larcoreobj v08_00_00
------------------------------------------------

-   2018-12-12 Lynn Garren : larcoreobj v08_00_00 for larsoft v08_00_00

larbatch v01_47_02
--------------------------------------------

larutils v1_23_07
------------------------------------------
