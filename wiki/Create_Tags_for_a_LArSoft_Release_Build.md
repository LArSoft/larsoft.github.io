Create Tags for a LArSoft Release Build
====================================================================================

-   **Table of contents**
-   [Create Tags for a LArSoft Release Build](#Create-Tags-for-a-LArSoft-Release-Build)
    -   [Determine which packages to tag.](#Determine-which-packages-to-tag)
    -   [Check the information for the build files](#Check-the-information-for-the-build-files)
    -   [Merge changes with the master branch and tag](#Merge-changes-with-the-master-branch-and-tag)
        -   [tagging by hand](#tagging-by-hand)
    -   [Copy the build files to SciSoft](#Copy-the-build-files-to-SciSoft)

Determine which packages to tag.
---------------------------------------------------------------------

-   Make sure all experiment packages are removed from \$MRB\_SOURCE.
-   Remove the package from \$MRB\_SOURCE if no new tag is required.
    -   cd  $MRB_SOURCE; mkdir ../notag
            mv ub* ../notag
            mv dune* ../notag
            mv lariat* ../notag
            mv argoneutcode ../notag
            mv sbnd* ../notag
            move any lar* package that is not changing

    -   run “mrb uc” after removing packages

Check the information for the build files
----------------------------------------------------------------------------------------

-   Each release needs a config file. We no longer use a source code manifest.
    -   These files are generated automatically by cmake from templates in larsoft/releaseDB and larsoftobj/bundle.
-   mrb uv should have updated these CMakeLists.txt files, but it is wise to check.
-   cd $MRB_SOURCE
        grep ^parent lar*/ups/products_deps

    -   Update the versions in larsoft/releaseDB/CMakeLists.txt as appropriate.
    -   On rare occasion, the lar\* templates also need to be updated.
-   **update larsoft/releaseDB/CMakeLists.txt with new product versions**
    -   git commit this change to releaseDB, but NOT the change to ups/product\_deps
-   **update larsoftobj/bundle/CMakeLists.txt with new product versions**
    -   git commit this change to bundle, but NOT the change to ups/product\_deps
-   build again

Merge changes with the master branch and tag
----------------------------------------------------------------------------------------------

-   NOTE: tagLAr will commit the changes to ups/product\_deps. Any other changes must be committed BEFORE running tagLAr.
-   tagLAr tag \$MRB\_PROJECT\_VERSION
-   Notice that we have not yet updated the develop branch. That step is done AFTER the build is complete and installed.

### tagging by hand

-   If a conflict occurs during the merge stage, this step must be done by hand for each package.\

        cd $MRB_SOURCE/larpackage
        git status (verify that the branch is release/vxx_yy_zz)
        git commit -m"larpackage vaa_bb_cc for larsoft vxx_yy_zz" ups/product_deps
        git checkout master
        git merge release/vxx_yy_zz
        (resolve conflicts if necessary)
        git tag -a -m"larpackage vaa_bb_cc for larsoft vxx_yy_zz" vaa_bb_cc
        git push origin master
        git push --tags

Copy the build files to SciSoft
--------------------------------------------------------------------

-   Make a new build with all changes.
-   Check that the generated files in larsoft match the generated files in larsoftobj.\

        cd $MRB_BUILDDIR/larsoft
        $ diff releaseDB/ ../larsoftobj/bundle/ | grep diff
        diff releaseDB/cmake_install.cmake ../larsoftobj/bundle/cmake_install.cmake
        diff releaseDB/CTestTestfile.cmake ../larsoftobj/bundle/CTestTestfile.cmake
        diff releaseDB/Makefile ../larsoftobj/bundle/Makefile
        $ diff releaseDB/ ../larsoftobj/bundle/ | grep Only
        Only in releaseDB/: larbase-cfg-08.24.00
        Only in releaseDB/: lar_product_stack-cfg-08.24.00
        Only in releaseDB/: larsoft-cfg-08.24.00
        Only in releaseDB/: larsoft-v08_24_00.html

    -   It’s also a good idea to check the lar\* files against the files used for the [previous release](http://scisoft.fnal.gov/scisoft/bundles/larsoft/).
-   cd \$MRB\_BUILDDIR/larsoft/releaseDB
    -   curl -O [http://scisoft.fnal.gov/scisoft/bundles/tools/copyToSciSoft](http://scisoft.fnal.gov/scisoft/bundles/tools/copyToSciSoft)
    -   chmod +x copyToSciSoft
    -   copyToSciSoft lar\*
