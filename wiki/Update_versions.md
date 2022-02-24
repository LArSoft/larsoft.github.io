# Update versions

{{TOC}}

## Update versions

### Update repository versions

-   updateVersion \<major\|minor\|micro\>
    -   updates ups/product_deps for every package in $MRB_SOURCE
    -   also updates releaseDB/CMakeLists.txt and bundle/CMakeLists.txt files

### Check and change versions for the larsoft packages

\* As a general rule, only larsoft itself uses the $MRB_PROJECT_VERSION release version

All other packages should update their release versions appropriately.

\* check versions for each package in the larsoft suite

    cd $MRB_SOURCE/<package>
    git diff LARSOFT_SUITE-<previous_release>

-   Individual package tags should change only when necessary.
-   If there are no changes except a new parent version in ups/product_deps, this package has not changed and will not be tagged.
    -   mrb uv <package> <old_version>
-   If a feature branch has been merged, update the minor version number by one, e.g., v05_08_04 to v05_09_00.
    -   mrb uv <package> <new_package_version>
-   If only the dependencies have changed, update the micro number by one, e.g., v05_08_04 to v05_08_05.
    -   mrb uv <package> <new_package_version>
-   If there have been minor changes since the last release, update the micro number by one, e.g., v05_08_04 to v05_08_05.
    -   mrb uv <package> <new_package_version>
-   Check the packages in dependency order:
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
-   In the event that a new tag is needed, the version number must be updated both in ups/product_deps and larpandoracontent/CMakeLists.txt. New tags should be coordinated with John Marshall.

## Build debug and prof with the new versions

-   if you've updated a product version, it's best to start from a fresh login
-   do both the debug and prof builds to be sure there are no hidden problems
-   Also build with both gcc and clang
