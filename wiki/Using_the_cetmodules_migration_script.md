# Using the cetmodules migration script



Cetmodules v6 contains a migration script to make the necessary changes when moving from cetbuildtools to cetmodules. In order to use the migration script, you must first have cetmoules v3_05_04 or later available. The examples on this page will use the larsoftobj suite.

## Checkout your code and setup cetmodules.

    source /cvmfs/larsoft.opensciencegrid.org/products/setup
    setup mrb
    export MRB_PROJECT=larsoft
    source ssh-init.sh
    ssh-init
    mrb newDev -v v09_44_00 -q e20:prof
    source local*/setup
    cd $MRB_SOURCE
    mrb g larsoftobj_suite
    mrbsetenv

It's probably a good idea to do a build now to ensure there are no problems unrelated to the migration.

## Run the migration script on all packages.

By default, migration will update all packages in $MRB_SOURCE.

    cd $MRB_SOURCE
    $CETMODULES_DIR/tools/migrate -h (help)
    $CETMODULES_DIR/tools/migrate -n (dry run on all packages)

    [garren@scisoftbuild01 srcs]$ $CETMODULES_DIR/tools/migrate -q (quiet option)
    removed ‘ups/product-config.cmake.in’
    removed ‘ups/setup_deps’
    removed ‘ups/setup_for_development’
    removed ‘ups/CMakeLists.txt’
    WARNING: 
    WARNING: UPS product version v09_04_00 overridden by project(larcoreobj ... VERSION 09.04.00 ...) at CMakeLists.txt:11
    WARNING: 
    removed ‘ups/product-config.cmake.in’
    removed ‘ups/setup_deps’
    removed ‘ups/setup_for_development’
    removed ‘ups/CMakeLists.txt’
    removed ‘ups/product-config.cmake.in’
    removed ‘ups/setup_deps’
    removed ‘ups/setup_for_development’
    removed ‘ups/CMakeLists.txt’
    WARNING: 
    WARNING: UPS product version v09_05_00 overridden by project(larcorealg ... VERSION 09.05.00 ...) at CMakeLists.txt:11
    WARNING: 
    removed ‘ups/product-config.cmake.in’
    removed ‘ups/setup_deps’
    removed ‘ups/setup_for_development’
    removed ‘ups/CMakeLists.txt’
    removed ‘ups/product-config.cmake.in’
    removed ‘ups/setup_deps’
    removed ‘ups/setup_for_development’
    removed ‘ups/CMakeLists.txt’
    removed ‘ups/product-config.cmake.in’
    removed ‘ups/setup_deps’
    removed ‘ups/setup_for_development’
    removed ‘ups/CMakeLists.txt’

You will find updates in all packages. There will be changes in CMakeLists.txt files and in the ups directory.

## Run the migration script on a single package.

To run on a single package, the package must be listed explicitly.

    [garren@scisoftbuild01 srcs]$ $CETMODULES_DIR/tools/migrate larcoreobj
    INFO: attempting to read <larcoreobj>/ups/product_deps... DONE
    INFO: generating <larcoreobj>/ups/ups/product_deps.new from /cvmfs/larsoft.opensciencegrid.org/products/cetmodules/v3_05_04/ups-templates/product_deps.template
    INFO: installing <larcoreobj>/ups/ups/product_deps.new as <larcoreobj>/ups/ups/product_deps
    INFO: removing obsolete files from ups...
    removed ‘ups/product-config.cmake.in’
    removed ‘ups/setup_deps’
    removed ‘ups/setup_for_development’
    removed ‘ups/CMakeLists.txt’
    INFO: generating setup_for_development from template /cvmfs/larsoft.opensciencegrid.org/products/cetmodules/v3_05_04/ups-templates/setup_for_development
    WARNING: 
    WARNING: UPS product version v09_04_00 overridden by project(larcoreobj ... VERSION 09.04.00 ...) at CMakeLists.txt:11
    WARNING: 
    INFO: removing late, redundant find_package(cetbuildtools) at CMakeLists.txt:13
    INFO: command removed from <larcoreobj>/CMakeLists.txt:43 (obsolete):
    INFO: add_subdirectory(ups)
    INFO: command removed from <larcoreobj>/CMakeLists.txt:46 (obsolete):
    INFO: include(UseCPack)
    INFO: made 9 edits to <larcoreobj>/CMakeLists.txt
    INFO: made 1 edit to <larcoreobj>/larcoreobj/SimpleTypesAndConstants/CMakeLists.txt
    INFO: made 1 edit to <larcoreobj>/larcoreobj/SummaryData/CMakeLists.txt

    [garren@scisoftbuild01 srcs]$ cd larcoreobj/
    [garren@scisoftbuild01 larcoreobj]$ git st
    On branch migration1
    Changes not staged for commit:
      (use "git add/rm <file>..." to update what will be committed)
      (use "git restore <file>..." to discard changes in working directory)
        modified:   CMakeLists.txt
        modified:   larcoreobj/SimpleTypesAndConstants/CMakeLists.txt
        modified:   larcoreobj/SummaryData/CMakeLists.txt
        deleted:    ups/CMakeLists.txt
        deleted:    ups/product-config.cmake.in
        modified:   ups/product_deps
        deleted:    ups/setup_deps
        modified:   ups/setup_for_development

    Untracked files:
      (use "git add <file>..." to include in what will be committed)
        migrate-backup-20220221-140230-0600/

Things to notice:

-   The ups directory contains only product_deps and setup_for_development. Both are updated.
-   CMakeLists.txt no longer builds the ups directory. Instead this is handled by the cet_cmake_config() function.
-   By default, migrate adds explanations for all modifications. You probably do not want to keep all those explanations.

<!-- -->

```diff

    diff --git a/CMakeLists.txt b/CMakeLists.txt
    index 2b12b1d..1e9bc4a 100644
    --- a/CMakeLists.txt
    +++ b/CMakeLists.txt
    @@ -6,11 +6,12 @@
     #  buildtool [-I /install/path] -bt[i] -jN
     # ======================================================================

    -cmake_minimum_required(VERSION 3.19 FATAL_ERROR)
    +cmake_minimum_required(VERSION 3.20 FATAL_ERROR) ### MIGRATE-CHANGED (migrate-3.05.04) - VERSION 3.19 -> 3.20
    +# cmake_policy(VERSION 3.19) ### MIGRATE-ACTION-COMPATIBILITY (migrate-3.05.04) - Uncomment to preseve compatibility with older CMake versions

    +find_package(cetmodules REQUIRED) ### MIGRATE-ADDED (migrate-3.05.04) - find_package(cetmodules) must precede project()
     project(larcoreobj VERSION 09.04.00 LANGUAGES CXX)

    -find_package(cetbuildtools REQUIRED)

     include(CetCMakeEnv)
     cet_cmake_env()
    @@ -21,11 +22,11 @@ cet_set_compiler_flags(DIAGS CAUTIOUS
       EXTRA_FLAGS -pedantic -Wno-unused-local-typedefs
     )

    -cet_report_compiler_flags()
    +cet_report_compiler_flags() ### MIGRATE-ACTION-RECOMMENDED (migrate-3.05.04) - add args: REPORT_THRESHOLD VERBOSE

    -find_package(cetlib_except REQUIRED PUBLIC)
    -find_package(cetlib REQUIRED PUBLIC)
    -find_package(canvas REQUIRED PUBLIC)
    +find_package(cetlib_except REQUIRED EXPORT) ### MIGRATE-CHANGED (migrate-3.05.04) - replaced obsolete keyword with EXPORT: PUBLIC
    +find_package(cetlib REQUIRED EXPORT) ### MIGRATE-CHANGED (migrate-3.05.04) - replaced obsolete keyword with EXPORT: PUBLIC
    +find_package(canvas REQUIRED EXPORT) ### MIGRATE-CHANGED (migrate-3.05.04) - replaced obsolete keyword with EXPORT: PUBLIC
     find_package(canvas_root_io REQUIRED)

     # macros for artdaq_dictionary and simple_plugin
    @@ -40,7 +41,6 @@ add_subdirectory(larcoreobj)
     add_subdirectory(test)

     # ups - table and config files
    -add_subdirectory(ups)

     # packaging utility
    -include(UseCPack)
    +cet_cmake_config() ### MIGRATE-ADDED (migrate-3.05.04) - required cmd
```

## Get fewer comments from the migration script

If you don't need explanations, use the “—flags-only” option.

    [garren@scisoftbuild01 srcs]$ $CETMODULES_DIR/tools/migrate  --flags-only larcoreobj/
    INFO: attempting to read <larcoreobj>/ups/product_deps... DONE
    INFO: generating <larcoreobj>/ups/ups/product_deps.new from /cvmfs/larsoft.opensciencegrid.org/products/cetmodules/v3_05_04/ups-templates/product_deps.template
    INFO: installing <larcoreobj>/ups/ups/product_deps.new as <larcoreobj>/ups/ups/product_deps
    INFO: removing obsolete files from ups...
    removed ‘ups/product-config.cmake.in’
    removed ‘ups/setup_deps’
    removed ‘ups/setup_for_development’
    removed ‘ups/CMakeLists.txt’
    INFO: generating setup_for_development from template /cvmfs/larsoft.opensciencegrid.org/products/cetmodules/v3_05_04/ups-templates/setup_for_development
    WARNING: 
    WARNING: UPS product version v09_04_00 overridden by project(larcoreobj ... VERSION 09.04.00 ...) at CMakeLists.txt:11
    WARNING: 
    INFO: removing late, redundant find_package(cetbuildtools) at CMakeLists.txt:13
    INFO: command removed from <larcoreobj>/CMakeLists.txt:43 (obsolete):
    INFO: add_subdirectory(ups)
    INFO: command removed from <larcoreobj>/CMakeLists.txt:46 (obsolete):
    INFO: include(UseCPack)
    INFO: made 9 edits to <larcoreobj>/CMakeLists.txt
    INFO: made 1 edit to <larcoreobj>/larcoreobj/SimpleTypesAndConstants/CMakeLists.txt
    INFO: made 1 edit to <larcoreobj>/larcoreobj/SummaryData/CMakeLists.txt

```diff

    diff --git a/CMakeLists.txt b/CMakeLists.txt
    index 2b12b1d..85e4b26 100644
    --- a/CMakeLists.txt
    +++ b/CMakeLists.txt
    @@ -6,11 +6,12 @@
     #  buildtool [-I /install/path] -bt[i] -jN
     # ======================================================================

    -cmake_minimum_required(VERSION 3.19 FATAL_ERROR)
    +cmake_minimum_required(VERSION 3.20 FATAL_ERROR)
    +# cmake_policy(VERSION 3.19) ### MIGRATE-ACTION-COMPATIBILITY (migrate-3.05.04) - Uncomment to preseve compatibility with older CMake versions

    +find_package(cetmodules REQUIRED)
     project(larcoreobj VERSION 09.04.00 LANGUAGES CXX)

    -find_package(cetbuildtools REQUIRED)

     include(CetCMakeEnv)
     cet_cmake_env()
    @@ -21,11 +22,11 @@ cet_set_compiler_flags(DIAGS CAUTIOUS
       EXTRA_FLAGS -pedantic -Wno-unused-local-typedefs
     )

    -cet_report_compiler_flags()
    +cet_report_compiler_flags() ### MIGRATE-ACTION-RECOMMENDED (migrate-3.05.04) - add args: REPORT_THRESHOLD VERBOSE

    -find_package(cetlib_except REQUIRED PUBLIC)
    -find_package(cetlib REQUIRED PUBLIC)
    -find_package(canvas REQUIRED PUBLIC)
    +find_package(cetlib_except REQUIRED EXPORT)
    +find_package(cetlib REQUIRED EXPORT)
    +find_package(canvas REQUIRED EXPORT)
     find_package(canvas_root_io REQUIRED)

     # macros for artdaq_dictionary and simple_plugin
    @@ -40,7 +41,6 @@ add_subdirectory(larcoreobj)
     add_subdirectory(test)

     # ups - table and config files
    -add_subdirectory(ups)

     # packaging utility
    -include(UseCPack)
    +cet_cmake_config()
```

## Basic migration followed by cleanup.

Another option is to run the migration script and then cleanup the comments afterwards. The end result is the same as if you run initially with the “—flags-only” option. This option allows you to take a look at the informational messages.

    $CETMODULES_DIR/tools/migrate  larcoreobj
    [garren@scisoftbuild01 srcs]$ $CETMODULES_DIR/tools/migrate --clean-info larcoreobj
    INFO: attempting to read <larcoreobj>/ups/product_deps... DONE
    INFO: attempting to complete, update or verify a manual, partial or previous migration
    INFO: made 6 edits to <larcoreobj>/CMakeLists.txt

```diff

    diff --git a/CMakeLists.txt b/CMakeLists.txt
    index 2b12b1d..85e4b26 100644
    --- a/CMakeLists.txt
    +++ b/CMakeLists.txt
    @@ -6,11 +6,12 @@
     #  buildtool [-I /install/path] -bt[i] -jN
     # ======================================================================

    -cmake_minimum_required(VERSION 3.19 FATAL_ERROR)
    +cmake_minimum_required(VERSION 3.20 FATAL_ERROR)
    +# cmake_policy(VERSION 3.19) ### MIGRATE-ACTION-COMPATIBILITY (migrate-3.05.04) - Uncomment to preseve compatibility with older CMake versions

    +find_package(cetmodules REQUIRED)
     project(larcoreobj VERSION 09.04.00 LANGUAGES CXX)

    -find_package(cetbuildtools REQUIRED)

     include(CetCMakeEnv)
     cet_cmake_env()
    @@ -21,11 +22,11 @@ cet_set_compiler_flags(DIAGS CAUTIOUS
       EXTRA_FLAGS -pedantic -Wno-unused-local-typedefs
     )

    -cet_report_compiler_flags()
    +cet_report_compiler_flags() ### MIGRATE-ACTION-RECOMMENDED (migrate-3.05.04) - add args: REPORT_THRESHOLD VERBOSE

    -find_package(cetlib_except REQUIRED PUBLIC)
    -find_package(cetlib REQUIRED PUBLIC)
    -find_package(canvas REQUIRED PUBLIC)
    +find_package(cetlib_except REQUIRED EXPORT)
    +find_package(cetlib REQUIRED EXPORT)
    +find_package(canvas REQUIRED EXPORT)
     find_package(canvas_root_io REQUIRED)

     # macros for artdaq_dictionary and simple_plugin
    @@ -40,7 +41,6 @@ add_subdirectory(larcoreobj)
     add_subdirectory(test)

     # ups - table and config files
    -add_subdirectory(ups)

     # packaging utility
    -include(UseCPack)
    +cet_cmake_config()
```

## Recommended changes

In most cases, running the migration script provides a basic and complete migration from cetbuildtools to cetmodules. However, we suggest also making the recommended changes.

### cmake policy

The cmake policy line is seldom necessary. Remove the commented out line to avoid confusion.

```diff

    cmake_minimum_required(VERSION 3.20 FATAL_ERROR)
    -# cmake_policy(VERSION 3.19) ### MIGRATE-ACTION-COMPATIBILITY (migrate-3.05.04) - Uncomment to preseve compatibility with older CMake versions
```

### cet_report_compiler_flags()

By default the report threshold is “STATUS”. The migration script recommends changing the threshold to “VERBOSE”, which results in **less** output.

```diff

    -cet_report_compiler_flags() ### MIGRATE-ACTION-RECOMMENDED (migrate-3.05.04) - add args: REPORT_THRESHOLD VERBOSE
    +cet_report_compiler_flags(REPORT_THRESHOLD VERBOSE)
```

### Use explicit XXX_make_library calls.

For packages that depend only on canvas, gallery, or canvas_root_io, replace cet_make with explicit calls to cet_make_library and build_dictionary.

```diff

    -cet_make(NO_DICTIONARY) ### MIGRATE-ACTION-RECOMMENDED (migrate-3.05.04) - deprecated: use cet_make_library(), build_dictonary(), cet_plugin() with explicit source lists and plugin base types
    +cet_make_library( SOURCE GeometryConfigurationInfo.cxx  POTSummary.cxx  RunData.cxx )

    -art_dictionary(DICTIONARY_LIBRARIES larcoreobj_SummaryData)
    +build_dictionary(DICTIONARY_LIBRARIES larcoreobj_SummaryData canvas::canvas)
```

For packages that use art, use explicit art_make_library, etc. calls.

### Use target libraries

The use of target libraries (e.g., package::library_name) enables cmake to discover properties.

```diff

    -           larcoreobj_SummaryData
    +           larcoreobj::SummaryData
```

## Breaking Changes

### cetlib_except

If any CMakeLists.txt file still contains *cetlib_except*, that must be changed to *cetlib_except::cetlib_except*.

### “missing” dependency

The order in which find_package and find_ups_product calls are made is very important. An error such as the one below usually indicates that the find_ups_product order needs to change. Also, once a package is built with cetmodules, it is preferable to use find_package.

    676: CMake Error at /cvmfs/larsoft.opensciencegrid.org/products/cetmodules/v3_05_04/Modules/private/CetOverrideFindPackage.cmake:174 (_find_package):
    677:   Found package configuration file:
    678: 
    679:     /cvmfs/larsoft-ib.opensciencegrid.org/LArSoft/LArSoft_custom_slf7_e20_prof_20220221_132325/localProducts_LArSoft_LArSoft_lar_ci_e20_prof/lardataobj/v09_05_01/slf7.x86_64.e20.prof/lib/lardataobj/cmake/lardataobjConfig.cmake
    680: 
    681:   but it set lardataobj_FOUND to FALSE so package "lardataobj" is considered
    682:   to be NOT FOUND.  Reason given by package:
    683: 
    684:   The following imported targets are referenced, but are missing:
    685:   larcoreobj::SummaryData
