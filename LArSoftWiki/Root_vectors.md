# From old ROOT vectors and matrix (@TVector3@, @TMatrixT@) to ROOT GenVector and SMatrix

## Why?

- **TVector3, TLorentzVector, TMatrixD** and such have a large overhead in both memory usage and CPU usage

  - contain data members that are useful only for ROOT I/O and other ROOT magics (like **TRef**)
  
  - use virtual functions
 
  - perform additional operations on construction and destruction related to ROOT but not to their data
  
  - the overhead is (relatively) worse for **TLorentzVector** and **TVector2**
  
- they are bound to **double** precision floating point numbers only

These classes have their use: it's easy to write them directly in a ROOT tree, even on command line, and they can be a target of **TRef**. But unless these features are explicitly needed, their use is suboptimal.


## Documentation

| Library | objects | used in LArSoft |
|---------|---------|-----------------|
| [GenVector](https://root.cern.ch/doc/master/group__GenVector.html) |[ROOT::Math::PositionVector2D](https://root.cern.ch/doc/master/classROOT_1_1Math_1_1PositionVector2D.html)| [geo::Point_t](http://nusoft.fnal.gov/larsoft/doxsvn/html/namespacegeo.html#a8f50958e1ae782539f468fe82b56e680) |
|  | [ROOT::Math::DisplacementVector3D](https://root.cern.ch/doc/master/classROOT_1_1Math_1_1DisplacementVector3D.html) | [geo::Vector_t](https://nusoft.fnal.gov/larsoft/doxsvn/html/namespacegeo.html#ac78157942b179c6abb41ed24ccb4560a)|
| | [ROOT::Math::PositionVector2D](https://root.cern.ch/doc/master/classROOT_1_1Math_1_1PositionVector2D.html)  [ROOT::Math::DisplacementVector2D](https://root.cern.ch/doc/master/classROOT_1_1Math_1_1DisplacementVector2D.html) | [geo::PlaneGeo::WidthDepthProjection_t](https://nusoft.fnal.gov/larsoft/doxsvn/html/classgeo_1_1PlaneGeo.html#a066c372521b61e61bc86146ea4a9fc66) [geo::PlaneGeo::WireCoordProjection_t](https://nusoft.fnal.gov/larsoft/doxsvn/html/classgeo_1_1PlaneGeo.html#a54262556246be9d7cd55b501d860d9c1) |
| | [ROOT::Math::LorentzVector](https://root.cern.ch/doc/master/classROOT_1_1Math_1_1LorentzVector.html) |
| ROOT | [TVector2](https://root.cern.ch/doc/master/classTVector2.html) |
| | [TVector3](https://root.cern.ch/doc/master/classTVector3.html) |
| | [TLorentzVector](https://root.cern.ch/doc/master/classTLorentzVector.html) |
| | [TMatrixD](https://root.cern.ch/doc/master/classTMatrixD.html) |

## TVector3 vs. ROOT::Math::DisplacementVector and ROOT::Math::PositionVector

The vectors in GenVector library are template based and have fixed dimensionality, each one with an independent interface:
* dimension 2 ("2D")
* dimension 3 ("3D")
* dimension 1+3 ("Lorentz")

Each vector can use an internal representation in different coordinate systems:

* cartesian (2D, 3D)
* cylindrical:( \ ho,\varphi,z) or ( \ ho,\varphi,\eta) (3D)
* polar (2D, 3D)
* cartesian with "mass" ( cp_{x}, cp_{y}, cp_{z}, mc^{2}) or "energy" ( cp_{x}, cp_{y}, cp_{z}, E )
* cylindrical with "mass" ( cp_\perp}, \eta, \varphi, mc^{2} ) or "energy" ( cp_\perp}, \eta, \varphi, E)

For 2D and 3D vectors, the library distinguishes between two concepts:
* _position_ vector: absolute location of a point in 2D/3D space, which react to translations (e.g. location of a vertex)
* _displacement_ vector: the difference between two points, which are invariant for translations (e.g. direction or momentum of a particle)

The two types of vector have different properties and do not share the full range of operations. By comparison, TVector3 is effectively a displacement vector.


## Data types

While **TVector3** is quite monolitic, GenVector vectors give us tons of possibilities. Which most of the time we don't need.

An old 3D vector with representation of **double** could be used as:
<pre><code class="cpp">#include "TVector3.h"
TVector3 v;</code></pre>
The equivalent object in GenVector is a either a position or a displacement vector in cartesian "global" coordinates.
<pre><code class="cpp">#include "Math/GenVector/Cartesian3D.h"
#include "Math/GenVector/PositionVector3D.h"
#include "Math/GenVector/DisplacementVector3D.h"

using Point_t = ROOT::Math::PositionVector3D<ROOT::Math::Cartesian3D<double>>;
using Vector_t = ROOT::Math::DisplacementVector3D<ROOT::Math::Cartesian3D<double>>;

Vector_t v;
Point_t p;</code></pre>
	
The declaration of the type is long enough that it deserves an alias. For example, **recob::Track** uses two aliases defined in **lardataobj/RecoBase/TrackingTypes.h**: **recob::tracking::Point_t** and UUrecob::tracking::Vector_t** (also available as **recob::Track** types).

For 2D vectors, the syntax is exactly the same, just with "2D" in place of "3D".

For 3+1 ("Lorentz") vectors, the old:
<pre><code class="cpp">#include "TLorentzVector.h"

TLorentzVector cp;</code></pre>can be replaced by<pre><code class="cpp">#include "Math/GenVector/PxPyPzE4D.h"
#include "Math/GenVector/LorentzVector.h"

using Position4_t = ROOT::Math::LorentzVector<ROOT::Math::PxPyPzE4D<double>>;

Position4_t x;</code></pre>which is a cartesian-like representation.
</code>

h2. Main interface differences

The (incomplete) list of interface changes:

* access to component by index, e.g. **v[1]** is not available any more; replaced by named read-only access (e.g. **v.Y()**) and setter methods (e.g. **v.SetY(4.0)**)
* the modulus of a vector is available only as **R()** (no **Mag()**) (but **Mag2()** is still there...)

## Updating code

It is likely that when you start using GenVector classes you will have to add to the link list of your module or library in **CMakeLists.txt** the line:
<pre>  ROOT::GenVector</pre>

### Creation of a new point/vector

The interface to create a GenVector 3D object is similar to **TVector3**, by component:
<pre><code class="cpp">geo::Point_t point { 1.0, 2.0, 0.0 }; // point at the specified coordinates
geo::Vector_t x { 0.0, 1.0, 0.0 }; // unit vector describing the y axis 
</code></pre>
These vectors can be also copied from any vector class supporting **X(), Y() and Z()** accessors.

### Access and increment of components

Given that the mutable access by **operator[]** is not supported, code like<pre><code class="cpp">v[0] = 5.0;
v[1] *= 2.0;
std::cout << "(" << v[0] << "; " << v[1] << "; " << v[2] << " )" << std::endl;</code></pre> becomes: <pre><code class="cpp">v.SetX(5.0);
v.SetY(v.Y() * 2.0);
std::cout << "(" << v.X() << "; " << v.Y() << "; " << v.Z() << " )" << std::endl;</code></pre>
For output, LArSoft will also provide direct output support: **std::cout << v << std::endl;**.


### Access to components by index

Simply put: it's not supported any more. There are rare cases where this is really needed, e.g. if the component to operate on is decided at run time.
If the need arise, please [open a LArSoft feature request](https://cdcvs.fnal.gov/redmine/projects/larsoft/issues/new) explaining your use case.


### Computing the middle point

The simple operation 
<pre>
\$\vec{x} = \frac{\sum_{k=1}^{N} \vec{x}_{k}}{N}$)
</pre> is not as simple any more for position vectors, which can't be added nor scaled. An utility has been provided in the form of a [function](http://nusoft.fnal.gov/larsoft/doxsvn/html/namespacegeo.html#a36b47c9bd80494201a449169e6e8b581) or [a more versatile class](http://nusoft.fnal.gov/larsoft/doxsvn/html/classgeo_1_1MiddlePointAccumulator.html) .

### Example: from recob::Track::Extent() update

At a certain point, **viod recob::Track::Extent(TVector3&, TVector3&) const** was deprecated, and a replacement **std::pair<Point_t, Point_t> recob::Track::Extent() const** was suggested instead.
Here is an example of code update: **larana/T0Finder/PhotonCounterT0Matching_module.cc**. Note that the headers were not changed because the data types we use are already defined in **Track.h**. The old code was:
<pre><code class="cpp">   std::vector<double> trackStart;
  std::vector<double> trackEnd;
  // ...
      tracklist[iTrk]->Extent(trackStart,trackEnd); 
      std::vector< art::Ptr<recob::Hit> > allHits = fmtht.at(iTrk);
      size_t nHits = allHits.size();
      trkTimeStart = allHits[nHits-1]->PeakTime() / timeservice->TPCClock().Frequency(); //Got in ticks, now in us!
      trkTimeEnd   = allHits[0]->PeakTime() / timeservice->TPCClock().Frequency(); //Got in ticks, now in us!
      TrackProp ( trackStart[0], trackEnd[0], TrackLength_X, TrackCentre_X,
		  trackStart[1], trackEnd[1], TrackLength_Y, TrackCentre_Y,
		  trackStart[2], trackEnd[2], TrackLength_Z, TrackCentre_Z,
		  trkTimeStart , trkTimeEnd , trkTimeLengh , trkTimeCentre, // times in us!
		  TrackLength);     

</code></pre>and the updated code is:<pre><code class="cpp">
      auto const& [ trackStart, trackEnd ] = tracklist[iTrk]->Extent(); // both recob::Track::Point_t
      std::vector< art::Ptr<recob::Hit> > allHits = fmtht.at(iTrk);
      size_t nHits = allHits.size();
      trkTimeStart = allHits[nHits-1]->PeakTime() / timeservice->TPCClock().Frequency(); //Got in ticks, now in us!
      trkTimeEnd   = allHits[0]->PeakTime() / timeservice->TPCClock().Frequency(); //Got in ticks, now in us!
      TrackProp ( trackStart.X(), trackEnd.X(), TrackLength_X, TrackCentre_X,
		  trackStart.Y(), trackEnd.Y(), TrackLength_Y, TrackCentre_Y,
		  trackStart.Z(), trackEnd.Z(), TrackLength_Z, TrackCentre_Z,
		  trkTimeStart , trkTimeEnd , trkTimeLengh , trkTimeCentre, // times in us!
		  TrackLength);</code></pre>
The most important change in the use of vectors is that the new ones do not support the indexing **operator[]**. Instead, they support the methods **X(), Y() and Z()**.
<pre><code class="cpp"></code></pre>
