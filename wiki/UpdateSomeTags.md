# Only Update Tags for Select Packages



## Prepare a local tag branch

-   check each package separately
-   we will ONLY make a new tag if the code has changed since the last release
-   cd larcore  
    \> \* git diff v1_00_05  
    \> \* there are no differences, so we will keep this tag
-   cd lardata  
    \> \* git diff v1_00_05  
    \> \* this package has changes, so the tag must be updated  
    \> \* everything in the larsoft suite except larcore depends directly or indirectly on lardata
-   In this case, we want to update the tags of everything except larcore to v1_00_06
-   notice that if, for instance, only larsim has changed, you need to update a much smaller set of packages
-   remove any packages that you do NOT want to tag  
    \> \* for instance, if larcore is not changing, remove larcore  
    \> \* cd $MRB_SOURCE  
    \> \* rm -rf larcore  
    \> \* mrb uc
-   now start the release branch  
    \> \* \~/larsoft/laradmin/build_tools/tagLAr start v1_00_06
-   double check the new release tags  
    \> \* ls $MRB_SOURCE/\*/.git/refs/heads/release

## Edit the code

-   \~/larsoft/laradmin/build_tools/tagLAr update v1_00_06
-   use mrb uv to change the version of other packages  
    \> \* for instance, mrb uv art v1_09_02
-   check \*/ups/product_deps for any other changes that need to be made

## Build debug and prof with the new version

-   since the version in product_deps has changed, make sure this build starts from a fresh login
-   do both the debug and prof builds to be sure there are no hidden problems
-   mrb i -j20  
    \> \* double check the installed directories to make sure everything is there
-   This is not yet the official build, the official build needs to be made from a checked out tag

## Merge changes with the master branch and tag

-   \~/larsoft/laradmin/build_tools/tagLAr tag v1_00_06
-   Notice that we have not yet updated the develop branch. That step is done AFTER the build is complete and installed.
