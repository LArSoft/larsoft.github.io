# Guidelines on using the geometry (v10+)

Detailed information is available on the [geometry system page](LArSoft_V10+_Geometry_System) and at [important concepts](https://larsoft.org/important-concepts-in-larsoft/geometry/).

- Always use complete ID classes to identify a part of the detector.  For example, identify a plane with a `geo::PlaneID` object instead of just one index.  The `geo::PlaneID` object also includes information about the cryostat and TPC to which the plane belongs.  Complete ID types are defined [here](https://github.com/LArSoft/larcoreobj/blob/develop/larcoreobj/SimpleTypesAndConstants/geo_types.h).
    - Use geometry methods that take geometry IDs as arguments: prefer `geo::WireReadoutGeom::Nplanes(geo::TPCID const&)` over `geo::WireReadoutGeom::Nplanes()`, as the latter will use a default TPC, which is beyond the control of the user.
    - There is seldom a need for a geometry ID to "decay" to an index: e.g., a vector keyed by plane index.  The ID classes have comparison operators thus supporting associative lists (e.g. `std::map<geo::PlaneID, DataClass>`).
    - When a vector is the only reasonable choice, make sure the corresponding parent ID (`geo::TPCID` in the above example) is available so that the original ID can be easily reconstituted.
- Use world coordinates whenever possible.
    - Avoid computing these yourself (use e.g. `geo::TPCGeo::MinX()`, `geo::TPCGeo::MaxX()`, etc.)
- Instead of assuming the ID of the next channel is just one more than the channel ID of the current wire, use the channel ID of the next wire.
- Beware of assumptions:
    - There can be more than one cryostat and more than one TPC within each cryostat.
    - There are not always 3 wire planes; use `geo::WireReadoutGeom::Nplanes(tpcid)` to find out how many.
    - Do not rely on knowing where “0” is on an axis--use the `GeometryCore` interface instead.
    - Don't assume that mappings between readout channels and wires are one-to-one.
    - Don't assume that the wire pitch is the same on all planes (currently all wires on the *same* wire plane should have the same pitch, barring bugs)

When reviewing your (or others') code:

- Keep track of how the geometry object IDs move around.
- Investigate any hard-coded number and where it comes from.
- Be aware under what circumstances a return ID's validity should be checked.
- Check any `try`/`catch` blocks to make sure exceptions are correctly handled; if some code ignores an exception, it must explain why.
- Be suspicious of any code whose behavior relies on `geo::GeometryCore::DetectorName()` as it implies detector dependency.
