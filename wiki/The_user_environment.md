The user environment
==============================================

LArSoft releases are distributed via ups products. Each product contains software within a similar layer of functionality. Those interested in using the core LArSoft software, but who have no need to modify or develop that software can in principle simply perform the appropriate ’`setup <product> <version> -q <qualifier>`’ commands, then build their code against those products by including the corresponding \$\<PRODUCT NAME\>\_INC and \$\<PRODUCT NAME\>\_LIB environment variables in the appropriate search paths. The build system of course does all this for you.

In addition to the individual sub-products, there is an umbrella "`larsoft`" product that can be used to set up all other products with a single command:

    setup larsoft <version> -q <qualifiers>

The versions and qualifiers available can be obtained by looking at the [table of releases on the LArSoft wiki](LArSoft_release_list#releases), or by using the following command:

    ups list -aK+ larsoft

The qualifiers will be one of the following: “debug:e4”, “prof:e4”, “opt:e4”, where:

-   debug = debugging symbols available
-   opt = compiler optimizations enabled, no debug symbols
-   prof = compiler optimizations enabled, profiling code generated
-   e4 = built with gcc 4.8.1 and -std=c++0x

(See [the explanation of product qualifiers page](/redmine/projects/cet-is-public/wiki/AboutQualifiers) for more information on the qualifiers used in art products.)

In general, only `debug` and `prof` versions will be provided, since the `prof` version is optimized and there is no run-time performance penalty for code that has the profiling interfaces enabled.

The core LArSoft packages under the “larsoft” umbrella do not include most of the experiment-specific software, so setting up the “larsoft” product will not provide access to the experiment-specific code. The experiment software that has been factored out of LArSoft includes such things as some raw data input drivers, detector geometry files, wire simulation digitization code, experiment-specific FHICL files, etc. The DUNE and uBooNE code lives in the dunetpc and uboonecode repositories, respectively.

Just as for the case of the LArSoft core repositories, the list of versions and qualifiers can be obtained by using:

    ups list -aK+ <dunetpc | uboonecode>

or by looking at the [table of releases on the LArSoft wiki](LArSoft_release_list).

The experiment software depends upon the core LArSoft packages, so setting up either will also set up the appropriate version of larsoft, which in turn will set up all the larsoft sub-products. For DUNE and uBooNE users, the single

    setup <dunetpc|uboonecode> <version> -q <qualifier> 

will be the most simple way to set up the user environment to be able to run LArSoft jobs.

To build code with LArSoft, We recommend the multi-repository build tool **`mrb`**. mrb allows users to have version control over their own code, and build the software including changes to the LArSoft code. The build system is based upon **`cmake`** and a toolkit of scripts and `cmake` macros in the **`cetbuildtools`** product – the same set of tools that are used to build the `art` framework that underpins LArSoft. `mrb` operates above `cmake` and drives the build and installation procedure across (possibly) multiple repositories within one’s working area. Using `mrb` also ensures the integrity and structure of the working area.

One’s working directory within this system has the following structure:

-   a source code sub-directory where all development takes place;
-   a build sub-directory where all build activities take place;
-   and a local products area, where all successfully built software is installed, and from which it can be set up to run from any directory.
    For example, here is an empty working area skelton created by the `mrb newDev` command:

        ./srcs
        ./srcs/CMakeLists.txt
        ./srcs/cmake_include_dirs
        ./srcs/cmake_add_subdir
        ./srcs/dependency_list
        ./srcs/setEnv
        ./build
        ./localProducts_larsoft_v0_02_01_debug_e4
        ./localProducts_larsoft_v0_02_01_debug_e4/.upsfiles
        ./localProducts_larsoft_v0_02_01_debug_e4/.upsfiles/dbconfig
        ./localProducts_larsoft_v0_02_01_debug_e4/setup

The `mrb` / `cmake` / `cetbuildtools` system uses the `build` sub-directory to build code in the `srcs` sub-directory, then packages and installs the results as ups products in the `localProducts_xxx...` sub-directory. In order for this procedure to work, the source code in the `srcs` area must be organized in packages with a specific set of configuration files.

Creating a new product in your working area: `mrb newProduct`
-----------------------------------------------------------------------------------------------------------------------------

To simplify adding new products, the `mrb newProduct` command is provided to create an empty product template with the minimal structure and configure files necessary. Two of these configuration files must be modified by the user as code is added to the package:

-   a top-level **`CMakeLists.txt`** file, that specifies which sub-directories will be included in the build along with any global configuration needed to build the product;
-   and a **`product_deps`** file that specifies the dependencies for the package.
    Every sub-directory created within the package must have its own CMakeLists.txt file in order to drive the build for that directory.

The product template that `mrb` uses can be customized for an experiment. Here is an example of the default product template for a hypothetical product called “sample”:

    sample/CMakeLists.txt
    sample/test
    sample/test/CMakeLists.txt
    sample/ups
    sample/ups/CMakeLists.txt
    sample/ups/product-config.cmake.in
    sample/ups/product_deps
    sample/ups/setup_deps
    sample/ups/setup_for_development
    sample/.git

The `.git` subdirectory is the git repository that will be associated with the product. (Use the `git remote add` command to attach to an existing repository.)

Although the details differ, the above scheme is essentially the same as following the package structure conventions imposed by SRT, using GNUmakefile’s and arch\_spec\_xxx.mk files to configure the build, and a global release setup script to configure the user and build environment. With `cmake`, the GNUmakefiles are replaced by `CMakeLists.txt` files, while the “global environment” for the product is managed locally with the `product_deps` and top-level CMakeLists.txt files. The build system (`mrb` and `cetbuildtools`) then manages all the details of utilizing ups to configure the build environment, drive the build, and package and install the ups end-products in the local products area.
