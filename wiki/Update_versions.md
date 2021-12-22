Update versions
====================================

-   **Table of contents**
-   [Update versions](#Update-versions)
    -   [Update versions](#Update-versions-2)
        -   [Update repository versions](#Update-repository-versions)
        -   [Check and change versions for the larsoft packages](#Check-and-change-versions-for-the-larsoft-packages)
        -   [larpandoracontent](#larpandoracontent)
    -   [Build debug and prof with the new versions](#Build-debug-and-prof-with-the-new-versions)

Update versions
--------------------------------------

### Update repository versions

-   updateVersion \<major|minor|micro\>
    -   updates ups/product\_deps for every package in \$MRB\_SOURCE
    -   also updates releaseDB/CMakeLists.txt and bundle/CMakeLists.txt files

### Check and change versions for the larsoft packages

-   As a general rule, only larsoft itself uses the \$MRB\_PROJECT\_VERSION release version
    -   All other packages should update their release versions appropriately.
-   check versions for each package in the larsoft suite
    -   cd $MRB_SOURCE/<package>
            git diff LARSOFT_SUITE-<previous_release>

-   Individual package tags should change only when necessary.
-   If there are no changes except a new parent version in ups/product\_deps, this package has not changed and will not be tagged.
    -   mrb uv \<package\> \<old\_version\>
-   If a feature branch has been merged, update the minor version number by one, e.g., v05\_08\_04 to v05\_09\_00.
    -   mrb uv \<package\> \<new\_package\_version\>
-   If only the dependencies have changed, update the micro number by one, e.g., v05\_08\_04 to v05\_08\_05.
    -   mrb uv \<package\> \<new\_package\_version\>
-   If there have been minor changes since the last release, update the micro number by one, e.g., v05\_08\_04 to v05\_08\_05.
    -   mrb uv \<package\> \<new\_package\_version\>
-   Check the packages in dependency order: \

        larcoreobj
        larcorealg
        lardataobj
        lardataalg
        larsoftobj
        larcore
        lardata
        larevt
        larg4
        larwirecell
        larsim
        larreco
        larpandora
        larana
        lareventdisplay
        larexamples

-   NOTE: if a dependency has changed, a new tag is required.

### larpandoracontent

-   larpandoracontent is a special case.
-   larpandoracontent depends on pandora and is used by larpandora
-   We check and tag this package as part of the release build, but it uses its own release numbers.
-   If there have been no changes since the previous tag, revert to the old release number and do not tag.
-   In the event that a new tag is needed, the version number must be updated both in ups/product\_deps and larpandoracontent/CMakeLists.txt. New tags should be coordinated with John Marshall.

Build debug and prof with the new versions
------------------------------------------------------------------------------------------

-   if you’ve updated a product version, it’s best to start from a fresh login
-   do both the debug and prof builds to be sure there are no hidden problems
-   Also build with both gcc and clang
