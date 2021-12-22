LArSoft v08\_30\_01 Release Notes
======================================================================

-   **Table of contents**
-   [LArSoft v08\_30\_01 Release Notes](#LArSoft-v08_30_01-Release-Notes)
    -   [Purpose](#Purpose)
    -   [New features](#New-features)
    -   [Mojave build](#Mojave-build)
    -   [Updated dependencies](#Updated-dependencies)
-   [Change List](#Change-List)
    -   [larsoft v08\_30\_01](#larsoft-v08_30_01)
    -   [lareventdisplay v08\_08\_11](#lareventdisplay-v08_08_11)
    -   [larexamples v08\_02\_17](#larexamples-v08_02_17)
    -   [larg4 v08\_03\_15](#larg4-v08_03_15)
    -   [larpandora v08\_07\_15](#larpandora-v08_07_15)
    -   [larwirecell v08\_05\_15](#larwirecell-v08_05_15)
    -   [larana v08\_10\_11](#larana-v08_10_11)
    -   [larreco v08\_18\_01](#larreco-v08_18_01)
    -   [larsim v08\_12\_03](#larsim-v08_12_03)
    -   [larevt v08\_06\_08](#larevt-v08_06_08)
    -   [lardata v08\_07\_06](#lardata-v08_07_06)
    -   [larcore v08\_05\_00](#larcore-v08_05_00)
    -   [larpandoracontent v03\_15\_04](#larpandoracontent-v03_15_04)
    -   [larsoftobj v08\_17\_04](#larsoftobj-v08_17_04)
    -   [lardataobj v08\_04\_10](#lardataobj-v08_04_10)
    -   [lardataalg v08\_08\_05](#lardataalg-v08_08_05)
    -   [larcorealg v08\_14\_02](#larcorealg-v08_14_02)
    -   [larcoreobj v08\_05\_03](#larcoreobj-v08_05_03)
    -   [larbatch v01\_51\_07](#larbatch-v01_51_07)
    -   [larutils v1\_24\_02](#larutils-v1_24_02)

[list of LArSoft releases](LArSoft_release_list)\
Download instructions for [larsoft v08\_30\_01](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v08_30_01/larsoft-v08_30_01.html)\
Download instructions for [just larsoftobj v08\_17\_04](http://scisoft.fnal.gov/scisoft/bundles/larsoftobj/v08_17_04/larsoftobj-v08_17_04.html)

Purpose
--------------------

-   changes in develop
-   approved feature branches

New features
------------------------------

-   resolve [\#23196](/redmine/issues/23196 "Support: Make GausHitFinder's dependence on RawDigit optional (Resolved)")
    -   larreco feature/usher\_hitfindernorawdigits

Mojave build
------------------------------

-   We are unable to provide a debug build of the Mojave distribution at this time.

Updated dependencies
----------------------------------------------

-   nutools v3\_03\_01
-   nugen v1\_04\_01
-   nug4 v1\_00\_03
-   nusimdata v1\_18\_01
    -   add MCGeneratorInfo.h

Change List
============================

larsoft v08\_30\_01
------------------------------------------

-   2019-09-05 Lynn Garren : nudist v3\_03\_01
-   2019-09-05 Lynn Garren : larsoft v08\_30\_01 for larsoft v08\_30\_01
-   2019-09-05 Lynn Garren : update versions

lareventdisplay v08\_08\_11
----------------------------------------------------------

-   2019-09-05 Lynn Garren : lareventdisplay v08\_08\_11 for larsoft v08\_30\_01

larexamples v08\_02\_17
--------------------------------------------------

-   2019-09-05 Lynn Garren : larexamples v08\_02\_17 for larsoft v08\_30\_01

larg4 v08\_03\_15
--------------------------------------

-   2019-09-05 Lynn Garren : larg4 v08\_03\_15 for larsoft v08\_30\_01

larpandora v08\_07\_15
------------------------------------------------

-   2019-09-05 Lynn Garren : larpandora v08\_07\_15 for larsoft v08\_30\_01

larwirecell v08\_05\_15
--------------------------------------------------

-   2019-09-05 Lynn Garren : larwirecell v08\_05\_15 for larsoft v08\_30\_01

larana v08\_10\_11
----------------------------------------

-   2019-09-05 Lynn Garren : larana v08\_10\_11 for larsoft v08\_30\_01

larreco v08\_18\_01
------------------------------------------

-   2019-09-05 Lynn Garren : larreco v08\_18\_01 for larsoft v08\_30\_01
-   2019-08-31 Usher, Tracy L : Make sure when declaring the hit collection each event to tell it to not try to save RawDigit associations if not asked for.
-   2019-08-30 Usher, Tracy L : Include option in the fhicl file definition
-   2019-08-30 Usher, Tracy L : Allow option to not include RawDigit associations (for example, if RawDigits have been dropped).
-   2019-08-30 Usher, Tracy L : Merge branch ‘develop’ of ssh://cdcvs.fnal.gov/cvs/projects/larreco into develop
-   2019-08-30 Usher, Tracy L : Make sure space point chisquare output for ALL space points

larsim v08\_12\_03
----------------------------------------

-   2019-09-05 Lynn Garren : larsim v08\_12\_03 for larsoft v08\_30\_01
-   2019-09-02 Jason Stock : Fixing a typo in ParticleInventory.h before push.
-   2019-08-30 Jason Stock : Update to ParticleInventory to add a “isRealData override”.

larevt v08\_06\_08
----------------------------------------

-   2019-09-05 Lynn Garren : larevt v08\_06\_08 for larsoft v08\_30\_01

lardata v08\_07\_06
------------------------------------------

-   2019-09-05 Lynn Garren : lardata v08\_07\_06 for larsoft v08\_30\_01

larcore v08\_05\_00
------------------------------------------

larpandoracontent v03\_15\_04
--------------------------------------------------------------

larsoftobj v08\_17\_04
------------------------------------------------

-   2019-09-05 Lynn Garren : larsoftobj v08\_17\_04 for larsoft v08\_30\_01
-   2019-09-05 Lynn Garren : update versions

lardataobj v08\_04\_10
------------------------------------------------

-   2019-09-05 Lynn Garren : lardataobj v08\_04\_10 for larsoft v08\_30\_01
-   2019-08-20 Chris Green : Revert "Per Philippe C., workaround for [\#23013](/redmine/issues/23013 "Bug: Unable to read recob::Vertex position information (Closed)")" as too flaky.
-   2019-08-19 Chris Green : Per Philippe C., workaround for [\#23013](/redmine/issues/23013 "Bug: Unable to read recob::Vertex position information (Closed)").

lardataalg v08\_08\_05
------------------------------------------------

-   2019-09-05 Lynn Garren : lardataalg v08\_08\_05 for larsoft v08\_30\_01

larcorealg v08\_14\_02
------------------------------------------------

larcoreobj v08\_05\_03
------------------------------------------------

larbatch v01\_51\_07
--------------------------------------------

larutils v1\_24\_02
------------------------------------------
