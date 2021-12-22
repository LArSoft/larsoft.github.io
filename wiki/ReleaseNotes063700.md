LArSoft v06\_37\_00 Release Notes(#LArSoft-v06_37_00-Release-Notes)
======================================================================

-   **Table of contents**
-   [LArSoft v06\_37\_00 Release Notes](#LArSoft-v06_37_00-Release-Notes)
    -   [Purpose](#Purpose)
    -   [New features](#New-features)
    -   [Bug fixes](#Bug-fixes)
    -   [Updated dependencies](#Updated-dependencies)
-   [Change List](#Change-List)
    -   [larsoft v06\_37\_00](#larsoft-v06_37_00)
    -   [lareventdisplay v06\_05\_06](#lareventdisplay-v06_05_06)
    -   [larexamples v06\_03\_06](#larexamples-v06_03_06)
    -   [larpandora v06\_11\_00](#larpandora-v06_11_00)
    -   [larwirecell v06\_04\_06](#larwirecell-v06_04_06)
    -   [larana v06\_06\_01](#larana-v06_06_01)
    -   [larreco v06\_29\_00](#larreco-v06_29_00)
    -   [larsim v06\_22\_01](#larsim-v06_22_01)
    -   [larevt v06\_13\_04](#larevt-v06_13_04)
    -   [lardata v06\_21\_01](#lardata-v06_21_01)
    -   [larcore v06\_09\_02](#larcore-v06_09_02)
    -   [larpandoracontent v03\_06\_00](#larpandoracontent-v03_06_00)
    -   [larsoftobj v1\_20\_00](#larsoftobj-v1_20_00)
    -   [lardataobj v1\_16\_00](#lardataobj-v1_16_00)
    -   [larcoreobj v1\_13\_01](#larcoreobj-v1_13_01)
    -   [larbatch v01\_32\_00](#larbatch-v01_32_00)
    -   [larutils v1\_13\_00](#larutils-v1_13_00)

[list of LArSoft releases](LArSoft_release_list)\
Download instructions for [larsoft v06\_37\_00](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v06_37_00/larsoft-v06_37_00.html)\
Download instructions for [just larsoftobj v1\_20\_00](http://scisoft.fnal.gov/scisoft/bundles/larsoftobj/v1_20_00/larsoftobj-v1_20_00.html)

Purpose(#Purpose)
--------------------

-   changes to develop
-   larpandora improvement

New features(#New-features)
------------------------------

-   feature/blake\_multidrift
    -   larpandoracontent, larpandora and dunetpc
    -   New Pandora code for [multi-TPC reconstruction](https://indico.fnal.gov/getFile.py/access?contribId=3&resId=0&materialId=slides&confId=14583)

Bug fixes(#Bug-fixes)
------------------------

-   [\#16627](/redmine/issues/16627 "Bug: Cannot run g4 in argoneut simulation (Resolved)") (argoneutcode)
-   [\#16641](/redmine/issues/16641 "Bug: G4 produces multiple particles with the same TrackID when called from generators that may not pro... (Closed)")

Updated dependencies(#Updated-dependencies)
----------------------------------------------

Change List(#Change-List)
============================

larsoft v06\_37\_00(#larsoft-v06_37_00)
------------------------------------------

-   2017-05-23 Lynn Garren : larsoft v06\_37\_00 for larsoft v06\_37\_00
-   2017-05-23 Lynn Garren : update product versions

lareventdisplay v06\_05\_06(#lareventdisplay-v06_05_06)
----------------------------------------------------------

-   2017-05-23 Lynn Garren : lareventdisplay v06\_05\_06 for larsoft v06\_37\_00

larexamples v06\_03\_06(#larexamples-v06_03_06)
--------------------------------------------------

-   2017-05-23 Lynn Garren : larexamples v06\_03\_06 for larsoft v06\_37\_00

larpandora v06\_11\_00(#larpandora-v06_11_00)
------------------------------------------------

-   2017-05-23 Lynn Garren : larpandora v06\_11\_00 for larsoft v06\_37\_00
-   2017-05-23 Lynn Garren : Merge branch ‘feature/blake\_multiDrift’ into release/v06\_37\_00
-   2017-05-11 Andrew Blake : Rebase CMakeLists.txt files to reflect recent changes, add an extra stitching flag to PFParticleMonitoring analyser to assess performance of stitching code; fix unique identifiers in LArPandoraInput.
-   2017-03-30 Andrew Blake : Making the following minor change to the multi-drift branch: 1) Replace Pandora StatusCode exceptions with ART CET exceptions, 2) Fix crashes when shower reconstruction is switched off, 3) Disable T0 output if Pandora stitching hasn’t been run.
-   2017-03-26 Andrew Blake : Updating LArPandoraInterface package to handle multiple drift volumes (and associated changes to LArPandoraAnalysis). Minor edit to PCAShowerParticleBuildingAlgorithm to address a Pandora exception.

larwirecell v06\_04\_06(#larwirecell-v06_04_06)
--------------------------------------------------

-   2017-05-23 Lynn Garren : larwirecell v06\_04\_06 for larsoft v06\_37\_00

larana v06\_06\_01(#larana-v06_06_01)
----------------------------------------

-   2017-05-23 Lynn Garren : larana v06\_06\_01 for larsoft v06\_37\_00

larreco v06\_29\_00(#larreco-v06_29_00)
------------------------------------------

-   2017-05-23 Lynn Garren : larreco v06\_29\_00 for larsoft v06\_37\_00
-   2017-05-22 Herbert Greenlee : Add hit amplitude histograms.
-   2017-05-19 Tingjun Yang : Merge remote-tracking branch ‘origin/feature/reddypg\_ShowerEfficiency’ into develop
-   2017-05-19 Reddy Pratap Gandrajula : reconstructed photon shower start position vs true photon end position comparison
-   2017-05-15 Reddy Pratap Gandrajula : addition of shower direction and shower start postion calculations

larsim v06\_22\_01(#larsim-v06_22_01)
----------------------------------------

-   2017-05-23 Lynn Garren : larsim v06\_22\_01 for larsoft v06\_37\_00
-   2017-05-23 Jason Stock : Small change to ParticleListAction to assure that the fTrackIDOffset is only changed when in fact a track exists from a given generator. This addressed LArSoft issue [\#16641](/redmine/issues/16641 "Bug: G4 produces multiple particles with the same TrackID when called from generators that may not pro... (Closed)").

larevt v06\_13\_04(#larevt-v06_13_04)
----------------------------------------

-   2017-05-23 Lynn Garren : larevt v06\_13\_04 for larsoft v06\_37\_00

lardata v06\_21\_01(#lardata-v06_21_01)
------------------------------------------

-   2017-05-23 Lynn Garren : lardata v06\_21\_01 for larsoft v06\_37\_00
-   2017-05-23 Tingjun Yang : Set electron lifetime and temperature to the default values if query of database fails. Prevously existing values (sometimes from a previous run will be used.
-   2017-05-23 Tingjun Yang : Read in fcl parameter LoadExtraMatProperties in LArPropertiesServiceArgoNeuT\_service.cc.

larcore v06\_09\_02(#larcore-v06_09_02)
------------------------------------------

larpandoracontent v03\_06\_00(#larpandoracontent-v03_06_00)
--------------------------------------------------------------

-   2017-05-23 Lynn Garren : larpandoracontent v03\_06\_00 for larsoft v06\_37\_00
-   2017-05-23 Lynn Garren : larpandoracontent v03\_06\_00
-   2017-05-08 John Marshall : Update list of factories.
-   2017-04-30 Andy Blake : Fixing the issues identified by John M!
-   2017-03-30 Andy Blake : Modifying stitching helpers to enable running with multiple Pandora passes (sorry for breaking that!)
-   2017-03-26 Andy Blake : Adjusting track-building algorithm to enable running in stitching environment (dQ/dx will now be calculated in LArSoft).
-   2017-03-11 Andy Blake : Helpers and cosmic-ray stitching for detectors with multiple drift volumes

larsoftobj v1\_20\_00(#larsoftobj-v1_20_00)
----------------------------------------------

lardataobj v1\_16\_00(#lardataobj-v1_16_00)
----------------------------------------------

larcoreobj v1\_13\_01(#larcoreobj-v1_13_01)
----------------------------------------------

larbatch v01\_32\_00(#larbatch-v01_32_00)
--------------------------------------------

larutils v1\_13\_00(#larutils-v1_13_00)
------------------------------------------
