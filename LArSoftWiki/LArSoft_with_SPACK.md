# Overview page of LArSoft with SPACK

September 1, 2026

LArSoft is in the process of migrating from the Fermilab developed UPS packaging tool to the community developed and supported [Spack](https://spack.io/) packaging tool. The use of Spack as the LArSoft package manager is expected to provide greatly improved flexibility to the experiments in building their software stacks relative to the standard tools provided by the LArSoft team, and will reduce the effort required to support the LArSoft software stack, thereby freeing effort to work on other tasks. 

The new system provides the [multi-product development tool (mpd)](https://github.com/FNALssi/spack-mpd), a Spack extension that allows users to develop CMake based packages in concert with Spack-provided external software. MPD offers a similar set of features as that of the UPS-based MRB tool.

Spack is in production for LArSoft as of August 26, 2026. (Experiments will make their own decisions about when Spack is in production for them.) From that time, all releases of LArSoft will be built under Spack. Until UPS is fully retired, we will also continue to build LArSoft under UPS as well. At the time of writing, the Spack build will lag the UPS build by a day or two. Migration team members are still available to assist experiments in bringing Spack into production in their software.

For additional details on release procedures and developing with Spack, see the presentations and "Plan for Standard Builds" document discussed at [the Dec. 10, 2024 LArSoft Coordination Meeting](https://indico.fnal.gov/event/67311/), the [Spack-at-FNAL git repository](https://github.com/FNALssi/spack-at-fnal), and the [Spack-MPD git repository](https://github.com/FNALssi/spack-mpd/tree/main). A quick-start guide for using MPD can be found on [Developing LArSoft with Spack and MPD wiki page](https://larsoft.github.io/LArSoftWiki/Developing_LArSoft_with_Spack).


## The interim solution remains supported

Until Spack is fully deployed at all experiments, we will continue to provide UPS-based builds of LArSoft. All such builds and running of LArSoft must be performed within SL7 containers. See the [Developing LArSoft with Containers](https://larsoft.github.io/LArSoftWiki/Developing_LArSoft_with_Containers) page for more information on how to do that.



## Spack builds of LArSoft

We will post the LArSoft Spack environments to a location to be announced. Until then, you can find the list of environments by using `spack env list`, or looking in /cvmfs/larsoft.opensciencegrid.org/spack-fnal-v<THE LATEST VERSION>/var/spack/environments. 

To set up a working area for developing code against this release of LArSoft while minimizing the code that is re-built, we recommend following the instructions for [Developing LArSoft with Spack and MPD](https://larsoft.github.io/LArSoftWiki/Developing_LArSoft_with_Spack).


## Summary of Spack Migration Plan

* Spack development
  * Production release will be v1 series. 
    * *Status:  Released July 2025*
  * Write, validate document that describes detailed, technical procedure for creating a release of LArSoft using a well defined set of tools and steps
    * Expect extension to experiment code from this point will be straight-forward
    * *Status:  Completed*
  * Write, validate documentation on MPD and Fermilab Spack environment
    * Separately provide documentation for release managers and end users
    * *Status:  Completed*
* Pre Spack v1.0 work for experiments
  * Select a Spack release on which to base work. Spack team will offer recommendations
  * Create experiment-specific repository for base experiment code recipes
  * Prepare and test recipes for experiment code and dependencies for which recipes not already available
    * Rely on Spack documentation and tutorials for this
    * PR recipes either to Spack, LArSoft or experiment recipe repositories, as appropriate
  * Identify cases where migration to AL9 is not possible
    * Define procedures for handling these presumably rare cases
  * *Status:  completed to extent necessary to begin migration*
* Post Spack 1.0 work
  * LArSoft: 
    * Make  AL9 releases of LArSoft under Spack based on release policy
      * *Status:  on-going* 
    * In parallel, make SL7 releases under UPS
      * *Status:  on-going* 
    * Work with experiments to define time window during which SL7 builds will be released
      * External factors may impose a timeline on phase-out of SL7 containers
    * *Status: In progress*
  * Experiments
    * Complete necessary recipe changes
      * *Status:  in progress* 
    * Start building AL9 releases of experiment code using Spack
      * Validate software development procedures
      * Validate physics under AL9
      * *Status:  in progress*
    * In parallel, create SL7 releases under UPS
      * *Status:  on-going* 
    * When AL9 validations are completed, cease SL7/UPS builds of experiment code
    * *Status: Nearly complete for some experiments (DUNE, SBND), in-progress for others*
  * LArSoft
    * Cease regular SL7 builds when all experiments have migrated


