LArSoft repositories packages and dependencies(#LArSoft-repositories-packages-and-dependencies)
==================================================================================================

-   **Table of contents**
-   [LArSoft repositories packages and dependencies](#LArSoft-repositories-packages-and-dependencies)
    -   [larcore](#larcore)
    -   [lardata -\> larcore](#lardata-gt-larcore)
    -   [larevt -\> lardata -\> larcore](#larevt-gt-lardata-gt-larcore)
    -   [larsim -\> larevt -\> lardata -\> larcore](#larsim-gt-larevt-gt-lardata-gt-larcore)
    -   [larreco -\> larsim -\> larevt -\> lardata -\> larcore](#larreco-gt-larsim-gt-larevt-gt-lardata-gt-larcore)
    -   [larana -\> larreco -\> larsim -\> larevt -\> lardata -\> larcore](#larana-gt-larreco-gt-larsim-gt-larevt-gt-lardata-gt-larcore)
    -   [larpandora -\> larsim -\> larevt -\> lardata -\> larcore](#larpandora-gt-larsim-gt-larevt-gt-lardata-gt-larcore)
    -   [lareventdisplay -\> larsim -\> larevt -\> lardata -\> larcore](#lareventdisplay-gt-larsim-gt-larevt-gt-lardata-gt-larcore)
    -   [larexamples -\> larsim -\> larevt -\> lardata -\> larcore](#larexamples-gt-larsim-gt-larevt-gt-lardata-gt-larcore)
    -   [lardataalg -\> lardataobj -\> larcorealg -\> larcoreobj -\> canvas](#lardataalg-gt-lardataobj-gt-larcorealg-gt-larcoreobj-gt-canvas)
    -   [larsoft\_data](#larsoft_data)
    -   [larsoft](#larsoft)

The following is a list of the repositories/ups products that are in core LArSoft. The bullets show the corresponding SoftRelTools “packages” that are in each. The dependencies (approximate) area shown as arrows.

There are three types of repositories:

1.  framework-dependent - depends on *art* and directly and indirectly on other things.
2.  framework-independent - sometimes referred to as shared repositories in the context of LArLite because they are shared directly between external frameworks and LArSoft. They are designed to have minimal dependencies.
3.  product-interface - provides direct access to a particular package (such as Pandora or LArWireCell) without making any other part of LArSoft dependent on them.\
    The second and third type will be explicitly identified below.

With the addition of framework-independent repositories, there is now a dependency on the new repositories as shown in the following diagram:\


    laccoreobj      larcore
           ^       /    ^
           |      /     |
           |     v      |
    laracorealg     lardata
           ^         /  ^
           |        /   |
           |       /    |
    lardataobj    / larevt
           ^     /      ^
           |    /       |
           |   v        |
    laradataalg     larsim

larcore(#larcore) {.wiki-class-count}
--------------------

-   Geometry (no LarSoft dependencies)
-   SummaryData (no LarSoft dependencies)
-   SimpleTypesAndConstants (no LarSoft dependencies)

lardata -\> larcore(#lardata-gt-larcore) {.wiki-class-count}
-------------------------------------------

-   AnalysisBase (depends on RecoBase)
-   Utilities (depends on RecoBase and Geometry)
-   RawData (depends on SummaryData)
-   RecoBase (depends on RawData)
-   RecoObjects (depends on AnalysisAlg, Geometry, RecoBase, and Utilities)
-   AnalysisAlg (depends on AnalysisBase, RecoBase, and Utilities)
-   OpticalDetectorData (no LarSoft dependencies)

larevt -\> lardata -\> larcore(#larevt-gt-lardata-gt-larcore) {.wiki-class-count}
----------------------------------------------------------------

-   Filters (depends on RecoBase, Geometry, and Utilities)

> -   (do not build Filters/ShowerSelectorFilter\_module.cc since this depends on RecoAlg and needs to be moved)

-   CalData (depends on Filters, RawData, RecoBase, and Utilities)

larsim -\> larevt -\> lardata -\> larcore(#larsim-gt-larevt-gt-lardata-gt-larcore) {.wiki-class-count}
-------------------------------------------------------------------------------------

-   Simulation (depends on Utilities)
-   DetSim (depends on Simulation, Filters, RawData,and Geometry)
-   LArG4 (depends on PhotonPropagation, Simulation, Geometry, and Utilities)
-   MCCheater (depends on Simulation, RecoBase,and Geometry)
-   PhotonPropagation (depends on Simulation, Filters, RawData,and Geometry)
-   TriggerAlgo (no LarSoft dependencies)
-   EventGenerator ( depends on PhotonPropagation, Simulation, SummaryData, and Geometry)

larreco -\> larsim -\> larevt -\> lardata -\> larcore(#larreco-gt-larsim-gt-larevt-gt-lardata-gt-larcore) {.wiki-class-count}
------------------------------------------------------------------------------------------------------------

-   ClusterFinder (depends on RecoAlg, MCCheater, Filters, RecoBase,and Geometry)
-   EventFinder (depends on RecoBase and Geometry)
-   Genfit (no LarSoft dependencies)
-   HitFinder (depends on MCCheater, Simulation, Utilities, RecoBase, and Geometry)
-   ShowerFinder (depends on MCCheater, Simulation, Utilities, RecoBase, AnalysisBase, and Geometry)
-   TrackFinder (depends on RecoAlg, Genfit, Simulation, RecoObjects, AnalysisAlg, AnalysisBase, RecoBase,and Geometry)
-   VertexFinder (depends on MCCheater, Filters, Simulation, Utilities, RecoBase, and Geometry)
-   RecoAlg (depends on VertexFinder, MCCheater, RecoBase, Simulation, Filters, Geometry, RecoObjects, AnalysisBase, and Utilities)

larana -\> larreco -\> larsim -\> larevt -\> lardata -\> larcore(#larana-gt-larreco-gt-larsim-gt-larevt-gt-lardata-gt-larcore) {.wiki-class-count}
---------------------------------------------------------------------------------------------------------------------------------

-   Calorimetry (depends on Filters, Simulation, RecoBase, Geometry, RecoObjects, AnalysisAlg, AnalysisBase, and Utilities)
-   OpticalDetector (depends on Filters, Simulation, PhotonPropagation, RecoBase, Geometry, RecoObjects, AnalysisAlg, AnalysisBase, and Utilities)
-   ParticleIdentification (depends on RecoBase, AnalysisAlg, AnalysisBase, and Geometry)

larpandora -\> larsim -\> larevt -\> lardata -\> larcore(#larpandora-gt-larsim-gt-larevt-gt-lardata-gt-larcore) {.wiki-class-count}
------------------------------------------------------------------------------------------------------------------

-   larpandora constains the code which uses Pandora
-   LArPandoraAlgorithms
-   LArPandoraInterface

Note, this is type 3, product-interface.

lareventdisplay -\> larsim -\> larevt -\> lardata -\> larcore(#lareventdisplay-gt-larsim-gt-larevt-gt-lardata-gt-larcore) {.wiki-class-count}
----------------------------------------------------------------------------------------------------------------------------

-   EventDisplay (depends on RecoBase, Simulation, RawData, RecoObjects, AnalysisAlg, Filters, Geometry

> -   (does not depend on larreco or larana)

larexamples -\> larsim -\> larevt -\> lardata -\> larcore(#larexamples-gt-larsim-gt-larevt-gt-lardata-gt-larcore) {.wiki-class-count}
--------------------------------------------------------------------------------------------------------------------

-   AnalysisExample (depends on Simulation, RecoBase, and Geometry)

lardataalg -\> lardataobj -\> larcorealg -\> larcoreobj -\> canvas(#lardataalg-gt-lardataobj-gt-larcorealg-gt-larcoreobj-gt-canvas) {.wiki-class-count}
--------------------------------------------------------------------------------------------------------------------------------------

This is type 2, framework-independent, but it does depend on [canvas](https://cdcvs.fnal.gov/redmine/projects/canvas/wiki) which understands the Event Data Model of *art* and newsimdata.

larsoft\_data(#larsoft_data) {.wiki-class-count}
-------------------------------

-   A special package that contains data files needed by some LArSoft jobs. This product is *not* \
     included in larsoft\_suite, and strictly speaking, *is not* part of core LArSoft. It is maintained\
     here until a more general solution can be found. Setting up larsoft will set up larsoft\_data.

larsoft(#larsoft) {.wiki-class-count}
--------------------

-   larsoft is an umbrella product which is used to setup all the individual larsoft products
