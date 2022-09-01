

# EventGenerator

Author: Brian Rebel

# Summary

This package provides interfaces to various event generation products including GENIE, CRY, and single particle generators.

-   **Input**: none
-   **Output**: simb::MCTruth, simb::MCFlux

# Technical description

There are four different ways to create events for LArSoft:

1.  CRY - cosmic ray generation
2.  GENIE - neutrino interaction generation
3.  Single - creation of predefined particles at given energies, directions in the detectors
4.  LightSource - photon generation for PMT studies

The larsim:source:larsim/EventGenerator package contains a module for each of these, as well as .fcl files defining the jobs to run each type of event generation.

## Cosmic Ray Generation with CRY

CRY is a third party package to simulate cosmic rays. It is documented at https://nuclear.llnl.gov/simulation/

The CosmicsGen module calls the CRYHelper object in the [NuSoft/EventGeneratorBase](https://cdcvs.fnal.gov/redmine/projects/nusoftart/wiki) package. The module also produces several sanity check type histograms that are placed in the output file from the job.

To create a file containing cosmic ray interactions for each event, do

% lar -c job/prodcosmics.fcl

## Neutrino Interaction Generation with GENIE

[GENIE](https://projects.hepforge.org/genie/) is the external neutrino interaction generator we are using to produce neutrinos in the Monte Carlo simulation. The GENIEGen module makes use of the [GENIEHelper](https://cdcvs.fnal.gov/redmine/projects/nusoftart/wiki/GENIEHelper) object in the [NuSoft/EventGeneratorBase](https://cdcvs.fnal.gov/redmine/projects/nusoftart/wiki) package. The module uses GENIEHelper both to determine how many interactions to produce in each spill and to fill the Monte Carlo truth information for the interaction and flux information.

The default behavior is for GENIE to produce events in accordance with a spill intensity of 50e12 POT. If you instead wish to produce a predefined number, *n*, interactions in a spill you have to set the EventsPerSpill parameter to be *n* instead of 0 (the default that signals the use of POT per spill instead).

To create a file containing neutrino interactions for each event, do

% lar -c job/prodgenie.fcl

### Flux files available for use

The following flux files are available for use and are located in the /grid/fermiapp/lbne/lar/aux directory

|            |           |                                                          |                                                               |
|------------|-----------|----------------------------------------------------------|---------------------------------------------------------------|
| Experiment | type      | file name                                                | comments                                                      |
| ArgoNeuT   | histogram | flugg_L010z185i_antineutrino_mode.root                   | anti-neutrino running in NuMI LE beam                         |
|            |           | flugg_L010z185i_neutrino_mode.root                       | neutrino running in NuMI LE beam                              |
|            | simple    | gsimple/gsimple_ArgoNeuT_le010z185i_run3_\*_00001.root | neutrino running in NuMI LE beam, each file is 1.0e8 POT      |
|            |           | gsimple/gsimple_ArgoNeuT_le010z185i_run4_\*_00001.root | anti-neutrino running in NuMI LE beam, each file is 1.0e8 POT |
| MicroBooNE | simple    |                                                          |                                                               |
| LBNE       |           |                                                          |                                                               |

### Standard configurations

The following configurations defined in larsim:source:larsim/EventGenerator/GENIE/genie.fcl are available for use in your fcl job configuration file when generating events with GENIE:

|            |           |                                    |
|------------|-----------|------------------------------------|
| Experiment | Flux Type | Configuration Name                 |
| ArgoNeuT   | histogram | argoneut_genie_hist_neutrino       |
| ArgoNeuT   | histogram | argoneut_genie_hist_antineutrino   |
| ArgoNeuT   | simple    | argoneut_genie_simple_neutrino     |
| ArgoNeuT   | simple    | argoneut_genie_simple_antineutrino |
| MicroBooNE | histogram | microboone_genie_hist              |
| LBNE       | histogram | lbne_genie_hist                    |

The names should be self-explanatory, but look in larsim:source:larsim/EventGenerator/GENIE/genie.fcl for more details. This list will expand over time and one should look at the genie.fcl file for the most up-to-date list.

### Note about Mother and daughters in GENIE and LArSoft

GENIE allows one to follow decayed particles by looking at their Mother or their daughters. Note that when using GENIE, only the Mother is accessible (having both is redundant). However, note that in LArG4, it is NOT the case. In LArG4, both Mother and daughters are accessible.

If you want to trace the Mother of a particle, the value returned will be an integer corresponding to the index of the Mother particle. This index is only an iterator that GENIE uses to list the particles. The primary particles are stored in the collection of [Particle](https://cdcvs.fnal.gov/redmine/projects/larsoftsvn/repository/entry/trunk/Simulation/Particle.h) objects created by LArG4. Those objects have the mother and daughter information available to users.

## Single Particle Generation

The SingleGen module can produce spills with either single particles in them or multiple particles. In either case, the particle species is defined by the list of PDG codes supplied. The initial position, momenta and the spread of momenta and starting positions for the desired particles is specified in the job file. The spread can either be Gaussian or uniformly distributed.

You can make files where each event contains a predetermined set of particles by doing

% lar -c job/prodsingle.fcl

## Light Source Photon Generation

For several applications in optical monte carlo it is necessary to produce a stream of photons from a particular point in the detector. The LightSource event generator simulates placing an extended, isotropic light source at some point within the TPC volume. A typical configuration may be to generate 10,000 photons in one voxel and record the PMT responses, then move the voxel for each subsequent event to scan the PMT responses from light sources at different points in the detector geometry. The LightSource event generator has two modes.

scanmode:  
Take steps in x,y,z through the TPC volume and from each voxel, generate a number N of photons across the voxel, distributed either uniformly or gaussian about a point. Production times and momenta can be sampled randomly and the number of steps in x,y,z can be set by the user.

filemode:  
Read a list of positions, light source extents, times, photon momenta and source intensities from a text file. Each event produces photons corresponding to a light source described by one line in the file.

For both modes, a TTree can optionally be produced, containing the positions and momenta of all photons produced in each event. This TTree will be stored in the histos.root output file.

The parameters for each mode are described in full in the lightsource.fcl file.

# A Word about Co-ordinate Systems

As noted in the discussion on co-ordinate systems on the [Geometry](Geometry_Package) page, the origin is not necessarily located in the center of the upstream end of the TPC.

# List of Parameters

## GENIEGen

|                  |               |                                                                                            |                                                                                                                           |
|------------------|---------------|--------------------------------------------------------------------------------------------|---------------------------------------------------------------------------------------------------------------------------|
| Parameter        | Type          | Default                                                                                    | Description                                                                                                               |
| FluxType         | string        | histogram                                                                                  | type of flux to use mono, histogram, ntuple, or simplentuple                                                              |
| FluxFile         | string        | /grid/fermiapp/lbne/lar/aux/flugg_L010z185i_neutrino_mode.root                             | name of file with fluxes                                                                                                  |
| BeamName         | string        | numi                                                                                       | numi or booster at this point - really for bookkeeping                                                                    |
| TopVolume        | string        | volTPC                                                                                     | volume in which to produce interactions - see gdml file for volume names                                                  |
| TargetA          | double        | 40\.                                                                                       | A of target nucleus…on average                                                                                            |
| EventsPerSpill   | double        | 1\.                                                                                        | set != 0 to get n events per spill                                                                                        |
| POTPerSpill      | double        | 5.e13                                                                                      | should be obvious                                                                                                         |
| MonoEnergy       | double        | 2\.                                                                                        | energy of neutrinos to generate with the mono flux type, in GEV                                                           |
| BeamCenter       | vector double | 0.25, 0., 0.                                                                               | center of the beam in cm relative to detector coordinate origin, in meters for GENIE, used with histogram/mono flux types |
| BeamDirection    | vector double | 0., 0., 1.                                                                                 | direction cosines for beam when using histogram/mono flux types                                                           |
| BeamRadius       | double        | 3\.                                                                                        | radius of beam in meters for GENIE when using histogram/mono flux types                                                   |
| SurroundingMass  | double        | 0.0                                                                                        | mass surrounding the detector to use in calculating event rates with histogram flux type                                  |
| GlobalTimeOffset | double        | 10000\.                                                                                    | in ns - 10000 means the spill appears 10 us into the readout window                                                       |
| RandomTimeOffset | double        | 10000\.                                                                                    | length of spill in ns                                                                                                     |
| ZCutOff          | double        | 0\.                                                                                        | ignore any interactions with z \> than this value beyond the end of the detector                                          |
| GenFlavors       | vector int    | 12, 14                                                                                     | pdg codes of neutrino flavors to make                                                                                     |
| Environment      | vector string | GSPLOAD, /grid/fermiapp/lbne/lar/aux/gxspl-NUMI-R2.6.0.xml, GPRODMODE, YES, GEVGL, Default | GENIE defined environmental variables                                                                                     |
| MixerConfig      | string        | none                                                                                       | can be swap, or fixedfrac; defines how much mixing you want to happen between the neutrino flavors                        |
| MixerBaseline    | double        | 0\.                                                                                        | baseline over which the mixing happens. 0 means it doesn't                                                                |
| DebugFlags       | int           | 0                                                                                          | turn on debugging with 1 - only for mixer                                                                                 |
| RandomSeed       | int           | 0                                                                                          | seed to use, if 0 TRandom3 will pick a seed                                                                               |
| DetectorLocation | string        | MINOS-NearDet                                                                              | location name for flux window                                                                                             |

## CosmicsGen

|                 |        |                    |                                                                            |
|-----------------|--------|--------------------|----------------------------------------------------------------------------|
| Parameter       | Type   | Default            | Description                                                                |
| SampleTime      | double | 60e-6              | integration time in seconds                                                |
| TimeOffset      | double | –30e-6             | time in seconds beofre a spill to begin the interactions                   |
| EnergyThreshold | double | 50.e-3             | in GeV, particles only tracked with E \> threshold                         |
| Latitude        | string | “latitude 41.8 ”   | latitude of detector, must have tailing blank space                        |
| Altitude        | string | “altitude 0 ”      | altitude of detector, must have tailing blank space                        |
| SubBoxLength    | string | “subboxLength 75 ” | length of subbox surrounding detector in m, must have trailing blank space |
| RandomSeed      | int    | 0                  | Random number seed - if set to 0 the system will pick a seed               |

## SingleGen

|              |               |         |                                                            |
|--------------|---------------|---------|------------------------------------------------------------|
| Parameter    | Type          | Default | Description                                                |
| PDG          | vector int    |         | list of PDG codes for particles to simulate                |
| P0           | vector double |         | total momentum for each particle simulated                 |
| SigmaP       | vector double |         | spread in momentum for each particle simulated             |
| PDist        | int           |         | how to distribute the momenta - 0 uniform, 1 gaussian      |
| X0           | vector double |         | initial x position of each particle to simulate            |
| Y0           | vector double |         | initial y position of each particle to simulate            |
| Z0           | vector double |         | initial z position of each particle to simulate            |
| SigmaX       | vector double |         | spread in initial x position of each particle to simulate  |
| SigmaY       | vector double |         | spread in initial y position of each particle to simulate  |
| SigmaZ       | vector double |         | spread in initial z position of each particle to simulate  |
| PosDist      | int           |         | how to distribute the positions - 0 uniform, 1 gaussian    |
| Theta0XZ     | vector double |         | angle in XZ plane for each particle to simulate (degrees)  |
| Theta0YZ     | vector double |         | angle in YZ plane for each particle to simulate (degrees)  |
| SigmaThetaXZ | vector double |         | spread in XZ angle for each particle to simulate (degrees) |
| SigmaThetaYZ | vector double |         | spread in YZ angle for each particle to simulate (degrees) |
| AngleDist    | int           |         | how to distribute the angles - 0 uniform, 1 gaussian       |

No defaults are given for this module as it is completely up to the user to decide which kinds of particles to simulate and how to do the simulation.

# Usage

See the following files for example usage:

-   [larsim/EventGenerator/GENIE/prodgenie.fcl](https://github.com/LArSoft/larsim/blob/220eca2a2e3ea88459e6653fadfb34a82a0c1fc0/larsim/EventGenerator/GENIE/prodgenie.fcl)
-   [larsim/EventGenerator/prodsingle.fcl](https://github.com/LArSoft/larsim/blob/220eca2a2e3ea88459e6653fadfb34a82a0c1fc0/larsim/EventGenerator/prodsingle.fcl)
-   [larsim/EventGenerator/CRY/prodcosmics.fcl](https://github.com/LArSoft/larsim/blob/220eca2a2e3ea88459e6653fadfb34a82a0c1fc0/larsim/EventGenerator/CRY/prodcosmics.fcl)
