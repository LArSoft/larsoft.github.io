

# Supported platforms

*Builds are actively supported on these platforms, the code runs and works as intended (as evidenced by the CI system), and source and binary installs of LArSoft and all the products on which it depends are made available on a regular basis. Unless noted otherwise, installations for supported platforms will also be available via `cvmfs` on `/cvmfs/larsoft.opensciencegrid.org/products`. Other `cvmfs` installations may be available — check with offline support for your experiment.*

-   The reference system is SL7 (see [the Fermi Linux site](http://www.scientificlinux.org/at-fermilab/) for details.)

<!-- -->

-   SL7
    -   Binary distributions are available for SL7 and installed on /cvmfs/larsoft.opensciencegrid.org
    -   Any SL7 or Centos7 based release is expected to work.

<!-- -->

-   Docker images
    -   SL7 images available at https://hub.docker.com/u/fnalart/
    -   Can be run on any machine that supports Docker
    -   Images for new releases will be created on request.

<!-- -->

-   Additional information may be found on the [SciSoft supported platform page](https://cdcvs.fnal.gov/redmine/projects/cet-is/wiki/Supported_platforms)

# Best effort

*Builds and binaries are provided when effort is available, or upon request. Open a LArSoft issue ticket to request a specific release.*

-   Ubuntu LTS 20 (u20)
    -   Best-effort support for Ubuntu LTS 20 is available with e20 builds.

# Porting efforts in progress

*“Porting effort in progress” means that LArSoft code management intends to move the listed platform into the “Supported platforms” category, and is in the process of making that happen.*

-   None at present

# Known to work

*“Known to work” means that the LArSoft team knows of someone who has succeeded in building LArSoft and the products on which it depends, and that it purportedly runs as intended. The LArSoft team, however, does not support builds or distributions on these platforms. When such distributions are available, no warranty is made as to whether they will run as desired, or that they are free of defects. Such unofficial binary or source installs should be used at your own risk.*

# List of platforms under consideration

*“Under consideration” is intended to list platforms that have been mentioned as possible targets for future porting efforts, but where no decision has been made or timescale set, unless noted otherwise. The SciSoft team knows of no cases where someone has succeeded in either building or running LArSoft on the listed platforms.*

The ultimate list will be determined in consultation with the experiments and as available effort allows.

-   Ubuntu LTS 20

# No longer supported

-   Note on MacOS: regular builds of LArSoft under MacOS has required a disproportionate level of effort from the support team. In addition, the requirement that SIP be disabled in order to build and run LArSoft under any macOS release, as is currently the case, prevents “full support” of MacOS even without the attendant build issues. As a result, the SciSoft team has dropped support for MacOS builds until further notice. Users who need to execute LArSoft under MacOS should use an appropriate docker image.
-   macOS 10.14 Mojave
    -   Best-effort support is available with clang 7.0.0 (c7) builds.
    -   Note: At present, using Mojave requires:
        -   Disabling System Integrity Protection (SIP). (Disabling SIP is currently allowed at Fermilab. Check the security policies at your institution before taking this step.)
        -   [Homebrew](https://cdcvs.fnal.gov/redmine/projects/cet-is/wiki/Homebrew_keg_only_install_of_openssl) keg-only installation of `openssl`.
    -   See https://cdcvs.fnal.gov/redmine/projects/el-capitan-support/wiki/Installing_OpenSSL_on_El_Capitan for full details
    -   **Xcode 10.1** (System headers were changed in Xcode 10.2. It cannot be used at this time.)
        -   See https://sft.its.cern.ch/jira/projects/ROOT/issues/ROOT-10085
-   OSX Yosemite
    -   “Starting from Nov. 10, 2017, any Mac computer running macOS Yosemite (v10.10) will be blocked from accessing the Fermilab network.”
    -   Fermilab offers limited support for scientific applications under Mac OSX. (See the [SCD policy statement here.](https://cd-docdb.fnal.gov:440/cgi-bin/ShowDocument?docid=5326) ) While core LArSoft and experiment production code is tested and works, some products used by LArSoft (e.g., ifdhc) may offer functionality under SL that is not available under any given flavor of OSX.
    -   Notice about building: If you are building larsoft and supporting products from source, please move other product providers such as homebrew out of the way (e.g. sudo -i mv /usr/local{,.safe}). The presence of some packages under /usr/local can result in non-portable builds of packages such as ROOT due to an ability to auto-configure for found features.
-   Mac OSX 10.11 “El Capitan”
    -   Support dropped as of larsoft v06_74_00 (April 12, 2018)
    -   Note: At present, using El Capitan requires:
        -   Disabling System Integrity Protection (SIP). (Disabling SIP is currently allowed at Fermilab. Check the security policies at your institution before taking this step.)
        -   [Homebrew](https://cdcvs.fnal.gov/redmine/projects/cet-is/wiki/Homebrew_keg_only_install_of_openssl) keg-only installation of `openssl`.
    -   See https://cdcvs.fnal.gov/redmine/projects/el-capitan-support/wiki/Installing_OpenSSL_on_El_Capitan for full details
-   Mac OSX 10.12 “Sierra”
    -   Support dropped as of larsoft v08_16_00 (April 19, 2019)
    -   Best-effort support is available with clang 5.0.1 (c2) builds.
    -   Note: At present, using Sierra requires:
        -   Disabling System Integrity Protection (SIP). (Disabling SIP is currently allowed at Fermilab. Check the security policies at your institution before taking this step.)
        -   [Homebrew](https://cdcvs.fnal.gov/redmine/projects/cet-is/wiki/Homebrew_keg_only_install_of_openssl) keg-only installation of `openssl`.
    -   See https://cdcvs.fnal.gov/redmine/projects/el-capitan-support/wiki/Installing_OpenSSL_on_El_Capitan for full details
    -   Support for Sierra is dropped for releases built with art 3.02 and higher.
-   macOS 10.13 High Sierra
    -   Best-effort support is available with clang 5.0.1 (c2) builds.
    -   Note: At present, using High Sierra requires:
        -   Disabling System Integrity Protection (SIP). (Disabling SIP is currently allowed at Fermilab. Check the security policies at your institution before taking this step.)
        -   [Homebrew](https://cdcvs.fnal.gov/redmine/projects/cet-is/wiki/Homebrew_keg_only_install_of_openssl) keg-only installation of `openssl`.
    -   See https://cdcvs.fnal.gov/redmine/projects/el-capitan-support/wiki/Installing_OpenSSL_on_El_Capitan for full details
-   Ubuntu LTS 18 (u18).
-   Ubuntu LTS 16 (u16).
    -   Best-effort support for Ubuntu 16 LTS is available as of April 13, 2017 (larsoft v06_32_00) built with gcc 6.3.0 (e14).
    -   Note: As of Dec 2015, there is a formal request to begin official support for Ubuntu. Implementing this request requires new SCD resources, which we have requested. See issue \#11124 for details.
