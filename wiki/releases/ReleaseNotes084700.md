LArSoft v08_47_00 Release Notes
======================================================================

-   **Table of contents**
-   [LArSoft v08_47_00 Release Notes](#LArSoft-v08_47_00-Release-Notes)
    -   [Purpose](#Purpose)
    -   [New features](#New-features)
    -   [Bug fixes](#Bug-fixes)
    -   [Updated dependencies](#Updated-dependencies)
-   [Change List](#Change-List)
    -   [larsoft v08_47_00](#larsoft-v08_47_00)
    -   [lareventdisplay v08_12_07](#lareventdisplay-v08_12_07)
    -   [larexamples v08_06_07](#larexamples-v08_06_07)
    -   [larg4 v08_12_05](#larg4-v08_12_05)
    -   [larpandora v08_11_07](#larpandora-v08_11_07)
    -   [larrecodnn v08_01_00](#larrecodnn-v08_01_00)
    -   [larwirecell v08_12_06](#larwirecell-v08_12_06)
    -   [larana v08_16_07](#larana-v08_16_07)
    -   [larreco v08_29_02](#larreco-v08_29_02)
    -   [larsim v08_21_00](#larsim-v08_21_00)
    -   [larevt v08_10_06](#larevt-v08_10_06)
    -   [lardata v08_14_05](#lardata-v08_14_05)
    -   [larcore v08_11_02](#larcore-v08_11_02)
    -   [larpandoracontent v03_15_15](#larpandoracontent-v03_15_15)
    -   [larsoftobj v08_27_02](#larsoftobj-v08_27_02)
    -   [lardataobj v08_10_05](#lardataobj-v08_10_05)
    -   [lardataalg v08_13_05](#lardataalg-v08_13_05)
    -   [larcorealg v08_21_02](#larcorealg-v08_21_02)
    -   [larcoreobj v08_10_04](#larcoreobj-v08_10_04)
    -   [larbatch v01_52_02](#larbatch-v01_52_02)
    -   [larutils v1_25_08](#larutils-v1_25_08)

[list of LArSoft releases](LArSoft_release_list)
Download instructions for [larsoft v08_47_00](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v08_47_00/larsoft-v08_47_00.html)
Download instructions for [just larsoftobj v08_27_02](http://scisoft.fnal.gov/scisoft/bundles/larsoftobj/v08_27_02/larsoftobj-v08_27_02.html)

Purpose
--------------------

-   changes in develop
-   approved PRs

New features
------------------------------

-   larg4 PR 6
    -   Allow trajectories to be stored for configurable list of generators only
-   larsim PR 9
    -   Accept multiple instances of SimEnergyDeposit as input
-   larrecodnn PR 1
    -   Use tensorflow v1_12_0c
    -   dunetpc will need feature/tjyang_tensorflow_v1_12_0
    -   resolves issue [\#22504](/redmine/issues/22504 "Support: Request to upgrade the tensorflow version (Closed)")

Bug fixes
------------------------

-   larsim PR 10
    -   Small fix to interpretation of azimuthal angle in MUSUN generator.

Updated dependencies
----------------------------------------------

-   tensorflow v1_12_0c
    -   see [\#22504](/redmine/issues/22504 "Support: Request to upgrade the tensorflow version (Closed)")
    -   available for SLF6 e19-py2 and SLF7 e19 and e19-py2
-   trtis_clients v19_11b
    -   available for SLF7 e19 and e19-py2

Change List
============================

larsoft v08_47_00
------------------------------------------

-   2020-03-18 Lynn Garren : larsoft v08_47_00 for larsoft v08_47_00
-   2020-03-18 Lynn Garren : product versions

lareventdisplay v08_12_07
----------------------------------------------------------

-   2020-03-18 Lynn Garren : lareventdisplay v08_12_07 for larsoft v08_47_00

larexamples v08_06_07
--------------------------------------------------

-   2020-03-18 Lynn Garren : larexamples v08_06_07 for larsoft v08_47_00

larg4 v08_12_05
--------------------------------------

-   2020-03-18 Lynn Garren : larg4 v08_12_05 for larsoft v08_47_00
-   2020-03-16 Lynn Garren : Merge pull request [\#6](/redmine/issues/6 "Feature: Non-KCA Remediation (New)") from drivera-fnal/develop
-   2020-03-06 David Rivera : Merge branch ‘develop’ of github.com:LArSoft/larg4 into develop (pull in changes from larg4 v08_12_03)
-   2020-03-06 David Rivera : cleanup
-   2020-03-03 David Rivera : Update comment
-   2020-03-02 David Rivera : Merge branch ‘develop’ of github.com:LArSoft/larg4 into develop (update from base larsoft v08_43_00 to larsoft v08_44_00)
-   2020-03-02 David Rivera : Added a ParticleListAction_service list parameter (keepGenTrajectories) which accepts a list of generator labels. Retrieve the generator corresponding to each MCTruthIndex and determine whether the trajectories for the generator(s) should be stored or not. If storeTrajectories fhicl parameter is set to true and no keepGenTrajectories is provided, all trajectories for all generators are stored. If storeTrajectories is set to false then the no trajectory points are stored (for any generator). This preserves the behavior of the storeTrajectories fhicl parameter.
-   2020-02-26 David Rivera : work in progress

larpandora v08_11_07
------------------------------------------------

-   2020-03-18 Lynn Garren : larpandora v08_11_07 for larsoft v08_47_00

larrecodnn v08_01_00
------------------------------------------------

larwirecell v08_12_06
--------------------------------------------------

larana v08_16_07
----------------------------------------

-   2020-03-18 Lynn Garren : larana v08_16_07 for larsoft v08_47_00

larreco v08_29_02
------------------------------------------

-   2020-03-18 Lynn Garren : larreco v08_29_02 for larsoft v08_47_00

larsim v08_21_00
----------------------------------------

-   2020-03-18 Lynn Garren : larsim v08_21_00 for larsoft v08_47_00
-   2020-03-18 Lynn Garren : Merge pull request \#10 from vpec0/develop
-   2020-03-17 Viktor Pec : Small fix of interpretation of azimuthal langle in MUSUN generator.
-   2020-03-16 Lynn Garren : Merge pull request \#9 from wenqiang-gu/wgu_multi_input
-   2020-03-15 Wenqiang Gu : remove white space
-   2020-03-14 Wenqiang Gu : Merge remote-tracking branch ‘origin/master’ into wgu_multi_input
-   2020-02-20 Wenqiang Gu : accept multiple instances of SimEnergyDeposit as input

larevt v08_10_06
----------------------------------------

lardata v08_14_05
------------------------------------------

larcore v08_11_02
------------------------------------------

larpandoracontent v03_15_15
--------------------------------------------------------------

larsoftobj v08_27_02
------------------------------------------------

lardataobj v08_10_05
------------------------------------------------

lardataalg v08_13_05
------------------------------------------------

larcorealg v08_21_02
------------------------------------------------

larcoreobj v08_10_04
------------------------------------------------

larbatch v01_52_02
--------------------------------------------

larutils v1_25_08
------------------------------------------

-   2020-03-18 Lynn Garren : larutils v1_25_08 for larsoft v08_47_00
-   2020-03-03 Herbert Greenlee : Add py2 exception for e17 and c2.
-   2020-02-17 Patrick Gartung : remove github actions
