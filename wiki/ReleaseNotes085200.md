LArSoft v08\_52\_00 Release Notes(#LArSoft-v08_52_00-Release-Notes)
======================================================================

-   **Table of contents**
-   [LArSoft v08\_52\_00 Release Notes](#LArSoft-v08_52_00-Release-Notes)
    -   [Purpose](#Purpose)
    -   [New features](#New-features)
    -   [Bug fixes](#Bug-fixes)
    -   [Updated dependencies](#Updated-dependencies)
-   [Change List](#Change-List)
    -   [larsoft v08\_52\_00](#larsoft-v08_52_00)
    -   [lareventdisplay v08\_12\_15](#lareventdisplay-v08_12_15)
    -   [larexamples v08\_06\_15](#larexamples-v08_06_15)
    -   [larg4 v08\_14\_01](#larg4-v08_14_01)
    -   [larpandora v08\_12\_07](#larpandora-v08_12_07)
    -   [larrecodnn v08\_04\_00](#larrecodnn-v08_04_00)
    -   [larwirecell v08\_12\_13](#larwirecell-v08_12_13)
    -   [larana v08\_17\_07](#larana-v08_17_07)
    -   [larreco v08\_32\_00](#larreco-v08_32_00)
    -   [larsim v08\_24\_00](#larsim-v08_24_00)
    -   [larevt v08\_11\_06](#larevt-v08_11_06)
    -   [lardata v08\_15\_06](#lardata-v08_15_06)
    -   [larcore v08\_11\_07](#larcore-v08_11_07)
    -   [larpandoracontent v03\_15\_16](#larpandoracontent-v03_15_16)
    -   [larsoftobj v08\_28\_01](#larsoftobj-v08_28_01)
    -   [lardataobj v08\_10\_09](#lardataobj-v08_10_09)
    -   [lardataalg v08\_13\_11](#lardataalg-v08_13_11)
    -   [larcorealg v08\_21\_06](#larcorealg-v08_21_06)
    -   [larcoreobj v08\_11\_00](#larcoreobj-v08_11_00)
    -   [larbatch v01\_52\_02](#larbatch-v01_52_02)
    -   [larutils v1\_25\_09](#larutils-v1_25_09)

[list of LArSoft releases](LArSoft_release_list)\
Download instructions for [larsoft v08\_52\_00](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v08_52_00/larsoft-v08_52_00.html)\
Download instructions for [just larsoftobj v08\_28\_01](http://scisoft.fnal.gov/scisoft/bundles/larsoftobj/v08_28_01/larsoftobj-v08_28_01.html)

Purpose(#Purpose)
--------------------

-   approved PRs

New features(#New-features)
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

Bug fixes(#Bug-fixes)
------------------------

-   larcorealg PR 5
    -   Removed superfluous indirection step in some GeometryCore methods.

Updated dependencies(#Updated-dependencies)
----------------------------------------------

-   nutools v3\_06\_05
    -   table file cleanup
-   geant4reweight v01\_02\_00
    -   Implemented elastic reweighting in MultiReweighter

Change List(#Change-List)
============================

larsoft v08\_52\_00(#larsoft-v08_52_00)
------------------------------------------

-   2020-05-13 Lynn Garren : larsoft v08\_52\_00 for larsoft v08\_52\_00
-   2020-05-13 Lynn Garren : product versions
-   2020-05-13 Lynn Garren : nulite v3\_06\_05

lareventdisplay v08\_12\_15(#lareventdisplay-v08_12_15)
----------------------------------------------------------

-   2020-05-13 Lynn Garren : lareventdisplay v08\_12\_15 for larsoft v08\_52\_00

larexamples v08\_06\_15(#larexamples-v08_06_15)
--------------------------------------------------

-   2020-05-13 Lynn Garren : larexamples v08\_06\_15 for larsoft v08\_52\_00

larg4 v08\_14\_01(#larg4-v08_14_01)
--------------------------------------

-   2020-05-13 Lynn Garren : larg4 v08\_14\_01 for larsoft v08\_52\_00
-   2020-05-11 Lynn Garren : Merge pull request \#10 from drivera-fnal/develop
-   2020-05-05 David Rivera : Add fhicl parameter to control whether full trajectories for descendants from primaries with MCTruth process == primary should be stored or any MCTruth process (e.g. primaryBackground, etc).

larpandora v08\_12\_07(#larpandora-v08_12_07)
------------------------------------------------

-   2020-05-13 Lynn Garren : larpandora v08\_12\_07 for larsoft v08\_52\_00

larrecodnn v08\_04\_00(#larrecodnn-v08_04_00)
------------------------------------------------

-   2020-05-13 Lynn Garren : larrecodnn v08\_04\_00 for larsoft v08\_52\_00
-   2020-05-12 Lynn Garren : Merge pull request [\#6](/redmine/issues/6 "Feature: Non-KCA Remediation (New)") from yangtj207/waveformroi\_rawdigits
-   2020-05-12 Tingjun Yang : Address Kyle’s comments.
-   2020-05-09 Tingjun Yang : Remove temporary code.
-   2020-05-08 Tingjun Yang : Add module to evaluate ROI finder efficiency.
-   2020-05-08 Tingjun Yang : Add support for rawdigits.

larwirecell v08\_12\_13(#larwirecell-v08_12_13)
--------------------------------------------------

-   2020-05-13 Lynn Garren : larwirecell v08\_12\_13 for larsoft v08\_52\_00

larana v08\_17\_07(#larana-v08_17_07)
----------------------------------------

-   2020-05-13 Lynn Garren : larana v08\_17\_07 for larsoft v08\_52\_00

larreco v08\_32\_00(#larreco-v08_32_00)
------------------------------------------

-   2020-05-13 Lynn Garren : larreco v08\_32\_00 for larsoft v08\_52\_00
-   2020-05-12 Lynn Garren : Merge pull request \#13 from sabasehrish/feature/team\_for\_mt
-   2020-05-12 Saba Sehrish : added virtual destructor for IPeakFitter.h
-   2020-05-11 Saba Sehrish : added async for the Shared module HitFinder
-   2020-05-07 Saba Sehrish : Merge branch ‘develop’ into feature/team\_for\_mt
-   2020-05-07 Saba Sehrish : Changes to make HitFinder module, algorithm and tool implementations (not all) threadsafe

larsim v08\_24\_00(#larsim-v08_24_00)
----------------------------------------

-   2020-05-13 Lynn Garren : larsim v08\_24\_00 for larsoft v08\_52\_00
-   2020-05-13 Lynn Garren : nutools v3\_06\_05 (table file cleanup)
-   2020-05-13 Lynn Garren : Merge pull request \#14 from ikatza/develop
-   2020-05-13 Iker de Icaza Astiz : Revert “Use std::acos() in places where it’s not called often”. Turns out it’s a hindrance and less consistent.
-   2020-05-13 Iker de Icaza Astiz : Remove some more constexpr to comply with clang
-   2020-05-12 Iker de Icaza Astiz : Remove constexpr qualifier from three functions to hanlde errors on clang builds
-   2020-05-07 Lynn Garren : larsoft v08\_51\_00
-   2020-05-06 Lynn Garren : add missing override
-   2020-05-05 Iker de Icaza Astiz : Temporary change to reproduce vanilla OpFastScintillation
-   2020-05-05 Iker de Icaza Astiz : Use std::acos() in places where it’s not called often
-   2020-05-02 Iker de Icaza Astiz : Acted on some TODOs, chatted with Diego about them
-   2020-04-27 Iker de Icaza Astiz : Encapsulate and distinguish in two distinct functions the code that gets direct and reflected hits
-   2020-04-27 Iker de Icaza Astiz : Prevent gratuitous casting
-   2020-04-22 Iker de Icaza Astiz : Refactor interpolate functions.
-   2020-04-21 Iker de Icaza Astiz : Instead of dividing multiply by reciprocal in Rectangle\_SolidAngle
-   2020-04-20 Iker de Icaza Astiz : Put a try/catch block on Disk\_SolidAngle for the rare cases where an exception might be thrown
-   2020-04-20 Iker de Icaza Astiz : Consistency with literal doubles
-   2020-04-20 Iker de Icaza Astiz : Encapsulate conditions for computing semi-analythic and call them before VISHits and VUVHits
-   2020-04-20 Iker de Icaza Astiz : Move computation of reflected hits to outside the loop as it doesn’t depend on OpDetPoint.
-   2020-04-20 Iker de Icaza Astiz : Stop creating ScintPoint and OpDetPoint at every iteration of the loops. Use simpler const std::array.
-   2020-04-20 Iker de Icaza Astiz : Remove gratuitous else
-   2020-04-16 Iker de Icaza Astiz : Merge branch ‘feature/icaza\_performance’ into develop
-   2020-04-15 Iker de Icaza Astiz : Annotate a potential improvement
-   2020-04-15 Iker de Icaza Astiz : Skip the volume in between the cathode planes
-   2020-04-14 Iker de Icaza Astiz : Merge branch ‘develop’ into feature/icaza\_performance
-   2020-04-08 Iker de Icaza Astiz : Revist order of ifs in Rectangle\_SolidAngle, make this one a constexpr, some more tweaking.
-   2020-04-08 Iker de Icaza Astiz : Remove alias variable and use the one that was passed along to Rectangle\_SolidAngle()
-   2020-04-07 Iker de Icaza Astiz : Change type of parameter of Rectangle\_SolidAngle to std::array, economise on declarations and reorder expressions to prevent cache misses
-   2020-04-07 Iker de Icaza Astiz : Refactor Rectangle\_SolidAngle to reduce abs calls and memory usage
-   2020-04-07 Iker de Icaza Astiz : Move orders of ifs in Disk\_SolidAngle
-   2020-04-07 Iker de Icaza Astiz : Use std functions and CLHEP::pi to be able to use constexpr in Disk\_SolidAngle, also better consistency
-   2020-04-07 Iker de Icaza Astiz : Use std functions on fast\_acos
-   2020-04-07 Iker de Icaza Astiz : Offload some of the calculations to the compiler marking functions as constexpr
-   2020-04-07 Iker de Icaza Astiz : Choose fast\_acos to handle computations, substantial performance improvement at the expense of precision
-   2020-04-06 Iker de Icaza Astiz : Stop evaluating and copying constant structs values. The struct now only has what it needs.
-   2020-04-06 Iker de Icaza Astiz : WIP function to create memoized functions
-   2020-04-06 Iker de Icaza Astiz : Define and use comparison of floating point variable to zero
-   2020-04-06 Iker de Icaza Astiz : Mark collection of improvements to be made
-   2020-04-06 Iker de Icaza Astiz : Include function to compute acos quickly at the expense of precision
-   2020-04-06 Iker de Icaza Astiz : Include function to generate table of acos
-   2020-04-06 Iker de Icaza Astiz : Reorder ifs in Rectangle\_SolidAngle in decreasing regularity of usage
-   2020-04-06 Iker de Icaza Astiz : Improve encapsulation and compiling times by moving functions around
-   2020-04-06 Iker de Icaza Astiz : Split long lines, collapse a few others
-   2020-04-06 Iker de Icaza Astiz : Swap ints to size\_t and const where appropriate
-   2020-04-06 Iker de Icaza Astiz : Correct scope of vars
-   2020-04-06 Iker de Icaza Astiz : Refactor time smearing loop
-   2020-04-06 Iker de Icaza Astiz : Remove gratuitous pow
-   2020-04-03 Iker de Icaza Astiz : Prevent boost from promoting to long double, this substantially improves performance but might introduce some bias.
-   2020-04-03 Iker de Icaza Astiz : Stop allocating and returning vectors, instead use a single vector that gets passed along by ref.
-   2020-04-03 Iker de Icaza Astiz : Change interpolate() to be void to stop returning a dynamically allocated pointer that was created inside a function.
-   2020-04-02 Iker de Icaza Astiz : Remove expression that is identical to zero, simplify the other one.
-   2020-04-02 Iker de Icaza Astiz : Define function to make comparisons that take floating precission and tolerance into account, use them in Disk\_SolidAngle()
-   2020-04-02 Iker de Icaza Astiz : Deobfuscate the recusivity of Disk\_SolidAngle() to a single function.
-   2020-04-02 Iker de Icaza Astiz : Create function dist() instead of using std::pow.
-   2020-04-02 Iker de Icaza Astiz : Don’t spend extra cycles on std::sqrt(std::pow()), use std::abs instead.
-   2020-04-02 Iker de Icaza Astiz : Avoid using pow on Pol\_5. Return a regular double.
-   2020-04-02 Iker de Icaza Astiz : Use std everywhere
-   2020-03-31 Iker de Icaza Astiz : Remove test. Boost already checks the purported objective of this test.
-   2020-03-31 Iker de Icaza Astiz : Styling and whitespace removal.

larevt v08\_11\_06(#larevt-v08_11_06)
----------------------------------------

-   2020-05-13 Lynn Garren : larevt v08\_11\_06 for larsoft v08\_52\_00

lardata v08\_15\_06(#lardata-v08_15_06)
------------------------------------------

-   2020-05-13 Lynn Garren : lardata v08\_15\_06 for larsoft v08\_52\_00

larcore v08\_11\_07(#larcore-v08_11_07)
------------------------------------------

-   2020-05-13 Lynn Garren : larcore v08\_11\_07 for larsoft v08\_52\_00

larpandoracontent v03\_15\_16(#larpandoracontent-v03_15_16)
--------------------------------------------------------------

larsoftobj v08\_28\_01(#larsoftobj-v08_28_01)
------------------------------------------------

-   2020-05-13 Lynn Garren : larsoftobj v08\_28\_01 for larsoft v08\_52\_00
-   2020-05-13 Lynn Garren : product versions

lardataobj v08\_10\_09(#lardataobj-v08_10_09)
------------------------------------------------

-   2020-05-13 Lynn Garren : lardataobj v08\_10\_09 for larsoft v08\_52\_00

lardataalg v08\_13\_11(#lardataalg-v08_13_11)
------------------------------------------------

-   2020-05-13 Lynn Garren : lardataalg v08\_13\_11 for larsoft v08\_52\_00

larcorealg v08\_21\_06(#larcorealg-v08_21_06)
------------------------------------------------

-   2020-05-13 Lynn Garren : larcorealg v08\_21\_06 for larsoft v08\_52\_00
-   2020-05-11 Lynn Garren : Merge pull request [\#5](/redmine/issues/5 "Feature: NIMROD extended to Accelerator Division (New)") from PetrilloAtWork/feature/gp\_geoIndirectionFix
-   2020-05-07 Gianluca Petrillo : Removed superfluous indirection step in some \`GeometryCore\` methods.

larcoreobj v08\_11\_00(#larcoreobj-v08_11_00)
------------------------------------------------

larbatch v01\_52\_02(#larbatch-v01_52_02)
--------------------------------------------

larutils v1\_25\_09(#larutils-v1_25_09)
------------------------------------------
