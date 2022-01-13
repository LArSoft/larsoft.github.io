LArSoft Release Official Build
==================================================================

-   **Table of contents**
-   [LArSoft Release Official Build](#LArSoft-Release-Official-Build)
    -   [Platforms](#Platforms)
    -   [Build larsoft from the new tag](#Build-larsoft-from-the-new-tag)
        -   [run the Jenkins build](#run-the-Jenkins-build)
        -   [Copy files from Jenkins](#Copy-files-from-Jenkins)
        -   [Special platforms](#Special-platforms)
    -   [Make the binary build available on SciSoft](#Make-the-binary-build-available-on-SciSoft)

Platforms
------------------------

See the [Supported Platform](Supported_platforms) list for full details.

Builds:

-   SLF6 on Jenkins
-   SLF7 on Jenkins
-   OSX Mojave on Jenkins with SIP disabled
-   OSX High Sierra on Jenkins with SIP disabled
-   Ubuntu LTS 16 on a vagrant box (build by request only)

Build larsoft from the new tag
------------------------------------------------------------------

-   This step does not use mrb

### run the Jenkins build

-   run [build-larsoft](https://buildmaster.fnal.gov/buildmaster/view/LArSoft/job/build-larsoft/) from [https://buildmaster.fnal.gov/view/LArSoft/](https://buildmaster.fnal.gov/view/LArSoft/)
    -   change larsoft and larsoftobj version parameters as needed
-   This will initiate debug and prof builds for the supported platforms.
-   The build runs larutils/buildScripts/build-larsoft.sh from the head of larutils.
-   If the build fails for a single platform, you can use the matrix option to rebuild just that piece.
    -   However, it sometimes works better to start a new “recover-larsoft” job. Edit the node list so you build on just the machine(s) that failed.

### Copy files from Jenkins

-   use [copyFromJenkins](http://scisoft.fnal.gov/scisoft/bundles/tools/copyFromJenkins)
-   create a temporary directory on some local scratch disk
-   cd to that directory
-   …/copyFromJenkins -N -q s86-e17 -q s86-c2 build-larsoft
    -   this will pull all artifacts from the last successful build
    -   check carefully before proceeding
    -   artifacts of interest are tarballs and _MANIFEST.txt files

### Special platforms

-   At this time, Ubuntu builds are done from a vagrant box on woof or cluck
    -   It turns out that vbox instances work best when not shared
    -   Instructions for settting up an Ubuntu vagrant box: [Ubuntu_VM](https://cdcvs.fnal.gov/redmine/projects/ubuntu-vm/wiki/Ubuntu_VM)
-   We use the same procedures that are used by the Jenkins build
-   install larutils

        vagrant ssh
        mkdir devel
        cd devel
        git clone http://cdcvs.fnal.gov/projects/larutils

-   build in a working directory

        vagrant ssh
        mkdir build
        cd build
        git clone http://cdcvs.fnal.gov/projects/artutilscripts
        env WORKSPACE=`pwd` LARVER=<larsoft_version> LAROBJ=<larsoftobj_version> QUAL=<qual_set> BUILDTYPE=debug ../devel/larutils/buildScripts/build-larsoft.sh
        mv copyBack/ /vagrant/ldbg
        env WORKSPACE=`pwd` LARVER=<larsoft_version> LAROBJ=<larsoftobj_version> QUAL=<qual_set> BUILDTYPE=prof ../devel/larutils/buildScripts/build-larsoft.sh
        mv copyBack/ /vagrant/lprof

Make the binary build available on SciSoft
------------------------------------------------------------------------------------------

-   use [copyToSciSoft](http://scisoft.fnal.gov/scisoft/bundles/tools/copyToSciSoft)
-   from the temporary directory
-   …/copyToSciSoft \*.bz2
    -   only files which are not already on SciSoft will be copied
-   …/copyToSciSoft \*.txt
    -   only files which are not already on SciSoft will be copied
-   copyToSciSoft automatically puts the tarballs and manifests in the proper directories
