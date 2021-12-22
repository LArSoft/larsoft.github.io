-   **Table of contents**
-   [LArG4](#LArG4)
    -   [Using Custom Physics Modules:](#Using-Custom-Physics-Modules)
    -   [Optical Physics in LArG4](#Optical-Physics-in-LArG4)

LArG4(#LArG4)
================

The maintainer of this package is Brian Rebel ().

The purpose of this package is to model the detector response to a primary event using the [Geant4](http://geant4.web.cern.ch/geant4/) toolkit. The main module within this package is also called LArG4.

There’s documentation within the README file inside the package, but here’s the basic command:

lar -c job/larg4.fcl

There need not be larg4.fcl; in fact, you’ll probably want to copy and edit that file if you’re developing a simulation/analysis chain. The prod\*.fcl files described in the [EventGenerator](EventGenerator) documentation already include the statements to run LArG4 simulation after the events are generated.

The \$SRT\_PUBLIC\_CONTEXT/LArG4/mac/LArG4.mac controls various aspects of the interaction with Geant4.

If you want to change the output of the simulation, start with these files and read the comments. You can copy these files into your own area to edit the parameters; e.g.,

% cp \$SRT\_PUBLIC\_CONTEXT/job/prodgenie.fcl \<my-working-directory\>

Using Custom Physics Modules:(#Using-Custom-Physics-Modules)
---------------------------------------------------------------

LArG4 now contains a configurable physics list which allows the user to enable or disable physical processes used in the GEANT4 simulation. To control which G4PhysicsConstructors are loaded, set the following two parameters for the LArG4Parameters service, eg:

    UseCustomPhysics         = larg4.bool(False),

    EnabledPhysics           = larg4.vstring( 'Em' 'Optical' 'SynchotronAndGN' 'Ion' 'Hadron' 'Decay' 'HadronElastic' 'Stopping' 'NeutronTrackingCut')

The default list of physics processes, as included in the QGSP\_BERT physics list (the previous default before the list was configurable), are:

    "Em" "SynchotronAndGN" "Decay" "Hadron" "HadronElastic" "Stopping" "Ion" "NeutronTrackingCut"

To create a new physics constructor, create a class which inherits from G4VPhysicsConstructor, providing the necessary ConstructParticle and ConstructProcess methods (see a pre-existing GEANT4 physics constructor for an example). Then register the object in the physics list at compile time by including the following line at the top of the .cxx file for the object:

     CustomPhysicsFactory<Object> arbitrary_factory_name("ObjectName");

Where Object is the name of the object inherriting from G4VPhysicsConstructor, arbitrary\_factory\_name is an irrelevant label for the object which registers the new physics constructor and ObjectName is the string which will be used in the job control file to enable the physics processes.

The default constructors loaded in the QGSP\_BERT physics list are all registered in the CustomPhysicsBuiltIns.hh and CustomPhysicsBuiltIns.cxx files. Under no circumstances should new modules be registered this way - this file just provides wrappers for the default GEANT4 objects. To register a new physics constructor, use the method described above.

Optical Physics in LArG4(#Optical-Physics-in-LArG4)
------------------------------------------------------

A PMT Sensitive detector will be associated with any volume in the geometry which has logical volume named “PMTSensitive”. This volume name (or any volume name with this as a substring) should not be used for any volume which does not represent the sensitive lens of a photomultiplier tube.

Photons stepping into a volume with this name will be stopped and killed, and their positions and momenta will be used to fill PMTHits which will be stored in the event. One physical volume generates one PMTHit - this corresponds to one hit per PMT lens per event. Subsequent modules in the simulation will use these PMTHits to generate a PMT response signal.

The PMTHit object, the PMTPhoton objects which it is filled with and the PMTHitCollection are all part of the simulation package, and headers for all of the above can be found in the file Simulation/PMTHit.h
