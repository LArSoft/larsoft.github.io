LArSoft v09\_24\_02 Release Notes
======================================================================

-   **Table of contents**
-   [LArSoft v09\_24\_02 Release Notes](#LArSoft-v09_24_02-Release-Notes)
    -   [Purpose](#Purpose)
    -   [New features](#New-features)
    -   [Bug fixes](#Bug-fixes)
    -   [Updated dependencies](#Updated-dependencies)
-   [Change List](#Change-List)
    -   [larsoft v09\_24\_02](#larsoft-v09_24_02)
    -   [lareventdisplay v09\_01\_10](#lareventdisplay-v09_01_10)
    -   [larexamples v09\_01\_10](#larexamples-v09_01_10)
    -   [larpandora v09\_06\_02](#larpandora-v09_06_02)
    -   [larsimrad v09\_01\_10](#larsimrad-v09_01_10)
    -   [larrecodnn v09\_07\_01](#larrecodnn-v09_07_01)
    -   [larwirecell v09\_02\_08](#larwirecell-v09_02_08)
    -   [larana v09\_02\_06](#larana-v09_02_06)
    -   [larreco v09\_06\_06](#larreco-v09_06_06)
    -   [larsim v09\_13\_03](#larsim-v09_13_03)
    -   [larg4 v09\_03\_07](#larg4-v09_03_07)
    -   [larevt v09\_02\_06](#larevt-v09_02_06)
    -   [lardata v09\_02\_04](#lardata-v09_02_04)
    -   [larcore v09\_02\_01](#larcore-v09_02_01)
    -   [larpandoracontent v03\_23\_02](#larpandoracontent-v03_23_02)
    -   [larsoftobj v09\_05\_04](#larsoftobj-v09_05_04)
    -   [lardataobj v09\_01\_03](#lardataobj-v09_01_03)
    -   [lardataalg v09\_04\_04](#lardataalg-v09_04_04)
    -   [larcorealg v09\_01\_01](#larcorealg-v09_01_01)
    -   [larcoreobj v09\_02\_00](#larcoreobj-v09_02_00)
    -   [webevd v09\_05\_05](#webevd-v09_05_05)
    -   [larbatch v01\_56\_01](#larbatch-v01_56_01)
    -   [larutils v1\_28\_00](#larutils-v1_28_00)

[list of LArSoft releases](LArSoft_release_list)\
Download instructions for [larsoft v09\_24\_02](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v09_24_02/larsoft-v09_24_02.html)\
Download instructions for [just larsoftobj v09\_05\_04](http://scisoft.fnal.gov/scisoft/bundles/larsoftobj/v09_05_04/larsoftobj-v09_05_04.html)

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

-   mrb v4\_04\_05
    -   recognize sbnutil
-   changes from Robert Hatcher
    -   [https://indico.fnal.gov/event/49181/contributions/215615/attachments/143090/180968/GENIE\_v3\_02\_00\_preparation.pdf](https://indico.fnal.gov/event/49181/contributions/215615/attachments/143090/180968/GENIE_v3_02_00_preparation.pdf)
    -   dk2nudata v01\_10\_00
    -   dk2nugenie v01\_10\_00
    -   nusimdata v1\_22\_03
    -   nuevdb v1\_03\_04
    -   nug4 v1\_07\_01
    -   geant4reweight v01\_06\_07
    -   nutools v3\_09\_03
-   updates to ifdhc and ifbeam
    -   ifdhc v2\_5\_13
        -   define IFDHC\_INC
    -   ifbeam v2\_5\_0
        -   BeamFolder::GetTimeList() API update
    -   ifdh\_art v2\_11\_06
-   changes from Robert Hatcher plus updated ifdh\_art
    -   nugen v1\_12\_02
    -   ppfx v02\_13\_04
    -   nusystematics v00\_11\_06

Change List
============================

larsoft v09\_24\_02
------------------------------------------

-   2021-06-16 Lynn Garren : use github
-   2021-06-16 Lynn Garren : larsoft v09\_24\_02 for larsoft v09\_24\_02
-   2021-06-16 Lynn Garren : product versions

lareventdisplay v09\_01\_10
----------------------------------------------------------

-   2021-06-16 Lynn Garren : lareventdisplay v09\_01\_10 for larsoft v09\_24\_02

larexamples v09\_01\_10
--------------------------------------------------

-   2021-06-16 Lynn Garren : larexamples v09\_01\_10 for larsoft v09\_24\_02

larpandora v09\_06\_02
------------------------------------------------

-   2021-06-16 Lynn Garren : larpandora v09\_06\_02 for larsoft v09\_24\_02

larsimrad v09\_01\_10
----------------------------------------------

-   2021-06-16 Lynn Garren : larsimrad v09\_01\_10 for larsoft v09\_24\_02

larrecodnn v09\_07\_01
------------------------------------------------

-   2021-06-16 Lynn Garren : larrecodnn v09\_07\_01 for larsoft v09\_24\_02
-   2021-06-16 Lynn Garren : Merge pull request \#20 from knoepfel/bugfix/knoepfel\_fix\_discarded\_value
-   2021-06-14 Kyle Knoepfel : Fix bug [\#25871](/redmine/issues/25871 "Bug: larrecodnn compilation issues (Closed)"): use TF-provided method of suppressing ‘unused’ error.

larwirecell v09\_02\_08
--------------------------------------------------

-   2021-06-16 Lynn Garren : larwirecell v09\_02\_08 for larsoft v09\_24\_02

larana v09\_02\_06
----------------------------------------

-   2021-06-16 Lynn Garren : larana v09\_02\_06 for larsoft v09\_24\_02

larreco v09\_06\_06
------------------------------------------

-   2021-06-16 Lynn Garren : larreco v09\_06\_06 for larsoft v09\_24\_02
-   2021-06-16 Lynn Garren : Merge pull request \#31 from knoepfel/feature/knoepfel\_cleanup\_algorithm
-   2021-06-15 Kyle Knoepfel : More cleanups.
-   2021-06-14 Kyle Knoepfel : Remove unnecessary comments/functions.

larsim v09\_13\_03
----------------------------------------

-   2021-06-16 Lynn Garren : larsim v09\_13\_03 for larsoft v09\_24\_02

larg4 v09\_03\_07
--------------------------------------

-   2021-06-16 Lynn Garren : larg4 v09\_03\_07 for larsoft v09\_24\_02

larevt v09\_02\_06
----------------------------------------

-   2021-06-16 Lynn Garren : larevt v09\_02\_06 for larsoft v09\_24\_02

lardata v09\_02\_04
------------------------------------------

-   2021-06-16 Lynn Garren : lardata v09\_02\_04 for larsoft v09\_24\_02

larcore v09\_02\_01
------------------------------------------

larpandoracontent v03\_23\_02
--------------------------------------------------------------

-   2021-06-16 Lynn Garren : larpandoracontent v03\_23\_02 for larsoft v09\_24\_02
-   2021-06-08 Andrew Chappell : Update version and ChangeLog
-   2021-06-08 AndyChappell : Merge pull request [\#169](/redmine/issues/169 "Bug: Fix typos in man page (Closed)") from henrylay97/feature/hlay\_vertex\_bdt\_changes
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

larsoftobj v09\_05\_04
------------------------------------------------

-   2021-06-16 Lynn Garren : larsoftobj v09\_05\_04 for larsoft v09\_24\_02
-   2021-06-16 Lynn Garren : update for dk2nudata and nusimdata

lardataobj v09\_01\_03
------------------------------------------------

-   2021-06-16 Lynn Garren : lardataobj v09\_01\_03 for larsoft v09\_24\_02

lardataalg v09\_04\_04
------------------------------------------------

-   2021-06-16 Lynn Garren : lardataalg v09\_04\_04 for larsoft v09\_24\_02

larcorealg v09\_01\_01
------------------------------------------------

larcoreobj v09\_02\_00
------------------------------------------------

webevd v09\_05\_05
----------------------------------------

-   2021-06-16 Lynn Garren : webevd v09\_05\_05 for larsoft v09\_24\_02

larbatch v01\_56\_01
--------------------------------------------

larutils v1\_28\_00
------------------------------------------
