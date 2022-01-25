# What Lynn does

{{TOC}}

## Build “third party” ups products as needed for art and larsoft

    For immediate term using old methods SciSoft team will have to take care of this,  Jim A should be the one to tell 
    these people this but in the future using SPACK here are some examples of people that could maybe take these pieces

      * ROOT: Philippe / Framework and software technology.
      * GENIE: Robert Hatcher / Neutrino Simulation.
      * PostGresQL, Psycopg,  SQLite, MySQL, MariaDB: Scientific Database Applications.
      * nucondb, ifbeam, ifdhc, ifdhc_config, ifdh-art, libwda, etc. (and unique dependencies): Scisoft team 
    for ifdh_art, Steve White&#39;s group for DB items, Marc Mengel for ifdhc and _config
      * PyTorch, libtorch, TensorFlow, Eigen, Caffe (legacy): Algorithms for
        Reconstruction and Analysis.

      * GEANT4: Krzysztof / Physics and Detector Simulation.
    Geant has 3 different releases??
    The full set of G4 related products is:
    g4abla
    g4emlow
    g4neutron
    g4neutronxs
    g4nucleonxs
    g4nuclide
    g4photon
    g4pii
    g4radiative
    g4surface
    g4tendl
    geant4 -q e19:mt:prof
    geant4 -q e19:prof
    geant4 -q e19:qt:prof
    qt (artdaq groups supplies qt)
    xerces_c


    Who will build cry?

-   We have a [defined procedure](https://cdcvs.fnal.gov/redmine/projects/build-framework/wiki/) that uses a number of scriptlets found in the ssibuildshims product.
-   Each product has a tiny redmine repository for the build and bootstrap scripts.
    -   Scripts include autobuild.sh, bootstrap.sh, build_xxx.sh, and usually ups/xxx.table, where xxx is the product name.
    -   We sometimes need patch files.
    -   Other scripts are occasionally included, such as bootstrap_datasets.sh for geant4.
    -   We tag these repositories with the product version.
-   To ensure reproducible builds, we only build from tagged releases. In rare cases, we use a commit hash.
-   We require that the source code be captured in a source code tarball for reproducible builds.
-   We bootstrap and run local test builds for the supported compiler options. This is a rapid turnaround development step.
    -   Whenever possible, we run unit tests as part of the build procedure and require that these tests pass.
-   Once everything looks good, the source code tarball is uploaded to SciSoft.
-   Also provide help to people attempting to make their own ups products.

## Build art releases after they are tagged.

    SciSoft team would take this over
    critic distribution includes everything

-   Kyle sends around an email to the SciSoft Team when a release is tagged.
-   Update information in build-framework/CMakeLists.txt
    -   There are multiple branches for different product configurations
-   Run cmake to get the new build configuration files.
-   Check the new config files.
    -   Always compare against the previous release.
-   If they are OK, use copyToSciSoft to install ONLY the appropriate build configuration files on SciSoft. There are html files for each release that also need to be installed.
    -   canvas
    -   art
    -   gallery
    -   critic
-   Start a Jenkins build
    -   https://buildmaster.fnal.gov/buildmaster/view/Art/job/critic-all/
    -   The build needs two iterations. First for python 2 (the LABEL field is empty) and then a second pass with LABEL set to py3.
-   Sometimes there are problems with the build.
    -   Investigate and fix.
    -   A local test build is sometimes helpful, depending on the problem.
-   Once the build has completed successfully, download the tarballs locally and then upload them to SciSoft.
    -   Work in an empty directory
    -   copyFromJenkins -N -q c2 -q c7 -q e17 -q e19 critic-all
    -   copyToSciSoft \*

## Update other products to use the appropriate release of art (SciSoft team or experiments, see bullet notes)

-   artdaq_core (~~This should go to the artdaq group — Eric Flumerfelt~~, Lynn says we just need a tag, so Scisoft team with tag from Eric)
    -   Owned by the artdaq group
    -   This product is designed to build against several different releases of art, as reflected in the generated table file.
    -   If the head of develop matches the latest tag, then use git flow to tag against the head of develop. Otherwise make a release branch against the latest tag and edit product deps.
    -   We only edit ups/product_deps to make a new release.
-   ifdh_art (SciSoft)
    -   This is the ifdh service developed by Marc Mengel at the request of the art team.
    -   ifdh_art can build against several different releases of art.
    -   ifdh_art is updated when libwda or ifdhc is updated or if it needs to recognize a new release of art.
-   nutools (Robert Hatcher will take this over)
    -   This product is owned by NOvA
    -   However, larsoft uses it extensively and sometimes makes contributions to the code.
    -   Any changes beyond those required by a new release of art, genie, or geant4 must be approved.

## Build mu distributions ( mu2e should take this over)

-   The mu distribution is basically an art distribution with a few additional products.
-   The distribution is built when requested.
-   Found on a branch of build-framework

## Build nutools releases and the nu or nulite distributions.

    Erica will talk to Laura Fields about Robert Hatcher building nutools
    Does NOvA build nu since they&#39;re the only user and LArSoft only does nulite???? (Alex Himmel?)

-   Both NOvA and LArSoft can drive the need for a new release of nutools.
    -   NOvA uses the full nu distribution.
    -   LArSoft now uses the nulite distribution which ignores packages that are NOvA specific.
-   nutools has been split into modular components.
    -   This was a staged deployment. As of nutools v3_05_00, only the CRY interface remains in nutools.
    -   The nutools suite now contains nusimdata, nugen, nug4, nuevdb, nurandom, and nutools.
    -   The build configure scripts are now generated from templates in nutools/bundle.

## LArSoft release management (SciSoft team plus experiment activity on patch releases)

-   Note that the move to github and pull requests will change this workflow.
-   Advise and collect information for each weekly release.
    -   I am often the first point of contact for code changes.
    -   Sometimes push back about proposed changes.
-   Send notices that the release is about to start.
-   Make a test build with larsoft and all the experiment code.
    -   From long experience, if there is more than one set of feature branches to merge, each set must be tested sequentially.
    -   While this could be done via CI, it is currently more efficient to test on woof. Especially since overlapping feature branches must sometimes be tested.
    -   We do encourage anyone submitting a feature branch to run the CI themselves.
-   We work on a temporary release branch.
-   Once the tests are complete and successful, update the release versions for those packages which will be changing and then tag.
-   The tag is merged with master, but not with develop.
    -   Merging with develop before the tagged release is available on cvmfs causes all kinds of problems.
-   Build on Jenkins. Sometimes we find problems during this step. We move the tag if necessary when resolving problems.
-   Once the build is complete, we finalize the release.
    -   pull the tarballs from Jenkins and upload them to SciSoft
    -   install the release on cvmfs
    -   For macOS building, we install the c2 build on /grid/fermiapp/products/larsoft
    -   make a cross package tag
    -   make release notes
    -   final merge with develop
    -   send an announcement
-   The procedure is described in detail at [How_to_tag_and_build_a_LArSoft_vx_yy_zz_release](How_to_tag_and_build_a_LArSoft_vx_yy_zz_release)
    -   Although it is tempting to take shortcuts, the procedure is designed to allow the release manager to recover from various problems that may arise. Taking shortcuts removes those safeguards.

## support various infrastructure products (SciSoft team)

-   cetbuildtools and mrb
    -   both products were originally developed by me, but have significant contributions from others
    -   We have provided cetmodules for use within spack and are contemplating a move across the board from cetbuildtools to cetmodules. Details need to be considered.
-   larreltools
    -   Replaces laradmin
    -   Contains scripts used to build regular and patch releases of larsoft
-   larutils
    -   The larsoft build scripts used on Jenkins reside in larutils
-   artutilscripts
    -   The build scripts used when building art, nutools, etc. on Jenkins reside in artutilscripts.
    -   This is also where buildFW, pullProducts, copyFromJenkins, copyToSciSoft, etc. are found.
-   laradmin
    -   This is now only of archival interest
    -   It contains the record of various larsoft migrations.

## SciSoft

-   approve requests for read-write access
    -   The possibility exists for someone to accidentally remove or overwrite products.
    -   For this reason, we use nfs4 groups to limit read-write access to necessary directories.
    -   Some members of the SciSoft team have read-write access to all of SciSoft.
-   scisoftportal - SciSoft team
    -   permissions for new fermicloud users
    -   make sure that /nasroot/SciSoft is mounted (This breaks everytime there is cloud maintenance.)

## LArSoft archives (whoever does the larsoft releases?)

-   copy files to pnfs for archiving
    -   There is a procedure, but it is slow and not automatic.
    -   Will revisit.
    -   Joe suggests using dcache and newer transfer facilities

## spack

-   I attempt to help with the spack development, but this takes a back seat to the other efforts.

## heppdt (mu2e will take this over, Kutschke)

-   This is a legacy product that was spun off as a C replacement for part of the original stdhep.
-   It is still in use by mu2e.

## Mailing lists

-   owner/manager of several mailing lists
    -   many are unused and can be retired

## CLHEP maintenance and support (someone at CERN)

-   I have been the main point person for CLHEP bug fixes.
-   Support will be passed to CERN.

## system management

-   Still provide backup support for oink. Rare that I do anything.
-   detsim.fnal.gov
    -   Now supported by CCD
