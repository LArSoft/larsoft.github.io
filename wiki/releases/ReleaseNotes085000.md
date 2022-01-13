LArSoft v08_50_00 Release Notes
======================================================================

[list of LArSoft releases](LArSoft_release_list)
Download instructions for [larsoft v08_50_00](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v08_50_00/larsoft-v08_50_00.html)
Download instructions for [just larsoftobj v08_27_05](http://scisoft.fnal.gov/scisoft/bundles/larsoftobj/v08_27_05/larsoftobj-v08_27_05.html)

Purpose
--------------------

-   changes in develop
-   approved PRs

New features
------------------------------

-   larrecodnn PR 3
    -   Save Mike and Lorenzo’s 1dcnn ROI finder results to recob::Wire
-   larg4 PR 7
    -   NuRandomService engine for geant4 seed generator
    -   This is a breaking change. We believe only dunetpc is affected.
    -   dunetpc will need feature/tjyang_largeantseed

Bug fixes
------------------------

-   larrana PR 6
    -   In AlgoSlidingWindow, ophits are found by looking where the waveform goes above baseline. When a peak (ophit) is found, the ophit is not eneded immediately, but after a few samples (in the code are called “in_post” samples). In case a new peak is found during an in_post sample, the previous peak is not ended. This causes a weird behaviour. This is now fixed by ending the previous pulse, and starting a new one.
-   larsim PR 13
    -   resolve [redmine issue 24301](https://cdcvs.fnal.gov/redmine/issues/24301)

Updated dependencies
----------------------------------------------

Change List
============================

larsoft v08_50_00
------------------------------------------

-   2020-04-14 Lynn Garren : larsoft v08_50_00 for larsoft v08_50_00
-   2020-04-14 Lynn Garren : product versions

lareventdisplay v08_12_11
----------------------------------------------------------

-   2020-04-14 Lynn Garren : lareventdisplay v08_12_11 for larsoft v08_50_00

larexamples v08_06_11
--------------------------------------------------

-   2020-04-14 Lynn Garren : larexamples v08_06_11 for larsoft v08_50_00

larg4 v08_13_00
--------------------------------------

-   2020-04-14 Lynn Garren : larg4 now depends on nurandom
-   2020-04-14 Lynn Garren : larg4 v08_13_00 for larsoft v08_50_00
-   2020-04-14 Lynn Garren : Merge branch ‘drivera-fnal-develop’ into release/v08_50_00
-   2020-03-24 David Rivera : Add check for invalid seed value
-   2020-03-24 David Rivera : Use the NuRandomService engine for additional control over the seed generation policy
-   2020-03-24 David Rivera : Cleanup

larpandora v08_12_03
------------------------------------------------

-   2020-04-14 Lynn Garren : larpandora v08_12_03 for larsoft v08_50_00

larrecodnn v08_03_00
------------------------------------------------

-   2020-04-14 Lynn Garren : larrecodnn v08_03_00 for larsoft v08_50_00
-   2020-04-13 Lynn Garren : Merge pull request [redmine issue 3](https://cdcvs.fnal.gov/redmine/issues/3) from yangtj207/develop
-   2020-04-12 Tingjun Yang : Change based on Tom’s suggestion.
-   2020-04-12 Tingjun Yang : Remove white spaces.
-   2020-04-12 Tingjun Yang : Merge branch ‘develop’ of github.com:yangtj207/larrecodnn into develop
-   2020-04-12 Tingjun Yang : Add producer module to save WaveformRoiFinder results in recob::Wire.
-   2020-03-18 Tingjun Yang : Remove white space

larwirecell v08_12_09
--------------------------------------------------

larana v08_17_03
----------------------------------------

-   2020-04-14 Lynn Garren : larana v08_17_03 for larsoft v08_50_00
-   2020-04-13 Lynn Garren : Merge pull request [redmine issue 6](https://cdcvs.fnal.gov/redmine/issues/6) from marcodeltutto/ophits_work
-   2020-04-09 Marco Del Tutto : Removing trailing whitespaces.
-   2020-04-09 Marco Del Tutto : Merge branch ‘develop’ into ophits_work
-   2020-04-09 Marco Del Tutto : In AlgoSlidingWindow, the peak is not ended in case it is in the in_post state, and a new peak is found. This is now fixed by ending the current pulse, and starting a new one.

larreco v08_31_01
------------------------------------------

-   2020-04-14 Lynn Garren : larreco v08_31_01 for larsoft v08_50_00

larsim v08_22_03
----------------------------------------

-   2020-04-14 Lynn Garren : larsim v08_22_03 for larsoft v08_50_00
-   2020-04-13 Lynn Garren : Merge pull request \#13 from ikatza/develop
-   2020-04-09 Iker de Icaza Astiz : Running removeWhiteSpace.sh
-   2020-04-09 Iker de Icaza Astiz : Handle swapped orientation of rectangles in Rectangle_SolidAngle(), related to Bug [redmine issue 24301](https://cdcvs.fnal.gov/redmine/issues/24301)

larevt v08_11_02
----------------------------------------

lardata v08_15_02
------------------------------------------

larcore v08_11_03
------------------------------------------

larpandoracontent v03_15_16
--------------------------------------------------------------

larsoftobj v08_27_05
------------------------------------------------

lardataobj v08_10_06
------------------------------------------------

lardataalg v08_13_08
------------------------------------------------

larcorealg v08_21_03
------------------------------------------------

larcoreobj v08_10_05
------------------------------------------------

larbatch v01_52_02
--------------------------------------------

larutils v1_25_09
------------------------------------------
