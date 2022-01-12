LArSoft v06_26_01_02 Release Notes
=============================================================================

-   **Table of contents**
-   [LArSoft v06_26_01_02 Release Notes](#LArSoft-v06_26_01_02-Release-Notes)
    -   [Purpose](#Purpose)
    -   [New features](#New-features)
    -   [Bug fixes](#Bug-fixes)
    -   [Updated dependencies](#Updated-dependencies)
-   [Change List](#Change-List)
    -   [larsoft v06_26_01_02](#larsoft-v06_26_01_02)
    -   [lareventdisplay v06_02_14_02](#lareventdisplay-v06_02_14_02)
    -   [larexamples v06_01_15_02](#larexamples-v06_01_15_02)
    -   [larpandora v06_08_00_02](#larpandora-v06_08_00_02)
    -   [larwirecell v06_00_13_02](#larwirecell-v06_00_13_02)
    -   [larana v06_03_18_02](#larana-v06_03_18_02)
    -   [larreco v06_20_00_02](#larreco-v06_20_00_02)
    -   [larsim v06_13_01_02](#larsim-v06_13_01_02)
    -   [larevt v06_07_09_02](#larevt-v06_07_09_02)
    -   [lardata v06_14_04_01](#lardata-v06_14_04_01)
    -   [larcore v06_05_03](#larcore-v06_05_03)
    -   [larpandoracontent v03_02_00](#larpandoracontent-v03_02_00)
    -   [larsoftobj v1_11_00_01](#larsoftobj-v1_11_00_01)
    -   [lardataobj v1_11_00_01](#lardataobj-v1_11_00_01)
    -   [larcoreobj v1_06_02](#larcoreobj-v1_06_02)

[list of LArSoft releases](LArSoft_release_list)
Download instructions for [larsoft v06_26_01_02](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v06_26_01_02/larsoft-v06_26_01_02.html)
Download instructions for [just larsoftobj v1_11_00_01](http://scisoft.fnal.gov/scisoft/bundles/larsoftobj/v1_11_00_01/larsoftobj-v1_11_00_01.html)

Purpose
--------------------

-   patch release requested by MicroBooNE

New features
------------------------------

Larevt includes a technical update to allow calibration services to search
for certain data files via \$FW_SEARCH_PATH, instead of only via
absolute/relative path.

Bug fixes
------------------------

Larsim includes the following bug fixes.
1. Fix corsika space/time correlation bug.
2. Fix space charge diffusion bug (issue 15131).
3. Fix optical simulation bugs.

Updated dependencies
----------------------------------------------

Change List
============================

larsoft v06_26_01_02
-------------------------------------------------

-   2017-05-04 Lynn Garren : larsoft v06_26_01_02
-   2017-05-04 Lynn Garren : update product versions

lareventdisplay v06_02_14_02
-----------------------------------------------------------------

-   2017-05-04 Lynn Garren : lareventdisplay v06_02_14_02

larexamples v06_01_15_02
---------------------------------------------------------

-   2017-05-04 Lynn Garren : larexamples v06_01_15_02

larpandora v06_08_00_02
-------------------------------------------------------

-   2017-05-04 Lynn Garren : larpandora v06_08_00_02

larwirecell v06_00_13_02
---------------------------------------------------------

-   2017-05-04 Lynn Garren : larwirecell v06_00_13_02

larana v06_03_18_02
-----------------------------------------------

-   2017-05-04 Lynn Garren : larana v06_03_18_02

larreco v06_20_00_02
-------------------------------------------------

-   2017-05-04 Lynn Garren : larreco v06_20_00_02

larsim v06_13_01_02
-----------------------------------------------

-   2017-05-04 Lynn Garren : larsim v06_13_01_02
-   2017-05-03 Herbert Greenlee : Merge remote-tracking branch ‘origin/v06_13_01_optical_patch’ into v06_26_01_01_branch
-   2017-05-02 drinkingkazu : Forgotten fix! integer effect was still there. this really fixes it, and I left commented-out lines for me to run analysis using csv file.
-   2017-05-01 Herbert Greenlee : Merge remote-tracking branch ‘origin/v06_13_01_optical_patch’ into v06_26_01_01_branch
-   2017-04-26 Matthew Bass : Fixed timing bias due to correlations between spatial and time coordinates by adding independent randomness in the spatial coordinates.
-   2017-04-26 drinkingkazu : 0) eliminate bug if statement that checks always-nullptr-is-nullptr-or-not, 1) ISCalculation.h to return ‘mean’ ionization electron and photon counts, and 2) avoid integer casting in OpFastScintillation.cxx where unnecessarily applied and caused both underestimation of photons and artificial increase in photon count resolution
-   2017-02-23 Gianluca Petrillo : Prevent space charge distortion from making charge cross the wire planes.

larevt v06_07_09_02
-----------------------------------------------

-   2017-05-04 Lynn Garren : larevt v06_07_09_02
-   2017-04-25 Brandon Eberly : Use FW_SEARCH_PATH to find calibration files when using the UseFile option

lardata v06_14_04_01
-------------------------------------------------

larcore v06_05_03
------------------------------------------

larpandoracontent v03_02_00
--------------------------------------------------------------

larsoftobj v1_11_00_01
-----------------------------------------------------

lardataobj v1_11_00_01
-----------------------------------------------------

larcoreobj v1_06_02
----------------------------------------------
