# LArSoft V10+ geometry system overview for users and detector geometry developers.


# Goal of this page
This page is for people who need to use or write their own detector geometry. Section 1 describes the overall structure of the geometry system. An overview of the specific classes, identifiers, navigation and iteration tools follows in Sect. 2. (Please refer to the classes themselves for details of the information available from each class.) Sect. 3 then describes the features that allow customization of the geometry for specific LArTPC-based experiments.

# 1. High-level structure of the LArSoft geometry
The existing geometry model is supported by three sub-systems, each with a separate art service / LArSoft service provider:

- The core geometry (geo::GeometryCore), which manages the physical volumes,
- An experiment-customizable readout geometry that uses the core geometry to associate readout concepts (such as “channels”) to geometry objects (such as “wires” or “pixels”).  The readout geometry:
  - is customizable by each experiment (“standard” wire-based readout available)
  - chooses the procedures to sort readout elements (e.g. `geo::WireReadoutSorter`)
  - chooses the implementation of the wire or pixel readout (e.g. `geo::WireReadoutGeom`)
  - maps logical readout channels to and from wires or pixels
  - Provides access to view and signal type of planes for wire readouts
  - Provides the “coordinate” of a point corresponding to the nearest wire or pixel
- An auxiliary geometry (`geo::AuxDetGeometryCore`) that supports geometry elements outside of the cryostats.
For jobs that run in art, a geometry configuration writer service can be enabled that will store the current geometry configuration in run records, so that subsequent jobs can check that the geometry used is the same.
These sub-systems are described in more detail below.

# Core Geometry 

The class that describes the physical geometrical volumes is the geo::GeometryCore provider, which is normally accessed within a framework job through the geo::Geometry service.  (For details on the structure of LArSoft services and providers, see [Here][https://larsoft.github.io/LArSoftWiki/Writing_LArSoft_service).) The `geo::GeometryCore` is not experiment-customizable but is intended to represent the physical volumes common to all LAr TPC detectors supported by LArSoft.  It is responsible for:

* managing the ROOT geometry description and its GDML source
* providing access to the LArSoft description of physical-volume detector components
* facilitating volume-geometry iteration on detector components by type
* maintaining relations between components

As of LArSoft v10, the physical volumes accessible through `geo::GeometryCore` include the cryostats and all TPCs and optical detectors within each cryostat (`geo::CryostatGeo`, `geo::TPCGeo`, and `geo::OpDetGeo`, respectively).

To load the geometry in an art framework job, the following should be part of the configuration:

```
services.Geometry: {
  SortingParameters: { tool_type: MyGeoObjectSorter ... }
  ... 
}
```
## Optical geometry
LArSoft assumes that optical detectors are directly contained by cryostats.  Consequently all optical-geometry information is provided through the `geo::GeometryCore` provider.

# Readout geometry
 Whereas all TPCs contain cathodes and anodes, the manner in which signals are read from the anodes varies.  Because of this variation in readout approaches, as of LArSoft v10, the readout geometry is separated from and layered on top of the main geometry system.  This allows the readout geometry to still be aware of universal LArTPC geometry concepts while supporting the specific readout approach.

LArSoft supports the abstract `geo::WireReadoutGeom` provider, which is enabled in the art framework as the `geo::WireReadout` service.  Experiments inherit from the `geo::WireReadoutGeom` provider to express wire-readout behavior specific to their detector(s).  Like the main geometry system, readout elements may be iterated through using the interface discussed below [LINK TO “Element iteration”].

To use the readout geometry in an art job, users should include the following in their job configuration:
```
services.WireReadout: { 
  service_provider: ExperimentSpecificWireReadout
  SortingParameters: { tool_type: MyWireReadoutSorter ... }
  ... 
}
```
LArSoft will soon support the `geo::PixelReadoutGeom` provider for pixel readouts. 

# Auxiliary geometry

As mentioned [HERE], LArSoft supports an auxiliary geometry system (represented by the  `geo::AuxDetGeometryCore class`) that contains elements not part of the LArTPC cryostats.  When constructing the auxiliary geometry, any elements labeled “volAuxDet” within the GDML file will be represented as `geo::AuxDetGeo` objects and owned by the `geo::AuxDetGeometryCore` instance.  Each of the `geo::AuxDetGeo` objects in turn contain `geo::AuxDetSensitiveGeo` objects, which correspond to volumes within the GDML that are marked sensitive for Geant4’s use.  How these volumes are used is experiment-specific, and users should refer to their experiment’s guidance.  

As of LArSoft v10, the auxiliary geometry is not automatically loaded with the rest of the main geometry system.  To load it in an art framework job, the following should be part of the job configuration:
```
services.AuxDetGeometry: {
  SortingParameters: { tool_type: MyAuxDetSorter ... }
  ReadoutInitializer: { tool_type: MyAuxDetInitializer ... }
  ... 
}
```
Initialization of the auxiliary geometry system is a specialized topic and discussed more fully below [LINK TO “Writing your own auxiliary geometry initializer”].

# Geometry configuration writer

In the context of multi-stage workflow, it is necessary to use the same geometry for each stage.  To help ensure this, there is a dedicated art framework service called `GeometryConfigurationWriter`, which inserts basic metadata about the geometry into each art::Run object.  When encountering a new run, the metadata of the current geometry is checked against any stored metadata from a previous stage.  If an incompatibility is detected, an exception will be thrown by the service, ending the framework job.  To enable this service as part of a framework job, a user should include the following as part of a job configuration:
```
services.GeometryConfigurationWriter: {}
```
# 2. Core Geometry elements

More to come.
