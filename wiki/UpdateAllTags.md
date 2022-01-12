Update Tags for All Packages
==============================================================

Prepare a local tag branch
----------------------------------------------------------

-   This procedure applies the same tag to all checked out code.
-   start tag

> -   cd \$MRB_SOURCE
> -   …/laradmin/build_tools/tagLAr start v1_02_00

-   double check the new release tags

> -   ls \$MRB_SOURCE/\*/.git/refs/heads/release

Edit the code
--------------------------------

-   …/laradmin/build_tools/tagLAr update v1_00_06
-   use mrb uv to change the version of other packages

> -   The most likely changes are for art, nutools, and ifdh_art
> -   mrb uv art v1_09_03
> -   mrb uv nutools v1_02_02
> -   mrb uv ifdh_art v1_4_2
> -   mrb uv geant4 v4_9_6_p03b
> -   mrb uv pandora v00_13c

-   check \*/ups/product_deps for any other changes that need to be made

> -   check cetbuildtools version

Build debug and prof with the new version
----------------------------------------------------------------------------------------

-   since the version in product_deps has changed, make sure this build starts from a fresh login
-   do both the debug and prof builds to be sure there are no hidden problems
-   mrb t -R -j30
-   mrb i -j20

> -   double check the installed directories to make sure everything is there

-   This is not yet the official build, the official build needs to be made from a checked out tag

Merge changes with the master branch and tag
----------------------------------------------------------------------------------------------

-   \~/larsoft/laradmin/build_tools/tagLAr tag v1_00_06
-   Notice that we have not yet updated the develop branch. That step is done AFTER the build is complete and installed.
