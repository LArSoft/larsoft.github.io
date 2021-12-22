-   **Table of contents**
-   [DetSim](#DetSim)
    -   [Summary](#Summary)
    -   [Module Parameter List](#Module-Parameter-List)
        -   [SimWireXXX](#SimWireXXX)
    -   [Usage](#Usage)
    -   [Technical description](#Technical-description)

DetSim
==================

Author: Brian Rebel,

Summary
--------------------

This package is intended to take sim::Electron objects and use them to determine the electronics output in ADC counts.

-   **Input**: sim::Electron objects
-   **Output**: raw::RawDigit and sim::SimChannel objects

Module Parameter List
------------------------------------------------

### SimWireXXX

These module simulate the readout electronics for the experiment indicated by XXX in the module name. Each experiment is responsible for writing the module to simulate its electronics and for describing the function of that module. The MicroBooNE and LBNE modules make use of the concept of an algorithm to store the response functions for the electronics and that algorithm is called from within the module. This approach is preferred to storing response functions as histograms in a ROOT file that would then have to be distributed in a way other than through svn.

Usage
----------------

Please see documentation for each experimental module.

Technical description
------------------------------------------------

The sim::SimChannels produced in [source:trunk/LArG4/LArVoxelReadout.cxx](/redmine/projects/larsoft/repository/entry/trunk/LArG4/LArVoxelReadout.cxx), the DriftIonizationElectrons method, contain sim::IDE objects that store the time a charge was produced in terms of clock ticks, the location the charge was created, and the number of electrons that were drifted to the wire planes corrected for Birks law. They sim::IDE objects also contain the G4 track ID of the particle creating the energy deposition and the magnitude of the energy deposition before it is converted to ionization electrons. The module takes these sim::SimChannel objects, interprets the information in the sim::IDE objects and finds the total charge in each time bin for each electronics channel. That information is then convoluted with the induction and collection field shapes. The shapes are determined by the product of the electronics response and the field response for each type of plane. The resulting ADC count is then combined with noise to produce a raw::RawDigit.
