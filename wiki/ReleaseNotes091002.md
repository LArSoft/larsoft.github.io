LArSoft v09\_10\_02 Release Notes
======================================================================

-   **Table of contents**
-   [LArSoft v09\_10\_02 Release Notes](#LArSoft-v09_10_02-Release-Notes)
    -   [Purpose](#Purpose)
    -   [New features](#New-features)
    -   [Bug fixes](#Bug-fixes)
    -   [Updated dependencies](#Updated-dependencies)
-   [Change List](#Change-List)
    -   [larsoft v09\_10\_02](#larsoft-v09_10_02)
    -   [lareventdisplay v09\_00\_15](#lareventdisplay-v09_00_15)
    -   [larexamples v09\_00\_14](#larexamples-v09_00_14)
    -   [larpandora v09\_03\_06](#larpandora-v09_03_06)
    -   [larsimrad v09\_00\_14](#larsimrad-v09_00_14)
    -   [larrecodnn v09\_02\_06](#larrecodnn-v09_02_06)
    -   [larwirecell v09\_01\_08](#larwirecell-v09_01_08)
    -   [larana v09\_00\_15](#larana-v09_00_15)
    -   [larreco v09\_04\_05](#larreco-v09_04_05)
    -   [larsim v09\_07\_02](#larsim-v09_07_02)
    -   [larg4 v09\_01\_06](#larg4-v09_01_06)
    -   [larevt v09\_01\_02](#larevt-v09_01_02)
    -   [lardata v09\_01\_05](#lardata-v09_01_05)
    -   [larcore v09\_00\_01](#larcore-v09_00_01)
    -   [larpandoracontent v03\_22\_03](#larpandoracontent-v03_22_03)
    -   [larsoftobj v09\_03\_02](#larsoftobj-v09_03_02)
    -   [lardataobj v09\_00\_04](#lardataobj-v09_00_04)
    -   [lardataalg v09\_03\_02](#lardataalg-v09_03_02)
    -   [larcorealg v09\_00\_01](#larcorealg-v09_00_01)
    -   [larcoreobj v09\_00\_00](#larcoreobj-v09_00_00)
    -   [webevd v09\_00\_10](#webevd-v09_00_10)
    -   [larbatch v01\_54\_01](#larbatch-v01_54_01)
    -   [larutils v1\_27\_03](#larutils-v1_27_03)

[list of LArSoft releases](LArSoft_release_list)
Download instructions for [larsoft v09\_10\_02](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v09_10_02/larsoft-v09_10_02.html)
Download instructions for [just larsoftobj v09\_03\_02](http://scisoft.fnal.gov/scisoft/bundles/larsoftobj/v09_03_02/larsoftobj-v09_03_02.html)

Purpose
--------------------

-   changes in develop
-   approved PRs

New features
------------------------------

Bug fixes
------------------------

-   lardataobj PR 10
    -   Remove unnecessary type-conversion operator
    -   Discovered with an e20 build while working towards using art 3.06
-   larsim PR 57
    -   Fix MCShower’s Ancestor Start and End
    -   It looks like there is a typo where the MCShower’s ancestor particle Start and End MCSteps are filled. They are filled with the MCShower’s mother, instead of the ancestor. This PR fixes this.

Updated dependencies
----------------------------------------------

-   nusimdata v1\_21\_04 for [\#25273](/redmine/issues/25273 "Feature: Changes to nusimdata -- saving Transportation steps (Assigned)")
    -   includes changes that allow steps with transportation to be saved in the process map, and thus preserved with sparsification.
    -   The relevant ‘Adding’ methods in MCParticle and MCtrajectory simply take a flag that determines if the point with transportation is saved. Default behavior is to not save, in order to avoid many points being saved in certain situations (i.e. NOvA).
-   nuevdb v1\_02\_08
-   nug4 v1\_05\_03
-   nugen v1\_10\_11
-   nurandom v1\_04\_04
-   nutools v3\_07\_04
-   geant4reweight v01\_06\_02
-   nusystematics v00\_10\_07
-   mrb v4\_04\_00
    -   add sbn\_suite and sbndaq\_suite

Change List
============================

larsoft v09\_10\_02
------------------------------------------

-   2020-12-10 Lynn Garren : larsoft v09\_10\_02 for larsoft v09\_10\_02
-   2020-12-10 Lynn Garren : product versions

lareventdisplay v09\_00\_15
----------------------------------------------------------

-   2020-12-10 Lynn Garren : lareventdisplay v09\_00\_15 for larsoft v09\_10\_02

larexamples v09\_00\_14
--------------------------------------------------

-   2020-12-10 Lynn Garren : larexamples v09\_00\_14 for larsoft v09\_10\_02

larpandora v09\_03\_06
------------------------------------------------

-   2020-12-10 Lynn Garren : larpandora v09\_03\_06 for larsoft v09\_10\_02

larsimrad v09\_00\_14
----------------------------------------------

-   2020-12-10 Lynn Garren : larsimrad v09\_00\_14 for larsoft v09\_10\_02

larrecodnn v09\_02\_06
------------------------------------------------

-   2020-12-10 Lynn Garren : larrecodnn v09\_02\_06 for larsoft v09\_10\_02

larwirecell v09\_01\_08
--------------------------------------------------

-   2020-12-10 Lynn Garren : larwirecell v09\_01\_08 for larsoft v09\_10\_02

larana v09\_00\_15
----------------------------------------

-   2020-12-10 Lynn Garren : larana v09\_00\_15 for larsoft v09\_10\_02

larreco v09\_04\_05
------------------------------------------

-   2020-12-10 Lynn Garren : larreco v09\_04\_05 for larsoft v09\_10\_02

larsim v09\_07\_02
----------------------------------------

-   2020-12-10 Lynn Garren : larsim v09\_07\_02 for larsoft v09\_10\_02
-   2020-12-10 Lynn Garren : Merge pull request [\#57](/redmine/issues/57 "Feature: Provide R scripts that make "interesting" plots (Closed)") from SBNSoftware/mdeltutt\_mcshower
-   2020-12-09 Marco Del Tutto : Changing mother\_part to ancestor\_part for MCShower ancestor start and end MCSteps.

larg4 v09\_01\_06
--------------------------------------

-   2020-12-10 Lynn Garren : larg4 v09\_01\_06 for larsoft v09\_10\_02

larevt v09\_01\_02
----------------------------------------

-   2020-12-10 Lynn Garren : larevt v09\_01\_02 for larsoft v09\_10\_02

lardata v09\_01\_05
------------------------------------------

-   2020-12-10 Lynn Garren : lardata v09\_01\_05 for larsoft v09\_10\_02

larcore v09\_00\_01
------------------------------------------

larpandoracontent v03\_22\_03
--------------------------------------------------------------

larsoftobj v09\_03\_02
------------------------------------------------

-   2020-12-10 Lynn Garren : larsoftobj v09\_03\_02 for larsoft v09\_10\_02
-   2020-12-10 Lynn Garren : product versions

lardataobj v09\_00\_04
------------------------------------------------

-   2020-12-10 Lynn Garren : lardataobj v09\_00\_04 for larsoft v09\_10\_02
-   2020-12-08 Lynn Garren : Merge pull request \#10 from knoepfel/bugfix/knoepfel\_rm\_type\_conversion
-   2020-12-07 Kyle Knoepfel : Remove unnecessary type-conversion operator.

lardataalg v09\_03\_02
------------------------------------------------

-   2020-12-10 Lynn Garren : lardataalg v09\_03\_02 for larsoft v09\_10\_02

larcorealg v09\_00\_01
------------------------------------------------

larcoreobj v09\_00\_00
------------------------------------------------

webevd v09\_00\_10
----------------------------------------

-   2020-12-10 Lynn Garren : webevd v09\_00\_10 for larsoft v09\_10\_02

larbatch v01\_54\_01
--------------------------------------------

larutils v1\_27\_03
------------------------------------------

-   2020-12-10 Lynn Garren : larutils v1\_27\_03 for larsoft v09\_10\_02
-   2020-12-07 Lynn Garren : get buildFW from artutilscripts
-   2020-12-07 Lynn Garren : recognize e20
-   2020-12-07 Lynn Garren : recognize e20
