# Update to art v3_02



With [art 3.02.00](https://cdcvs.fnal.gov/redmine/projects/art/wiki/Series_302), art has been split into art and art_root_io. This will allow the use of other IO options in the future.

## Migration script

art_root_io contains a migration script, $ART_ROOT_IO_DIR/tools/migration/art-3.02-migration. Please make sure you are using art_root_io v1_00_04 or later. Earlier versions contained a bug. **This script is designed to work with a single directory designation, it does not accept wildcards.**

## Products

art 3.02 has a new product stack, which includes boost v1_69_0 and root v6_16_00.

Updates to products used by larsoft and the experiments:

-   artg4tk v09_04_00
-   marley v1_1_0a
-   pandora v03_11_01a
-   protobuf v3_5_2a
-   tensorflow v1_3_0e
-   wirecell v0_10_9a
-   systematicstools v00_03_00
-   nusystematics v00_03_00
-   nutools v2_29_00
-   nusimdata v1_17_00
-   range v3_0_4_0
-   ifdh_art v2_08_00
-   artdaq_core v3_04_13
-   art v3_02_03 (s81)
-   art_root_io v1_00_03
    -   In many cases the dependency on art is now a dependency on art_root_io.
-   canvas_root_io v1_03_03
-   gallery v1_12_03
-   python v2_7_15a
-   caffe NO LONGER IN USE
-   cetbuildtools v7_11_00 or later is required for boost cmake support

## Problems encountered

### Unrecognized GENIE header

nutools v2_29_00 is built with GENIE v2, but the nutools headers have been designed to work with either GENIE v2 or GENIE v3. They default to looking for GENIE v3.

The symptom:

    In file included from /products/nutools/v2_29_00/include/nutools/NuReweight/GENIEReweight.h:14:0,
                     from /products/nutools/v2_29_00/include/nutools/NuReweight/art/NuReweight.h:8,
                     from /home/garren/scratch/larsoft/v08_14_00_01/srcs/larsim/larsim/EventWeight/Calculators/GenieWeightCalc.cxx:14:
    /products/nutools/v2_29_00/include/nutools/NuReweight/ReweightLabels.h:13:12: fatal error: RwFramework/GSyst.h: No such file or directory
       #include "RwFramework/GSyst.h"
                ^~~~~~~~~~~~~~~~~~~~~
    compilation terminated.

The solution:  
Compile with -DGENIE_PRE_R3.

    diff --git a/CMakeLists.txt b/CMakeLists.txt
    index a0f22676..12a7b0c0 100644
    --- a/CMakeLists.txt
    +++ b/CMakeLists.txt
    @@ -38,6 +38,7 @@ cet_set_compiler_flags(DIAGS CAUTIOUS
       ALLOW_DEPRECATIONS
       EXTRA_FLAGS -pedantic -Wno-unused-local-typedefs -Wno-unused-variable
     )
    +add_definitions(-DGENIE_PRE_R3)

     cet_report_compiler_flags()

### EDProducer no longer has a default constructor

Symptom 1: The default constructor is called explicitly.

    [100%] Building CXX object larwirecell/larwirecell/Modules/CMakeFiles/larwirecell_Modules_WireCellToolkit_module.dir/WireCellToolkit_module.cc.o
    /home/garren/scratch/larsoft/v08_14_00_01/srcs/larwirecell/larwirecell/Modules/WireCellToolkit_module.cc: In constructor ‘wcls::WireCellToolkit::WireCellToolkit(const fhicl::ParameterSet&amp;)’:
    /home/garren/scratch/larsoft/v08_14_00_01/srcs/larwirecell/larwirecell/Modules/WireCellToolkit_module.cc:32:18: error: ‘art::EDProducer::EDProducer()’ is deprecated: 

    art warning: The default constructor for EDProducer has been deprecated.
                 For any module that calls createEngine, it is an error to use
                 the default constructor. Please call the non-default constructor
                 as the first argument in the initialization list of your module:

                   MyProducer(ParameterSet const&amp; ps) : art::EDProducer{ps}, ... {} // or
                   MyProducer(Parameters const&amp; ps) : art::EDProducer{ps}, ... {}

        [-Werror=deprecated-declarations]
         : EDProducer()
                      ^
    In file included from /home/garren/scratch/larsoft/v08_14_00_01/srcs/larwirecell/larwirecell/Modules/WireCellToolkit_module.cc:2:0:
    /products/art/v3_02_03/include/art/Framework/Core/EDProducer.h:31:55: note: declared here
                      "art::EDProducer{ps}, ... {}\n\n")]] EDProducer() = default;
                                                           ^~~~~~~~~~

  
Solution 1:

    diff --git a/larwirecell/Modules/WireCellToolkit_module.cc b/larwirecell/Modules/WireCellToolkit_module.cc
    index d630f14..6a64fa5 100644
    --- a/larwirecell/Modules/WireCellToolkit_module.cc
    +++ b/larwirecell/Modules/WireCellToolkit_module.cc
    @@ -29,7 +29,7 @@ namespace wcls {


     wcls::WireCellToolkit::WireCellToolkit(fhicl::ParameterSet const&amp; pset)
    -    : EDProducer()
    +    : EDProducer(pset)
     {
         this->reconfigure(pset);
     }

Symptom 2: The default constructor is implied.

    /home/garren/devel/systematicstools/systematicstools/module/SystToolsEventResponse_module.cc: In constructor ‘SystToolsEventResponse::SystToolsEventResponse(const fhicl::ParameterSet&amp;)’:
    /home/garren/devel/systematicstools/systematicstools/module/SystToolsEventResponse_module.cc:62:42:error: ‘art::EDProducer::EDProducer()’ is deprecated: 

    art warning: The default constructor for EDProducer has been deprecated.
                 For any module that calls createEngine, it is an error to use
                 the default constructor. Please call the non-default constructor
                 as the first argument in the initialization list of your module:

                   MyProducer(ParameterSet const&amp; ps) : art::EDProducer{ps}, ... {} // or
                   MyProducer(Parameters const&amp; ps) : art::EDProducer{ps}, ... {}

        [-Werror=deprecated-declarations]
         : syst_providers{}, sp_config_hash("") {
                                              ^
    In file included from /home/garren/devel/systematicstools/systematicstools/module/SystToolsEventResponse_module.cc:16:0:
    /products/art/v3_02_03/include/art/Framework/Core/EDProducer.h:31:55: note: declared here
                      "art::EDProducer{ps}, ... {}\n\n")]] EDProducer() = default;
                                                           ^~~~~~~~~~

  
Solution 2:

    diff --git a/systematicstools/module/SystToolsEventResponse_module.cc b/systematicstools/module/SystToolsEventResponse_module.cc
    index 1816b71..9153b33 100644
    --- a/systematicstools/module/SystToolsEventResponse_module.cc
    +++ b/systematicstools/module/SystToolsEventResponse_module.cc
    @@ -59,7 +59,7 @@ private:
     };

     SystToolsEventResponse::SystToolsEventResponse(fhicl::ParameterSet const &amp;p)
    -    : syst_providers{}, sp_config_hash("") {
    +    : EDProducer(p), syst_providers{}, sp_config_hash("") {

       if (!p.has_key("generated_systematic_provider_configuration")) {
         throw no_systprovider_key()

### Missing root library

The symptom:

    [ 68%] Linking CXX shared library ../../../lib/libtest_Algorithms_TotallyCheatTracks_ParticleMaker_m
    odule.so
    CMakeFiles/test_Algorithms_TotallyCheatTracks_ParticleMaker_module.dir/ParticleMaker_module.cc.o: In
     function `lar::example::tests::ParticleMaker::produce(art::Event&amp;)':
    /products/root/v6_16_00/Linux64bit+3.10-2.17-e17-prof/include/TVector3.h:40: undefined reference to 
    `TObject::~TObject()'
    CMakeFiles/test_Algorithms_TotallyCheatTracks_ParticleMaker_module.dir/ParticleMaker_module.cc.o: In
     function `TObject::TObject(TObject const&amp;)':
    /products/root/v6_16_00/Linux64bit+3.10-2.17-e17-prof/include/TObject.h:264: undefined reference to 
    `TObject::fgObjectStat'
    ....

    [ 98%] Linking CXX shared library ../../../lib/libtest_Algorithms_TotallyCheatTracks_DumpCheatTracks_module.so
    CMakeFiles/test_Algorithms_TotallyCheatTracks_DumpCheatTracks_module.dir/DumpCheatTracks_module.cc.o: In function `__static_initialization_and_destruction_0':
    /home/garren/scratch/playground/testbuild/build/root/v6_16_00/Linux64bit+3.10-2.17-e17-prof/include/TVersionCheck.h:42: undefined reference to `TVersionCheck::TVersionCheck(int)'

The solution:  
Add ${ROOT_CORE} to the appropriate link list in CMakeLists.txt

### Undefined reference reference to \`typeinfo for art::TFileService'

The symptom:

    [ 11%] Linking CXX shared library ../../../../lib/libubreco_ShowerReco_ClusterMerging_CMToolBase.so
    CMakeFiles/ubreco_ShowerReco_ClusterMerging_CMToolBase.dir/CMManagerBase.cxx.o: In function `__static_initialization_and_destruction_0':
    /products/art/v3_02_03/include/art/Utilities/SharedResource.h:15: undefined reference to `typeinfo for art::TFileService'
    CMakeFiles/ubreco_ShowerReco_ClusterMerging_CMToolBase.dir/CMatchManager.cxx.o: In function `__static_initialization_and_destruction_0':
    /products/art/v3_02_03/include/art/Utilities/SharedResource.h:15: undefined reference to `typeinfo for art::TFileService'
    CMakeFiles/ubreco_ShowerReco_ClusterMerging_CMToolBase.dir/CMergeManager.cxx.o: In function `__static_initialization_and_destruction_0':
    /products/art/v3_02_03/include/art/Utilities/SharedResource.h:15: undefined reference to `typeinfo for art::TFileService'

The solution:  
add ${ART_ROOT_IO_TFILESERVICE_SERVICE} to the appropriate link list

### fhicl no longer recognizes boost::any

std::any replaces boost::any when compiling with std=c++17. std::any is identical to boost::any.

The symptom:

    Running 1 test case...
    unknown location(0): fatal error: in "SimpleStatusTest": cet::coded_exception<fhicl::error,
     &amp;fhicl::detail::translate[abi:cxx11]>: ---- Type mismatch BEGIN

      Unsuccessful attempt to convert FHiCL parameter 'BadChannels' to type 'std::vector<unsigned int, std::allocator<unsigned int> >'.

      [Specific error:]
      bad any_cast

    ---- Type mismatch END

The solution:

    diff --git a/test/Filters/SimpleChannelStatus_test.cxx b/test/Filters/SimpleChannelStatus_test.cxx
    index d3da020..a0e3142 100644
    --- a/test/Filters/SimpleChannelStatus_test.cxx
    +++ b/test/Filters/SimpleChannelStatus_test.cxx
    @@ -27,8 +27,7 @@
     #include "fhiclcpp/ParameterSet.h"
     #include "fhiclcpp/coding.h"

    -// Boost libraries
    -#include <boost/any.hpp>
    +#include <any>  // std::any replaces boost::any

     // C/C++ standard library
     #include <iostream>
    @@ -46,7 +45,7 @@ namespace std {
         fhicl::detail::ps_sequence_t result;
         result.reserve(s.size());
         std::transform(s.begin(), s.end(), std::inserter(result, result.end()),
    -      [](T const&amp; value) { return boost::any(fhicl::detail::encode(value)); }
    +      [](T const&amp; value) { return std::any(fhicl::detail::encode(value)); }
           );
         return result;
       } // encode(set<T>)
    @@ -94,7 +93,7 @@ class StatusConfiguration {
       fhicl::ParameterSet CreateConfiguration() const {
         fhicl::ParameterSet cfg;

    -    boost::any any {fhicl::detail::encode(fNoisyChannels)};
    +    std::any any {fhicl::detail::encode(fNoisyChannels)};
         cfg.put("NoisyChannels", fNoisyChannels);
         cfg.put("BadChannels", fBadChannels);

### Boost date_time

The symptom:

    /home/garren/scratch/larsoft/v08_15_00/srcs/ubraw/ubraw/BeamDAQ/beamRun.cpp:71:66: error: no matchin
    g function for call to ‘boost::date_time::subsecond_duration<boost::posix_time::time_duration, 10000
    00>::subsecond_duration(double)’
         tstart=tstart-microseconds(fTimeOffsetMap[fBeamLine[i]]*1000.)-microseconds(fTimePaddingMap[fBe
    amLine[i]]*1000.);

The solution:

With Boost 1.69, it is now a requirement that the argument to microseconds(…) be an integral type—an int, unsigned, whatever. With Boost 1.66, which is what art 3.01 used, a floating-point number could be provided, and it would be implicitly cast to a 64-bit integer. It is now necessary for that cast to be explicit.

We have used an explicit cast to int in the feature branch, but we could have chosen long int, or std::int64_t. Since this problem is in MicroBooNE code (ubraw), someone from MicroBooNE should review and decide what they think is appropriate.

### MixFilter

The symptom:

    [ 20%] Building CXX object ubevt/ubevt/DataOverlay/DataOverlayMixer/CMakeFiles/ubevt_DataOverlay_DataOverlayMixer_RetrieveOverlayDataMicroBooNE_module.dir/RetrieveOverlayDataMicroBooNE_module.cc.o
    In file included from /products/art/v3_02_03/include/art/Framework/Core/ModuleMacros.h:26:0,
                     from /home/garren/scratch/larsoft/v08_15_00/srcs/ubevt/ubevt/DataOverlay/DataOverlayMixer/RetrieveOverlayDataMicroBooNE_module.cc:14:
    /home/garren/scratch/larsoft/v08_15_00/srcs/ubevt/ubevt/DataOverlay/DataOverlayMixer/RetrieveOverlayDataMicroBooNE_module.cc: In function ‘std::unique_ptr<fhicl::ConfigurationTable> allowed_configuration(const string&amp;)’:
    /home/garren/scratch/larsoft/v08_15_00/srcs/ubevt/ubevt/DataOverlay/DataOverlayMixer/RetrieveOverlayDataMicroBooNE_module.cc:434:68: error: wrong number of template arguments (1, should be 2)
     DEFINE_ART_MODULE(art::MixFilter<mix::RetrieveOverlayDataMicroBooNE>)
                                                                        ^

The solution is documented on the [art 3.02 breaking changes](https://cdcvs.fnal.gov/redmine/projects/art/wiki/302_breaking_changes#MixFilterltDetail-RootIOPolicygt-declaration) page

### CLHEP 2.4

This is the first release of larsoft to use CLHEP 2.4. MixMax is now the default random number generator in HepRandom. Previously the default was JamesRandom. Make sure you set the random number generator instead of using the default.

### Construction of unused modules

*art* 3.02 unnecessarily constructs modules that have been configured but that are not included on any path. This bug has been document in issue \#22407. The work around is to provide the `'--prune-config'` `lar` program option (e.g. 'lar -c \<my_config.fcl\> —prune-config …').

A symptom of the problem:

    %MSG-s ArtException:  ClusterCrawler:cccluster@Construction 17-Apr-2019 
    18:47:13 CDT ModuleConstruction
    cet::exception caught in art
    ---- Can't find key BEGIN
       CalDataModuleLabel
    ---- Can't find key END
    %MSG

### Using ROOT in the constructors of services and modules

Due to the splitting of *art* into *art* and *art_root_io*, the framework's custom setup of ROOT occurs later than it used to. The consequence is that:

-   **Anyone wanting to use ROOT inside of the constructors of their services, modules, or sources should first call `TH1::AddDirectory(kFALSE)`**.

The consequence to not doing so is that some ROOT objects can be unintentionally registered with ROOT's memory cleanup system, thus deleting objects whenever a file goes out of scope, resulting in a hard-to-diagnose segmentation violation.
