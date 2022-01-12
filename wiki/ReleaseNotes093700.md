LArSoft v09\_37\_00 Release Notes
======================================================================

-   **Table of contents**
-   [LArSoft v09\_37\_00 Release Notes](#LArSoft-v09_37_00-Release-Notes)
    -   [Purpose](#Purpose)
    -   [New features](#New-features)
    -   [Bug fixes](#Bug-fixes)
    -   [Updated dependencies](#Updated-dependencies)
-   [Change List](#Change-List)
    -   [larsoft v09\_37\_00](#larsoft-v09_37_00)
    -   [lareventdisplay v09\_02\_07](#lareventdisplay-v09_02_07)
    -   [larexamples v09\_02\_07](#larexamples-v09_02_07)
    -   [larpandora v09\_10\_01](#larpandora-v09_10_01)
    -   [larsimrad v09\_03\_06](#larsimrad-v09_03_06)
    -   [larrecodnn v09\_09\_08](#larrecodnn-v09_09_08)
    -   [larwirecell v09\_04\_05](#larwirecell-v09_04_05)
    -   [larana v09\_03\_08](#larana-v09_03_08)
    -   [larreco v09\_07\_07](#larreco-v09_07_07)
    -   [larsim v09\_19\_00](#larsim-v09_19_00)
    -   [larg4 v09\_06\_02](#larg4-v09_06_02)
    -   [larevt v09\_03\_05](#larevt-v09_03_05)
    -   [lardata v09\_04\_02](#lardata-v09_04_02)
    -   [larcore v09\_03\_02](#larcore-v09_03_02)
    -   [larpandoracontent v03\_26\_01](#larpandoracontent-v03_26_01)
    -   [larsoftobj v09\_12\_00](#larsoftobj-v09_12_00)
    -   [lardataobj v09\_03\_05](#lardataobj-v09_03_05)
    -   [lardataalg v09\_07\_02](#lardataalg-v09_07_02)
    -   [larcorealg v09\_04\_00](#larcorealg-v09_04_00)
    -   [larcoreobj v09\_03\_01](#larcoreobj-v09_03_01)
    -   [webevd v09\_06\_05](#webevd-v09_06_05)
    -   [larbatch v01\_56\_02](#larbatch-v01_56_02)
    -   [larutils v1\_28\_02](#larutils-v1_28_02)

[list of LArSoft releases](LArSoft_release_list)
Download instructions for [larsoft v09\_37\_00](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v09_37_00/larsoft-v09_37_00.html)
Download instructions for [just larsoftobj v09\_12\_00](http://scisoft.fnal.gov/scisoft/bundles/larsoftobj/v09_12_00/larsoftobj-v09_12_00.html)

Purpose
--------------------

-   changes in develop
-   approved PRs

New features
------------------------------

-   larsim PR 80
    -   CRT translation module
    -   A module to convert sim::AuxDetHits to sim::AuxDetSimChannels for the CRT, a process that is not performed by the new LArG4. AxuDetSimChannels are necessary for CRT detsim.
-   larcorealg PR 23
    -   Adding tolerances when finding AuxDet(Sensitive)s
    -   Changes to FindAuxDetSensitiveAtPosition and related functions to allow for a tolerance in finding matching AuxDets or AuxDetSensitives. The tolerance defaults to 0.

Bug fixes
------------------------

-   larana PR 16
    -   by request, revert larana PR 14/13

Updated dependencies
----------------------------------------------

Change List
============================

larsoft v09\_37\_00
------------------------------------------

-   2021-11-18 Lynn Garren : larsoft v09\_37\_00 for larsoft v09\_37\_00
-   2021-11-18 Lynn Garren : larsoft v09\_37\_00 for larsoft v09\_37\_00
-   2021-11-18 Lynn Garren : cleanup
-   2021-11-18 Lynn Garren : product versions

lareventdisplay v09\_02\_07
----------------------------------------------------------

-   2021-11-18 Lynn Garren : lareventdisplay v09\_02\_07 for larsoft v09\_37\_00
-   2021-11-18 Lynn Garren : lareventdisplay v09\_02\_07 for larsoft v09\_37\_00

larexamples v09\_02\_07
--------------------------------------------------

-   2021-11-18 Lynn Garren : larexamples v09\_02\_07 for larsoft v09\_37\_00
-   2021-11-18 Lynn Garren : larexamples v09\_02\_07 for larsoft v09\_37\_00

larpandora v09\_10\_01
------------------------------------------------

-   2021-11-18 Lynn Garren : larpandora v09\_10\_01 for larsoft v09\_37\_00
-   2021-11-18 Lynn Garren : larpandora v09\_10\_01 for larsoft v09\_37\_00

larsimrad v09\_03\_06
----------------------------------------------

-   2021-11-18 Lynn Garren : larsimrad v09\_03\_06 for larsoft v09\_37\_00
-   2021-11-18 Lynn Garren : larsimrad v09\_03\_06 for larsoft v09\_37\_00

larrecodnn v09\_09\_08
------------------------------------------------

-   2021-11-18 Lynn Garren : larrecodnn v09\_09\_08 for larsoft v09\_37\_00
-   2021-11-18 Lynn Garren : larrecodnn v09\_09\_08 for larsoft v09\_37\_00

larwirecell v09\_04\_05
--------------------------------------------------

-   2021-11-18 Lynn Garren : larwirecell v09\_04\_05 for larsoft v09\_37\_00
-   2021-11-18 Lynn Garren : larwirecell v09\_04\_05 for larsoft v09\_37\_00

larana v09\_03\_08
----------------------------------------

-   2021-11-18 Lynn Garren : larana v09\_03\_08 for larsoft v09\_37\_00
-   2021-11-18 Lynn Garren : larana v09\_03\_08 for larsoft v09\_37\_00
-   2021-11-17 Lynn Garren : Merge pull request \#16 from LArSoft/revert-14-fix-kazus-pr
-   2021-11-17 Lynn Garren : Revert “Address issues in Kazu’s OpDet PR”

larreco v09\_07\_07
------------------------------------------

-   2021-11-18 Lynn Garren : larreco v09\_07\_07 for larsoft v09\_37\_00
-   2021-11-18 Lynn Garren : larreco v09\_07\_07 for larsoft v09\_37\_00

larsim v09\_19\_00
----------------------------------------

-   2021-11-18 Lynn Garren : larsim v09\_19\_00 for larsoft v09\_37\_00
-   2021-11-18 Lynn Garren : larsim v09\_19\_00 for larsoft v09\_37\_00
-   2021-11-17 Ivan Lepetic : Further cleanup
-   2021-11-17 Ivan Lepetic : Revert “larsim v09\_18\_01\_01 for larsoft v09\_36\_00\_01”
-   2021-11-17 Ivan Lepetic : Revert “larsim v09\_18\_01\_01 for larsoft v09\_36\_00\_01”
-   2021-11-15 Ivan Lepetic : Cleaning up code
-   2021-11-05 Ivan Lepetic : Remove some comments
-   2021-11-03 Ivan Lepetic : Adding CRT translation module
-   2021-11-12 Lynn Garren : larsim v09\_18\_01\_01 for larsoft v09\_36\_00\_01
-   2021-11-12 Lynn Garren : larsim v09\_18\_01\_01 for larsoft v09\_36\_00\_01

larg4 v09\_06\_02
--------------------------------------

-   2021-11-18 Lynn Garren : larg4 v09\_06\_02 for larsoft v09\_37\_00
-   2021-11-18 Lynn Garren : larg4 v09\_06\_02 for larsoft v09\_37\_00

larevt v09\_03\_05
----------------------------------------

-   2021-11-18 Lynn Garren : larevt v09\_03\_05 for larsoft v09\_37\_00
-   2021-11-18 Lynn Garren : larevt v09\_03\_05 for larsoft v09\_37\_00

lardata v09\_04\_02
------------------------------------------

-   2021-11-18 Lynn Garren : lardata v09\_04\_02 for larsoft v09\_37\_00
-   2021-11-18 Lynn Garren : lardata v09\_04\_02 for larsoft v09\_37\_00

larcore v09\_03\_02
------------------------------------------

-   2021-11-18 Lynn Garren : larcore v09\_03\_02 for larsoft v09\_37\_00
-   2021-11-18 Lynn Garren : larcore v09\_03\_02 for larsoft v09\_37\_00

larpandoracontent v03\_26\_01
--------------------------------------------------------------

larsoftobj v09\_12\_00
------------------------------------------------

-   2021-11-18 Lynn Garren : larsoftobj v09\_12\_00 for larsoft v09\_37\_00
-   2021-11-18 Lynn Garren : larsoftobj v09\_12\_00 for larsoft v09\_37\_00
-   2021-11-18 Lynn Garren : product versions

lardataobj v09\_03\_05
------------------------------------------------

-   2021-11-18 Lynn Garren : lardataobj v09\_03\_05 for larsoft v09\_37\_00
-   2021-11-18 Lynn Garren : lardataobj v09\_03\_05 for larsoft v09\_37\_00

lardataalg v09\_07\_02
------------------------------------------------

-   2021-11-18 Lynn Garren : lardataalg v09\_07\_02 for larsoft v09\_37\_00
-   2021-11-18 Lynn Garren : lardataalg v09\_07\_02 for larsoft v09\_37\_00

larcorealg v09\_04\_00
------------------------------------------------

-   2021-11-18 Lynn Garren : larcorealg v09\_04\_00 for larsoft v09\_37\_00
-   2021-11-18 Lynn Garren : larcorealg v09\_04\_00 for larsoft v09\_37\_00
-   2021-11-18 Wesley : revert the signature of the pure virtual function AuxDetChannelMapAlg::PositionToAuxDetChannel to remove tolerance. If tolerance desired, can call in experiment specific code
-   2021-11-17 Ivan Lepetic : Cleaning up code
-   2021-11-05 Ivan Lepetic : Remove some comments
-   2021-11-05 Ivan Lepetic : Checking for consistency of tolerance parameter
-   2021-11-04 Ivan Lepetic : Add optional tolerance to find AuxDet functions

larcoreobj v09\_03\_01
------------------------------------------------

webevd v09\_06\_05
----------------------------------------

-   2021-11-18 Lynn Garren : webevd v09\_06\_05 for larsoft v09\_37\_00
-   2021-11-18 Lynn Garren : webevd v09\_06\_05 for larsoft v09\_37\_00

larbatch v01\_56\_02
--------------------------------------------

larutils v1\_28\_02
------------------------------------------
