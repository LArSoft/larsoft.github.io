# How to tag and build a LArSoft patch release



[Policy for development from a tagged release](Policy_for_development_from_a_tagged_release)  
Experiments will build patch releases themselves with help from the LArSoft release manager.  
There will be a very limited set of people with privileges to do this.  
We ask that the experiment release managers to whom these privileges have been granted do not grant privileges to anyone else. Instead request permissions from LArSoft.  
Permissions will be removed when someone ceases to have this responsibility.

-   Permissions include:
    -   membership in the LArSoft github organization patch release manager team
    -   ability to login to larsoft cvmfs
    -   ability to upload to SciSoft with the larsoft role
    -   abiltiy to run Jenkins jobs

Please make a service desk ticket asking for these permissions. Use the SciSoft at Service Now link at the bottom of the [SciSoft home page](https://scisoft.fnal.gov/).

[LArSoft responsiblities for patch releases](LArSoft_responsiblities_for_patch_releases)

## Request a release

-   Before starting any patch release, fill out a redmine issue requesting the release with all pertinent information.

## Tools

-   Scripts used to build the patch release will be found in the larreltools product.
-   **larreltools** is not part of the standard distribution, but will be available from SciSoft and in cvmfs.
    -   Always use the latest release, which will be declared current.
    -   More [information](https://cdcvs.fnal.gov/redmine/projects/larreltools/wiki/)

## Initial setup

**This step is done once for any patch release set and will be done by the LArSoft release manager.**

## Making a patch release

-   These notes presume that you do not have an existing directory

### Setup the working area

-   setup the latest release of larreltools
-   startPatchRel \[-e experiment\] \[-q basequal\] <working_dir> <new patch tag> <larsoft branch> \[<experiment branch>\]
    -   Recognized experiment names are argoneut, dune, lariat, icarus, sbnd, and uboone.
        -   Specifying the experiment is optional.
    -   This script will create a directory with the name of the new patch tag under the “working_dir”.
    -   This script will clone the LArSoft repositories using the named branch.
        -   Note that startPatchRel will attempt to add all larsoft packages except larbatch and larutils. If the repository does not have the patch release branch, it will be removed from $MRB_SOURCE.
    -   If an experiment has been specified, the script will also checkout the experiment code.
        -   The same branch name will be used when cloning the experiment code unless a second branch name is supplied.
    -   The directory structure will include a single source code directory with subdirectories for the specified basequal.
        -   The basequal defaults to e20 if it is not specified.
        -   To use more than one basequal (e.g., c7 and e20), issue the command more than once.
        -   LArSoft releases are currently (Feb. 2022) expected to build for both c7 and e20.
    -   Use “dogit branch” to double check that you are on the expected branch of all packages.

### Local development

-   Before integrating any feature branches, make sure that the release builds as is and that the unit tests work.
    -   Make sure to build and test both e20 and c7. Usually the prof build is sufficient for testing. prof is preferred over debug, which sometimes masks problems.
            source local*/setup
            cd $MRB_BUILDDIR
            mrb t -jN
-   Next make changes and integrate feature branches or pull requests
    -   Because feature branches or pull requests may conflict or not have been thoroughly tested, we recommend merging them one at a time. Build and test after each merge. If there are related pull requests, merge them at the same time.

### Update the package versions

-   Do this once all changes have been made.

<!-- -->

-   Use the **updatePatchVersion** script from larreltools.
    -   This script takes no arguments.
    -   This script will call “mrb uv” to update each patch release by one.
        -   If there was no previous patch release, the version will be vaa_bb_cc_01

<!-- -->

-   ONLY update the version if there is a change.
-   The instructions below are meant to be used after you have updated versions with **updatePatchVersion**.
    -   cd to each directory separately
    -   git diff LARSOFT_SUITE_vaa_bb_cc\[_dd\]
        -   You are comparing against the previous patch release on this branch.
        -   If this is the first patch release, compare against the original release.
        -   Sometimes the only change is an updated dependency.
        -   If there are no changes, use mrb uv to restore the previous release version and then move this package out of the way.
                cd $MRB_SOURCE
                mkdir ../notag
                mv xxx ../notag
                mrb uc
-   If you are only making a larsoft release, move all experiment code out of the way before tagging. (*mv ub\* ../notag/* for MicroBooNE)
-   If you understand the larsoft dependency order, then it is possible to move packages out of the way before running `updatePatchVersion`, but this works best once you have a good understanding of how the LArSoft dependencies work.
-   `mrb uv` will update larsoftobj/bundle/CMakeLists.txt, larsoft/releaseDB/CMakeLists, and <my experiment>/releaseDB/CMakeLists.txt as well as ups/product_deps and the package top level CMakeLists.txt file.
    -   commit changes in the releaseDB or bundle subdirectories, but do not commit changes in ups/product_deps or the top level CMakeLists.txt file.
-   DO NOT commit the changes to ups/product_deps or the top level CMakeLists.txt file. tagPatchRel will commit these changes.

### Dependency order

-   Within the larsoftobj suite
    -   larcoreobj
    -   larcorealg
    -   lardataobj
    -   lardataalg
    -   larvecutils (introduced in larsoft v09_40_00)
    -   larsoftobj

<!-- -->

-   All larsoft packages
    -   larcoreobj
    -   larcorealg
    -   larcore
    -   lardataobj
    -   lardataalg
    -   larvecutils (no dependencies)
    -   larsoftobj
    -   lardata
    -   larevt
    -   larwirecell (depends on larevt)
    -   larg4 (depends on larevt)
    -   larsim
    -   larsimrad (depends on larsim)
    -   larreco
    -   larrecodnn (depends on larreco)
    -   larana (depends on larreco)
    -   larpandoracontent (depends only on pandora)
    -   larpandora (depends on larreco and larpandoracontent)
    -   lareventdisplay (depends on larreco)
    -   larexamples (depends on larsim)
    -   webevd (depends on lardata)
    -   larsoft

<!-- -->

-   Note that usually larpandoracontent is not part of a patch release. It will have a patch release branch only when required.

### Tagging the release

-   Do a final build and test with just the packages you expect to tag.
    -   This step will also create the necessary build config files.
    -   If there are changes in both larsoft and larsoftobj, double check for consistency.
            cd $MRB_BUILDDIR/larsoft
            diff releaseDB ../larsoftobj/bundle | grep diff
            diff releaseDB ../larsoftobj/bundle | grep Only
    -   If all is good, copy the generated lar\* files to SciSoft
            cd $MRB_BUILDDIR/larsoft/releaseDB
            copyToSciSoft lar*
-   Now tag
    -   tagPatchRel <existing branch> <new larsoft tag>
    -   tagPatchRel will commit ups/product_deps and the top level CMakeLists.txt with an appropriate message, make the tag, and push both tag and branch to origin.
    -   Use “dogit status” to doublecheck.
    -   **IMPORTANT**: patch release tags are never merged with the master (or main) branch

### Official build

-   build on Jenkins
-   Use special patch release build jobs.
    -   Choose a build job with the appropriate s qualifier. If there is no build job with the appropriate qualifier, please make a new job.
    -   This avoids possible conflicts with normal release builds, which use build-larsoft.
    -   [larpatch-slf](https://buildmaster.fnal.gov/buildmaster/view/LArSoft/job/larpatch-slf/) for s84
    -   [build-larsoft-s112](https://buildmaster.fnal.gov/buildmaster/view/LArSoft/job/build-larsoft-s112/) for s112
-   use copyFromJenkins to download the tarballs and release manifests from Jenkins
-   use copyToSciSoft to upload the tarballs and release manifests to SciSoft
    -   This step requires extra privileges.

### Release Notes and Cross Package Tag

-   Once the build is complete for ALL variants, make the cross package tag.
    -   We wait because sometimes a problem is not found until building and we need to move a tag.
    -   This step must be done by someone in the LArSoft github patch release team.
            cp-patch-tag <patch release branch> <larsoft tag>
-   Make the release notes
    -   makePatchRelNotes <working_directory> <larsoft tag> <previous larsoft tag>
        -   This script will create a subdirectory with the name of the larsoft tag under the working_directory and generate a text file.
    -   cd into the newly created tag directory
    -   cat ReleaseNotes-vaa_bb_cc_dd
        -   The first line of this output is a table file entry. Cut and paste into the top of the [release list](releases/LArSoft_release_list)
        -   The remainder of the output is used to create the release note itself.
            -   Cut and past everything from “h1. LArSoft …” to the bottom of the file into the empty release note entry.
            -   Edit the information in the top part as appropriate.
            -   Do not edit anything under the “Change List” section.
            -   It is important to use cat so that there are no unexpected line breaks.

### Upload to cvmfs

-   This step requires login privileges.
-   <code>ssh cvmfslarsoft@oasiscfs.fnal.gov</code>
-   The README provides an overview of the necessary steps.
    -   start a transaction
    -   install using installBundle.sh
    -   publish
-   ./scripts/installBundle.sh larsoft vaa_bb_cc_zz sNN-eY
    -   Note that if you call installBundle.sh with sNN-e20, it will install both e20 and c7 variants.
    -   The script will attempt to install the release for all supported platforms and clean up after itself.
    -   **If some expected distributions are not available, then manifests will be left in the .working subdirectory. Check and remove them if necessary.**
-   Do not leave a transaction open. You can abort the changes you made if there is a problem.

## Presentations

A patch release tutorial was given at the [2019 LArSoft workshop](https://indico.fnal.gov/event/20453/session/7/material/1/0.pdf)
