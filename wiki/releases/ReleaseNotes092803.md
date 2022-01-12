LArSoft v09\_28\_03 Release Notes
======================================================================

-   **Table of contents**
-   [LArSoft v09\_28\_03 Release Notes](#LArSoft-v09_28_03-Release-Notes)
    -   [Purpose](#Purpose)
    -   [New features](#New-features)
    -   [Bug fixes](#Bug-fixes)
    -   [Updated dependencies](#Updated-dependencies)
-   [Change List](#Change-List)
    -   [larsoft v09\_28\_03](#larsoft-v09_28_03)
    -   [lareventdisplay v09\_01\_17](#lareventdisplay-v09_01_17)
    -   [larexamples v09\_01\_16](#larexamples-v09_01_16)
    -   [larpandora v09\_07\_03](#larpandora-v09_07_03)
    -   [larsimrad v09\_01\_16](#larsimrad-v09_01_16)
    -   [larrecodnn v09\_08\_03](#larrecodnn-v09_08_03)
    -   [larwirecell v09\_02\_13](#larwirecell-v09_02_13)
    -   [larana v09\_02\_13](#larana-v09_02_13)
    -   [larreco v09\_06\_13](#larreco-v09_06_13)
    -   [larsim v09\_14\_05](#larsim-v09_14_05)
    -   [larg4 v09\_03\_12](#larg4-v09_03_12)
    -   [larevt v09\_02\_10](#larevt-v09_02_10)
    -   [lardata v09\_02\_08](#lardata-v09_02_08)
    -   [larcore v09\_02\_04](#larcore-v09_02_04)
    -   [larpandoracontent v03\_24\_02](#larpandoracontent-v03_24_02)
    -   [larsoftobj v09\_07\_01](#larsoftobj-v09_07_01)
    -   [lardataobj v09\_01\_06](#lardataobj-v09_01_06)
    -   [lardataalg v09\_04\_07](#lardataalg-v09_04_07)
    -   [larcorealg v09\_02\_01](#larcorealg-v09_02_01)
    -   [larcoreobj v09\_02\_01](#larcoreobj-v09_02_01)
    -   [webevd v09\_05\_09](#webevd-v09_05_09)
    -   [larbatch v01\_56\_01](#larbatch-v01_56_01)
    -   [larutils v1\_28\_01](#larutils-v1_28_01)

[list of LArSoft releases](LArSoft_release_list)
Download instructions for [larsoft v09\_28\_03](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v09_28_03/larsoft-v09_28_03.html)
Download instructions for [just larsoftobj v09\_07\_01](http://scisoft.fnal.gov/scisoft/bundles/larsoftobj/v09_07_01/larsoftobj-v09_07_01.html)

Purpose
--------------------

-   changes in develop
-   approved PRs

New features
------------------------------

-   larutils PR 11
    -   add sbndqm build script

Bug fixes
------------------------

-   larg4 PR 24
    -   Fix segmentation violation from MCParticles with duplicate track IDs
    -   This PR resolves Redmine issue [\#26197](/redmine/issues/26197 "Bug: MCParticles have non-unique TrackIDs and SegFault when trying to access Trajectory information  (Closed)"), where a segmentation violation is reported due to attempting to access a trajectory point in an MCParticle that had none. The basic problem is that the larg4 services were not implemented to support reading multiple MCTruth collections where one of those collections has multiple MCTruth objects in it. This PR enables that behavior.

Updated dependencies
----------------------------------------------

Change List
============================

larsoft v09\_28\_03
------------------------------------------

-   2021-08-31 Lynn Garren : larsoft v09\_28\_03 for larsoft v09\_28\_03
-   2021-08-31 Lynn Garren : product versions

lareventdisplay v09\_01\_17
----------------------------------------------------------

-   2021-08-31 Lynn Garren : lareventdisplay v09\_01\_17 for larsoft v09\_28\_03

larexamples v09\_01\_16
--------------------------------------------------

-   2021-08-31 Lynn Garren : larexamples v09\_01\_16 for larsoft v09\_28\_03

larpandora v09\_07\_03
------------------------------------------------

-   2021-08-31 Lynn Garren : larpandora v09\_07\_03 for larsoft v09\_28\_03

larsimrad v09\_01\_16
----------------------------------------------

-   2021-08-31 Lynn Garren : larsimrad v09\_01\_16 for larsoft v09\_28\_03

larrecodnn v09\_08\_03
------------------------------------------------

-   2021-08-31 Lynn Garren : larrecodnn v09\_08\_03 for larsoft v09\_28\_03

larwirecell v09\_02\_13
--------------------------------------------------

larana v09\_02\_13
----------------------------------------

-   2021-08-31 Lynn Garren : larana v09\_02\_13 for larsoft v09\_28\_03

larreco v09\_06\_13
------------------------------------------

-   2021-08-31 Lynn Garren : larreco v09\_06\_13 for larsoft v09\_28\_03

larsim v09\_14\_05
----------------------------------------

-   2021-08-31 Lynn Garren : larsim v09\_14\_05 for larsoft v09\_28\_03

larg4 v09\_03\_12
--------------------------------------

-   2021-08-31 Lynn Garren : larg4 v09\_03\_12 for larsoft v09\_28\_03
-   2021-08-31 Lynn Garren : Merge pull request \#24 from knoepfel/bugfix/knoepfel\_fix\_segfault
-   2021-08-31 Kyle Knoepfel : Skip particles with generator-specific PDG codes.
-   2021-08-31 Kyle Knoepfel : Support multiple MCTruth objects in the same MCTruth collection.
-   2021-08-31 Kyle Knoepfel : Cleanups only.

larevt v09\_02\_10
----------------------------------------

lardata v09\_02\_08
------------------------------------------

larcore v09\_02\_04
------------------------------------------

larpandoracontent v03\_24\_02
--------------------------------------------------------------

larsoftobj v09\_07\_01
------------------------------------------------

lardataobj v09\_01\_06
------------------------------------------------

lardataalg v09\_04\_07
------------------------------------------------

larcorealg v09\_02\_01
------------------------------------------------

larcoreobj v09\_02\_01
------------------------------------------------

webevd v09\_05\_09
----------------------------------------

larbatch v01\_56\_01
--------------------------------------------

larutils v1\_28\_01
------------------------------------------

-   2021-08-31 Lynn Garren : larutils v1\_28\_01 for larsoft v09\_28\_03
-   2021-08-25 Lynn Garren : Merge pull request \#11 from SBNSoftware/develop
-   2021-08-24 Wesley : remove sbncode from build, fix manifest typo
-   2021-08-24 Wesley : more typos
-   2021-08-24 Wesley : fix artdaq products path
-   2021-08-24 Wesley : give execute permission
-   2021-08-24 Wesley : new sbndqm build script
