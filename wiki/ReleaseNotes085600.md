LArSoft v08\_56\_00 Release Notes(#LArSoft-v08_56_00-Release-Notes)
======================================================================

-   **Table of contents**
-   [LArSoft v08\_56\_00 Release Notes](#LArSoft-v08_56_00-Release-Notes)
    -   [Purpose](#Purpose)
    -   [New features](#New-features)
    -   [Bug fixes](#Bug-fixes)
    -   [Updated dependencies](#Updated-dependencies)
-   [Change List](#Change-List)
    -   [larsoft v08\_56\_00](#larsoft-v08_56_00)
    -   [lareventdisplay v08\_12\_19](#lareventdisplay-v08_12_19)
    -   [larexamples v08\_06\_19](#larexamples-v08_06_19)
    -   [larg4 v08\_14\_05](#larg4-v08_14_05)
    -   [larpandora v08\_12\_12](#larpandora-v08_12_12)
    -   [larrecodnn v08\_05\_00](#larrecodnn-v08_05_00)
    -   [larwirecell v08\_12\_16](#larwirecell-v08_12_16)
    -   [larana v08\_17\_11](#larana-v08_17_11)
    -   [larreco v08\_32\_04](#larreco-v08_32_04)
    -   [larsim v08\_28\_00](#larsim-v08_28_00)
    -   [larevt v08\_12\_00](#larevt-v08_12_00)
    -   [lardata v08\_15\_09](#lardata-v08_15_09)
    -   [larcore v08\_11\_10](#larcore-v08_11_10)
    -   [larpandoracontent v03\_16\_02](#larpandoracontent-v03_16_02)
    -   [larsoftobj v08\_29\_02](#larsoftobj-v08_29_02)
    -   [lardataobj v08\_11\_02](#lardataobj-v08_11_02)
    -   [lardataalg v08\_13\_14](#lardataalg-v08_13_14)
    -   [larcorealg v08\_22\_02](#larcorealg-v08_22_02)
    -   [larcoreobj v08\_12\_01](#larcoreobj-v08_12_01)
    -   [webevd v08\_00\_07](#webevd-v08_00_07)
    -   [larbatch v01\_52\_02](#larbatch-v01_52_02)
    -   [larutils v1\_26\_00](#larutils-v1_26_00)

[list of LArSoft releases](LArSoft_release_list)\
Download instructions for [larsoft v08\_56\_00](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v08_56_00/larsoft-v08_56_00.html)\
Download instructions for [just larsoftobj v08\_29\_02](http://scisoft.fnal.gov/scisoft/bundles/larsoftobj/v08_29_02/larsoftobj-v08_29_02.html)

Purpose(#Purpose)
--------------------

-   changes in develop
-   approved PRs

New features(#New-features)
------------------------------

-   add a requested larwire distribution
    -   this distribution contains larwirecell and everything it uses
    -   the distribution version number is the same as the larwirecell release tag
    -   the distribution will be provided with each larsoft release going forward
    -   larsoft PR 13
    -   larutils PR 5
-   larevt PR 8
    -   Additions
        -   Optinally check whether a particle is a primary particle
    -   Under the hood changes
        -   Check the all FCL vectors are the same length
        -   Check that restricted-value fcl parameters do indeed only have restricted values
        -   const-ify the interesting vectors to maintain their equal lengths
        -   Swap the index argument for unsigned int
        -   Check that the element requests on the vectors are valid
        -   Pass the art::Ptr by const reference rather than const value
-   larsim PR 25
    -   Added filtering to LightSource module based on material type
-   larsim PR 26
    -   Add scintillation prescaling factor to Correlated alg
-   larrecodnn PR 9
    -   implemented ROI-finding interfaces in WaveformRecogTools
-   Add a bit of information to geometry dump
    -   larcoreobj PR 8
    -   larcorealg PR 9
    -   in rare circumstances, larcoreobj\_SimpleTypesAndConstants will need to be added to the link list
    -   CMakeFiles/larcore_Geometry_DumpGeometry_module.dir/DumpGeometry_module.cc.o: In function `void geo::GeometryCore::Print<mf::MaybeLogger_<(mf::ELseverityLevel::ELsev_)3, true>&>(mf::MaybeLogger_<(mf::ELseverityLevel::ELsev_)3, true>&, std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >) const':
            /home/garren/scratch/larsoft/test/larcorealg/v08_22_02/include/larcorealg/Geometry/GeometryCore.h:5714: undefined reference to `geo::SignalTypeName[abi:cxx11](geo::_plane_sigtype)'
            CMakeFiles/larcore_Geometry_DumpGeometry_module.dir/DumpGeometry_module.cc.o: In function `void geo::GeometryCore::Print<mf::MaybeLogger_<(mf::ELseverityLevel::ELsev_)3, true> >(mf::MaybeLogger_<(mf::ELseverityLevel::ELsev_)3, true>&&, std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >) const':
            /home/garren/scratch/larsoft/test/larcorealg/v08_22_02/include/larcorealg/Geometry/GeometryCore.h:5714: undefined reference to `geo::SignalTypeName[abi:cxx11](geo::_plane_sigtype)'
            collect2: error: ld returned 1 exit status

Bug fixes(#Bug-fixes)
------------------------

Updated dependencies(#Updated-dependencies)
----------------------------------------------

-   genie v3\_00\_06i - see issue [\#24574](/redmine/issues/24574 "Support: Update GENIE generator and reweight combo to use Reweight R-1_00_06 instead of R-1_00_04 (Closed)")
-   dk2nugenie v01\_08\_00l
-   ifdhc v2\_5\_7
-   ifdhc\_config v2\_5\_7
-   ifbeam v2\_4\_5
-   nucondb v2\_4\_5
-   ifdh\_art v2\_10\_07
-   nugen v1\_10\_09
-   nusystematics v00\_10\_05

Change List(#Change-List)
============================

larsoft v08\_56\_00(#larsoft-v08_56_00)
------------------------------------------

-   2020-07-01 Lynn Garren : larsoft v08\_56\_00 for larsoft v08\_56\_00
-   2020-07-01 Lynn Garren : product versions
-   2020-06-29 Lynn Garren : Merge pull request \#13 from lgarren/feature/lg\_larwire
-   2020-06-29 Lynn Garren : ensure\_cetbuildtools not necessary at this time
-   2020-06-29 Lynn Garren : working larwire build
-   2020-06-29 Lynn Garren : first attempt at larwire configuration

lareventdisplay v08\_12\_19(#lareventdisplay-v08_12_19)
----------------------------------------------------------

-   2020-07-01 Lynn Garren : lareventdisplay v08\_12\_19 for larsoft v08\_56\_00

larexamples v08\_06\_19(#larexamples-v08_06_19)
--------------------------------------------------

-   2020-07-01 Lynn Garren : larexamples v08\_06\_19 for larsoft v08\_56\_00

larg4 v08\_14\_05(#larg4-v08_14_05)
--------------------------------------

-   2020-07-01 Lynn Garren : larg4 v08\_14\_05 for larsoft v08\_56\_00

larpandora v08\_12\_12(#larpandora-v08_12_12)
------------------------------------------------

-   2020-07-01 Lynn Garren : larpandora v08\_12\_12 for larsoft v08\_56\_00

larrecodnn v08\_05\_00(#larrecodnn-v08_05_00)
------------------------------------------------

-   2020-07-01 Lynn Garren : larrecodnn v08\_05\_00 for larsoft v08\_56\_00
-   2020-06-30 Lynn Garren : Merge pull request \#9 from mhlswang/master
-   2020-06-25 mhlswang : minor change to mean/scale vector intialization
-   2020-06-25 mhlswang : more restructuring to minimize code duplication
-   2020-06-25 mhlswang : undid change of vector of mean and scale to single constant and implemented user specified prediction cut
-   2020-06-25 mhlswang : replaced mean and scale vectors with single fcl values
-   2020-06-25 mhlswang : added method to return predictions for each time tick
-   2020-06-25 mhlswang : moved ROI finding from the example module into the tool

larwirecell v08\_12\_16(#larwirecell-v08_12_16)
--------------------------------------------------

-   2020-07-01 Lynn Garren : larwirecell v08\_12\_16 for larsoft v08\_56\_00

larana v08\_17\_11(#larana-v08_17_11)
----------------------------------------

-   2020-07-01 Lynn Garren : larana v08\_17\_11 for larsoft v08\_56\_00

larreco v08\_32\_04(#larreco-v08_32_04)
------------------------------------------

-   2020-07-01 Lynn Garren : larreco v08\_32\_04 for larsoft v08\_56\_00

larsim v08\_28\_00(#larsim-v08_28_00)
----------------------------------------

-   2020-07-01 Lynn Garren : larsim v08\_28\_00 for larsoft v08\_56\_00
-   2020-06-30 Lynn Garren : Merge pull request \#25 from PetrilloAtWork/feature/gp\_LightSource
-   2020-06-30 Lynn Garren : Merge pull request \#26 from wforeman/wforeman\_iscalc
-   2020-06-29 William Foreman : Add scintillation prescale factor into Correlated alg
-   2020-06-25 Gianluca Petrillo : Add the correct number of generated photons to LightSource tree.
-   2020-06-25 Gianluca Petrillo : Added \`SelectMaterials\` parameter to LightSource module.
-   2020-06-24 Gianluca Petrillo : Some C++ restyling for LightSource module.
-   2020-06-24 Gianluca Petrillo : Tab converted to spaces.

larevt v08\_12\_00(#larevt-v08_12_00)
----------------------------------------

-   2020-07-01 Lynn Garren : larevt v08\_12\_00 for larsoft v08\_56\_00
-   2020-07-01 Lynn Garren : Merge pull request \#8 from absolution1/dbrailsf\_larg4filterchanges
-   2020-07-01 Dom Brailsford : Const qualify all of the functions (except for the virtual filter function). Move opening function brackets onto new lines for more consistent styling. More tweaks are needed later.
-   2020-06-24 Dom Brailsford : Additions - Optinally check whether a particle is a primary particle

lardata v08\_15\_09(#lardata-v08_15_09)
------------------------------------------

-   2020-07-01 Lynn Garren : lardata v08\_15\_09 for larsoft v08\_56\_00

larcore v08\_11\_10(#larcore-v08_11_10)
------------------------------------------

-   2020-07-01 Lynn Garren : add missing library
-   2020-07-01 Lynn Garren : larcore v08\_11\_10 for larsoft v08\_56\_00

larpandoracontent v03\_16\_02(#larpandoracontent-v03_16_02)
--------------------------------------------------------------

larsoftobj v08\_29\_02(#larsoftobj-v08_29_02)
------------------------------------------------

-   2020-07-01 Lynn Garren : larsoftobj v08\_29\_02 for larsoft v08\_56\_00
-   2020-07-01 Lynn Garren : product versions

lardataobj v08\_11\_02(#lardataobj-v08_11_02)
------------------------------------------------

-   2020-07-01 Lynn Garren : lardataobj v08\_11\_02 for larsoft v08\_56\_00

lardataalg v08\_13\_14(#lardataalg-v08_13_14)
------------------------------------------------

-   2020-07-01 Lynn Garren : lardataalg v08\_13\_14 for larsoft v08\_56\_00

larcorealg v08\_22\_02(#larcorealg-v08_22_02)
------------------------------------------------

-   2020-07-01 Lynn Garren : larcorealg v08\_22\_02 for larsoft v08\_56\_00
-   2020-06-29 Lynn Garren : Merge pull request \#9 from PetrilloAtWork/DumpSignalType
-   2020-06-25 Gianluca Petrillo : Moved function into larcoreobj
-   2020-06-04 Gianluca Petrillo : Added signal type in plane information dumped by \`GeometryCore::Print()\`.

larcoreobj v08\_12\_01(#larcoreobj-v08_12_01)
------------------------------------------------

-   2020-07-01 Lynn Garren : larcoreobj v08\_12\_01 for larsoft v08\_56\_00
-   2020-06-29 Lynn Garren : Merge pull request \#8 from PetrilloAtWork/DumpSignalType
-   2020-06-25 Gianluca Petrillo : Moved geo::SignalTypeName() from larcorealg

webevd v08\_00\_07(#webevd-v08_00_07)
----------------------------------------

-   2020-07-01 Lynn Garren : webevd v08\_00\_07 for larsoft v08\_56\_00

larbatch v01\_52\_02(#larbatch-v01_52_02)
--------------------------------------------

larutils v1\_26\_00(#larutils-v1_26_00)
------------------------------------------

-   2020-07-01 Lynn Garren : larutils v1\_26\_00 for larsoft v08\_56\_00
-   2020-07-01 Lynn Garren : Merge pull request [\#5](/redmine/issues/5 "Feature: NIMROD extended to Accelerator Division (New)") from lgarren/feature/lg\_add\_larwire\_build
-   2020-07-01 Lynn Garren : optionally build larwire distribution
-   2020-07-01 Lynn Garren : build the larwire distribution
