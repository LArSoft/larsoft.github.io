# LArSoft v08_56_00 Release Notes



[list of LArSoft releases](LArSoft_release_list)  
Download instructions for [larsoft v08_56_00](https://scisoft.fnal.gov/scisoft/bundles/larsoft/v08_56_00/larsoft-v08_56_00.html)  
Download instructions for [just larsoftobj v08_29_02](https://scisoft.fnal.gov/scisoft/bundles/larsoftobj/v08_29_02/larsoftobj-v08_29_02.html)

## Purpose

-   changes in develop
-   approved PRs

## New features

- add a requested larwire distribution

this distribution contains larwirecell and everything it uses

the distribution version number is the same as the larwirecell release tag

the distribution will be provided with each larsoft release going forward

larsoft PR 13

larutils PR 5

- larevt PR 8

Additions

- Optinally check whether a particle is a primary particle

Under the hood changes

- Check the all FCL vectors are the same length

- Check that restricted-value fcl parameters do indeed only have restricted values

- const-ify the interesting vectors to maintain their equal lengths

- Swap the index argument for unsigned int

- Check that the element requests on the vectors are valid

- Pass the art::Ptr by const reference rather than const value

- larsim PR 25

Added filtering to LightSource module based on material type

- larsim PR 26

Add scintillation prescaling factor to Correlated alg

- larrecodnn PR 9

implemented ROI-finding interfaces in WaveformRecogTools

- Add a bit of information to geometry dump

larcoreobj PR 8

larcorealg PR 9

in rare circumstances, larcoreobj_SimpleTypesAndConstants will need to be added to the link list

    CMakeFiles/larcore_Geometry_DumpGeometry_module.dir/DumpGeometry_module.cc.o: In function `void geo::GeometryCore::Print<mf::MaybeLogger_<(mf::ELseverityLevel::ELsev_)3, true>&amp;>(mf::MaybeLogger_<(mf::ELseverityLevel::ELsev_)3, true>&amp;, std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >) const':
    /home/garren/scratch/larsoft/test/larcorealg/v08_22_02/include/larcorealg/Geometry/GeometryCore.h:5714: undefined reference to `geo::SignalTypeName[abi:cxx11](geo::_plane_sigtype)'
    CMakeFiles/larcore_Geometry_DumpGeometry_module.dir/DumpGeometry_module.cc.o: In function `void geo::GeometryCore::Print<mf::MaybeLogger_<(mf::ELseverityLevel::ELsev_)3, true> >(mf::MaybeLogger_<(mf::ELseverityLevel::ELsev_)3, true>&amp;&amp;, std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >) const':
    /home/garren/scratch/larsoft/test/larcorealg/v08_22_02/include/larcorealg/Geometry/GeometryCore.h:5714: undefined reference to `geo::SignalTypeName[abi:cxx11](geo::_plane_sigtype)'
    collect2: error: ld returned 1 exit status

## Bug fixes

## Updated dependencies

-   genie v3_00_06i - see issue \#24574
-   dk2nugenie v01_08_00l
-   ifdhc v2_5_7
-   ifdhc_config v2_5_7
-   ifbeam v2_4_5
-   nucondb v2_4_5
-   ifdh_art v2_10_07
-   nugen v1_10_09
-   nusystematics v00_10_05

# Change List

## larsoft v08_56_00

-   2020-07-01 Lynn Garren : larsoft v08_56_00 for larsoft v08_56_00
-   2020-07-01 Lynn Garren : product versions
-   2020-06-29 Lynn Garren : Merge pull request \#13 from lgarren/feature/lg_larwire
-   2020-06-29 Lynn Garren : ensure_cetbuildtools not necessary at this time
-   2020-06-29 Lynn Garren : working larwire build
-   2020-06-29 Lynn Garren : first attempt at larwire configuration

## lareventdisplay v08_12_19

-   2020-07-01 Lynn Garren : lareventdisplay v08_12_19 for larsoft v08_56_00

## larexamples v08_06_19

-   2020-07-01 Lynn Garren : larexamples v08_06_19 for larsoft v08_56_00

## larg4 v08_14_05

-   2020-07-01 Lynn Garren : larg4 v08_14_05 for larsoft v08_56_00

## larpandora v08_12_12

-   2020-07-01 Lynn Garren : larpandora v08_12_12 for larsoft v08_56_00

## larrecodnn v08_05_00

-   2020-07-01 Lynn Garren : larrecodnn v08_05_00 for larsoft v08_56_00
-   2020-06-30 Lynn Garren : Merge pull request \#9 from mhlswang/master
-   2020-06-25 mhlswang : minor change to mean/scale vector intialization
-   2020-06-25 mhlswang : more restructuring to minimize code duplication
-   2020-06-25 mhlswang : undid change of vector of mean and scale to single constant and implemented user specified prediction cut
-   2020-06-25 mhlswang : replaced mean and scale vectors with single fcl values
-   2020-06-25 mhlswang : added method to return predictions for each time tick
-   2020-06-25 mhlswang : moved ROI finding from the example module into the tool

## larwirecell v08_12_16

-   2020-07-01 Lynn Garren : larwirecell v08_12_16 for larsoft v08_56_00

## larana v08_17_11

-   2020-07-01 Lynn Garren : larana v08_17_11 for larsoft v08_56_00

## larreco v08_32_04

-   2020-07-01 Lynn Garren : larreco v08_32_04 for larsoft v08_56_00

## larsim v08_28_00

-   2020-07-01 Lynn Garren : larsim v08_28_00 for larsoft v08_56_00
-   2020-06-30 Lynn Garren : Merge pull request \#25 from PetrilloAtWork/feature/gp_LightSource
-   2020-06-30 Lynn Garren : Merge pull request \#26 from wforeman/wforeman_iscalc
-   2020-06-29 William Foreman : Add scintillation prescale factor into Correlated alg
-   2020-06-25 Gianluca Petrillo : Add the correct number of generated photons to LightSource tree.
-   2020-06-25 Gianluca Petrillo : Added \`SelectMaterials\` parameter to LightSource module.
-   2020-06-24 Gianluca Petrillo : Some C restyling for LightSource module.
-   2020-06-24 Gianluca Petrillo : Tab converted to spaces.

## larevt v08_12_00

-   2020-07-01 Lynn Garren : larevt v08_12_00 for larsoft v08_56_00
-   2020-07-01 Lynn Garren : Merge pull request \#8 from absolution1/dbrailsf_larg4filterchanges
-   2020-07-01 Dom Brailsford : Const qualify all of the functions (except for the virtual filter function). Move opening function brackets onto new lines for more consistent styling. More tweaks are needed later.
-   2020-06-24 Dom Brailsford : Additions - Optinally check whether a particle is a primary particle

## lardata v08_15_09

-   2020-07-01 Lynn Garren : lardata v08_15_09 for larsoft v08_56_00

## larcore v08_11_10

-   2020-07-01 Lynn Garren : add missing library
-   2020-07-01 Lynn Garren : larcore v08_11_10 for larsoft v08_56_00

## larpandoracontent v03_16_02

## larsoftobj v08_29_02

-   2020-07-01 Lynn Garren : larsoftobj v08_29_02 for larsoft v08_56_00
-   2020-07-01 Lynn Garren : product versions

## lardataobj v08_11_02

-   2020-07-01 Lynn Garren : lardataobj v08_11_02 for larsoft v08_56_00

## lardataalg v08_13_14

-   2020-07-01 Lynn Garren : lardataalg v08_13_14 for larsoft v08_56_00

## larcorealg v08_22_02

-   2020-07-01 Lynn Garren : larcorealg v08_22_02 for larsoft v08_56_00
-   2020-06-29 Lynn Garren : Merge pull request \#9 from PetrilloAtWork/DumpSignalType
-   2020-06-25 Gianluca Petrillo : Moved function into larcoreobj
-   2020-06-04 Gianluca Petrillo : Added signal type in plane information dumped by \`GeometryCore::Print()\`.

## larcoreobj v08_12_01

-   2020-07-01 Lynn Garren : larcoreobj v08_12_01 for larsoft v08_56_00
-   2020-06-29 Lynn Garren : Merge pull request \#8 from PetrilloAtWork/DumpSignalType
-   2020-06-25 Gianluca Petrillo : Moved geo::SignalTypeName() from larcorealg

## webevd v08_00_07

-   2020-07-01 Lynn Garren : webevd v08_00_07 for larsoft v08_56_00

## larbatch v01_52_02

## larutils v1_26_00

-   2020-07-01 Lynn Garren : larutils v1_26_00 for larsoft v08_56_00
-   2020-07-01 Lynn Garren : Merge pull request \#5 from lgarren/feature/lg_add_larwire_build
-   2020-07-01 Lynn Garren : optionally build larwire distribution
-   2020-07-01 Lynn Garren : build the larwire distribution
