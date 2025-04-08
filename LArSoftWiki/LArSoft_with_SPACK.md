# Overview page of LArSoft with SPACK

April 8, 2025

At present, LArSoft is in the process of migrating from the Fermilab developed UPS packaging tool to the community developed and supported [Spack](https://spack.io/) packaging tool. The use of Spack as the LArSoft package manager is expected to provide greatly improved flexibility to the experiments in building their software stacks relative to the standard tools provided by the LArSoft team, and will reduce the effort required to support the LArSoft software stack, thereby freeing effort to work on other high priority tasks. 

The new system will provide the [multi-product development tool (mpd)](https://github.com/FNALssi/spack-mpd), a Spack extension that allows users to develop CMake based packages in concert with Spack-provided external software. Users are invited to use the current, beta-quality version of mpd. 

Release mechanisms and procedures are still under development, where efforts are focused on exploring a new continuous integration solution.Full technical and procedural details will be provided as they become available.

For additional details, see the presentations and "Plan for Standard Builds" document discussed at [the Dec. 10, 2024 LArSoft Coordination Meeting](https://indico.fnal.gov/event/67311/)


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


## Summary of Migration Plan to Spack

* Spack development
  * Production release will be v1.0. Need to wait for this to be released before formal migration can occur.
    * Timescale is summer 2025
  * Write, validate document that describes detailed, technical procedure for creating a release of LArSoft using a well defined set of tools and steps
    * Expect extension to experiment code from this point will be straight-forward
  * Write, validate documentation on MPD and Fermilab Spack environment
    * Separately provide documentation for release managers and end users
* Pre Spack v1.0 work for experiments
  * Select a Spack release on which to base work. Spack team will offer recommendations
  * Create experiment-specific repository for base experiment code recipes
  * Prepare and test recipes for experiment code and dependencies for which recipes not already available
    * Rely on Spack documentation and tutorials for this
    * PR recipes either to Spack, LArSoft or experiment recipe repositories, as appropriate
  * Identify cases where migration to AL9 is not possible
    * Define procedures for handling these presumably rare cases
* Post Spack 1.0 work
  * LArSoft: 
    * Make  AL9 releases of LArSoft under Spack based on release policy
    * In parallel, make SL7 releases under UPS
    * Work with experiments to define time window during which SL7 builds will be released
      * External factors may impose a timeline on phase-out of SL7 containers
  * Experiments
    * Complete necessary recipe changes
    * Start building AL9 releases of experiment code using Spack
      * Validate software development procedures
      * Validate physics under AL9
    * In parallel, create SL7 releases under UPS
    * When AL9 validations are completed, cease SL7/UPS builds of experiment code
  * LArSoft
    * Cease regular SL7 builds when all experiments have migrated


