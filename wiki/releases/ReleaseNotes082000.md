# LArSoft v08_20_00 Release Notes



[list of LArSoft releases](LArSoft_release_list)  
Download instructions for [larsoft v08_20_00](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v08_20_00/larsoft-v08_20_00.html)  
Download instructions for [just larsoftobj v08_15_00](http://scisoft.fnal.gov/scisoft/bundles/larsoftobj/v08_15_00/larsoftobj-v08_15_00.html)

## Purpose

-   changes in develop
-   requested feature branch

## New features

-   larpandora updates
    -   larpandora@feature/escudero_SimChannelsValid
    -   larpandoracontent@feature/ClearTrackFragmentsRefactor
-   feature/gp_OpDetWaveformDumper in lardataalg and lardata
    -   The existing \`raw::OpDetWaveform\` dumper can print the waveform, sample by sample, in a format of N samples per line. The new feature allows printing, at the beginning of each line, the tick index or the time of the first sample in the line. This makes it easier for people to read the dump.

## Bug fixes

-   resolve \#22453
    -   feature/russo_throw_on_bad_physics

## Updated dependencies

# Change List

## larsoft v08_20_00

-   2019-05-14 Lynn Garren : larsoft v08_20_00 for larsoft v08_20_00
-   2019-05-14 Lynn Garren : product versions

## lareventdisplay v08_07_01

-   2019-05-14 Lynn Garren : lareventdisplay v08_07_01 for larsoft v08_20_00

## larexamples v08_02_04

-   2019-05-14 Lynn Garren : larexamples v08_02_04 for larsoft v08_20_00

## larg4 v08_03_03

-   2019-05-14 Lynn Garren : larg4 v08_03_03 for larsoft v08_20_00

## larpandora v08_07_00

-   2019-05-14 Lynn Garren : larpandora v08_07_00 for larsoft v08_20_00
-   2019-05-14 Lynn Garren : Merge branch 'feature/escudero_SimChannelsValid' into release/v08_20_00
-   2019-05-08 loressa : Fixes following PR discussion
-   2019-04-30 loressa : Added a check for when SimChannels object is available, but empty

## larwirecell v08_05_03

-   2019-05-14 Lynn Garren : larwirecell v08_05_03 for larsoft v08_20_00

## larana v08_08_02

-   2019-05-14 Lynn Garren : larana v08_08_02 for larsoft v08_20_00
-   2019-05-13 Kyle Spurgeon : Fixed timing in OpFlashAlg.cxx

## larreco v08_13_01

-   2019-05-14 Lynn Garren : larreco v08_13_01 for larsoft v08_20_00
-   2019-05-13 Christopher Backhouse : Plug a memory leak of space points in one bad-channels scenario.

## larsim v08_07_01

-   2019-05-14 Lynn Garren : larsim v08_07_01 for larsoft v08_20_00
-   2019-05-14 Lynn Garren : Merge branch 'feature/russo_throw_on_bad_physics' into release/v08_20_00
-   2019-05-13 Jason Stock : Changing warning message from LArVoxelReadout that write many messages for particles outside of the TPC or for each event to be debug level. This addresses LArSoft issue \#22452
-   2019-05-13 Paul Russo : Throw an exception on bad physics in the custom physics list.

## larevt v08_04_03

-   2019-05-14 Lynn Garren : larevt v08_04_03 for larsoft v08_20_00

## lardata v08_05_01

-   2019-05-14 Lynn Garren : lardata v08_05_01 for larsoft v08_20_00
-   2019-05-14 Lynn Garren : Merge branch 'feature/gp_OpDetWaveformDumper' into release/v08_20_00
-   2019-05-14 Gianluca Petrillo : Fixes suggested by Clang to \`raw::OpDetWaveform\` dumper.
-   2019-05-10 Gianluca Petrillo : Dumper of \`raw::OpDetWaveforms\` now can print the time for each dumped tick.

## larcore v08_04_03

-   2019-05-14 Lynn Garren : larcore v08_04_03 for larsoft v08_20_00

## larpandoracontent v03_14_08

-   2019-05-14 Lynn Garren : larpandoracontent v03_14_08 for larsoft v08_20_00
-   2019-05-09 Multi-algorithm pattern recognition : Merge pull request \#80 from PandoraPFA/feature/ClearTrackFragments
-   2019-05-08 John Marshall : Update version and change log.
-   2019-05-03 John Marshall : For safety, remove all clusters associated with this fragment particle from the tensor.
-   2019-05-03 John Marshall : Fragment cluster will be automatically added to the output particle and never rebuilt.
-   2019-05-02 John Marshall : Cosmetic.
-   2019-05-02 John Marshall : Restructure to update tensor prior to reclustering operations.
-   2019-05-01 John Marshall : Merge branch 'updates'
-   2019-05-01 John Marshall : Use —no-check-certificate for Coverity download.
-   2019-04-22 Lynn Garren : larsoft v08_16_00
-   2019-04-12 Kyle Knoepfel : Remove trailing whitespace.

## larsoftobj v08_15_00

-   2019-05-14 Lynn Garren : larsoftobj v08_15_00 for larsoft v08_20_00
-   2019-05-14 Lynn Garren : product versions

## lardataobj v08_04_01

-   2019-05-14 Lynn Garren : lardataobj v08_04_01 for larsoft v08_20_00
-   2019-05-13 Gianluca Petrillo : More rewording of \`recob::Wire\` documentation (also integrating B. Viren suggestions).
-   2019-05-10 Gianluca Petrillo : Updated \`recob::Wire\` documentation.

## lardataalg v08_07_00

-   2019-05-14 Lynn Garren : lardataalg v08_07_00 for larsoft v08_20_00
-   2019-05-14 Gianluca Petrillo : Fix suggested by Clang to OpDetWaveform dumper
-   2019-05-13 Gianluca Petrillo : Merge remote-tracking branch 'origin/develop' into feature/gp_OpDetWaveformDumper
-   2019-05-13 Gianluca Petrillo : MCParticle dumping utility now prints the name of rescattering process.
-   2019-05-10 Gianluca Petrillo : Dumper of \`raw::opDetWaveforms\` can now print the time of each dumped digit.

## larcorealg v08_12_00

-   2019-05-14 Lynn Garren : larcorealg v08_12_00 for larsoft v08_20_00
-   2019-05-10 Lynn Garren : larsoft v08_19_00
-   2019-05-09 Gianluca Petrillo : Added \`util::values()\` to iterate through values of a container.
-   2019-05-08 Gianluca Petrillo : Fixing unused type error (thanks Clang 5, I shouldn't slander you too much after all)
-   2019-05-08 Gianluca Petrillo : Working around Clang 5 lack of C++17.
-   2019-04-26 Gianluca Petrillo : \`util::span\` helpers to support value transformation.
-   2019-05-08 Gianluca Petrillo : Added \`fromFutureImport.h\` with features expected to be standard C in teh future.
-   2019-05-08 Gianluca Petrillo : Added \`util::makeValueIndex()\` returning a map of (value -\> index) of a container.
-   2019-05-08 Gianluca Petrillo : Added unique pointer sorting utilities in \`SortByPointers.h\`
-   2019-05-08 Gianluca Petrillo : Extended \`lar::debug::static_assert_on()\` functionality.
-   2019-04-25 Gianluca Petrillo : Deprecation notification for \`larcorealg/CoreUtils/DereferenceIterator.h\`.
-   2019-04-25 Gianluca Petrillo : \`util::span\` helpers to support adapted iteration.
-   2019-04-25 Gianluca Petrillo : Fixed a bug in \`util::span\` unit test.
-   2019-04-24 Gianluca Petrillo : Aded base classes for polymorphism.
-   2019-02-27 Gianluca Petrillo : Added geometry builder not requiring (and ignoring) wires

## larcoreobj v08_05_00

## larbatch v01_51_03

## larutils v1_23_17
