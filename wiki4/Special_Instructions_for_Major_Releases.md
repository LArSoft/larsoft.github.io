Special Instructions for Major Releases[¶](#Special-Instructions-for-Major-Releases)
====================================================================================

See the [LArSoft release naming policy](LArSoft_release_naming_policy)

When making a major release upgrade, we make a final release in the current series and then build the new major release from the final tag of the old major release.


Simple cases[¶](#Simple-cases)
------------------------------

-   This release has not required a release candiate branch.
-   Tag and build the final major release (vMM\_mm\_pp)
-   Start a completely new build
    -   tagLAr mkdir v(MM+1)\_mm\_pp \<directory\>
    -   cd \<directory\>
    -   source p/local\*/setup
    -   cd \$MRB\_SOURCE
    -   tagLAr patch v(MM+1)\_mm\_pp vMM\_mm\_pp
-   Once this is done, make the appropriate changes, test, tag, and build normally


Dealing with release candidate branches[¶](#Dealing-with-release-candidate-branches)
------------------------------------------------------------------------------------

-   make a new build directory
-   use tagLAr to checkout the release candidate branch
    -   tagLAr use vxx\_yy\_zz\_rc (or other branch name)
-   use tagLAr to create the release branch
    -   tagLAr patch v(MM+1)\_mm\_pp vMM\_mm\_pp
-   at this point, you must merge the two branches
    -   this is done by hand in each repository
-   resolve problems, build, and test
-   if you have successfully merged the release candidate branch into the release/v(MM+1)\_mm\_pp branch, you can tag and build normally
