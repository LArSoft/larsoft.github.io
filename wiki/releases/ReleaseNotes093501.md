LArSoft v09_35_01 Release Notes
======================================================================

[list of LArSoft releases](LArSoft_release_list)
Download instructions for [larsoft v09_35_01](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v09_35_01/larsoft-v09_35_01.html)
Download instructions for [just larsoftobj v09_11_00](http://scisoft.fnal.gov/scisoft/bundles/larsoftobj/v09_11_00/larsoftobj-v09_11_00.html)

Purpose
--------------------

-   changes in develop
-   approved PRs

New features
------------------------------

Bug fixes
------------------------

-   larrecodnn PR 24
    -   fixed bugs and added new version that also outputs clean signal waveform
-   larana PRs 13 and 14
    -   Bug fix in OpHitFinder
    -   This change concerns PedAlgoRmsSlider and improves pedestal estimation of optical waveforms in ICARUS detectors. CatchSaturation is a newly added configuration parameter and set to false by default, in which case the algorithm performs same as before this change. When it is set to true, the algorithm enables a newly added feature, which handles a waveform saturation when happened in the middle. Here, a “waveform saturation” is defined as the ADC value reaching its minimum (0) or maximum (4095 if 12-bit ADC). When saturation takes place, sometimes (often) ADC value stays at the same value (0 in case of ICARUS for negative polarity waveforms). PedAlgoRmsSlider uses RMS of consecutive (in temporal direction) ADC values to identify the presence of a pulse. A pedestal is estimated from ADCs whose RMS, computed with the neighborADCs, takes a small value (i.e. below set threshold). This approach is vulnerable to saturated regions of a waveform since RMS is 0 in those regions. For regions that carry large(r than set threshold) RMS values, pedestal is estimated by linearly extrapolating the regions before and after. If the bad region happens at the start or end of a waveform, the first/last good pedestal value is copied and used in those regions since an extrapolation requires two good pedestal regions sandwiching the bad region. The introduced change define a “saturation region” by two newly introduced configuration parameters, SatRangeMax and SatRangeMin, and avoid using any ADC values within that region as a “good pedestal” candidate.
    -   As pointed in the description, the default value of the new CatchSaturation parameter (false) is expected to reproduce the behaviour that existed before the changes, qualifying this as a non-breaking change.
    -   Guard all std::cout statements with a _verbose flag, which is false by default.

Updated dependencies
----------------------------------------------

Change List
============================

larsoft v09_35_01
------------------------------------------

-   2021-11-04 Lynn Garren : larsoft v09_35_01 for larsoft v09_35_01
-   2021-11-04 Lynn Garren : larsoft v09_35_01 for larsoft v09_35_01
-   2021-11-04 Lynn Garren : product versions

lareventdisplay v09_02_05
----------------------------------------------------------

larexamples v09_02_05
--------------------------------------------------

larpandora v09_09_05
------------------------------------------------

larsimrad v09_03_04
----------------------------------------------

larrecodnn v09_09_06
------------------------------------------------

-   2021-11-04 Lynn Garren : larrecodnn v09_09_06 for larsoft v09_35_01
-   2021-11-04 Lynn Garren : Merge pull request \#24 from mhlswang/develop
-   2021-11-03 Michael WAng : Implemented Kyle K’s recommendations
-   2021-11-02 Michael WAng : for rawwaveformdump modules, updated random number generator to CLHEP and removed a number of fhicl parameter defaults; removed extra semicolon from Span.h
-   2021-10-15 Michael WAng : forgot to include process variable to make raw waveform dump filenames unique in grid setting
-   2021-10-12 Michael WAng : replaced random_shuffle with shuffle
-   2021-10-11 Michael WAng : fixed bugs and added new version that also outputs clean signal waveform

larwirecell v09_04_03
--------------------------------------------------

larana v09_03_06
----------------------------------------

-   2021-11-04 Lynn Garren : larana v09_03_06 for larsoft v09_35_01
-   2021-11-04 Lynn Garren : Merge pull request \#14 from knoepfel/fix-kazus-pr
-   2021-11-01 Kyle Knoepfel : Add verbosity flag and fix indentation
-   2021-10-20 Drinking Kazu : Update PedAlgoRmsSlider.cxx
-   2021-09-04 drinkingkazu : bug fix in OpHitFinder that should be backward compatible

larreco v09_07_05
------------------------------------------

larsim v09_18_00
----------------------------------------

larg4 v09_06_00
--------------------------------------

larevt v09_03_03
----------------------------------------

lardata v09_04_00
------------------------------------------

larcore v09_03_01
------------------------------------------

larpandoracontent v03_26_01
--------------------------------------------------------------

larsoftobj v09_11_00
------------------------------------------------

lardataobj v09_03_03
------------------------------------------------

lardataalg v09_07_00
------------------------------------------------

larcorealg v09_03_01
------------------------------------------------

larcoreobj v09_03_01
------------------------------------------------

webevd v09_06_03
----------------------------------------

larbatch v01_56_02
--------------------------------------------

larutils v1_28_02
------------------------------------------
