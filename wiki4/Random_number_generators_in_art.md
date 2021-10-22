Random number generators in art[¶](#Random-number-generators-in-art)
====================================================================

> **Note**: the preferred way to control random number streams is through [NuRandomService](http://nusoft.fnal.gov/larsoft/doxsvn/html/classrndm_1_1SeedMaster.html#details) !

`RandomGeneratorService` is a `art` service providing an interface with the CLHEP random generation engines.\
When a producer, filter or analyser needs a random number, it should call `createEngine()` *in the constructor* to create and initialize its own random generator(s).\
The random seed can be set immediately on creation or later.\
The random number generator can be retrieved at any time using `getEngine()` with the (optional) label used to create it (note that every module has its own generator: no sharing between modules!).


Breaking a job in parts[¶](#Breaking-a-job-in-parts)
----------------------------------------------------

`RandomGeneratorService` has also the option of saving the status its engines at the end of the job, and to restore their status from a data file.\
This is useful if one wants to break a long job in many smaller ones to execute sequentially.\
In that case, the second subjob should start with the random number sequences from where the first one ended, and so on.

To save the status of the engines at the end of the run in a (text) file called `FinalRandomSeeds.dat`:\

    services.RandomNumberGenerator.saveTo: "FinalRandomSeeds.dat" 

\
To pick up the state from the previous run, the corresponding configuration option is:\

    services.RandomNumberGenerator.restoreFrom: "FinalRandomSeeds.dat" 

\
This will also prevent new generators from being created (so your module is better create them in the constructor).\
The random seed file needs to be available in the current directory or on the absolute path specified by `restoreFrom`\
(in other words, it’s opened by a `std::ifsteam` constructor on the specified path).


Saving the random generators after each event[¶](#Saving-the-random-generators-after-each-event)
------------------------------------------------------------------------------------------------

There is also the possibility to save and restore the state at the beginning of each event.

The storage of the generator states is performed by the `art` module `RandomNumberSaver`.\
When run, the module takes a snapshot of the state of all random engines and writes it into the event.\
`RandomNumberSaver` is a producer, and its product is named accordingly;\
for example, for a `RandomNumberSaver` instance called “rns”, that is also the label associated to the product.\
Note that the module saves the current state of the engines: since this is a producer,\
it’s run before the analysers and therefore it will always save their old engine state, if any.

The restoration of the state is controlled in the service `RandomGeneratorService` by the `restoreStateLabel` option,\
which before each event restores the state of all the engines as saved in the event.

A possible scenario of use is to run `RandomNumberSaver` *as the very first module*.\
In that way, the stored data will describe (and reproduce) the state which is going to generate the event products.\
The restoration will happen by using\

    services.RandomNumberGenerator.restoreStateLabel: rns

\
assuming that “rns” was the instance of the random number generator.


### Example[¶](#Example)

Let’s assume we have run a job as:

`lar -c standard_g4_simulation.fcl -s generated.root`

which had in it the following configuration:\

    process_name: G4     # also defines the labels of the output products

    physics: {
      producers: {
        rns: {
          module_label: "rns" 
          module_type:  "RandomNumberSaver" 
        }
      }
      ...
    }

    outputs: {
      out1: {
        fileName:     "standard_g4_simulation.root" # defines the name of the output file
        module_label: "out1" 
        module_type:  "RootOutput" 
      }
    }

That is, the job with process name `G4` produces a `standard_g4_simulation.root` with a product labelled `rns`.\
The input file has all products labelled with the process that produced it, e.g. `SinglesGen`. In fact, let’s say for example that “generated.root” contains the following products:\

    art::TriggerResults_TriggerResults__SinglesGen
    art::RNGsnapshots_rns__SinglesGen
    simb::MCTruths_generator__SinglesGen

\
all ending with “SinglesGen”. The output of `lar -c standard_g4_simulation.fcl -s generated.root` (`standard_g4_simulation.root`) will contain:\

    simb::MCParticlesimb::MCTruthvoidart::Assns_largeant__G4
    art::TriggerResults_TriggerResults__G4
    art::RNGsnapshots_rns__G4
    sim::AuxDetSimChannels_largeant__G4
    sim::SimChannels_largeant__G4
    sim::SimPhotonsLites_largeant__G4
    simb::MCParticles_largeant__G4

\
*in addition to the original branches*:\

    art::TriggerResults_TriggerResults__SinglesGen
    art::RNGsnapshots_rns__SinglesGen
    simb::MCTruths_generator__SinglesGen

We want to use the product `art::RNGsnapshots_rns__G4` and the content of `generated.root` to run `standard_g4_simulation.fcl` again.\
In fact, `standard_g4_simulation.root` contains all the material we need. Plus more. If we try to run using it as input file, `art` will complain that it already contains products for our job labelled `G4`.\
One solution:

-   use `standard_g4_simulation.root` as input file
-   have a modified configuration file changing the name of the process (e.g. from `G4` to `G4again`)
-   have the same modified configuration file load the random engine states from `art::RNGsnapshots_rns__G4`
-   since we don’t need them any more, tell `art` to not even read the products from G4, except of course `art::RNGsnapshots_rns__G4`

A configuration like that would look like:\

    #include "standard_g4_simulation.fcl" 

    process_name: "G4rerun" 
    services.RandomNumberGenerator.restoreStateLabel: "rns" 
    source.inputCommands: [ "keep *", "drop *_*_*_G4", "keep *_rns__G4" ]

The output file of this other job will contain the following products:\

    art::TriggerResults_TriggerResults__SinglesGen
    art::RNGsnapshots_rns__SinglesGen
    simb::MCTruths_generator__SinglesGen
    art::RNGsnapshots_rns__G4
    simb::MCParticlesimb::MCTruthvoidart::Assns_largeant__G4rerun
    art::TriggerResults_TriggerResults__G4rerun
    art::RNGsnapshots_rns__G4rerun
    sim::AuxDetSimChannels_largeant__G4rerun
    sim::SimChannels_largeant__G4rerun
    sim::SimPhotonsLites_largeant__G4rerun
    simb::MCParticles_largeant__G4rerun

Such configuration is produced by `larrun.sh` version 1.11 and later:\
`larrun.sh --seedfromevents=rns standard_g4_simulation.fcl -s standard_g4_simulation.root`\
(a suitable version of that script is attached with this page)