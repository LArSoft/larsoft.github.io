LArSoft v08\_50\_00 Release Notes(#LArSoft-v08_50_00-Release-Notes)
======================================================================

-   **Table of contents**
-   [LArSoft v08\_50\_00 Release Notes](#LArSoft-v08_50_00-Release-Notes)
    -   [Purpose](#Purpose)
    -   [New features](#New-features)
    -   [Bug fixes](#Bug-fixes)
    -   [Updated dependencies](#Updated-dependencies)
-   [Change List](#Change-List)
    -   [larsoft v08\_50\_00](#larsoft-v08_50_00)
    -   [lareventdisplay v08\_12\_11](#lareventdisplay-v08_12_11)
    -   [larexamples v08\_06\_11](#larexamples-v08_06_11)
    -   [larg4 v08\_13\_00](#larg4-v08_13_00)
    -   [larpandora v08\_12\_03](#larpandora-v08_12_03)
    -   [larrecodnn v08\_03\_00](#larrecodnn-v08_03_00)
    -   [larwirecell v08\_12\_09](#larwirecell-v08_12_09)
    -   [larana v08\_17\_03](#larana-v08_17_03)
    -   [larreco v08\_31\_01](#larreco-v08_31_01)
    -   [larsim v08\_22\_03](#larsim-v08_22_03)
    -   [larevt v08\_11\_02](#larevt-v08_11_02)
    -   [lardata v08\_15\_02](#lardata-v08_15_02)
    -   [larcore v08\_11\_03](#larcore-v08_11_03)
    -   [larpandoracontent v03\_15\_16](#larpandoracontent-v03_15_16)
    -   [larsoftobj v08\_27\_05](#larsoftobj-v08_27_05)
    -   [lardataobj v08\_10\_06](#lardataobj-v08_10_06)
    -   [lardataalg v08\_13\_08](#lardataalg-v08_13_08)
    -   [larcorealg v08\_21\_03](#larcorealg-v08_21_03)
    -   [larcoreobj v08\_10\_05](#larcoreobj-v08_10_05)
    -   [larbatch v01\_52\_02](#larbatch-v01_52_02)
    -   [larutils v1\_25\_09](#larutils-v1_25_09)

[list of LArSoft releases](LArSoft_release_list)\
Download instructions for [larsoft v08\_50\_00](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v08_50_00/larsoft-v08_50_00.html)\
Download instructions for [just larsoftobj v08\_27\_05](http://scisoft.fnal.gov/scisoft/bundles/larsoftobj/v08_27_05/larsoftobj-v08_27_05.html)

Purpose(#Purpose)
--------------------

-   changes in develop
-   approved PRs

New features(#New-features)
------------------------------

-   larrecodnn PR 3
    -   Save Mike and Lorenzo’s 1dcnn ROI finder results to recob::Wire
-   larg4 PR 7
    -   NuRandomService engine for geant4 seed generator
    -   This is a breaking change. We believe only dunetpc is affected.
    -   dunetpc will need feature/tjyang\_largeantseed

Bug fixes(#Bug-fixes)
------------------------

-   larrana PR 6
    -   In AlgoSlidingWindow, ophits are found by looking where the waveform goes above baseline. When a peak (ophit) is found, the ophit is not eneded immediately, but after a few samples (in the code are called “in\_post” samples). In case a new peak is found during an in\_post sample, the previous peak is not ended. This causes a weird behaviour. This is now fixed by ending the previous pulse, and starting a new one.
-   larsim PR 13
    -   resolve [\#24301](/redmine/issues/24301 "Bug: Erroneous calculation of Rectangle_SolidAngle() in OpFastScintillation. (Closed)")

Updated dependencies(#Updated-dependencies)
----------------------------------------------

Change List(#Change-List)
============================

larsoft v08\_50\_00(#larsoft-v08_50_00)
------------------------------------------

-   2020-04-14 Lynn Garren : larsoft v08\_50\_00 for larsoft v08\_50\_00
-   2020-04-14 Lynn Garren : product versions

lareventdisplay v08\_12\_11(#lareventdisplay-v08_12_11)
----------------------------------------------------------

-   2020-04-14 Lynn Garren : lareventdisplay v08\_12\_11 for larsoft v08\_50\_00

larexamples v08\_06\_11(#larexamples-v08_06_11)
--------------------------------------------------

-   2020-04-14 Lynn Garren : larexamples v08\_06\_11 for larsoft v08\_50\_00

larg4 v08\_13\_00(#larg4-v08_13_00)
--------------------------------------

-   2020-04-14 Lynn Garren : larg4 now depends on nurandom
-   2020-04-14 Lynn Garren : larg4 v08\_13\_00 for larsoft v08\_50\_00
-   2020-04-14 Lynn Garren : Merge branch ‘drivera-fnal-develop’ into release/v08\_50\_00
-   2020-03-24 David Rivera : Add check for invalid seed value
-   2020-03-24 David Rivera : Use the NuRandomService engine for additional control over the seed generation policy
-   2020-03-24 David Rivera : Cleanup

larpandora v08\_12\_03(#larpandora-v08_12_03)
------------------------------------------------

-   2020-04-14 Lynn Garren : larpandora v08\_12\_03 for larsoft v08\_50\_00

larrecodnn v08\_03\_00(#larrecodnn-v08_03_00)
------------------------------------------------

-   2020-04-14 Lynn Garren : larrecodnn v08\_03\_00 for larsoft v08\_50\_00
-   2020-04-13 Lynn Garren : Merge pull request [\#3](/redmine/issues/3 "Feature: Connect to Database with kerberos authentication (Rejected)") from yangtj207/develop
-   2020-04-12 Tingjun Yang : Change based on Tom’s suggestion.
-   2020-04-12 Tingjun Yang : Remove white spaces.
-   2020-04-12 Tingjun Yang : Merge branch ‘develop’ of github.com:yangtj207/larrecodnn into develop
-   2020-04-12 Tingjun Yang : Add producer module to save WaveformRoiFinder results in recob::Wire.
-   2020-03-18 Tingjun Yang : Remove white space

larwirecell v08\_12\_09(#larwirecell-v08_12_09)
--------------------------------------------------

larana v08\_17\_03(#larana-v08_17_03)
----------------------------------------

-   2020-04-14 Lynn Garren : larana v08\_17\_03 for larsoft v08\_50\_00
-   2020-04-13 Lynn Garren : Merge pull request [\#6](/redmine/issues/6 "Feature: Non-KCA Remediation (New)") from marcodeltutto/ophits\_work
-   2020-04-09 Marco Del Tutto : Removing trailing whitespaces.
-   2020-04-09 Marco Del Tutto : Merge branch ‘develop’ into ophits\_work
-   2020-04-09 Marco Del Tutto : In AlgoSlidingWindow, the peak is not ended in case it is in the in\_post state, and a new peak is found. This is now fixed by ending the current pulse, and starting a new one.

larreco v08\_31\_01(#larreco-v08_31_01)
------------------------------------------

-   2020-04-14 Lynn Garren : larreco v08\_31\_01 for larsoft v08\_50\_00

larsim v08\_22\_03(#larsim-v08_22_03)
----------------------------------------

-   2020-04-14 Lynn Garren : larsim v08\_22\_03 for larsoft v08\_50\_00
-   2020-04-13 Lynn Garren : Merge pull request \#13 from ikatza/develop
-   2020-04-09 Iker de Icaza Astiz : Running removeWhiteSpace.sh
-   2020-04-09 Iker de Icaza Astiz : Handle swapped orientation of rectangles in Rectangle\_SolidAngle(), related to Bug [\#24301](/redmine/issues/24301 "Bug: Erroneous calculation of Rectangle_SolidAngle() in OpFastScintillation. (Closed)")

larevt v08\_11\_02(#larevt-v08_11_02)
----------------------------------------

lardata v08\_15\_02(#lardata-v08_15_02)
------------------------------------------

larcore v08\_11\_03(#larcore-v08_11_03)
------------------------------------------

larpandoracontent v03\_15\_16(#larpandoracontent-v03_15_16)
--------------------------------------------------------------

larsoftobj v08\_27\_05(#larsoftobj-v08_27_05)
------------------------------------------------

lardataobj v08\_10\_06(#lardataobj-v08_10_06)
------------------------------------------------

lardataalg v08\_13\_08(#lardataalg-v08_13_08)
------------------------------------------------

larcorealg v08\_21\_03(#larcorealg-v08_21_03)
------------------------------------------------

larcoreobj v08\_10\_05(#larcoreobj-v08_10_05)
------------------------------------------------

larbatch v01\_52\_02(#larbatch-v01_52_02)
--------------------------------------------

larutils v1\_25\_09(#larutils-v1_25_09)
------------------------------------------
