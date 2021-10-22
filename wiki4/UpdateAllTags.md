Update Tags for All Packages[¶](#Update-Tags-for-All-Packages)
==============================================================


Prepare a local tag branch[¶](#Prepare-a-local-tag-branch)
----------------------------------------------------------

-   This procedure applies the same tag to all checked out code.
-   start tag

> -   cd \$MRB\_SOURCE
> -   …/laradmin/build\_tools/tagLAr start v1\_02\_00

-   double check the new release tags

> -   ls \$MRB\_SOURCE/\*/.git/refs/heads/release


Edit the code[¶](#Edit-the-code)
--------------------------------

-   …/laradmin/build\_tools/tagLAr update v1\_00\_06
-   use mrb uv to change the version of other packages

> -   The most likely changes are for art, nutools, and ifdh\_art
> -   mrb uv art v1\_09\_03
> -   mrb uv nutools v1\_02\_02
> -   mrb uv ifdh\_art v1\_4\_2
> -   mrb uv geant4 v4\_9\_6\_p03b
> -   mrb uv pandora v00\_13c

-   check \*/ups/product\_deps for any other changes that need to be made

> -   check cetbuildtools version


Build debug and prof with the new version[¶](#Build-debug-and-prof-with-the-new-version)
----------------------------------------------------------------------------------------

-   since the version in product\_deps has changed, make sure this build starts from a fresh login
-   do both the debug and prof builds to be sure there are no hidden problems
-   mrb t -R -j30
-   mrb i -j20

> -   double check the installed directories to make sure everything is there

-   This is not yet the official build, the official build needs to be made from a checked out tag


Merge changes with the master branch and tag[¶](#Merge-changes-with-the-master-branch-and-tag)
----------------------------------------------------------------------------------------------

-   \~/larsoft/laradmin/build\_tools/tagLAr tag v1\_00\_06
-   Notice that we have not yet updated the develop branch. That step is done AFTER the build is complete and installed.
