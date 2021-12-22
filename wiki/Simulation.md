-   **Table of contents**
-   [Simulation](#Simulation)
    -   [Brief Overview of Simulation Steps](#Brief-Overview-of-Simulation-Steps)
    -   [Simulation Timing](#Simulation-Timing)
    -   [Simulation Objects](#Simulation-Objects)
        -   [EveIdCalculator](#EveIdCalculator)
        -   [EmEveIdCalculator](#EmEveIdCalculator)
        -   [LArG4Parameters](#LArG4Parameters)
        -   [LArVoxelCalculator](#LArVoxelCalculator)
        -   [LArVoxelID](#LArVoxelID)
        -   [LArVoxelList](#LArVoxelList)
        -   [PMTHit and PMTPhoton](#PMTHit-and-PMTPhoton)
        -   [MCParticle](#MCParticle)
        -   [ParticleHistory](#ParticleHistory)
        -   [ParticleList](#ParticleList)
        -   [PhotonLibraryParameters](#PhotonLibraryParameters)
        -   [PhotonVoxels](#PhotonVoxels)
        -   [SimChannel](#SimChannel)
        -   [SimListUtils](#SimListUtils)
        -   [Photon and Ionization Electron Creation and Drifting](#Photon-and-Ionization-Electron-Creation-and-Drifting)

Simulation
==========================

The maintainer of this package is Brian Rebel ().

The following picture gives an overview of how the simulation chain in LArSoft works.

![](/redmine/attachments/download/30666/simulation_chain.png)

The [EventGeneratorBase](https://cdcvs.fnal.gov/redmine/projects/nusoftart/wiki/EventGeneratorBase) package in the [NuSoft](https://cdcvs.fnal.gov/redmine/projects/nusoftart/wiki) code provides the connection between an ART derived framework and various external event generators. The [source:trunk/EventGenerator](/redmine/projects/larsoft/repository/entry/trunk/EventGenerator) package implements specific art::EDProducer modules to create the output simb::MCTruth objects. The [G4Base](https://cdcvs.fnal.gov/redmine/projects/nusoftart/wiki/G4Base) package contains code that provides an interface to Geant4 for an ART derived framework. The [source:trunk/LArG4](/redmine/projects/larsoft/repository/entry/trunk/LArG4) package provides the LArSoft specific code to collect particles and energy depositions produced by Geant4 and to turn the latter into ionization electrons. The [source:trunk/Utilities](/redmine/projects/larsoft/repository/entry/trunk/Utilities) package contains some services that provide information about liquid argon physical properties or properties of the specific detector being used to create the simulated data. The [source:trunk/DetSim](/redmine/projects/larsoft/repository/entry/trunk/DetSim) package contains the readout electronics simulation for each package that ultimately creates the raw digitizations used by the reconstruction. The detector geometry is supplied by the geometry service in the [source:trunk/Geometry](/redmine/projects/larsoft/repository/entry/trunk/Geometry) package and is used by nearly all other packages.

Brief Overview of Simulation Steps
--------------------------------------------------------------------------

The first step in simulating particles in the detector is to run and EventGenerator module. See the [EventGenerator](EventGenerator) page for a description of what modules are available. The EventGenerator module will create a collection of simb::MCTruth objects and store those in the event. Each simb::MCTruth object contains the list of particles that are to be tracked by Geant4 and their initial conditions.

The next step is to track the particles stored in the simb::MCTruth objects through the detector. The [LArG4](LArG4) package handles passing the list from the simb::MCTruth object stored in the event record to Geant4. It also collects the information about the energy deposited by each step of each simb::MCParticle in the detector. The output of this step is a collection of simb::MCParticles representing not only the primary particles (except for any incoming neutrino as G4 shouldn’t be used to track those) but also any secondary, tertiary, etc particles. Note that only the primary particle in an electromagnetic shower is stored in order to save disk space, but all the information about energy depositions from the secondary and tertiary particles is saved with the primary particle. The G4 step also produces a collection of sim::SimChannel objects that store the charge and timing information for each collection of ionization electrons that are drifted to a given readout channel.

The final step is to simulate the electronics response of the detector, which is done in the [DetSim](DetSim) package. Each experiment is expected to write a module to simulate the electronics that it uses. The output of that module is a collection of raw::RawDigits that should look like data coming from the detector.

Simulation Timing
----------------------------------------

There are several times that are relevant to the simulation coming from both the event generators and the detector readout. The following table shows these times and what they represent.

  -------------------- ------------------ -------------------------------------------------------------------------------------------------------------------------------------------------- --------------------------------------------------------------------------------------------------------------------------------------
  Source               Parameter          Description                                                                                                                                        Source Code
  GENIE                GlobalTimeOffset   accounts for when the spill occurs within the readout window, always positive and in ns                                                            [GENIEHelper](https://cdcvs.fnal.gov/redmine/projects/nusoftart/repository/changes/nutools/EventGeneratorBase/GENIE/GENIEHelper.cxx)
  GENIE                RandomTimeOffset   accounts for size of the spill, picks a random value within the spill for when the interaction occurs, always positive and in ns                   [GENIEHelper](https://cdcvs.fnal.gov/redmine/projects/nusoftart/repository/changes/nutools/EventGeneratorBase/GENIE/GENIEHelper.cxx)
  Single Particle      T0                 mean time of when particle interacts in readout window, has a sigma, always positive and in ns                                                     [SingleGen](https://cdcvs.fnal.gov/redmine/projects/larsoftsvn/repository/entry/trunk/EventGenerator/SingleGen_module.cc)
  Cosmics              TimeOffset         time before a spill to begin producing particles, in seconds, negative                                                                             [CRYHelper](https://cdcvs.fnal.gov/redmine/projects/nusoftart/repository/entry/nutools/EventGeneratorBase/CRY/CRYHelper.cxx)
  Cosmics              SampleTime         integration time for cosmics, in seconds                                                                                                           [CRYHelper](https://cdcvs.fnal.gov/redmine/projects/nusoftart/repository/entry/nutools/EventGeneratorBase/CRY/CRYHelper.cxx)
  LArVoxelReadout      g4time             time of a step according to G4, starting time is from MCTruth object produced by event generator                                                   [LArVoxelReadout](https://cdcvs.fnal.gov/redmine/projects/larsoftsvn/repository/entry/trunk/LArG4/LArVoxelReadout.cxx)
  LArVoxelReadout      tdc                sum of time of drift between planes and g4time, electronics trigger offset (TriggerOffset below) in ticks is added after converting sum to ticks   [LArVoxelReadout](https://cdcvs.fnal.gov/redmine/projects/larsoftsvn/repository/entry/trunk/LArG4/LArVoxelReadout.cxx)
  DetectorProperties   TriggerOffset      number of ticks of the clock before the spill that the readout starts                                                                              [DetectorProperties](https://cdcvs.fnal.gov/redmine/projects/larsoftsvn/repository/entry/trunk/Utilities/DetectorProperties.h)
  -------------------- ------------------ -------------------------------------------------------------------------------------------------------------------------------------------------- --------------------------------------------------------------------------------------------------------------------------------------

Looking at the above list, it is clear that the TriggerOffset, TimeOffset, and GlobalTimeOffset parameters potentially all account for the same effect. The GENIEHelper and CRYHelper code live in the NuSoft repository and so LArSoft has to be sure to set the parameters for those pieces of code carefully. The TriggerOffset variable is needed in both the reconstruction and simulation so it should always be set to an appropriate value. As TriggerOffset accounts for the same effect as GlobalTimeOffset, it is recommended to set GlobalTimeOffset to zero. RandomTimeOffset must always be set to the duration of the spill. Similarly, TimeOffset for the cosmic ray simulation can be set to zero, especially as the value is small compared to SampleTime for detectors with long drift distances. The value to use for T0 when producing single particle simulation is determined by the needs of the user making the files. The user should keep in mind that TriggerOffset will be applied to all tdc values in the LArG4 stage of the simulation.

Simulation Objects
------------------------------------------

Despite the name, the Simulation package doesn’t contain any explicit simulation code. Rather, it contains the classes that describe the data objects that are either input or output from the actual simulation calculations. The package also contains certain objects designed to make navigating the produced data products easier; these objects are referred to as “helper” objects below.

Note that the simulation in LArSoft makes use of the [SimulationBase](https://cdcvs.fnal.gov/redmine/projects/nusoftart/wiki/SimulationBase) package from [NuSoft](https://cdcvs.fnal.gov/redmine/projects/nusoftart/wiki) code. Some of the objects describe below inherit from the SimulationBase objects. In other instances, the SimulationBase objects are simply written into the output ROOT files.

### [EveIdCalculator](//cdcvs.fnal.gov/redmine/projects/larsoftsvn/repository/entry/trunk/Simulation/EveIdCalculator.h)

A “helper” object to determine the ultimate mother of a particle by tracing its parentage through the Geant4 track id list.

### [EmEveIdCalculator](//cdcvs.fnal.gov/redmine/projects/larsoftsvn/repository/entry/trunk/Simulation/EveIdCalculator.h)

Similar to the EveIdCalculator, but with added functionality for determining the mother of an EM shower.

### [LArG4Parameters](//cdcvs.fnal.gov/redmine/projects/larsoftsvn/repository/entry/trunk/Simulation/LArG4Parameters.h)

This is an art::Service that provides access to the user configurable options for the simulation.

### [LArVoxelCalculator](//cdcvs.fnal.gov/redmine/projects/larsoftsvn/repository/entry/trunk/Simulation/LArVoxelCalculator.h)

This is an art::Service that provides access to the information about the Geant4 voxels in the detector. See the header file for details.

### [LArVoxelID](//cdcvs.fnal.gov/redmine/projects/larsoftsvn/repository/entry/trunk/Simulation/LArVoxelID.h)

A unique identifier for one voxel in the detector.

### [LArVoxelList](https://cdcvs.fnal.gov/redmine/projects/larsoftsvn/repository/entry/trunk/Simulation/LArVoxelList.h)

A “helper” object to facilitate navigation of LArVoxels that have energy depositions in them. LArVoxelLists cannot be stored in an art::Event and are expected to be created when needed.

### [PMTHit and PMTPhoton](https://cdcvs.fnal.gov/redmine/projects/larsoftsvn/repository/entry/trunk/Simulation/PMTHit.h)

Description of photons and digitizations for PMTs.

### [MCParticle](https://cdcvs.fnal.gov/redmine/projects/larsoftsvn/repository/entry/trunk/SimulationBase/MCParticle.h)

The simb::MCParticle object comes from [NuTools](https://cdcvs.fnal.gov/redmine/projects/nusoftart/repository/entry/nutools/SimulationBase/MCParticle.h) object. It contains the information about the particle’s type, energy, momentum and trajectory through the detector. It also contains information about the particle’s mother and daughter particles.

### [ParticleHistory](//cdcvs.fnal.gov/redmine/projects/larsoftsvn/repository/entry/trunk/Simulation/ParticleHistory.h)

This is a useful “helper” object that will provide the history for the particle having a given Geant4 track id. Please see the comments in the header file describing this object.

### [ParticleList](https://cdcvs.fnal.gov/redmine/projects/larsoftsvn/repository/entry/trunk/Simulation/ParticleList.h)

A “helper” object to facilitate navigation of the particles stored in an event. Use the [SimListUtils](https://cdcvs.fnal.gov/redmine/projects/larsoftsvn/repository/entry/trunk/Simulation/SimListUtils.h) object to obtain a ParticleList.

### [PhotonLibraryParameters](https://cdcvs.fnal.gov/redmine/projects/larsoftsvn/repository/entry/trunk/Simulation/PhotonLibraryParameters.h)

### [PhotonVoxels](https://cdcvs.fnal.gov/redmine/projects/larsoftsvn/repository/entry/trunk/Simulation/PhotonVoxels.h)

Voxels related to the photon simulation

### [SimChannel](https://cdcvs.fnal.gov/redmine/projects/larsoftsvn/repository/entry/trunk/Simulation/SimChannel.h)

SimChannel is the data product that collects all the ionization electrons for a given channel during a given TPC readout window, ie a spill. The SimChannel contains a collection of IDE objects which hold information about the track id of a particle producing ionization electrons, the number of electrons that drifted to the wire and the location of the ionization.

### [SimListUtils](https://cdcvs.fnal.gov/redmine/projects/larsoftsvn/repository/entry/trunk/Simulation/SimListUtils.h)

A “helper” object that will produce the XXXList objects mentioned above, except the ParticleList. That is provided by the BackTracker service

### Photon and Ionization Electron Creation and Drifting

Please see the [Photon and Ionization Electron Simulation](Photon_and_Ionization_Electron_Simulation) page for a collection of links to papers and description of the algorithms used to do these simulation tasks.
