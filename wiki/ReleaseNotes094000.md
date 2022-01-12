LArSoft v09\_40\_00 Release Notes
======================================================================

-   **Table of contents**
-   [LArSoft v09\_40\_00 Release Notes](#LArSoft-v09_40_00-Release-Notes)
    -   [Purpose](#Purpose)
    -   [New features](#New-features)
    -   [Bug fixes](#Bug-fixes)
    -   [Updated dependencies](#Updated-dependencies)
-   [Change List](#Change-List)
    -   [larsoft v09\_40\_00](#larsoft-v09_40_00)
    -   [lareventdisplay v09\_03\_02](#lareventdisplay-v09_03_02)
    -   [larexamples v09\_03\_02](#larexamples-v09_03_02)
    -   [larpandora v09\_11\_02](#larpandora-v09_11_02)
    -   [larsimrad v09\_04\_02](#larsimrad-v09_04_02)
    -   [larrecodnn v09\_10\_02](#larrecodnn-v09_10_02)
    -   [larwirecell v09\_05\_01](#larwirecell-v09_05_01)
    -   [larana v09\_04\_02](#larana-v09_04_02)
    -   [larreco v09\_08\_02](#larreco-v09_08_02)
    -   [larsim v09\_21\_00](#larsim-v09_21_00)
    -   [larg4 v09\_07\_01](#larg4-v09_07_01)
    -   [larevt v09\_04\_01](#larevt-v09_04_01)
    -   [lardata v09\_06\_00](#lardata-v09_06_00)
    -   [larcore v09\_04\_00](#larcore-v09_04_00)
    -   [larpandoracontent v03\_26\_02](#larpandoracontent-v03_26_02)
    -   [larsoftobj v09\_15\_00](#larsoftobj-v09_15_00)
    -   [larvecutils v09\_00\_00](#larvecutils-v09_00_00)
    -   [lardataobj v09\_04\_00](#lardataobj-v09_04_00)
    -   [lardataalg v09\_09\_00](#lardataalg-v09_09_00)
    -   [larcorealg v09\_05\_00](#larcorealg-v09_05_00)
    -   [larcoreobj v09\_04\_00](#larcoreobj-v09_04_00)
    -   [webevd v09\_08\_01](#webevd-v09_08_01)
    -   [larbatch v01\_56\_02](#larbatch-v01_56_02)
    -   [larutils v1\_28\_02](#larutils-v1_28_02)

[list of LArSoft releases](LArSoft_release_list)
Download instructions for [larsoft v09\_40\_00](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v09_40_00/larsoft-v09_40_00.html)
Download instructions for [just larsoftobj v09\_15\_00](http://scisoft.fnal.gov/scisoft/bundles/larsoftobj/v09_15_00/larsoftobj-v09_15_00.html)

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

-   mrb v5\_19\_07

Change List
============================

larsoft v09\_40\_00
------------------------------------------

-   2021-12-15 Lynn Garren : cetmodules v2\_29\_05 for cetbuildtools v8\_18\_04
-   2021-12-15 Lynn Garren : larsoft v09\_40\_00 for larsoft v09\_40\_00
-   2021-12-15 Lynn Garren : larsoft v09\_40\_00 for larsoft v09\_40\_00
-   2021-12-15 Lynn Garren : product versions
-   2021-12-15 Lynn Garren : add larvecutils

lareventdisplay v09\_03\_02
----------------------------------------------------------

-   2021-12-15 Lynn Garren : lareventdisplay v09\_03\_02 for larsoft v09\_40\_00
-   2021-12-15 Lynn Garren : lareventdisplay v09\_03\_02 for larsoft v09\_40\_00

larexamples v09\_03\_02
--------------------------------------------------

-   2021-12-15 Lynn Garren : larexamples v09\_03\_02 for larsoft v09\_40\_00
-   2021-12-15 Lynn Garren : larexamples v09\_03\_02 for larsoft v09\_40\_00

larpandora v09\_11\_02
------------------------------------------------

-   2021-12-15 Lynn Garren : larpandora v09\_11\_02 for larsoft v09\_40\_00
-   2021-12-15 Lynn Garren : larpandora v09\_11\_02 for larsoft v09\_40\_00

larsimrad v09\_04\_02
----------------------------------------------

-   2021-12-15 Lynn Garren : larsimrad v09\_04\_02 for larsoft v09\_40\_00
-   2021-12-15 Lynn Garren : larsimrad v09\_04\_02 for larsoft v09\_40\_00

larrecodnn v09\_10\_02
------------------------------------------------

-   2021-12-15 Lynn Garren : larrecodnn v09\_10\_02 for larsoft v09\_40\_00
-   2021-12-15 Lynn Garren : larrecodnn v09\_10\_02 for larsoft v09\_40\_00

larwirecell v09\_05\_01
--------------------------------------------------

-   2021-12-15 Lynn Garren : larwirecell v09\_05\_01 for larsoft v09\_40\_00
-   2021-12-15 Lynn Garren : larwirecell v09\_05\_01 for larsoft v09\_40\_00

larana v09\_04\_02
----------------------------------------

-   2021-12-15 Lynn Garren : larana v09\_04\_02 for larsoft v09\_40\_00
-   2021-12-15 Lynn Garren : larana v09\_04\_02 for larsoft v09\_40\_00

larreco v09\_08\_02
------------------------------------------

-   2021-12-15 Lynn Garren : larreco v09\_08\_02 for larsoft v09\_40\_00
-   2021-12-15 Lynn Garren : larreco v09\_08\_02 for larsoft v09\_40\_00
-   2021-12-15 Lynn Garren : Merge branch ‘larvecutils-PR’ into release/v09\_40\_00
-   2021-11-05 Giuseppe Cerati : working version with v09\_35\_00

larsim v09\_21\_00
----------------------------------------

-   2021-12-15 Lynn Garren : larsim v09\_21\_00 for larsoft v09\_40\_00
-   2021-12-15 Lynn Garren : larsim v09\_21\_00 for larsoft v09\_40\_00
-   2021-12-15 Lynn Garren : Merge branch ‘feature/pgreen\_semianalyticmodel\_refactor’ into release/v09\_40\_00
-   2021-12-08 Patrick Green : cleaning up whitespace
-   2021-12-01 Patrick Green : Fixed config issue for DUNE-VD + general cleanup and optimization
-   2021-11-29 Patrick Green : Removing commented out code
-   2021-11-29 Patrick Green : Implemented photon propagation time simulation in PDFastSimPVS using PropagationTimeModel
-   2021-11-29 Patrick Green : Removed now obsolete code from PDFastSimPAR
-   2021-11-29 Patrick Green : Implemented PropagationTimeModel class
-   2021-11-26 Patrick Green : Implemented SemiAnalyticalModel class

larg4 v09\_07\_01
--------------------------------------

-   2021-12-15 Lynn Garren : larg4 v09\_07\_01 for larsoft v09\_40\_00
-   2021-12-15 Lynn Garren : larg4 v09\_07\_01 for larsoft v09\_40\_00

larevt v09\_04\_01
----------------------------------------

-   2021-12-15 Lynn Garren : larevt v09\_04\_01 for larsoft v09\_40\_00
-   2021-12-15 Lynn Garren : larevt v09\_04\_01 for larsoft v09\_40\_00

lardata v09\_06\_00
------------------------------------------

-   2021-12-15 Lynn Garren : really remove lardataobj
-   2021-12-15 Lynn Garren : add larvecutils remove redundant lardataobj, which is a dependency of lardataalg
-   2021-12-15 Lynn Garren : lardata v09\_06\_00 for larsoft v09\_40\_00
-   2021-12-14 Giuseppe Cerati : remove MarqFitAlg (moved to larvecutils)
-   2021-12-14 Giuseppe Cerati : MarqFitAlg moved to larvecutils

larcore v09\_04\_00
------------------------------------------

larpandoracontent v03\_26\_02
--------------------------------------------------------------

larsoftobj v09\_15\_00
------------------------------------------------

-   2021-12-15 Lynn Garren : cetmodules v2\_29\_05 for cetbuildtools v8\_18\_04
-   2021-12-15 Lynn Garren : larsoftobj v09\_15\_00 for larsoft v09\_40\_00
-   2021-12-15 Lynn Garren : larsoftobj v09\_15\_00 for larsoft v09\_40\_00
-   2021-12-15 Lynn Garren : product versions
-   2021-12-15 Lynn Garren : add larvecutils

larvecutils v09\_00\_00
--------------------------------------------------

lardataobj v09\_04\_00
------------------------------------------------

lardataalg v09\_09\_00
------------------------------------------------

larcorealg v09\_05\_00
------------------------------------------------

larcoreobj v09\_04\_00
------------------------------------------------

webevd v09\_08\_01
----------------------------------------

-   2021-12-15 Lynn Garren : webevd v09\_08\_01 for larsoft v09\_40\_00
-   2021-12-15 Lynn Garren : webevd v09\_08\_01 for larsoft v09\_40\_00

larbatch v01\_56\_02
--------------------------------------------

larutils v1\_28\_02
------------------------------------------
