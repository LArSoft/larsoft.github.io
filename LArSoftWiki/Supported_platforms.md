

# Supported platforms

*Builds are actively supported on these platforms, the code runs and works as intended (as evidenced by the CI system), and source and binary installs of LArSoft and all the products on which it depends are made available on a regular basis. Unless noted otherwise, installations for supported platforms will also be available via `cvmfs` on `/cvmfs/larsoft.opensciencegrid.org/products`. Other `cvmfs` installations may be available — check with offline support for your experiment.*

-   The reference system is SL7 (see [the Fermi Linux site](https://www.scientificlinux.org/at-fermilab/) for details.)

-   SL7
    -   Binary distributions are available for SL7 and installed on /cvmfs/larsoft.opensciencegrid.org
    -   Any SL7 or Centos7 based release is expected to work.


-   Additional information may be found on the [SciSoft supported platform page](https://cdcvs.fnal.gov/redmine/projects/cet-is/wiki/Supported_platforms)

# Best effort

*Builds and binaries are provided when effort is available, or upon request. Open a LArSoft issue ticket to request a specific release.*


# Porting efforts in progress

*“Porting effort in progress” means that LArSoft code management intends to move the listed platform into the “Supported platforms” category, and is in the process of making that happen.*

-   None at present

# Known to work

*“Known to work” means that the LArSoft team knows of someone who has succeeded in building LArSoft and the products on which it depends, and that it purportedly runs as intended. The LArSoft team, however, does not support builds or distributions on these platforms. When such distributions are available, no warranty is made as to whether they will run as desired, or that they are free of defects. Such unofficial binary or source installs should be used at your own risk.*

# List of platforms under consideration

*“Under consideration” is intended to list platforms that have been mentioned as possible targets for future porting efforts, but where no decision has been made or timescale set, unless noted otherwise. The SciSoft team knows of no cases where someone has succeeded in either building or running LArSoft on the listed platforms.*

The ultimate list will be determined in consultation with the experiments and as available effort allows.

- AlmaLinux 9 with spack builds

# No longer supported

-   Note on MacOS: regular builds of LArSoft under MacOS has required a disproportionate level of effort from the support team. In addition, the requirement that SIP be disabled in order to build and run LArSoft under any macOS release, as is currently the case, prevents “full support” of MacOS even without the attendant build issues. As a result, the SciSoft team has dropped support for MacOS builds until further notice. Users who need to execute LArSoft under MacOS should use an appropriate virtual OS.
-  any macOS release
-   Ubuntu LTS 20 (u20)
    -   Best-effort support for Ubuntu LTS 20 was available for some e20 builds.
-   Ubuntu LTS 18 (u18).
-   Ubuntu LTS 16 (u16).
    -   Best-effort support for Ubuntu 16 LTS is available as of April 13, 2017 (larsoft v06_32_00) built with gcc 6.3.0 (e14).
    -   Note: As of Dec 2015, there was a formal request to begin official support for Ubuntu. Implementing this request requires new SCD resources, which we have requested. See issue \#11124 for details.
