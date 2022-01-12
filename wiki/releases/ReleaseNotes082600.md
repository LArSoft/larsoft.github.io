LArSoft v08_26_00 Release Notes
======================================================================

-   **Table of contents**
-   [LArSoft v08_26_00 Release Notes](#LArSoft-v08_26_00-Release-Notes)
    -   [Purpose](#Purpose)
    -   [New features](#New-features)
    -   [Bug fixes](#Bug-fixes)
    -   [Updated dependencies](#Updated-dependencies)
-   [Change List](#Change-List)
    -   [larsoft v08_26_00](#larsoft-v08_26_00)
    -   [lareventdisplay v08_08_03](#lareventdisplay-v08_08_03)
    -   [larexamples v08_02_11](#larexamples-v08_02_11)
    -   [larg4 v08_03_09](#larg4-v08_03_09)
    -   [larpandora v08_07_07](#larpandora-v08_07_07)
    -   [larwirecell v08_05_09](#larwirecell-v08_05_09)
    -   [larana v08_10_03](#larana-v08_10_03)
    -   [larreco v08_16_00](#larreco-v08_16_00)
    -   [larsim v08_10_00](#larsim-v08_10_00)
    -   [larevt v08_06_02](#larevt-v08_06_02)
    -   [lardata v08_07_00](#lardata-v08_07_00)
    -   [larcore v08_04_06](#larcore-v08_04_06)
    -   [larpandoracontent v03_15_01](#larpandoracontent-v03_15_01)
    -   [larsoftobj v08_16_00](#larsoftobj-v08_16_00)
    -   [lardataobj v08_04_05](#lardataobj-v08_04_05)
    -   [lardataalg v08_08_00](#lardataalg-v08_08_00)
    -   [larcorealg v08_13_00](#larcorealg-v08_13_00)
    -   [larcoreobj v08_05_01](#larcoreobj-v08_05_01)
    -   [larbatch v01_51_04](#larbatch-v01_51_04)
    -   [larutils v1_24_00](#larutils-v1_24_00)

[list of LArSoft releases](LArSoft_release_list)
Download instructions for [larsoft v08_26_00](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v08_26_00/larsoft-v08_26_00.html)
Download instructions for [just larsoftobj v08_16_00](http://scisoft.fnal.gov/scisoft/bundles/larsoftobj/v08_16_00/larsoftobj-v08_16_00.html)

Purpose
--------------------

-   changes in develop
-   approved feature branches

New features
------------------------------

-   we have recently included some improvements in the semi-analytic fast optical mode we developed alternative to the optical library method. The modifications are: including the SBND semi-analytic model with full border corrections, adding the visible mid third border corrections for DUNE & swapping most of the hard coded detector dimensions to methods using the geometry service instead.
    -   For these last updates we have created the branch feature/semi_ugr_mcr for the packages sbndcode, dunetpc and larsim.
-   larpandoracontent stitching changes important for ProtoDUNE production
    -   larpandoracontent feature/larpandoracontent_v03_15_01
-   new module to do calorimetry reconstruction for showers
    -   larreco feature/calcuttj_shower_calorimetry
-   wrapper interface for detinfo::DetectorClocks
    -   lardataalg feature/gp_quantities
-   allow DetectorClocksServiceStandard_service to read old argoneut files ([\#22837](/redmine/issues/22837 "Bug: More issues with reading argoneut data (Closed)"))
    -   lardata feature/psr_handle_old_files

Bug fixes
------------------------

Updated dependencies
----------------------------------------------

Change List
============================

larsoft v08_26_00
------------------------------------------

-   2019-07-18 Lynn Garren : larsoft v08_26_00 for larsoft v08_26_00
-   2019-07-18 Lynn Garren : larsoft v08_26_00 for larsoft v08_26_00
-   2019-07-17 Lynn Garren : product versions

lareventdisplay v08_08_03
----------------------------------------------------------

-   2019-07-18 Lynn Garren : lareventdisplay v08_08_03 for larsoft v08_26_00

larexamples v08_02_11
--------------------------------------------------

-   2019-07-18 Lynn Garren : larexamples v08_02_11 for larsoft v08_26_00

larg4 v08_03_09
--------------------------------------

-   2019-07-18 Lynn Garren : larg4 v08_03_09 for larsoft v08_26_00

larpandora v08_07_07
------------------------------------------------

-   2019-07-18 Lynn Garren : larpandora v08_07_07 for larsoft v08_26_00

larwirecell v08_05_09
--------------------------------------------------

-   2019-07-18 Lynn Garren : larwirecell v08_05_09 for larsoft v08_26_00

larana v08_10_03
----------------------------------------

-   2019-07-18 Lynn Garren : larana v08_10_03 for larsoft v08_26_00

larreco v08_16_00
------------------------------------------

-   2019-07-18 Lynn Garren : larreco v08_16_00 for larsoft v08_26_00
-   2019-07-16 Aaron Higuera Pichardo : fill XYZ and residual range after SCE correction
-   2019-07-16 Aaron Higuera Pichardo : fill out XYZ TVector3
-   2019-07-16 Jacob Calcutt : Added in correct constants for doing dEdx
-   2019-07-16 Jacob Calcutt : Including calorimetry.fcl in ShowerCalorimetry.fcl for the calorimetry alg set
-   2019-07-16 Tingjun Yang : Fix typo.
-   2019-07-16 Tingjun Yang : Update fcl.
-   2019-07-16 Tingjun Yang : Add authors.
-   2019-07-16 Tingjun Yang : Use art::InputTag.
-   2019-07-16 Tingjun Yang : Add residual range, which is the distance to the shower vertex.
-   2019-07-16 Tingjun Yang : Add hit index.
-   2019-07-16 Tingjun Yang : Group SCE stuff together.
-   2019-07-16 Tingjun Yang : Optimize the way plane/wire/tpc ID is retrieved.
-   2019-07-16 Tingjun Yang : Use .key() to get index.
-   2019-07-16 Jacob Calcutt : Changed a bit of the code for readability
-   2019-07-15 Aaron Higuera Pichardo : correct pitch for hit direction and add SCE file fhicl parameters
-   2019-07-15 Aaron Higuera Pichardo : keep up work on SCE
-   2019-07-15 Jacob Calcutt : Added getting dEdx from calorimetry algs, but planeID == 2 returns inf for each hit
-   2019-07-15 Jacob Calcutt : Fixed issue with services for SCE correction. Now creating associations between calorimetry objects and showers
-   2019-07-15 Aaron Higuera Pichardo : adding up SCE stuff, still a lot of work to be done
-   2019-07-15 Jacob Calcutt : Saving some calorimetry information from showers (not finished yet)
-   2019-07-14 Jacob Calcutt : Created a module for Shower Calorimetry
-   2019-07-12 Patrick Gartung : Merge branch ‘release/v08_25_00’ into develop
-   2019-07-11 Tingjun Yang : Return true for empty event so the program does not crash.

larsim v08_10_00
----------------------------------------

-   2019-07-18 Lynn Garren : larsim v08_10_00 for larsoft v08_26_00
-   2019-07-17 Lynn Garren : remove unused variables
-   2019-07-17 Lynn Garren : Merge branch ‘feature/semi_ugr_mcr’ into release/v08_25_00
-   2019-07-08 Patrick Green : Merge branch ‘develop’ into feature/semi_ugr_mcr
-   2019-07-08 Patrick Green : semi-analytic mode: fixed issue with generic geometry calculations
-   2019-07-05 Patrick Green : semi-analytic fast optical mode: updating geometry related calculations to be generic
-   2019-07-05 Diego Gamez : making generic some geometry-related calculations for the semi-analytic fast-optical model
-   2019-07-04 Diego Gamez : minor modifications for the semi-analytic fast-optical model
-   2019-06-21 Diego Gamez : removing some printouts for running time debugging in optical sim
-   2019-06-19 Diego Gamez : adding some printouts for running time debugging in optical sim
-   2019-06-18 Patrick Green : fixing a memory leak in the optical semi-analytic mode
-   2019-06-18 Diego Gamez : fixing a memory leak in the optical semi-analytic mode
-   2019-06-12 Patrick Green : modified semi-analytic mode to use geometry service for TPC and opdet dimensions
-   2019-06-12 Patrick Green : added visible semi-analytic model border corrections
-   2019-06-11 Diego Gamez : modifications to update (VUV border effects) the optical semi-analytic mode

larevt v08_06_02
----------------------------------------

-   2019-07-18 Lynn Garren : larevt v08_06_02 for larsoft v08_26_00

lardata v08_07_00
------------------------------------------

-   2019-07-18 Lynn Garren : lardata v08_07_00 for larsoft v08_26_00
-   2019-07-17 Lynn Garren : Merge branch ‘feature/psr_handle_old_files’ into release/v08_25_00
-   2019-07-16 Gianluca Petrillo : Merge branch ‘feature/gp_DumpOpDetWaveforms’ into develop
-   2019-06-17 Gianluca Petrillo : DumpOpDetWaveforms now can sort waveforms by channel and time.
-   2019-06-17 Gianluca Petrillo : DumpOpDetWaveforms now can sort waveforms by channel and time.
-   2019-07-15 Paul Russo : Handle old-style fhicl parameter storage correctly for argoneut.

larcore v08_04_06
------------------------------------------

-   2019-07-18 Lynn Garren : larcore v08_04_06 for larsoft v08_26_00

larpandoracontent v03_15_01
--------------------------------------------------------------

-   2019-07-18 Lynn Garren : larpandoracontent v03_15_01 for larsoft v08_26_00
-   2019-07-16 loressa : Fix for compiler
-   2019-07-16 StevenGreen1 : Merge branch ‘updates’
-   2019-07-16 StevenGreen1 : Update version and change log.
-   2019-07-16 StevenGreen1 : Merge branch ‘feature/stitching’
-   2019-07-09 loressa : Replaced double loop in SelectLingestStitch
-   2019-07-05 loressa : Fixed indentation
-   2019-07-04 loressa : Updates following PR review
-   2019-07-03 loressa : Stylish corrections
-   2019-07-03 loressa : Reduce vector of potential stitches to two to keep stitching across CPA now that APA hits are availalbe. This is a short term fix, prior to extend stitches across APAs in addition

larsoftobj v08_16_00
------------------------------------------------

-   2019-07-18 Lynn Garren : larsoftobj v08_16_00 for larsoft v08_26_00
-   2019-07-17 Lynn Garren : product versions

lardataobj v08_04_05
------------------------------------------------

-   2019-07-18 Lynn Garren : lardataobj v08_04_05 for larsoft v08_26_00

lardataalg v08_08_00
------------------------------------------------

-   2019-07-18 Lynn Garren : lardataalg v08_08_00 for larsoft v08_26_00
-   2019-07-16 Gianluca Petrillo : Removed redundant definition.
-   2019-07-16 Gianluca Petrillo : Replaced specialization of \`std::to_string\` for quantities with ADL-driven function.
-   2019-07-16 Gianluca Petrillo : Added \`util::quantities::interval_of\` to discover the interval of a quantity with a category.
-   2019-07-08 Gianluca Petrillo : Added separate unit test for \`DetectorTimingTypes.h\`
-   2019-07-08 Gianluca Petrillo : Minor bug fix: quantity unit name() is not its symbol but rather the full name
-   2019-07-05 Gianluca Petrillo : Tick intervals now belong to their time scale category.
-   2019-07-05 Gianluca Petrillo : Added category support for time intervals.
-   2019-07-02 Gianluca Petrillo : Adding \`detinfo::DetectorTimings\`, user-friendly time conversion interface.
-   2019-07-02 Gianluca Petrillo : Promoted \`util::quantities::is_point\` and \`is_interval\` to interface.
-   2019-07-01 Gianluca Petrillo : Added points to the quantites framework.
-   2019-06-17 Gianluca Petrillo : Disables implicit conversion of a number into a quantity.
-   2019-05-29 Gianluca Petrillo : Added “intervals” to the quantities framework.
-   2019-05-29 Gianluca Petrillo : Added support of \`numeric_limits\` to quantity objects.
-   2019-05-29 Gianluca Petrillo : Minor documentation update to quantities.

larcorealg v08_13_00
------------------------------------------------

-   2019-07-18 Lynn Garren : larcorealg v08_13_00 for larsoft v08_26_00
-   2019-07-16 Gianluca Petrillo : Added \`util::is_same_decay\<\>\` to test equivalence of types after \`std::decay_t\`
-   2019-07-16 Gianluca Petrillo : Wrappers to STL utilities using argument-dependent lookup.
-   2019-06-05 Gianluca Petrillo : Added simple operations for use in C++ STL algorithms.
-   2019-06-05 Gianluca Petrillo : Do not rely on traits in \`PointerVectorMaker\`.
-   2019-06-05 Gianluca Petrillo : Documentation fix to \`util::make_transformed_span()\`.

larcoreobj v08_05_01
------------------------------------------------

larbatch v01_51_04
--------------------------------------------

larutils v1_24_00
------------------------------------------
