LArSoft v08_52_00 Release Notes
======================================================================

[list of LArSoft releases](LArSoft_release_list)
Download instructions for [larsoft v08_52_00](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v08_52_00/larsoft-v08_52_00.html)
Download instructions for [just larsoftobj v08_28_01](http://scisoft.fnal.gov/scisoft/bundles/larsoftobj/v08_28_01/larsoftobj-v08_28_01.html)

Purpose
--------------------

-   approved PRs

New features
------------------------------

-   larsim PR 14
    -   Have done some major refactoring of the code inside LegacyLArG4/OpFastScintillation.
    -   Testing on a sbndgpvm on Cosmics + Neutrino events; the most cpu and memory hungry of events, I have achieved close to half of running time and a comparable memory footprint.
    -   Despite using some fast approximations to the most used functions there is no measurable bias in the OpHits.
    -   Along the way I have also address some of the underlying potential bugs that were hidden in the code. The most salient one had to with a domain error exception calling the boost elliptic integral functions, as far as I can tell this would happen due to a floating point error bloating.
-   larrecodnn PR 6
    -   Add option to find ROIs using rawdigits as input
-   larreco PR 13
    -   HitFinder module converted to Shared module, the implementations of tools and algorithms used in this module are thread safe.
-   larg4 PR 10
    -   Fhicl parameter to enable/disable MCParticle trajectory storage by MCTruth process name (follow up of PR\#9)

Bug fixes
------------------------

-   larcorealg PR 5
    -   Removed superfluous indirection step in some GeometryCore methods.

Updated dependencies
----------------------------------------------

-   nutools v3_06_05
    -   table file cleanup
-   geant4reweight v01_02_00
    -   Implemented elastic reweighting in MultiReweighter

Change List
============================

larsoft v08_52_00
------------------------------------------

-   2020-05-13 Lynn Garren : larsoft v08_52_00 for larsoft v08_52_00
-   2020-05-13 Lynn Garren : product versions
-   2020-05-13 Lynn Garren : nulite v3_06_05

lareventdisplay v08_12_15
----------------------------------------------------------

-   2020-05-13 Lynn Garren : lareventdisplay v08_12_15 for larsoft v08_52_00

larexamples v08_06_15
--------------------------------------------------

-   2020-05-13 Lynn Garren : larexamples v08_06_15 for larsoft v08_52_00

larg4 v08_14_01
--------------------------------------

-   2020-05-13 Lynn Garren : larg4 v08_14_01 for larsoft v08_52_00
-   2020-05-11 Lynn Garren : Merge pull request \#10 from drivera-fnal/develop
-   2020-05-05 David Rivera : Add fhicl parameter to control whether full trajectories for descendants from primaries with MCTruth process == primary should be stored or any MCTruth process (e.g. primaryBackground, etc).

larpandora v08_12_07
------------------------------------------------

-   2020-05-13 Lynn Garren : larpandora v08_12_07 for larsoft v08_52_00

larrecodnn v08_04_00
------------------------------------------------

-   2020-05-13 Lynn Garren : larrecodnn v08_04_00 for larsoft v08_52_00
-   2020-05-12 Lynn Garren : Merge pull request [redmine issue 6](https://cdcvs.fnal.gov/redmine/issues/6) from yangtj207/waveformroi_rawdigits
-   2020-05-12 Tingjun Yang : Address Kyle’s comments.
-   2020-05-09 Tingjun Yang : Remove temporary code.
-   2020-05-08 Tingjun Yang : Add module to evaluate ROI finder efficiency.
-   2020-05-08 Tingjun Yang : Add support for rawdigits.

larwirecell v08_12_13
--------------------------------------------------

-   2020-05-13 Lynn Garren : larwirecell v08_12_13 for larsoft v08_52_00

larana v08_17_07
----------------------------------------

-   2020-05-13 Lynn Garren : larana v08_17_07 for larsoft v08_52_00

larreco v08_32_00
------------------------------------------

-   2020-05-13 Lynn Garren : larreco v08_32_00 for larsoft v08_52_00
-   2020-05-12 Lynn Garren : Merge pull request \#13 from sabasehrish/feature/team_for_mt
-   2020-05-12 Saba Sehrish : added virtual destructor for IPeakFitter.h
-   2020-05-11 Saba Sehrish : added async for the Shared module HitFinder
-   2020-05-07 Saba Sehrish : Merge branch ‘develop’ into feature/team_for_mt
-   2020-05-07 Saba Sehrish : Changes to make HitFinder module, algorithm and tool implementations (not all) threadsafe

larsim v08_24_00
----------------------------------------

-   2020-05-13 Lynn Garren : larsim v08_24_00 for larsoft v08_52_00
-   2020-05-13 Lynn Garren : nutools v3_06_05 (table file cleanup)
-   2020-05-13 Lynn Garren : Merge pull request \#14 from ikatza/develop
-   2020-05-13 Iker de Icaza Astiz : Revert “Use std::acos() in places where it’s not called often”. Turns out it’s a hindrance and less consistent.
-   2020-05-13 Iker de Icaza Astiz : Remove some more constexpr to comply with clang
-   2020-05-12 Iker de Icaza Astiz : Remove constexpr qualifier from three functions to hanlde errors on clang builds
-   2020-05-07 Lynn Garren : larsoft v08_51_00
-   2020-05-06 Lynn Garren : add missing override
-   2020-05-05 Iker de Icaza Astiz : Temporary change to reproduce vanilla OpFastScintillation
-   2020-05-05 Iker de Icaza Astiz : Use std::acos() in places where it’s not called often
-   2020-05-02 Iker de Icaza Astiz : Acted on some TODOs, chatted with Diego about them
-   2020-04-27 Iker de Icaza Astiz : Encapsulate and distinguish in two distinct functions the code that gets direct and reflected hits
-   2020-04-27 Iker de Icaza Astiz : Prevent gratuitous casting
-   2020-04-22 Iker de Icaza Astiz : Refactor interpolate functions.
-   2020-04-21 Iker de Icaza Astiz : Instead of dividing multiply by reciprocal in Rectangle_SolidAngle
-   2020-04-20 Iker de Icaza Astiz : Put a try/catch block on Disk_SolidAngle for the rare cases where an exception might be thrown
-   2020-04-20 Iker de Icaza Astiz : Consistency with literal doubles
-   2020-04-20 Iker de Icaza Astiz : Encapsulate conditions for computing semi-analythic and call them before VISHits and VUVHits
-   2020-04-20 Iker de Icaza Astiz : Move computation of reflected hits to outside the loop as it doesn’t depend on OpDetPoint.
-   2020-04-20 Iker de Icaza Astiz : Stop creating ScintPoint and OpDetPoint at every iteration of the loops. Use simpler const std::array.
-   2020-04-20 Iker de Icaza Astiz : Remove gratuitous else
-   2020-04-16 Iker de Icaza Astiz : Merge branch ‘feature/icaza_performance’ into develop
-   2020-04-15 Iker de Icaza Astiz : Annotate a potential improvement
-   2020-04-15 Iker de Icaza Astiz : Skip the volume in between the cathode planes
-   2020-04-14 Iker de Icaza Astiz : Merge branch ‘develop’ into feature/icaza_performance
-   2020-04-08 Iker de Icaza Astiz : Revist order of ifs in Rectangle_SolidAngle, make this one a constexpr, some more tweaking.
-   2020-04-08 Iker de Icaza Astiz : Remove alias variable and use the one that was passed along to Rectangle_SolidAngle()
-   2020-04-07 Iker de Icaza Astiz : Change type of parameter of Rectangle_SolidAngle to std::array, economise on declarations and reorder expressions to prevent cache misses
-   2020-04-07 Iker de Icaza Astiz : Refactor Rectangle_SolidAngle to reduce abs calls and memory usage
-   2020-04-07 Iker de Icaza Astiz : Move orders of ifs in Disk_SolidAngle
-   2020-04-07 Iker de Icaza Astiz : Use std functions and CLHEP::pi to be able to use constexpr in Disk_SolidAngle, also better consistency
-   2020-04-07 Iker de Icaza Astiz : Use std functions on fast_acos
-   2020-04-07 Iker de Icaza Astiz : Offload some of the calculations to the compiler marking functions as constexpr
-   2020-04-07 Iker de Icaza Astiz : Choose fast_acos to handle computations, substantial performance improvement at the expense of precision
-   2020-04-06 Iker de Icaza Astiz : Stop evaluating and copying constant structs values. The struct now only has what it needs.
-   2020-04-06 Iker de Icaza Astiz : WIP function to create memoized functions
-   2020-04-06 Iker de Icaza Astiz : Define and use comparison of floating point variable to zero
-   2020-04-06 Iker de Icaza Astiz : Mark collection of improvements to be made
-   2020-04-06 Iker de Icaza Astiz : Include function to compute acos quickly at the expense of precision
-   2020-04-06 Iker de Icaza Astiz : Include function to generate table of acos
-   2020-04-06 Iker de Icaza Astiz : Reorder ifs in Rectangle_SolidAngle in decreasing regularity of usage
-   2020-04-06 Iker de Icaza Astiz : Improve encapsulation and compiling times by moving functions around
-   2020-04-06 Iker de Icaza Astiz : Split long lines, collapse a few others
-   2020-04-06 Iker de Icaza Astiz : Swap ints to size_t and const where appropriate
-   2020-04-06 Iker de Icaza Astiz : Correct scope of vars
-   2020-04-06 Iker de Icaza Astiz : Refactor time smearing loop
-   2020-04-06 Iker de Icaza Astiz : Remove gratuitous pow
-   2020-04-03 Iker de Icaza Astiz : Prevent boost from promoting to long double, this substantially improves performance but might introduce some bias.
-   2020-04-03 Iker de Icaza Astiz : Stop allocating and returning vectors, instead use a single vector that gets passed along by ref.
-   2020-04-03 Iker de Icaza Astiz : Change interpolate() to be void to stop returning a dynamically allocated pointer that was created inside a function.
-   2020-04-02 Iker de Icaza Astiz : Remove expression that is identical to zero, simplify the other one.
-   2020-04-02 Iker de Icaza Astiz : Define function to make comparisons that take floating precission and tolerance into account, use them in Disk_SolidAngle()
-   2020-04-02 Iker de Icaza Astiz : Deobfuscate the recusivity of Disk_SolidAngle() to a single function.
-   2020-04-02 Iker de Icaza Astiz : Create function dist() instead of using std::pow.
-   2020-04-02 Iker de Icaza Astiz : Don’t spend extra cycles on std::sqrt(std::pow()), use std::abs instead.
-   2020-04-02 Iker de Icaza Astiz : Avoid using pow on Pol_5. Return a regular double.
-   2020-04-02 Iker de Icaza Astiz : Use std everywhere
-   2020-03-31 Iker de Icaza Astiz : Remove test. Boost already checks the purported objective of this test.
-   2020-03-31 Iker de Icaza Astiz : Styling and whitespace removal.

larevt v08_11_06
----------------------------------------

-   2020-05-13 Lynn Garren : larevt v08_11_06 for larsoft v08_52_00

lardata v08_15_06
------------------------------------------

-   2020-05-13 Lynn Garren : lardata v08_15_06 for larsoft v08_52_00

larcore v08_11_07
------------------------------------------

-   2020-05-13 Lynn Garren : larcore v08_11_07 for larsoft v08_52_00

larpandoracontent v03_15_16
--------------------------------------------------------------

larsoftobj v08_28_01
------------------------------------------------

-   2020-05-13 Lynn Garren : larsoftobj v08_28_01 for larsoft v08_52_00
-   2020-05-13 Lynn Garren : product versions

lardataobj v08_10_09
------------------------------------------------

-   2020-05-13 Lynn Garren : lardataobj v08_10_09 for larsoft v08_52_00

lardataalg v08_13_11
------------------------------------------------

-   2020-05-13 Lynn Garren : lardataalg v08_13_11 for larsoft v08_52_00

larcorealg v08_21_06
------------------------------------------------

-   2020-05-13 Lynn Garren : larcorealg v08_21_06 for larsoft v08_52_00
-   2020-05-11 Lynn Garren : Merge pull request [redmine issue 5](https://cdcvs.fnal.gov/redmine/issues/5) from PetrilloAtWork/feature/gp_geoIndirectionFix
-   2020-05-07 Gianluca Petrillo : Removed superfluous indirection step in some \`GeometryCore\` methods.

larcoreobj v08_11_00
------------------------------------------------

larbatch v01_52_02
--------------------------------------------

larutils v1_25_09
------------------------------------------
