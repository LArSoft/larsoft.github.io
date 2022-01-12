-   **Table of contents**
-   [Package Documentation](#Package-Documentation)
    -   [LArSoft Packages](#LArSoft-Packages)
    -   [Other packages](#Other-packages)
        -   [nutools](#nutools)
        -   [ART](#ART)
        -   [Pandora](#Pandora)
        -   [External packages](#External-packages)
    -   [Units](#Units)

Package Documentation
================================================

This is the complete list of packages. Each has a short description, and each has a link to the package’s full documentation.

-   **Developers:** when you add a package to the LArSoft build, **document it** here! Follow the examples, or start with the wiki source from this [template documentation page](YourPackageName).

Some definitions:

1.  A **package** is a collection of related code under a single directory in the LArSoft offline release.
2.  A **module** is the named item that performs an algorithm and makes up an element of your job. A job is a sequence of modules.

A **package** usually provides any number of **modules** that performs similar tasks, ie hit finding, but some packages provide no modules (*e.g.*, `Utilities`) and some provide multiple modules (*e.g.*, `ClusterFinder`). A **package** is a code organizational unit, and a **module** is a runtime (job sequence) unit.

**Categories**. The categories below give a general sense of what sort of services each package provides.

-   **Reconstruction**: modules for event reconstruction, please see the [RecoBase](RecoBase) page for an overview of the reconstruction
-   **Simulation**: modules for the simulation chain, please see the [Simulation](Simulation) page for an overview of the simulation
-   **Utility**: no run time modules; provides services, classes or methods that are used by other packages

LArSoft Packages
--------------------------------------

This is a (still-evolving) description of the packages within the LArSoft “distribution” that are unique to LArSoft.

The source code for all packages can be browsed using [Doxygen](http://nusoft.fnal.gov/larsoft/doxsvn/html/index.html).

For convenience, there’s a list of which namespace corresponds to which package in the table below.

|Package|Namespace|Category|Short description|
|:------|:--------|:-------|:----------------|
|[RecoBase](RecoBase)|`recob::`|Reconstruction|Classes for reconstruction objects (Wires, Hits, Clusters, …)|
|[AnalysisBase](AnalysisBase?parent=Package_Documentation)|`anab::`|Reconstruction|Classes for final-stage reconstruction physics objects (particles, shower energy, …)|
|[CalData](CalData)|`caldata::`|Reconstruction|Applies basic channel-level calibrations, turning RawDigits into Wires|
|[Calorimetry](Calorimetry?parent=Package_Documentation)|`calo::`|Reconstruction|Calorimetric reconstruction of 3D tracks|
|[ClusterFinder](ClusterFinder)|`cluster::`|Reconstruction|Groups hits into collections that are correlated in space and time|
|[EventFinder](EventFinder?parent=Package_Documentation)|`event::`|Reconstruction|Group Vertex objects into reconstructed Event objects|
|[HitFinder](HitFinder)|`hit::`|Reconstruction|Localizes energy deposition in time on each channel|
|[ShowerFinder](ShowerFinder?parent=Package_Documentation)|`shwf::`|Reconstruction|Build showers out of clusters|
|[TrackFinder](TrackFinder)|`trkf::`|Reconstruction|Build tracks out of clusters|
|[VertexFinder](VertexFinder)|`vertex::`|Reconstruction|Identify vertices|
|[Simulation](Simulation)|`sim::`|Simulation|Classes related to the simulation|
|[EventGenerator](EventGenerator)|`evgen::`|Simulation|The primary interface to all event generation routines (GENIE, CRY, single particle)|
|[DetSim](DetSim)|`detsim::`|Simulation|Simulates the electronics response of a TPC|
|[LArG4](LArG4)|`larg4::`|Simulation|Geant4 interface classes|
|[PhotonProgatation](PhotonProgatation?parent=Package_Documentation)|`phot::`|Simulation|Creates a library for fast simulation of optical photons in [LArG4](LArG4)|
|[OpticalDetector](OpticalDetector?parent=Package_Documentation)|`opdet::`|Simulation|Algorithms for simulating the operation of the ADCs and FEMs associated with the PMTs|
|[OpticalDetectorData](OpticalDetectorData)|`optdata::`|Simulation|Data classes for passing event information between the OpticalDetector modules|
|[MCCheater](Backtracking_the_simulation)|`cheat::`|Simulation|Classes for producing perfect reconstruction and associating reconstruction to MC truth|
|[EventDisplay](EventDisplay)|`evd::`|Utility|The event display|
|[Filters](Filters?parent=Package_Documentation)|`filt::`|Utility|User-defined filters for culling un-desired events from your job/output|
|[Geometry](Geometry)|`geo::`|Utility|Provides Geometry service that knows all about the LAr geometries|
|[RawData](RawData)|`raw::`|Utility|Classes relating to raw data storage|
|[Utilities](Utilities)|`util::`|Utility|Includes code to do FFT on RawData, find LAr parameters, etc|
|[AnalysisExample](_AnalysisExample_)|`lar::example`|Instructional|Start here for LArSoft coding basics|

Other packages
----------------------------------

LArSoft depends on several other packages. The list below is not exhaustive; it focuses on packages and namespaces that are most likely to be seen in LArSoft source code.

### nutools

[nutools](https://cdcvs.fnal.gov/redmine/projects/nusoft/repository/show/nutools) are packages shared by LArSoft and other neutrino experiments at Fermilab, including [nova](http://www-nova.fnal.gov/) and [mu2e](http://mu2e.fnal.gov/). The header files can be found in `$NUTOOLS_INC`.

|Package|Namespace|Short description|
|:------|:--------|:----------------|
|EventDisplayBase|`evdb::`|Common tools and widgets for the event display|
|EventGeneratorBase|`evgb::`|Common tools for the event generator, including [GENIE](http://www.genie-mc.org/).|
|SimulationBase|`simb::`|Base classes for truth and simulated particles|
|G4Base|`g4b::`|Common classes for Geant4 simulation|

### ART

[ART](https://cdcvs.fnal.gov/redmine/projects/art/wiki) is the software framework used by LArSoft. It’s maintained by the Fermilab computing division.

|Package|Namespace|Short description|Location of headers|
|:------|:--------|:----------------|:------------------|
|ART|`art::`|Framework classes that handle I/O|`$ART_INC/art`|
|[cetlib](https://cdcvs.fnal.gov/redmine/projects/cetlib/wiki)|`cetlib::`|Utility programming components, e.g., pointers and memory management|`$CETLIB_INC/cetlib`|
|[FHICL](https://cdcvs.fnal.gov/redmine/projects/fhicl/documents)|`fhicl::`|Fermilab Hierarchical Configuration Language, used to configure jobs|`$FHICLCPP_INC/fhiclcpp`|
|[messagefacility](https://cdcvs.fnal.gov/redmine/projects/messagefacility/wiki/Tutorial_for_MessageFacility_v12_Configuration)|`mf::`|Controls the display of messages as a job runs|`$MESSAGEFACILITY_INC/messagefacility`|

### Pandora

The [Pandora](Pandora?parent=Package_Documentation) Software Development Kit provides a set of pattern recognition algorithms for use in LAr neutrino detectors.
Work is currently in progress to integrate these into the LArSoft framework.

### External packages

These are package written and maintained by the general physics and computing communities.

Package

Namespace

Short description

Location of headers

[C++](http://www.cplusplus.com/reference/)

`std::`

Extensions to base C++ that are part of the standard language

[ROOT](https://root.cern.ch)

See below

Data-analysis tools

`$ROOT_INC`

[CLHEP](http://proj-clhep.web.cern.ch/proj-clhep/)

`CLHEP::`

Class Library for High-Energy Physics

`$CLHEP_INC/CLHEP`

[Geant4](http://geant4.web.cern.ch/geant4/)

See below

Detector simulations

`$G4INCLUDE`

[GENIE](http://www.genie-mc.org/)

`genie::`

Neutrino Monte-Carlo Generator

`$GENIE_INC/GENIE`

[boost](http://www.boost.org/)

`boost::`

General programming tools for C++

`$BOOST_INC/boost`

ROOT and Geant4 do not use namespaces. In general, ROOT classes begin with “T” (e.g., [TTree](http://root.cern.ch/root/html522/TTree.html), [TH1](http://root.cern.ch/root/html522/TH1.html)) while [Geant4 classes](http://geant4www.triumf.ca/lxr/) begin with “G4” (e.g., [G4Track](http://geant4www.triumf.ca/lxr/source//track/include/G4Track.hh), [G4Step](http://geant4www.triumf.ca/lxr/source//track/include/G4Step.hh)). Exception: Some of the newer ROOT sub-packages have namespaces (such as `ROOT::Math::`, `ROOT::Fit::`, `ROOT::Minuit2::`, `Reflex::`, `TMVA::`).

Some of these packages duplicate functionality; e.g., 4-vectors are implemented in both [ROOT](http://root.cern.ch/root/html522/TLorentzVector.html) and [CLHEP](http://proj-clhep.web.cern.ch/proj-clhep/doc/CLHEP_2_1_2_2/doxygen/html/LorentzVector_8h.html). Given a choice, use a package that’s higher in the above tables over one that’s lower; e.g., choose ROOT classes over their CLHEP equivalents.

Units
----------------

To establish some standard, especially for values stored in ROOT files and N-tuples:

-   distances are in centimeters (cm); \* energies are in GeV; \* time is in nanoseconds (ns); \* masses are in grams (g).
