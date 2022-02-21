LArSoft v06_74_01_01 Release Notes
=============================================================================

[list of LArSoft releases](LArSoft_release_list)
Download instructions for [larsoft v06_74_01_01](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v06_74_01_01/larsoft-v06_74_01_01.html)
Download instructions for [just larsoftobj v1_43_01](http://scisoft.fnal.gov/scisoft/bundles/larsoftobj/v1_43_01/larsoftobj-v1_43_01.html)

**This is a test release.**

Purpose
--------------------

-   test geant4
    -   see [Aaron Higuera’s request](https://indico.fnal.gov/event/16852/contribution/3/material/slides/0.pdf)

New features
------------------------------

-   This release is identical to v06_74_01
-   The only change is the version of geant4 used.

Updated dependencies
----------------------------------------------

-   nutools v2_21_02
-   geant4 v4_10_3_p03b

CI test results
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

Change List
============================

larsoft v06_74_01_01
-------------------------------------------------

-   2018-04-20 Lynn Garren : larsoft v06_74_01_01 for larsoft v06_74_01_01_branch
-   2018-04-20 Lynn Garren : for nutools v2_21_02

lareventdisplay v06_19_02_01
-----------------------------------------------------------------

-   2018-04-20 Lynn Garren : lareventdisplay v06_19_02_01 for larsoft v06_74_01_01_branch

larexamples v06_13_02_01
---------------------------------------------------------

-   2018-04-20 Lynn Garren : larexamples v06_13_02_01 for larsoft v06_74_01_01_branch

larpandora v06_26_02_01
-------------------------------------------------------

-   2018-04-20 Lynn Garren : larpandora v06_26_02_01 for larsoft v06_74_01_01_branch

larwirecell v06_12_02_01
---------------------------------------------------------

-   2018-04-20 Lynn Garren : larwirecell v06_12_02_01 for larsoft v06_74_01_01_branch

larana v06_19_02_01
-----------------------------------------------

-   2018-04-20 Lynn Garren : larana v06_19_02_01 for larsoft v06_74_01_01_branch

larreco v06_59_01_01
-------------------------------------------------

-   2018-04-20 Lynn Garren : larreco v06_59_01_01 for larsoft v06_74_01_01_branch

larsim v06_44_01_01
-----------------------------------------------

-   2018-04-20 Lynn Garren : larsim v06_44_01_01 for larsoft v06_74_01_01_branch

larevt v06_20_02_01
-----------------------------------------------

-   2018-04-20 Lynn Garren : larevt v06_20_02_01 for larsoft v06_74_01_01_branch

lardata v06_43_02_01
-------------------------------------------------

-   2018-04-20 Lynn Garren : lardata v06_43_02_01 for larsoft v06_74_01_01_branch

larcore v06_19_01
------------------------------------------

larpandoracontent v03_11_01
--------------------------------------------------------------

larsoftobj v1_43_01
----------------------------------------------

lardataobj v1_31_00
----------------------------------------------

larcorealg v1_19_01
----------------------------------------------

larcoreobj v1_23_00
----------------------------------------------

larbatch v01_39_00
--------------------------------------------

larutils v1_22_03
------------------------------------------
