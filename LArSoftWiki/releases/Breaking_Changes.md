# Breaking Changes

This is an attempt to track all the “breaking” changes which require associated updates to experiment code.

## LArSoft v10_20_00 with geant4 v4_11_2_p02

- See the [v10_20_00 Release Notes](https://github.com/LArSoft/larsoft/releases/tag/v10_20_00)
- Required changed are minimal.
- However, LegacyLArG4 has been removed.
- Note that fcl files depending directly or indirectly on LegacyLArG4/largeantmodules.fcl will no longer work.


## larsoft v09_77_00 - SpacePointSolver has new configurable parameter

See [larreco PR 58](https://github.com/LArSoft/larreco/pull/58)

Add MinNHits parameter to SpacePointSolver.fcl.  The default value of MinNHits is 20.  This number was previously hardcoded in 
`larreco/SpacePointSolver/SpacePointSolver_module.cc`


## larsoft v09_63_00 - remove deprecated code in larcorealg

- See the [9-20-2022 presentation](https://indico.fnal.gov/event/56265/contributions/251002/attachments/160060/210660/larsoft-coordination-2022-09-20.pdf)
- PRs and feature branches are provided for the experiments.
- argoneut
  -  argoneutcode@feature/knoepfel_geometry_api_changes
- uboone
  - ubana@feature/knoepfel_geometry_api_changes 
  - ubcv@feature/knoepfel_geometry_api_changes
  - ubreco@feature/knoepfel_geometry_api_changes
- dune
  - DUNE/protoduneana#11
  - DUNE/dunesim#25
  - DUNE/dunereco#33 
  - DUNE/duneprototypes#15 
  - DUNE/duneopdet#18 
  - DUNE/dunecore#36 
  - DUNE/duneana#19"
- icarus
  - SBNSoftware/icaruscode#474 
  - SBNSoftware/icarusalg#61
- sbnd
  - SBNSoftware/sbndcode#307
- sbn
  - SBNSoftware/sbncode#309 


## larsoft v09_52_00 - larpandora built with cetmodules

- Some headers will need to be included where used.
- Some libraries will need to be added to link lists
- Unless find_package(larpandora) is used, define the libraries:
```
cet_find_library( PANDORASDK NAMES PandoraSDK PATHS ENV PANDORA_LIB NO_DEFAULT_PATH)
cet_find_library( PANDORAMONITORING NAMES PandoraMonitoring PATHS ENV PANDORA_LIB NO_DEFAULT_PATH)
```
#### undefined references to TFileDirectory and RootDirectorySentry
```
/cvmfs/larsoft.opensciencegrid.org/products/art_root_io/v1_08_03/include/art_root_io/TFileDirectory.h:88: undefined reference to `art::detail::RootDirectorySentry::~RootDirectorySentry()'
```
add
```
  art_root_io::TFileService_service
  art_root_io::tfile_support
```

## larsoft v09_50_00 with cetmodules 3.12.00

- Some headers are no longer supplied "for the convenience of upstream users".  These must be included where used.
  - `#include "larcore/CoreUtils/ServiceUtil.h"` for `lar::providerFrom`
  - `#include "art/Framework/Services/Registry/ServiceHandle.h"` for `art::ServiceHandle`
  - `#include "larcore/Geometry/Geometry.h"` for `geo::Geometry`
  - `#include "art/Framework/Principal/Run.h"`
- The larcorealg test headers  now have larcorealg in their path
  - `test/Geometry/geometry_unit_test_base.h` has been moved to `larcorealg/TestUtils/geometry_unit_test_base.h`
  - All other `test/Geometry/` headers are now `larcorealg/test/Geometry/`
- `lardataobj_OpticalDetectorData` was unnecessary and effectively empty.  It can safely be remove from link lists.


## larsoft v09_48_00 with wirecell v0_18_0

- **When was committed**: [v09_48_00](https://github.com/LArSoft/larsoft/releases/tag/v09_48_00)
- **Motivation**:  wirecell 0.18.0 with new FFT API
- **Affects**: user or experiment code  
- **Failure when not fixed**: cmake error
```
CMakeFiles/WireCellubsim.dir/ReweightedDepoTransform.cxx.o: In function `boost::stacktrace::frame::name[abi:cxx11]() const':
/products/boost/v1_75_0/Linux64bit+3.10-2.17-e20-prof/include/boost/stacktrace/detail/frame_unwind.ipp:94: undefined reference to `dladdr'
CMakeFiles/WireCellubsim.dir/ReweightedDepoTransform.cxx.o: In function `boost::stacktrace::detail::location_from_symbol::location_from_symbol(void const*)':
/products/boost/v1_75_0/Linux64bit+3.10-2.17-e20-prof/include/boost/stacktrace/detail/location_from_symbol.hpp:31: undefined reference to `dladdr'
```
- **Fix**:  add ${CMAKE_DL_LIBS} to the appropriate link list

## larsoft v09_43_00

- **When was committed**: [v09_43_00](ReleaseNotes094300)  
- **Motivation**: build the larsoftobj packages with cetmodules  
- **Affects**: user or experiment code  
- **Failure when not fixed**: cmake error
```
    635: CMake Error at /cvmfs/larsoft.opensciencegrid.org/products/cetmodules/v3_06_01/Modules/private/CetOverrideFindPackage.cmake:174 (_find_package):
    636:   Found package configuration file:
    637: 
    638:     /cvmfs/larsoft-ib.opensciencegrid.org/LArSoft/LArSoft_custom_slf7_e20_prof_20220223_171203/localProducts_LArSoft_LArSoft_lar_ci_e20_prof/lardataobj/v09_05_01/slf7.x86_64.e20.prof/lib/lardataobj/cmake/lardataobjConfig.cmake
    639: 
    640:   but it set lardataobj_FOUND to FALSE so package "lardataobj" is considered
    641:   to be NOT FOUND.  Reason given by package:
    642: 
    643:   The following imported targets are referenced, but are missing:
    644:   larcoreobj::SummaryData
```
- **Fix**:  
  - Use this call order in the top level CMakeLists.txt file.
```
    find_ups_product(larcoreobj)
    find_ups_product(larcorealg)
    find_ups_product(lardataobj)
    find_ups_product(lardataalg)
```

## mrb 5

**When was committed**: [v09_31_00](ReleaseNotes093100)  
**Motivation**: mrb 5 and cetbuildtools 8 are required when building with art 3.09 and later  
**Fix**: Please see the [Comments about mrb 5 and cetbuildtools 8](Comments_about_mrb_5_and_cetbuildtools_8) if you have problems.

## Refactor EventWeight interface to GENIE v3

**When was committed**: [v09_21_00](ReleaseNotes092100)  
**Motivation**: Breaking changes were introduced in GENIE v3 which made the previous implementation of GenieWeightCalc incompatible. Slides [here](https://indico.fnal.gov/event/47983/contributions/209278/attachments/140332/176331/genie_v3_reweight_larsoft.pdf)  
**Fix**: See the [technote](https://cdcvs.fnal.gov/redmine/attachments/63586/genieweightcalc_technote.pdf)

## root v6_22_06a typo

**When was committed**: [v09_16_00](ReleaseNotes091600)  
**Motivation**: update larsoft to use art 3.06  
**Affects**: user or experiment code  
**Failure when not fixed**: Compilation errors or warnings.

    In file included from /products/root/v6_22_06a/Linux64bit+3.10-2.17-e19-p383b-prof/include/TPaveStats.h:16,
                     from /home/garren/scratch/larsoft/uboone/srcs/ubana/ubana/Calibrations/Lifetime_module.cc:67:
    /products/root/v6_22_06a/Linux64bit+3.10-2.17-e19-p383b-prof/include/TVirtualPaveStats.h:33:43: error: extra ‘;’ [-Werror=pedantic]
        virtual TObject *GetParent() const = 0;;
                                               ^
                                               -
    cc1plus: all warnings being treated as errors

  
**Fix**: remove the -pedantic flag in the affected subdirectory

    diff --git a/ubana/Calibrations/CMakeLists.txt b/ubana/Calibrations/CMakeLists.txt
    index 9299a7dd..e2bad7c3 100644
    --- a/ubana/Calibrations/CMakeLists.txt
    +++ b/ubana/Calibrations/CMakeLists.txt
    @@ -1,4 +1,6 @@

    +cet_remove_compiler_flags(CXX -pedantic)
    +
     add_subdirectory(Optical)

     art_make( BASENAME_ONLY

  
**Contact**: The Scisoft Team

## larrecodnn new directory structure

**When was committed**: [v09_13_00](ReleaseNotes091300)  
**Motivation**: separate tf, keras, and trtis  
**Affects**: user or experiment code (rarely)  
**Fix**: run LArRecodnnNewDirs.sh  
**Contact**: The Scisoft Team

## Geometry configuration check

**When was committed**: [v09_12_00](ReleaseNotes091200)  
**Motivation**: nutools EventDisplayBase is now in nuevdb  
**Affects**: user or experiment code  
**Failure when not fixed**: Compilation or linking errors.  
**Fix**: use feature/gp_issue24328  
**More information**: [larcore PR 6](https://github.com/LArSoft/larcore/pull/6), \#24328, and [Geometry configuration check breaking change documentation](Geometry_configuration_check_breaking_change_documentation)  
**Contact**: Gianluca Petrillo

## larsoft v09_00_00

**When was committed**: [v09_00_00](ReleaseNotes090000)  
**Contact**: The Scisoft Team

## Update to nutools v3_05_00 with nuevdb

**When was committed**: [v08_36_00](ReleaseNotes083600)  
**Motivation**: nutools EventDisplayBase is now in nuevdb  
**Affects**: user or experiment code  
**Failure when not fixed**: Compilation or linking errors.  
**Fix**: run UseNuevdb.sh (found in nutools v3_05_00 or later)  
**Contact**: The Scisoft Team

## Using boost v1_70_0

**When was committed**: [v08_36_00](ReleaseNotes083600)  
**Motivation**: updated dependency from art  
**Affects**: user or experiment code  
**Failure when not fixed**: cmake and compilation errors  
**Fix**: use cetbuildtools v7_14_00 or later  
**Contact**: The Scisoft Team

## Update to art v3_03_01

**When was committed**: [v08_36_00](ReleaseNotes083600)  
**Motivation**: Move from art v3_02 to art v3_03  
**Affects**: user or experiment code  
**Failure when not fixed**: Compilation or linking errors.  
**Fix**: see the [art series 3.03](https://cdcvs.fnal.gov/redmine/projects/art/wiki/Series_303) page for art breaking changes  
**Contact**: The Scisoft Team

## Lengthen raw::RawDigit fSamples

**When was committed**: [v08_35_01](ReleaseNotes083501)  
**Motivation**: See https://indico.fnal.gov/event/22319/contribution/2/material/slides/0.pdf  
**Affects**: Certain loops that did not use an explicit unsigned int.  
**Failure when not fixed**: Compilation errors.

    /home/garren/scratch/larsoft/v08_35_01/srcs/ubcore/ubcore/BurstNoiseMetrics/BurstNoiseMetrics_module.cc: 
    In member function ‘virtual void BurstNoiseMetrics::produce(art::Event&amp;)’:
    /home/garren/scratch/larsoft/v08_35_01/srcs/ubcore/ubcore/BurstNoiseMetrics/BurstNoiseMetrics_module.cc:162:20: 
    error: comparison between signed and unsigned integer expressions 
    [-Werror=sign-compare]
        for(int k = 0; k < allrawdigits_vec.at(1).Samples(); k++){ 
    //UberWaveform Calculations
                       ~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

  
**Fix**:

    -  for(int k = 0; k < allrawdigits_vec.at(1).Samples(); k++){   //UberWaveform Calculations
    +  for(unsigned int k = 0; k < allrawdigits_vec.at(1).Samples(); k++){  //UberWaveform Calculations

  
**Contact**: The Scisoft Team

## Removal of Calorimetry hard-coded values

**When was committed**: [v08_33_00](ReleaseNotes083300)  
**Motivation**: hard-coded values conflict with ICARUS detector (see issue \#23457)  
**Affects**: users of LArSoft `Calorimetry` module  
**Failure when not fixed**: possible differences in calorimetry of badly reconstructed tracks  
**Fix**: none needed; to restore the old behaviour, add to `Calorimetry` module configuration: `NotOnTrackZcut: -100.0`  
**Contact**: Gianluca Petrillo

## artdaq_core calls clock_gettime

**When was committed**: [v08_31_00](ReleaseNotes083100)  
**Motivation**: Use artdaq_core 3.05.02  
**Affects**: Any user code that builds with artdaq_core v3_05_00 or later.  
**Failure when not fixed**: Compilation or linking errors.  
**Fix**: link with `${ARTDAQ-CORE_UTILITIES}`, which is defined in artdaq_coreConfig.cmake  
**Contact**: The Scisoft Team

## macOS missing TGX11

**When was committed**: [v08_31_00](ReleaseNotes083100)  
**Motivation**: new release of root to resolve an I/O rule problem  
**Affects**: user code initializing X11 graphics on macOS.  
**Failure when not fixed**: Compilation or linking errors.

```cpp

    /Users/macdev/workspace/build-larsoft/BUILDTYPE/debug/QUAL/s91-c2/label1/swarm/label2/OSX-10.14/build/larpandora/v08_07_17-buildFW/src/larpandora/RootGraphics/RootGraphicsEnabler.cxx:24:10: fatal error: 'TGX11.h' file not found
    #include "TGX11.h" // this header currently triggers a compiler error,
             ^~~~~~~~~
    1 error generated.
```

  
**Fix**:  
With root v6_18_xx, macOS builds must use the native macOS COCO graphics interface.  
Use the root generic graphics initialization instead of explicit X11 initialization.

```diff

    @@ -17,7 +17,6 @@
     #include "TApplication.h"
     #include "TRootApplication.h"
     #include "TGClient.h"
    -#include "TGX11.h"
     #include "TRint.h"
     #include "TSystem.h"
     #include "TSysEvtHandler.h"
    @@ -50,9 +49,7 @@ namespace evdb{
         else {
           gROOT->SetBatch(kFALSE);
           if (gClient==0) {
    -       gSystem->Load("libGX11.so");
    -       gVirtualX = new TGX11("X11","X11 session");
    -       new TGClient(getenv("DISPLAY"));
    +        app->InitializeGraphics();
           }
         }
```

  
**Contact**: The Scisoft Team

## root IO rules

-   With root v6_16_00, I/O rules were broken. This is a problem when reading certain old data files (see \#23013).
-   A working fix for the problem is available in root v6_18_04.
-   Certain I/O rules involving Double32_t must be removed from classes_def.xml files if they exist. This has been done for larsoft v08_31_00. Please see \#23013 for more information.

## code cleanup

**When was committed**: [v08_28_01](ReleaseNotes082801)  
**Motivation**: remove unnecessary headers and link time libraries  
**Affects**: user code  
**Failure when not fixed**: Compilation or linking errors.  
**Fix**:  
Add appropriate headers to the code. It may also be necessary to add libraries to the cmake link list. If available, use feature/knoepfel_rm_unused_headers.

## genie v3_00_06

**When was committed**: [v08_28_00](ReleaseNotes082800)  
**Motivation**: upgrade to genie v3_00_06.  
**Affects**: user code using `GENIE`.  
**Failure when not fixed**: Compilation or linking errors.  
**Fix**:  
Run UseGenie3.sh (found in nugen v1_03_00 and later). This script will update the headers.  
There is NO one-to-one mapping from genie v2 libraries to genie v3 libraries. Please use the provided feature branch, feature/team_for_v08_28_00.  
The genie_xsec qualifiers have also changed.

## nutools v3_02_00

**When was committed**: [v08_27_00](ReleaseNotes082700)  
**Motivation**: separate GEANT4 interface from the rest of nutools.  
**Affects**: user code using `G4Base`, `MagneticField`, and `ParticleNavigation`.  
**Failure when not fixed**: Compilation or linking errors.  
**Fix**:  
Run UseNuG4.sh and add `find_ups_product(nug4)` to the top level CMakeLists.txt file.  
The migration assistants is available after a setup of nutools v3_02_00 or later.  
**Contact**: The Scisoft Team

## nutools v3_00_00

**When was committed**: [v08_22_00](ReleaseNotes082200)  
**Motivation**: separate GENIE interface from the rest of nutools. Also split NuRandomService into its own package.  
**Affects**: user code calling `GENIEHelper` and `NuRandomService`.  
**Failure when not fixed**: Compilation or linking errors.  
**Fix**:  
For packages using `NuRandomService`, run UseNuRandom.sh  
For packages using GENIE, run UseNuGen.sh  
Both migration assistants are available after a setup of nutools v3_00_00 or later.  
**Contact**: The Scisoft Team

## New PhotonVisibilityService features

**When was committed**: [v08_15_00](ReleaseNotes081500)  
**Motivation**: allow exploitation of detector symmetries to reduce the size of the photon visibility libraries.  
**Affects**: user code calling `phot::PhotonVisibilityService`, plus code using some more hidden LArSoft utility for managing voxelized volumes.  
**Failure when not fixed**: Compilation or linking errors.  
**Fix**: Several different cases are possible. Please see the *additional material* slides in [the presentation of the new feature](https://indico.fnal.gov/event/20409/contribution/2/material/slides/0.pdf) at [LArSoft coordination meeting on April 9, 2019](https://indico.fnal.gov/event/20409) .  
**Contact**: Gianluca Petrillo

## Remove deprecated members and methods from recob::Track

**When was committed**: [v07_12_00](ReleaseNotes071200)

New recob::Track interface introduced in early 2017. This came with the deprecation of several outdated features. In many cases such features were maintained for backwards compatibility: dQ/dx (fdQdx data member, NumberdQdx and DQdxAtPoint methods), NumberFitMomentum method, various methods based on TVector3 or TMatrixD, old constructors. After almost 2 years it’s time to cleanup the interface from the old junk (indeed all those concepts are not actively used anymore, still they are present in a large fraction of the larsoft code)

**Failure when not fixed**: Compilation error.

**Fix**:

Several different cases are possible. Please see [this presentation](https://indico.fnal.gov/event/19103/contribution/1/material/slides/0.pdf) for an overview and a list of the most common changes.

**Contact**: The Scisoft Team


## Changes for larsoft v06_xx_yy and previous

For ease of navigation, older breaking changes have been moved to [Breaking Changes prior to v07_00_00](Breaking_Changes_prior_to_v07_00_00)
