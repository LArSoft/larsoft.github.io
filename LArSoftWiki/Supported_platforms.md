

# Supported platforms

Meaning of “supported platforms”:  Builds are actively supported on these platforms, the code runs and works as intended (as evidenced by tests under the CI system), and source and binary installs of LArSoft and all the products on which it depends are made available on a regular basis. Unless noted otherwise, installations for supported platforms will also be available via cvmfs as noted below. Other cvmfs installations may be available — check with offline support for your experiment.

SL7:
- The current reference system for LArSoft builds. Note that SL7 is beyond end of life as of June 30, 2024, and is no longer supported by Fermilab or the upstream vendor, so can only be  run within a secure container. See the LArSoft wiki page [Developing LArSoft on Unsupported Operating Systems with Docker](https://larsoft.github.io/LArSoftWiki/Developing_LArSoft_on_Unsupported_Operating_Systems_with_Docker), or your experiment wiki for Instructions on using LArSoft within a container.   
- Binary distributions of LArSoft for SL7 are available at cvmfs/larsoft.opensciencegrid.org/productsdirectory area on the experiment gpvm’s.
Note: you must have /cvmfs mounted for the above link to work. 
- Any SL7 or Centos7 based release is expected to work, with the caveat noted above.


# Best effort

*Builds and binaries are provided when effort is available, or upon request. Open a LArSoft issue ticket to request a specific release.*


# Porting efforts in progress

*“Porting effort in progress” means that LArSoft code management intends to move the listed platform into the “Supported platforms” category, and is in the process of making that happen.*

- Alma Linux 9 (AL9)
AL9 will become the reference system for LArSoft, but depends upon the complete [Migration from UPS to Spack](https://larsoft.github.io/LArSoftWiki/LArSoft_with_SPACK). Until the migration is completed, only occasional releases will be made available for AL9.
UPS will no longer be available under AL9

# Known to work

*“Known to work” means that the LArSoft team knows of someone who has succeeded in building LArSoft and the products on which it depends, and that it purportedly runs as intended. The LArSoft team, however, does not support builds or distributions on these platforms. When such distributions are available, no warranty is made as to whether they will run as desired, or that they are free of defects. Such unofficial binary or source installs should be used at your own risk.*

# List of platforms under consideration

*“Under consideration” is intended to list platforms that have been mentioned as possible targets for future porting efforts, but where no decision has been made or timescale set, unless noted otherwise. The SciSoft team knows of no cases where someone has succeeded in either building or running LArSoft on the listed platforms.*

The ultimate list will be determined in consultation with the experiments and as available effort allows.

# No longer supported

- SL7 when not run within containers. Once the migration to AL9 is completed, there will only be limited SL7 support for production releases for those experiments that are unable to migrate to AL9.
- -   Note on MacOS: regular builds of LArSoft under MacOS has required a disproportionate level of effort from the support team. In addition, the requirement that SIP be disabled in order to build and run LArSoft under any macOS release, as is currently the case, prevents “full support” of MacOS even without the attendant build issues. As a result, the SciSoft team has dropped support for MacOS builds until further notice. Users who need to execute LArSoft under MacOS should use an appropriate virtual OS.
-  any macOS release
-   Ubuntu LTS 20 (u20)
    -   Best-effort support for Ubuntu LTS 20 was available for some e20 builds.
-   Ubuntu LTS 18 (u18).
-   Ubuntu LTS 16 (u16).
    -   Best-effort support for Ubuntu 16 LTS is available as of April 13, 2017 (larsoft v06_32_00) built with gcc 6.3.0 (e14).
    -   Note: As of Dec 2015, there was a formal request to begin official support for Ubuntu. Implementing this request requires new SCD resources, which we have requested. See issue \#11124 for details.
