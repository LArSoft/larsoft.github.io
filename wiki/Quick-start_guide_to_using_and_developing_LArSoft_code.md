# Quick-start guide to using and developing LArSoft code



LArSoft is not a stand-alone product. It is intended to be used as part of an experiment, so the set-up instructions for the experiment you are working with is the best place to start. To find a specific project, first check the [Quick Links](Quick_Links), then look on your experiment's pages in redmine for instructions on installing LArSoft software. (Go to: https://cdcvs.fnal.gov/redmine/projects and search for your experiment.)

The following is provided just to provide the general information that can be adapted by each experiment.  
These instructions are for working with larsoft release v1_00_00 and later, and mrb v1_00_00 and later. The instructions assume that LArSoft is installed locally using the download and installation instructions linked from the download page (see [Download instructions](Getting LArSoft)). Changes needed for off-site installations will be noted. This documentation is evolving as we receive feedback. Please open an issue ticket if you have suggestions or complaints.

Please note that all Fermilab redmine repository names are lower case. See the [LArSoft product list](LArSoft repositories packages and dependencies).

See [The developer environment](The_developer_environment) page for important information about the git branching model that should be used when developing LArSoft code.  
Detailed information about mrb is available from the [mrb reference guide](https://cdcvs.fnal.gov/redmine/projects/mrb/wiki/MrbRefereceGuide). Information about UPS is available from [getting started using UPS](https://cdcvs.fnal.gov/redmine/projects/ups/wiki/Getting_Started_Using_UPS)

## Before you start

-   To see list the available versions of a product, including all available qualifiers  
    > - set up ups as described below  
    > - use **ups list -aK+ <productname>** or **ups list -aK+ <productname> <version>**
-   To verify that all dependencies are available, use ups depend:  
    > - **ups depend <productname> <version> -q <qualifiers>**

<!-- -->

-   Each LArSoft “package” below corresponds to a git repository and a ups product which have the same name.

<!-- -->

-   You need modern versions of git and gitflow  
    > - git must be version 1.8 or newer  
    > - git 1.8.5.6 is available in /grid/fermiapp/products/larsoft  
    > - gitflow 0.4.2.pre is available in /grid/fermiapp/products/larsoft

<!-- -->

-   If you have not used git before, you will need to customize your git environment.  
    > - See https://git-scm.com/book/en/v2/Getting-Started-First-Time-Git-Setup

# The ultra-quick-start guide:

More detailed explanations of what is happening during each of these can be found in the annotated portion of this guide below.

### Initial setup of the working environment (starting from a fresh login):

Run experiment-specific setup script:

    source /cvmfs/uboone.opensciencegrid.org/products/setup_uboone.sh

  
or

    source /cvmfs/dune.opensciencegrid.org/products/dune/setup_dune.sh

  
(`*.csh` versions may also be available for csh/tcsh users)

If off-site, the appropriate script should be modified to reflect the locations of local product installations.

-   Perform the next step **only** if you want to run code in a frozen LArSoft release **and** are interested in running jobs specific to experiments other than DUNE and uBooNE. All other users should skip to the [Create a working area](Quick-start guide to using and developing LArSoft code#Create-a-working-area-2) step.

### Run non-DUNE or non-uBoonE jobs using only a frozen LArSoft release

    setup larsoft <version> -q e7:debug    # (or -q e17:prof)
    lar -c <job fcl file> ...

> That's it. You're set up.

## To build experiment-specific code for DUNE or uBooNE against an existing LArSoft release

### Build uboonecode or dunetpc

-   The instructions in this section are necessarily generic. You may wish to check the instructions for your experiment.
    -   [DUNE](https://cdcvs.fnal.gov/redmine/projects/dunetpc/wiki/_Tutorial_)
    -   [MicroBooNE](https://cdcvs.fnal.gov/redmine/projects/uboonecode/wiki/Uboone_guide)
-   Note that you must use an experiment-specific setup script for the initial setup (not including the setup of larsoft).

>

    export GROUP=dune # (or uboone)
    source /grid/fermiapp/$GROUP/software/setup_$GROUP.sh
    #
    mkdir <working_dir>
    cd <working_dir>
    mrb newDev -v vxx_yy_zz -q e17:prof    # (or -q e17:debug)
    source ./localProducts_vxx_yy_zz_e17_prof/setup # depends on the version abo
    #
    cd srcs
    mrb g <uboonecode|dunetpc>
    #
    <work on code...>
    cd ../build_*
    mrbsetenv
    mrb i -j4     # (if the machine has enough cores)

> “\<xxx\|yyy\>” is intended to denote selecting one or the other of xxx or yyy.  
> To work with an existing work area, omit `mkdir` and `mrb newDev` steps above.

### Run the software you just built

\*

    setup <uboonecode | dunetpc> <version> -q <qualifiers> 

-   Note: “mrbslp” will setup ALL products in your working localProducts directory.
-   If you've been following these directions, then uboonecode or dunetpc will be the ONLY product in your localProducts directory.

<!-- -->

-   Now run
        lar -c xxx.fcl ...

> - Note that the build procedure will un-setup any products that are being built, so those  
> need to be set-up again before they can be used.  
> - The version of `uboonecode` and `dunetpc` is set in the associated `ups/product_deps` file. See  
> the list of releases for the most current version, or use @ups list -aK+ \<dunetpc \| uboonecode\>

## To build and work with larsoft itself

### Create a working area

>After you have performed the initial setup:  
>

    mkdir <working_dir>
    cd <working_dir>
    mrb newDev -v vx_yy_zz -q e7:prof    # (or -q e7:debug)

  
> - where 'vx_yy_zz' is the base version for the release you are working with.  
> - Select from the [list of releases](LArSoftWiki#releases), or use 'ups list -aK+ larsoft' to get a complete list of available releases.  
> - Current release is v04_06_00 (See [LArSoftWiki](LArSoftWiki) for most recent release)  
> - Alternatively, you can 'setup larsoft <version> -q \<e7:debug\|e7:prof\>' before running 'mrb newDev', in which case you can omit the '-v' and '-q' from the 'mrb' command.

-   If you only want to run using the base LArSoft release and uBooNE or DUNE code, then skip ahead to the “To build experiment-specific code for DUNE or uBooNE against an existing LArSoft release” step

### Check out, develop and build LArSoft code

> After performing the initial setup and creating the working area, from `<working_dir>`:  
>

    source ./localProducts_XXX/setup
    cd srcs
    #
    # This next command checks out everything. You can also use single repository
    # names as the last argument if that is all you need. 
    # Abbreviates to mrb g <repo>
    mrb gitCheckout larsoft_suite    
    <work on code...use git flow branching scheme if introducing changes to LArSoft code>
    cd ../build
    mrbsetenv  
    mrb install -j4    # -jN => N parallel processes for the build (if the machine has enough cores)

  
> - `mrb install` (abbreviates to `mrb i`) will build then install results in localProducts_XXX. This  
> is the preferred command if you need to run what you are building.  
> - You can also use `mrb build` (or `mrb b`) if you just want the build with no install. Be aware, however, that you cannot run using the resulting build products.

> The list of repositories and their contents [can be found on this page ]( LArSoft repositories packages and dependencies ).

### Run the software you just built

> Starting from the build directory immediately after running `mrb build`:  
>

    mrb install  # if this was not run previously
    cd ..        # should now be in the top-level directory of working area
    #
    # The next line is needed if 
    # a) larsoft was set up prior to the build, and
    # b) any larsoft sub-products were built, and
    # c) you are going directly from having built to wanting to run in the same login session
    unsetup larsoft
    #
    # The next line is needed if any experiment code was built or if in a new login
    # session where it has not already been set up.
    # It will set up larsoft, so no need to do that up explicitly. 
    setup <uboonecode | dunetpc> <version> -q <qualifiers>  

    # If no experiment code was built, then comment out the line above and 
    # run this one instead:
    # setup larsoft <version> -q <qualifiers>

    # Now run
    lar -c xxx.fcl ...

> - Note that the build procedure will un-setup any products that are being built, so those  
> need to be set-up again before they can be used.  
> - The version of `uboonecode` and `dunetpc` is set in the associated `ups/product_deps` file. See  
> the list of releases for the most current version, or use @ups list -aK+ \<dunetpc \| uboonecode\>

# Annotated quick-start guide

## Initial setup

The first time you start a mrb project, you'll need to define various things. (The setup for an existing working area is slightly different, and is described [here](Quick-start_guide_to_using_and_developing_LArSoft_code_#Setup-work-environment-for-an-existing-working-area-from-a-fresh-login)

There are experiment-specific setup scripts to perform setup. For example.  
>

    /grid/fermiapp/lbne/software/setup_lbne.sh
    /grid/fermiapp/lbne/software/setup_lbne.csh

  
> AND:  
>

    /grid/fermiapp/uboone/software/setup_uboone.sh
    /grid/fermiapp/uboone/software/setup_uboone.csh

-   The generic setup steps are:  
    > - setup ups  
    > - set the $PRODUCTS path if necessary  
    > - setup git  
    > - setup gitflow  
    > - define MRB_PROJECT  
    > - setup mrb  
    > - setup <project> <version>  
    > - define MRB_PROJECT  
> > - MRB_PROJECT is meant to define your project. `mrb newDev` will **require** that MRB_PROJECT be the name of a ups product.  
> > - Eventually, you will be able to use the experiment name for the project.  
> > - For now, just use “larsoft” in all cases.

<!-- -->

-   This fragment works on uboonegpvm01 and other gpvm machines:
        source /grid/fermiapp/products/larsoft/setup
        setup git
        setup gitflow
        setup mrb
        setup larsoft <version> -q <qualifiers>
        export MRB_PROJECT=larsoft

You are now ready to create a working area.

## Create a working area

### Everything (source code, <localProdDir>, and build directory) in one directory tree

Case 1: you have setup <MRB_PROJECT> <version> (the recommended procedure)

    mkdir <working_dir>
    cd  <working_dir>
    mrb newDev 

  
> - this creates <working_dir>/build, <working_dir>/srcs, and <working_dir>/localProducts*<span style="text-align:left;">MRB_PROJECT\></span>*<version>_<qualifiers>  
> - We refer to <working_dir>/localProducts… as <localProdDir>

-   source <localProdDir>/setup

Case 2: you did not setup <MRB_PROJECT> <version>

    mkdir <working_dir>
    cd  <working_dir>
    mrb newDev -v <version> -q <qualifiers>

  
> - this creates <working_dir>/build, <working_dir>/srcs, and <working_dir>/localProducts*<span style="text-align:left;">MRB_PROJECT\></span>*<version>_<qualifiers>  
> - We refer to <working_dir>/localProducts… as <localProdDir>

-   source <localProdDir>/setup

### Source code under your home directory

    mkdir <working_dir>
    mkdir <source_dir>
    mrb newDev -T <working_dir> -S <source_dir>

  
> - this creates <working_dir>/build and <working_dir>/localProducts*<span style="text-align:left;">MRB_PROJECT\></span>*<version>_<qualifiers>  
> - We refer to <working_dir>/localProducts… as <localProdDir>  
> - Note that you may also need to specify -v <version> and -q <qualifiers> as above

-   source <localProdDir>/setup

## Setup work environment for an existing working area from a fresh login

To set up the working environment for an existing working area, you need to source the setup script in the local products area created in the previous step. The local setup defines environment variables needed by mrb, and adds the local products area to the $PRODUCTS path so that ups can find local versions of products (created during the build/install step). The generic steps are the following:

-   perform the initial setup above  
    > - set up ups  
    > - set the $PRODUCTS path  
    > - make sure you have gitflow and git 1.8 or newer
-   source <localProdDir>/setup  
    On uboonegpvm0X and lbnegpvm0X:
        source /grid/fermiapp/products/larsoft/setup
        setup git
        setup gitflow
        setup mrb
        export MRB_PROJECT=larsoft
        cd <working_dir>
        source ./localProducts_XXX/setup
        setup larsoft <version> -q <qualifiers>   # optional
-   Note that the larsoft setup needs to come after the setup in localProducts_XXX.

## Developing a package

-   After setting up the working environment:
        cd $MRB_SOURCE
        mrb gitCheckout <package_1>
        mrb g <package_2>

      
    Or to check out the entire larsoft suite, replace the separate `mrb g ...` with:
        mrb g larsoft_suite 
-   Please note that all Fermilab redmine repository names are lower case.
-   mrb presumes your package is in Fermilab redmine unless you specify the full repository name.
-   You may supply either a package name or a repository name  
    > - if there is only a package name, presume this is a Fermilab redmine project  
    > - if there is a full repository name, use the repository name
-   You may checkout a branch or tag  
    > - mrb g -t <tag> <package>  
    > - mrb g -b <branch> <package>  
    > - note that -t and -b must precede the package name

## Build code in your working area

-   After setting up the working environment:
        cd $MRB_BUILDDIR
        mrbsetenv
        mrb b [-jN]                # Must be done in the same shell

      
    > - where N is the number of parallel build streams to use  
    > - mrb b (build) calls buildtool, which is very powerful
        mrb install                # Abbrev mrb i. Must be done in the same bash shell

      
    > - optional  
    > - The mrb install command will make a ups product in your <localProdDir> for the package you are building.  
    > - You can also just type “make install \[-jN\]”

<!-- -->

-   To get rid of what you just built (or tried to build) and start over:
        cd $MRB_BUILDDIR
        rm -rf *

      
> Then start from the top of this section.

## Running with the modifications made in your working area

The build/install procedure performs an `unsetup` of every product it builds. It does this to ensure that the build environment points only to the local code being built. It also ensures that if you run `setup <product>...` after the build and within the same login session, you get the locally installed version rather than the one you were pointing to at the beginning of the build/install procedure. (The setup command does nothing if the product is already set up.) After building *and installing*, you will therefore need to run `setup` for all the products that you just built.

This behavior results in the following curious complication. If you build only *some* of the larsoft sub-products, but not the “larsoft” product proper, then running `setup larsoft...` after the build is completed *will not* set up the sub-products that you just built. The solution is either to run `setup <sub-product>...` by hand for each product that was build, or to first run `unsetup larsoft` so that a subsequent `setup larsoft...` causes everything to be set up again.

Since all this seems complicated, we have introduced the `mrb setup_local_products` command (abbreviated to `mrb slp`) that will perform the proper setup.

So, assuming that the basic setup has been completed and the local products setup has been sourced, then starting from the build directory:

    cd ..
    unsetup larsoft   
    #
    # The next line is needed if any experiment code was built. It will
    # set up larsoft, so no need to set that up explicitly
    setup <uboonecode | dunetpc> <version> -q <qualifiers>  

    # If no experiment code was build, then comment out the line above and 
    # run this one instead:
    # setup larsoft <version> -q <qualifiers>

    # Now run
    lar -c ...

You will also need to manually set up any other products that are installed in the local products area that are not already dependencies of either larsoft or the experiment-specific products.

Since all this seemed complicated, we have introduced the `mrb setup_local_products` command (abbreviated to `mrb slp`) that will perform the proper setup of all products in the local products directory, regardless of whether they are part of LArSoft. To use this command in the above example (where we am assuming that you had set up `uboonecode`, `dunetpc`, or `larsoft` going into the build):

    cd ..
    mrbslp

    # Now run
    lar -c ...

  
(Note that if this command is used, then you must run programs in the same shell)

If starting from a fresh login, then the usual setup procedure (`setup <dunetpc | uboonecode | larsoft>` is all that it needed.

## Performing a clean build

    cd $MRB_BUILDDIR
    mrb zapBuild
    mrbsetenv
    mrb install

  
OR:

    cd $MRB_BUILDDIR
    rm -rf *
    mrbsetenv
    mrb install

You should perform a clean build whenever a product is added or removed. Cmake errors during the build may require that you start with a clean build.

## Removing a package from a work area

    cd $MRB_SOURCE
    rm -rf <repo-name>
    mrb uc

The `mrb uc` command will update the top-level `CMakeLists.txt` file to take into account the newly removed package.

## Creating an entirely new product within an existing work area

Assume that there is an existing repository with the same name that you want to attach to the newly created product.

    cd $MRB_SOURCE
    mrb newProduct <new-prod-name>
    cd <new-prod-name>
    git remote add <alias> <new-prod-repo-url>
    git pull <alias> <branch>

The new product template has two files that are important to know about and that you will almost certainly need to modify in order to create a new product (the only exception being the case that you are attaching to a repository that already has a working product in it): `<new-prod-name>/CMakeLists.txt`, and `<new-prod-name>/ups/product_deps`. In general, the `CMakeLists.txt` files control the build-time configuration and the items that get built, and specify what files in the product get installed where during the install phase. (See the [cet-is-public:Cetbuildtools cmake modules](https://cdcvs.fnal.gov/redmine/projects/cet-is-public/wiki/Cetbuildtools_cmake_modules) and [cet-is-public:Art cmake modules](https://cdcvs.fnal.gov/redmine/projects/cet-is-public/wiki/Art_cmake_modules) pages for information on writing CMakelists.txt files within our build system.) The `product_deps` file controls the run-time configuration via a ups “table” file (`<new-prod-name>/ups/<new-prod-name>.table`) that gets generated during the build and installation procedure. (See the [cet-is-public:Defining products in the CET build environment](https://cdcvs.fnal.gov/redmine/projects/cet-is-public/wiki/Defining_products_in_the_CET_build_environment) page for details on the content of product_deps file.) More information on the build system can be found on the [LArSoftWiki](LArSoftWiki) page.

Set the product version number in the `<new-prod-name>/ups/product_deps` file.

Then build as usual.

# Comparison of mrb and SRT commands

The following table compares SRT commands with their approximate mrb analogs.  
The equivalency is based entirely upon approximate parallel functionality within their respective frameworks.  
HOWEVER, please see the instructions above since there is not a one-to-one translation and behaviors differ.

|                               |                                        |
|-------------------------------|----------------------------------------|
| **Legacy / SRT command**      | **Analogous mrb command**              |
| setup_larsoft_fnal.sh         | The setup procedure above              |
| newrel -t <release> <name>    | mkdir <name>; cd <name>; mrb newDev    |
| addpkg_svn -h <package> <tag> | mrb gitCheckout \[-t <tag>\] <package> |
| newpkg <name>                 | mrb newProduct <name>                  |
| srt_setup -a                  | mrb setEnv                             |
| gmake all                     | mrb install                            |
| rmpkg <name>                  | rm -r <name> ; mrb uc                  |

# Using prebuilt releases

The new larsoft ups product and all its dependencies are installed in the /grid/fermiapp/products/larsoft product directory.  
This directory is mounted on the relevant gpvm machines and Fermilab grid worker nodes.  
In addition, a mirror of this directory is available on cvmfs at /cvmfs/fermilab.opensciencegrid.org/products/larsoft/  
We encourage users to [ install and use a cvmfs client ](LArSoft_cvmfs_page) instead of installing the binary distribution wherever possible.

Binary distributions are available under https://scisoft.fnal.gov/

If you need to pull everything (LArSoft plus all external packages) in order to create a new installation of the software (for instance, for an off-site installation to support a local analysis group), we recommend using the download script available from SciSoft.

    curl -O  https://scisoft.fnal.gov/bundles/tools/pullProducts
    chmod +x pullProducts
    ./pullProducts <product_dir> <slf6|d14|d13> larsoft-<version> s8-e7 <debug|prof>

  
> - See [https://scisoft.fnal.gov/scisoft/bundles/larsoft/`<version>`/larsoft-`<version>`.html](https://scisoft.fnal.gov/scisoft/bundles/larsoft) for explicit instructions for each release.  
> - This will pull the relocatable ups products and install them in <product_dir> where you should specify the full path to the product directory.  
> - The prof distribution requires about 20G  
> - Typing ./pullProducts without any options will echo the usage guide.  
You can find detailed instructions for downloading and installing binary and source distributions [ on the download page ]( Download instructions ).

# Building the larsoft “suite”

In rare cases, you may need to build from scratch.

# General Information about git and art

-   [mrb Reference Guide](https://cdcvs.fnal.gov/redmine/projects/mrb/wiki/MrbRefereceGuide)

<!-- -->

-   [About Qualifiers](https://cdcvs.fnal.gov/redmine/projects/cet-is-public/wiki/AboutQualifiers)
-   [cet-is-public:cetbuildtools user guide](https://cdcvs.fnal.gov/redmine/projects/cet-is-public/wiki/cetbuildtools_user_guide)

<!-- -->

-   [cet-is-public:git flow quick start](https://cdcvs.fnal.gov/redmine/projects/cet-is-public/wiki/git_flow_quick_start) (edited 2/4/2013).
-   [cet-is-public:Marc's suggested git workflow](https://cdcvs.fnal.gov/redmine/projects/cet-is-public/wiki/Marc's_suggested_git_workflow)
-   [Git Tips and Tricks](https://cdcvs.fnal.gov/redmine/projects/cet-is-public/wiki/GitTipsAndTricks)

<!-- -->

-   [cet-is-public:Building your own code with cmake](https://cdcvs.fnal.gov/redmine/projects/cet-is-public/wiki/Building_your_own_code_with_cmake)
-   [cet-is-public:Defining products in the CET build environment](https://cdcvs.fnal.gov/redmine/projects/cet-is-public/wiki/Defining_products_in_the_CET_build_environment)
-   [Adding Product Dependencies](https://cdcvs.fnal.gov/redmine/projects/cet-is-public/wiki/AddingProductDependencies)
-   [Various helpful tips for coding in the CET C environment](https://cdcvs.fnal.gov/redmine/projects/cet-is-public/wiki/CodeTips)
