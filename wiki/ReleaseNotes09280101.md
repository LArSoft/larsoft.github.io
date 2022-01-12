LArSoft v09\_28\_01\_01 Release Notes
=============================================================================

-   **Table of contents**
-   [LArSoft v09\_28\_01\_01 Release Notes](#LArSoft-v09_28_01_01-Release-Notes)
    -   [Purpose](#Purpose)
    -   [New features](#New-features)
    -   [Bug fixes](#Bug-fixes)
    -   [Updated dependencies](#Updated-dependencies)
-   [Change List](#Change-List)
    -   [larsoft v09\_28\_01\_01](#larsoft-v09_28_01_01)
    -   [lareventdisplay v09\_01\_15\_01](#lareventdisplay-v09_01_15_01)
    -   [larexamples v09\_01\_14\_01](#larexamples-v09_01_14_01)
    -   [larpandora v09\_07\_01\_01](#larpandora-v09_07_01_01)
    -   [larsimrad v09\_01\_14\_01](#larsimrad-v09_01_14_01)
    -   [larrecodnn v09\_08\_01\_01](#larrecodnn-v09_08_01_01)
    -   [larwirecell v09\_02\_12](#larwirecell-v09_02_12)
    -   [larana v09\_02\_11\_01](#larana-v09_02_11_01)
    -   [larreco v09\_06\_11\_01](#larreco-v09_06_11_01)
    -   [larsim v09\_14\_03\_01](#larsim-v09_14_03_01)
    -   [larg4 v09\_03\_10\_01](#larg4-v09_03_10_01)
    -   [larevt v09\_02\_09](#larevt-v09_02_09)
    -   [lardata v09\_02\_07](#lardata-v09_02_07)
    -   [larcore v09\_02\_03](#larcore-v09_02_03)
    -   [larpandoracontent v03\_24\_01](#larpandoracontent-v03_24_01)
    -   [larsoftobj v09\_07\_00](#larsoftobj-v09_07_00)
    -   [lardataobj v09\_01\_05](#lardataobj-v09_01_05)
    -   [lardataalg v09\_04\_06](#lardataalg-v09_04_06)
    -   [larcorealg v09\_02\_00](#larcorealg-v09_02_00)
    -   [larcoreobj v09\_02\_01](#larcoreobj-v09_02_01)
    -   [webevd v09\_05\_08](#webevd-v09_05_08)

[list of LArSoft releases](LArSoft_release_list)
Download instructions for [larsoft v09\_28\_01\_01](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v09_28_01_01/larsoft-v09_28_01_01.html)
Download instructions for [just larsoftobj v09\_07\_00](http://scisoft.fnal.gov/scisoft/bundles/larsoftobj/v09_07_00/larsoftobj-v09_07_00.html)

Purpose
--------------------

-   **production release** requested by SBN per [\#26222](/redmine/issues/26222 "Support: New patch release for v09_28_01 LArSoft (Closed)")

New features
------------------------------

Bug fixes
------------------------

-   larg4 PR 24
    -   Fix segmentation violation from MCParticles with duplicate track IDs
    -   This PR resolves Redmine issue [\#26197](/redmine/issues/26197 "Bug: MCParticles have non-unique TrackIDs and SegFault when trying to access Trajectory information  (Closed)"), where a segmentation violation is reported due to attempting to access a trajectory point in an MCParticle that had none. The basic problem is that the larg4 services were not implemented to support reading multiple MCTruth collections where one of those collections has multiple MCTruth objects in it. This PR enables that behavior.
-   larg4 PR 25
    -   fix a misplaced assert statement introduced in larg4 PR 24
-   larg4 PR 26
    -   Handle post step-points with no process-defined steps
    -   This PR addresses redmine issue [\#26221](/redmine/issues/26221 "Bug: LArG4 Seg fault in SBND: can't access process information? (Closed)"), where segmentation violations were occurring due to post step-points that have no process-defined step. The cause for this is not yet understood, but the recommendation from @hanswenzel is to simply handle/side-step these cases.

Updated dependencies
----------------------------------------------

Change List
============================

larsoft v09\_28\_01\_01
-------------------------------------------------

-   2021-09-10 Lynn Garren : larsoft v09\_28\_01\_01 for larsoft v09\_28\_01\_01
-   2021-09-10 Lynn Garren : versions and do not distribute larbatch or larutils in a patch release

lareventdisplay v09\_01\_15\_01
-----------------------------------------------------------------

-   2021-09-10 Lynn Garren : lareventdisplay v09\_01\_15\_01 for larsoft v09\_28\_01\_01

larexamples v09\_01\_14\_01
---------------------------------------------------------

-   2021-09-10 Lynn Garren : larexamples v09\_01\_14\_01 for larsoft v09\_28\_01\_01

larpandora v09\_07\_01\_01
-------------------------------------------------------

-   2021-09-10 Lynn Garren : larpandora v09\_07\_01\_01 for larsoft v09\_28\_01\_01

larsimrad v09\_01\_14\_01
-----------------------------------------------------

-   2021-09-10 Lynn Garren : larsimrad v09\_01\_14\_01 for larsoft v09\_28\_01\_01

larrecodnn v09\_08\_01\_01
-------------------------------------------------------

-   2021-09-10 Lynn Garren : larrecodnn v09\_08\_01\_01 for larsoft v09\_28\_01\_01

larwirecell v09\_02\_12
--------------------------------------------------

larana v09\_02\_11\_01
-----------------------------------------------

-   2021-09-10 Lynn Garren : larana v09\_02\_11\_01 for larsoft v09\_28\_01\_01

larreco v09\_06\_11\_01
-------------------------------------------------

-   2021-09-10 Lynn Garren : larreco v09\_06\_11\_01 for larsoft v09\_28\_01\_01

larsim v09\_14\_03\_01
-----------------------------------------------

-   2021-09-10 Lynn Garren : larsim v09\_14\_03\_01 for larsoft v09\_28\_01\_01

larg4 v09\_03\_10\_01
---------------------------------------------

-   2021-09-10 Lynn Garren : larg4 v09\_03\_10\_01 for larsoft v09\_28\_01\_01
-   2021-09-03 Kyle Knoepfel : Resolve bug [\#26221](/redmine/issues/26221 "Bug: LArG4 Seg fault in SBND: can't access process information? (Closed)"): Handle post step-points with no process-defined step.
-   2021-09-01 Lynn Garren : larg4 v09\_03\_13 for larsoft v09\_28\_04
-   2021-09-01 Lynn Garren : Merge pull request \#25 from knoepfel/bugfix/knoepfel\_fix\_assertion\_failure
-   2021-09-01 Kyle Knoepfel : Relocate trajectory-points assertion.
-   2021-08-31 Lynn Garren : larg4 v09\_03\_12 for larsoft v09\_28\_03
-   2021-08-31 Lynn Garren : Merge pull request \#24 from knoepfel/bugfix/knoepfel\_fix\_segfault
-   2021-08-31 Kyle Knoepfel : Skip particles with generator-specific PDG codes.
-   2021-08-31 Kyle Knoepfel : Support multiple MCTruth objects in the same MCTruth collection.
-   2021-08-31 Kyle Knoepfel : Cleanups only.
-   2021-08-18 Lynn Garren : larg4 v09\_03\_11 for larsoft v09\_28\_02

larevt v09\_02\_09
----------------------------------------

lardata v09\_02\_07
------------------------------------------

larcore v09\_02\_03
------------------------------------------

larpandoracontent v03\_24\_01
--------------------------------------------------------------

larsoftobj v09\_07\_00
------------------------------------------------

lardataobj v09\_01\_05
------------------------------------------------

lardataalg v09\_04\_06
------------------------------------------------

larcorealg v09\_02\_00
------------------------------------------------

larcoreobj v09\_02\_01
------------------------------------------------

webevd v09\_05\_08
----------------------------------------
