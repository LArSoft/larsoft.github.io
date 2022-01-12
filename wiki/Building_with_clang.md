Building with Clang
============================================

-   **Table of contents**
-   [Building with Clang](#Building-with-Clang)
    -   [The absolute value of unsigned type ‘bool’ has no effect](#The-absolute-value-of-unsigned-type-bool-has-no-effect)
    -   [Call to ‘abs’ is ambiguous](#Call-to-abs-is-ambiguous)
    -   [Comparison is always true](#Comparison-is-always-true)
    -   [Inconsistent use of override](#Inconsistent-use-of-override)
    -   [hidden overloaded function](#hidden-overloaded-function)
    -   [Inconsistent header guard name](#Inconsistent-header-guard-name)
    -   [Unused identifiers](#Unused-identifiers)
        -   [Private field is not used](#Private-field-is-not-used)
    -   [Braces warnings](#Braces-warnings)
        -   [Missing braces warning](#Missing-braces-warning)
        -   [Braces around scalar initializer](#Braces-around-scalar-initializer)
    -   [Linker command failed](#Linker-command-failed)
    -   [C++17 standard changes](#C17-standard-changes)
        -   [No member named ‘mem\_fun\_ref’ in namespace ‘std’](#No-member-named-mem_fun_ref-in-namespace-std)

As of art `v2_10_00`, builds with Clang `v5_0_1` (`c2`) are supported. This page reflects the effort needed to build LArSoft and experiment code with `c2`.

The absolute value of unsigned type ‘bool’ has no effect
--------------------------------------------------------------------------------------------------------------------

**The compilation error**:

    dunetpc/dune/TrackingAna/ProtonIdentification_module.cc:351:13: error: taking the absolute value of unsigned type
    'bool' has no effect [-Werror,-Wabsolute-value]
    else if (abs(particle->PdgCode() == 11 )) ++TrueElectrons;
    ^

**The explanation**: the code has probably a bug: the author has probably taken the absolute value of the comparison result, while they should have compared the result of the absolute value. In the example above, positrons (`PdgCode() == -11`) won’t be counted (photons instead got lucky)
**What to do**: fix the parentheses

Call to ‘abs’ is ambiguous
--------------------------------------------------------

**The compilation error**:

    call to 'abs' is ambiguous

**The explanation**: Clang’s C++ library has no `std::abs()` for unsigned values; and why should it? The code has a bug: even if it does not realize it, the author is taking the absolute value of a value belonging to an unsigned type.
**What to do**: these are subtle and serious bugs: take a look at [Integral arithmetic in C and C++](Integral_arithmetic_in_C_and_C++) for extensive explanation and solutions

Comparison is always true
--------------------------------------------------------

**The compilation error**: TODO
**The explanation**: the code has probably a bug: even if it does not realize it, the author is testing that a value belonging to an unsigned type is non-negative.
**What to do**: these are subtle and serious bugs: take a look at [Integral arithmetic in C and C++](Integral_arithmetic_in_C_and_C++) for extensive explanation and solutions

Inconsistent use of `override`
----------------------------------------------------------------

**The compilation error**:

    'beginJob' overrides a member function but is not marked
    'override' [-Werror,-Winconsistent-missing-override]
    void beginJob();
    ^

(may be any function name: `reconfigure()`, `analyze()`, …)

**The explanation**:
The `override` keyword tells the compiler that we believe a function member of a class should be replacing (“overriding”) a virtual function with the same signature from its base class. In this way, if we have mistyped the function signature, the compiler can help us find out. Since this is a new C++11 feature, neither the compilers nor the C++ Standard require its use: after all, the code might predate 2011. But if a class does use `override` for one member function, Clang 5 (but not GCC 6) will assume that the code is modern and that *all* the overriding functions should therefore sport the `override` keyword.

**What to do**: add `override` to all the member functions that Clang suggests; verify that the others are not supposed to override anything is an added bonus. For example:

    virtual void beginJob();

becomes

    virtual void beginJob() override;

(`virtual` is optional in these contexts) and

    void name() const;

becomes

    void name() const override;

hidden overloaded function
----------------------------------------------------------

**The compilation error**:

    /home/garren/scratch/larsoft/v06_72_00_rc0/srcs/dunetpc/dune/daqinput35t/Sigmoidfilter_module.cc:67:8: error: 'lbne::Sigmoidfilter::beginRun' hides overloaded virtual function [-Werror,-Woverloaded-virtual]
    void beginRun(art::Run const& run);
    ^
    /products/art/v2_10_03/include/art/Framework/Core/EDProducer.h:80:5: note: hidden overloaded virtual function 'art::EDProducer::beginRun' declared here: type mismatch at 1st parameter ('art::Run &' vs 'const art::Run &')
    beginRun(Run&)
    ^

**The explanation**:
This indicates that there is a signature mismatch between the the new function and the original.

**What to do**:
Check the original header and make sure the signatures match.
For example:

    void beginRun(art::Run const& run);

becomes

    void beginRun(art::Run & run) override;

Inconsistent header guard name
------------------------------------------------------------------

**The compilation error**:

    srcs/sbndcode/sbndcode/Geometry/ChannelMapSBNDAlg.h:12:9: error: 'SBNDCODE_GEOMETRY_CHANNELMAPSBNDALG_H' is used as a header guard here,
    followed by #define of a different macro [-Werror,-Wheader-guard]
    #ifndef SBNDCODE_GEOMETRY_CHANNELMAPSBNDALG_H
    ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    srcs/sbndcode/sbndcode/Geometry/ChannelMapSBNDAlg.h:13:9: note: 'SBNDCODE_GEOMETYR_CHANNELMAPSBNDALG_H' is defined here;
    did you mean
    'SBNDCODE_GEOMETRY_CHANNELMAPSBNDALG_H'?
    #define SBNDCODE_GEOMETYR_CHANNELMAPSBNDALG_H
    ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    SBNDCODE_GEOMETRY_CHANNELMAPSBNDALG_H

**The explanation**: a “header guard” is a preprocessor directive that prevents the content of a header file to be seen by the compiler more than once; for example, imagine that your program uses `std::sqrt()`, and also uses another library that uses `std::log()`: chances are that both your code and that library are including `cmath` header. A header guard will look somehow like:

    #ifndef HEADER_FILE_PATH_AND_NAME_H
    #define HEADER_FILE_PATH_AND_NAME_H

    // ... all the content of the header goes here

    #endif // HEADER_FILE_PATH_AND_NAME_H

so that the first time the preprocessor `#include`s this header, since `HEADER_FILE_PATH_AND_NAME_H` hasn’t be seen yet, it defines it, and then goes through the code; the following times, `HEADER_FILE_PATH_AND_NAME_H` is already defined and the first `#ifndef` will have the all content of the header file skipped, jumping to after the matching `#endif`.
This works only as long as the symbol in the directives `#ifndef` and `#define` (in the example above, `HEADER_FILE_PATH_AND_NAME_H`) is the same. When a typographical mistake happens, or when one is changed and the other is not, this mechanism breaks and the header will be parsed each time it’s included, with various (nefarious) consequences.
**What to do**: copy one of the two versions of the identifier (possibly the one more up to date and without typos!) and paste it over the other one.

Unused identifiers
------------------------------------------

Clang 5 settings are more aggressive in recognising unused objects and types.

### Private field is not used

**The compilation error**:

    private field 'fDataMember' is not used

**The explanation**: a private field (data member) has a very limited scope, and it’s usually possible to determine when it’s not used. Clang 5 will aggressively do so, and emit an error when that happens. Private fields are essentially useless (exceptions apply, but they are for weird situations). Note that Clang 5 does not consider construction as use, meaning that if the variable is constructed in the [member initializer list of the constructor](http://en.cppreference.com/w/cpp/language/initializer_list), that alone does not stop the compiler from complaining.
**What to do**: remove the offending field. If the field is in a class in development and will be used in the close future, just comment it out. If the field is essential to stay for some reason, mark it with the attribute `[[gnu::unused]]`. If you chose to remove or comment out the field, you might need to do the same to its item in the member initializer list (and that might make more variables unused).

Braces warnings
------------------------------------

### Missing braces warning

**The compilation error**:

    In file included from /home/garren/devel/nusystematics/nusystematics/responsecalculators/MINERvARPAq0q3_ReWeight.hh:6:
    /home/garren/devel/nusystematics/nusystematics/responsecalculators/MINERvAq0q3Weighting_data.hh:8:5: error: suggest braces around initialization of subobject [-Werror,-Wmissing-braces]
    10.5798, 0.254032, 0.50834, 0.0571035, 0.129051, 0.875287};
    ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    {                                                        }

**The explanation**: Although this code is meant to be legal, clang 5.0.1 does not recognize the single brace construct as allowable.
**What to do**: Add the missing braces.
Example code with warning:

    static std::array<double, 6> const Gauss2DParams_CV = {
    10.5798, 0.254032, 0.50834, 0.0571035, 0.129051, 0.875287};

Example code without warning:

    static std::array<double, 6> const Gauss2DParams_CV = {{
    10.5798, 0.254032, 0.50834, 0.0571035, 0.129051, 0.875287}};

### Braces around scalar initializer

**The compilation error**:

    /home/garren/devel/nusystematics/nusystematics/systproviders/GENIEReWeightEngineConfig.cc:169:14: error: braces around scalar initializer [-Werror,-Wbraced-scalar-init]
    QEmd, {{kXSecTwkDial_NormCCQE}}, "xsec_ccqe_axFF",
    ^~~~~~~~~~~~~~~~~~~~~~~

**The explanation**: Although this code is meant to be legal, clang 5.0.1 does not recognize the double brace around a single initializer as allowable.
**What to do**: Remove the extra braces.

Linker command failed
------------------------------------------------

**The compilation error**:

    CMakeFiles/dune_DataPrep_Service_ThresholdNoiseRemovalService_service.dir/ThresholdNoiseRemovalService_service.cc.o: In function `geo::GeometryCore::NSiblingElements(readout::TPCsetID const&) const':
    /cvmfs/larsoft.opensciencegrid.org/products/larcorealg/v1_19_00/include/larcorealg/Geometry/GeometryCore.h:4776: undefined reference to `geo::GeometryCore::NTPCsets(geo::CryostatID const&) const'
    CMakeFiles/dune_DataPrep_Service_ThresholdNoiseRemovalService_service.dir/ThresholdNoiseRemovalService_service.cc.o: In function `geo::GeometryCore::NSiblingElements(readout::ROPID const&) const':
    /cvmfs/larsoft.opensciencegrid.org/products/larcorealg/v1_19_00/include/larcorealg/Geometry/GeometryCore.h:4979: undefined reference to `geo::GeometryCore::NROPs(readout::TPCsetID const&) const'
    CMakeFiles/dune_DataPrep_Service_ThresholdNoiseRemovalService_service.dir/ThresholdNoiseRemovalService_service.cc.o: In function `geo::GeometryCore::IncrementID(readout::TPCsetID&) const':
    /cvmfs/larsoft.opensciencegrid.org/products/larcorealg/v1_19_00/include/larcorealg/Geometry/GeometryCore.h:5500: undefined reference to `geo::GeometryCore::NTPCsets(geo::CryostatID const&) const'
    clang-5.0: error: linker command failed with exit code 1 (use -v to see invocation)

**The explanation**: A library is missing from the link list due to differences in the build.
**What to do**:
Add larcorealg\_Geometry to the link list in the appropriate CMakeLists.txt file. So far, the only library we have found to be missing is larcorealg\_Geometry.

C++17 standard changes
------------------------------------------------

Some functions have been added, some deprecated functions and a keyword have been removed. All this may cause errors.

### No member named ‘mem\_fun\_ref’ in namespace ‘std’

**The compilation error**:

    no member named 'mem_fun_ref' in namespace 'std'

**The explanation**: `std::mem_fun_ref()` and `std::mem_fun()` have been deprecated in C++11 and removed in C++17; they are replaced by `std::mem_fn()`.
**What to do**: replacing the removed functions with `std::mem_fn()` is usually enough. They are all from the `functional` header.
