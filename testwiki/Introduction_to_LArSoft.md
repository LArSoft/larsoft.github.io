# Introduction to LArSoft

LArSoft is both a project/collaboration and a body of code.

-   The project/collaboration provides an integrated, art-based, experiment-agnostic set of software tools for LAr neutrino experiments to perform simulation, reconstruction and analysis. The core LArSoft (“project”) team maintains infrastructure, architecture, interfaces, coordination, code management and distribution. Experiment partners provide technical requirements, development effort and coordination, required experiment-specific plug-ins and configuration.
-   The LArSoft software (the body of code) is designed to work for all planned and running liquid argon experiments at Fermilab. It is written in C and built on the [ROOT](http://root.cern.ch) data analysis software and the [art](https://cdcvs.fnal.gov/redmine/projects/art) analysis framework supported by the Fermilab Scientific Computing Division for intensity frontier experiments. LArSoft uses git / mrb / ups. The core LArSoft code includes:
    -   A set of experiment-independent “detector interfaces” capable of representing the geometry, detector response, and material properties of the relevant LAr detectors to the reconstruction and simulation
    -   The data structures (art “data products”) that represent the input data to, and the output objects from the various reconstruction and simulation algorithms
    -   The reconstruction algorithms that rely only on the detector interfaces and input data products to extract the physics content from event data
    -   The simulation algorithms that rely only on the detector interfaces and input data products to produce simulated data
    -   The interfaces to any experiment-specific software plug-ins that are needed by the reconstruction or simulation
    -   Detector-independent visualization

The role of the experiments is to define the requirements, schedules and priorities. Experiment responsibilities include providing effort to develop core LArSoft software, contributing effort to coordinate at the implementation level (code), and being solely responsible for experiment-specific software interfacing to LArSoft.

A good place to start is at https://larsoft.org or https://larsoft.org/training/
