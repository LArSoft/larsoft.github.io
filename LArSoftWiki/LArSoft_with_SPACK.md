# Overview page of LArSoft with SPACK

Sept 11, 2024

At present, LArSoft is in the process of migrating from the Fermilab developed UPS packaging tool to the community developed and supported [Spack](https://spack.io/) packaging tool. The use of Spack as the LArSoft package manager is expected to provide greatly improved flexibility to the experiments in building their software stacks relative to the standard tools provided by the LArSoft team, and will reduce the effort required to support the LArSoft software stack, thereby freeing effort to work on other high priority tasks. 

The new system will provide the [multi-product development tool (mpd)](https://github.com/FNALssi/spack-mpd), a Spack extension that allows users to develop CMake based packages in concert with Spack-provided external software. Users are invited to use the current, beta-quality version of mpd.

Release mechanisms and procedures are still under development. A promising solution to the single remaining technical hurdle for creating releases with Spack is currently being tested. Notably, this solution works in small scale tests, implying there are no longer any outstanding technical gaps to a complete Spack solution. Full technical and procedural details will be provided as they become available.

All of this information is changing rapidly, so check back frequently for updates.


## The interim solution

UPS will not be supported under AL9, and SL7 reach EOL on June 30, 2024. Consequently, until Spack is fully deployed, all LArSoft builds must be performed within SL7 containers. See the [Developing LArSoft with Containers](https://larsoft.github.io/LArSoftWiki/Developing_LArSoft_with_Containers) page for more information on how to do that.



## Spack builds of LArSoft

Until the Spack migration is completed, there will be a limited number of Spack-based LArSoft builds available for either SL7 or AL9. 

The most recent version of LArSoft built under Spack is v10.00.03. To set up under AL9:
* source /cvmfs/larsoft.opensciencegrid.org/spack-v0.22.0-fermi/setup-env.sh
* spack env activate larsoft-10-00-03-tensorflow-2-15-0-gcc-12-2-0-cxx17-prof-gcc-11-4-1-almalinux9-x86_64_v2
* spack load larsoft

The most recent v09 series release is v09.90.01. To set up on AL9:
* source /cvmfs/larsoft.opensciencegrid.org/spack-v0.22.0-fermi/setup-env.sh
* spack env activate larsoft-09-90-01-gcc-12-2-0-cxx17-prof-gcc-11-4-1
* spack load larsoft
