LArSoft v09_37_00 Release Notes
======================================================================

[list of LArSoft releases](LArSoft_release_list)
Download instructions for [larsoft v09_37_00](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v09_37_00/larsoft-v09_37_00.html)
Download instructions for [just larsoftobj v09_12_00](http://scisoft.fnal.gov/scisoft/bundles/larsoftobj/v09_12_00/larsoftobj-v09_12_00.html)

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

larsoft v09_37_00
------------------------------------------

-   2021-11-18 Lynn Garren : larsoft v09_37_00 for larsoft v09_37_00
-   2021-11-18 Lynn Garren : larsoft v09_37_00 for larsoft v09_37_00
-   2021-11-18 Lynn Garren : cleanup
-   2021-11-18 Lynn Garren : product versions

lareventdisplay v09_02_07
----------------------------------------------------------

-   2021-11-18 Lynn Garren : lareventdisplay v09_02_07 for larsoft v09_37_00
-   2021-11-18 Lynn Garren : lareventdisplay v09_02_07 for larsoft v09_37_00

larexamples v09_02_07
--------------------------------------------------

-   2021-11-18 Lynn Garren : larexamples v09_02_07 for larsoft v09_37_00
-   2021-11-18 Lynn Garren : larexamples v09_02_07 for larsoft v09_37_00

larpandora v09_10_01
------------------------------------------------

-   2021-11-18 Lynn Garren : larpandora v09_10_01 for larsoft v09_37_00
-   2021-11-18 Lynn Garren : larpandora v09_10_01 for larsoft v09_37_00

larsimrad v09_03_06
----------------------------------------------

-   2021-11-18 Lynn Garren : larsimrad v09_03_06 for larsoft v09_37_00
-   2021-11-18 Lynn Garren : larsimrad v09_03_06 for larsoft v09_37_00

larrecodnn v09_09_08
------------------------------------------------

-   2021-11-18 Lynn Garren : larrecodnn v09_09_08 for larsoft v09_37_00
-   2021-11-18 Lynn Garren : larrecodnn v09_09_08 for larsoft v09_37_00

larwirecell v09_04_05
--------------------------------------------------

-   2021-11-18 Lynn Garren : larwirecell v09_04_05 for larsoft v09_37_00
-   2021-11-18 Lynn Garren : larwirecell v09_04_05 for larsoft v09_37_00

larana v09_03_08
----------------------------------------

-   2021-11-18 Lynn Garren : larana v09_03_08 for larsoft v09_37_00
-   2021-11-18 Lynn Garren : larana v09_03_08 for larsoft v09_37_00
-   2021-11-17 Lynn Garren : Merge pull request \#16 from LArSoft/revert-14-fix-kazus-pr
-   2021-11-17 Lynn Garren : Revert “Address issues in Kazu’s OpDet PR”

larreco v09_07_07
------------------------------------------

-   2021-11-18 Lynn Garren : larreco v09_07_07 for larsoft v09_37_00
-   2021-11-18 Lynn Garren : larreco v09_07_07 for larsoft v09_37_00

larsim v09_19_00
----------------------------------------

-   2021-11-18 Lynn Garren : larsim v09_19_00 for larsoft v09_37_00
-   2021-11-18 Lynn Garren : larsim v09_19_00 for larsoft v09_37_00
-   2021-11-17 Ivan Lepetic : Further cleanup
-   2021-11-17 Ivan Lepetic : Revert “larsim v09_18_01_01 for larsoft v09_36_00_01”
-   2021-11-17 Ivan Lepetic : Revert “larsim v09_18_01_01 for larsoft v09_36_00_01”
-   2021-11-15 Ivan Lepetic : Cleaning up code
-   2021-11-05 Ivan Lepetic : Remove some comments
-   2021-11-03 Ivan Lepetic : Adding CRT translation module
-   2021-11-12 Lynn Garren : larsim v09_18_01_01 for larsoft v09_36_00_01
-   2021-11-12 Lynn Garren : larsim v09_18_01_01 for larsoft v09_36_00_01

larg4 v09_06_02
--------------------------------------

-   2021-11-18 Lynn Garren : larg4 v09_06_02 for larsoft v09_37_00
-   2021-11-18 Lynn Garren : larg4 v09_06_02 for larsoft v09_37_00

larevt v09_03_05
----------------------------------------

-   2021-11-18 Lynn Garren : larevt v09_03_05 for larsoft v09_37_00
-   2021-11-18 Lynn Garren : larevt v09_03_05 for larsoft v09_37_00

lardata v09_04_02
------------------------------------------

-   2021-11-18 Lynn Garren : lardata v09_04_02 for larsoft v09_37_00
-   2021-11-18 Lynn Garren : lardata v09_04_02 for larsoft v09_37_00

larcore v09_03_02
------------------------------------------

-   2021-11-18 Lynn Garren : larcore v09_03_02 for larsoft v09_37_00
-   2021-11-18 Lynn Garren : larcore v09_03_02 for larsoft v09_37_00

larpandoracontent v03_26_01
--------------------------------------------------------------

larsoftobj v09_12_00
------------------------------------------------

-   2021-11-18 Lynn Garren : larsoftobj v09_12_00 for larsoft v09_37_00
-   2021-11-18 Lynn Garren : larsoftobj v09_12_00 for larsoft v09_37_00
-   2021-11-18 Lynn Garren : product versions

lardataobj v09_03_05
------------------------------------------------

-   2021-11-18 Lynn Garren : lardataobj v09_03_05 for larsoft v09_37_00
-   2021-11-18 Lynn Garren : lardataobj v09_03_05 for larsoft v09_37_00

lardataalg v09_07_02
------------------------------------------------

-   2021-11-18 Lynn Garren : lardataalg v09_07_02 for larsoft v09_37_00
-   2021-11-18 Lynn Garren : lardataalg v09_07_02 for larsoft v09_37_00

larcorealg v09_04_00
------------------------------------------------

-   2021-11-18 Lynn Garren : larcorealg v09_04_00 for larsoft v09_37_00
-   2021-11-18 Lynn Garren : larcorealg v09_04_00 for larsoft v09_37_00
-   2021-11-18 Wesley : revert the signature of the pure virtual function AuxDetChannelMapAlg::PositionToAuxDetChannel to remove tolerance. If tolerance desired, can call in experiment specific code
-   2021-11-17 Ivan Lepetic : Cleaning up code
-   2021-11-05 Ivan Lepetic : Remove some comments
-   2021-11-05 Ivan Lepetic : Checking for consistency of tolerance parameter
-   2021-11-04 Ivan Lepetic : Add optional tolerance to find AuxDet functions

larcoreobj v09_03_01
------------------------------------------------

webevd v09_06_05
----------------------------------------

-   2021-11-18 Lynn Garren : webevd v09_06_05 for larsoft v09_37_00
-   2021-11-18 Lynn Garren : webevd v09_06_05 for larsoft v09_37_00

larbatch v01_56_02
--------------------------------------------

larutils v1_28_02
------------------------------------------
