Problems not yet resolved
========================================================

uboonecode memory issue
----------------------------------------------------

Herb reports that jobs consume about twice as much memory.\
This problem will be resolved when we build with art 1.19.xx.

ci\_reco1\_regression\_test\_uboonecode
--------------------------------------------------------------------------------

When we disable fast cloning for ci\_reco1\_regression\_test\_uboonecode, the test appears to hang. Using lar –trace the hang occurs in module for event:fuzzyclustermerger. We also notice that GausHitFinder takes significantly longer than when running with root 5. A build of the head of the v06\_00\_00\_rc branch is available on woof. We are hoping to get a handle on this problem before tagging v06\_00\_00\_rc3.

RESOLVED: [Migration\_to\_root\_6](Migration_to_root_6#TFormula-bug-on-missing-parameter-in-expression)

### To reproduce the problem on woof by running the CI tests:

    source /home/garren/scratch/larsoft/citest/setci.sh
    mkdir <ci_test_dir>
    cd <ci_test_dir>
    setup uboonecode v06_00_00_rc2 -q e9:prof
    setup lar_ci v2_0_2
    test_runner quick_test_uboonecode

\
This will complain, and only run some of the tests, but you will see it hang.

### run the problematic test by hand:

    source /products/setup
    export PRODUCTS=/home/garren/scratch/larsoft/citest/prd:${PRODUCTS}
    setup uboonecode v06_00_00_rc2 -q e9:prof
    mkdir <manual_test_dir>
    cd <manual_test_dir>
    ln -s /pnfs/uboone/scratch/users/vito/ci_tests_inputfiles/prodgenie_bnb_nu_cosmic_uboone_Reference_detsim_default.root
    ln -s /pnfs/uboone/scratch/users/vito/ci_tests_inputfiles/prodgenie_bnb_nu_cosmic_uboone_Reference_reco1_default.root
    ln -s /pnfs/uboone/scratch/users/vito/ci_tests_inputfiles/Reco1RandomSeeds_Ref.dat
    cp $UBOONECODE_DIR/job/ci_test_reco1_uboonecode.fcl .
    cp $UBOONECODE_DIR/job/reco_uboone_stage_1.fcl .
    lar --rethrow-all -n 1 -o prodgenie_bnb_nu_cosmic_uboone_Current_reco1.root --config ci_test_reco1_uboonecode.fcl prodgenie_bnb_nu_cosmic_uboone_Reference_detsim_default.root --trace

\
You can edit the local reco\_uboone\_stage\_1.fcl file.
