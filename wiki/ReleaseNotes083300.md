LArSoft v08\_33\_00 Release Notes
======================================================================

-   **Table of contents**
-   [LArSoft v08\_33\_00 Release Notes](#LArSoft-v08_33_00-Release-Notes)
    -   [Purpose](#Purpose)
    -   [New features](#New-features)
    -   [Bug fixes](#Bug-fixes)
    -   [Updated dependencies](#Updated-dependencies)
-   [Change List](#Change-List)
    -   [larsoft v08\_33\_00](#larsoft-v08_33_00)
    -   [lareventdisplay v08\_08\_18](#lareventdisplay-v08_08_18)
    -   [larexamples v08\_02\_23](#larexamples-v08_02_23)
    -   [larg4 v08\_05\_00](#larg4-v08_05_00)
    -   [larpandora v08\_07\_22](#larpandora-v08_07_22)
    -   [larwirecell v08\_07\_00](#larwirecell-v08_07_00)
    -   [larana v08\_10\_18](#larana-v08_10_18)
    -   [larreco v08\_20\_00](#larreco-v08_20_00)
    -   [larsim v08\_14\_00](#larsim-v08_14_00)
    -   [larevt v08\_06\_12](#larevt-v08_06_12)
    -   [lardata v08\_09\_00](#lardata-v08_09_00)
    -   [larcore v08\_05\_02](#larcore-v08_05_02)
    -   [larpandoracontent v03\_15\_08](#larpandoracontent-v03_15_08)
    -   [larsoftobj v08\_19\_00](#larsoftobj-v08_19_00)
    -   [lardataobj v08\_06\_00](#lardataobj-v08_06_00)
    -   [lardataalg v08\_08\_08](#lardataalg-v08_08_08)
    -   [larcorealg v08\_14\_04](#larcorealg-v08_14_04)
    -   [larcoreobj v08\_05\_05](#larcoreobj-v08_05_05)
    -   [larbatch v01\_51\_08](#larbatch-v01_51_08)
    -   [larutils v1\_24\_05](#larutils-v1_24_05)

[list of LArSoft releases](LArSoft_release_list)\
Download instructions for [larsoft v08\_33\_00](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v08_33_00/larsoft-v08_33_00.html)\
Download instructions for [just larsoftobj v08\_19\_00](http://scisoft.fnal.gov/scisoft/bundles/larsoftobj/v08_19_00/larsoftobj-v08_19_00.html)

Purpose
--------------------

-   changes in develop
-   approved feature branches

New features
------------------------------

-   PD Simulation Refactoring for new LArG4
    -   [https://indico.fnal.gov/event/22032/contribution/1/material/slides/0.pdf](https://indico.fnal.gov/event/22032/contribution/1/material/slides/0.pdf)
    -   [https://indico.fnal.gov/event/22032/contribution/2/material/slides/0.pdf](https://indico.fnal.gov/event/22032/contribution/2/material/slides/0.pdf)
    -   dunetpc feature/wgu\_refact
    -   ubevt muve\_pdsim\_refactor
    -   lardataobj feature/muve\_pdsim\_refactor
    -   larsim feature/muve\_pdsim\_refactor
    -   larg4 feature/muve\_pdsim\_refactor
    -   larwirecell feature/muve\_pdsim\_refactor
-   lardata and larreco feature/cerati\_gshf-larsoft-icarus-develop
    -   improve Mike’s Levemberg-Marquardt gaussian fitter so that it can be used efficiently in ICARUS (with 7x speedups)
-   larpandoracontent feature/larpandoracontent\_v03\_15\_08
    -   Refactoring of vertex selection algorithms (no change in functionality) and addition of a new algorithm to “cheat” the vertex selection algorithm in MC studies, if wished.
    -   Rename of on algorithm EventValidation algorithm -\> NeutrinoEventValidation algorithm for clarity (cosmetic).
    -   A fix to ensure agreement between the selected interaction vertex position and the reconstructed particles.

Bug fixes
------------------------

-   larreco branch feature/gp\_Issue23457
    -   resolve [\#23457](/redmine/issues/23457 "Bug: LArReco Calorimetry module places absolute cut on z position which is not detector independent (Closed)")
    -   This is a [possible breaking change](Breaking_Changes#Removal-of-Calorimetry-hard-coded-values)
-   larsim feature/pgreen\_semi\_ugr\_mcr
    -   semi-analytic fast optical simulation visible border effect corrections bug fix

Updated dependencies
----------------------------------------------

-   mrb v3\_03\_01

Change List
============================

larsoft v08\_33\_00
------------------------------------------

-   2019-10-22 Lynn Garren : larsoft v08\_33\_00 for larsoft v08\_33\_00
-   2019-10-22 Lynn Garren : product versions
-   2019-10-17 Lynn Garren : mrb v3\_03\_01 with hub

lareventdisplay v08\_08\_18
----------------------------------------------------------

-   2019-10-22 Lynn Garren : lareventdisplay v08\_08\_18 for larsoft v08\_33\_00

larexamples v08\_02\_23
--------------------------------------------------

-   2019-10-22 Lynn Garren : larexamples v08\_02\_23 for larsoft v08\_33\_00

larg4 v08\_05\_00
--------------------------------------

-   2019-10-22 Lynn Garren : larg4 v08\_05\_00 for larsoft v08\_33\_00
-   2019-10-17 Lynn Garren : Merge branch ‘feature/muve\_pdsim\_refactor’ into release/v08\_33\_00
-   2019-10-17 Wei Mu : update SimEnergyDeposit interface
-   2019-10-17 Lynn Garren : Merge branch ‘feature/muve\_pdsim\_refactor’ into release/v08\_33\_00
-   2019-10-01 Wei Mu : update interface for SimEnergyDeposit

larpandora v08\_07\_22
------------------------------------------------

-   2019-10-22 Lynn Garren : larpandora v08\_07\_22 for larsoft v08\_33\_00

larwirecell v08\_07\_00
--------------------------------------------------

-   2019-10-22 Lynn Garren : larwirecell v08\_07\_00 for larsoft v08\_33\_00
-   2019-10-17 Lynn Garren : Merge branch ‘feature/muve\_pdsim\_refactor’ into release/v08\_33\_00
-   2019-10-17 Wei Mu : update SimEnergyDeposit interface
-   2019-10-17 Lynn Garren : Merge branch ‘feature/muve\_pdsim\_refactor’ into release/v08\_33\_00
-   2019-10-01 Wei Mu : update the interface for SimEnergyDeposit

larana v08\_10\_18
----------------------------------------

-   2019-10-22 Lynn Garren : larana v08\_10\_18 for larsoft v08\_33\_00

larreco v08\_20\_00
------------------------------------------

-   2019-10-22 Lynn Garren : larreco v08\_20\_00 for larsoft v08\_33\_00
-   2019-10-21 Lynn Garren : Merge branch ‘feature/gp\_Issue23457’ into release/v08\_33\_00
-   2019-10-21 Gianluca Petrillo : Making the cut on trajectory point position optional.
-   2019-10-21 Lynn Garren : Merge branch ‘feature/gp\_Issue23457’ into release/v08\_33\_00
-   2019-10-21 Gianluca Petrillo : Make the cut on trajectory point position configurable.
-   2019-10-17 Giuseppe Cerati : small fixes, plus add boundaries to fit parameters
-   2019-10-17 Giuseppe Cerati : optionally restrict fitting to N sigma around peak

larsim v08\_14\_00
----------------------------------------

-   2019-10-22 Lynn Garren : larsim v08\_14\_00 for larsoft v08\_33\_00
-   2019-10-21 Lynn Garren : remove unused variables
-   2019-10-21 Lynn Garren : Merge branch ‘feature/muve\_pdsim\_refactor’ into release/v08\_33\_00
-   2019-10-17 Wei Mu : update PD simulation
-   2019-10-10 Patrick Green : Merge branch ‘develop’ into feature/pgreen\_semi\_ugr\_mcr
-   2019-10-09 Patrick Green : semi-analytic fast optical simulation visible border effect corrections bug fix
-   2019-10-01 Wei Mu : PD simulation refactor

larevt v08\_06\_12
----------------------------------------

-   2019-10-22 Lynn Garren : larevt v08\_06\_12 for larsoft v08\_33\_00

lardata v08\_09\_00
------------------------------------------

-   2019-10-22 Lynn Garren : lardata v08\_09\_00 for larsoft v08\_33\_00
-   2019-10-17 Giuseppe Cerati : add parameter boundaries for MarqFitAlg

larcore v08\_05\_02
------------------------------------------

larpandoracontent v03\_15\_08
--------------------------------------------------------------

-   2019-10-22 Lynn Garren : larpandoracontent v03\_15\_08 for larsoft v08\_33\_00
-   2019-10-18 John Marshall : Merge branch ‘updates’
-   2019-10-18 John Marshall : Update version and change log.
-   2019-10-18 John Marshall : Merge pull request \#99 from PandoraPFA/feature/AdjustVertexPosition
-   2019-10-16 John Marshall : If no 3D hits, leave vertex where it was.
-   2019-10-14 John Marshall : Ensure daughterClusterList3D is sorted in a well-defined manner.
-   2019-10-11 John Marshall : Add vertex list name configuration option.
-   2019-10-11 John Marshall : Relocate vertex-moving functionality.
-   2019-10-11 John Marshall : Ensure agreement between interaction vertex position and at least one pfo (largest in no other vertex-associated pfos).
-   2019-10-18 John Marshall : Merge branch ‘feature/EventValidationCosmetics’ into old\_master
-   2019-09-02 StevenGreen1 : Protecting constructor and destructor of EventValidationBaseAlgorithm.
-   2019-09-02 StevenGreen1 : Renaming EventValidationAlgorithm NeutrinoEventValidationAlgorithm.
-   2019-10-18 John Marshall : Merge branch ‘feature/VertexRefactoring’ into old\_master
-   2019-10-10 Steven Green : Require mc particle list name to be defined in cheating vertex selection algorithm.
-   2019-10-09 Steven Green : Only persist best vertex in cheating vertex selection algorithm if it exists.
-   2019-10-09 Steven Green : Adding read settings to cheating vertex selection algorithm.
-   2019-10-08 Steven Green : Refactoring the vertex selection algorithms.
-   2019-10-07 loressa : Tabulation fixes
-   2019-10-07 loressa : New vertex cheating mode, using the best vertex candidate (3D vertex candidate created closer to true position), rather than the true vertex position

larsoftobj v08\_19\_00
------------------------------------------------

-   2019-10-22 Lynn Garren : larsoftobj v08\_19\_00 for larsoft v08\_33\_00
-   2019-10-22 Lynn Garren : mrb v3\_03\_01 with hub

lardataobj v08\_06\_00
------------------------------------------------

-   2019-10-22 Lynn Garren : lardataobj v08\_06\_00 for larsoft v08\_33\_00
-   2019-10-17 Lynn Garren : Merge branch ‘feature/muve\_pdsim\_refactor’ into release/v08\_33\_00
-   2019-10-17 Wei Mu : update SimEnergyDeposit interface
-   2019-10-17 Lynn Garren : Merge branch ‘feature/muve\_pdsim\_refactor’ into release/v08\_33\_00
-   2019-10-01 Wei Mu : add 3 attributes to SimenergyDeposit

lardataalg v08\_08\_08
------------------------------------------------

-   2019-10-22 Lynn Garren : lardataalg v08\_08\_08 for larsoft v08\_33\_00

larcorealg v08\_14\_04
------------------------------------------------

larcoreobj v08\_05\_05
------------------------------------------------

larbatch v01\_51\_08
--------------------------------------------

larutils v1\_24\_05
------------------------------------------

-   2019-10-22 Lynn Garren : Merge branch ‘develop’ into release/v08\_33\_00
-   2019-10-22 Lynn Garren : calculated larsoftobj version
-   2019-10-22 Lynn Garren : larutils v1\_24\_05 for larsoft v08\_33\_00
-   2019-10-17 Lynn Garren : modernize
-   2019-10-16 Lynn Garren : just supply the larsoft version
