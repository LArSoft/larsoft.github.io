LArSoft v09_40_00 Release Notes
======================================================================

[list of LArSoft releases](LArSoft_release_list)
Download instructions for [larsoft v09_40_00](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v09_40_00/larsoft-v09_40_00.html)
Download instructions for [just larsoftobj v09_15_00](http://scisoft.fnal.gov/scisoft/bundles/larsoftobj/v09_15_00/larsoftobj-v09_15_00.html)

Purpose
--------------------

-   changes in develop
-   approved PRs

New features
------------------------------

-   new package larvecutils in the larsoftobj suite
    -   see the [talk](https://indico.fnal.gov/event/52095/contributions/229461/attachments/149801/192983/larvecutils-LCM-2021-11-30.pdf) by Giuseppe Cerati
-   lardata PR 21
    -   This PR removes MarqFitAlg and updates the lardata package after the creation of the larvecutils package where MarqFitAlg is now located.
-   larreco PR 37
    -   This PR updates the larreco package after migration of MarqFitAlg to the newly created larvecutils package.
-   larsim PR 84
    -   Semi-analytical light simulation refactoring
    -   This PR restructures PDFastSimPAR to factor out the semi-analytical model number of photons and propagation times calculations into two new classes, SemiAnalyticalModel.h/cpp and PropagationTimeModel.h/cpp. This allows these models to be accessed from other modules/algorithms by creating separate instances of these classes, rather than only being able to access them through the PDFastSimPAR producer. For the propagation time model, this allows it to be used in conjunction with optical libraries in PDFastSimPVS as was the case in the legacy LArG4 (required for the hybrid model in SBND, resolving SBNSoftware/sbndcode\#219, and will be required by ICARUS once they transition to the refactored LArG4). For the number of photons model, this allows it to be used during flash matching (needed to resolve SBNSoftware/sbndcode\#163). This hopefully should also make the code more easily maintainable by making PDFastSimPAR less monolithic.
    -   Changes:
        -   Moved semi-analytical model (number of photons) functions to new class, SemiAnalyticalModel.h/cpp, and removed corresponding code from PDFastSimPAR. Altered to return visibilities analogous to the photon library rather than the number of photons to integrate more easily with the fast/slow photon split introduced for Xenon-doped simulations.
        -   Moved propagation time functions to new class, PropagationTimeModel.h/cpp, and removed corresponding code from PDFastSimPAR.
        -   Implemented propagation time model calculations into PDFastSimPVS (using the PropagationTimeModel class), to allow use when predicting number of photons using a library restoring the legacy LArG4 functionality.
        -   Restructured PDFastSimPVS to reduce code repetition and fix a bug that prevented reflected/visible photons from being saved if no direct/VUV photons are detected. The structure now matches that in PDFastSimPAR.
        -   Minor optimisations and cleanup, resolving excessive vector construction/destruction that was unintentionally introduced in the recent updates to the semi-analytical model for DUNE vertical drift. This speeds up the reflected/visible light number of photons calculations significantly. I also ran some simple profiling and did not spot any other obvious issues.
    -   The changes are not expected to alter the light seen in any of the detectors using these models, other than the minor changes mentioned above the functions are unchanged from the PDFastSimPAR implementations. I have tested this in SBND, DUNE-HD and DUNE-VD and they appear to be working as expected.

Bug fixes
------------------------

Updated dependencies
----------------------------------------------

-   mrb v5_19_07

Change List
============================

larsoft v09_40_00
------------------------------------------

-   2021-12-15 Lynn Garren : cetmodules v2_29_05 for cetbuildtools v8_18_04
-   2021-12-15 Lynn Garren : larsoft v09_40_00 for larsoft v09_40_00
-   2021-12-15 Lynn Garren : larsoft v09_40_00 for larsoft v09_40_00
-   2021-12-15 Lynn Garren : product versions
-   2021-12-15 Lynn Garren : add larvecutils

lareventdisplay v09_03_02
----------------------------------------------------------

-   2021-12-15 Lynn Garren : lareventdisplay v09_03_02 for larsoft v09_40_00
-   2021-12-15 Lynn Garren : lareventdisplay v09_03_02 for larsoft v09_40_00

larexamples v09_03_02
--------------------------------------------------

-   2021-12-15 Lynn Garren : larexamples v09_03_02 for larsoft v09_40_00
-   2021-12-15 Lynn Garren : larexamples v09_03_02 for larsoft v09_40_00

larpandora v09_11_02
------------------------------------------------

-   2021-12-15 Lynn Garren : larpandora v09_11_02 for larsoft v09_40_00
-   2021-12-15 Lynn Garren : larpandora v09_11_02 for larsoft v09_40_00

larsimrad v09_04_02
----------------------------------------------

-   2021-12-15 Lynn Garren : larsimrad v09_04_02 for larsoft v09_40_00
-   2021-12-15 Lynn Garren : larsimrad v09_04_02 for larsoft v09_40_00

larrecodnn v09_10_02
------------------------------------------------

-   2021-12-15 Lynn Garren : larrecodnn v09_10_02 for larsoft v09_40_00
-   2021-12-15 Lynn Garren : larrecodnn v09_10_02 for larsoft v09_40_00

larwirecell v09_05_01
--------------------------------------------------

-   2021-12-15 Lynn Garren : larwirecell v09_05_01 for larsoft v09_40_00
-   2021-12-15 Lynn Garren : larwirecell v09_05_01 for larsoft v09_40_00

larana v09_04_02
----------------------------------------

-   2021-12-15 Lynn Garren : larana v09_04_02 for larsoft v09_40_00
-   2021-12-15 Lynn Garren : larana v09_04_02 for larsoft v09_40_00

larreco v09_08_02
------------------------------------------

-   2021-12-15 Lynn Garren : larreco v09_08_02 for larsoft v09_40_00
-   2021-12-15 Lynn Garren : larreco v09_08_02 for larsoft v09_40_00
-   2021-12-15 Lynn Garren : Merge branch ‘larvecutils-PR’ into release/v09_40_00
-   2021-11-05 Giuseppe Cerati : working version with v09_35_00

larsim v09_21_00
----------------------------------------

-   2021-12-15 Lynn Garren : larsim v09_21_00 for larsoft v09_40_00
-   2021-12-15 Lynn Garren : larsim v09_21_00 for larsoft v09_40_00
-   2021-12-15 Lynn Garren : Merge branch ‘feature/pgreen_semianalyticmodel_refactor’ into release/v09_40_00
-   2021-12-08 Patrick Green : cleaning up whitespace
-   2021-12-01 Patrick Green : Fixed config issue for DUNE-VD + general cleanup and optimization
-   2021-11-29 Patrick Green : Removing commented out code
-   2021-11-29 Patrick Green : Implemented photon propagation time simulation in PDFastSimPVS using PropagationTimeModel
-   2021-11-29 Patrick Green : Removed now obsolete code from PDFastSimPAR
-   2021-11-29 Patrick Green : Implemented PropagationTimeModel class
-   2021-11-26 Patrick Green : Implemented SemiAnalyticalModel class

larg4 v09_07_01
--------------------------------------

-   2021-12-15 Lynn Garren : larg4 v09_07_01 for larsoft v09_40_00
-   2021-12-15 Lynn Garren : larg4 v09_07_01 for larsoft v09_40_00

larevt v09_04_01
----------------------------------------

-   2021-12-15 Lynn Garren : larevt v09_04_01 for larsoft v09_40_00
-   2021-12-15 Lynn Garren : larevt v09_04_01 for larsoft v09_40_00

lardata v09_06_00
------------------------------------------

-   2021-12-15 Lynn Garren : really remove lardataobj
-   2021-12-15 Lynn Garren : add larvecutils remove redundant lardataobj, which is a dependency of lardataalg
-   2021-12-15 Lynn Garren : lardata v09_06_00 for larsoft v09_40_00
-   2021-12-14 Giuseppe Cerati : remove MarqFitAlg (moved to larvecutils)
-   2021-12-14 Giuseppe Cerati : MarqFitAlg moved to larvecutils

larcore v09_04_00
------------------------------------------

larpandoracontent v03_26_02
--------------------------------------------------------------

larsoftobj v09_15_00
------------------------------------------------

-   2021-12-15 Lynn Garren : cetmodules v2_29_05 for cetbuildtools v8_18_04
-   2021-12-15 Lynn Garren : larsoftobj v09_15_00 for larsoft v09_40_00
-   2021-12-15 Lynn Garren : larsoftobj v09_15_00 for larsoft v09_40_00
-   2021-12-15 Lynn Garren : product versions
-   2021-12-15 Lynn Garren : add larvecutils

larvecutils v09_00_00
--------------------------------------------------

lardataobj v09_04_00
------------------------------------------------

lardataalg v09_09_00
------------------------------------------------

larcorealg v09_05_00
------------------------------------------------

larcoreobj v09_04_00
------------------------------------------------

webevd v09_08_01
----------------------------------------

-   2021-12-15 Lynn Garren : webevd v09_08_01 for larsoft v09_40_00
-   2021-12-15 Lynn Garren : webevd v09_08_01 for larsoft v09_40_00

larbatch v01_56_02
--------------------------------------------

larutils v1_28_02
------------------------------------------
