LArSoft v09_24_02 Release Notes
======================================================================

-   **Table of contents**
-   [LArSoft v09_24_02 Release Notes](#LArSoft-v09_24_02-Release-Notes)
    -   [Purpose](#Purpose)
    -   [New features](#New-features)
    -   [Bug fixes](#Bug-fixes)
    -   [Updated dependencies](#Updated-dependencies)
-   [Change List](#Change-List)
    -   [larsoft v09_24_02](#larsoft-v09_24_02)
    -   [lareventdisplay v09_01_10](#lareventdisplay-v09_01_10)
    -   [larexamples v09_01_10](#larexamples-v09_01_10)
    -   [larpandora v09_06_02](#larpandora-v09_06_02)
    -   [larsimrad v09_01_10](#larsimrad-v09_01_10)
    -   [larrecodnn v09_07_01](#larrecodnn-v09_07_01)
    -   [larwirecell v09_02_08](#larwirecell-v09_02_08)
    -   [larana v09_02_06](#larana-v09_02_06)
    -   [larreco v09_06_06](#larreco-v09_06_06)
    -   [larsim v09_13_03](#larsim-v09_13_03)
    -   [larg4 v09_03_07](#larg4-v09_03_07)
    -   [larevt v09_02_06](#larevt-v09_02_06)
    -   [lardata v09_02_04](#lardata-v09_02_04)
    -   [larcore v09_02_01](#larcore-v09_02_01)
    -   [larpandoracontent v03_23_02](#larpandoracontent-v03_23_02)
    -   [larsoftobj v09_05_04](#larsoftobj-v09_05_04)
    -   [lardataobj v09_01_03](#lardataobj-v09_01_03)
    -   [lardataalg v09_04_04](#lardataalg-v09_04_04)
    -   [larcorealg v09_01_01](#larcorealg-v09_01_01)
    -   [larcoreobj v09_02_00](#larcoreobj-v09_02_00)
    -   [webevd v09_05_05](#webevd-v09_05_05)
    -   [larbatch v01_56_01](#larbatch-v01_56_01)
    -   [larutils v1_28_00](#larutils-v1_28_00)

[list of LArSoft releases](LArSoft_release_list)
Download instructions for [larsoft v09_24_02](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v09_24_02/larsoft-v09_24_02.html)
Download instructions for [just larsoftobj v09_05_04](http://scisoft.fnal.gov/scisoft/bundles/larsoftobj/v09_05_04/larsoftobj-v09_05_04.html)

Purpose
--------------------

-   changes in develop
-   approved PRs

New features
------------------------------

-   larpandoracontent PR 26
    -   This PR provides a series of updates to the MVA vertex selection procedure. This includes:
        -   a fix to issue [\#157](https://github.com/PandoraPFA/LArContent/issues/157)
        -   the addition of a new tool to calculate the dE/dx asymmetry around a vertex candidate
        -   the addition of a new variable related to the energy of the hits directly nearby a vertex candidate
        -   functionality for and inclusion of some “shared” variables between a pair of vertex candidates
        -   moving all four asymmetry type tools into an inheritance structure
    -   Due to this being a trained algorithm, legacy modes are provided for all changes and the default setup is to run in legacy mode. Hence, there should be no changes to any experiments’ outputs until retraining is performed and the relevant xml changes are activated. Feel free to contact me for further information.

Bug fixes
------------------------

-   larreco PR 31
    -   Cleanup corner-finder algorithm
-   larrecodnn PR 20
    -   Fix unused-result Clang compilation warning
    -   This PR addresses a compilation warning/error related to a discarded value as described [here](https://cdcvs.fnal.gov/redmine/issues/25871). The solution adopted here follows the tensorflow-suggested method for suppressing this type of error.

Updated dependencies
----------------------------------------------

-   mrb v4_04_05
    -   recognize sbnutil
-   changes from Robert Hatcher
    -   [https://indico.fnal.gov/event/49181/contributions/215615/attachments/143090/180968/GENIE_v3_02_00_preparation.pdf](https://indico.fnal.gov/event/49181/contributions/215615/attachments/143090/180968/GENIE_v3_02_00_preparation.pdf)
    -   dk2nudata v01_10_00
    -   dk2nugenie v01_10_00
    -   nusimdata v1_22_03
    -   nuevdb v1_03_04
    -   nug4 v1_07_01
    -   geant4reweight v01_06_07
    -   nutools v3_09_03
-   updates to ifdhc and ifbeam
    -   ifdhc v2_5_13
        -   define IFDHC_INC
    -   ifbeam v2_5_0
        -   BeamFolder::GetTimeList() API update
    -   ifdh_art v2_11_06
-   changes from Robert Hatcher plus updated ifdh_art
    -   nugen v1_12_02
    -   ppfx v02_13_04
    -   nusystematics v00_11_06

Change List
============================

larsoft v09_24_02
------------------------------------------

-   2021-06-16 Lynn Garren : use github
-   2021-06-16 Lynn Garren : larsoft v09_24_02 for larsoft v09_24_02
-   2021-06-16 Lynn Garren : product versions

lareventdisplay v09_01_10
----------------------------------------------------------

-   2021-06-16 Lynn Garren : lareventdisplay v09_01_10 for larsoft v09_24_02

larexamples v09_01_10
--------------------------------------------------

-   2021-06-16 Lynn Garren : larexamples v09_01_10 for larsoft v09_24_02

larpandora v09_06_02
------------------------------------------------

-   2021-06-16 Lynn Garren : larpandora v09_06_02 for larsoft v09_24_02

larsimrad v09_01_10
----------------------------------------------

-   2021-06-16 Lynn Garren : larsimrad v09_01_10 for larsoft v09_24_02

larrecodnn v09_07_01
------------------------------------------------

-   2021-06-16 Lynn Garren : larrecodnn v09_07_01 for larsoft v09_24_02
-   2021-06-16 Lynn Garren : Merge pull request \#20 from knoepfel/bugfix/knoepfel_fix_discarded_value
-   2021-06-14 Kyle Knoepfel : Fix bug [\#25871](/redmine/issues/25871 "Bug: larrecodnn compilation issues (Closed)"): use TF-provided method of suppressing ‘unused’ error.

larwirecell v09_02_08
--------------------------------------------------

-   2021-06-16 Lynn Garren : larwirecell v09_02_08 for larsoft v09_24_02

larana v09_02_06
----------------------------------------

-   2021-06-16 Lynn Garren : larana v09_02_06 for larsoft v09_24_02

larreco v09_06_06
------------------------------------------

-   2021-06-16 Lynn Garren : larreco v09_06_06 for larsoft v09_24_02
-   2021-06-16 Lynn Garren : Merge pull request \#31 from knoepfel/feature/knoepfel_cleanup_algorithm
-   2021-06-15 Kyle Knoepfel : More cleanups.
-   2021-06-14 Kyle Knoepfel : Remove unnecessary comments/functions.

larsim v09_13_03
----------------------------------------

-   2021-06-16 Lynn Garren : larsim v09_13_03 for larsoft v09_24_02

larg4 v09_03_07
--------------------------------------

-   2021-06-16 Lynn Garren : larg4 v09_03_07 for larsoft v09_24_02

larevt v09_02_06
----------------------------------------

-   2021-06-16 Lynn Garren : larevt v09_02_06 for larsoft v09_24_02

lardata v09_02_04
------------------------------------------

-   2021-06-16 Lynn Garren : lardata v09_02_04 for larsoft v09_24_02

larcore v09_02_01
------------------------------------------

larpandoracontent v03_23_02
--------------------------------------------------------------

-   2021-06-16 Lynn Garren : larpandoracontent v03_23_02 for larsoft v09_24_02
-   2021-06-08 Andrew Chappell : Update version and ChangeLog
-   2021-06-08 AndyChappell : Merge pull request [\#169](/redmine/issues/169 "Bug: Fix typos in man page (Closed)") from henrylay97/feature/hlay_vertex_bdt_changes
-   2021-05-20 Henry Lay : Address review comments and apply format
-   2021-05-14 Henry Lay : Inheritance corrections
-   2021-05-14 Henry Lay : Create asymmetry base tool from which all asymmetry tools inherit
-   2021-05-12 Henry Lay : Small review comments
-   2021-05-08 Henry Lay : Added warning message for training with old event shapes
-   2021-05-07 Henry Lay : Add functionality to use new mva configuration (and created a legacy mode)
-   2021-05-07 Henry Lay : Added shared feature info object and methods
-   2021-05-07 Henry Lay : Add new event shape features, provide legacy mode and make small corrections
-   2021-05-07 Henry Lay : Add shared features functionality
-   2021-05-07 Henry Lay : Add vertex energy functionality
-   2021-05-07 Henry Lay : Add EnergyDepositionAsymmetryFeatureTool

larsoftobj v09_05_04
------------------------------------------------

-   2021-06-16 Lynn Garren : larsoftobj v09_05_04 for larsoft v09_24_02
-   2021-06-16 Lynn Garren : update for dk2nudata and nusimdata

lardataobj v09_01_03
------------------------------------------------

-   2021-06-16 Lynn Garren : lardataobj v09_01_03 for larsoft v09_24_02

lardataalg v09_04_04
------------------------------------------------

-   2021-06-16 Lynn Garren : lardataalg v09_04_04 for larsoft v09_24_02

larcorealg v09_01_01
------------------------------------------------

larcoreobj v09_02_00
------------------------------------------------

webevd v09_05_05
----------------------------------------

-   2021-06-16 Lynn Garren : webevd v09_05_05 for larsoft v09_24_02

larbatch v01_56_01
--------------------------------------------

larutils v1_28_00
------------------------------------------
