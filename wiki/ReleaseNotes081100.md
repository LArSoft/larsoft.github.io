LArSoft v08\_11\_00 Release Notes
======================================================================

-   **Table of contents**
-   [LArSoft v08\_11\_00 Release Notes](#LArSoft-v08_11_00-Release-Notes)
    -   [Purpose](#Purpose)
    -   [New features](#New-features)
    -   [Bug fixes](#Bug-fixes)
    -   [Updated dependencies](#Updated-dependencies)
-   [Change List](#Change-List)
    -   [larsoft v08\_11\_00](#larsoft-v08_11_00)
    -   [lareventdisplay v08\_03\_07](#lareventdisplay-v08_03_07)
    -   [larexamples v08\_01\_07](#larexamples-v08_01_07)
    -   [larg4 v08\_01\_07](#larg4-v08_01_07)
    -   [larpandora v08\_05\_00](#larpandora-v08_05_00)
    -   [larwirecell v08\_03\_00](#larwirecell-v08_03_00)
    -   [larana v08\_02\_04](#larana-v08_02_04)
    -   [larreco v08\_09\_00](#larreco-v08_09_00)
    -   [larsim v08\_03\_04](#larsim-v08_03_04)
    -   [larevt v08\_02\_03](#larevt-v08_02_03)
    -   [lardata v08\_03\_04](#lardata-v08_03_04)
    -   [larcore v08\_02\_01](#larcore-v08_02_01)
    -   [larpandoracontent v03\_14\_05](#larpandoracontent-v03_14_05)
    -   [larsoftobj v08\_07\_01](#larsoftobj-v08_07_01)
    -   [lardataobj v08\_02\_02](#lardataobj-v08_02_02)
    -   [lardataalg v08\_04\_01](#lardataalg-v08_04_01)
    -   [larcorealg v08\_04\_01](#larcorealg-v08_04_01)
    -   [larcoreobj v08\_02\_02](#larcoreobj-v08_02_02)
    -   [larbatch v01\_48\_00](#larbatch-v01_48_00)
    -   [larutils v1\_23\_12](#larutils-v1_23_12)

[list of LArSoft releases](LArSoft_release_list)\
Download instructions for [larsoft v08\_11\_00](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v08_11_00/larsoft-v08_11_00.html)\
Download instructions for [just larsoftobj v08\_07\_01](http://scisoft.fnal.gov/scisoft/bundles/larsoftobj/v08_07_01/larsoftobj-v08_07_01.html)

Purpose
--------------------

-   changes in develop
-   approved feature branches

New features
------------------------------

-   larpandora feature/sgreen\_DualPhaseTrackCreation
    -   These changes allows the Pandora track creation module to produce tracks for the dual phase use case. Previously, tracks could not be created as the module expected a three view scenario, which this change has now addressed.
    -   I have performed some extensive testing of this feature branch for the current Pandora use cases (MicroBooNE, ICARUS, SBND, DUNEFD-SP, ProtoDUNE-SP) and, as expected, there were no changes to the output data products.
-   larwirecell feature/bviren\_nticks
    -   FYI, it adds a small feature to the “raw” and “cooked” frame sources to\
        let the user choose between configured waveform length (which was the\
        only, previous behavior) and letting the input waveforms’ native length\
        stand (configured with nticks=0). This will simplify processing\
        protoDUNE’s mix of 6000 and 15000 ticks data.

Bug fixes
------------------------

Updated dependencies
----------------------------------------------

-   ifdhc v2\_4\_1
-   nutools v2\_26\_10

Change List
============================

larsoft v08\_11\_00
------------------------------------------

-   2019-02-26 Lynn Garren : larsoft v08\_11\_00 for larsoft v08\_11\_00
-   2019-02-26 Lynn Garren : product versions

lareventdisplay v08\_03\_07
----------------------------------------------------------

-   2019-02-26 Lynn Garren : lareventdisplay v08\_03\_07 for larsoft v08\_11\_00

larexamples v08\_01\_07
--------------------------------------------------

-   2019-02-26 Lynn Garren : larexamples v08\_01\_07 for larsoft v08\_11\_00

larg4 v08\_01\_07
--------------------------------------

-   2019-02-26 Lynn Garren : larg4 v08\_01\_07 for larsoft v08\_11\_00

larpandora v08\_05\_00
------------------------------------------------

-   2019-02-26 Lynn Garren : larpandora v08\_05\_00 for larsoft v08\_11\_00
-   2019-02-26 Lynn Garren : Merge branch ‘feature/sgreen\_DualPhaseTrackCreation’ into release/v08\_11\_00
-   2019-02-22 Steven Green : Modifications to LArPandoraTrackCreation module to allow track building in dual phase scenario.

larwirecell v08\_03\_00
--------------------------------------------------

-   2019-02-26 Lynn Garren : larwirecell v08\_03\_00 for larsoft v08\_11\_00
-   2019-02-25 Lynn Garren : Merge branch ‘feature/bviren\_nticks’ into release/v08\_11\_00
-   2019-02-20 Brett Viren : Honor user config ‘nticks=0’ to let input size pass through.

larana v08\_02\_04
----------------------------------------

-   2019-02-26 Lynn Garren : larana v08\_02\_04 for larsoft v08\_11\_00

larreco v08\_09\_00
------------------------------------------

-   2019-02-26 Lynn Garren : larreco v08\_09\_00 for larsoft v08\_11\_00
-   2019-02-26 Usher, Tracy L : Added some optional histogram output to the hit3d builder, add fhicl to turn on/off
-   2019-02-26 Usher, Tracy L : Add the calculation of the charge in the region of overlap of the hits comprising a triplet and “hide” this in the second element of the SpacePoint’s hit position error matrix (bad me…)

larsim v08\_03\_04
----------------------------------------

-   2019-02-26 Lynn Garren : larsim v08\_03\_04 for larsoft v08\_11\_00

larevt v08\_02\_03
----------------------------------------

-   2019-02-26 Lynn Garren : larevt v08\_02\_03 for larsoft v08\_11\_00

lardata v08\_03\_04
------------------------------------------

-   2019-02-26 Lynn Garren : lardata v08\_03\_04 for larsoft v08\_11\_00

larcore v08\_02\_01
------------------------------------------

larpandoracontent v03\_14\_05
--------------------------------------------------------------

larsoftobj v08\_07\_01
------------------------------------------------

lardataobj v08\_02\_02
------------------------------------------------

lardataalg v08\_04\_01
------------------------------------------------

larcorealg v08\_04\_01
------------------------------------------------

larcoreobj v08\_02\_02
------------------------------------------------

larbatch v01\_48\_00
--------------------------------------------

larutils v1\_23\_12
------------------------------------------
