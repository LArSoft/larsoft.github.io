LArSoft v08\_30\_02 Release Notes
======================================================================

-   **Table of contents**
-   [LArSoft v08\_30\_02 Release Notes](#LArSoft-v08_30_02-Release-Notes)
    -   [Purpose](#Purpose)
    -   [New features](#New-features)
    -   [Bug fixes](#Bug-fixes)
    -   [Updated dependencies](#Updated-dependencies)
-   [Change List](#Change-List)
    -   [larsoft v08\_30\_02](#larsoft-v08_30_02)
    -   [lareventdisplay v08\_08\_12](#lareventdisplay-v08_08_12)
    -   [larexamples v08\_02\_18](#larexamples-v08_02_18)
    -   [larg4 v08\_03\_16](#larg4-v08_03_16)
    -   [larpandora v08\_07\_16](#larpandora-v08_07_16)
    -   [larwirecell v08\_05\_16](#larwirecell-v08_05_16)
    -   [larana v08\_10\_12](#larana-v08_10_12)
    -   [larreco v08\_18\_02](#larreco-v08_18_02)
    -   [larsim v08\_12\_04](#larsim-v08_12_04)
    -   [larevt v08\_06\_09](#larevt-v08_06_09)
    -   [lardata v08\_07\_07](#lardata-v08_07_07)
    -   [larcore v08\_05\_00](#larcore-v08_05_00)
    -   [larpandoracontent v03\_15\_04](#larpandoracontent-v03_15_04)
    -   [larsoftobj v08\_17\_04](#larsoftobj-v08_17_04)
    -   [lardataobj v08\_04\_10](#lardataobj-v08_04_10)
    -   [lardataalg v08\_08\_05](#lardataalg-v08_08_05)
    -   [larcorealg v08\_14\_02](#larcorealg-v08_14_02)
    -   [larcoreobj v08\_05\_03](#larcoreobj-v08_05_03)
    -   [larbatch v01\_51\_07](#larbatch-v01_51_07)
    -   [larutils v1\_24\_03](#larutils-v1_24_03)

[list of LArSoft releases](LArSoft_release_list)\
Download instructions for [larsoft v08\_30\_02](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v08_30_02/larsoft-v08_30_02.html)\
Download instructions for [just larsoftobj v08\_17\_04](http://scisoft.fnal.gov/scisoft/bundles/larsoftobj/v08_17_04/larsoftobj-v08_17_04.html)

Purpose
--------------------

-   changes in develop
-   approved feature branches

New features
------------------------------

-   lardata addition for MT and effieciency
    -   lardata feature/team\_for\_mt
-   larpandora
    -   feature/sgreen\_ProjectShowerVertex
    -   There is a single changes that places the shower start on the primary axis of the 3D shower instead of the closest 3D point to the primary interaction vertex. There are no expected changes to output data products because this change only alters the x, y, z at the start of a shower.

Bug fixes
------------------------

Updated dependencies
----------------------------------------------

Change List
============================

larsoft v08\_30\_02
------------------------------------------

-   2019-09-12 Lynn Garren : larsoft v08\_30\_02 for larsoft v08\_30\_02
-   2019-09-12 Lynn Garren : product versions
-   2019-09-12 Lynn Garren : build gallery

lareventdisplay v08\_08\_12
----------------------------------------------------------

-   2019-09-12 Lynn Garren : lareventdisplay v08\_08\_12 for larsoft v08\_30\_02
-   2019-09-06 Usher, Tracy L : Merge branch ‘develop’ of ssh://cdcvs.fnal.gov/cvs/projects/lareventdisplay into develop
-   2019-09-06 Usher, Tracy L : Adding option for drawing all energy deposits regardless of association to MCParticle (which may have been pruned away)

larexamples v08\_02\_18
--------------------------------------------------

-   2019-09-12 Lynn Garren : larexamples v08\_02\_18 for larsoft v08\_30\_02

larg4 v08\_03\_16
--------------------------------------

-   2019-09-12 Lynn Garren : larg4 v08\_03\_16 for larsoft v08\_30\_02

larpandora v08\_07\_16
------------------------------------------------

-   2019-09-12 Lynn Garren : larpandora v08\_07\_16 for larsoft v08\_30\_02
-   2019-09-09 Steven Green : Remove duplicate running of PCA.
-   2019-09-06 Steven Green : Project shower vertices onto PCA primary axis.

larwirecell v08\_05\_16
--------------------------------------------------

-   2019-09-12 Lynn Garren : larwirecell v08\_05\_16 for larsoft v08\_30\_02

larana v08\_10\_12
----------------------------------------

-   2019-09-12 Lynn Garren : larana v08\_10\_12 for larsoft v08\_30\_02

larreco v08\_18\_02
------------------------------------------

-   2019-09-12 Lynn Garren : larreco v08\_18\_02 for larsoft v08\_30\_02

larsim v08\_12\_04
----------------------------------------

-   2019-09-12 Lynn Garren : larsim v08\_12\_04 for larsoft v08\_30\_02

larevt v08\_06\_09
----------------------------------------

-   2019-09-12 Lynn Garren : larevt v08\_06\_09 for larsoft v08\_30\_02

lardata v08\_07\_07
------------------------------------------

-   2019-09-12 Lynn Garren : lardata v08\_07\_07 for larsoft v08\_30\_02
-   2019-09-06 Kyle Knoepfel : Merge branch ‘develop’ into feature/team\_for\_mt
-   2019-08-29 Kyle Knoepfel : Merge branch ‘develop’ into feature/team\_for\_mt
-   2019-08-28 Kyle Knoepfel : Add to\_element helper; update AssociationUtil.

larcore v08\_05\_00
------------------------------------------

larpandoracontent v03\_15\_04
--------------------------------------------------------------

larsoftobj v08\_17\_04
------------------------------------------------

lardataobj v08\_04\_10
------------------------------------------------

lardataalg v08\_08\_05
------------------------------------------------

larcorealg v08\_14\_02
------------------------------------------------

larcoreobj v08\_05\_03
------------------------------------------------

larbatch v01\_51\_07
--------------------------------------------

larutils v1\_24\_03
------------------------------------------

-   2019-09-12 Lynn Garren : larutils v1\_24\_03 for larsoft v08\_30\_02
-   2019-09-11 Lynn Garren : adding s90 and updating larbase
