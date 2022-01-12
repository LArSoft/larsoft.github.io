LArSoft v08_05_00_06d Release Notes
===============================================================================

-   **Table of contents**
-   [LArSoft v08_05_00_06d Release Notes](#LArSoft-v08_05_00_06d-Release-Notes)
    -   [Purpose](#Purpose)
    -   [New features](#New-features)
    -   [Bug fixes](#Bug-fixes)
    -   [Updated dependencies](#Updated-dependencies)
-   [Change List](#Change-List)
    -   [larsoft v08_05_00_06d](#larsoft-v08_05_00_06d)
    -   [lareventdisplay v08_02_00_05d](#lareventdisplay-v08_02_00_05d)
    -   [larexamples v08_01_00_05d](#larexamples-v08_01_00_05d)
    -   [larg4 v08_01_00_05d](#larg4-v08_01_00_05d)
    -   [larpandora v08_03_00_05d](#larpandora-v08_03_00_05d)
    -   [larwirecell v08_02_00_06d](#larwirecell-v08_02_00_06d)
    -   [larana v08_01_00_05d](#larana-v08_01_00_05d)
    -   [larreco v08_04_00_05d](#larreco-v08_04_00_05d)
    -   [larsim v08_02_00_05d](#larsim-v08_02_00_05d)
    -   [larevt v08_01_00_05d](#larevt-v08_01_00_05d)
    -   [lardata v08_02_00_04c](#lardata-v08_02_00_04c)
    -   [larcore v08_01_00_02](#larcore-v08_01_00_02)
    -   [larsoftobj v08_03_00_02a](#larsoftobj-v08_03_00_02a)
    -   [lardataobj v08_01_00_02a](#lardataobj-v08_01_00_02a)
    -   [lardataalg v08_03_00_02a](#lardataalg-v08_03_00_02a)
    -   [larcorealg v08_01_00_02](#larcorealg-v08_01_00_02)
    -   [larcoreobj v08_01_00_02](#larcoreobj-v08_01_00_02)

[list of LArSoft releases](LArSoft_release_list)
Download instructions for [larsoft v08_05_00_06d](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v08_05_00_06d/larsoft-v08_05_00_06d.html)
Download instructions for [just larsoftobj v08_03_00_02a](http://scisoft.fnal.gov/scisoft/bundles/larsoftobj/v08_03_00_02a/larsoftobj-v08_03_00_02a.html)

Purpose
--------------------

-   requested patch release

New features
------------------------------

Bug fixes
------------------------

Updated dependencies
----------------------------------------------

Change List
============================

larsoft v08_05_00_06d
---------------------------------------------------

-   2020-06-30 Herbert Greenlee : Remove fftw from releaseDB/CMakeLists.txt.
-   2020-06-30 Herbert Greenlee : Remove fftw from build config.
-   2020-06-30 Herbert Greenlee : Update build config to add dependencies on fftw and ppfx.
-   2020-07-09 Herbert Greenlee : larsoft v08_05_00_06d for larsoft v08_05_00_06d
-   2020-07-09 Herbert Greenlee : larsoft v08_05_00_06d for larsoft v08_05_00_06d
-   2020-07-09 Herbert Greenlee : Update releaseDB/CMakeLists.txt for larsoft v08_05_00_06d.
-   2020-07-09 Herbert Greenlee : Update releaseDB/CMakeLists.txt for larsoft v08_05_00_06d.
-   2020-07-09 Herbert Greenlee : Update releaseDB/CMakeLists.txt for larsoft v08_05_00_06d.
-   2020-06-16 Herbert Greenlee : Update to nutools v2_27_08.
-   2020-06-30 Herbert Greenlee : Update nudist version to v2_27_08.
-   2020-06-30 Herbert Greenlee : Update nutools version to v2_27_08.

lareventdisplay v08_02_00_05d
-------------------------------------------------------------------

-   2020-07-09 Herbert Greenlee : lareventdisplay v08_02_00_05d for larsoft v08_05_00_06d

larexamples v08_01_00_05d
-----------------------------------------------------------

-   2020-07-09 Herbert Greenlee : larexamples v08_01_00_05d for larsoft v08_05_00_06d

larg4 v08_01_00_05d
-----------------------------------------------

-   2020-07-09 Herbert Greenlee : larg4 v08_01_00_05d for larsoft v08_05_00_06d

larpandora v08_03_00_05d
---------------------------------------------------------

-   2020-07-09 Herbert Greenlee : larpandora v08_03_00_05d for larsoft v08_05_00_06d

larwirecell v08_02_00_06d
-----------------------------------------------------------

-   2020-07-09 Herbert Greenlee : larwirecell v08_02_00_06d for larsoft v08_05_00_06d
-   2020-07-09 Herbert Greenlee : larwirecell v08_02_00_06d for larsoft v08_05_00_06d
-   2020-07-09 Herbert Greenlee : larwirecell v08_02_00_06d for larsoft v08_05_00_06d

larana v08_01_00_05d
-------------------------------------------------

-   2020-07-09 Herbert Greenlee : larana v08_01_00_05d for larsoft v08_05_00_06d

larreco v08_04_00_05d
---------------------------------------------------

-   2020-07-09 Herbert Greenlee : larreco v08_04_00_05d for larsoft v08_05_00_06d
-   2020-06-16 Herbert Greenlee : Update to nutools v2_27_08.

larsim v08_02_00_05d
-------------------------------------------------

-   2020-07-09 Herbert Greenlee : larsim v08_02_00_05d for larsoft v08_05_00_06d
-   2020-06-30 Herbert Greenlee : Fix c2 compilation error.
-   2020-06-29 Herbert Greenlee : Add ppfx ups product dependency. Other CMakeLists.txt updates.
-   2020-06-25 Katrina Miller : update flux calculation method to use 3D active volume
-   2020-06-17 Katrina Miller : change name to PPFXFluxReader
-   2020-06-17 Katrina Miller : update FluxReader to compile in MCC9
-   2020-06-08 Katrina Miller : create horn & target config fcl parameters
-   2020-06-01 Katrina Miller : add ppfx_ms weight
-   2020-06-01 Katrina Miller : add ppfx_uboone.fcl
-   2020-04-30 Katrina Miller : adjust EventWeight interface to fix more getEngine issues in art 3
-   2020-04-10 Katrina Miller : update PPFX calculators to fix getEngine syntax issues
-   2020-04-09 Katrina Miller : add PPFX calculators & fcl driver
-   2020-04-09 Katrina Miller : add FluxReader module
-   2020-04-07 Katrina Miller : add dk2nu

larevt v08_01_00_05d
-------------------------------------------------

-   2020-07-09 Herbert Greenlee : larevt v08_01_00_05d for larsoft v08_05_00_06d
-   2020-06-16 Herbert Greenlee : Update to nutools v2_27_08.

lardata v08_02_00_04c
---------------------------------------------------

-   2020-07-09 Herbert Greenlee : lardata v08_02_00_04c for larsoft v08_05_00_06d
-   2020-06-16 Herbert Greenlee : Update to nutools v2_27_08.

larcore v08_01_00_02
-------------------------------------------------

larsoftobj v08_03_00_02a
---------------------------------------------------------

lardataobj v08_01_00_02a
---------------------------------------------------------

lardataalg v08_03_00_02a
---------------------------------------------------------

larcorealg v08_01_00_02
-------------------------------------------------------

larcoreobj v08_01_00_02
-------------------------------------------------------
