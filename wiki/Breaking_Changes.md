Breaking Changes(#Breaking-Changes)
======================================

-   **Table of contents**
-   [Breaking Changes](#Breaking-Changes)
    -   [Table of recent changes](#Table-of-recent-changes)
    -   [Changes for larsoft v06\_xx\_yy and previous](#Changes-for-larsoft-v06_xx_yy-and-previous)
    -   [mrb 5](#mrb-5)
    -   [Refactor EventWeight interface to GENIE v3](#Refactor-EventWeight-interface-to-GENIE-v3)
    -   [root v6\_22\_06a typo](#root-v6_22_06a-typo)
    -   [larrecodnn new directory structure](#larrecodnn-new-directory-structure)
    -   [Geometry configuration check](#Geometry-configuration-check)
    -   [larsoft v09\_00\_00](#larsoft-v09_00_00)
    -   [Update to nutools v3\_05\_00 with nuevdb](#Update-to-nutools-v3_05_00-with-nuevdb)
    -   [Using boost v1\_70\_0](#Using-boost-v1_70_0)
    -   [Update to art v3\_03\_01](#Update-to-art-v3_03_01)
    -   [Lengthen raw::RawDigit fSamples](#Lengthen-rawRawDigit-fSamples)
    -   [Removal of Calorimetry hard-coded values](#Removal-of-Calorimetry-hard-coded-values)
    -   [artdaq\_core calls clock\_gettime](#artdaq_core-calls-clock_gettime)
    -   [macOS missing TGX11](#macOS-missing-TGX11)
    -   [root IO rules](#root-IO-rules)
    -   [code cleanup](#code-cleanup)
    -   [genie v3\_00\_06](#genie-v3_00_06)
    -   [nutools v3\_02\_00](#nutools-v3_02_00)
    -   [nutools v3\_00\_00](#nutools-v3_00_00)
    -   [New PhotonVisibilityService features](#New-PhotonVisibilityService-features)
    -   [Remove deprecated members and methods from recob::Track](#Remove-deprecated-members-and-methods-from-recobTrack)

This is an attempt to track all the “breaking” changes which will require a general maintenance action to have the code back working.

Table of recent changes(#Table-of-recent-changes) {.wiki-class-count}
----------------------------------------------------

  Date       Version/commit   Description                                                                                                         Issue
  ---------- ---------------- ------------------------------------------------------------------------------------------------------------------- -------------------------------------------------------------------------------------------------------------------------------------------------
  20210921   `v09_31_00`      [mrb 5](#mrb-5)                                                                                                     
  20210407   `v09_21_00`      [Refactor EventWeight interface to GENIE v3](#Refactor-EventWeight-interface-to-GENIE-v3)                           
  20210204   `v09_16_00`      [root v6\_22\_06a typo](#root-v6_22_06a-typo)                                                                       
  20210114   `v09_13_00`      [larrecodnn new directory structure](#larrecodnn-new-directory-structure)                                           
  20210107   `v09_12_00`      [Geometry configuration check](#Geometry-configuration-check)                                                       [\#24328](/redmine/issues/24328 "Bug: Fix Geometry service feature reloading the geometry at begin of run (Closed)")
  20200819   `v09_00_00`      [larsoft v09\_00\_00](#larsoft-v09_00_00)                                                                           
  20191113   `v08_36_00`      [Update to nutools v3\_05\_00 with nuevdb](#Update-to-nutools-v3_05_00-with-nuevdb)                                 
  20191113   `v08_36_00`      [Using boost v1\_70\_0](#Using-boost-v1_70_0)                                                                       
  20191113   `v08_36_00`      [update to art v3\_03\_01](#Update-to-art-v3_03_01)                                                                 
  20191111   `v08_35_01`      [Lengthen raw::RawDigit fSamples](#Lengthen-rawRawDigit-fSamples)                                                   
  20191023   `v08_33_00`      [Removal of Calorimetry hard-coded values](#Removal-of-Calorimetry-hard-coded-values)                               [\#23457](/redmine/issues/23457 "Bug: LArReco Calorimetry module places absolute cut on z position which is not detector independent (Closed)")
  20190820   `v08_31_00`      [artdaq\_core calls clock\_gettime](#artdaq_core-calls-clock_gettime)                                               
  20190820   `v08_31_00`      [macOS missing TGX11](#macOS-missing-TGX11)                                                                         
  20190820   `v08_31_00`      [root IO rules](#root-IO-rules)                                                                                     [\#23013](/redmine/issues/23013 "Bug: Unable to read recob::Vertex position information (Closed)")
  20190814   `v08_28_01`      [code cleanup](#code-cleanup)                                                                                       
  20190809   `v08_28_00`      [genie v3\_00\_06](#genie-v3_00_06)                                                                                 
  20190725   `v08_27_00`      [nutools v3\_02\_00](#nutools-v3_02_00)                                                                             
  20190610   `v08_22_00`      [nutools v3\_00\_00](#nutools-v3_00_00)                                                                             
  201904xx   `v08_15_00`      [New PhotonVisibilityService features](#New-PhotonVisibilityService-features)                                       
  2019                        [Update to art v3\_02](Update_to_art_v3_02)                                          
  20181213   `v08_00_00`      [Update from art v2 to art v3](Update_from_art_v2_to_art_v3)                         
  20181129   `v07_12_00`      [Remove deprecated members and methods from recob::Track](#Remove-deprecated-members-and-methods-from-recobTrack)   

Changes for larsoft v06\_xx\_yy and previous(#Changes-for-larsoft-v06_xx_yy-and-previous) {.wiki-class-count}
--------------------------------------------------------------------------------------------

For ease of navigation, older breaking changes have been moved to [Breaking Changes prior to v07\_00\_00](Breaking_Changes_prior_to_v07_00_00)

mrb 5(#mrb-5) {.wiki-class-count}
----------------

**When was committed**: [v09\_31\_00](ReleaseNotes093100)\
**Motivation**: mrb 5 and cetbuildtools 8 are required when building with art 3.09 and later\
**Fix**: Please see the [Comments about mrb 5 and cetbuildtools 8](Comments_about_mrb_5_and_cetbuildtools_8) if you have problems.

Refactor EventWeight interface to GENIE v3(#Refactor-EventWeight-interface-to-GENIE-v3) {.wiki-class-count}
------------------------------------------------------------------------------------------

**When was committed**: [v09\_21\_00](ReleaseNotes092100)\
**Motivation**: Breaking changes were introduced in GENIE v3 which made the previous implementation of GenieWeightCalc incompatible. Slides [here](https://indico.fnal.gov/event/47983/contributions/209278/attachments/140332/176331/genie_v3_reweight_larsoft.pdf)\
**Fix**: See the [technote](https://cdcvs.fnal.gov/redmine/attachments/63586/genieweightcalc_technote.pdf)

root v6\_22\_06a typo(#root-v6_22_06a-typo) {.wiki-class-count}
----------------------------------------------

**When was committed**: [v09\_16\_00](ReleaseNotes091600)\
**Motivation**: update larsoft to use art 3.06\
**Affects**: user or experiment code\
**Failure when not fixed**: Compilation errors or warnings.\

    In file included from /products/root/v6_22_06a/Linux64bit+3.10-2.17-e19-p383b-prof/include/TPaveStats.h:16,
                     from /home/garren/scratch/larsoft/uboone/srcs/ubana/ubana/Calibrations/Lifetime_module.cc:67:
    /products/root/v6_22_06a/Linux64bit+3.10-2.17-e19-p383b-prof/include/TVirtualPaveStats.h:33:43: error: extra ‘;’ [-Werror=pedantic]
        virtual TObject *GetParent() const = 0;;
                                               ^
                                               -
    cc1plus: all warnings being treated as errors

\
**Fix**: remove the -pedantic flag in the affected subdirectory\

    diff --git a/ubana/Calibrations/CMakeLists.txt b/ubana/Calibrations/CMakeLists.txt
    index 9299a7dd..e2bad7c3 100644
    --- a/ubana/Calibrations/CMakeLists.txt
    +++ b/ubana/Calibrations/CMakeLists.txt
    @@ -1,4 +1,6 @@

    +cet_remove_compiler_flags(CXX -pedantic)
    +
     add_subdirectory(Optical)

     art_make( BASENAME_ONLY

\
**Contact**: [The Scisoft Team](mailto:scisoft-team@fnal.gov)

larrecodnn new directory structure(#larrecodnn-new-directory-structure) {.wiki-class-count}
--------------------------------------------------------------------------

**When was committed**: [v09\_13\_00](ReleaseNotes091300)\
**Motivation**: separate tf, keras, and trtis\
**Affects**: user or experiment code (rarely)\
**Fix**: run LArRecodnnNewDirs.sh\
**Contact**: [The Scisoft Team](mailto:scisoft-team@fnal.gov)

Geometry configuration check(#Geometry-configuration-check) {.wiki-class-count}
--------------------------------------------------------------

**When was committed**: [v09\_12\_00](ReleaseNotes091200)\
**Motivation**: nutools EventDisplayBase is now in nuevdb \
**Affects**: user or experiment code\
**Failure when not fixed**: Compilation or linking errors.\
**Fix**: use feature/gp\_issue24328\
**More information**: [larcore PR 6](https://github.com/LArSoft/larcore/pull/6), [\#24328](/redmine/issues/24328 "Bug: Fix Geometry service feature reloading the geometry at begin of run (Closed)"), and [Geometry configuration check breaking change documentation](Geometry_configuration_check_breaking_change_documentation)\
**Contact**: Gianluca Petrillo

larsoft v09\_00\_00(#larsoft-v09_00_00) {.wiki-class-count}
------------------------------------------

**When was committed**: [v09\_00\_00](ReleaseNotes090000)\
**Contact**: [The Scisoft Team](mailto:scisoft-team@fnal.gov)

Update to nutools v3\_05\_00 with nuevdb(#Update-to-nutools-v3_05_00-with-nuevdb) {.wiki-class-count}
------------------------------------------------------------------------------------

**When was committed**: [v08\_36\_00](ReleaseNotes083600)\
**Motivation**: nutools EventDisplayBase is now in nuevdb \
**Affects**: user or experiment code\
**Failure when not fixed**: Compilation or linking errors.\
**Fix**: run UseNuevdb.sh (found in nutools v3\_05\_00 or later)\
**Contact**: [The Scisoft Team](mailto:scisoft-team@fnal.gov)

Using boost v1\_70\_0(#Using-boost-v1_70_0) {.wiki-class-count}
----------------------------------------------

**When was committed**: [v08\_36\_00](ReleaseNotes083600)\
**Motivation**: updated dependency from art\
**Affects**: user or experiment code\
**Failure when not fixed**: cmake and compilation errors\
**Fix**: use cetbuildtools v7\_14\_00 or later\
**Contact**: [The Scisoft Team](mailto:scisoft-team@fnal.gov)

Update to art v3\_03\_01(#Update-to-art-v3_03_01) {.wiki-class-count}
----------------------------------------------------

**When was committed**: [v08\_36\_00](ReleaseNotes083600)\
**Motivation**: Move from art v3\_02 to art v3\_03\
**Affects**: user or experiment code\
**Failure when not fixed**: Compilation or linking errors.\
**Fix**: see the [art series 3.03](/redmine/projects/art/wiki/Series_303) page for art breaking changes \
**Contact**: [The Scisoft Team](mailto:scisoft-team@fnal.gov)

Lengthen raw::RawDigit fSamples(#Lengthen-rawRawDigit-fSamples) {.wiki-class-count}
------------------------------------------------------------------

**When was committed**: [v08\_35\_01](ReleaseNotes083501)\
**Motivation**: See [https://indico.fnal.gov/event/22319/contribution/2/material/slides/0.pdf](https://indico.fnal.gov/event/22319/contribution/2/material/slides/0.pdf)\
**Affects**: Certain loops that did not use an explicit unsigned int.\
**Failure when not fixed**: Compilation errors.\

    /home/garren/scratch/larsoft/v08_35_01/srcs/ubcore/ubcore/BurstNoiseMetrics/BurstNoiseMetrics_module.cc: 
    In member function ‘virtual void BurstNoiseMetrics::produce(art::Event&)’:
    /home/garren/scratch/larsoft/v08_35_01/srcs/ubcore/ubcore/BurstNoiseMetrics/BurstNoiseMetrics_module.cc:162:20: 
    error: comparison between signed and unsigned integer expressions 
    [-Werror=sign-compare]
        for(int k = 0; k < allrawdigits_vec.at(1).Samples(); k++){ 
    //UberWaveform Calculations
                       ~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

\
**Fix**:\

    -  for(int k = 0; k < allrawdigits_vec.at(1).Samples(); k++){   //UberWaveform Calculations
    +  for(unsigned int k = 0; k < allrawdigits_vec.at(1).Samples(); k++){  //UberWaveform Calculations

\
**Contact**: [The Scisoft Team](mailto:scisoft-team@fnal.gov)

Removal of Calorimetry hard-coded values(#Removal-of-Calorimetry-hard-coded-values) {.wiki-class-count}
--------------------------------------------------------------------------------------

**When was committed**: [v08\_33\_00](ReleaseNotes083300)\
**Motivation**: hard-coded values conflict with ICARUS detector (see issue [\#23457](/redmine/issues/23457 "Bug: LArReco Calorimetry module places absolute cut on z position which is not detector independent (Closed)"))\
**Affects**: users of LArSoft `Calorimetry` module\
**Failure when not fixed**: possible differences in calorimetry of badly reconstructed tracks\
**Fix**: none needed; to restore the old behaviour, add to `Calorimetry` module configuration: `NotOnTrackZcut: -100.0`\
**Contact**: Gianluca Petrillo

artdaq\_core calls clock\_gettime(#artdaq_core-calls-clock_gettime) {.wiki-class-count}
----------------------------------------------------------------------

**When was committed**: [v08\_31\_00](ReleaseNotes083100)\
**Motivation**: Use artdaq\_core 3.05.02\
**Affects**: Any user code that builds with artdaq\_core v3\_05\_00 or later.\
**Failure when not fixed**: Compilation or linking errors.\
**Fix**: link with `${ARTDAQ-CORE_UTILITIES}`, which is defined in artdaq\_coreConfig.cmake\
**Contact**: [The Scisoft Team](mailto:scisoft-team@fnal.gov)

macOS missing TGX11(#macOS-missing-TGX11) {.wiki-class-count}
--------------------------------------------

**When was committed**: [v08\_31\_00](ReleaseNotes083100)\
**Motivation**: new release of root to resolve an I/O rule problem\
**Affects**: user code initializing X11 graphics on macOS.\
**Failure when not fixed**: Compilation or linking errors.\

    /Users/macdev/workspace/build-larsoft/BUILDTYPE/debug/QUAL/s91-c2/label1/swarm/label2/OSX-10.14/build/larpandora/v08_07_17-buildFW/src/larpandora/RootGraphics/RootGraphicsEnabler.cxx:24:10: fatal error: 'TGX11.h' file not found
    #include "TGX11.h" // this header currently triggers a compiler error,
             ^~~~~~~~~
    1 error generated.

\
**Fix**: \
With root v6\_18\_xx, macOS builds must use the native macOS COCO graphics interface.\
Use the root generic graphics initialization instead of explicit X11 initialization.\

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

\
**Contact**: [The Scisoft Team](mailto:scisoft-team@fnal.gov)

root IO rules(#root-IO-rules) {.wiki-class-count}
--------------------------------

-   With root v6\_16\_00, I/O rules were broken. This is a problem when reading certain old data files (see [\#23013](/redmine/issues/23013 "Bug: Unable to read recob::Vertex position information (Closed)")).
-   A working fix for the problem is available in root v6\_18\_04.
-   Certain I/O rules involving Double32\_t must be removed from classes\_def.xml files if they exist. This has been done for larsoft v08\_31\_00. Please see [\#23013](/redmine/issues/23013 "Bug: Unable to read recob::Vertex position information (Closed)") for more information.

code cleanup(#code-cleanup) {.wiki-class-count}
------------------------------

**When was committed**: [v08\_28\_01](ReleaseNotes082801)\
**Motivation**: remove unnecessary headers and link time libraries\
**Affects**: user code\
**Failure when not fixed**: Compilation or linking errors.\
**Fix**: \
Add appropriate headers to the code. It may also be necessary to add libraries to the cmake link list. If available, use feature/knoepfel\_rm\_unused\_headers.

genie v3\_00\_06(#genie-v3_00_06) {.wiki-class-count}
------------------------------------

**When was committed**: [v08\_28\_00](ReleaseNotes082800)\
**Motivation**: upgrade to genie v3\_00\_06.\
**Affects**: user code using `GENIE`.\
**Failure when not fixed**: Compilation or linking errors.\
**Fix**: \
Run UseGenie3.sh (found in nugen v1\_03\_00 and later). This script will update the headers.\
There is NO one-to-one mapping from genie v2 libraries to genie v3 libraries. Please use the provided feature branch, feature/team\_for\_v08\_28\_00.\
The genie\_xsec qualifiers have also changed.

nutools v3\_02\_00(#nutools-v3_02_00) {.wiki-class-count}
----------------------------------------

**When was committed**: [v08\_27\_00](ReleaseNotes082700)\
**Motivation**: separate GEANT4 interface from the rest of nutools.\
**Affects**: user code using `G4Base`, `MagneticField`, and `ParticleNavigation`.\
**Failure when not fixed**: Compilation or linking errors.\
**Fix**: \
Run UseNuG4.sh and add `find_ups_product(nug4)` to the top level CMakeLists.txt file.\
The migration assistants is available after a setup of nutools v3\_02\_00 or later.\
**Contact**: [The Scisoft Team](mailto:scisoft-team@fnal.gov)

nutools v3\_00\_00(#nutools-v3_00_00) {.wiki-class-count}
----------------------------------------

**When was committed**: [v08\_22\_00](ReleaseNotes082200)\
**Motivation**: separate GENIE interface from the rest of nutools. Also split NuRandomService into its own package.\
**Affects**: user code calling `GENIEHelper` and `NuRandomService`.\
**Failure when not fixed**: Compilation or linking errors.\
**Fix**: \
For packages using `NuRandomService`, run UseNuRandom.sh\
For packages using GENIE, run UseNuGen.sh\
Both migration assistants are available after a setup of nutools v3\_00\_00 or later.\
**Contact**: [The Scisoft Team](mailto:scisoft-team@fnal.gov)

New PhotonVisibilityService features(#New-PhotonVisibilityService-features) {.wiki-class-count}
------------------------------------------------------------------------------

**When was committed**: [v08\_15\_00](ReleaseNotes081500)\
**Motivation**: allow exploitation of detector symmetries to reduce the size of the photon visibility libraries.\
**Affects**: user code calling `phot::PhotonVisibilityService`, plus code using some more hidden LArSoft utility for managing voxelized volumes.\
**Failure when not fixed**: Compilation or linking errors.\
**Fix**: Several different cases are possible. Please see the *additional material* slides in [the presentation of the new feature](https://indico.fnal.gov/event/20409/contribution/2/material/slides/0.pdf) at [LArSoft coordination meeting on April 9, 2019](https://indico.fnal.gov/event/20409) .\
**Contact**: [Gianluca Petrillo](mailto:petrillo@slac.stanford.edu)

Remove deprecated members and methods from recob::Track(#Remove-deprecated-members-and-methods-from-recobTrack) {.wiki-class-count}
------------------------------------------------------------------------------------------------------------------

**When was committed**: [v07\_12\_00](ReleaseNotes071200)

New recob::Track interface introduced in early 2017. This came with the deprecation of several outdated features. In many cases such features were maintained for backwards compatibility: dQ/dx (fdQdx data member, NumberdQdx and DQdxAtPoint methods), NumberFitMomentum method, various methods based on TVector3 or TMatrixD, old constructors. After almost 2 years it’s time to cleanup the interface from the old junk (indeed all those concepts are not actively used anymore, still they are present in a large fraction of the larsoft code)

**Failure when not fixed**: Compilation error.

**Fix**:

Several different cases are possible. Please see [this presentation](https://indico.fnal.gov/event/19103/contribution/1/material/slides/0.pdf) for an overview and a list of the most common changes.

**Contact**: [The Scisoft Team](mailto:scisoft-team@fnal.gov)
