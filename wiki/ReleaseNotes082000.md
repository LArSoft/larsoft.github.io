LArSoft v08\_20\_00 Release Notes(#LArSoft-v08_20_00-Release-Notes)
======================================================================

-   **Table of contents**
-   [LArSoft v08\_20\_00 Release Notes](#LArSoft-v08_20_00-Release-Notes)
    -   [Purpose](#Purpose)
    -   [New features](#New-features)
    -   [Bug fixes](#Bug-fixes)
    -   [Updated dependencies](#Updated-dependencies)
-   [Change List](#Change-List)
    -   [larsoft v08\_20\_00](#larsoft-v08_20_00)
    -   [lareventdisplay v08\_07\_01](#lareventdisplay-v08_07_01)
    -   [larexamples v08\_02\_04](#larexamples-v08_02_04)
    -   [larg4 v08\_03\_03](#larg4-v08_03_03)
    -   [larpandora v08\_07\_00](#larpandora-v08_07_00)
    -   [larwirecell v08\_05\_03](#larwirecell-v08_05_03)
    -   [larana v08\_08\_02](#larana-v08_08_02)
    -   [larreco v08\_13\_01](#larreco-v08_13_01)
    -   [larsim v08\_07\_01](#larsim-v08_07_01)
    -   [larevt v08\_04\_03](#larevt-v08_04_03)
    -   [lardata v08\_05\_01](#lardata-v08_05_01)
    -   [larcore v08\_04\_03](#larcore-v08_04_03)
    -   [larpandoracontent v03\_14\_08](#larpandoracontent-v03_14_08)
    -   [larsoftobj v08\_15\_00](#larsoftobj-v08_15_00)
    -   [lardataobj v08\_04\_01](#lardataobj-v08_04_01)
    -   [lardataalg v08\_07\_00](#lardataalg-v08_07_00)
    -   [larcorealg v08\_12\_00](#larcorealg-v08_12_00)
    -   [larcoreobj v08\_05\_00](#larcoreobj-v08_05_00)
    -   [larbatch v01\_51\_03](#larbatch-v01_51_03)
    -   [larutils v1\_23\_17](#larutils-v1_23_17)

[list of LArSoft releases](LArSoft_release_list)\
Download instructions for [larsoft v08\_20\_00](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v08_20_00/larsoft-v08_20_00.html)\
Download instructions for [just larsoftobj v08\_15\_00](http://scisoft.fnal.gov/scisoft/bundles/larsoftobj/v08_15_00/larsoftobj-v08_15_00.html)

Purpose(#Purpose)
--------------------

-   changes in develop
-   requested feature branch

New features(#New-features)
------------------------------

-   larpandora updates
    -   larpandora@feature/escudero\_SimChannelsValid
    -   larpandoracontent@feature/ClearTrackFragmentsRefactor
-   feature/gp\_OpDetWaveformDumper in lardataalg and lardata
    -   The existing \`raw::OpDetWaveform\` dumper can print the waveform, sample by sample, in a format of N samples per line. The new feature allows printing, at the beginning of each line, the tick index or the time of the first sample in the line. This makes it easier for people to read the dump.

Bug fixes(#Bug-fixes)
------------------------

-   resolve [\#22453](/redmine/issues/22453 "Feature: Exception when loading unknown terms from the PhysicsList. (Closed)")
    -   feature/russo\_throw\_on\_bad\_physics

Updated dependencies(#Updated-dependencies)
----------------------------------------------

Change List(#Change-List)
============================

larsoft v08\_20\_00(#larsoft-v08_20_00)
------------------------------------------

-   2019-05-14 Lynn Garren : larsoft v08\_20\_00 for larsoft v08\_20\_00
-   2019-05-14 Lynn Garren : product versions

lareventdisplay v08\_07\_01(#lareventdisplay-v08_07_01)
----------------------------------------------------------

-   2019-05-14 Lynn Garren : lareventdisplay v08\_07\_01 for larsoft v08\_20\_00

larexamples v08\_02\_04(#larexamples-v08_02_04)
--------------------------------------------------

-   2019-05-14 Lynn Garren : larexamples v08\_02\_04 for larsoft v08\_20\_00

larg4 v08\_03\_03(#larg4-v08_03_03)
--------------------------------------

-   2019-05-14 Lynn Garren : larg4 v08\_03\_03 for larsoft v08\_20\_00

larpandora v08\_07\_00(#larpandora-v08_07_00)
------------------------------------------------

-   2019-05-14 Lynn Garren : larpandora v08\_07\_00 for larsoft v08\_20\_00
-   2019-05-14 Lynn Garren : Merge branch ‘feature/escudero\_SimChannelsValid’ into release/v08\_20\_00
-   2019-05-08 loressa : Fixes following PR discussion
-   2019-04-30 loressa : Added a check for when SimChannels object is available, but empty

larwirecell v08\_05\_03(#larwirecell-v08_05_03)
--------------------------------------------------

-   2019-05-14 Lynn Garren : larwirecell v08\_05\_03 for larsoft v08\_20\_00

larana v08\_08\_02(#larana-v08_08_02)
----------------------------------------

-   2019-05-14 Lynn Garren : larana v08\_08\_02 for larsoft v08\_20\_00
-   2019-05-13 Kyle Spurgeon : Fixed timing in OpFlashAlg.cxx

larreco v08\_13\_01(#larreco-v08_13_01)
------------------------------------------

-   2019-05-14 Lynn Garren : larreco v08\_13\_01 for larsoft v08\_20\_00
-   2019-05-13 Christopher Backhouse : Plug a memory leak of space points in one bad-channels scenario.

larsim v08\_07\_01(#larsim-v08_07_01)
----------------------------------------

-   2019-05-14 Lynn Garren : larsim v08\_07\_01 for larsoft v08\_20\_00
-   2019-05-14 Lynn Garren : Merge branch ‘feature/russo\_throw\_on\_bad\_physics’ into release/v08\_20\_00
-   2019-05-13 Jason Stock : Changing warning message from LArVoxelReadout that write many messages for particles outside of the TPC or for each event to be debug level. This addresses LArSoft issue [\#22452](/redmine/issues/22452 "Idea: Tons of messages for background simulations. (Feedback)")
-   2019-05-13 Paul Russo : Throw an exception on bad physics in the custom physics list.

larevt v08\_04\_03(#larevt-v08_04_03)
----------------------------------------

-   2019-05-14 Lynn Garren : larevt v08\_04\_03 for larsoft v08\_20\_00

lardata v08\_05\_01(#lardata-v08_05_01)
------------------------------------------

-   2019-05-14 Lynn Garren : lardata v08\_05\_01 for larsoft v08\_20\_00
-   2019-05-14 Lynn Garren : Merge branch ‘feature/gp\_OpDetWaveformDumper’ into release/v08\_20\_00
-   2019-05-14 Gianluca Petrillo : Fixes suggested by Clang to \`raw::OpDetWaveform\` dumper.
-   2019-05-10 Gianluca Petrillo : Dumper of \`raw::OpDetWaveforms\` now can print the time for each dumped tick.

larcore v08\_04\_03(#larcore-v08_04_03)
------------------------------------------

-   2019-05-14 Lynn Garren : larcore v08\_04\_03 for larsoft v08\_20\_00

larpandoracontent v03\_14\_08(#larpandoracontent-v03_14_08)
--------------------------------------------------------------

-   2019-05-14 Lynn Garren : larpandoracontent v03\_14\_08 for larsoft v08\_20\_00
-   2019-05-09 Multi-algorithm pattern recognition : Merge pull request \#80 from PandoraPFA/feature/ClearTrackFragments
-   2019-05-08 John Marshall : Update version and change log.
-   2019-05-03 John Marshall : For safety, remove all clusters associated with this fragment particle from the tensor.
-   2019-05-03 John Marshall : Fragment cluster will be automatically added to the output particle and never rebuilt.
-   2019-05-02 John Marshall : Cosmetic.
-   2019-05-02 John Marshall : Restructure to update tensor prior to reclustering operations.
-   2019-05-01 John Marshall : Merge branch ‘updates’
-   2019-05-01 John Marshall : Use –no-check-certificate for Coverity download.
-   2019-04-22 Lynn Garren : larsoft v08\_16\_00
-   2019-04-12 Kyle Knoepfel : Remove trailing whitespace.

larsoftobj v08\_15\_00(#larsoftobj-v08_15_00)
------------------------------------------------

-   2019-05-14 Lynn Garren : larsoftobj v08\_15\_00 for larsoft v08\_20\_00
-   2019-05-14 Lynn Garren : product versions

lardataobj v08\_04\_01(#lardataobj-v08_04_01)
------------------------------------------------

-   2019-05-14 Lynn Garren : lardataobj v08\_04\_01 for larsoft v08\_20\_00
-   2019-05-13 Gianluca Petrillo : More rewording of \`recob::Wire\` documentation (also integrating B. Viren suggestions).
-   2019-05-10 Gianluca Petrillo : Updated \`recob::Wire\` documentation.

lardataalg v08\_07\_00(#lardataalg-v08_07_00)
------------------------------------------------

-   2019-05-14 Lynn Garren : lardataalg v08\_07\_00 for larsoft v08\_20\_00
-   2019-05-14 Gianluca Petrillo : Fix suggested by Clang to OpDetWaveform dumper
-   2019-05-13 Gianluca Petrillo : Merge remote-tracking branch ‘origin/develop’ into feature/gp\_OpDetWaveformDumper
-   2019-05-13 Gianluca Petrillo : MCParticle dumping utility now prints the name of rescattering process.
-   2019-05-10 Gianluca Petrillo : Dumper of \`raw::opDetWaveforms\` can now print the time of each dumped digit.

larcorealg v08\_12\_00(#larcorealg-v08_12_00)
------------------------------------------------

-   2019-05-14 Lynn Garren : larcorealg v08\_12\_00 for larsoft v08\_20\_00
-   2019-05-10 Lynn Garren : larsoft v08\_19\_00
-   2019-05-09 Gianluca Petrillo : Added \`util::values()\` to iterate through values of a container.
-   2019-05-08 Gianluca Petrillo : Fixing unused type error (thanks Clang 5, I shouldn’t slander you too much after all)
-   2019-05-08 Gianluca Petrillo : Working around Clang 5 lack of C++17.
-   2019-04-26 Gianluca Petrillo : \`util::span\` helpers to support value transformation.
-   2019-05-08 Gianluca Petrillo : Added \`fromFutureImport.h\` with features expected to be standard C++ in teh future.
-   2019-05-08 Gianluca Petrillo : Added \`util::makeValueIndex()\` returning a map of (value -\> index) of a container.
-   2019-05-08 Gianluca Petrillo : Added unique pointer sorting utilities in \`SortByPointers.h\`
-   2019-05-08 Gianluca Petrillo : Extended \`lar::debug::static\_assert\_on()\` functionality.
-   2019-04-25 Gianluca Petrillo : Deprecation notification for \`larcorealg/CoreUtils/DereferenceIterator.h\`.
-   2019-04-25 Gianluca Petrillo : \`util::span\` helpers to support adapted iteration.
-   2019-04-25 Gianluca Petrillo : Fixed a bug in \`util::span\` unit test.
-   2019-04-24 Gianluca Petrillo : Aded base classes for polymorphism.
-   2019-02-27 Gianluca Petrillo : Added geometry builder not requiring (and ignoring) wires

larcoreobj v08\_05\_00(#larcoreobj-v08_05_00)
------------------------------------------------

larbatch v01\_51\_03(#larbatch-v01_51_03)
--------------------------------------------

larutils v1\_23\_17(#larutils-v1_23_17)
------------------------------------------
