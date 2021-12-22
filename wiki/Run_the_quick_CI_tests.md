Run the quick CI tests
==================================================

-   **Table of contents**
-   [Run the quick CI tests](#Run-the-quick-CI-tests)
    -   [Install packages for testing](#Install-packages-for-testing)
    -   [Setup the environment](#Setup-the-environment)
    -   [Run the CI tests](#Run-the-CI-tests)
        -   [get a VO proxy](#get-a-VO-proxy)
        -   [setup the experiment code](#setup-the-experiment-code)
        -   [Run the tests](#Run-the-tests)
    -   [Deal with problems](#Deal-with-problems)

It is important to update the [version numbers](Update_versions) before this step. This helps ensure that you are testing the new code. Note that you need access to cvmfs.

This step is optional. In general, if a CI test has run successfully for any feature branches, we do not expect problems.

Install packages for testing
--------------------------------------------------------------

-   Once `mrb t` completes successfully, run `make -jN install`. This will install packages in \$MRB\_INSTALL for testing.

Setup the environment
------------------------------------------------

-   The CI tests must be run from a their own login session.
-   source /products/setup
-   setup mrb
-   source \<working area\>/localProdcts\*/setup
-   DO NOT run mrbslp or do any further setup

Run the CI tests
--------------------------------------

-   make an empty directory for the CI tests (e.g., \<new version\>/p/CI)

### get a VO proxy

    source /cvmfs/fermilab.opensciencegrid.org/products/common/etc/setups.sh
    setup cigetcert
    cigetcert -s fifebatch.fnal.gov
    voms-proxy-init -noregen -rfc -voms fermilab:/fermilab/lariat/Role=Analysis
    setup lar_ci

### setup the experiment code

-   Be sure to run the e15 and c2 tests in separate login sessions.\

        source ../<new version>/p/local*/setup
        setup argoneutcode <new version> -q e15:prof
        setup dunetpc <new version> -q e15:prof
        setup lariatsoft <new version> -q e15:prof
        setup sbndcode <new version> -q e15:prof
        setup uboonecode <new version> -q e15:prof

    \

        source ../<new version>/c2p/local*/setup
        setup argoneutcode <new version> -q c2:prof
        setup dunetpc <new version> -q c2:prof
        setup lariatsoft <new version> -q c2:prof
        setup sbndcode <new version> -q c2:prof
        setup uboonecode <new version> -q c2:prof

### Run the tests

    test_runner -v                     -c $ARGONEUTCODE_DIR/test/ci_tests.cfg quick_test_argoneutcode
    test_runner -v --parallel-limit 10 -c $LARIATSOFT_DIR/test/ci_tests.cfg quick_test_lariatsoft
    test_runner -v --parallel-limit 10 -c $SBNDCODE_DIR/test/ci_tests.cfg quick_test_sbndcode
    test_runner -v --parallel-limit 10 -c $UBOONECODE_DIR/test/ci_tests.cfg quick_test_uboonecode
    test_runner -v --parallel-limit 20 -c $DUNETPC_DIR/test/ci_tests.cfg quick_test_dunetpc

Deal with problems
------------------------------------------

-   Ignore warnings, but check any Fail report
-   Sometimes the failure is just because there was a problem accessing a file.
    -   Usually, these failures are ephemeral and can be ignored.
    -   However, if this failure points to a missing file, that problem should be addressed.
-   The most useful files to check are stderr.log and stdout.log in the directory associated with the failed CI test.
-   Sometimes the problem is simple to fix locally.
-   Usually, you will need to contact the person who made the changes and report the problem.
    -   Also cc in these messages.
    -   If the problem cannot be resolved in time for a release, the associated feature branch will be rejected for this weeks release.
    -   To reject a feature branch:\

            cd $MRB_SOURCE/<package>
            (We want to save changes to ups/product_deps, but not any other changes.)
            git stash 
            git checkOut develop
            git branch -D release/<new version>
            git checkOut -b release/<new version>
            git stash pop
            At this point, you probably want to run mrb uv to change the new package version to match the version guidelines.
