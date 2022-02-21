Reproducing jobs using the same random number sequences
====================================================================================================================

These instructions describe how to run multiple jobs using the same random number sequences.

#### Glossary

||
|random number engine|code generating a simple sequence of uniformly distributed numbers, which typically needs to be initialised with some state (*seed*); C++ defines some in [`random` header](http://www.cplusplus.com/reference/random) , CLHEP also defines some; ROOT merges the engine and the extraction according to a probability density|
|probability density function|a distribution with integral 1 that describe the relative probability of each value to be extracted; again, C++ and CLHEP have specific classes for extraction according to each PDF, that require an engine to be specified, while ROOT classes incorporate them into a single entity supporting all distributions with a given engine|
|random number sequence|a sequence of numbers extracted with a (pseudo)random algorithm, according to a probability distribution|
|random stream|a source of random sequences; it is implemented as an engine with a specific initialisation|

Introduction to random number generation in *art* and LArSoft
------------------------------------------------------------------------------------------------------------------------------

*art* modules can (and *should*) obtain random numbers from engines managed by `RandomNumberGenerator` service. That service also allows some control on the configuration of the engines (see this [old documentation](Random_number_generators_in_art)).
In LArSoft (and in fact also in NOvA), a service is available called `NuRandomService` which can centralise the management of the seeds of all registered random engine. **This is the preferred way to deal with random seeds.**

`NuRandomService`
--------------------------------------

The *art* service `rndm::NuRandomService` (in *nutools*) is documented via Doxygen, in two parts:

-   [the configuration of the service](http://nusoft.fnal.gov/larsoft/doxsvn/html/classrndm_1_1SeedMaster.html#details) (if you are wondering: the "`SeedMaster`" is the art-independent part that provides most of the seed management functionality)
-   [the usage of service interface in the code](http://nusoft.fnal.gov/larsoft/doxsvn/html/classrndm_1_1NuRandomService.html#details)

The information on this page focuses on usage (the first item) and it assumes that the underlying code is properly using the service to set up its random streams.

`NuRandomService` has three types of operating modes (“policies”):

-   per-job random sequences: the same sequence is guaranteed for the job
-   per-event random sequences: the same sequence is guaranteed for each event
-   random sequences: job is not reproducible

An example to illustrate the difference: imagine a job processing two events, `E1` and `E2`, with one and two particles respectively. Let’s run a module that consumes one random number per track.
We describe three scenarios:

1.  the input file contains E1 and then E2; we process both
2.  the input file contains E1 and then E2; we skip E1
3.  the input file contains E2 and then E1; we process both

The sequence of random numbers assigned to the event are reproducible and look like:

||
|input events|example of per-job sequence|example of per-event sequence|
|{ E1, E2 }|E1: { 5 }; E2: { 10, 7 }|E1: { 3 }; E2: { 1, 14 }|
|{ E1, E2 } (E1 skipped)|E2: { 5, 10 }|E2: { 1, 14 }|
|{ E2, E1 }|E2: { 5, 10 }; E1: { 7 }|E2: { 1, 14 }; E1: { 3 }|

That is, per-event policies define one sequence per event, while per-job policies define a single sequence for the whole job.

> **Our recommendation is to use `perEvent` policy.** With jobs where the input files are served by SAM, there is no guaranteed order and reproducing an entire batch can be quite problematic (this situation is equivalent to the one where the input file might contain different events, example scenario 3 above; only, it’s worse).

> **Note**: it is a good idea to ask `NuRandomService` to print a summary of the seeds used specifying `endOfJobSummary: true` configuration parameter.

The following sections describe how to reproduce jobs using each of the three operating modes supported by `NuRandomService`.

Reproducing jobs with a “random” policy
----------------------------------------------------------------------------------

Currently, the only policy of this type is called `random`.
We **strongly discourage the use of this policy**, because it makes harder (or impossible) to reproduce a job.
This policy uses a master seed to initialise the state of all random engines. That master seed is also random.
Nevertheless, the `random` policy writes on the log file which master seed it is using, and it also allows to specify which master seed to use in a job.
Therefore, if you did not listen to the all-so-wise recommendation **not to use random policy**, you can still try and reproduce your original job:

1.  find the master seed (`<SEED>`) from the console output of the job; currently it *might* be emitted into a MessageFacility output stream called `NuRandomService` with search key `master seed`, but *only if verbosity has been increased or the service has been explicitly told to write a seed summary*
2.  run the job again with a configuration like:

        #include "original_fhicl.fcl" 

        services.NuRandomService.masterSeed: <SEED>

If you can’t find the master seed (too low verbosity, or you lost the log file), well… next time **don’t use random policy**!

Reproducing jobs with a “per-event” policy
----------------------------------------------------------------------------------------

Currently, the only policy of this type is called `perEvent`.
When using this policy, it is typically easy to reproduce a job running *with existing events as input* (`RootInput` source module, which reads art ROOT files from previous jobs).
In that case, just rerun the job with the same FHiCL configuration. The order of the input files and events does not even matter.

### If the input is not from an existing *art* event

Let’s digress with a relevant detail. Per-event policies assign a unique random sequence to each event. To identify an event, the policy `perEvent` uses the event time and ID.
Therefore, *it is required to define a timestamp plugin when creating an event from scratch* (the default one, setting all timestamps as `0`, won’t do).
These quantities are defined when the event is created from scratch. Not all the input sources do that: `RootInput` does not, while `EmptyEvent` does.

If you have a job starting with `EmptyEvent`, well, you can’t reproduce it with `perEvent` policy, since the timestamp will be different on each rerun.
The workaround is to split the job. For example:

-   the job combines generator, detector simulation and digitisation (that’s a typical `prodsingle` job), and you are interested in rerunning the detector simulation or digitisation part only:
    1.  split the job in two: generator first, then detector simulation and digitisation
    2.  run generator job
    3.  run the rest of the jobs: since they use `RootInput` (with as input file the output of the generator phase) as source, you are out of trouble
-   you really want to reproduce generation:
    1.  split the job in two: creation of the desired number of empty events first, then all the rest; LArSoft provides a configuration `empty_event.fcl` for that purpose
    2.  run the rest of the jobs: since they use `RootInput` (with as input file the output of the empty event job) as source, you are out of trouble
    3.  you can keep the small empty event file as the root of any reprocessing
-   you really want to reproduce a generation job that already occurred, then check the last resort: [rerunning a job starting from its output](Rerunning_a_job_starting_from_its_output), dropping *all* the data products (`source.inputCommands: [ "drop *" ]`).

Reproducing jobs with a “per-job” policy
------------------------------------------------------------------------------------

First, you know the policy you are using is a per-job one when it’s not any of the other two types. Examples of per-job policies include `autoIncrement`, `preDefinedOffset` and `linearMapping`.
While using these policies, running the very same *art* command line should be enough to reproduce the job in any situation, but you have to make sure you are using the same FHiCL configuration and the same sequence of input files: their order matters!

* * * * *

*For questions, contact Gianluca Petrillo.*
