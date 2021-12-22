LArSoft v06\_73\_00 Release Notes
======================================================================

-   **Table of contents**
-   [LArSoft v06\_73\_00 Release Notes](#LArSoft-v06_73_00-Release-Notes)
    -   [Purpose](#Purpose)
    -   [New features](#New-features)
    -   [Bug fixes](#Bug-fixes)
    -   [Updated dependencies](#Updated-dependencies)
-   [Change List](#Change-List)
    -   [larsoft v06\_73\_00](#larsoft-v06_73_00)
    -   [lareventdisplay v06\_19\_00](#lareventdisplay-v06_19_00)
    -   [larexamples v06\_13\_00](#larexamples-v06_13_00)
    -   [larpandora v06\_26\_00](#larpandora-v06_26_00)
    -   [larwirecell v06\_12\_00](#larwirecell-v06_12_00)
    -   [larana v06\_19\_00](#larana-v06_19_00)
    -   [larreco v06\_58\_00](#larreco-v06_58_00)
    -   [larsim v06\_43\_00](#larsim-v06_43_00)
    -   [larevt v06\_20\_00](#larevt-v06_20_00)
    -   [lardata v06\_43\_00](#lardata-v06_43_00)
    -   [larcore v06\_19\_00](#larcore-v06_19_00)
    -   [larpandoracontent v03\_11\_01](#larpandoracontent-v03_11_01)
    -   [larsoftobj v1\_42\_00](#larsoftobj-v1_42_00)
    -   [lardataobj v1\_30\_00](#lardataobj-v1_30_00)
    -   [larcorealg v1\_19\_00](#larcorealg-v1_19_00)
    -   [larcoreobj v1\_23\_00](#larcoreobj-v1_23_00)
    -   [larbatch v01\_38\_02](#larbatch-v01_38_02)
    -   [larutils v1\_22\_01](#larutils-v1_22_01)

[list of LArSoft releases](LArSoft_release_list)\
Download instructions for [larsoft v06\_73\_00](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v06_73_00/larsoft-v06_73_00.html)\
Download instructions for [just larsoftobj v1\_42\_00](http://scisoft.fnal.gov/scisoft/bundles/larsoftobj/v1_42_00/larsoftobj-v1_42_00.html)

Purpose
--------------------

-   build with both c2 and e15

New features
------------------------------

-   please see the extensive notes about [changes needed for c2](Building_with_clang)

Bug fixes
------------------------

-   changes as needed for the clang build

Updated dependencies
----------------------------------------------

-   pandora v03\_07\_00c
-   marley v1\_0\_0d
-   wirecell v0\_6\_2c
-   nutools v2\_20\_02
-   dk2nugenie v01\_06\_01c

Change List
============================

larsoft v06\_73\_00
------------------------------------------

-   2018-04-05 Lynn Garren : larsoft v06\_73\_00 for larsoft v06\_73\_00
-   2018-04-05 Lynn Garren : cetpkgsupport
-   2018-04-05 Lynn Garren : update versions
-   2018-04-05 Lynn Garren : update versions
-   2018-04-04 Lynn Garren : Merge branch ‘feature/team\_for\_c2’ into release/v06\_73\_00
-   2018-03-22 Lynn Garren : add c2
-   2018-03-22 Lynn Garren : product updates for c2

lareventdisplay v06\_19\_00
----------------------------------------------------------

-   2018-04-05 Lynn Garren : lareventdisplay v06\_19\_00 for larsoft v06\_73\_00
-   2018-04-04 Lynn Garren : Merge branch ‘feature/team\_for\_c2’ into release/v06\_73\_00
-   2018-04-03 Gianluca Petrillo : Adding needed header.
-   2018-04-03 Gianluca Petrillo : Make the use of “override” keyword consistent.
-   2018-04-03 Gianluca Petrillo : Removed templateness from stream output operators
-   2018-04-03 Gianluca Petrillo : Removed unnecessary header files.
-   2018-04-03 Lynn Garren : deal with unused variables
-   2018-04-03 Lynn Garren : add braces
-   2018-04-03 Lynn Garren : add braces
-   2018-04-03 Lynn Garren : register is obsolete
-   2018-04-03 Lynn Garren : remove unsigned int \< 0 check
-   2018-04-03 Lynn Garren : ignore unused-private-field warning
-   2018-04-03 Usher, Tracy L : Include in header file to facilitate the build
-   2018-03-22 Lynn Garren : add c2

larexamples v06\_13\_00
--------------------------------------------------

-   2018-04-05 Lynn Garren : larexamples v06\_13\_00 for larsoft v06\_73\_00
-   2018-04-04 Lynn Garren : Merge branch ‘feature/team\_for\_c2’ into release/v06\_73\_00
-   2018-04-03 Gianluca Petrillo : Streaming operator of data product not templated any more.
-   2018-04-03 Gianluca Petrillo : Erased unused type definition.
-   2018-04-02 Lynn Garren : Workaround for array initialisation bug, issue [\#19474](/redmine/issues/19474 "Necessary Maintenance: Workaround for Clang bug on array initialisation (Accepted)")
-   2018-03-22 Lynn Garren : add c2

larpandora v06\_26\_00
------------------------------------------------

-   2018-04-05 Lynn Garren : larpandora v06\_26\_00 for larsoft v06\_73\_00
-   2018-04-04 Lynn Garren : Merge branch ‘feature/team\_for\_c2’ into release/v06\_73\_00
-   2018-04-03 Gianluca Petrillo : Removed unused local variable.
-   2018-03-26 Lynn Garren : TrackIDE is a struct
-   2018-03-22 Lynn Garren : add c2

larwirecell v06\_12\_00
--------------------------------------------------

-   2018-04-05 Lynn Garren : larwirecell v06\_12\_00 for larsoft v06\_73\_00
-   2018-04-04 Lynn Garren : Merge branch ‘feature/team\_for\_c2’ into release/v06\_73\_00
-   2018-03-29 Lynn Garren : private data member m\_prod is unused
-   2018-03-22 Lynn Garren : add c2

larana v06\_19\_00
----------------------------------------

-   2018-04-05 Lynn Garren : larana v06\_19\_00 for larsoft v06\_73\_00
-   2018-04-05 Lynn Garren : remove unused variabe
-   2018-04-04 Lynn Garren : Merge branch ‘feature/team\_for\_c2’ into release/v06\_73\_00
-   2018-04-03 Herbert Greenlee : Fix mismatch between “produces” call and actual data product.
-   2018-04-03 Herbert Greenlee : Update format to get rid of extraneous \^M’s.
-   2018-04-02 Gianluca Petrillo : Using an unused variable.
-   2018-04-02 Gianluca Petrillo : Making use of “override” keyword coherent (all or none)
-   2018-04-02 Gianluca Petrillo : reworked a loop to cope with an unsigned check.
-   2018-04-02 Gianluca Petrillo : Commenting out unused variables.
-   2018-04-02 Gianluca Petrillo : Commenting out unused data members.
-   2018-03-22 Lynn Garren : add c2

larreco v06\_58\_00
------------------------------------------

-   2018-04-05 Lynn Garren : larreco v06\_58\_00 for larsoft v06\_73\_00
-   2018-04-04 Lynn Garren : Merge branch ‘feature/team\_for\_c2’ into release/v06\_73\_00
-   2018-04-04 Lynn Garren : Merge branch ‘feature/team\_for\_c2’ into release/v06\_73\_00
-   2018-04-04 Lynn Garren : remove obsolete register keyword
-   2018-04-04 Lynn Garren : nutools v2\_20\_02
-   2018-04-02 Gianluca Petrillo : Removing unused constants and variables.
-   2018-04-02 Gianluca Petrillo : Clang library does not support some mathematical functions as constexpr.
-   2018-04-02 Gianluca Petrillo : Removing pointless self assignment, which Clang finds it unacceptable.
-   2018-04-02 Gianluca Petrillo : Making forward declaration consistent with definition
-   2018-04-02 Gianluca Petrillo : Fixed bug where exception would be unconditionally thrown.
-   2018-04-02 Gianluca Petrillo : Silencing a Clang warning.
-   2018-04-02 Gianluca Petrillo : Workaround to a bug in PMA.
-   2018-04-02 Gianluca Petrillo : Fixed bug (probably a cut&paste one)
-   2018-04-02 Gianluca Petrillo : Disabled tensorflow-dependent code as in issue [\#19539](/redmine/issues/19539 "Necessary Maintenance: Restore tensorflow-dependent code disabled for support to Clang (Assigned)")
-   2018-04-02 Gianluca Petrillo : BulkAllocator feature removed as in issue [\#19494](/redmine/issues/19494 "Necessary Maintenance: Restore fuzzyCluster to a reasonable memory usage (Accepted)")
-   2018-04-02 Gianluca Petrillo : Removed \`register\` keyword, deprecated by C++17.
-   2018-04-02 Gianluca Petrillo : Not enclosing simple return values in braces.
-   2018-04-02 Gianluca Petrillo : Workaround for array initialisation bug, issue [\#19474](/redmine/issues/19474 "Necessary Maintenance: Workaround for Clang bug on array initialisation (Accepted)")
-   2018-04-02 Gianluca Petrillo : Fixing unsigned value comparisons.
-   2018-04-02 Gianluca Petrillo : Fixed complaint about a method hiding a virtual one of the base class.
-   2018-04-02 Gianluca Petrillo : Removed superfluous std::move() calls.
-   2018-04-02 Gianluca Petrillo : Fixed inconsistent header guard.
-   2018-04-02 Gianluca Petrillo : Making use of “override” keyword coherent (all or none)
-   2018-04-02 Gianluca Petrillo : Comparison operator of a sorter is required to be constant.
-   2018-04-02 Gianluca Petrillo : Removed or commented out unused private data members.
-   2018-04-02 Gianluca Petrillo : Fixed many tests for index proximity
-   2018-04-02 Lynn Garren : squester tensorflow
-   2018-04-01 Gianluca Petrillo : Fixed comparison bug with unsigned elements
-   2018-04-01 Gianluca Petrillo : Replaced explicit initialisation of array with std::array::fill()
-   2018-04-01 Gianluca Petrillo : Workaround for array initialisation bug, issue [\#19474](/redmine/issues/19474 "Necessary Maintenance: Workaround for Clang bug on array initialisation (Accepted)")
-   2018-03-22 Lynn Garren : make tensorflow optional for now
-   2018-03-22 Lynn Garren : add c2

larsim v06\_43\_00
----------------------------------------

-   2018-04-05 Lynn Garren : larsim v06\_43\_00 for larsoft v06\_73\_00
-   2018-04-04 Lynn Garren : Merge branch ‘feature/team\_for\_c2’ into release/v06\_73\_00
-   2018-04-02 Lynn Garren : Disable the loop per Herb’s instructions
-   2018-03-30 Gianluca Petrillo : Relying on existing utilities to dump ROOT vectors to screen
-   2018-03-30 Gianluca Petrillo : Removed unused variable.
-   2018-03-30 Gianluca Petrillo : Removing redundant check
-   2018-03-30 Gianluca Petrillo : Removing unnecessary inclusion of geometry
-   2018-03-30 Gianluca Petrillo : Removing horrid inclusion of unnexessary POXIX headers
-   2018-03-29 Lynn Garren : use pragmas here since the base class contains verboseLevel
-   2018-03-29 Lynn Garren : put it back
-   2018-03-29 Lynn Garren : remove unused variables reported by c2
-   2018-03-29 Lynn Garren : use double braces
-   2018-03-29 Lynn Garren : fix spelling
-   2018-03-29 Lynn Garren : more
-   2018-03-29 Lynn Garren : avoid a problem in fhicl
-   2018-03-29 Lynn Garren : double braces
-   2018-03-29 Lynn Garren : dealing with unused variables
-   2018-03-29 Lynn Garren : use override
-   2018-03-22 Lynn Garren : add c2

larevt v06\_20\_00
----------------------------------------

-   2018-04-05 Lynn Garren : larevt v06\_20\_00 for larsoft v06\_73\_00
-   2018-04-04 Lynn Garren : Merge branch ‘feature/team\_for\_c2’ into release/v06\_73\_00
-   2018-04-03 Gianluca Petrillo : Making the service provider interface and derived uncopiable.
-   2018-04-02 Gianluca Petrillo : Service requirements are not meant for service pure interfaces.
-   2018-03-29 Gianluca Petrillo : Service requirements are not meant for service pure interfaces.
-   2018-03-29 Lynn Garren : use override
-   2018-03-29 Lynn Garren : for c2: ISO C++17 does not allow register storage class specifier
-   2018-03-29 Lynn Garren : use override
-   2018-03-29 Lynn Garren : unsigned int cannot be less than zero
-   2018-03-22 Lynn Garren : ServiceRequirementsChecker is a struct
-   2018-03-22 Lynn Garren : remove unused private data member
-   2018-03-22 Lynn Garren : add c2

lardata v06\_43\_00
------------------------------------------

-   2018-04-05 Lynn Garren : lardata v06\_43\_00 for larsoft v06\_73\_00
-   2018-04-04 Lynn Garren : use double braces
-   2018-04-04 Lynn Garren : mark functions as override
-   2018-04-04 Lynn Garren : Merge branch ‘feature/team\_for\_c2’ into release/v06\_73\_00
-   2018-03-30 Gianluca Petrillo : Updated comment on ProxyBaseTest
-   2018-03-29 Lynn Garren : nutools v2\_20\_02
-   2018-03-28 Gianluca Petrillo : Workaround for inability of Clang to access constexpr function properly
-   2018-03-28 Gianluca Petrillo : Reworked unit test check.
-   2018-03-28 Gianluca Petrillo : Reworked unit test check to R-value reference comparison.
-   2018-03-28 Gianluca Petrillo : Fixed metaprogramming bug for FindManyInChainP().
-   2018-03-28 Gianluca Petrillo : Removed \`register\` keyword, deprecated by C++17.
-   2018-03-28 Gianluca Petrillo : Removed deleterious std::move() call
-   2018-03-28 Gianluca Petrillo : Adding missing header.
-   2018-03-28 Gianluca Petrillo : C++ coding fixes.
-   2018-03-28 Gianluca Petrillo : Changed struct to class for consistency with the STL declaration.
-   2018-03-28 Gianluca Petrillo : Fixed default constructor of recob::ClusterHit2D.
-   2018-03-28 Gianluca Petrillo : Added missing library in link list
-   2018-03-28 Gianluca Petrillo : BulkAllocator feature removed as in issue [\#19494](/redmine/issues/19494 "Necessary Maintenance: Restore fuzzyCluster to a reasonable memory usage (Accepted)")
-   2018-03-28 Gianluca Petrillo : Always-true check removed.
-   2018-03-28 Gianluca Petrillo : Removed unused local variable and private member data.
-   2018-03-28 Gianluca Petrillo : Enforced consistent usage of “override” keyword
-   2018-03-28 Gianluca Petrillo : Workaround for array initialisation bug, issue [\#19474](/redmine/issues/19474 "Necessary Maintenance: Workaround for Clang bug on array initialisation (Accepted)")
-   2018-03-28 Gianluca Petrillo : Removed template stream from operator\<\< of classes.
-   2018-03-22 Lynn Garren : adding c2

larcore v06\_19\_00
------------------------------------------

-   2018-04-05 Lynn Garren : larcore v06\_19\_00 for larsoft v06\_73\_00
-   2018-03-22 Lynn Garren : ServiceRequirementsChecker is a struct
-   2018-03-22 Lynn Garren : adding c2

larpandoracontent v03\_11\_01
--------------------------------------------------------------

-   2018-04-05 Lynn Garren : larpandoracontent v03\_11\_01 for larsoft v06\_73\_00
-   2018-04-04 Lynn Garren : v03\_11\_01 with pandora v03\_07\_00c for c2
-   2018-04-04 Lynn Garren : Merge branch ‘feature/team\_for\_c2’ into release/v06\_73\_00
-   2018-03-22 Lynn Garren : add c2

larsoftobj v1\_42\_00
----------------------------------------------

-   2018-04-05 Lynn Garren : larsoftobj v1\_42\_00 for larsoft v06\_73\_00
-   2018-04-05 Lynn Garren : cetpkgsupport
-   2018-04-05 Lynn Garren : update versions
-   2018-03-22 Lynn Garren : adding c2

lardataobj v1\_30\_00
----------------------------------------------

-   2018-04-05 Lynn Garren : lardataobj v1\_30\_00 for larsoft v06\_73\_00
-   2018-03-30 Gianluca Petrillo : Removing GNU implementation details from VectorMap implementation
-   2018-03-28 Gianluca Petrillo : Removed template stream from operator\<\< of data products
-   2018-03-22 Gianluca Petrillo : More fixes for Clang 5
-   2018-03-22 Lynn Garren : adding c2
-   2018-03-22 Lynn Garren : for c2

larcorealg v1\_19\_00
----------------------------------------------

-   2018-04-05 Lynn Garren : larcorealg v1\_19\_00 for larsoft v06\_73\_00
-   2018-04-04 Gianluca Petrillo : Disabling static assert
-   2018-04-04 Gianluca Petrillo : Modified util::absDiff() to reject arguments of different type.
-   2018-04-04 Gianluca Petrillo : Removed virtuality of a base class of TesterEnvironment
-   2018-04-03 Gianluca Petrillo : Removed unused details.
-   2018-03-30 Gianluca Petrillo : Added utility to get teh absolute difference of two values
-   2018-03-30 Gianluca Petrillo : Added utility to have compiler print a type
-   2018-03-30 Gianluca Petrillo : Removing template stream from ROOT vector streaming operators
-   2018-03-30 Gianluca Petrillo : Removing redundant definitions from Decomposer\_test
-   2018-03-23 Gianluca Petrillo : Fix dubious C++ practice.
-   2018-03-23 Gianluca Petrillo : Removing constexpr support for vectors (issue [\#19476](/redmine/issues/19476 "Necessary Maintenance: Workaround for GenVector classes not being constexpr (Accepted)"))
-   2018-03-23 Gianluca Petrillo : Work around Clang inability to resolve template types
-   2018-03-23 Gianluca Petrillo : Fix or dubious C++ practice (thanks Clang)
-   2018-03-23 Gianluca Petrillo : Explicitly deal with impossible flow to satisfy Clang
-   2018-03-23 Gianluca Petrillo : Infinite recursion bug fix (thanks Clang)
-   2018-03-23 Gianluca Petrillo : Removed or declared unused types and variables
-   2018-03-23 Gianluca Petrillo : C++17 fix: std::addressof() has now multiple signatures
-   2018-03-23 Gianluca Petrillo : Workaround for array initialisation bug, issue [\#19474](/redmine/issues/19474 "Necessary Maintenance: Workaround for Clang bug on array initialisation (Accepted)")
-   2018-03-22 Gianluca Petrillo : Update for C++17
-   2018-03-22 Lynn Garren : missed one
-   2018-03-22 Lynn Garren : ActiveAreaCalculator is a struct
-   2018-03-22 Lynn Garren : WireID is a struct
-   2018-03-22 Lynn Garren : GeometryData\_t is a struct
-   2018-03-22 Lynn Garren : AuxDetGeometryData\_t is a struct
-   2018-03-22 Lynn Garren : adding c2

larcoreobj v1\_23\_00
----------------------------------------------

-   2018-04-05 Lynn Garren : larcoreobj v1\_23\_00 for larsoft v06\_73\_00
-   2018-03-23 Gianluca Petrillo : Workaround to lack of support of constexpr in GenVector
-   2018-03-23 Gianluca Petrillo : Output operations of geometry and readout IDs are not templated
-   2018-03-22 Gianluca Petrillo : Updated Doxygen documentation
-   2018-03-22 Lynn Garren : adding c2

larbatch v01\_38\_02
--------------------------------------------

-   2018-04-05 Lynn Garren : larbatch v01\_38\_02 for larsoft v06\_73\_00
-   2018-04-03 Herbert Greenlee : Check whether input dataset contains files before submitting jobs.
-   2018-04-02 Herbert Greenlee : Tweak recursion types.
-   2018-04-02 Herbert Greenlee : Add recursion types.
-   2018-04-02 Herbert Greenlee : Fix project wildcard.
-   2018-03-31 Herbert Greenlee : Add –mtime option for work tarball creation.
-   2018-03-30 Herbert Greenlee : Give work tarball a name that includes the checksum of the content of the tarball.
-   2018-03-29 Herbert Greenlee : Merge branch ‘develop’ of ssh://cdcvs.fnal.gov/cvs/projects/larbatch into develop
-   2018-03-29 Herbert Greenlee : Fix validate-in-job error.
-   2018-03-29 Lynn Garren : larsoft v06\_72\_00
-   2018-03-29 Herbert Greenlee : Add support for \<targetsize\> with sam datasets.

larutils v1\_22\_01
------------------------------------------

-   2018-04-05 Lynn Garren : adding c2
-   2018-04-05 Lynn Garren : larutils v1\_22\_01 for larsoft v06\_73\_00
-   2018-04-03 Herbert Greenlee : Tweak uboone\_example\_data manifest version.
-   2018-04-02 Thomas Junk : try again with environment variables
-   2018-04-02 Thomas Junk : make longer timeouts
-   2018-04-02 Thomas Junk : fix some underscores
-   2018-04-02 Thomas Junk : fix some grep syntax
-   2018-04-02 Thomas Junk : add the platform specifier
-   2018-04-02 Thomas Junk : be superstitious with quotes
-   2018-04-02 Thomas Junk : add dune\_raw\_data and lbne\_raw\_data to the manifest. We had taken out their builds.
-   2018-03-29 Lynn Garren : do not pull source code
