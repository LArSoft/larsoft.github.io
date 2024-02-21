 LArSoft V10+ geometry system overview for users and detector geometry developers.

# Goal of this page
This page is for people who need to use or write their own detector geometry. Section 1 describes the overall structure of the geometry system. An overview of the specific classes, identifiers, navigation and iteration tools follows in Sect. 2. (Please refer to the classes themselves for details of the information available from each class.) Sect. 3 then describes the features that allow customization of the geometry for specific LArTPC-based experiments.

# High-level structure of the LArSoft geometry
The existing geometry model is supported by three sub-systems, each with a separate art service / LArSoft service provider:

- The core geometry (geo::GeometryCore), which manages the physical volumes,
- An experiment-customizable readout geometry that uses the core geometry to associate readout concepts (such as “channels”) to geometry objects (such as “wires” or “pixels”).  The readout geometry:
  - is customizable by each experiment (“standard” wire-based readout available)
  - chooses the procedures to sort readout elements (e.g. geo::WireReadoutSorter)
  - chooses the implementation of the wire or pixel readout (e.g. geo::WireReadoutGeom)
  - maps logical readout channels to and from wires or pixels
  - Provides access to view and signal type of planes for wire readouts
  - Provides the “coordinate” of a point corresponding to the nearest wire or pixel
- An auxiliary geometry (geo::AuxDetGeometryCore) that supports geometry elements outside of the cryostats.
For jobs that run in art, a geometry configuration writer service can be enabled that will store the current geometry configuration in run records, so that subsequent jobs can check that the geometry used is the same.
These sub-systems are described in more detail below.

# Core Geometry 

The class that describes the physical geometrical volumes is the geo::GeometryCore provider, which is normally accessed within a framework job through the geo::Geometry service.  (For details on the structure of LArSoft services and providers, see [HERE].) The geo::GeometryCore is not experiment-customizable but is intended to represent the physical volumes common to all LAr TPC detectors supported by LArSoft.  It is responsible for:


More to come.
