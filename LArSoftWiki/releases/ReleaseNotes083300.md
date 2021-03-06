# LArSoft v08_33_00 Release Notes



[list of LArSoft releases](LArSoft_release_list)  
Download instructions for [larsoft v08_33_00](https://scisoft.fnal.gov/scisoft/bundles/larsoft/v08_33_00/larsoft-v08_33_00.html)  
Download instructions for [just larsoftobj v08_19_00](https://scisoft.fnal.gov/scisoft/bundles/larsoftobj/v08_19_00/larsoftobj-v08_19_00.html)

## Purpose

-   changes in develop
-   approved feature branches

## New features

-   PD Simulation Refactoring for new LArG4
    -   https://indico.fnal.gov/event/22032/contribution/1/material/slides/0.pdf
    -   https://indico.fnal.gov/event/22032/contribution/2/material/slides/0.pdf
    -   dunetpc feature/wgu_refact
    -   ubevt muve_pdsim_refactor
    -   lardataobj feature/muve_pdsim_refactor
    -   larsim feature/muve_pdsim_refactor
    -   larg4 feature/muve_pdsim_refactor
    -   larwirecell feature/muve_pdsim_refactor
-   lardata and larreco feature/cerati_gshf-larsoft-icarus-develop
    -   improve Mike's Levemberg-Marquardt gaussian fitter so that it can be used efficiently in ICARUS (with 7x speedups)
-   larpandoracontent feature/larpandoracontent_v03_15_08
    -   Refactoring of vertex selection algorithms (no change in functionality) and addition of a new algorithm to “cheat” the vertex selection algorithm in MC studies, if wished.
    -   Rename of on algorithm EventValidation algorithm -\> NeutrinoEventValidation algorithm for clarity (cosmetic).
    -   A fix to ensure agreement between the selected interaction vertex position and the reconstructed particles.

## Bug fixes

-   larreco branch feature/gp_Issue23457
    -   resolve \#23457
    -   This is a [possible breaking change](Breaking_Changes#Removal-of-Calorimetry-hard-coded-values)
-   larsim feature/pgreen_semi_ugr_mcr
    -   semi-analytic fast optical simulation visible border effect corrections bug fix

## Updated dependencies

-   mrb v3_03_01

# Change List

## larsoft v08_33_00

-   2019-10-22 Lynn Garren : larsoft v08_33_00 for larsoft v08_33_00
-   2019-10-22 Lynn Garren : product versions
-   2019-10-17 Lynn Garren : mrb v3_03_01 with hub

## lareventdisplay v08_08_18

-   2019-10-22 Lynn Garren : lareventdisplay v08_08_18 for larsoft v08_33_00

## larexamples v08_02_23

-   2019-10-22 Lynn Garren : larexamples v08_02_23 for larsoft v08_33_00

## larg4 v08_05_00

-   2019-10-22 Lynn Garren : larg4 v08_05_00 for larsoft v08_33_00
-   2019-10-17 Lynn Garren : Merge branch 'feature/muve_pdsim_refactor' into release/v08_33_00
-   2019-10-17 Wei Mu : update SimEnergyDeposit interface
-   2019-10-17 Lynn Garren : Merge branch 'feature/muve_pdsim_refactor' into release/v08_33_00
-   2019-10-01 Wei Mu : update interface for SimEnergyDeposit

## larpandora v08_07_22

-   2019-10-22 Lynn Garren : larpandora v08_07_22 for larsoft v08_33_00

## larwirecell v08_07_00

-   2019-10-22 Lynn Garren : larwirecell v08_07_00 for larsoft v08_33_00
-   2019-10-17 Lynn Garren : Merge branch 'feature/muve_pdsim_refactor' into release/v08_33_00
-   2019-10-17 Wei Mu : update SimEnergyDeposit interface
-   2019-10-17 Lynn Garren : Merge branch 'feature/muve_pdsim_refactor' into release/v08_33_00
-   2019-10-01 Wei Mu : update the interface for SimEnergyDeposit

## larana v08_10_18

-   2019-10-22 Lynn Garren : larana v08_10_18 for larsoft v08_33_00

## larreco v08_20_00

-   2019-10-22 Lynn Garren : larreco v08_20_00 for larsoft v08_33_00
-   2019-10-21 Lynn Garren : Merge branch 'feature/gp_Issue23457' into release/v08_33_00
-   2019-10-21 Gianluca Petrillo : Making the cut on trajectory point position optional.
-   2019-10-21 Lynn Garren : Merge branch 'feature/gp_Issue23457' into release/v08_33_00
-   2019-10-21 Gianluca Petrillo : Make the cut on trajectory point position configurable.
-   2019-10-17 Giuseppe Cerati : small fixes, plus add boundaries to fit parameters
-   2019-10-17 Giuseppe Cerati : optionally restrict fitting to N sigma around peak

## larsim v08_14_00

-   2019-10-22 Lynn Garren : larsim v08_14_00 for larsoft v08_33_00
-   2019-10-21 Lynn Garren : remove unused variables
-   2019-10-21 Lynn Garren : Merge branch 'feature/muve_pdsim_refactor' into release/v08_33_00
-   2019-10-17 Wei Mu : update PD simulation
-   2019-10-10 Patrick Green : Merge branch 'develop' into feature/pgreen_semi_ugr_mcr
-   2019-10-09 Patrick Green : semi-analytic fast optical simulation visible border effect corrections bug fix
-   2019-10-01 Wei Mu : PD simulation refactor

## larevt v08_06_12

-   2019-10-22 Lynn Garren : larevt v08_06_12 for larsoft v08_33_00

## lardata v08_09_00

-   2019-10-22 Lynn Garren : lardata v08_09_00 for larsoft v08_33_00
-   2019-10-17 Giuseppe Cerati : add parameter boundaries for MarqFitAlg

## larcore v08_05_02

## larpandoracontent v03_15_08

-   2019-10-22 Lynn Garren : larpandoracontent v03_15_08 for larsoft v08_33_00
-   2019-10-18 John Marshall : Merge branch 'updates'
-   2019-10-18 John Marshall : Update version and change log.
-   2019-10-18 John Marshall : Merge pull request \#99 from PandoraPFA/feature/AdjustVertexPosition
-   2019-10-16 John Marshall : If no 3D hits, leave vertex where it was.
-   2019-10-14 John Marshall : Ensure daughterClusterList3D is sorted in a well-defined manner.
-   2019-10-11 John Marshall : Add vertex list name configuration option.
-   2019-10-11 John Marshall : Relocate vertex-moving functionality.
-   2019-10-11 John Marshall : Ensure agreement between interaction vertex position and at least one pfo (largest in no other vertex-associated pfos).
-   2019-10-18 John Marshall : Merge branch 'feature/EventValidationCosmetics' into old_master
-   2019-09-02 StevenGreen1 : Protecting constructor and destructor of EventValidationBaseAlgorithm.
-   2019-09-02 StevenGreen1 : Renaming EventValidationAlgorithm NeutrinoEventValidationAlgorithm.
-   2019-10-18 John Marshall : Merge branch 'feature/VertexRefactoring' into old_master
-   2019-10-10 Steven Green : Require mc particle list name to be defined in cheating vertex selection algorithm.
-   2019-10-09 Steven Green : Only persist best vertex in cheating vertex selection algorithm if it exists.
-   2019-10-09 Steven Green : Adding read settings to cheating vertex selection algorithm.
-   2019-10-08 Steven Green : Refactoring the vertex selection algorithms.
-   2019-10-07 loressa : Tabulation fixes
-   2019-10-07 loressa : New vertex cheating mode, using the best vertex candidate (3D vertex candidate created closer to true position), rather than the true vertex position

## larsoftobj v08_19_00

-   2019-10-22 Lynn Garren : larsoftobj v08_19_00 for larsoft v08_33_00
-   2019-10-22 Lynn Garren : mrb v3_03_01 with hub

## lardataobj v08_06_00

-   2019-10-22 Lynn Garren : lardataobj v08_06_00 for larsoft v08_33_00
-   2019-10-17 Lynn Garren : Merge branch 'feature/muve_pdsim_refactor' into release/v08_33_00
-   2019-10-17 Wei Mu : update SimEnergyDeposit interface
-   2019-10-17 Lynn Garren : Merge branch 'feature/muve_pdsim_refactor' into release/v08_33_00
-   2019-10-01 Wei Mu : add 3 attributes to SimenergyDeposit

## lardataalg v08_08_08

-   2019-10-22 Lynn Garren : lardataalg v08_08_08 for larsoft v08_33_00

## larcorealg v08_14_04

## larcoreobj v08_05_05

## larbatch v01_51_08

## larutils v1_24_05

-   2019-10-22 Lynn Garren : Merge branch 'develop' into release/v08_33_00
-   2019-10-22 Lynn Garren : calculated larsoftobj version
-   2019-10-22 Lynn Garren : larutils v1_24_05 for larsoft v08_33_00
-   2019-10-17 Lynn Garren : modernize
-   2019-10-16 Lynn Garren : just supply the larsoft version
