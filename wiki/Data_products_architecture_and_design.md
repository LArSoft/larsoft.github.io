Data architecture: where we stand, what we think
====================================================================================================

Definition
--------------------------

**Data product**: a class representing data, that is stored in a ROOT tree

Charge<sup>[1](#fn1)</sup>
---------------------------------------

-   periodically review the architecture of selected components and subsystems
-   also consider issues raised ad hoc
-   draft findings and recommendations for changes and improvements to the architecture
-   ensure that solutions will work for all the experiments

* * * * *

Design goals
------------------------------

-   LArSoft should offer data products that can be read by other frameworks with no change in their source code

### Design principles

-   each data product must represent to specific concept<sup>[2](#fn2)</sup>
     (different concepts want different data products)
-   data must be readable with bare C++ plus ROOT to allow different code to use it<sup>[2](#fn2)</sup>
-   data products should be fully expressed by pure C++ means

#### Questions

**Q.** Are dictionary libraries independent of art etc.?
**A.** Currently they are not.
 It might be possible to fix that for some of the products which do not explicitly require `art`.

* * * * *

Dependencies
------------------------------

-   C++11 is required to fully compile the data product classes
-   header files must be parsable with ROOT GenReflex<sup>[2](#fn2)</sup>
     (C++11-specific headers and constructs need to be enclosed in `#ifndef __GCCXML__` blocks)
-   data products can depend on ROOT<sup>[2](#fn2)</sup>
-   implementation of classes is allowed to use MessageFacility<sup>[2](#fn2)</sup>

#### Question

Is CET library (cetlib) allowed in the implementation too<sup>[2](#fn2)</sup>?

-   is contains the popular `cet::exception`
-   some other part of the code *might* have to use `cet` search paths anyway
-   it requires Fermilab’s cpp0x library (from LArSoft point of view, for no reason since we do use C++11)
-   it requires Boost libraries

The only part positively needed is an exception that can be recognized by the frameworks (it could be derived from `std::exception`).

Technical guidelines
----------------------------------------------

Data products can contain data members:

-   plain data
-   STL containers from standard C++03
-   ROOT objects
-   custom structures based on the above

They must not contain:

-   C++11 structures<sup>[2](#fn2)</sup> (e.g. no `std::array`)
     (ROOT GenReflex support would be very problematic)
-   CLHEP objects<sup>[2](#fn2)</sup>
     (typically its data structures have an equivalent in ROOT)
-   art objects<sup>[2](#fn2)</sup>
     (for framework independence)

The data members will be /private/, accessed through the class interface<sup>[2](#fn2)</sup>.
The interface should offer a read-only access<sup>[2](#fn2)</sup>.
The object will not operate on its data, leaving the task to additional layers and algorithms<sup>[2](#fn2)</sup>.

* * * * *

### Recommended data structures

Suggestions:

||
|3-vectors (position…)|`TVector3` (unless there are data size issues) or `double[3]`? (both are currently used)|
|3-vectors (momentum…)|`TVector3` or `float[3]` (as above, except that we don’t have, nor need, more than 6 digits precision)|
|4-vectors|`TLorentzVector` (unless there are data size issues)|
|error/correlation matrices|`TMatrixTSym<>` or `float[6]`? (both `TMatrixD` and `double[6]` are currently used)|
|wire/time pair|`short int[2]`, `float[2]`|
|…||

* * * * *

Semantics
------------------------

Each data product represents a physics quantity or some concept.
First step: identify and define those concepts for the existing and needed objects.

In the standard MicroBooNE simulation + reconstruction chain, 34 classes from LArSoft (`lardata`) are used as data products, plus 4 more for simulation from `nutools`.

Let’s start from the largest chunk of correlate objects: reconstruction (base)

-   live in `recob` namespace
-   connected to simulation (`sim` namespace) and raw data (`raw` namespace)

This encompasses 13 LArSoft classes:

-   `raw::RawDigit`
-   `recob::Cluster`
-   `recob::EndPoint2D`
-   `recob::Hit`
-   `recob::PFParticle`
-   `recob::Shower`
-   `recob::SpacePoint`
-   `recob::Track`
-   `recob::Vertex`
-   `recob::Wire`
-   `anab::Calorimetry`
-   `anab::CosmicTag`
-   `anab::ParticleID`

![](recoblock_simple.svg)
![](legend.svg)

“(version with modules creating each associations)”:recoblock_assns.svg

### `raw::RawDigit`

> The sequence of (uncalibrated?) ADC counts measured on one *channel* in the full time window.

-   can be compressed with one of a few standard algorithms

![](raw__RawDigit.svg)

### `recob::Wire`

> The signal deposited on a single *channel* as function of data acquisition time (TDC).

The signal may have been be zero-suppressed, filtered from noise and deconvoluted from electronics effects.

-   includes geometrical identification: type of signal (collection or induction) and wire direction (U, V or X)
-   it is possible to store exclusively the time slices where there was activity (*regions of interest*)
-   it can point to the `raw::RawDigit` object on its channel

![](recob__Wire.svg)

#### Recommended actions

-   remove `art::Ptr` from the data products<sup>[3](#fn3)</sup>
-   have modules create associations between `recob::Wire` and `raw::RawDigit` [3]
-   add channel ID data member to `recob::Wire` [3][4]

### `recob::Hit`

> The observed charge from a travelling particle that drifted to a single *wire* .

A hit describes the charge profile in time using a *shape hypothesis* .
Its position information is two-dimensional: wire location and time.
It includes:

-   parameters of the signal shape best fitting the calibrated charge (peak, width…)
-   the portion of wire readings it fits directly, and timing information
-   full geometrical identification (`geo::WireID`)
-   references to the channel (wire) where the charge was collected and its raw data

![](recob__Hit.svg)

#### Recommended actions

-   remove `art::Ptr` from the data products<sup>[3](#fn3)</sup>
-   have modules create associations between `recob::Hit` and `recob::Wire` [3]
-   add channel ID data member to `recob::Hit` [3][4]
-   make `fHitSignal` member private, add constructors to initialize it<sup>[5](#fn5)</sup>

#### Pending questions

-   `fHitSignal` is never filled in LArSoft code… should it be? or should it be removed?
-   `fView` and `fSignalType` are felt by MicroBooNE useless<sup>[5](#fn5)</sup>

### `recob::Cluster`

> A sequence of hits showing geometrical correlation.

Its position information is two-dimensional.
It includes:

-   initial and final position of the sequence (in wire×time), with uncertainties
-   full geometrical information (`geo::PlaneID`, wire direction)
-   total observed charge, dQ/dW and dT/dW (and errors)

![](recob__Cluster.svg)

#### Recommended actions

-   replace each of the positions and errors with two `float` or a `float[2]`
-   replace `double` items with `float`

### `recob::EndPoint2D`

Two-dimensional coordinate on a plane

#### Questions

-   what is this supposed to represent?

![](recob__EndPoint2D.svg)

### `recob::Track`

The observed information from a single physical particle with well-defined trajectory.

#### Questions

**Q.** All the information? or just trajectory? or…?

![](recob__Track.svg)

#### Recommended action

-   split into detected information (hit collection) and trajectory (geometrical)

### `recob::Shower`

> The observed information from a single physical particle evolving in a shower.

![](recob__Shower.svg)

### `recob::SpacePoint`

> A geometrical point in the detector.

![](recob__SpacePoint.svg)

### `recob::Vertex`

> A point in the detector origin of particles

![](recob__Vertex.svg)

#### Questions

-   need uncertainty on vertex position… error matrix? independent variances?

### `anab::Calorimetry`

> Calorimetric information of a particle.

![](anab__Calorimetry.svg)

### `anab::CosmicTag`

> Cosmic-ray-like attributes of a particle.

![](anab__CosmicTag.svg)

### `anab::ParticleID`

> Hypothesis on the nature of a particle.

![](anab__ParticleID.svg)

### `recob::PFParticle`

> The evolution of a particle in the event (particle flow).

-   it is possible to attribute a very rough particle hypothesis
-   interface with `pandora`

![](recob__PFParticle.svg)

* * * * *

<sup>1</sup> From discussion on [September 15, 2014](https://indico.fnal.gov/conferenceDisplay.py?confId=8986) .

<sup>2</sup> From discussion on [October 6, 2014](https://indico.fnal.gov/conferenceDisplay.py?confId=8981) .

<sup>3</sup> From discussion on [October 13, 2014](https://indico.fnal.gov/conferenceDisplay.py?confId=8997) .

<sup>4</sup> After discussion at [3], two proposals have been evaluated: adding the channel ID as a new data member, or adding it in the `geo::WireID` structure. No compelling reason was identified to prefer either. The decision was in the end taken from the idea of having `geo::WireID` reflect a strictly geometric concept, as opposed to integrate a data acquisition concept.

<sup>5</sup> From discussion on MicroBooNE Analysis Tools meeting, October 16, 2014, and following private e-mail exchange with Brian Rebel.
