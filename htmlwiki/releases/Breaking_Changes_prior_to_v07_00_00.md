Breaking Changes prior to v07_00_00
==============================================================================

This is an attempt to track all the “breaking” changes which will require a general maintenance action to have the code back working.

|Date|Version/commit|Description|Issue|
|:---|:-------------|:----------|:----|
|20180626|`v06_82_00`|[Cluster3D.h moved from lardata to larreco](#Cluster3Dh-moved-from-lardata-to-larreco)||
|20180601|`v06_80_00`|[update to from art v2_10_03 to art v2_11_02](#update-to-from-art-v2_10_03-to-art-v2_11_02)||
|20180530|`v06_79_00`|[geo::GeometryCore::WirePitch() changed](#geo-GeometryCore-WirePitch-changed)|[redmine issue 18137](https://cdcvs.fnal.gov/redmine/issues/18137)|
|20180524|`v06_78_00`|[SingleGen: Search for histogram in FW_SEARCH_PATH](#SingleGen-Search-for-histogram-in-FW_SEARCH_PATH)|[redmine issue 19313](https://cdcvs.fnal.gov/redmine/issues/19313)|
|20180524|`v06_78_00`|[Fix design flaw in geo::ChannelMapAlg interface](#Fix-design-flaw-in-geo-ChannelMapAlg-interface)|[redmine issue 18136](https://cdcvs.fnal.gov/redmine/issues/18136)|
|20180405|`v06_73_00`|[Adoption of Clang 5/C++17](#Adoption-of-Clang-5C17)||
|20171214|`v06_60_00`|[Change in recob::Vertex class](#Change-in-recobVertex-class)|[redmine issue 18585](https://cdcvs.fnal.gov/redmine/issues/18585)|
|20171214|`v06_60_00`|[First adoption of GenVector vectors (continued)](#First-adoption-of-GenVector-vectors-continued)||
|20171205|`v06_59_00`|[First adoption of GenVector vectors](#First-adoption-of-GenVector-vectors)||
|20171122|`v06_57_00`|[Removed service MemoryPeakReporter](#Removed-service-MemoryPeakReporter)|[redmine issue 18220](https://cdcvs.fnal.gov/redmine/issues/18220)|
|20171031|`v06_55_01`|[Removed legacy header PtrMaker.h](#Removed-legacy-header-PtrMakerh)|[redmine issue 17672](https://cdcvs.fnal.gov/redmine/issues/17672)|
|20171019|`v06_54_00`|[Removed view-related methods from geo::ChannelMapAlg](#Removed-view-related-methods-from-geoChannelMapAlg)||
|20171019|`v06_54_00`|[geo::GeometryCore::View() made compliant](#geoGeometryCoreView-made-compliant)||
|20171004|`v06_52_00`|[geo::GeometryCore::AuxDetGeoVec() removed](#geoGeometryCoreAuxDetGeoVec-removed)|[redmine issue 14384](https://cdcvs.fnal.gov/redmine/issues/14384)|
|20171004|`v06_52_00`|[geo::ChannelMapAlg::Initialize() interface changed](#geoChannelMapAlgInitialize-interface-changed)|[redmine issue 14384](https://cdcvs.fnal.gov/redmine/issues/14384)|
|20170906|`v06_49_00`|[lar::PtrMaker moved to art](#larPtrMaker-moved-to-art)|[redmine issue 17672](https://cdcvs.fnal.gov/redmine/issues/17672)|
|20170712|`v06_43_00`|[Geometry and utility code moved to larcorealg](#Geometry-and-utility-code-moved-to-larcorealg)|[redmine issue 17099](https://cdcvs.fnal.gov/redmine/issues/17099)|
|20170413|`v06_32_00`|[Update to GCC 6](#Update-to-GCC-6)|[redmine issue 16096](https://cdcvs.fnal.gov/redmine/issues/16096)|
|20170404|`v06_30_00`|[Update to art 2.6](#Update-to-art-26)||
|20170323|`v06_29_00`|[SpaceCharge interface change](#SpaceCharge-interface-change)||
|20170316|`v06_28_00`|[undefined reference to TGeoMatrix::LocalToMaster](#undefined-reference-to-TGeoMatrixLocalToMaster)||
|20170201|`v06_23_00`|[Deprecated methods of recob::Track](#Deprecated-methods-of-recobTrack)|[redmine issue 14281](https://cdcvs.fnal.gov/redmine/issues/14281)|
|20170125|`v06_22_00`|[lardata/RecoBaseArt renamed lardata/ArtDataHelper](Breaking_Changes#lardataRecoBaseArt-renamed-lardataArtDataHelper)||
|20161129|`v06_16_00`|[LArSeedService from larsim replaced by NuRandomService from nutools](Breaking_Changes#LArSeedService-from-larsim-replaced-by-NuRandomService-from-nutools)||
|20161109|`v06_14_00`|[Removing deprecated lar::utils namespace](#Removing-deprecated-larutils-namespace)|[redmine issue 12367](https://cdcvs.fnal.gov/redmine/issues/12367)|
|20161013|`v06_11_00`|[Reorganization for nutools and calorimetry](#Reorganization-for-nutools-and-calorimetry)||
|20160803|`v06_02_00`|[Data member changed in sim::SimChannel](#Data-member-changed-in-SimChannel)||
|20160719|`v06_00_01`|[Repackaging of data products and adoption of ROOT 6](#Repackaging-of-data-products-and-adoption-of-ROOT-6)||
|20160615|`v05_13_00`|[Moved test utility headers and libraries](#Moved-test-utility-headers-and-libraries)||
|20160527|`v05_12_00`|[SpaceCharge improvements require new call](#SpaceCharge-improvements-require-new-call)||
|20160503|`v05_11_00`|[SeedService from artextensions replaced by LArSeedService](#SeedService-from-artextensions-replaced-by-LArSeedService)|[redmine issue 12429](https://cdcvs.fnal.gov/redmine/issues/12429)|
|20160414|`v05_09_00`|[Explicit override of LArG4 random seeds](#Explicit-override-of-LArG4-random-seeds)|[redmine issue 12197](https://cdcvs.fnal.gov/redmine/issues/12197)|
|20160414|`v05_09_00`|[ParticleList can’t be copied any more](#ParticleList-cant-be-copied-any-more)||
|20160414|`v05_09_00`|[Photon Library returns plain data rather than vectors](#Photon-Library-returns-plain-data-rather-than-vectors)||
|20160317|`v05_04_00`|[photon detector reconstruction](#photon-detector-reconstruction)||
|20160316|`v05_04_00`|[Moving PitchInView() and ProjectedLength() out of track object](#Moving-recobTrack-methods-out-of-the-class)||
|201602xx|`v05_00_01`|[Repository structure refactoring](#Repository-structure-refactoring)||
|201602xx|`v05_00_01`|[Core service refactoring](#Core-service-refactoring)|[redmine issue 10888](https://cdcvs.fnal.gov/redmine/issues/10888)|
|20151024|`v04_28_00`|[Data products must be put into the event](#Data-products-must-be-put-into-the-event)|[redmine issue 7852](https://cdcvs.fnal.gov/redmine/issues/7852)|
|20151016|`v04_27_0x`|[Backward compatibility of data file accidentally broken](#Unreadable-old-data-files)|[redmine issue 10614](https://cdcvs.fnal.gov/redmine/issues/10614)|
|20151003|`v04_25_00`|[IChannelStatusService readiness](#ChannelStatus-readiness)|[redmine issue 1083](https://cdcvs.fnal.gov/redmine/issues/1083)|
|20150605|`v04_11_00`|[New dependency on boost](#New-dependency-on-boost)||
|20140826|`v02_05_02`|[Removed generic service configuration](#Removal-of-generic-service-configuration)|[redmine issue 5100](https://cdcvs.fnal.gov/redmine/issues/5100)|
|20140812|`v02_05_00`|[Relocation of TrackIDE](#Relocation-of-TrackIDE)||
|20140715|`v02_02_01`|[TimeService and its changes](#TimeService-and-its-changes)|[redmine issue 6432](https://cdcvs.fnal.gov/redmine/issues/6432)|
|20140606|`v02_01_01`|[Renaming the FCL file configuring pandora code](#Renaming-the-FCL-file-configuring-pandora-code)|[redmine issue 5363](https://cdcvs.fnal.gov/redmine/issues/5363)|
|20140305|on top of `v1_00_04`|[PhotonLibrary methods made constant](#PhotonLibrary-methods-made-constant)||

Cluster3D.h moved from lardata to larreco
---------------------------------------------------------------------------------------

**When was committed**: [v06_82_00](ReleaseNotes068200)

As part of the Cluster3D updates, Cluster3D.h moved from lardata to larreco and acquired an explicit dependency on Eigen.

**Failure when not fixed**: Compilation error.

**Fix**:

If compilation reports a missing header from lardata, use UpdateCluster3D.sh after setup of larsoft v06_82_00 or later.
You may also need to add `find_ups_product( eigen )` to your top level CMakeLists.txt file.

**Contact**: The Scisoft Team

update to from art v2_10_03 to art v2_11_02
------------------------------------------------------------------------------------------------

**When was committed**: [v06_80_00](ReleaseNotes068000)

Some headers that were previously in cetlib are now only found in cetlib_except.
There is now a single messagefacility library.

**Failure when not fixed**: Compilation error.

**Fix**: Use UpdateArt211.sh after setup of larsoft v06_80_00 or later.

**Contact**: The Scisoft Team

geo-GeometryCore-WirePitch changed
--------------------------------------------------------------------------

**When was committed**: [v06_79_00](ReleaseNotes067800)

**Motivation**:

The method `geo::GeometryCore::WirePitch()` allows the optional
specification of two wire numbers.

The implicit assumption, pervasive of most of geometry code
related to wires and tested in the standard geometry test,
of even wire spacing makes it unnecessary to know which wires
we are looking for the pitch of.

The current implementation of this method also relies on this
assumption.

Furthermore, the current implementation assumes that the two
wires are consecutive, i.e., it does not really return their
distance, but just the pitch between single wires.

In short, the current implementation always returns the fixed
wire pitch as reported by `geo::PlaneGeo`.

Given that this implementation fulfills the current needs, we
should make it official and have this method not accept wire
numbers any more.

**Affects**: Callers of `geo::GeometryCore::WirePitch()`, and `geo::TPCGeo::WirePitch()`.

**Failure when not fixed**: Compilation error.

**Fix**:

Change calls from:

`geo::Length_t geo::GeometryCore::WirePitch(geo::PlaneID const& planeid, unsigned wire1 = 0, unsigned wire2 = 1) const;`
`geo::Length_t geo::GeometryCore::WirePitch(unsigned wire1 = 0, unsigned wire2 = 1, unsigned plane = 0, unsigned tpc = 0, unsigned cryostat = 0) const;`
`double geo::TPCGeo::WirePitch(unsigned wire1 = 0, unsigned wire2 = 1, unsigned plane = 0) const;`

to calls to:

`geo::Length_t geo::GeometryCore::WirePitch(geo::PlaneID const& planeid) const;`
`geo::Length_t geo::GeometryCore::WirePitch(unsigned plane = 0, unsigned tpc = 0, unsigned cryostat = 0) const;`
`double geo::TPCGeo::WirePitch(unsigned plane = 0) const;`

That is, the two wire arguments must be deleted.

**Contact**: The Scisoft Team

SingleGen - Search for histogram in FW_SEARCH_PATH
----------------------------------------------------------------------------------------------------------

**When was committed**: [v06_78_00](ReleaseNotes067800)
**Motivation**: Allow searching for the file specified by fcl parameter HistogramFile.
**Affects**: Users of the SingleGen fcl parameter HistogramFile.
**Failure when not fixed**: Possibly finding a file which was not found previously.
**Fix**:

Note that due to the new searching behavior it is possible that the code now finds a file
which it would not have found before this change. If an undesired file is found, then
change the fcl parameter to specify the correct path to the desired file and make sure the
environment variable FW_SEARCH_PATH is set to the correct value.

**Contact**: The Scisoft Team

Fix design flaw in geo ChannelMapAlg interface
--------------------------------------------------------------------------------------------------

**When was committed**: [v06_78_00](ReleaseNotes067800)
**Motivation**: The `geo::ChannelMapAlg::SignalType()` function has two overloads:

    virtual geo::SigType_t SignalType(raw::ChannelID_t const channel) const = 0;virtual geo::SigType_t SignalType(readout::ROPID const& ropid) const;

both virtual. If a derived class overrides one, but not the other, then the other signature is hidden. This is a developer error, but annoying.

**Affects**: Callers of the `geo::ChannelMapAlg::SignalType()` function, and implementers of overrides to `geo::ChannelMapAlg::SignalType()`.
**Failure when not fixed**: Compilation failure on unknown function, or failure to override function.
**Fix**:

The `SignalType()` virtual functions have been replaced with two non-virtual member functions:

    geo::SigType_t SignalTypeForChannel(raw::ChannelID_t const channel) const;geo::SigType_t SignalTypeForROPID(readout::ROPID const& ropid) const;

one for each of the original two overloads. Use these two functions in place of calling `SignalType()`. Which one to use depends on the argument passed (in the obvious way).

A derived class implementer may customize the behavior of these functions by providing overrides for:

    virtual geo::SigType_t SignalTypeForChannelImpl(raw::ChannelID_t const channel) const = 0;virtual geo::SigType_t SignalTypeForROPIDImpl(readout::ROPID const& ropid) const;

which are called by the base class implementations of:

    geo::SigType_t SignalTypeForChannel(raw::ChannelID_t const channel) const;geo::SigType_t SignalTypeForROPID(readout::ROPID const& ropid) const;

Note that the implementer is **required** to provide an override for:

    virtual geo::SigType_t SignalTypeForChannelImpl(raw::ChannelID_t const channel) const = 0;

as it is pure virtual.

**Contact**: The Scisoft Team

Adoption of Clang 5/C++17
-----------------------------------------------------

**When was committed**: [v06_73_00](ReleaseNotes067300)
**Motivation**: Support for Clang 5.0 compiler (qualifier `c2`)
**Affects**: C++ source code non conforming to Clang standards, and code with constructs deprecated in C++14 that were removed in C++17
**Failure when not fixed**: multiple types of compilation errors when compiling with `c2` qualifiers
**Fix**: solution depends on each error; some common ones were captured and described in [a specific wiki page](Building_with_Clang)
**Contact**: Gianluca Petrillo

Change in recob::Vertex class
--------------------------------------------------------------

**When was committed**: [v06_60_00](ReleaseNotes066000)
**Motivation**: Update of the tracking vector data types. The breakage was unintentional.
**Affects**: reading with LArSoft version [v06_60_00](/redmine/versions/1481) (only) of files produced by LArSoft version [v06_59_00](/redmine/versions/1477) (only)
**Failure when not fixed**: run-time failure with an exception:

    ---- FatalRootError BEGIN
    Fatal Root Error: @SUB=TStreamerInfo::BuildOld
    Cannot convert recob::Vertex::pos_ from type: ROOT::Math::PositionVector3D<ROOT::Math::Cartesian3D<double>,ROOT::Math::DefaultCoordinateSystemTag> to type: ROOT::Math::PositionVector3D<ROOT::Math::Cartesian3D<double>,ROOT::Math::GlobalCoordinateSystemTag>, skip element
    ---- FatalRootError END

**Fix**: use a LArSoft version with this bug fixed (version:v06_61_00 and newer) or check out an updated version of `lardataobj` (e.g. `develop` branch) including commit [lardataobj:3e46c4c](https://cdcvs.fnal.gov/redmine/projects/lardataobj/repository/revisions/3e46c4c8fbdec5eff41abd62c410bb632f73606d "Added missing rules for recob::Vertex schema evolution This solves issue #18585 .")
**Contact**: Gianluca Petrillo

First adoption of GenVector vectors (continued)
--------------------------------------------------------------------------------------------------

**When was committed**: [v06_60_00](ReleaseNotes066000)
**Motivation**: Adoption of [GenVector ROOT data structures](From_ROOT_vectors_(TVector3)_to_ROOT_GenVector)

### Changed interface

||
|removed|replace with|
|`geo::TPCGeo::Xdir`|`geo::Xaxis<TVector3>()`|
|`geo::TPCGeo::Ydir`|`geo::Yaxis<TVector3>()`|
|`geo::TPCGeo::Zdir`|`geo::Zaxis<TVector3>()`|

### Deprecated interface

deprecated

replace with

notes

`Point geo::CryostatGeo::LocalToWorld(Point const& world) const`

`geo::Point_t geo::CryostatGeo::toWorldCoords(geo::CryostatGeo::LocalPoint_t const&)`

adapt your code to use GenVectors vectors

`Point geo::CryostatGeo::WorldToLocal(Point const& world) const`

`geo::CryostatGeo::LocalPoint_t geo::CryostatGeo::toLocalCoords(geo::Point_t const&)`

`Point geo::WireGeo::GetCenter(double*, double = 0.0) const`

`geo::WireGeo::GetCenter(geo::Point_t const&, double = 0.0) const`

### Behaviour change

-   methods `LocalToWorld(double const*, double*)` and similar (`LocalToWorldVect()`, `WorldToLocal()`, `WorldToLocalVect`) do not support in-place substitution any more (most did not already, but for example `geo::WireGeo`’s did). A test will be left for a while, which throws an exception when that condition is not met. This exception will be replaced by an assertion after the transition period.

**Affects**: source code using the removed or deprecated methods in `geo::TPCGeo`, `geo::CryostatGeo`…
**Failure when not fixed**: compilation errors or deprecation warning messages
**Fix**: apply the replacement from the table, and rework the code as needed

**Contact**: Gianluca Petrillo

First adoption of GenVector vectors
----------------------------------------------------------------------------

**When was committed**: [v06_59_00](ReleaseNotes065900)
**Motivation**: Adoption of [GenVector ROOT data structures](From_ROOT_vectors_(TVector3)_to_ROOT_GenVector)

### Rearranged files and utilities

-   utilities in namespace `geo::vect` moved from `larcorealg/Geometry/Decomposer.h` to `larcorealg/Geometry/geo_vector_utils.h`:
    `#include "larcoreobj/Geometry/Decomposer.h"`
    `#include "larcoreobj/SimpleTypesAndConstants/geo_vector.h"`
    where `geo::vect` utilities are used
    `geo::vect::Normalize`
    `geo::vect::normalize`
    `geo::vect::Dot`
    `geo::vect::dot`
    `geo::vect::Cross`
    `geo::vect::cross`
    `geo::vect::MixedProduct`
    `geo::vect::mixedProduct`
    `geo::vect::Mag2`
    `geo::vect::mag2`
    `geo::vect::Rounded01`
    `geo::vect::rounded01`
    `geo::vect::Round01`
    `geo::vect::round01`
    `geo::vect::RoundValue01`
    `geo::vect::extra::roundValue01`

-   specialisation of `geo::vect` utilities for `TVector` classes have been moved into `larcorealg/Geometry/geo_vector_utils_TVector.h`:
    ||
    |`geo::vect::Mag2(TVector2 const&)`|

-   some utilities have been moved from `geo` to `geo::vect` namespace, and they are now:
    ||
    |`geo::vect::MiddlePointAccumulator`|
    |`geo::vect::middlePoint()`|
    |`geo::vect::middlePointAs()`|

-   a few utilities have been promoted from `geo::vect` to `geo` namespace, and they are now:
    ||
    |`geo::Xaxis()`|
    |`geo::Yaxis()`|
    |`geo::Zaxis()`|

-   header `geo_vectors_fhicl.h` has also moved from `larcoreobj/SimpleTypesAndConstants` to `larcorealg/Geometry`

### Behaviour changes

-   types `geo::vect::Vector_t` and `geo::vect::Point_t` are deprecated and have been redefined as: |. class |. old type |. new type | | `geo::vect::Vector_t` | `TVector3` | `geo::Vector_t` | | `geo::vect::Point_t` | `TVector3` | `geo::Point_t` |
    It is recommended that the new values on the right column be used directly.

-   default type for `geo::vect::Xaxis()`, `geo::vect::Yaxis()`, `geo::vect::Zaxis()` and `geo::vect::origin()` has been changed from `TVector3` to `geo::Vector_t`; *if* the `TVector3` version is needed, the type needs to be explicitly specified, e.g.:

        TVector3 xAxis = geo::vect::Xaxis<TVector3>;

-   some methods have changed to return a temporary vector instead of a constant reference, e.g.

        TVector3 const& GetIncreasingWireDirection() const

    became

        template <Vector = TVector3>
        Vector GetIncreasingWireDirection() const

    This change will not affect code written like this:

        TVector3 const& wireCoordDir = plane.GetIncreasingWireDirection()

    (because C++ extends the lifespan of a temporary return value bound to a constant reference to the lifetime of the reference itself), but makes it impossible to take the address of the return value, e.g.

        std::vector<TVector3 const*> wireCoordDirs;
        for (auto const& plane: geom.IteratePlanes(tpcid)) wireCoordDirs.push_back(&plane.GetIncreasingWireDirection());

    will not work any more, the fix being to store a copy:

        std::vector<TVector3> wireCoordDirs;
        for (auto const& plane: geom.IteratePlanes(tpcid)) wireCoordDirs.push_back(plane.GetIncreasingWireDirection());

    The modified methods include:

    ||
    |`geo::PlaneGeo::WidthDir()`|
    |`geo::PlaneGeo::DepthDir()`|
    |`geo::PlaneGeo::GetNormalDirection()`|
    |`geo::PlaneGeo::GetIncreasingWireDirection()`|
    |`geo::PlaneGeo::GetWireDirection()`|
    |`geo::TPCGeo::DriftDir()`|

-   other methods have been converter to be able to return any type of vector on demand (so far, still with `TVector3` as default), but these methods already returned a temporary and no difference should be noticeable:
    ||
    |`geo::PlaneGeo::GetCenter()`|
    |`geo::PlaneGeo::ProjectionReferencePoint()`|
    |`geo::PlaneGeo::ComposePoint()`|
    |`geo::TPCGeo::GetCenter()`|
    |`geo::TPCGeo::GetCathodeCenter()`|
    |`geo::TPCGeo::RefWidthDir()`|
    |`geo::TPCGeo::RefDepthDir()`|

**Affects**: source code using `geo::Decomposer` or utilities from `geo::vect` namespace
**Failure when not fixed**: compilation errors, most of them concerning objects in `geo` or `geo::vect` namespace
**Fix**: The script `UpdateForGenVector.py` (in `${LARSOFT_DIR}/bin`) *([generic instructions](Using_fix_scripts_based_on_SerialSubstitutionpy?parent=Breaking_Changes_prior_to_v07_00_00))* will perform all the changes that could be automated. Likely, it will not be enough though; manual interventions include:

-   fixing code which was using `geo::vect::Vector_t` or `geo::vect::Point_t` (now these types are GenVector vectors and not `TVector3` any more)
    **Contact**: Gianluca Petrillo

Removed service MemoryPeakReporter
--------------------------------------------------------------------------

**When was committed**: [v06_57_00](ReleaseNotes065700)
**Motivation**: `MemoryPeakReporter` is obsolete.
**Affects**: job configurations configuring `MemoryPeakReporter` service
**Failure when not fixed**: run-time failure where *art* will not be able to construct the `MemoryPeakReporter` service
**Fix**: remove `MemoryPeakReporter` from your configuration; if the feature is needed, use *art* [MemoryTracker](https://cdcvs.fnal.gov/redmine/projects/art/wiki/MemoryTracker) service instead.
**Contact**: Gianluca Petrillo

Removed view-related methods from geo::ChannelMapAlg
------------------------------------------------------------------------------------------------------------

**When was committed**: [v06_54_00](ReleaseNotes065400)
**Motivation**: view information is produced by `geo::PlaneGeo` and presented by `geo::GeometryCore`. There are remains of view setting code in `geo::ChannelMapAlg`, which are currently unused and whose presence creates confusion.
**Affects**: all `geo::ChannelMapAlg` implementations; compilation errors on `Views()` and `View(raw::ChannelID_t)` methods are triggered *only* if they are marked as `override` (which they should); if they are not marked `override`, no error will be shown, but the code is still sterile and never used.
**Fix**: remove the `Views()` and `View(raw::ChannelID_t)` methods from `geo::ChannelMapAlg` implementations
**Contact**: Gianluca Petrillo

geo::GeometryCore::View() made compliant
--------------------------------------------------------------------------------

**When was committed**: [v06_54_00](ReleaseNotes065400)
**Motivation**: documentation of `geo::GeometryCore::View()` methods claim that on invalid argument, `geo::kUnknown` view is returned; this was not always enforced.
**Affects**: code calling `geo::GeometryCore::View(raw::ChannelID)` and `geo::GeometryCore::View(geo::PlaneID)` will need to cope with `geo::kUnknown` results (before the change, the result was undefined and typically wrong).
**Fix**: code in the proper checks to ensure that the input of those calls is a valid channel (that is, not `raw::InvalidChannelID`) or plane (that is, `bool(planeID)` must be true).
**Contact**: Gianluca Petrillo

geo::GeometryCore::AuxDetGeoVec() removed
----------------------------------------------------------------------------------

**When was committed**: [v06_52_00](ReleaseNotes065200)
**Motivation**: the feature is broken as it allows modifications of a constant object
**Affects**: all code using `geo::GeometryCore::AuxDetGeoVec()`, which will trigger a compilation error
**Fix**: use a combination of `geo::GeometryCore::NAuxDets()` and `geo::GeometryCore::AuxDet()` to access the auxiliary detectors
**Contact**: Gianluca Petrillo

geo::ChannelMapAlg::Initialize() interface changed
----------------------------------------------------------------------------------------------------

**When was committed**: [v06_52_00](ReleaseNotes065200)
**Motivation**: the internal storage of cryostats in `geo::GeometryCore` has changed and `geo::ChannelMapAlg::Initialize()` needs to reflect that
**Affects**: any channel mapping class overriding `geo::ChannelMapAlg::Initialize()`
**Failure when not fixed**: compiler error, either “does not override anything” if `override` keyword was used, or instantiation of a pure virtual method if it was not
**Fix**: the definition of `geo::GeometryData_t::cryostats` and `geo::GeometryData_t::CryostatList_t` has been changed from `std::vector<CryostatGeo*>` to `std::vector<CryostatGeo>`, and `geo::ChannelMapAlg::Initialize()` takes a `geo::GeometryData_t` as argument. As a consequence, all code that used to get a pointer from `cryostats` must be fixed to take a constant reference instead. An example of such changes can be observed in [larcorealg:source:larcorealg/Geometry/ChannelMapStandardAlg.cxx](https://cdcvs.fnal.gov/redmine/projects/larcorealg/repository/entry/larcorealg/Geometry/ChannelMapStandardAlg.cxx) at [larcorealg:cb195cc6b](https://cdcvs.fnal.gov/redmine/projects/larcorealg/repository/revisions/cb195cc6bde45dc00f9a289ebf2431c5bf2a258c "Changed the internal storage of cryostats in geo::GeometryCore. Related to issue #14384.").
**Contact**: Gianluca Petrillo

lar::PtrMaker moved to art
--------------------------------------------------------

**When was committed**: [v06_49_00](ReleaseNotes064900)
**Motivation**: `lar::PtrMaker` was deemed mature enough to be moved into *art*
**Affects**: all code using `lar::PtrMaker` will get a compilation error and a message like:

    In file included from MyModule_module.cc:11:0:
    lardata/Utilities/PtrMaker.h:46:159: note: #pragma message: lar::PtrMaker has become art::PtrMaker (see Breaking_Changes#larPtrMaker-moved-to-art .
    #pragma message("lar::PtrMaker has become art::PtrMaker (see Breaking_Changes#larPtrMaker-moved-to-art .")
    ^
    MyModule_module.cc: In member function ‘virtual void MyModule::produce(art::Event&)’:
    MyModule_module.cc:115:3: error: ‘PtrMaker’ is not a member of ‘lar’
    lar::PtrMaker<MyData> ptrMaker(event, *this);
    ^~~
    MyModule_module.cc:115:3: note: suggested alternative:
    In file included from lardata/Utilities/PtrMaker.h:44:0,
    from  MyModule_module.cc:11:
    /products/art/v2_08_03/include/art/Persistency/Common/PtrMaker.h:51:10: note:   ‘art::PtrMaker’
    class PtrMaker {
    ^~~~~~~~
    MyModule_module.cc:115:29: error: expected primary-expression before ‘>’ token
    lar::PtrMaker<MyData> ptrMaker(event, *this);
    ^

**Fix**: run the fix script as described in issue [redmine issue 17672](https://cdcvs.fnal.gov/redmine/issues/17672)
**Contact**: Lynn Garren

Geometry and utility code moved to larcorealg
------------------------------------------------------------------------------------------------

**When was committed**: [v06_43_00](ReleaseNotes064300)
**Motivation**: geometry and utilities that are independent of the *art* framework are moved into a repository (`larcorealg`) also independent of the framework, that can be more nimbly used in gallery, ROOT macros and other environments
**Affects**: all code using LArSoft geometry and all code using the small utilities being moved (almost everything from `larcore/TestUtils` and `larcore/CoreUtils`, except for `ServiceUtils.h`)
**Failure when not fixed**: compiler and/or linker errors
**Fix**: setup the latest version of `larsoft` and run the script provided in there, e.g.

    v06_43_00-UpdateGeometryToLArCoreAlg.py -Uv sourceDir/*

and check the changes; finally, *add `--doit` argument to apply them*. Note that the script fixes only C++ source code and `CMakeLists.txt` files (no changes are needed in FHiCL configuration). See issue [redmine issue 17099](https://cdcvs.fnal.gov/redmine/issues/17099) for more details.
**Contact**: Gianluca Petrillo

Update to GCC 6
------------------------------------

**When was committed**: [v06_32_00](ReleaseNotes063200)
**Motivation**: update to a more modern compiler, fully C++14 compliant (and with some C++17 features)
**Affects**: potentially all code
**Failure when not fixed**: compiler and/or linker errors
**Fix**: check out the [GCC 6 migration](Updating_code_to_GCC_6) page

**Contact**: Lynn Garren, Gianluca Petrillo

Update to art 2.6
---------------------------------------

**When was committed**: [v06_30_00](ReleaseNotes063000)
**Motivation**: rationalization and consolidation of libraries
**Description**:

-   there is only one canvas library, named `canvas`
-   the `cetlib` library has been split into `cetlib` and `cetlib_except`
-   `cetlib/demangle.h` is now `cetlib_except/demangle.h`

**Affects**: code including `cetlib` libraries and linking to `cetlib` or `canvas` libraries
**Failure when not fixed**: linker errors, `cetlib` headers not found
**Fix**: run the script `UpdateArt206.sh` (`${LARSOFT_DIR}/bin/v06_30_00-art206/UpdateArt206.sh` in `larsoft` repository)

**Contact**: Lynn Garren

SpaceCharge interface change
--------------------------------------------------------------

**When was committed**: [v06_29_00](ReleaseNotes062900)
**Motivation**: optimization of `SpaceCharge` service provider performances and migration toward a uniform 3D point/vector interface
**Affects**: code using or implementing `larevt/SpaceCharge/SpaceCharge.h`
**Failure when not fixed**:

-   when using the provider:
    -   compilation errors about no `SpaceCharge` method available which takes three `double` arguments
    -   compilation errors about not being able to convert a `geo::Vector_t` into a `std::vector<double>`
-   when implementing the provider:
    -   method declared `override` does not override anything (because the base class member that was overridden has changed signature)
    -   call of an abstract method (because the derived class did not define the base class abstract method, which therefore is being called directly)

**Fix**:

-   update the user code to pass a [`geo::Point_t`](http://nusoft.fnal.gov/larsoft/doxsvn/html/namespacegeo.html#a8f50958e1ae782539f468fe82b56e680) as argument instead of its three components; information about that type can be found in the [From ROOT vectors (TVector3) to ROOT GenVector](From_ROOT_vectors_(TVector3)_to_ROOT_GenVector) wiki page
-   update the code to receive a [`geo::Vector_t`](http://nusoft.fnal.gov/larsoft/doxsvn/html/namespacegeo.html#ac78157942b179c6abb41ed24ccb4560a) instead of a `std::vector<double>`; components are accessed with `X()`, `Y()` and `Z()` instead of index operator `[0]`, `[1]` and `[2]`.

If the used code needs to convert back to `std::vector<double>` in order to use the result, please contact LArSoft or [open a request](https://cdcvs.fnal.gov/redmine/projects/larsoft/issues/new) to have that interface extended to also support `geo::Vector_t`.

**Contact**: Gianluca Petrillo

undefined reference to TGeoMatrix::LocalToMaster
----------------------------------------------------------------------------------------------------

**When was committed**: [v06_28_00](ReleaseNotes062800)
**Motivation**: add geometry support for dual phase detector
**Affects**: code `using larcore/Geometry/LocalTransformation.h`, *directly or indirectly* (The problem is rare.)
**Failure when not fixed**:

    In function `geo::LocalTransformation<TGeoHMatrix>::LocalToWorld(double const*, double*) const':
    /scratch/workspace/larsoft-v06_28_00/SLF6/prof/build/larcore/v06_06_00/include/larcore/Geometry/LocalTransformation.h:79: undefined reference to `TGeoMatrix::LocalToMaster(double const*, double*) const' 

**Fix**: add `${ROOT_GEOM}` to the link list. As a reminder, the specific place(s) where to add it depend on what is the target being linked:

-   a module: add `${ROOT_GEOM}` to the `simple_plugin()` link list for that module, or if there is none, to the `MODULE_LIBRARIES` list of `art_make()`
-   a service: add `${ROOT_GEOM}` to the `simple_plugin()` link list for that service, or if there is none, to the `SERVICE_LIBRARIES` list of `art_make()`
-   just a library: add `${ROOT_GEOM}` to the `LIB_LIBRARIES` list of `art_make()` or to the `LIBRARIES` list of `art_make_library()`, whichever is present

**Contact**: Gianluca Petrillo

Deprecated methods of recob::Track
------------------------------------------------------------------------

**When was committed**: [v06_23_00](ReleaseNotes062300)
**Motivation**: first stage of the complete revision of `Recob::Track`: internal `recob::Track` structures have been rewritten and some minor changes to the interface are required.
**Affects**: code using the deprecated `recob::Track` methods, or the underlying new classes
**Failure when not fixed**: compilation warnings about deprecated `recob::Track`, `recob::TrackTrajectory` or `recob::Trajectory` method usage
**Fix**: see [note 6](https://cdcvs.fnal.govhttps://cdcvs.fnal.gov/redmine/issues/14281#note-6) of issue [redmine issue 14281](https://cdcvs.fnal.gov/redmine/issues/14281)
**Contact**: Giuseppe Cerati and Gianluca Petrillo.

lardata/RecoBaseArt renamed lardata/ArtDataHelper
------------------------------------------------------------------------------------------------------

**When was committed**: [v06_22_00](ReleaseNotes062200)
**Motivation**:

A new MVA data product will be introduced this week in lardataobj. Accompanying this data product is a new helper class that manages the interactions required by art. The functionality of this helper is similar to that of existing code in lardata/RecoBaseArt.

In order to provide a single, more descriptive home for these classes and any future code of this type, we are moving lardata/RecoBaseArt, along with its contents and the new helper class to lardata/ArtDataHelper.

**Affects**: code accessing RecoBaseArt
**Failure when not fixed**: compilation error or runtime fcl error
**Fix**: run UpdateArtDataHelper.sh
**Contact**: The SciSoft Team

LArSeedService from larsim replaced by NuRandomService from nutools
--------------------------------------------------------------------------------------------------------------------------------------------

**When was committed**: [v06_16_00](ReleaseNotes061600)
**Motivation**: the service will be used by the gas tpc
**Affects**: code accessing LArSeedService
**Failure when not fixed**: compilation error or runtime fcl error
**Fix**: run UpdateToNuRandomService.py
**Contact**: Brian Rebel

Removing deprecated lar::utils namespace
------------------------------------------------------------------------------------

**When was committed**: [v06_14_00](ReleaseNotes061400)
**Motivation**: `lar::issues` and `lar::issue` namespaces were inadvertedly present at the same time; one is enough
**Affects**: code accessing `lar::utils` namespace
**Failure when not fixed**: compilation error (undefined function)
**Fix**: replace `lar::utils` with `lar::util`; note: no replacement script is provided.
**Contact**: Gianluca Petrillo

Reorganization for nutools and calorimetry
------------------------------------------------------------------------------------------

**When was committed**: [v06_11_00](ReleaseNotes061100)

### Code moving into nutools

The nutools product has absorbed the following classes that currently live in larsim:

-   ParticleList
-   ParticleHistory
-   EveIdCalculator
-   EmEveIdCalculator
    These classes are not specific to LAr, and are useful for particle navigation, so are being moved in order to provide access to other experiments. The new location will be nutools/ParticleNavigation.

### Removal of algorithm code from lardata and deprecating BezierTrack

In order to remove algorithm code from lardata, we are making the following changes:

-   To create a home for algorithm code currently in lardata
    -   Move larana/larana/Calorimetry/\* to larreco/larreco/Calorimetry/\*
-   Move algorithm code currently in lardata to more appropriate locations
    -   Move lardata/lardata/AnalysisAlg/Chi2PIDAlg\* to larana/larana/ParticleIdentification/
    -   Move lardata/lardata/AnalysisAlg/CalorimetryAlg\* to larreco/larreco/Calorimetry/
-   BezierTrack uses CalorimetryAlg, so needs to move also. Since there few clients and serious design issues with this class, we propose deprecating BezierTrack. Before removing it from the repository, it will be moved temporarily to larreco along with CalorimetryAlg
    -   Move lardata/lardata/RecoObjects/BezierTrack\* to larreco/larreco/Deprecated/

### Experiment code

-   Required changes for argoneutcode, dunetpc, lariatsoft, and uboonecode are in feature/for_v06_11_00

### Updating user code

    setup larsoft v06_11_00 (or later)
    cd to your repository directory
    ${LARSOFT_DIR}/bin/v06_11_00-reorganize/UpdateReorg611.sh

Data member changed in SimChannel
------------------------------------------------------------------------

**When was committed**: [v06_02_00](ReleaseNotes060200)
**Motivation**: `sim::SimChannel` used to store its information using an associative container (`std::map`) associating to a TDC count (a time) a collection of electrons and deposited energies. The internal representation has been changed to a `std::vector` of pairs (TDC count, collection of electrons etc.) instead. This produces gains in speed and memory usage, with a potential for slow down during creation.
**Affects**: code accessing `sim::SimChannel::TDCIDEMap()` may be affected
**Does not affect**: `sim::Channel` from old input files should be transparently updated
**Failure when not fixed**: compilation error (e.g., can’t convert a `std::vector<...>` into a `std::map<...>`)
**Fix**: the best way to iterate through values in `sim::SimChannel::TDCIDEMap()` is:

    for (auto const& TDCIDEs: simch.TDCIDEMap()) {
    auto TDC = TDCIDEs.first;
    auto const& IDEs = TDCIDEs.second;
    // ...
    } // for

If temporary storage of the result of `sim::SimChannel::TDCIDEMap()` is needed,

    auto const& channelIDEs = simch.TDCIDEMap();

can replace the old `const std::map<unsigned short, std::vector<sim::IDE>>& channelIDEs = simch.TDCIDEMap();`. Likewise, the declaration of iterators should be fixed, best again using `auto` (who wants to type those 70 characters anyway?).
**Contact**: Brian Rebel

Repackaging of data products and adoption of ROOT 6
------------------------------------------------------------------------------------------------------------

**When was committed**: [v06_00_01](ReleaseNotes060001) (also [v06_00_00](ReleaseNotes060000))
**Failure when not fixed**: compilation error (headers from `nutoold`, `larcore`, `lardata`, `larsim` not found); possibly other issues too
**Fix**: [run the fix script](ReleaseNotes060000) from `larsoft` repository: ` ${LARSOFT_DIR}/bin/v06_00_00-larsoftobj/UpdateToLArSoftObj.sh`; in some cases, you may also need to run `update_sources.sh` (also in that directory); or change manually paths and library names as needed.

**Contact**: Lynn Garren

Moved test utility headers and libraries
--------------------------------------------------------------------------------------

**When was committed**: [v05_13_00](ReleaseNotes051300)
**Failure when not fixed**: compilation error: headers `lardata/DetectorInfo/Provider*.h` and `test/Geometry/*.h` not found; linker errors: `-ltest_Geometry` library not found
**Fix**: run the fix script from `larsoft` repository: `${LARSOFT_DIR}/bin/UpdateTestInfrastructure.py -Uv <repository path>`; check the proposed changes and, if they look reasonable, add a `--doit` argument. Or else, fix the `#include` and library names manually:

||
|old|new|
|`test/Geometry`|`larcore/TestUtils`|
|`lardata/DetectorInfo/Provider{Pack,Util}.h`|`larcore/CoreUtils`|
|`test_Geometry`|`larcore_TestUtils`|

**Contact**: Gianluca Petrillo

SpaceCharge improvements require new call
----------------------------------------------------------------------------------------

**When was committed**: [v05_12_00](ReleaseNotes051200)
**Failure when not fixed**:

    %MSG-w LArVoxelReadout:  LArG4:largeant 27-May-2016 13:08:05 CDT run: 1 subRun: 0 event: 10
    step cannot be found in a TPC
    ---- ServiceNotFound BEGIN
    Service  unable to find requested service with compiler type name 'spacecharge::SpaceChargeService'.
    ---- ServiceNotFound END

**Fix**:

-   As a result of the Space Charge improvements in larsoft v05_12_00, each experiment needs to modify their basic services list to include the following:
    -   SpaceCharge: @local::standard_spacecharge
-   Also, the following must be included:
    -   \#include “spacecharge.fcl”

SeedService from artextensions replaced by LArSeedService
------------------------------------------------------------------------------------------------------------------------

**When was committed**: [v05_11_00](ReleaseNotes051100)
**Motivation**: branching from `artextensions`’s `SeedService` to add custom features
**Affects**: all code and configuration files using `SeedService` service
**Failure when not fixed**:

-   will throw an exception about service not configured when not updating the configuration to include `LArSeedService`

**Fix**: run the update script `UpdateToLArSeedService.py` in `larsoft` package (`UpdateToLArSeedService.py -Uv FilesOrDirectories` to check, add `--doit` option to apply the update)

Explicit override of `LArG4` random seeds
--------------------------------------------------------------------------------------

**When was committed**: [v05_09_00](ReleaseNotes050900)
**Motivation**: particle, electron and photon generation by Geant4 is now independent of their transportation to TPC wires and optical systems
**Affects**: `LArG4` module configurations explicitly specifying the random seed (`Seed` parameter)
**Failure when not fixed**: will throw an exception (`Configuration` error) at run time when constructing `LArG4` module
**Fix**: either:

-   replace `Seed` with three parameters, one for each random stream: `GEANTSeed`, `PropagationSeed` and `RadioSeed` (use different values!)
-   let `SeedService` take care of the random seeds

`sim::ParticleList` can’t be copied any more
-----------------------------------------------------------------------------------------

**When was committed**: [v05_09_00](ReleaseNotes050900)
**Motivation**: Copy of `sim@ParticleList` objects is extremely expensive and most often not needed. The copy constructor and assignment have been removed to avoid the accidental use of copy, and replaced with move operations.
**Affects**: Code trying (most likely, inadvertently) to copy the particle list.
**Failure when not fixed**: Compilation error: copy constructor (`sim::ParticleList::ParticleList (sim::ParticleList const&)`) or copy assignment operator (`sim::ParticleList& sim::ParticleList::operator= (sim::ParticleList const&)`) are deleted
**Fix**: avoid the copy! assign the particle list to a constant reference (`sim::ParticleList const& plist = ...`). If a copy is really needed, use the new `ParticleList::MakeCopy()` explicitly.

Photon Library returns plain data rather than vectors
----------------------------------------------------------------------------------------------------------------

**When was committed**: [v05_09_00](ReleaseNotes050900)
**Motivation**: The photon library contains a map of a vector of “visibility” information in a discretized representation of the TPC active volume (*voxels*). The visibility information consists of the number of photons per energy seen by each of the photodetector channels. The number of voxels needs to be very high (in MicroBooNE it is currently 2.25M) and the information was represented by a nested vector (`std::vector<std::vector<float>>`), the outer vector being indexed by voxel. Changing this representation into a flat vector with proper indicing support saves about 50 MB of memory.
**Affects**: code querying `PhotonVisibilityService::GetCounts()`, including e.g. `PhotonVisibilityService::GetAllVisibilities()` that uses it internally
**Failure when not fixed**: compilation error asserting that a `float const*` can’t be converted into a `std::vector<float>` or that `float const*` has no member functions (`at()`, `size()`, etc.)
**Fix**:

1.  assign the result of `PhotonVisibilityService::GetCounts()` to a `float const*` variable instead of a vector;
2.  when using a method that requires a location (e.g., `PhotonVisibilityService::GetAllVisibilities()`), check if the returned pointer is null: when the location is out of range, it used to return an empty vector, on which you might have an *implicit* check, but now the check must be explicit;
3.  if the number of channel is needed, query the service directly with `PhotonVisibilityService::NOpChannels()`; all voxels are bound to have the same number of channels.

photon detector reconstruction
------------------------------------------------------------------

**When was committed**: [v05_04_00](ReleaseNotes050400)
**Motivation**: There is be a separate module to produce OpHits – OpHitFinder_module, while OpFlashFinder_module will produce only OpFlashes and OpHit-OpFlash associations (previously both OpHits and OpFlashes were produced in OpFlashFinder).
**Affects**: all code running photon detector reconstruction
**Failure when not fixed**: FHiCL files stop running properly
**Fix**:

    If you run photon detector reconstruction, your FHiCL file should have a producer
    labelled "opflash" (or something similar) -- this is a module used to generate OpHits and OpFlashes,

    that will now produce only OpFlashes.

    In addition to that, you now need "ophit" -- a producer running OpHitFinder and generating OpHits.

    There are three places in a FHiCL file where modifications are required:

    1. Module definitions:

    physics
    {
    producers
    {
    ...
    ophit:   @local::yourexperiment_ophit   # You need to add this
    opflash: @local::yourexperiment_opflash # You should have this
    ...
    }
    ...
    }

    2. Reconstruction path definition:

    ...
    #reco: [ ... opflash ... ] # You probably already have this
    reco: [ ... ophit, opflash ... ] # You need this instead
    ...

    3. Changing module parameters at the end of the FHiCL file:

    for guidance look for standard_ophit and standard_opflash
    in ${LARANA_DIR}/job/opticaldetectormodules.fcl.

Moving `recob::Track` methods out of the class
----------------------------------------------------------------------------------------------

**When was committed**: [v05_04_00](ReleaseNotes050400)
**Motivation**: data products should have minimal dependencies, but `recob::Track` depended on `Geometry` service. Functionality of the two offending methods have been moved into `lardata/RecoBaseArt/TrackUtils.h` as `lar::utils::TrackPitchInView` (was `recob::Track::TrackPitchInView`) and `lar::utils::TrackProjectedLength()` (from `recob::Track::ProjectedLength()`). They take the same arguments and return the same value as before, except that the reference to a track has been added as the first argument.
**Affects**: calls to `recob::Track::PitchInView()` and `recob::Track::ProjectedLength()`
**Failure when not fixed**: compiler error: `‘const class recob::Track’ has no member named ‘PitchInView’` (the same with `` `ProjectedLength` ``)
**Fix**:

1.  replace `pTrack->PitchInView(view[, point])` with `lar::utils::TrackPitchInView(*pTrack, view[, point])`, and `pTrack->ProjectedLength(view)` with `lar::utils::TrackProjectedLength(*pTrack, view)` (and `track.PitchInView(view[, point])` with `lar::utils::TrackPitchInView(track, view[, point])` if you are using a reference to track instead of a pointer)
2.  add `#include "lardata/RecoBaseArt/TrackUtils.h"`
3.  add `lardata_RecoBaseArt` in the module/library/service pertaining the class you fixed in `CMakeLists.txt` (it might be there already!)

Repository structure refactoring
----------------------------------------------------------------------

**When was committed**: [v05_00_00](ReleaseNotes050000)
**Motivation**: uniforming to the include path standard `#include "reponame/path/header.h"` used everywhere else in FNAL products except nutools
**Affects**: all code based on versions of LArSoft before `v05_00_00`
**Failure when not fixed**: compiler errors: missing header
**Fix**: a fully automated fixing script is available in `larsoft` repository as `larsoft/bin/update_sources.sh`

Core service refactoring
------------------------------------------------------

**Related issue:** [redmine issue 10888](https://cdcvs.fnal.gov/redmine/issues/10888)
**When was committed**: [v05_00_00](ReleaseNotes050000)
**Motivation**: refactoring of core services to apply service factorization model and allow experiment-specific implementations
**Affects**: all code based on versions of LArSoft before `v05_00_00` that uses core services (`LArProperties`, `DetectorProperties`, `TimeService` and possibly others)
**Failure when not fixed**: compiler errors (unknown class, undefined service class methods) and run-time errors (on service initialization)
**Fix**: extensive description and more compact instructions at [Core Services Review](Core_Services_Review)

Data products must be put into the event
--------------------------------------------------------------------------------------

**Related issue:** [redmine issue 7852](https://cdcvs.fnal.gov/redmine/issues/7852)
**When was committed**: [v04_28_00](ReleaseNotes042800)
**Motivation**: *art* new feature: producer and filter modules promise on construction that they will deliver some data products; the expected behaviour is for them to keep that promise. Failure to do so now triggers an exception.
**Affects**: producer and filter modules that by design or by mistake declare with `produces<>()` that they would put a product into the event, but then for at least one event they don’t
**Failure when not fixed**: when `produce()`/`filter()` method returns from processing a given event, and any promised products has not been put into that event, an exception like the following one will be thrown:

    %MSG-s ArtException:  PostPathEndRun end_path 23-Oct-2015 16:05:49 CDT  PostEndRun
    cet::exception caught in art
    ---- EventProcessorFailure BEGIN
    An exception occurred during current event processing
    ---- ScheduleExecutionFailure BEGIN
    ProcessingStopped.

    ---- LogicError BEGIN
    The following products have been declared with 'produced',
    but they have not been placed onto the event:
    =========================
    Branch Type = Event
    Process Name = Detsim
    ModuleLabel = triggersim
    Branch ID = 1585150159
    Class Name = std::vector<raw::Trigger>
    Friendly Class Name = raw::Triggers
    Product Instance Name = 
    =========================
    cet::exception going through module UBTriggerSim/triggersim run: 1 subRun: 0 event: 1
    ---- LogicError END
    Exception going through path simulate
    ---- ScheduleExecutionFailure END
    cet::exception caught in EventProcessor and rethrown
    ------------------------------------------------------------
    Another exception was caught while trying to clean up files after
    the primary exception.  We give up trying to clean up files at
    this point.  The description of this additional exception follows:
    cet::exception
    ---- FatalRootError BEGIN
    Fatal Root Error: @SUB=TTree::SetEntries
    Tree branches have different numbers of entries, with 5 maximum.
    ---- FatalRootError END
    ---- EventProcessorFailure END

In this case, the module `UBTriggerSim` (module label `triggersim`) promised to write into the event a `std::vector<raw::Trigger>` data product with empty product instance label, but it did not. The reason is this module was designed to put trigger products only if there is at least one of them. This design is considered an error, and now that triggers an exception.
**Fix**: The compliant behaviour is at least to put a “empty” (meaning, default-constructed) data product. In the example above, this would translate into an empty vector of `raw::Trigger`, implying that no trigger could be reconstructed. In case of an error, instead, the module should not put an empty trigger vector, but rather throw an exception.
In cases where it is absolutely needed, the check can be disabled for a specific module instance. LArSoft *discourages* this practise and invites who feels the need to use that escape route to discuss that need with the LArSoft team.
**Examples**:

-   a common trigger of this problem is the detection of an error condition that triggers an early termination:

        if (InputList.empty()) return; // BAD: no promised product is put into the event

    at the beginning of `produce()` method. This will cause the promised products not to be put. The correct behaviour is to put empty products before returning.

-   another example is a producer promising a list of products, with the intention of filling just one according to the conditions.
    If these conditions are known since the beginning, a conditional `produces<>()` call should be used:

        if (UseOneWindow) {
        produces<std::vector<raw::RawDigit>>();
        }
        else {
        produces<std::vector<raw::RawDigit>>("pre");
        produces<std::vector<raw::RawDigit>>();
        produces<std::vector<raw::RawDigit>>("post");
        }

    and using the same logic to put the proper products into the event. If the answer is not known that early, either empty data products should be put or, if the design absolutely requires them not to be there, a more complex design with multiple modules and filters is required, where each producer always delivers what it promises and filter module(s) decides which producers to execute.

Unreadable old data files
--------------------------------------------------------

**Related issue:** [redmine issue 10614](https://cdcvs.fnal.gov/redmine/issues/10614)
**When was committed**: [v04_27_00](ReleaseNotes042700)
**Fixed in:** [v04_28_00](ReleaseNotes042800)
**Motivation**: *art* update
**Affects**: `v04_27_00` and `v04_27_01` reading all input files created with LArSoft older than `v04_27_00`
**Does not affect**: files created with LArSoft `v04_27_00` or newer, read by any LArSoft version
**Failure when not fixed**: on reading a input file with no `Results` branch, that is an input file created with *art* older than `v1_16_00`, LArSoft `v04_27_00`, *art* will complain as documented in issue [redmine issue 10614](https://cdcvs.fnal.gov/redmine/issues/10614 "Bug: larsoft v04_27_00 with art v1_16_02 cannot read old MC/data files (Closed)")
**Fix**: avoid LArSoft `v04_27_00` and `v04_27_01` (the only ones based on bugged *art*)

IChannelStatusService readiness
--------------------------------------------------------------------

**Related issue:** [redmine issue 1083](https://cdcvs.fnal.gov/redmine/issues/1083)
**When was committed**: [v04_25_00](Release_Notes_04_25_00#LArSoft-v04_25_00-Release-Notes)
**Motivation**: a new `IChannelStatusService` is introduced replacing the old `ChannelFilter` class to provide information about TPC channel quality
**Change**: new service configuration is needed.
**Affects**: all FHiCL configurations running modules or algorithms that use `ChannelFilter` or the `IChannelStatusService` replacement
**Failure when not fixed**: art will complain that there is no service `IChannelStatusService` available and throw a fatal exception:

    ---- ServiceNotFound BEGIN
    Service  unable to find requested service with compiler type name 'lariov::IChannelStatusService'.
    cet::exception going through module ModuleClassName/modulelabel run: 1 subRun: 0 event: 1
    ---- ServiceNotFound END

**Fix**: add the proper configuration to the FHiCL file:

-   if your experiment has no bad channels, then you can use the standard configuration that is in the `develop` branch of `larevt` package (`larevt/Filters/channelstatus.fcl`):

        #include "channelstatus.fcl" 

        services.IChannelStatusService: @local::standard_channelstatus

    or equivalent.

-   if your experiment is MicroBooNE, look for the configuration you need at `uboonecode/uboone/Utilities/services_microboone.fcl`
-   if your experiment has bad channels, you’ll need to provide a configuration for that service that includes them; an example for a fixed set of bad channels is shown in `larevt/test/Filters/test_channel_status.fcl`; a working one will be committed for ArgoNeuT at `argoneutcode/ArgoneutFilters/channelstatus_argoneut.fcl`

New dependency on boost
----------------------------------------------------

If you see undefined reference errors similar to those shown below, add \${Boost_SYSTEM_LIBRARY} to the library link list

    CMakeFiles/LArPandoraInterface.dir/LArPandoraBase.cxx.o: In function `__static_initialization_and_destruction_0':
    /products/boost/v1_57_0/Linux64bit+2.6-2.12-e7-prof/include/boost/system/error_code.hpp:221: undefined reference to `boost::system::generic_category()'
    /products/boost/v1_57_0/Linux64bit+2.6-2.12-e7-prof/include/boost/system/error_code.hpp:222: undefined reference to `boost::system::generic_category()'
    /products/boost/v1_57_0/Linux64bit+2.6-2.12-e7-prof/include/boost/system/error_code.hpp:223: undefined reference to `boost::system::system_category()'

Removed generic service configuration
--------------------------------------------------------------------------------

**Related issue:** [redmine issue 5100](https://cdcvs.fnal.gov/redmine/issues/5100)
**When was committed**: [v02_05_02](Release_Notes_02_05_02#LArSoft-v02_05_02-Release-Notes)
**Motivation**: configuration of service entangled settings for different experiments, resulting in epic unmaintainability
**Change**: `services.fcl` and `evdservices.fcl` have been removed; see also [LArSoft Librarians’ meeting on August 26, 2014](https://indico.fnal.gov/getFile.py/access?contribId=4&resId=0&materialId=slides&confId=8869)
**Affects**: configuration (FHiCL) files including directly `services.fcl` or `evdservices.fcl`
**Failure when not fixed**: `art` will complain immediately at configuration parsing time, before any processing happens
**Fix**: replace `#include "services.fcl"` lines using `services_Experiment.fcl` instead (e.g. `services_lbne.fcl`, `services_argoneut.fcl`);

Relocation of `TrackIDE`
----------------------------------------------------

**Related issue:** none
**When was committed**: [v02_05_00](Release_Notes_02_05_00#LArSoft-v02_05_00-Release-Notes)
**Motivation**: `TrackIDE` class represents a general simulation concept, not specific to “cheating”
**Change**: `TrackIDE` has been placed into a different namespace and header file: from `cheat::TrackIDE` living in `MCCheater/BackTracker.h`, into `SimChannel.h` as `sim::TrackIDE`
**Affects**: code referring to `cheat::TrackIDE` class
**Failure when not fixed**: no `TrackIDE` symbol defined in `cheat` namespace
**Fix**: change `cheat::TrackIDE` to `sim::TrackIDE` in your code, including `SimChannel.h` (`#include "Simulation/SimChannel.h"`) and removing the inclusion of `MCCheater/BackTracker.h` unless still needed;
It might be necessary to fix the linkage to include `libSimulation.so`.

`TimeService` and its changes
--------------------------------------------------------------

**Related issue:** [redmine issue 6432](https://cdcvs.fnal.gov/redmine/issues/6432)
**When was committed**: `v02_01_00`; fixes added until `v02_02_01`
**Motivation**: `TimeService` introduces a coherent scheme of timings between the subdetector and between the different components of the software
**Change**: `TimeService` has been added to the default services for simulation and for event display
**Affects**: configuration files using their own service list (possibly others too)
**Failure when not fixed**:

    ---- OtherArt BEGIN
    ServiceCreation
    ---- Can't find key BEGIN
    SampleFreq
    ---- Can't find key END
    cet::exception caught during construction of service type opdet::OpDigiProperties:
    ---- OtherArt END

**Fix**: `OpDigiProperties` service was replaced by `TimeService`: remove it
**Failure when not fixed**:

    Failed to parse the configuration file 'evd_lbne35t.fcl' with exception
    ---- Can't find key BEGIN
    argoneut_timeservice (at part "argoneut_timeservice")
    ---- Can't find key END

**Fix**: part of the configuration update was erroneously left out of `v02_02_00`: update to a version after `v02_02_00`

Renaming the FCL file configuring `pandora` code
----------------------------------------------------------------------------------------------------

**Related issue:** [redmine issue 5363](https://cdcvs.fnal.gov/redmine/issues/5363)
**When was committed**: `v02_01_01`
**Motivation**: resolve the ambiguity of the FCL file name, which hints to a service but does not provide any (not in the `art` sense)
**Change**: The FCL file `larpandora/LArPandoraInterface/pandoraservices.fcl` has been renamed into `larpandora/LArPandoraInterface/pandoramodules.fcl`
**Affects**: a few FCL files
**Fixes**: All the FCL files including `pandoraservices.fcl` need to be changed to include `pandoramodules.fcl` instead; for example, FCL files in `ubfcl` package have been identified which require the fix.
**Failure when not fixed**: `lar` will immediately abort complaining that `pandoraservices.fcl` can’t be found.

`PhotonLibrary` methods made constant
------------------------------------------------------------------------------

**Related issue:** none
**When was committed**: Wed Mar 5 20:35:06 2014 -0600
**Commits/tag**: `larsim` commit:b42fcc5ea4de0493661697763cebd07be95a7189 `larana` commit:e966a76ff4ad6d9866e96484f2c33988f71efe81
**Motivation**: solve a memory leak in `PhotonLibrary::GetCounts` arising on (rare?) non-existing voxel request
**Change**: when asked for a counts list of a non-existing voxel, `PhotonLibrary::GetCounts` used to create and return a new vector of counts which the called can’t possibly know whether to delete or not. Now the functions `PhotonLibrary::GetCounts(size_t)`, `PhotonVisibilityService::GetAllVisibilities(int)` and `PhotonVisibilityService::GetAllVisibilities(double*)` are `const` functions returning `const std::vector<float>*`; when a non-existing voxel is asked, a static empty vector is returned (always the same).
**Affects**: code (1) accessing the photon library voxel information or (2) trying to change the `PhotonLibrary` content
**Fixes**: declare the `std::vector<float>*` receiving the result of the changed functions as constant (`const std::vector<float>*`). Changing those values become not supported… if that’s really needed, additional interface is required.
**Failure when not fixed**: compilation will fail when trying to assign the result of the changed functions to non `const` vectors.
**Notes**: the commit also have three different other changes:

1.  slightly different solution to the memory leak of [redmine issue 5569](https://cdcvs.fnal.gov/redmine/issues/5569), involving the creation of objects on the stack rather than on the heap;
2.  photon table (`OpDetPhotonTable`) is emptied at the end of `LArG4::produce` instead of the beginning; since `art` prescribes the modules communicate only through the `Event` (and somehow through services), the photon library /should/ not be used afterwards; in this way, more memory is available to the event afterwards [this change was reverted because I am not completely sure it’s harmless]
3.  the lookup table of the `PhotonLibrary` now contains static vectors rather than pointers to vectors; that was pointless overhead since all the vectors are always allocated; a future optimization allocating vectors on demand can also keep the static vectors (a vector is basically two pointers, so the increase in space respect to a empty pointer is small)
