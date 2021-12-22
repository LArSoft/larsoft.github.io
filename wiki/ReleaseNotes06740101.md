LArSoft v06\_74\_01\_01 Release Notes(#LArSoft-v06_74_01_01-Release-Notes)
=============================================================================

-   **Table of contents**
-   [LArSoft v06\_74\_01\_01 Release Notes](#LArSoft-v06_74_01_01-Release-Notes)
    -   [Purpose](#Purpose)
    -   [New features](#New-features)
    -   [Updated dependencies](#Updated-dependencies)
    -   [CI test results](#CI-test-results)
-   [Change List](#Change-List)
    -   [larsoft v06\_74\_01\_01](#larsoft-v06_74_01_01)
    -   [lareventdisplay v06\_19\_02\_01](#lareventdisplay-v06_19_02_01)
    -   [larexamples v06\_13\_02\_01](#larexamples-v06_13_02_01)
    -   [larpandora v06\_26\_02\_01](#larpandora-v06_26_02_01)
    -   [larwirecell v06\_12\_02\_01](#larwirecell-v06_12_02_01)
    -   [larana v06\_19\_02\_01](#larana-v06_19_02_01)
    -   [larreco v06\_59\_01\_01](#larreco-v06_59_01_01)
    -   [larsim v06\_44\_01\_01](#larsim-v06_44_01_01)
    -   [larevt v06\_20\_02\_01](#larevt-v06_20_02_01)
    -   [lardata v06\_43\_02\_01](#lardata-v06_43_02_01)
    -   [larcore v06\_19\_01](#larcore-v06_19_01)
    -   [larpandoracontent v03\_11\_01](#larpandoracontent-v03_11_01)
    -   [larsoftobj v1\_43\_01](#larsoftobj-v1_43_01)
    -   [lardataobj v1\_31\_00](#lardataobj-v1_31_00)
    -   [larcorealg v1\_19\_01](#larcorealg-v1_19_01)
    -   [larcoreobj v1\_23\_00](#larcoreobj-v1_23_00)
    -   [larbatch v01\_39\_00](#larbatch-v01_39_00)
    -   [larutils v1\_22\_03](#larutils-v1_22_03)

[list of LArSoft releases](LArSoft_release_list)\
Download instructions for [larsoft v06\_74\_01\_01](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v06_74_01_01/larsoft-v06_74_01_01.html)\
Download instructions for [just larsoftobj v1\_43\_01](http://scisoft.fnal.gov/scisoft/bundles/larsoftobj/v1_43_01/larsoftobj-v1_43_01.html)

**This is a test release.**

Purpose(#Purpose)
--------------------

-   test geant4
    -   see [Aaron Higuera’s request](https://indico.fnal.gov/event/16852/contribution/3/material/slides/0.pdf)

New features(#New-features)
------------------------------

-   This release is identical to v06\_74\_01
-   The only change is the version of geant4 used.

Updated dependencies(#Updated-dependencies)
----------------------------------------------

-   nutools v2\_21\_02
-   geant4 v4\_10\_3\_p03b

CI test results(#CI-test-results)
------------------------------------

    larsoft v06_74_01_01 test
    lar_ci/2218

    argoneutcode: OK
    argoneut_ci/155
    http://dbweb5.fnal.gov:8080/LarCI/app/ns:argoneut/view_builds/index?offset=0&builds=argoneut_ci%2F155+&builds=1

    dunetpc: OK
    dune_ci/345
    http://dbweb5.fnal.gov:8080/LarCI/app/ns:dune/view_builds/index?offset=0&builds=dune_ci%2F345+&builds=1

    lariatsoft: OK
    lariat_ci/183
    http://dbweb5.fnal.gov:8080/LarCI/app/ns:lariat/view_builds/index?offset=0&builds=lariat_ci%2F183&builds=1

    sbndcode: Warning (data product size change in nucosmics_g4_quick_test_sbndcode
    sbnd_ci/200
    http://dbweb5.fnal.gov:8080/LarCI/app/ns:sbnd/view_builds/index?offset=0&builds=sbnd_ci%2F200&builds=1

    < v06_74_01
    ---
    > v06_74_01_01
    14,15c14,15
    < G4 | mcreco |  | std::vector<sim::MCShower> | 10
    < G4 | largeant |  | std::vector<simb::MCParticle> | 395
    ---
    > G4 | mcreco |  | std::vector<sim::MCShower> | 68
    > G4 | largeant |  | std::vector<simb::MCParticle> | 643
    17,19c17,19
    < G4 | mcreco |  | std::vector<sim::MCTrack> | 60
    < G4 | largeant |  | art::Assns<simb::MCTruth,simb::MCParticle,sim::GeneratedParticleInfo> | 395
    < G4 | largeant |  | std::vector<sim::SimChannel> | 9663
    ---
    > G4 | mcreco |  | std::vector<sim::MCTrack> | 251
    > G4 | largeant |  | art::Assns<simb::MCTruth,simb::MCParticle,sim::GeneratedParticleInfo> | 643
    > G4 | largeant |  | std::vector<sim::SimChannel> | 9920
    33,34c33,34
    < G4 | mcreco |  | std::vector<sim::MCShower> | 11
    < G4 | largeant |  | std::vector<simb::MCParticle> | 423
    ---
    > G4 | mcreco |  | std::vector<sim::MCShower> | 62
    > G4 | largeant |  | std::vector<simb::MCParticle> | 1057
    36,38c36,38
    < G4 | mcreco |  | std::vector<sim::MCTrack> | 61
    < G4 | largeant |  | art::Assns<simb::MCTruth,simb::MCParticle,sim::GeneratedParticleInfo> | 423
    < G4 | largeant |  | std::vector<sim::SimChannel> | 10533
    ---
    > G4 | mcreco |  | std::vector<sim::MCTrack> | 244
    > G4 | largeant |  | art::Assns<simb::MCTruth,simb::MCParticle,sim::GeneratedParticleInfo> | 1057
    > G4 | largeant |  | std::vector<sim::SimChannel> | 10495

    uboonecode:
    Warning (data product size change in ci_g4_regression_test_uboonecode)
    Other failure/changes are the same as in v06_74_01
    uboone_ci/222
    http://dbweb5.fnal.gov:8080/LarCI/app/ns:uboone/view_builds/index?offset=0&builds=uboone_ci%2F222&builds=1

    < v06_74_01
    ---
    > v06_74_01_01
    15,16c15,16
    < G4 | mcreco |  | std::vector<sim::MCShower> | 119
    < G4 | largeant |  | std::vector<simb::MCParticle> | 12744
    ---
    > G4 | mcreco |  | std::vector<sim::MCShower> | 229
    > G4 | largeant |  | std::vector<simb::MCParticle> | 15521
    18,20c18,20
    < G4 | mcreco |  | std::vector<sim::MCTrack> | 137
    < G4 | largeant |  | art::Assns<simb::MCTruth,simb::MCParticle,sim::GeneratedParticleInfo> | 12744
    < G4 | largeant |  | std::vector<sim::SimChannel> | 7730
    ---
    > G4 | mcreco |  | std::vector<sim::MCTrack> | 472
    > G4 | largeant |  | art::Assns<simb::MCTruth,simb::MCParticle,sim::GeneratedParticleInfo> | 15521
    > G4 | largeant |  | std::vector<sim::SimChannel> | 8001

Change List(#Change-List)
============================

larsoft v06\_74\_01\_01(#larsoft-v06_74_01_01)
-------------------------------------------------

-   2018-04-20 Lynn Garren : larsoft v06\_74\_01\_01 for larsoft v06\_74\_01\_01\_branch
-   2018-04-20 Lynn Garren : for nutools v2\_21\_02

lareventdisplay v06\_19\_02\_01(#lareventdisplay-v06_19_02_01)
-----------------------------------------------------------------

-   2018-04-20 Lynn Garren : lareventdisplay v06\_19\_02\_01 for larsoft v06\_74\_01\_01\_branch

larexamples v06\_13\_02\_01(#larexamples-v06_13_02_01)
---------------------------------------------------------

-   2018-04-20 Lynn Garren : larexamples v06\_13\_02\_01 for larsoft v06\_74\_01\_01\_branch

larpandora v06\_26\_02\_01(#larpandora-v06_26_02_01)
-------------------------------------------------------

-   2018-04-20 Lynn Garren : larpandora v06\_26\_02\_01 for larsoft v06\_74\_01\_01\_branch

larwirecell v06\_12\_02\_01(#larwirecell-v06_12_02_01)
---------------------------------------------------------

-   2018-04-20 Lynn Garren : larwirecell v06\_12\_02\_01 for larsoft v06\_74\_01\_01\_branch

larana v06\_19\_02\_01(#larana-v06_19_02_01)
-----------------------------------------------

-   2018-04-20 Lynn Garren : larana v06\_19\_02\_01 for larsoft v06\_74\_01\_01\_branch

larreco v06\_59\_01\_01(#larreco-v06_59_01_01)
-------------------------------------------------

-   2018-04-20 Lynn Garren : larreco v06\_59\_01\_01 for larsoft v06\_74\_01\_01\_branch

larsim v06\_44\_01\_01(#larsim-v06_44_01_01)
-----------------------------------------------

-   2018-04-20 Lynn Garren : larsim v06\_44\_01\_01 for larsoft v06\_74\_01\_01\_branch

larevt v06\_20\_02\_01(#larevt-v06_20_02_01)
-----------------------------------------------

-   2018-04-20 Lynn Garren : larevt v06\_20\_02\_01 for larsoft v06\_74\_01\_01\_branch

lardata v06\_43\_02\_01(#lardata-v06_43_02_01)
-------------------------------------------------

-   2018-04-20 Lynn Garren : lardata v06\_43\_02\_01 for larsoft v06\_74\_01\_01\_branch

larcore v06\_19\_01(#larcore-v06_19_01)
------------------------------------------

larpandoracontent v03\_11\_01(#larpandoracontent-v03_11_01)
--------------------------------------------------------------

larsoftobj v1\_43\_01(#larsoftobj-v1_43_01)
----------------------------------------------

lardataobj v1\_31\_00(#lardataobj-v1_31_00)
----------------------------------------------

larcorealg v1\_19\_01(#larcorealg-v1_19_01)
----------------------------------------------

larcoreobj v1\_23\_00(#larcoreobj-v1_23_00)
----------------------------------------------

larbatch v01\_39\_00(#larbatch-v01_39_00)
--------------------------------------------

larutils v1\_22\_03(#larutils-v1_22_03)
------------------------------------------
