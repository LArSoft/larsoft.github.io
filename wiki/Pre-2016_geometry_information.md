-   **Table of contents**
-   [Pre-2016 geometry information](#Pre-2016-geometry-information)
    -   [Gettting the Geometry](#Gettting-the-Geometry)
    -   [Co-ordinate systems](#Co-ordinate-systems)
    -   [Geometry Objects](#Geometry-Objects)
    -   [Code APA Construction (Channels and Wires)](#Code-APA-Construction-Channels-and-Wires)
    -   [Detector Specific Methods (Volume Sorting and Channel Mapping)](#Detector-Specific-Methods-Volume-Sorting-and-Channel-Mapping)
        -   [Standard Configuration: ChannelMapStandardAlg](#Standard-Configuration-ChannelMapStandardAlg)
        -   [APA Configuration: ChannelMapAPAAlg](#APA-Configuration-ChannelMapAPAAlg)
        -   [35t Configuration: ChannelMap35Alg](#35t-Configuration-ChannelMap35Alg)
    -   [Accessing coordinate information](#Accessing-coordinate-information)
    -   [Accessing other detector information](#Accessing-other-detector-information)
    -   [Geometry Volume Hierarchy GDML](#Geometry-Volume-Hierarchy-GDML)
        -   [Geometry Object Hierarchy](#Geometry-Object-Hierarchy)
        -   [Developing Geometry Volume Hierarchy](#Developing-Geometry-Volume-Hierarchy)
    -   [Geometry Test](#Geometry-Test)
-   [MicroBooNE](#MicroBooNE)
    -   [Useful Volumes](#Useful-Volumes)
    -   [Viewing Volumes in ROOT GL Viewer](#Viewing-Volumes-in-ROOT-GL-Viewer)
    -   [TPC and Cryostat specifications](#TPC-and-Cryostat-specifications)

Pre-2016 geometry information
================================================================

Pictures for this information can be found at: [https://cdcvs.fnal.govGeometry/](https://cdcvs.fnal.govGeometry/)

Up to date Geometry information can be found at: [https://cdcvs.fnal.govGeometry\_Package](https://cdcvs.fnal.govGeometry_Package)

The maintainer of this package is Gianluca Petrillo, .

The geometry package contains classes related to the geometry representation. Classes that represent planes, TPCs, cryostats. Geometry service and geometry services provider, Geometry-core, are in the geometry package as well as classes that perform sorting functions for experiments. Also of interest are the [GDML](http://gdml.web.cern.ch/GDML) files.

The key class within the Geometry package is geo::Geometry. This is a general interface into the detector descriptions of the different experiments. It is an [art::ServiceHandle](Using_the_Framework?parent=Pre-2016_geometry_information#artServiceHandle). The idea is that none of the other packages have to explicitly depend on which detector is being considered; the detector-specific information is contained within the Geometry package.

There’s more on [creating GDML](Creating_GDML_) files if you want to adjust or vary the geometry; e.g., for detector-design studies. However, you should **not** alter the number of volumes in the GDML files as that may have undesirable consequences on the running of the code. If you think you need to do that for some reason, please contact Brian Rebel () to see if an alternate solution is possible.

Gettting the Geometry
------------------------------------------------

To get the Geometry provider, put the following line in your module:

`auto const& geom = *(lar::providerFrom<geo::Geometry>());`

To access the information stored in the geometry, use the “-\>” operator, for example,

`unsigned int ntpcs = geom->FindTPCAtPosition(p);`

Co-ordinate systems
--------------------------------------------

For all detectors, the coordinate system of the geometry is defined such that z increases in the direction of beam particles travel (if there is a beam), y increases away from the center of the earth, and x increases so as to make a right handed coordinate system.

Geometry Objects
--------------------------------------

![](LArSoftClasses.png)

GeometryCore service owns a collection of the CryostatGeo objects, and each of those in turn owns a collection of TPCGeo objects. The TPCGeo object owns a collection of PlaneGeo objects. Each PlaneGeo object describes one wire plane in the TPC and owns a collection of WireGeo objects. Each WireGeo object describes one wire in a TPC plane.

Code APA Construction (Channels and Wires)
----------------------------------------------------------------------------------------

Since LArSoft supports only volTPCs within volCryostat to contain wires, the idea of a double-sided, wire-wrapped APA must be created with some arrangement of volTPCs. We cannot ‘construct’ an APA in code with just one TPC, since a single volTPC can only contain a single drift volume, and one APA has two drift volumes associated with it; two volTPCs must be used, no more, no less. An APA in LArSoft geometry is made by taking two identical TPCs which contain a drift volume and three unique wire planes, rotating one, and placing them back to back on the wire sides within the cryostat. Enough space is left between the two sets of wire planes for the steel APA frames and the PDS light guides to be place directly into volCryostat between the wires, as if they were wrapping around.

In a physical DUNE APA, a vertical wires are not wrapped and are therefore trivial to handle, having a one-to-one correspondence with their respective channels. A U or V wire, however, will be anchored to the center-most side of the frame (the top of the frame for lower APAs, and the bottom of the frame for higher APAs) and will wrap around the vertical frame sides until reaching the outermost edge of the APA frame, at which point it will feed into a readout channel. This physical wire is analogous to a channel in LArSoft. In single TPC configurations, physical wires also correspond to a channel, but each channel only corresponds to one physical wire, since readout is along one side and the top. In an APA configuration, a physical wire will face two drift volumes - therefore a channel lives in two volTPCs. This is illustrated in the following 10kt cryostat object hierarchy:

![](CryoHierarchy.png)

A wire in the code can only live in volTPCPlaneXXX, so a code wire object is not sufficient to construct a full APA physical U/V wire, or channel - instead, a collection of wire objects is needed. The mapping between channels and wires, and the convention in numbering/sorting the relevant objects is described in the next section

Detector Specific Methods (Volume Sorting and Channel Mapping)
--------------------------------------------------------------------------------------------------------------------------------

LArSoft was first developed for single TPC configurations, where readout channels and wires had a one-to-one correspondence. DUNE 10kt and 35t geometry, however, as well as any future detectors with a modular APA construction, are more complex and must be treated fundamentally differently. The class for such detector specific methods is [ChannelMapAlg](http://nusoft.fnal.gov/larsoft/doxsvn/html/classgeo_1_1ChannelMapAlg.html). Immediately after the Geometry constructor [loads](http://nusoft.fnal.gov/larsoft/doxsvn/html/classgeo_1_1Geometry.html#a07c9e283d794302070fa0a2053a75bbb) and finds the GDML volumes, it calls a function, [InitializeChannelMap](http://nusoft.fnal.gov/larsoft/doxsvn/html/classgeo_1_1Geometry.html#a07b5aa178e1f67eacce82aa75676d60a), which contains a switch that, depending on the detector ID, inherits detector specific methods to the ChannelMapAlg base class. Any call to such methods should go through the Geometry class, which will then call the respective method from the ChannelMapAlg instance. This is a clean way to prepare LArSoft for any type of new configuration, even past APA configuration. The abstraction of a channel map lives in three methods: Initialize, where the necessary data is saved, and ChannelToWire and PlaneWireToChannel. The volume sorting is implemented in Initialize, but defined with bool compare functions in the geo namespace under the names sort\<volume\>\<configuration\> - for example, sortWireAPA.

### Standard Configuration: [ChannelMapStandardAlg](http://nusoft.fnal.gov/larsoft/doxsvn/html/classgeo_1_1ChannelMapStandardAlg.html)

ArgoNeuT, Bo, and MicroBooNE have what is called standard configuration: a single TPC where the contained wires and channels have a one-to-one correspondence. All of the original methods in LArSoft which are now detector specific have been moved to this class.

### APA Configuration: [ChannelMapAPAAlg](http://nusoft.fnal.gov/larsoft/doxsvn/html/classgeo_1_1ChannelMapAPAAlg.html)

Detailed description of sorting and mapping pending.

### 35t Configuration: [ChannelMap35Alg](http://nusoft.fnal.gov/larsoft/doxsvn/html/classgeo_1_1ChannelMap35Alg.html)

The 35t prototype is so similar to 10kt, that it has been developed in parallel. APAs are identical in 10kt geometry. In 35t geometry, there are 3 different APAs with 2 different drift directions, making for 6 different volTPC\_names. While APAAlg channel mapping may work for 35t, a separate channel mapping has been developed for 35t configuration which is slightly more general, thus allowing more flexibility and safety for the time being. Volume sorting is currently identical to APA configuration.

Accessing coordinate information
----------------------------------------------------------------------

The way to access information about the coordinates for doing reconstruction and simulation tasks is through the `geo::TPCGeo`, `geo::PlaneGeo`, and `geo::WireGeo` objects. The `geo::GeometryCore` object can return a reference to a `geo::TPCGeo` object which in turn can return a reference to a `geo::PlaneGeo` object which can return a reference to a `geo::WireGeo` object.\

      auto const* geom = lar::providerFrom<geo::Geometry>();

      for(geo::TPCGeo const& tpc: geom->IterateTPCs()) {
        auto const planes = tpc.Nplanes();

        // plane 0 is the first induction plane, every plane has a wire 0
        std::array<double, 3> xyz;
        tpc.Plane(0).FirstWire().GetCenter(xyz.data());

        std::vector<double> pitch(planes, 0.);
        for (geo::PlaneID::PlaneID_t p = 1; p < planes; ++p) {
          geo::PlaneGeo const& plane = tpc.Plane(p);
          std::array<double, 3> xyz1;
          plane.FirstWire().GetCenter(xyz1.data());
          pitch[p] = pitch[p-1] + (xyz1[0] - xyz[0]);
          xyz = xyz1;
        } // for planes
      } // for TPCs

\
*(note that there are better ways to find the plane pitch, the best being [asking the TPC](http://nusoft.fnal.gov/larsoft/doxsvn/html/classgeo_1_1TPCGeo.html#a697df19a5c945ce5622c50f80e60fbce) )*\
These objects know how to transform from the world coordinates (origin at the upstream end of the detector, first wire plane, centered vertically in the TPC) to their local coordinates and back again, for example

      auto const* geom = lar::providerFrom<geo::Geometry>();

      double localxyz[3] = {0.};
      double worldxyz[3] = {0.};

      // query cryostat 0, TPC 0, and plane 0 (first induction plane)
      geom->Plane({ 0, 0, 0 }).WorldToLocal(worldxyz, localxyz);

      geom->Plane({ 0, 0, 0 }).LocalToWorld(localxyz, worldxyz);

Accessing other detector information
------------------------------------------------------------------------------

There are many cases where one would like to loop over the number of planes, wires, or channels in a given algorithm. Rather than hard-coding those numbers into the algorithm for a specific detector, it is safer to use the Geometry interface to access them.

To get the number of planes, wires or channels in the geometry do

    unsigned int numtpcs   = geom->NTPC();
    unsigned int numchan   = geom->Nchannels();
    unsigned int numplanes = geom->TPC(nt).Nplanes();          // nt is the TPC number you are interested in
    unsigned int numwires  = geom->TPC(nt).Plane(np).Nwires(); // np is the plane number you are interested in - different planes may have different numbers of wires

Similarly, you may need the physical dimensions of the TPC or cryostat for an algorithm. You can get the dimensions of the TPC by doing

    double width  = 2.*geom->TPC(nt).HalfWidth();  //notice the geometry gives the 1/2 width, so multiply by 2
    double height = 2.*geom->TPC(nt).HalfHeight(); //notice the geometry gives the 1/2 height, so multiply by 2
    double length =    geom->TPC(nt).Length();     //notice the geometry gives the total length
    double planePitch = geom->TPC(nt).PlanePitch();//can actually give this method arguments to specify which planes you want - see Geometry/TPCGeo.h
    double wirePitch = geom->TPC(nt).WirePitch();   //can actually give this method arguments to specify which wires and plane you want - see Geometry/TPCGeo.h

There are many other access methods in Geometry.h, TPCGeo.h PlaneGeo.h and WireGeo.h. If you don’t see what you are looking for, please ask around, it is likely there.

Geometry Volume Hierarchy GDML
------------------------------------------------------------------

### Geometry Object Hierarchy

All volumes in the GDML file are part of a specific hierarchy and need to have a name that follows the following conventions in order for the [source:trunk/Geometry/Geometry.h](/redmine/projects/larsoft/repository/entry/trunk/Geometry/Geometry.h) service to function properly. The volume hierarchy is shown in the following block diagram:

![](geometry_volumes.png)

As seen in the picture, the names of all the volumes have the prefix “vol”. Also, the number in the “()” after the volume names indicates the number of those volumes that can exist in the geometry. For example, there can be only one volWorld volume and one volDetEnclosure volume, which is the hall where the detector resides, but many “(n)” volCryostat volumes in the volDetEnclosure. The “XXX” after some of the volume names indicates that there is freedom to add extra information at the end of the specified name. For example, detector planes with vertical wires could be named “volTPCPlaneVert”, but only the “volTPCPlane” portion of the name is used to indicated to the service that it found a plane volume.

The highest level volume is the volWorld. It contains all elements of the geometry that is to be accounted for in the simulation and should be sized adequately to account for any features of the detector surroundings that are important for the simulation. For example, if there is a huge mass of rock near the detector that could alter the cosmic ray flux from that direction, it should be simulated. The world volume contains the detector enclosure volume, volDetEnclosure. Again, there is only one world volume and only one detector enclosure volume. The volDetEnclosure can contain many volCryostat volumes, which in turn can each contain many volTPC volumes. Each volTPC contains only one volTPCActive, which defines the active volume of liquid argon that is read out by the detector. Any liquid argon that is outside of the drift field would not be part of volTPCActive. Moreover, it is assumed that volTPCActive is simply a volume, ie a box, of liquid argon with no subvolumes in it. The volTPC volume also contains many volTPCPlaneXXX volumes that describe the wire planes. The volTPCPlaneXXX volume contains many volTPCWireXXX volumes that each describe a wire in the detector.

To avoid developing GDML that is incompatible with LArSoft, make sure to use the descending volume hierarchy of volWorld, volDetEnclosure, volCryostat, volTPC, volTPCPlane, volTPCWire. LArSoft requires this hierarchy in order to search for each of these specific volumes. Note that there can (and probably should) be multiple TPC planes and Wires. Make sure to keep these organized within each one’s appropriate level of the volume hierarchy.

Also, problems will be encountered if volumes containing sub-volumes are added to the inside of the TPC, so this must be avoided in LArSoft as well. Remember, though, the one exception to this is any volTPCPlane, which must contains an array of volTPCWire volumes. When LArSoft tries to find wire planes, it will get lost in any other volumes that have sub-volumes to be searched. For example, if one is trying to make a field cage loop within the TPC volume, don’t make a volFieldCageLoop that contains a set of positioned field cage tubes and toroids. Instead, you would need to individually place each part of each loop at the same level as your volTPCPlane volumes.

### Developing Geometry Volume Hierarchy

Here is a sample of a generalized LArSoft detector’s GDML structure definition:

    <structure>
      <volume name="volTPCWire">
        <materialref ref="STEEL_STAINLESS_Fe7Cr2Ni" />
        <solidref ref="TPCWire" />
      </volume>
      <volume name="volTPCPlane">
        <materialref ref="LAr"/>
        <solidref ref="TPCPlane"/>
        <physvol>
          <volumeref ref="volTPCWire"/>
          <position name="posTPCWire1" unit="cm" x="0" y="0" z="kTPCWireZ1"/>
          <rotationref ref="rTPCWire1" />
        </physvol>
        ...
        <physvol>
          <volumeref ref="volTPCWire"/>
          <position name="posTPCWireN" unit="cm" x="0" y="0" z="kTPCWireZN"/>
          <rotationref ref="rTPCWireN" />
        </physvol>
      </volume>
      <volume name="volTPC">
        <materialref ref="LAr" />
        <solidref ref="TPC" />
        <physvol>
          <volumeref ref="volTPCPlane"/>
          <position name="posTPCPlane1" unit="cm" x="kTPCPlaneX1" y="0" z="0"/>
        </physvol>
        ...
        <physvol>
          <volumeref ref="volTPCPlane"/>
          <position name="posTPCPlaneN" unit="cm" x="kTPCPlaneXN" y="0" z="0"/>
          <rotationref ref="rTPCPlaneN" />
        </physvol>
      </volume>
      <volume name="volCryostat">
        <materialref ref="LAr" />
        <solidref ref="Cryostat" />
        <physvol>
          <volumeref ref="volTPC"/>
          <position name="posTPC" unit="cm" x="0" y="0" z="0"/>
        </physvol>
      </volume>
      <volume name="volDetEnclosure">
        <materialref ref="Air"/>
        <solidref ref="DetEnclosure"/>
        <physvol>
          <volumeref ref="volCryostat"/>
          <position name="posCryostat" unit="cm" x="0" y="0" z="0"/>
        </physvol>
      </volume>
      <volume name="volWorld" >
        <materialref ref="Air"/>
        <solidref ref="World"/>
        <physvol>
          <volumeref ref="volDetEnclosure"/>
          <position name="posDetEnclosure" unit="cm" x="kTPCWidth/2" y="0" z="kTPCLength/2"/>
        </physvol>
    </structure>

Geometry Test
--------------------------------

If developing a new geometry, it may be helpful to use geometry test tool before trying to run Monte Carlo with LArSoft. The geometry test can be accessed in the Geometry/test/ directory by

    > cd Geometry/test/ > ./testgeo.csh xxxx

where xxxx is the name of the detector you want to test

or alternatively by

    > cd Geometry/test/ > ./testgeo.pl xxxx

Note that DUNE has two distinct detector names.

MicroBooNE
==========================

Useful Volumes
----------------------------------

When running simulation, one can use the following volumes:

    volWorld    Includes surrounding cement, 10 foot dirt overburden, surrounding dirt.

![](volWorld.png)

    volDetEnclosure    Includes everything inside of detector enclosure---not including the cement or overburden.     Currently, this is a cylindrical chamber with radius=48'8" and height=25'6" that contains     only air and volCryostat.

    volCryostat    Includes PMTs, contents of volTPC, cryostat shell.

![](volCryostat.png)

    volTPC    Includes field cage, wire planes, cathode, top ground plate.

![](volTPC.png)

Viewing Volumes in ROOT GL Viewer
------------------------------------------------------------------------

The volumes listed can be viewed in the figures below. If you would like to view these manually, on your larsoft gpvm node you can:

      > cd Geometry/gdml/
      > root -l microboone_geo.C

and then in ROOT, with desired volume name,

      ] gGeoManager->FindVolumeFast("<volume_name>")->Draw("ogl")

Clicking and dragging one’s cursor on the viewer screen allows for rotation. Using a scroll pad or wheel allows for zoom in and out capabilities. Clicking on the viewer screen and using arrow keys allows for motion the volume within your screen’s plane.

Additional useful functions are located in the tabs to the left of the viewer. Some examples: under “Clipping”, one can open the object to look inside, and under “Guides”, one can set axes.

TPC and Cryostat specifications
--------------------------------------------------------------------

![](volTPC_xy.png)

![](volTPC_yz.png)

Our coordinate system is defined from the front edge of volTPC (see “origin of volWorld” in the volTPC figure). The block of liquid argon volume that is contained by the field cage, the anode plane and the innermost wire plane of the TPC are defined by its edges as marked by the dotted blue line in the above visuals. This block of argon will be denoted as the “chamber” in the following specifications:

    Chamber dimensions (cm):    x  =  249.925    y  =  205.4    z  =  1025.4

    Chamber in volWorld (simulation) coordinates (cm):    x  =  2.97500000000001  to      x  =  252.9    y  =  -102.7            to      y  =  102.7    z  =  87.3          to      z  =  1112.7

    Chamber in volTPC* coordinates (cm):    x  =  -127.025      to      x  =  122.9    y  =  -102.7        to      y  =  102.7    z  =  -512.7        to      z  =  512.7

    Chamber Volume  =  52.638493713 m^3  Chamber Mass    =  73693.8911982 kg

    LAr mass in volCryostat       =  225 226 kg    Total  volCryostat mass      =  261 012 kg    Non-LAr volCryostat mass       =   35 785.2 kg

    LAr mass in volTPC               =  112 933 kg    Total volTPC mass            =  115 150 kg    Non-LAr volTPC mass            =    2 217.69 kg

    Total wires in Y Plane        =  3457 wires  Total wires in each UV Plane  =  2400 wires

\*The center of the TPC is a transformation of +TPCLength/2 in the z-direction and +TPCDepth/2 in the x-direction. Current values (cm): TPCLength = 1200, TPCDepth = 256.
