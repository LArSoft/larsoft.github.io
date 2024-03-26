

# Developing With LArSoft

Any collaborator can develop or modify code and contribute it to LArSoft. On this page, we describe the procedures for submitting code (via a GitHub pull request), coding guidelines and policies, and other information that might be of use to LArSoft code developers.

## Quick links for Developing with LArSoft

-   [Overview page for using LArSoft with GitHub](Working_with_GitHub)
-   [LArSoft repositories packages and dependencies](LArSoft_repositories_packages_and_dependencies)
-   [Concepts in LArSoft](https://larsoft.org/important-concepts-in-larsoft/)

## Platforms

LArSoft currently supports the platforms listed [here](Supported_platforms). **Users who wish to develop on an unsupported platform are encouraged to use** [a container approach. Please note important caveats with respect to using Docker](Developing_LArSoft_on_Unsupported_Operating_Systems_with_Docker).

## Designing

To design LArSoft code, it's important to understand the core LArSoft suite and all the components used by it. Reference the items below when designing new software.

### LArSoft architecture and design principles

-   [2016 architecture document as PDF download](https://github.com/LArSoft/larsoft-architecture-doc/blob/master/output/LArSoftArchitecture.pdf)
-   [Design principles on larsoft.org](https://larsoft.org/important-concepts-in-larsoft/design/)

### LArSoft packages and repositories

-   [LArSoft repositories packages and dependencies](LArSoft_repositories_packages_and_dependencies)
-   [LArSoft V10+ Geometry System](LArSoft_V10+_Geometry_System)
-   [PreV10 Geometry Package](Geometry_Package)
-   [LArSoft art-independent code and repositories](LArSoft_art-independent_code_and_repositories)

### The *art* framework

-   [*art* documentation on WordPress](https://art.fnal.gov) for general information
-   [*art* documentation in Redmine](https://cdcvs.fnal.gov/redmine/projects/art/wiki) for code specific information
-   [*art* workbook](https://art.fnal.gov/art-workbook/) for examples and tutorials
-   [Using art in LArSoft](Using_art_in_LArSoft)

### *gallery*

*gallery* provides lightweight access to event data in art/ROOT files outside the art event processing framework executable. It is not an alternative framework; rather, it provides a library that can be used to write programs that need to read (but not write) art/ROOT files. Information is available [here](https://art.fnal.gov/gallery/)


## Writing code

Whether you are writing new code or modifying existing code, please follow the guidelines listed below. There are also development tools and techniques available that can make coding easier.

### Guidelines

1.  [Coding guidelines](The_rules_and_guidelines)
2.  [Code documentation requirements and guidelines](Code_documentation_requirements_and_guidelines)
3.  [Process for contributing code to LArSoft](Process_for_contributing_code_to_LArSoft)
4.  [Guidelines on writing (and using) services in LArSoft](Writing_LArSoft_service) *<span class="general in"></span>*
5.  [Guidelines on writing (and using) algorithms in LArSoft](Writing_LArSoft_algorithms) *<span class="algorithm any to specific not"></span>*
6.  [Guidelines on using the geometry V10+](https://larsoft.github.io/LArSoftWiki/Guidelines_on_using_the_geometry_v10)
7.  [Guidelines on using the geometry preV10](Guidelines_on_using_the_geometry)
8.  [Error handling policy ](LArSoft_Error_Handling)
9.  [Examples!](LArSoft_examples)
10. [Using git repositories](Using_git_repositories)

------------------------------------------------------------------------

### Multi-threading in LArSoft

1.  [Migration path for services](Migration_path_for_LArSoft_services_in_art_3)
2.  [Guidelines for LArSoft modules](MT_status_of_LArSoft_modules)
3.  [Thread-safety status](Thread-safety_status)

------------------------------------------------------------------------

### How to…

-   … [create and use associations](Use_Associations)
-   … [use the new ROOT vectors and linear algebra classes in the code](Root_vectors)
-   … [build with mrb 5 and cetbuildtools 8](Build_with_mrb_5_and_cetbuildtools_8)
-   … [update code for e26 and c14](Updating_code_for_e26_and_c14)

------------------------------------------------------------------------

### [Tips on updating your code after LArSoft release](Tips_on_updating_your_code_after_LArSoft_release)

------------------------------------------------------------------------

### Tools and techniques

#### Documenting and browsing code

-   [LArSoft Doxygen](https://code-doc.larsoft.org/docs/latest/html/index.html) - comments in the code are incorporated into documentation using [the Doxygen tool.](https://www.doxygen.nl/helpers.html)
-   [LXR Cross Referencer](https://cdcvs.fnal.gov/lxr/) - general purpose source code indexer and cross-referencer that provides web-based browsing of source code with links to the definition and usage of any identifier. Supports multiple languages. Includes LArSoft code. Note, pages may take several seconds to load.

#### [Working with GitHub](Working_with_GitHub) and contributing code via LArSoft pull requests

Start by reviewing the information on [the overview page for using LArSoft with GitHub](Working_with_GitHub). Contact your experiment offline management to identify acting Level 2 managers. Send any comments to The Scisoft Team, or via Redmine issues.

#### git and git flow

NOTE: These are instructions for working with the legacy Redmine-based git repositories, and are recommended for experiments that continue to use Redmine for their experiment code. All LArSoft repositories have been moved to GitHub. Please refer to the instructions on the [Working with GitHub](Working_with_GitHub) page for current instructions on using GitHib and contributing code to LArSoft.

-   [git guidelines](LArSoft_git_Guidelines)
-   [cet-is-public:git flow quick start](https://cdcvs.fnal.gov/redmine/projects/cet-is-public/wiki/git_flow_quick_start)
-   [Git Tips and Tricks](https://cdcvs.fnal.gov/redmine/projects/cet-is-public/wiki/GitTipsAndTricks)  
    *<span class="advice workflow the ignore especially and - tasks specific do to commands git various use to how than other anything ignore please please development, LArSoft of purposes the for"></span>*

#### Profiling

-   [memory profiling tools](Memory_profiling_tools)
-   [time profiling tools](Time_profiling_tools)

#### Debugging

-   [Debugging LArSoft with Allinea](Debugging_LArSoft_with_Allinea)
-   [Debugging LArSoft](Debugging_LArSoft) with RogueWave TotalView. (**TotalView is no longer being paid for. Please use Allinea above instead.**)
-   [Debugging with gdb](Debugging_with_gdb)

------------------------------------------------------------------------

## Building

### Using the build system

-   **[Look for experiment specific guides to using and developing LArSoft code ](Quick_Links)**
-   Choose the correct release from the [List of LArSoft Releases and Release Notes](releases/LArSoft_release_list).
-   [What to do when there is a new release ](UpdatingToNewRelease) (a.k.a. **update LArSoft version**)

To get write access to the repositories, speak to the offline coordinator for your experiment. If you have a question, send email to the SciSoft Team.

### Understanding CMakeLists.txt and product_deps files

-   [cet-is-public:Cetbuildtools cmake modules](https://cdcvs.fnal.gov/redmine/projects/cet-is-public/wiki/Cetbuildtools_cmake_modules): such as `cet_make` and `cet_add_compiler_flags`. Used in `CMakeLists.txt` files throughout LArSoft
-   [cet-is-public:Art cmake modules](https://cdcvs.fnal.gov/redmine/projects/cet-is-public/wiki/Art_cmake_modules): such as `art_make` and `simple_plugin`. Used in `CMakeLists.txt` files throughout LArSoft
-   [cet-is-public:Defining products in the CET build environment](https://cdcvs.fnal.gov/redmine/projects/cet-is-public/wiki/Defining_products_in_the_CET_build_environment): explains the `product_deps` file
-   [Adding Product Dependencies](https://cdcvs.fnal.gov/redmine/projects/cet-is-public/wiki/AddingProductDependencies): how to edit the `product_deps` and `CMakeLists.txt` files to add dependencies
-   [Various helpful tips for coding in the CET C environment](https://cdcvs.fnal.gov/redmine/projects/cet-is-public/wiki/CodeTips): things you hope you never need to know
-   [cet-is-public:Building your own code with cmake](https://cdcvs.fnal.gov/redmine/projects/cet-is-public/wiki/Building_your_own_code_with_cmake): pointer to a *really* simple example
-   [Finding unresolved symbols](Finding_unresolved_symbols): automatic library search for symbols

### mrb (multi-repository build) tool

-   [mrb user guide](https://cdcvs.fnal.gov/redmine/projects/mrb/wiki/MrbUserGuide)
-   [mrb reference guide](https://cdcvs.fnal.gov/redmine/projects/mrb/wiki/MrbRefereceGuide)
-   [Documentation for buildtool](https://cdcvs.fnal.gov/redmine/projects/cet-is-public/wiki/Buildtool_script)
    -   mrb calls `buildtool` (from the `cetbuildtools` product) to perform the build.

### ups

-   [Getting Started with UPS](https://cdcvs.fnal.gov/redmine/projects/ups/wiki/Getting_Started_Using_UPS) and [About UPS](https://cdcvs.fnal.gov/redmine/projects/cet-is-public/wiki/AboutUPS)
-   [About qualifiers](https://cdcvs.fnal.gov/redmine/projects/cet-is-public/wiki/AboutQualifiers): the things after “-q” in setup <prod> <ver> -q <qual>
-   [More Relocatable UPS Documentation](https://cdcvs.fnal.gov/redmine/projects/ups/wiki/Documentation)

## Testing

High-level description of testing is available at [larsoft.org](https://larsoft.org/larsoft-testing/)

### LArSoft Continuous Integration (CI) system

-   [High-level description of CI](https://larsoft.org/continuous-integration/)
-   [CI results display page](https://lar-ci-history.fnal.gov/LarCI/app)
-   [ LAr-Continuous-Integration subproject wiki](https://cdcvs.fnal.gov/redmine/projects/lar_ci/wiki/)

## Submitting for next release

After designing, coding, building and testing a piece of software, submit it to the LArSoft development branch so it is included in a new release.

-   [Getting new code into a LArSoft release](Getting_new_code_into_a_LArSoft_release) *<span class="releases LArSoft to changes making for policies and Procedures"></span>*

Also look at [Process for contributing code to LArSoft](Process_for_contributing_code_to_LArSoft).

### External packages

These are package written and maintained by the general physics and computing communities for

| Package                                                                                             | Namespace               | Short description                                           | Location of headers     |                |
|-----------------------------------------------------------------------------------------------------|-------------------------|-------------------------------------------------------------|-------------------------|----------------|
| [C](https://www.cplusplus.com/reference/)                                                            | `std::`                 | Extensions to base C that are part of the standard language |                         |                |
| [ROOT](https://root.cern.ch)                                                                        | See below               | Data-analysis tools                                         | `$ROOT_INC`             |                |
| [CLHEP](https://proj-clhep.web.cern.ch/proj-clhep/)                                                  | `CLHEP::`               | Class Library for High-Energy Physics                       | `$CLHEP_INC/CLHEP`      |                |
| [Geant4](https://geant4.web.cern.ch)                                                         | See below               | Detector simulations                                        | `$G4INCLUDE`            |                |
| [GENIE](https://hep.ph.liv.ac.uk/~costasa/genie/index.html)                                                                   | `genie::`               | Neutrino Monte-Carlo Generator                              | `$GENIE_INC/GENIE`      |                |
| [boost](https://www.boost.org/)                                                                      | `boost::`               | General programming tools for C                             | `$BOOST_INC/boost`      |                |
| [Message Facility wiki documentation](https://cdcvs.fnal.gov/redmine/projects/messagefacility/wiki/Using_MessageFacility) | `mf::`                  | Service for console messages                                | `$MESSAGEFACILITY_INC`  |                |
| [FHiCL Configuration](https://larsoft.org/configuration/) | `fhicl::`               | Configuration language and parsing tools                    | `$FHICLCPP_INC`         |                |
| [ nutools and LArSoft](NuSoft_and_LArSoft                                                                              ) | `simb::`                                                    | Neutrino platform tools | `$NUTOOLS_INC` |

ROOT and Geant4 do not use namespaces. In general, ROOT classes begin with “T” (e.g., [TTree](https://root.cern.ch/root/html522/TTree.html), [TH1](https://root.cern.ch/root/html522/TH1.html)) while [Geant4 classes](https://geant4.kek.jp/LXR/) begin with “G4” (e.g., [G4Track](https://geant4.kek.jp/lxr/source//track/include/G4Track.hh), [G4Step](https://geant4.kek.jp/lxr/source//track/include/G4Step.hh)). Exception: Some of the newer ROOT sub-packages have namespaces (such as `ROOT::Math::`, `ROOT::Fit::`, `ROOT::Minuit2::`, `Reflex::`, `TMVA::`).

Some of these packages duplicate functionality; e.g., 4-vectors are implemented in both [ROOT](https://root.cern.ch/root/html522/TLorentzVector.html) and [CLHEP](https://proj-clhep.web.cern.ch/proj-clhep/doc/CLHEP_2_1_2_2/doxygen/html/LorentzVector_8h.html). Given a choice, use a package that's higher in the above tables over one that's lower; e.g., choose ROOT classes over their CLHEP equivalents.

### Policy for including new external packages in LArSoft

To include new external software packages into the LArSoft distribution, or to create a new external dependency:

-   An experiment makes an official request via redmine issue ticket.
-   LArSoft verifies that it has permission to use the tool for research.
-   LArSoft verifies that the package will be be used by more than one experiment. Note: if only one experiment intends to use the package, the SciSoft team can help, but the end product would reside in the experiment’s code, not in LArSoft.
-   LArSoft has to be able to build the tool such that it has binary compatibility with other products which will be used at the same time. This means that any dependencies (e.g., python) must be the same as those used by the matching LArSoft distribution. In addition, if the product contains C or Fortran code, the product must be buildable with the same compiler used by the matching LArSoft release.
-   If the package is built into LArSoft code, it must not have a license that affects the license of the LArSoft code. We must be able to distribute our LArSoft code without having to add their license to our code or change the way we distribute LArSoft code with it in there. For a package that isn’t linked into any part of the main LArSoft distribution, such as an analysis tool, LArSoft still needs to have permission to use the package for research, but isn’t worried about the licensing affecting LArSoft code.

