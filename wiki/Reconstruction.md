-   **Table of contents**
-   [Reconstruction](#Reconstruction)
-   [2D Reconstruction](#2D-Reconstruction)
    -   [Calibration](#Calibration)
    -   [Hit Finding](#Hit-Finding)
    -   [Cluster Finding](#Cluster-Finding)
-   [3D Reconstruction](#3D-Reconstruction)
    -   [Track Finding](#Track-Finding)
    -   [Shower Finding](#Shower-Finding)
    -   [Vertex Finding](#Vertex-Finding)
    -   [Event Finding](#Event-Finding)

Reconstruction(#Reconstruction)
==================================

The reconstruction chain is illustrated in the following picture

![](/redmine/attachments/download/31022/reco_chain.png)

The reconstruction has both 2D and 3D portions. That is not to say that the reconstruction has to proceed from building up 2D information before creating 3D information, just that the option to do so exists.

This page is divided into the 2D and 3D portions of the reconstruction. The relevant packages for each step are listed and a link is provided to the documentation for that package.

2D Reconstruction(#2D-Reconstruction)
========================================

Calibration(#Calibration)
----------------------------

The first step in the reconstruction is to calibrate the raw data. The raw data are represented by the raw::RawDigit objects which hold the signal output from the detector on each channel as a function of time into recob::Wire objects. The package containing modules to calibrate the data is [CalData](CalData).

Hit Finding(#Hit-Finding)
----------------------------

The hit finding takes the signal vs time information from a calibrated recob::Wire object and looks for peaks that indicate real energy deposition occurred. The package containing modules to identify recob::Hits on each channel is [HitFinder](HitFinder).

Cluster Finding(#Cluster-Finding)
------------------------------------

The purpose of cluster finding is to identify groups of recob::Hits that are related to each other in both time and space. The package containing modules and algorithms for creating recob::Clusters is [ClusterFinder](ClusterFinder).

3D Reconstruction(#3D-Reconstruction)
========================================

Track Finding(#Track-Finding)
--------------------------------

The purpose of track finding is to identify groups of recob::Hits from multiple views that are related to each other but not electromagnetic shower-like and assign a length and direction to each collection in 3D space. The track finding can either use recob::Clusters from multiple views to build up a recob::Track from 2D information, or attempt to create recob::SpacePoints in 3D to build recob::Tracks. The package containing modules and algorithms to find recob::Tracks is [TrackFinder](TrackFinder).

Shower Finding(#Shower-Finding)
----------------------------------

The purpose of shower finding is to identify groups of recob::Hits from multiple views that are related to each other and are electromagnetic shower-like. The recob::Hits are collected into recob::Shower objects; one could also use recob::SpacePoints to define the recob::Shower. The package containing modules and algorithms to find recob::Showers is [ShowerFinder](ShowerFinder?parent=Reconstruction).

Vertex Finding(#Vertex-Finding)
----------------------------------

Once recob::Showers and recob::Tracks are identified they should be examined to determine which come from common origins. Those common origins are recob::Vertex objects. The package containing modules and algorithms to find recob::Vertex objects is [VertexFinder](VertexFinder).

Event Finding(#Event-Finding)
--------------------------------

Multiple recob::Vertex objects can make up a single interaction in the detector. The object describing a complete interaction is the recob::Event. The package containing modules and algorithms to find recob::Events is [EventFinder](EventFinder?parent=Reconstruction)
