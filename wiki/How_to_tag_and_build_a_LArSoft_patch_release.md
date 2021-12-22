How to tag and build a LArSoft patch release(#How-to-tag-and-build-a-LArSoft-patch-release)
==============================================================================================

-   **Table of contents**
-   [How to tag and build a LArSoft patch release](#How-to-tag-and-build-a-LArSoft-patch-release)
    -   [Request a release](#Request-a-release)
    -   [Tools](#Tools)
    -   [Initial setup](#Initial-setup)
    -   [Making a patch release](#Making-a-patch-release)
        -   [Setup the working area](#Setup-the-working-area)
        -   [Local development](#Local-development)
        -   [Update the package versions](#Update-the-package-versions)
        -   [Dependency order](#Dependency-order)
        -   [Tagging the release](#Tagging-the-release)
        -   [Official build](#Official-build)
        -   [Release Notes and Cross Package Tag](#Release-Notes-and-Cross-Package-Tag)
        -   [Upload to cvmfs](#Upload-to-cvmfs)
    -   [Presentations](#Presentations)

[Policy for development from a tagged release](Policy_for_development_from_a_tagged_release)\
Experiments will build patch releases themselves with help from the LArSoft release manager.\
There will be a very limited set of people with privileges to do this. \
We ask that the experiment release managers to whom these privileges have been granted do not grant privileges to anyone else. Instead request permissions from LArSoft.\
Permissions will be removed when someone ceases to have this responsibility.

-   Permissions include:
    -   larsoft redmine manager role
    -   ability to login to larsoft cvmfs
    -   ability to upload to SciSoft with the larsoft role
    -   developer status for larreltools
    -   abiltiy to run Jenkins jobs

Please make a service desk ticket asking for these permissions. Use the SciSoft at Service Now link at the bottom of the [SciSoft home page](https://scisoft.fnal.gov/).

[LArSoft responsiblities for patch releases](LArSoft_responsiblities_for_patch_releases)

Request a release(#Request-a-release) {.wiki-class-count}
----------------------------------------

-   Before starting any patch release, fill out a redmine issue requesting the release with all pertinent information.

Tools(#Tools) {.wiki-class-count}
----------------

-   Scripts used to build the patch release will be found in the larreltools product.
-   **larreltools** is not part of the standard distribution, but will be available from SciSoft and in cvmfs.
    -   Always use the latest release, which will be declared current.
    -   More [information](/redmine/projects/larreltools/wiki)

Initial setup(#Initial-setup) {.wiki-class-count}
--------------------------------

**This step is done once for any patch release set and will be done by the LArSoft release manager.**

Making a patch release(#Making-a-patch-release) {.wiki-class-count}
--------------------------------------------------

-   These notes presume that you do not have an existing directory

### Setup the working area(#Setup-the-working-area) {.wiki-class-count}

-   setup the latest release of larreltools
-   startPatchRel [-e \<experiment] \<working\_dir\> \<new patch tag\> \<larsoft branch\> [\<experiment branch\>]
    -   Recognized experiment names are argoneut, dune, lariat, icarus, sbnd, and uboone.
    -   This script will create a directory named “tag” under the “working\_dir”.
    -   This script will clone the larsoft and larsoftobj suites using the named branch.
    -   The same branch name will be used when cloning the experiment code unless a second branch name is supplied.
    -   The directory structure will include a single source code directory with subdirectories for e17 and c2 debug and prof builds.
    -   Use “dogit branch” to double check that you are on the expected branch of all packages.

### Local development(#Local-development) {.wiki-class-count}

-   Before integrating any feature branches, make sure that the release builds as is and that the unit tests work.
    -   Make sure to build and test both e17 and c2. Usually the prof build is sufficient for testing. prof is preferred over debug, which sometimes masks problems.\

            source local*/setup
            cd $MRB_BUILDDIR
            mrb t -jN

-   Next make changes and integrate feature branches
    -   Because feature branches may conflict or not have been thoroughly tested, we recommend merging one feature branch set at a time. Build and test after each set.

### Update the package versions(#Update-the-package-versions) {.wiki-class-count}

-   Do this once all changes have been made.

-   Use the **updatePatchVersion** script from larreltools.
    -   This script takes no arguments.
    -   This script will call “mrb uv” to update each patch release by one.
    -   If there was no previous patch release, the version will be vaa\_bb\_cc\_01

-   ONLY update the version if there is a change.
-   cd to each directory separately
-   git diff LARSOFT\_SUITE\_vaa\_bb\_cc[\_dd]
    -   You are comparing against the previous patch release in this set.
    -   If this is the first patch release in the set, compare against the original release.
    -   Sometimes the only change is an updated dependency.
    -   If there are no changes, use mrb uv to restore the previous release version and then move this package out of the way.\

            cd $MRB_SOURCE
            mkdir ../notag
            mv xxx ../notag
            mrb uc

    -   Move all experiment code out of the way. (*mv ub\* ../notag/* for MicroBooNE)

-   As of mrb v3\_02\_01, the “mrb uv” command will update larsoftobj/bundle/CMakeLists.txt, larsoft/releaseDB/CMakeLists, and \<my experiment\>/releaseDB/CMakeLists.txt as well as ups/product\_deps.
    -   commit changes in the releaseDB or bundle subdirectories, but do not commit changes in ups/product\_deps.
-   DO NOT commit the changes to ups/product\_deps. tagPatchRel will commit ups/product\_deps.

### Dependency order(#Dependency-order) {.wiki-class-count}

-   Within the larsoftobj suite
    -   larcoreobj
    -   larcorealg
    -   lardataobj
    -   lardataalg
    -   larsoftobj

-   All larsoft packages
    -   larcoreobj
    -   larcorealg
    -   larcore
    -   lardataobj
    -   lardataalg
    -   larsoftobj
    -   lardata
    -   larevt
    -   larwirecell (depends on larevt)
    -   larg4 (depends on larevt)
    -   larsim (depends on larevt)
    -   larreco
    -   larana (depends on larreco)
    -   larpandora (depends on larreco)
    -   lareventdisplay (depends on larreco)
    -   larexamples (depends on larreco)
    -   larsoft

### Tagging the release(#Tagging-the-release) {.wiki-class-count}

-   Do a final build and test with just the packages you expect to tag.
    -   This step will also create the necessary build config files.
    -   If there are changes in both larsoft and larsoftobj, double check for consistency.\

            cd $MRB_BUILDDIR/larsoft
            diff releaseDB ../larsoftobj/bundle | grep diff
            diff releaseDB ../larsoftobj/bundle | grep Only

    -   If all is good, copy the cfg scripts to SciSoft\

            cd $MRB_BUILDDIR/larsoft/releaseDB
            copyToSciSoft lar*

-   Now tag
    -   tagPatchRel \<existing branch\> \<new larsoft tag\>
    -   tagPatchRel will commit ups/product\_deps with an appropriate message, make the tag, and push both tag and branch to origin.
    -   Use “dogit status” to doublecheck.
    -   **IMPORTANT**: patch release tags are never merged with the master branch

### Official build(#Official-build) {.wiki-class-count}

-   build on Jenkins
-   Use special patch release build jobs.
    -   This avoids possible conflict with normal release builds.
    -   [larpatch-slf](https://buildmaster.fnal.gov/buildmaster/view/LArSoft/job/larpatch-slf/)
    -   [larpatch-mac](https://buildmaster.fnal.gov/buildmaster/view/LArSoft/job/larpatch-mac/)
-   use copyFromJenkins to download the tarballs and release manifests from Jenkins
-   use copyToSciSoft to upload the tarballs and release manifests to SciSoft
    -   This step requires extra privileges.

### Release Notes and Cross Package Tag(#Release-Notes-and-Cross-Package-Tag) {.wiki-class-count}

-   Once the build is complete for ALL variants (SLF and macOS), make the cross package tag.
    -   We wait because sometimes a problem is not found until building and we need to move a tag.
    -   This step requires redmine manager persmission for larsoft\

            cp-patch-tag <larsoft tag> <larsoftobj tag>

        -   It would be nice to fix cp-patch-tag so it deduces the larsoftobj tag

-   Make the release notes
    -   makePatchRelNotes \<working\_directory\> \<tag\> \<previous tag\>
        -   This script will create a subdirectory named tag under the working\_directory and generate a text file.
    -   cd into the newly created tag directory
    -   cat ReleaseNotes-vaa\_bb\_cc\_dd
        -   The first line of this output is a table file entry. Cut and paste into the top of the [release list](LArSoft_release_list)
        -   The remainder of the output is used to create the release note itself.
            -   Cut and past everything from “h1. LArSoft …” to the bottom of the file into the empty release note entry.
            -   Edit the information in part as appropriate.
            -   Do not edit anything under the “Change List” section.
            -   It is important to use cat so that there are no unexpected line breaks.

### Upload to cvmfs(#Upload-to-cvmfs) {.wiki-class-count}

-   This step requires login privileges.
-   ssh
-   The README provides an overview of the necessary steps.
    -   start a transaction
    -   install using installBundle.sh
    -   publish
-   installBundle.sh larsoft vaa\_bb\_cc\_zz sNN-eY
    -   Note that if you call installBundle.sh with sNN-e17, it will install both e17 and c2 variants.
    -   The script will attempt to install the release for all supported platforms and clean up after itself.
    -   **If some expected distributions are not available, then manifests will be left in the .working subdirectory. Check and remove them if necessary.**
-   installBundleSLF.sh is the same as installBundle.sh, but only installs for SLF6 and SLF7.
-   Do not leave a transaction open. You can abort the changes you made if there is a problem.

Presentations(#Presentations) {.wiki-class-count}
--------------------------------

A patch release tutorial was given at the [2019 LArSoft workshop](https://indico.fnal.gov/event/20453/session/7/material/1/0.pdf)
