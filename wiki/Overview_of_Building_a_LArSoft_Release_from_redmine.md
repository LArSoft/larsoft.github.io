Overview of Building a LArSoft Release from redmine
============================================================================================================

-   **Table of contents**
-   [Overview of Building a LArSoft Release from redmine](#Overview-of-Building-a-LArSoft-Release-from-redmine)
    -   [setup the environment](#setup-the-environment)
    -   [make a build directory](#make-a-build-directory)
    -   [Make a develop build](#Make-a-develop-build)
    -   [Make the release branch](#Make-the-release-branch)
    -   [Merge any feature branches](#Merge-any-feature-branches)
    -   [Build for all 4 compilers](#Build-for-all-4-compilers)
    -   [Getting ready to make a tag](#Getting-ready-to-make-a-tag)
        -   [larpandoracontent](#larpandoracontent)
    -   [Final test build and cleanup](#Final-test-build-and-cleanup)
    -   [Tag](#Tag)
    -   [Jenkins build](#Jenkins-build)
        -   [Download the binaries](#Download-the-binaries)
    -   [Ubuntu LTS 18 build](#Ubuntu-LTS-18-build)
    -   [Install products](#Install-products)
        -   [cvmfs](#cvmfs)
        -   [/grid/fermiapp/products/larsoft](#gridfermiappproductslarsoft)
        -   [doxygen](#doxygen)
    -   [Release notes and the cross package tag](#Release-notes-and-the-cross-package-tag)
    -   [Announcement and final merge](#Announcement-and-final-merge)
        -   [final merge](#final-merge)
        -   [announcement](#announcement)
    -   [Random notes](#Random-notes)
        -   [dogit](#dogit)
        -   [Changing your mind about the larsoft release name](#Changing-your-mind-about-the-larsoft-release-name)
        -   [release building philosophy](#release-building-philosophy)
        -   [updates to dependent products](#updates-to-dependent-products)
        -   [cvmfs](#cvmfs-2)

This is a brief overview of the steps taken when making a fairly simple release. This overview presumes that we have at least one feature branch as well as changes in the head of develop. This overview presumes you are working on scisoftbuild01 and using the /products directory.

setup the environment
------------------------------------------------

    source /products/setup
    export PRODUCTS=$PRODUCTS:/cvmfs/larsoft.opensciencegrid.org/products:/cvmfs/sbnd.opensciencegrid.org/products/sbnd:/cvmfs/dune.opensciencegrid.org/products/dune:/cvmfs/uboone.opensciencegrid.org/products:/cvmfs/icarus.opensciencegrid.org/products/icarus:/cvmfs/lariat.opensciencegrid.org/externals
    setup mrb
    setup larreltools
    export PATH=$LARRELTOOLS_DIR/expert:${PATH}
    export MRB_PROJECT=larsoft

make a build directory
--------------------------------------------------

Since we are now building for e19, e17, c7, and c2, larreltools v1_05_00 or later is required.

Decide if we think this is a bug fix or feature release. Note that feature branches are sometimes just bug fixes. This decision will be reflected in the directory name and release branch names. This example presumes a bug fix release against v08_38_00.

The “tagLAr mkdir” command will create a directory structure and populate the srcs directory.

    cd ~/scratch/larsoft
    tagLAr mkdir v08_38_01 `pwd`

Make a develop build
----------------------------------------------

At this time, our default build is e17. Start with that and make sure the combined head of develop builds. Notice that \$MRB_SOURCE contains both larsoft and experiment code. It may be necessary to update versions and/or merge feature branches in the experiment code. For instance, since larsoft v08_38_00 adds the ability to build for e19 and c7, you might need to merge or use feature/team_for_e19 in the experiment code until the experiments catch up. Sometimes a gentle nudge is helpful.

    source ..../e17p/local*/setup
    cd $MRB_BUILDDIR
    mrbsetenv
    mrb t -j20
    OR
    mrb t -j20 >& build.log &

Make the release branch
----------------------------------------------------

All changes in LArSoft packages should be made on the release branch.

    tagLAr start v08_38_01

Merge any feature branches
----------------------------------------------------------

We use the [future changes](FutureChanges) page to collect a list of feature branches that are meant to be part of the next release. This helps make sure we don’t forget anything.

If there are a number of unrelated feature branches, it is usually best to merge them one at a time and build. This isolates any problems you might find. (pull requests can’t get here soon enough)

    cd $MRB_SOURCE/package
    git checkout feature/<some_feature_branch>
    git checkout release/v08_38_01
    git merge feature/<some_feature_branch>

Build for all 4 compilers
--------------------------------------------------------

Use the prof builds. These typically show problems that the debug builds hide.

Getting ready to make a tag
------------------------------------------------------------

Once everything is in place, move the experiment code out of the way.

    cd $MRB_SOURCE
    mkdir ../notag
    mv argo* ../notag
    mv dune* ../notag
    mv lariat* ../notag
    mv sbnd* ../notag
    mv ub* ../notag
    mrb uc

Then update the package versions, and determine which packages do not need updates.

    updateVersion micro  (v08_38_00 becomes v08_38_01, v08_36_01 becomes v08_36_02)
    OR
    updateVersion minor  (v08_38_00 becomes v08_39_00, v08_36_02 becomes v08_37_00)

Step through the packages in [build order](How_to_tag_and_build_a_LArSoft_patch_release#Dependency-order) (starting from the bottom). Neither larutils nor larbatch are part of the dependency tree. Make sure you also check them.

    cd $MRB_SOURCE/<package> 
    git diff LARSOFT_SUITE_v08_38_00

If the only change is the version number that you just updated, then restore the old version number and move the package to notag

    mrb uv <package> <previous version>
    cd $MRB_SOURCE
    mv <package> ../notag
    mrb uc

### larpandoracontent

larpandoracontent is a special case. It is used by larpandora and depends only on the pandora ups product. We seldom update larpandoracontent. Our agreement with the Pandora team is to only update the micro version. The version is encoded in both ups/product_deps and larpandoracontent/CMakeLists.txt. You will have to update CMakeLists.txt by hand.

Final test build and cleanup
--------------------------------------------------------------

Once you have gone through all the packages, make a final test build. This should go reasonably quickly, but make sure you have built the new code with all 4 compilers.

The tagging process will commit changes in ups/product_deps with an appropriate comment. Before starting that process, you must make sure that any other changes have been committed.

    cd $MRB_SOURCE
    dogit status
    cd larsoft
    git commit -m"product versions" releaseDB/CMakeLists.txt
    cd larsoftobj
    git commit -m"product versions" bundle/CMakeLists.txt
    dogit status

Tag
------------

Make sure \$MRB_SOURCE contains ONLY the repositories you want to tag. If it contains other repositories, you might make unintentional tags. You might also have problems with the tagging script, which does not do a lot of checking.

The argument supplied is a branch name (release/v08_38_01). The branch name is expected to match the release name, and will be used in commit messages.

    cd $MRB_SOURCE
    tagLAr tag v08_38_01

Jenkins build
--------------------------------

The larsoft Jenkins build job is “build-larsoft” under the larsoft tab. This job is currently configured to build for 4 compilers. You will need to make one build for py2 and a second build for py3. Once we revert to 2 compilers, the job can be reconfigured to build for both py2 and py3 at the same time.

Sometimes the build will catch problems such as missing libraries in the link list. If this happens, I make the fix on the release branch, merge with master, and retag. The release branch is merged with develop in the final step.

### Download the binaries

I recommend downloading the files from Jenkins into your account on scisoftportal. This allows you to make a local upload to SciSoft, which can be significantly faster. copyFromJenkins and copyToSciSoft can be found at /nasroot/SciSoft/bundles/tools. Note that copyToSciSoft expects to find the volume mounted as /nasroot/SciSoft. For this reason, the local upload option will not presently work on scisoftbuild01.

    ssh scisoftportal.fnal.gov
    mkdir tmp
    cd tmp
    .../copyFromJenkins -N -q s93-e17 -q s93-e19 -q s93-c2 -q s93-c7 build-larsoft
    (This command is identical for both the py2 and py3 builds.)
    ls *.txt (This is just a check)
    .../copyToSciSoft --local *
    rm *

Ubuntu LTS 18 build
--------------------------------------------

We provide a build for Ubuntu LTS 18 on a best effort basis. I use vagrant on scisoftbuild01. See /home/garren/scratch/vagrant/u18.

The scripts I use are in /home/garren/scratch/vagrant/u18/scripts. Builds must be done on the internal file system, not in the shared /vagrant directory. As presently configured, my box is only big enough to build for a single qualifier at at time. The scripts presume the directory structure established by /vagrant/initialSetup.sh.

    vagrant ssh
    cd build
    /vagrant/buildLArSoft.sh v08_38_00 s93 e17 >& larsoft.log

You might be able to run copyToSciSoft from within the box, but I think access gets blocked. So I move the files to /vagrant/tar, exit vagrant, and then run copyToSciSoft from scisoftbuild01.

Install products
--------------------------------------

### cvmfs

In most circumstances, users are expected to get the larsoft release from cvmfs. There is a README in cvmfslarsoft with basic instructions.

Because the home directory is tiny by design, we use a temporary directory on cvmfs when installing products. It is important to make sure this directory is empty before finalizing the download via cvmfs publish. Note that if there are real problems, you can always abort the cvmfs transaction.

The installBundle.sh script will download for all supported platforms. It will add py3 to the qualifier and download the SLF7 py3 builds. (We are only distributing py3 builds for SLF6.) It will also download the matching c2 or c7 qualified builds.

    ssh cvmfslarsoft@oasiscfs.fnal.gov
    cat README
    ./scripts/installBundle.sh larsoft v08_38_00 s93-e17
    ./scripts/installBundle.sh larsoft v08_38_00 s93-e19
    ll /cvmfs/larsoft.opensciencegrid.org/products/.working
    ll /cvmfs/larsoft.opensciencegrid.org/products/mrb
    ll /cvmfs/larsoft.opensciencegrid.org/products/larsoft/v08_38_00
    (These are checks.)
    time cvmfs_server publish larsoft.opensciencegrid.org
    (The time command is optional, but informative.)

### /grid/fermiapp/products/larsoft

Because there continue to be problems with cvmfs on the macOS Jenkins slaves, we install the macOS clang builds here as well. This is strictly for building on the Jenkins slaves.

    ssh -l larsoft uboonegpvm02.fnal.gov
    mkdir work/kyle
    cd work/kyle
    ../scripts/installRelease.sh v08_38_00 s93-c2
    ../scripts/installRelease.sh v08_38_00 s93-c7
    rm *

### doxygen

We build the doxygen documentation on gpvm.

    ssh -l larsoft uboonegpvm02.fnal.gov
    cd doxygen
    ./update_lar_doxygen.sh >& update.log &

Release notes and the cross package tag
------------------------------------------------------------------------------------

We use a cross package tag to clearly indicate which package releases are part of a larsoft release. The cross package tag is also used when generating the release notes. At this time, the script does not determine which builds of larutils or larbatch need to be tagged, so we do that by hand.

    cd $MRB_SOURCE 
    (not strictly required)
    cp-lar-tag <larsoft tag> <larsoftobj tag>
    cd .../larutils
    git co master
    git status 
    (make sure everything is clean and that the head of master matches the latest tag)
    git tag -a -m"LARSOFT_SUITE_v08_38_00" LARSOFT_SUITE_v08_38_00
    git push --tags
    cd .../larbatch
    git co master
    git status 
    (make sure everything is clean and that the head of master matches the latest tag)
    git tag -a -m"LARSOFT_SUITE_v08_38_00" LARSOFT_SUITE_v08_38_00
    git push --tags

The generated release notes contain an informative header and a list of commits to each package since the previous release. The script will make its own working directory under the specified directory.

When copying the generated release notes, it is important to use cat so that lines are not wrapped. Commands such as more or less will wrap lines, which breaks the generated html.

The top line of the the generated ReleaseNotes file is copied to the [LArSoft_release_list](releases/LArSoft_release_list) table. The remainder of the file is used to make the actual release notes. Notes about each release must be added by hand to the top section of the release notes.

    make-release-notes <top directory> <tag> <previous tag>
    (e.g., make-release-notes `pwd` v08_38_01 v08_38_00)
    cd <tag>
    cat ReleaseNotes-<tag>

Announcement and final merge
--------------------------------------------------------------

Once the binaries are on cvmfs and the release notes have been generated, it is time to do the final merge and send an email to the collaboration announcing the release.

Once the binaries are on cvmfs and the release notes have been generated, it is time to do the final merge and send an email to the collaboration announcing the release.

### final merge

The argument given to the merge command is the name of the release/vxx_yy_zz branch.

    cd $MRB_SOURCE
    tagLAr merge v08_38_00

### announcement

Send an email to announcing the release and briefly describing important changes. I use an email template and update it with relevant details for each release.

Random notes
------------------------------

### dogit

The dogit command will pass an arbitrary git command to all repositories in \$MRB_SOURCE. This can be very handy.
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

If there is a new release of a package used only by larsoft, such as wirecell, make a local build on scisoftbuild01.

### cvmfs

The cvmfs publish step has to process all new files. If you install, say nulite, critic, and larsoft distributions all at once, that is a lot of files to process and can take significant time. Instead, it is better to install in smaller pieces (such as just a new nulite distribution) and publish that piece before installing more files.
