-   **Table of contents**
-   [Backtracking the simulation](#Backtracking-the-simulation)
    -   [Hierarchy of data objects relating to the simulation](#Hierarchy-of-data-objects-relating-to-the-simulation)
    -   [MCCheater](#MCCheater)
        -   [Use cases for the MCCheater](#Use-cases-for-the-MCCheater)
        -   [source:trunk/MCCheater/BackTracker.h](#sourcetrunkMCCheaterBackTrackerh)
        -   [source:trunk/ClusterFinder/ClusterCheater_module.cc](#sourcetrunkClusterFinderClusterCheater_modulecc)
        -   [source:trunk/TrackFinder/TrackCheater_module.cc and source:trunk/ShowerFinder/ShowerCheater_module.cc](#sourcetrunkTrackFinderTrackCheater_modulecc-and-sourcetrunkShowerFinderShowerCheater_modulecc)
        -   [source:trunk/VertexFinder/VertexCheater_module.cc](#sourcetrunkVertexFinderVertexCheater_modulecc)
        -   [source:trunk/EventFinder/EventCheater_module.cc](#sourcetrunkEventFinderEventCheater_modulecc)
        -   [source:trunk/MCCheater/RecoCheckAna_module.cc](#sourcetrunkMCCheaterRecoCheckAna_modulecc)
        -   [Using the MCCheater](#Using-the-MCCheater)

Backtracking the simulation
============================================================

The maintainer of this package is Brian Rebel ().

*Note:* Code is always under development, and it may be that the code fragments shown here will become obsolete over time. As always, your best bet is to look at the source for the correct classes and methods to use.

Hierarchy of data objects relating to the simulation
--------------------------------------------------------------------------------------------------------------

In the LArSoft simulation, there is a natural “hierarchy” of classes from incoming particle through to the signal in the detector:

-   `sim::ParticleList` - the primary and second particles for one event, as modeled by the detector simulation \* `sim::IDE` - holds information about the Geant4 track ID as well as the total number of ionization electrons produced that correspond to a given tdc value for a SimChannel and the weighted average position where the ionization electrons were produced \* `sim::SimChannel` - holds collection of `sim::Electrons` that contribute to the signal on a given channel \* `raw::RawDigit` - the raw signal received on a wire in response to the electron clusters in `sim::SimChannel` \* `recob::Hit` - a reconstructed energy deposition from a `recob::Wire`

At each stage, it’s possible to “backtrack” through the simulation classes to find out, e.g., which energy depositions contributed to a given digit. However, it’s not presently possible to “forward-track” through the classes to find out, e.g., which digit is associated with a given energy deposition.

MCCheater
------------------------

The maintainer of this package is Brian Rebel,

The MCCheater package is a collection of modules and objects that allow one to associate reconstructed objects made from Monte Carlo simulation with the particle(s) producing the ionization electrons that were turned into signals.

### Use cases for the MCCheater

There are a few use cases imagined for the MCCheater package:

1.  Facilitate algorithm development for higher level reconstruction objects where algorithms for the lower level objects do not yet exist. Using the MCCheater allows one to have a collection of the necessary lower level objects with which to test the new algorithms.
2.  Test efficiency of reconstruction algorithms - the MCCheater provides a baseline for evaluating how well an algorithm performs as the cheated reconstruction is perfect.

### [source:trunk/MCCheater/BackTracker.h](/redmine/projects/larsoft/repository/entry/trunk/MCCheater/BackTracker.h)

This is a service that provides access to many aspects of the simulation. Please take a look at the linked header file in the heading to this subsection of the page. Note that you can get the list of all particles tracked by Geant4 using the cheat::BackTracker::ParticleList() method. You can also access the sim::IDE objects to determine the energy deposition and number of electrons ionized by each particle using the G4 track ID.

The recob::Hits are associated to the sim::IDEs owned by a sim::SimChannel by using the identified tdc boundaries of the hit. The information about which Geant4 track ID produced an energy deposition as well as how many ionization electrons it corresponds to and the signal weighted location of the energy deposition for the hit are contained in the sim::IDE objects.

The TrackID structure is defined to contain an int, which is the track ID of a particle in the Geant simulation, and a float, which is the fraction of the total energy of a hit that is represented by that track ID. The energy fraction value can be used to determine which Eve particle a hit should be associated with in the case where multiple particles contribute to a single reconstructed hit.

Typically one would use only the `BackTracker::HitToEveID` and `BackTracker::HitToXYZ` methods to group hits that are associated with a single Eve particle together and determine the locations of the energy depositions. Those groups of hits can then be associated into recob::Clusters, recob::Prongs, etc.

An example of how to use these methods can be found in [source:trunk/MCCheater/CheckBackTracking.cxx](/redmine/projects/larsoft/repository/entry/trunk/MCCheater/CheckBackTracking.cxx).

### [source:trunk/ClusterFinder/ClusterCheater_module.cc](/redmine/projects/larsoft/repository/entry/trunk/ClusterFinder/ClusterCheater_module.cc)

This module produces recob::Cluster objects from previously reconstructed recob::Hit objects. The fID data member for the clusters encodes the Eve particle track ID from LArG4 along with the plane number from which the recob::Hits originate:
`ID = (Eve track ID)*1000 + (plane number)`.

### [source:trunk/TrackFinder/TrackCheater_module.cc](/redmine/projects/larsoft/repository/entry/trunk/TrackFinder/TrackCheater_module.cc) and [source:trunk/ShowerFinder/ShowerCheater_module.cc](/redmine/projects/larsoft/repository/entry/trunk/ShowerFinder/ShowerCheater_module.cc)

These modules produce recob::Track and recob::Shower objects using the cheated recob::Cluster objects. It groups the recob::Clusters from each Eve particle into recob::Prong derived objects. The ID of the created objects is the track ID of the Eve particle from LArG4.

Each recob::Prong object must take a collection of recob::SpacePoints in its constructor. Those recob::SpacePoints are created using the cheat::BackTracker::HitToXYZ method to determine the true position of the energy deposition. The ID of the recob::SpacePoints is encoded as
`ID = (Eve track ID)*10000 + (index of hit in cluster)`
The recob::SpacePoints take only one recob::Hit in their constructor as this is perfect reconstruction.

### [source:trunk/VertexFinder/VertexCheater_module.cc](/redmine/projects/larsoft/repository/entry/trunk/VertexFinder/VertexCheater_module.cc)

This module produces recob::Vertex objects using the cheated recob::Prong derived objects. The ID of the recob::Vertex object is the Eve particle track ID from LArG4.

### [source:trunk/EventFinder/EventCheater_module.cc](/redmine/projects/larsoft/repository/entry/trunk/EventFinder/EventCheater_module.cc)

This module produces recob::Event objects using the cheated recob::Vertex object. The ID of the recob::Event object is the art::ProductID of the MCTruth object corresponding to this event.

### [source:trunk/MCCheater/RecoCheckAna_module.cc](/redmine/projects/larsoft/repository/entry/trunk/MCCheater/RecoCheckAna_module.cc)

This module makes use of the `BackTracker::HitCollectionPurity` and `BackTracker::HitCollectionEfficiency` methods to check the performance of the reconstruction for any type of RecoBase object. It can be configured to test any of the RecoBase objects, ie Clusters, Tracks, Showers, Vertices, and Events. The module produces output histograms for the efficiency and purity of each type of object tested.

### Using the MCCheater

To run a job to produce cheater reconstruction, do

`lar -c cheaterreco.fcl xxx.root`

where xxx.root is the name of the input MC file you want to do a cheater reconstruction on and [source:/trunk/MCCheater/cheaterreco.fcl](/redmine/projects/larsoft/repository/entry/trunk/MCCheater/cheaterreco.fcl) is a .fcl that does only cheater reconstruction.

The cheaterreco.fcl files also uses the RecoCheckAna module to verify the performance of the cheating. You can refer it as an example of how to add the RecoCheckAna module to your job. The steps are as follows:

Include the parameter set definitions for the MCCheater modules

    #include "mccheatermodules.fcl" 

Then in the physics block

    analyzers:
    {
    check: @local::standard_recocheck
    }

and

    ana:   [ check ]

Then make sure to add the ana path to your end_paths list,

    end_paths:      [ ana, stream1   ]
