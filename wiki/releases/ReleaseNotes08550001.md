LArSoft v08\_55\_00\_01 Release Notes
=============================================================================

-   **Table of contents**
-   [LArSoft v08\_55\_00\_01 Release Notes](#LArSoft-v08_55_00_01-Release-Notes)
    -   [Purpose](#Purpose)
    -   [New features](#New-features)
    -   [Bug fixes](#Bug-fixes)
    -   [Experiment code](#Experiment-code)
    -   [Updated dependencies](#Updated-dependencies)
-   [Change List](#Change-List)
    -   [larsoft v08\_55\_00\_01](#larsoft-v08_55_00_01)
    -   [lareventdisplay v08\_12\_18\_01](#lareventdisplay-v08_12_18_01)
    -   [larexamples v08\_06\_18\_01](#larexamples-v08_06_18_01)
    -   [larg4 v08\_14\_03\_01](#larg4-v08_14_03_01)
    -   [larpandora v08\_12\_10\_01](#larpandora-v08_12_10_01)
    -   [larrecodnn v08\_04\_03\_01](#larrecodnn-v08_04_03_01)
    -   [larwirecell v08\_12\_15](#larwirecell-v08_12_15)
    -   [larana v08\_17\_10\_01](#larana-v08_17_10_01)
    -   [larreco v08\_32\_03\_01](#larreco-v08_32_03_01)
    -   [larsim v08\_27\_00\_01](#larsim-v08_27_00_01)
    -   [larevt v08\_11\_08](#larevt-v08_11_08)
    -   [lardata v08\_15\_08](#lardata-v08_15_08)
    -   [larcore v08\_11\_09](#larcore-v08_11_09)
    -   [larpandoracontent v03\_16\_01](#larpandoracontent-v03_16_01)
    -   [larsoftobj v08\_29\_01](#larsoftobj-v08_29_01)
    -   [lardataobj v08\_11\_01](#lardataobj-v08_11_01)
    -   [lardataalg v08\_13\_13](#lardataalg-v08_13_13)
    -   [larcorealg v08\_22\_01](#larcorealg-v08_22_01)
    -   [larcoreobj v08\_12\_00](#larcoreobj-v08_12_00)
    -   [webevd v08\_00\_05](#webevd-v08_00_05)
    -   [larbatch v01\_52\_02](#larbatch-v01_52_02)
    -   [larutils v1\_25\_09](#larutils-v1_25_09)

[list of LArSoft releases](LArSoft_release_list)
Download instructions for [larsoft v08\_55\_00\_01](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v08_55_00_01/larsoft-v08_55_00_01.html)
Download instructions for [just larsoftobj v08\_29\_01](http://scisoft.fnal.gov/scisoft/bundles/larsoftobj/v08_29_01/larsoftobj-v08_29_01.html)

Purpose
--------------------

-   **This is a test release**
-   build with geant4 v4\_10\_6\_p01

New features
------------------------------

-   **This is a test release.** The experiments will need to test and provide their own feature branches.
-   The larsoft code is on the v08\_55\_00\_g4\_test\_br branch.

-   LArG4Detector\_service.cc: visualization removed

Bug fixes
------------------------

-   larsim issues have been resolved. See [\#24283](/redmine/issues/24283 "Support: review larsim for geant4 v4_10_6_p01 (Closed)")

Experiment code
------------------------------------

The only required change is the larsoft version. We have made simple feature branches with this change and run the CI.

-   argoneutcode feature/team\_for\_g4\_10\_6
    -   [https://dbweb5.fnal.gov:8443/LarCI/app/ns:ArgoNeuT/view\_builds/index?offset=0&builds=lar\_ci/8958&builds=](https://dbweb5.fnal.gov:8443/LarCI/app/ns:ArgoNeuT/view_builds/index?offset=0&builds=lar_ci/8958&builds=)
-   dunetpc feature/team\_for\_g4\_10\_6
    -   [https://dbweb5.fnal.gov:8443/LarCI/app/ns:DUNE/view\_builds/index?offset=0&builds=lar\_ci/8957&builds=](https://dbweb5.fnal.gov:8443/LarCI/app/ns:DUNE/view_builds/index?offset=0&builds=lar_ci/8957&builds=)
-   sbndcode PR 10
    -   [https://github.com/SBNSoftware/sbndcode/pull/10](https://github.com/SBNSoftware/sbndcode/pull/10)
    -   [https://dbweb0.fnal.gov/LarCI/app/ns:SBND/view\_builds/index?offset=0&builds=lar\_ci/8959&builds=](https://dbweb0.fnal.gov/LarCI/app/ns:SBND/view_builds/index?offset=0&builds=lar_ci/8959&builds=)
-   icaruscode PR 24
    -   [https://github.com/SBNSoftware/icaruscode/pull/24](https://github.com/SBNSoftware/icaruscode/pull/24)
    -   [https://dbweb5.fnal.gov:8443/LarCI/app/ns:ICARUS/view\_builds/index?offset=0&builds=lar\_ci/8960&builds=](https://dbweb5.fnal.gov:8443/LarCI/app/ns:ICARUS/view_builds/index?offset=0&builds=lar_ci/8960&builds=)

Updated dependencies
----------------------------------------------

-   geant4 v4\_10\_6\_p01
-   nug4 v1\_05\_01
-   geant4reweight v01\_01\_01
-   nutools v3\_07\_02
-   artg4tk v10\_00\_02

Change List
============================

larsoft v08\_55\_00\_01
-------------------------------------------------

-   2020-06-12 Lynn Garren : larsoft v08\_55\_00\_01 for larsoft v08\_55\_00\_01
-   2020-06-12 Lynn Garren : product versions
-   2020-06-12 Lynn Garren : nulite v3\_07\_02a

lareventdisplay v08\_12\_18\_01
-----------------------------------------------------------------

-   2020-06-12 Lynn Garren : lareventdisplay v08\_12\_18\_01 for larsoft v08\_55\_00\_01

larexamples v08\_06\_18\_01
---------------------------------------------------------

-   2020-06-12 Lynn Garren : larexamples v08\_06\_18\_01 for larsoft v08\_55\_00\_01
-   2020-06-11 Lynn Garren : Merge branch ‘v08\_48\_01\_g4\_test\_br’ into v08\_55\_00\_g4\_test\_br
-   2020-04-06 Lynn Garren : larexamples v08\_06\_09\_01 for larsoft v08\_48\_01\_01

larg4 v08\_14\_03\_01
---------------------------------------------

-   2020-06-12 Lynn Garren : larg4 v08\_14\_03\_01 for larsoft v08\_55\_00\_01
-   2020-06-12 Lynn Garren : artg4tk v10\_00\_02 and nug4 v1\_05\_01
-   2020-06-11 Lynn Garren : Merge branch ‘v08\_48\_01\_g4\_test\_br’ into v08\_55\_00\_g4\_test\_br
-   2020-04-09 Lynn Garren : larg4 v08\_12\_07\_02 for larsoft v08\_48\_01\_02
-   2020-04-09 Lynn Garren : Merge pull request \#8 from hanswenzel/mynewbranch
-   2020-04-08 Hans : fix runtime errors, remove all references to visualization
-   2020-04-06 Lynn Garren : larg4 v08\_12\_07\_01 for larsoft v08\_48\_01\_01

larpandora v08\_12\_10\_01
-------------------------------------------------------

-   2020-06-12 Lynn Garren : larpandora v08\_12\_10\_01 for larsoft v08\_55\_00\_01
-   2020-06-11 Lynn Garren : Merge branch ‘v08\_48\_01\_g4\_test\_br’ into v08\_55\_00\_g4\_test\_br
-   2020-04-06 Lynn Garren : larpandora v08\_12\_01\_01 for larsoft v08\_48\_01\_01

larrecodnn v08\_04\_03\_01
-------------------------------------------------------

-   2020-06-12 Lynn Garren : larrecodnn v08\_04\_03\_01 for larsoft v08\_55\_00\_01
-   2020-06-11 Lynn Garren : Merge branch ‘v08\_48\_01\_g4\_test\_br’ into v08\_55\_00\_g4\_test\_br
-   2020-04-06 Lynn Garren : larrecodnn v08\_01\_02\_01 for larsoft v08\_48\_01\_01

larwirecell v08\_12\_15
--------------------------------------------------

larana v08\_17\_10\_01
-----------------------------------------------

-   2020-06-12 Lynn Garren : larana v08\_17\_10\_01 for larsoft v08\_55\_00\_01
-   2020-06-11 Lynn Garren : Merge branch ‘v08\_48\_01\_g4\_test\_br’ into v08\_55\_00\_g4\_test\_br
-   2020-04-06 Lynn Garren : larana v08\_17\_01\_01 for larsoft v08\_48\_01\_01

larreco v08\_32\_03\_01
-------------------------------------------------

-   2020-06-12 Lynn Garren : larreco v08\_32\_03\_01 for larsoft v08\_55\_00\_01
-   2020-06-11 Lynn Garren : Merge branch ‘v08\_48\_01\_g4\_test\_br’ into v08\_55\_00\_g4\_test\_br
-   2020-04-06 Lynn Garren : larreco v08\_30\_01\_01 for larsoft v08\_48\_01\_01

larsim v08\_27\_00\_01
-----------------------------------------------

-   2020-06-12 Lynn Garren : larsim v08\_27\_00\_01 for larsoft v08\_55\_00\_01
-   2020-06-12 Lynn Garren : renable full build
-   2020-06-12 Lynn Garren : nug4 v1\_05\_01 and nutools v3\_07\_02
-   2020-06-11 Lynn Garren : Merge branch ‘v08\_48\_01\_g4\_test\_br’ into v08\_55\_00\_g4\_test\_br
-   2020-04-06 Lynn Garren : larsim v08\_22\_01\_01 for larsoft v08\_48\_01\_01
-   2020-04-06 Lynn Garren : build without ConfigurablePhysicsList, PhysicsList, and GDMLUtils

larevt v08\_11\_08
----------------------------------------

lardata v08\_15\_08
------------------------------------------

larcore v08\_11\_09
------------------------------------------

larpandoracontent v03\_16\_01
--------------------------------------------------------------

larsoftobj v08\_29\_01
------------------------------------------------

lardataobj v08\_11\_01
------------------------------------------------

lardataalg v08\_13\_13
------------------------------------------------

larcorealg v08\_22\_01
------------------------------------------------

larcoreobj v08\_12\_00
------------------------------------------------

webevd v08\_00\_05
----------------------------------------

larbatch v01\_52\_02
--------------------------------------------

larutils v1\_25\_09
------------------------------------------
