LArSoft v06\_26\_01\_17 Release Notes
=============================================================================

-   **Table of contents**
-   [LArSoft v06\_26\_01\_17 Release Notes](#LArSoft-v06_26_01_17-Release-Notes)
    -   [Purpose](#Purpose)
    -   [New features](#New-features)
    -   [Bug fixes](#Bug-fixes)
    -   [Updated dependencies](#Updated-dependencies)
-   [Change List](#Change-List)
    -   [larsoft v06\_26\_01\_17](#larsoft-v06_26_01_17)
    -   [lareventdisplay v06\_02\_14\_15](#lareventdisplay-v06_02_14_15)
    -   [larexamples v06\_01\_15\_11](#larexamples-v06_01_15_11)
    -   [larpandora v06\_08\_00\_16](#larpandora-v06_08_00_16)
    -   [larwirecell v06\_00\_13\_11](#larwirecell-v06_00_13_11)
    -   [larana v06\_03\_18\_16](#larana-v06_03_18_16)
    -   [larreco v06\_20\_00\_15](#larreco-v06_20_00_15)
    -   [larsim v06\_13\_01\_11](#larsim-v06_13_01_11)
    -   [larevt v06\_07\_09\_09](#larevt-v06_07_09_09)
    -   [lardata v06\_14\_04\_06](#lardata-v06_14_04_06)
    -   [larcore v06\_05\_03\_03](#larcore-v06_05_03_03)
    -   [larpandoracontent v03\_07\_02\_05](#larpandoracontent-v03_07_02_05)
    -   [larsoftobj v1\_11\_00\_06](#larsoftobj-v1_11_00_06)
    -   [lardataobj v1\_11\_00\_06](#lardataobj-v1_11_00_06)
    -   [larcoreobj v1\_06\_02\_03](#larcoreobj-v1_06_02_03)

[list of LArSoft releases](LArSoft_release_list)
Download instructions for [larsoft v06\_26\_01\_17](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v06_26_01_17/larsoft-v06_26_01_17.html)
Download instructions for [just larsoftobj v1\_11\_00\_06](http://scisoft.fnal.gov/scisoft/bundles/larsoftobj/v1_11_00_06/larsoftobj-v1_11_00_06.html)

Purpose
--------------------

-   MicroBooNE request [\#21511](/redmine/issues/21511 "Support: Request patch release larsoft v06_26_01_17 (Closed)")

New features
------------------------------

Bug fixes
------------------------

Updated dependencies
----------------------------------------------

Change List
============================

larsoft v06\_26\_01\_17
-------------------------------------------------

-   2018-12-17 Lynn Garren : larsoft v06\_26\_01\_17 for larsoft v06\_26\_01\_01\_branch
-   2018-12-17 Lynn Garren : product versions

lareventdisplay v06\_02\_14\_15
-----------------------------------------------------------------

larexamples v06\_01\_15\_11
---------------------------------------------------------

larpandora v06\_08\_00\_16
-------------------------------------------------------

-   2018-12-17 Lynn Garren : larpandora v06\_08\_00\_16 for larsoft v06\_26\_01\_01\_branch
-   2018-12-10 Herbert Greenlee : Merge remote-tracking branch ‘origin/feature/ddevitt\_BuildShowersAsTracks’ into v06\_26\_01\_01\_branch
-   2018-11-24 Adam : switching out repeated if statement for else statement
-   2018-11-21 Adam : fixing typo
-   2018-11-21 Adam : modifying cout statement to check trackVector size rather than particlesToTracks size
-   2018-11-16 Adam : removing continue statement which was causing showers to not build
-   2018-11-10 Adam : Seeds are now built event if buildTracks = false, and re-implementation of a debug statement for when the number of trajectory points is insufficient
-   2018-11-10 Adam : slidingFitHalfWindow size taken from fhicl, wire pitch taken from geometry, updating print statements
-   2018-11-09 Adam : additional print statements for clarity of pandora configuration
-   2018-11-09 Adam : reverting to original whitespace to enable diffs
-   2018-10-03 Adam : remove additional print statements
-   2018-09-17 Adam : adding check to make sure a pfparticle is a track or a shower before reconstructing as a track, also cleaning up print statements
-   2018-03-22 Daniel Devitt : Latest changes
-   2018-03-12 Daniel Devitt : Small fix
-   2018-03-08 Daniel Devitt : Adding ability to build showers as tracks

larwirecell v06\_00\_13\_11
---------------------------------------------------------

larana v06\_03\_18\_16
-----------------------------------------------

larreco v06\_20\_00\_15
-------------------------------------------------

larsim v06\_13\_01\_11
-----------------------------------------------

larevt v06\_07\_09\_09
-----------------------------------------------

lardata v06\_14\_04\_06
-------------------------------------------------

larcore v06\_05\_03\_03
-------------------------------------------------

larpandoracontent v03\_07\_02\_05
---------------------------------------------------------------------

larsoftobj v1\_11\_00\_06
-----------------------------------------------------

lardataobj v1\_11\_00\_06
-----------------------------------------------------

larcoreobj v1\_06\_02\_03
-----------------------------------------------------
