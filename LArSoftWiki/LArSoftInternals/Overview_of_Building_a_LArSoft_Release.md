# Overview of Building a LArSoft Release



This is a brief overview of the steps taken when making a fairly simple release. This overview presumes that we have at least one feature branch as well as changes in the head of develop. This overview presumes you are working on scisoftbuild01 and using the /products directory.

## Tools

-   mrb
-   startLArSoftRel (in larreltools)
-   manageLArGithub (in larreltools)
-   larreltools v1_13_00 or later

## PR identification and trigger CI

The first step is to check for existing pull requests that have not been merged into develop. For each such PR, determine the status.

If the PR is ready to merge and will not cause problems with experiment code, merge it with develop IF it has both Level 2 and Level 1 approval. It may be necessary to send a message to the Level 2 team asking for approval or comments.

If the PR is still work in progress, ignore it until work has been completed.

Some pull requests require coordinated changes in experiment code.  Others require changes in experiment code. These are the breaking pull requests. If these pull requests have both Level 2 and Level 1 approval, move them to the "approved and pending inclusion in release" column on the [LArSoft project page](https://github.com/orgs/LArSoft/projects/2)

### Initiate combined CI if appropriate

If there is more than one breaking PR, start a combined CI build from github. Make the request from the comment section of one of these breaking pull requests. Several formats are supposed to work, but this format is known to work.
```
    trigger build with pull requests LArSoft/larana#1, LArSoft/lardata#2, LArSoft/larg4#1, LArSoft/larreco#2, LArSoft/larsim#2
```
## setup the environment

```
source /products/setup
# alternate setup, note that sometimes new products are not yet available in larsoft cvmfs and will be installed as part of the release.
#source /cvmfs/larsoft.opensciencegrid.org/setup_larsoft.sh
# Note the inclusion of the spack packages directory
export PRODUCTS=$PRODUCTS:/cvmfs/larsoft.opensciencegrid.org/products:/cvmfs/larsoft.opensciencegrid.org/packages:/cvmfs/sbnd.opensciencegrid.org/products/sbnd:/cvmfs/dune.opensciencegrid.org/products/dune:/cvmfs/uboone.opensciencegrid.org/products:/cvmfs/icarus.opensciencegrid.org/products/icarus:/cvmfs/lariat.opensciencegrid.org/externals:/cvmfs/fermilab.opensciencegrid.org/products/common/db
setup mrb
setup larreltools
setup gh
export PATH=$LARRELTOOLS_DIR/expert:${PATH}
export MRB_PROJECT=larsoft
# Start an ssh-agent for ease of working with github.
source ssh-init.sh
ssh-init
```

## make a build directory

To work with github, larreltools v1_13_00 or later is required.

Decide if we think this is a bug fix or feature release. This decision will be reflected in the directory name and release branch names. This example presumes a minor release against v09_46_00.

The “startLArSoftRel” command will create a directory structure and populate the srcs directory.  Note that icaruscode and uboonecode have a conflicting name (crtsimhitproducer) and cannot be tested together.  At this time, it appears that only uboonecode and argoneutcode can be tested along with the release.  Since uboonecode is often behind, testing it is valuable.  LArIAT is has changed release managers and is not up to date at this time.

    cd ~/scratch/larsoft
    startLArSoftRel `pwd` v09_47_00

## Make a develop build

At this time, our default build is e20. Start with that and make sure the combined head of develop builds. Also be sure to test with c7 before tagging. Notice that $MRB_SOURCE contains both larsoft and experiment code. It may be necessary to update versions and/or merge feature branches in the experiment code. On rare occasions, I have found it necessary to make small bug fixes in the experiment CMakeLists.txt files.

    source ..../e20/local*/setup
    cd $MRB_BUILDDIR
    mrbsetenv
    mrb t -j20
    OR
    mrb t -j20 >&amp; build.log &amp;
    
    If there are problems with the build or tests, fix them now.

## Make the release branch

All changes in LArSoft packages should be made on the release branch.

    manageLArGithub start v09_46_00

## Are there outstanding changes?

We use the [future changes](/LArSoftWiki/releases/FutureChanges) page to collect a list of changes that are meant to be part of the next release. This helps make sure we don't forget anything. This page will reflect changes that have not already been merged with some PR.   This is most often a list of products to update.

If there is a breaking PR that will be included, make sure it is merged with the release branch.

## Build for supported compilers

Use the prof builds. These typically show problems that the debug builds hide.  
This step is a final check and mainly to deal with PRs that have been held back because they include “breaking” changes. Recall that our definition of breaking changes includes PRs that also require changes in experiment code.

If there are problems with the build or tests, fix them now.

## Getting ready to make a tag

Once everything is in place, move the experiment code out of the way.
```
    cd $MRB_SOURCE
    mkdir ../notag
    mv argo* ../notag
    mv dune* ../notag
    mv ub* ../notag
    mrb uc
```
At this time, check larbatch, larutils, and larpandoracontent. Move them out of the way as well if they have not changed.

Then update the package versions, and determine which packages do not need updates.

    manageLArGithub update micro  (v09_41_00 becomes v09_41_01, v09_41_01 becomes v09_41_02, etc.)
    OR
    manageLArGithub update minor  (v09_41_00 becomes v09_42_00, v09_41_02 becomes v09_42_00, etc.)

Step through the packages in [build order](How_to_tag_and_build_a_LArSoft_patch_release#Dependency-order) (starting from the bottom). Neither larutils nor larbatch are part of the dependency tree. Make sure you also check them. In this example, the previous larsoft release is v09_45_01.

    cd $MRB_SOURCE/<package> 
    git diff LARSOFT_SUITE_v09_45_01

If the only change is the version number that you just updated, then restore the old version number and move the package to notag

    mrb uv <package> <previous version>
    cd $MRB_SOURCE
    mv <package> ../notag
    mrb uc

### larpandoracontent

larpandoracontent is a special case. It is used by larpandora and depends only on the pandora ups product. We seldom update larpandoracontent. Our agreement with the Pandora team is to only update the micro version if we need to make a change. When the Pandora team creates a PR, their requested version will be part of the feature branch name (e.g. feature/larpandoracontent_v04_00_00).  Make sure to use this requested version.

## Final test build and cleanup

Once you have gone through all the packages, make a final test build. This should go reasonably quickly, but make sure you have built the new code with all supported compilers.

The tagging process will commit changes in ups/product_deps with an appropriate comment. Before starting that process, make sure that any other changes have been committed. The new manageLArGithub script will check for other changes and can be run more than once if necessary.
```
    cd $MRB_SOURCE
    dogit status
    cd $MRB_SOURCE/larsoft
    git commit -m"product versions" releaseDB/CMakeLists.txt
    cd $MRB_SOURCE/larsoftobj
    git commit -m"product versions" bundle/CMakeLists.txt
    cd $MRB_SOURCE
    dogit status
```
## Merge with master and tag

We can do this from the command line via the manage script. We are going to push directly to github. Be very careful.  Note that the version specified must match the release/vXX_YY_ZZ branch that has been created.  If you change your mind about the larsoft version, create a new branch from the existing release/vXX_YY_ZZ branch.
```
    manageLArGithub tag v09_46_00
```
## Upload config files to SciSoft

Make sure you have done a final build after all tags are complete.
```
    cd $MRB_BUILDDIR/larsoft
    diff releaseDB/ ../larsoftobj/bundle/ |  grep Only
    diff releaseDB/ ../larsoftobj/bundle/ |  grep diff
    (The lar* files in larsoftobj should match the lar* files in larsoft.)
    cd releaseDB/
    copyToSciSoft lar*
```
## Jenkins build

The larsoft Jenkins build job is “build-larsoft” under the larsoft tab. This job is configured to build for supported compilers.
Sometimes the build will catch problems such as missing libraries in the link list. If this happens, make a fix on the master branch and retag.

### test build to find and fix problems

It can be helpful to make a test build in a scratch subdirectory on scisoftbuild01.

    mkdir ~/scratch/testbuild
    cd ~/scratch/testbuild

  
Option 1 - run buildFW directly
```
    .../artutilscripts/tools/buildFW -t -b e20 -s s112 `pwd` prof larsoft-v09_46_00
``` 
Option 2 - execute the build script
```
    env WORKSPACE=`pwd` LARVER=v09_46_00 QUAL=s112-e20 BUILDTYPE=prof ..../path/to/larutils/buildScripts/build-larsoft.sh
```
### Download the binaries

If you have an account on scisoftbuild01.fnal.gov, you can make a local upload to SciSoft, which can be significantly faster. copyFromJenkins and copyToSciSoft can be found in `/SciSoft/bundles/tools` or `artutilscripts/tools`.  You can also use scisoftgpvm01.fnal.gov, but you will need to copy files to `/nasroot/SciSoft/staging`.
```
    mkdir .../tmp
    cd .../tmp
    .../copyFromJenkins -N -q s112-e20  -q s112-c7  build-larsoft
    ls *.txt (This is just a check)
    .../copyToSciSoft --local *
    rm *
```
## Ubuntu LTS 20 build

We provide a build for Ubuntu LTS 20 on a best effort basis. I use vagrant on scisoftbuild01. See /home/garren/scratch/vagrant/u20.

The scripts I use are in /home/garren/scratch/vagrant/u20/scripts. Builds must be done on the internal file system, not in the shared /vagrant directory. As presently configured, my box is only big enough to build for a single qualifier at at time. The scripts presume the directory structure established by /vagrant/initialSetup.sh.

    vagrant ssh
    cd build
    /vagrant/buildLArSoft.sh v09_46_00 s112 e20 >&amp; larsoft.log

  
You might be able to run copyToSciSoft from within the box, but I think access gets blocked. So I move the files to /vagrant/tar, exit vagrant, and then run copyToSciSoft from scisoftbuild01.

## Install products

### cvmfs

In most circumstances, users are expected to get the larsoft release from cvmfs. There is a README in cvmfslarsoft with basic instructions.

Because the home directory is tiny by design, we use a temporary directory on cvmfs when installing products. It is important to make sure this directory is empty before finalizing the download via cvmfs publish. Note that if there are real problems, you can always abort the cvmfs transaction.

The installBundle.sh script will download for all supported platforms.  Note that if you call this script with, say s112-e20, it will also install the s112-c7 bundles.
```
    ssh cvmfslarsoft@oasiscfs.fnal.gov
    cat README
    ./scripts/installBundle.sh larsoft v09_46_00 s112-e20
    ll /cvmfs/larsoft.opensciencegrid.org/products/.working
    ll /cvmfs/larsoft.opensciencegrid.org/products/mrb
    ll /cvmfs/larsoft.opensciencegrid.org/products/larsoft/v09_46_00
    (These are checks.)
    time cvmfs_server publish larsoft.opensciencegrid.org
    (Adding time to the publish command is optional, but informative.)
```

### doxygen

We build the doxygen documentation on gpvm.

    ssh -l larsoft uboonegpvm02.fnal.gov
    cd doxygen
    ./update_lar_doxygen.sh >&amp; update.log &amp;

## Release notes and the cross package tag

We use a cross package tag to clearly indicate which package releases are part of a larsoft release. The cross package tag is also used when generating the release notes. The latest cp-lar-tag script checks out the code and tags on master or main. The script extracts release versions from larsoft/releaseDB/CMakeLists.txt.

    cp-lar-tag <top directory> <larsoft tag>

The cross package tag must be made before generating release notes.

The generated release notes contain an informative header and a list of commits to each package since the previous release. The script will make its own working directory under the specified directory.

When copying the generated release notes, it is important to use cat so that lines are not wrapped. Commands such as more or less will wrap lines, which breaks the generated html.

The top line of the the generated ReleaseNotes file is copied to the [LArSoft_release_list](releases/LArSoft_release_list) table. The remainder of the file is used to make the actual release notes. Notes about each release must be added by hand to the top section of the release notes.
```
    make-release-notes <top directory> <tag> <previous tag>
    (e.g., make-release-notes `pwd` v09_46_00 v09_45_01)
    cd <tag>
    cat ReleaseNotes-<tag>
```
## LArSoft github release

We are using the github release mechanism for [LArSoft releases](https://github.com/LArSoft/larsoft/releases).  Insert the body of the generated release notes here after using the tag to make a release.

## Announcement and final merge

Once the binaries are on cvmfs and the release notes have been generated, it is time to do the final merge and send an email to the collaboration announcing the release.

### final merge

The argument given to the merge command is the name of the release/vxx_yy_zz branch.  This is vestigial at this point, since the head of master will be merged with develop.  (Note that there is a different process for test, patch, and other releases made on branches.)

    cd $MRB_SOURCE
    manageLArGithub merge v09_46_00

### announcement

Send an email to the larsoft mailing list announcing the release. Be sure to include a link to the release notes.

## Random notes

### dogit

The dogit command will pass an arbitrary git command to all repositories in $MRB_SOURCE. This can be very handy.  
If the argument contains more than one word, wrap it in quotes.

    dogit status
    dogit branch
    dogit "co feature/<xxx>"

### Changing your mind about the larsoft release name

Sometimes you start expecting to make a bug fix release and end up making a feature release instead, or vice versa. If the larsoft release version DOES NOT match the release branch, I will make a new branch. This is to ensure that the automatically generated commit messages reference the correct larsoft release. In this example, the existing branch is release/v08_38_01, but the new larsoft release will actually be v08_39_00.

    cd $MRB_SOURCE
    dogit branch
    dogit "co -b release/v08_39_00"
    dogit branch

### release building philosophy

We want to keep the head of develop unchanged until the release is tagged, built, and installed on cvmfs. We work as if we were using gitflow, but use our own scripts to ensure that the head of develop is not updated until we have completed everything. This also allows us to make last minute changes to tags if necessary.

### updates to dependent products

These instructions presume that dependent products such as wirecell, nutools, or pandora have not changed.

If there is a new release of nutools, it should be built and installed on both cvmfs and scisoftbuild01.

If there is a new release of a package used only by larsoft, such as wirecell, make a local build on scisoftbuild01.  It is sometimes useful to make a temporary lar_product_stack "release candidate" build and install the results on larsoft cvmfs.

### cvmfs

The cvmfs publish step has to process all new files. If you install, say nulite, critic, and larsoft distributions all at once, that is a lot of files to process and can take significant time. Instead, it is better to install in smaller pieces (such as just a new nulite distribution) and publish that piece before installing more files.
