LArSoft Release Build Preliminary Steps
====================================================================================

Send announcement
----------------------------------------

Send an announcement to listing any feature branches which will be included in the release. This announcement may prompt users to make last minute requests to include code.

Setup the environment
------------------------------------------------

    source /products/setup
    setup mrb
    setup larreltools
    export PATH=$LARRELTOOLS_DIR/expert:${PATH}
    export MRB_PROJECT=larsoft

larreltools
----------------------------

-   larreltools contains scripts used for release management
    -   This package replaces laradmin
    -   By default, only the scripts used when building patch releases are in the path.
-   The latest release of larreltools will be available on larsoft cvmfs
-   larreltools is available from [SciSoft](http://scisoft.fnal.gov/scisoft/packages/larreltools/)

Make a new working directory and checkout the code
----------------------------------------------------------------------------------------------------------

-   tagLar mkdir \<new_release\> \<working_dir\>
    -   this will create and populate \<working_dir\>/\<new_release\>
-   At this time, we test against ArgoNeuT, DUNE, LArIAT, SBND, and MicroBooNE code.
    -   ICARUS will be added once we deal with naming conflicts.

### Directory structure

-   Build directories are created for debug and prof builds of both e17 and c2.
-   The directory structure at \<working_dir\>/\<new_release\> is now:

        srcs

        c2d:
        build_...  localProducts_larsoft_<new_release>_c2_debug

        c2p:
        build_...  localProducts_larsoft_<new_release>_c2_prof

        e17d:
        build_...  localProducts_larsoft_<new_release>_e17_debug

        e17p:
        build_...  localProducts_larsoft_<new_release>_e17_prof

Make sure the head of develop is consistent
--------------------------------------------------------------------------------------------

-   source e17p/localProducts\*/setup
-   cd \$MRB_BUILDDIR
-   mrbsetenv
-   mrb t -jN
    -   (use -j20 on woof)
    -   this will build and then test
-   use separate login sessions to work with other qualifier sets. It’s important to make sure that the c2 build also works.
-   Be sure to build and test with both gcc and clang (e17 and c2)
-   **If there are problems in either build or test, the code MUST be fixed before proceeding.**
-   if fixing the code takes several hours or more, make sure you pull any changes committed while you were working ( and make sure the build is still OK )

update releaseDB
--------------------------------------

-   releaseDB/base_dependency_database should be updated for larsoft, dunetpc, and uboonecode
-   This step must be done with all of larsoft_suite, dunetpc, and uboonecode in srcs
-   Make these changes in the develop branch before starting the release tag
-   cd \$MRB_BUILDDIR
-   mrb md
-   cat .dependency_database | grep -v uboonecode | grep -v dunetpc | grep -v lbne_raw_data | grep -v argoneutcode | grep -v lariat | grep -v sbndcode \> \$MRB_SOURCE/larsoft/releaseDB/base_dependency_database
-   cat .dependency_database | grep -v uboonecode | grep -v argoneutcode | grep -v lariat | grep -v sbndcode \> \$MRB_SOURCE/dunetpc/releaseDB/base_dependency_database
-   cat .dependency_database | grep -v dunetpc | grep -v lbne_raw_data | grep -v argoneutcode | grep -v lariat | grep -v sbndcode \> \$MRB_SOURCE/uboonecode/releaseDB/base_dependency_database
-   cd \$MRB_SOURCE/larsoft
    -   git diff releaseDB
    -   git commit -m“update dependency database” releaseDB/base_dependency_database
    -   git push origin develop
-   repeat the commit for dunetpc and uboonecode

Using the CI to check feature branches
----------------------------------------------------------------------------------

-   setup the CI environment

        source /cvmfs/fermilab.opensciencegrid.org/products/common/etc/setups.sh
        setup cigetcert
        cigetcert -s fifebatch.fnal.gov
        voms-proxy-init -noregen -rfc -voms fermilab:/fermilab/lariat/Role=Analysis
        setup lar_ci

-   request a CI build with relevant feature branches. Be sure to use quotes for the list of revisions.

        trigger --build-delay 0 --revisions "lardataobj@feature/bb_recobslice larreco@feature/bb_restruct" 

-   In special cases, test a release candidate.
    -   workflows are listed on the [lar_ci wiki](https://cdcvs.fnal.gov/redmine/projects/lar_ci/wiki/LArCI_Workflows)

            trigger --build-delay 0 --revisions "*@feature/team_for_art_v3" --workflow argoneutcode_wf

Special instructions for experiment code
--------------------------------------------------------------------------------------

### dunetpc

-   dunetpc uses a differently qualified genie_xsec than the other experiments. mrb v3 is sensitive to this, so we maintain a special working branch.

        cd $MRB_SOURCE/dunetpc
        git checkout feature/team_for_larsoft_release_testing
        git merge develop
        git diff develop (The only changes should be in ups/product_deps qualifier matrix)
        git push origin feature/team_for_larsoft_release_testing

### uboonecode

-   uboonecode has some comprehensive tests that are really integration tests.
-   Until these tests are moved to the CI, it is best to disable some, but not all, of them.
-   I prefer to retain ProductionMCC9 and disable DataProductionMCC9 and OverlayProductionMCC9

        diff --git a/test/CMakeLists.txt b/test/CMakeLists.txt
        index ba6bffc..996c7e1 100644
        --- a/test/CMakeLists.txt
        +++ b/test/CMakeLists.txt
        @@ -13,10 +13,10 @@ add_subdirectory(test_fcl)
        #add_subdirectory(Production)
        add_subdirectory(ProductionMCC9)
        #add_subdirectory(DataProduction)
        -add_subdirectory(DataProductionMCC9)
        +#add_subdirectory(DataProductionMCC9)
        add_subdirectory(SpaceCharge)
        #add_subdirectory(OverlayProduction)
        -add_subdirectory(OverlayProductionMCC9)
        +#add_subdirectory(OverlayProductionMCC9)
        add_subdirectory(SparseRawDigits)
        add_subdirectory(Swizzle)
        add_subdirectory(CRTSwizzle)

### argoneutcode

-   dunetpc and argoneutcode are sharing CVN code. Library names are now unique, but the same class name is used in both repositories.
-   The shared code is meant to be factored out and moved to larsoft.
-   In the meantime, do not build argoneutcode/CVNArgoneut.

        diff --git a/CMakeLists.txt b/CMakeLists.txt
        index 8ceaff8..9882d11 100644
        --- a/CMakeLists.txt
        +++ b/CMakeLists.txt
        @@ -100,7 +100,8 @@ add_subdirectory(production_fcl)
        add_subdirectory(ArgoneutCalData)
        add_subdirectory(ArgoneutEventSelection)

        -add_subdirectory(CVNArgoneut)
        +# dictionary problems
        +#add_subdirectory(CVNArgoneut)

        # Top level fcl files.
        #add_subdirectory(fcl)
