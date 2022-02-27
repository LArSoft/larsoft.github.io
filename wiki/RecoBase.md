

# RecoBase

## <span style="color:#aa5500;">Notice:</span> The content of this page dates from 2014! For more up to date info…

… please see the **Reconstruction** section of http://larsoft.org/important-concepts-in-larsoft/data-products/ — the links work on that page.

## Old wiki page

The maintainer for this package is Brian Rebel.

This package contains all objects that are used as base classes for the reconstruction. That is, it defines the interface for all objects related to a given aspect of the reconstruction. You can find the actual interface following the links in the subheadings below.

The reconstruction objects in this package are hierarchical. The reconstruction algorithms are defined in different packages, one each for each major aspect of the reconstruction. For example, all hit finding algorithms (modules) are located in the HitFinding package. The reconstruction chain is illustrated in the following picture

![reco_chain.png](/assets/img/larsoft/reco_chain.png)

Raw data from every channel is calibrated and turned into recob::Wire objects. The recob::Wire objects are used to find energy depositions localized in time to create recob::Hit objects. The recob::Hit objects are 2D objects knowing only the position information related to the drift time of the deposited energy and which channel in the detector recorded the energy. The recob::Hit objects are collected together in 2D views as recob::Cluster objects. The recob::Cluster objects are then converted to 3D reco::Prong derived objects (either recob::Track or recob::Shower) by matching reco::Cluster objects with compatible end points and directions. The recob::Prong derived objects are collected into recob::Vertex objects defined as the common end points in 3D of multiple recob::Prong objects. Finally, multiple recob::Vertex objects are collected into recob::Event objects. We make use of [](Using_the_Framework#artAssns) data from every channel is calibrated and turned into recob::Wire objects. The recob::Wire objects are used to find energy depositions localized in time to create recob::Hit objects. The recob::Hit objects are 2D objects knowing only the position information related to the drift time of the deposited energy and which channel in the detector recorded the energy. The recob::Hit objects are collected together in 2D views as recob::Cluster objects. The recob::Cluster objects are then converted to 3D reco::Prong derived objects (either recob::Track or recob::Shower) by matching reco::Cluster objects with compatible end points and directions. The recob::Prong derived objects are collected into recob::Vertex objects defined as the common end points in 3D of multiple recob::Prong objects. Finally, multiple recob::Vertex objects are collected into recob::Event objects. We make use of \[\[Using_the_Framework#artAssns\|art::Assns\] to produce connections between objects at each stage of the reconstruction.

## [Wire](https://cdcvs.fnal.gov/redmine/projects/larsoftsvn/repository/entry/trunk/RecoBase/Wire.h)

A calibrated digitization coming out of the TPC.

## [Hit](https://cdcvs.fnal.gov/redmine/projects/larsoftsvn/repository/entry/trunk/RecoBase/Hit.h)

The energy deposition on a single wire localized in time.

## [Cluster](https://cdcvs.fnal.gov/redmine/projects/larsoftsvn/repository/entry/trunk/RecoBase/Cluster.h)

A collection of hits that have been grouped in time and space

## [Prong](https://cdcvs.fnal.gov/redmine/projects/larsoftsvn/repository/entry/trunk/RecoBase/Prong.h)

A collection of clusters that have been determined to be related in time and space.

## [Track](https://cdcvs.fnal.gov/redmine/projects/larsoftsvn/repository/entry/trunk/RecoBase/Track.h)

A prong object determined to be track-like. There is currently no difference between a prong and a track except for the name.

## [Shower](https://cdcvs.fnal.gov/redmine/projects/larsoftsvn/repository/entry/trunk/RecoBase/Shower.h)

A prong object determined to be shower-like. There is currently no difference between a prong and a shower except for the name.

## [Vertex](https://cdcvs.fnal.gov/redmine/projects/larsoftsvn/repository/entry/trunk/RecoBase/Vertex.h)

An object that identifies the origin of multiple prong derived objects. An example of a vertex is the common origin of the two EM showers in a π0 decay or the common origin of a proton and muon in a νμ quasi-elastic interaction.

## [Event](https://cdcvs.fnal.gov/redmine/projects/larsoftsvn/repository/entry/trunk/RecoBase/Event.h)

An object that identifies the primary vertex of an event. More than one vertex objects can be associated with a single event object, as in deep inelastic scattering interactions with multiple π0s as well as charged pions coming from the interaction vertex.

## Ancillary Data Products

### [EndPoint2D](https://cdcvs.fnal.gov/redmine/projects/larsoftsvn/repository/entry/trunk/RecoBase/EndPoint2D.h)

The end point of a group of Cluster object. This data product can be useful for determining where particles interact or decay in the 2D views as well as for matching Clusters from different views.

### [SpacePoint](https://cdcvs.fnal.gov/redmine/projects/larsoftsvn/repository/entry/trunk/RecoBase/SpacePoint.h)

A 3D location in the TPC corresponding to a reconstructed energy deposition. SpacePoints are currently owned by Prong derived objects. Only Track objects have a well defined location for their SpacePoints; SpacePoints owned by Shower objects provide a probable description of where the energy deposition occurred.
