LArSoft v03_04_03 Release Notes
======================================================================

[list of LArSoft releases](LArSoft_release_list)
[Download instructions](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v03_04_03/larsoft-v03_04_03.html)

Purpose
--------------------

Changes to develop since v03_04_02.

Change List
============================

larsoft v03_04_03
------------------------------------------

-   2014-11-24 Lynn Garren : larsoft v03_04_03 for larsoft v03_04_03
-   2014-11-19 Lynn Garren : generate buildcfg and product list

lareventdisplay v03_02_06
----------------------------------------------------------

-   2014-11-24 Lynn Garren : lareventdisplay v03_02_06 for larsoft v03_04_03
-   2014-11-20 Herbert Greenlee : Fix ortho3D selection box display.

larexamples v03_02_06
--------------------------------------------------

-   2014-11-24 Lynn Garren : larexamples v03_02_06 for larsoft v03_04_03

larpandora v03_03_05
------------------------------------------------

-   2014-11-24 Lynn Garren : larpandora v03_03_05 for larsoft v03_04_03
-   2014-11-23 Andrew Blake : Adding a new analysis module to study cosmic tagging of PFParticles
-   2014-11-22 Andrew Blake : Streamlining the creation of SpacePoints in LArPandoraParticleCreator, and organising code so that recob::Seed objects can be written out along with their associations to recob::PFParticles. Also modifying PFParticleTrackMaker_module so that it will only build tracks from track-like PFParticles (as determined by ‘PdgCode’ member varaible).
-   2014-11-20 Andrew Blake : Adding a new PFParticleTrackMaker Producer module, which builds recob::Track objects from primary PFParticles. Also, tidy up geometry and exception handling.

larana v03_03_03
----------------------------------------

-   2014-11-24 Lynn Garren : larana v03_03_03 for larsoft v03_04_03

larreco v03_03_03
------------------------------------------

-   2014-11-24 Lynn Garren : larreco v03_03_03 for larsoft v03_04_03
-   2014-11-24 Bruce Baller : Merge branch ‘feature/cctm’ into develop
-   2014-11-24 Bruce Baller : CCTrackMaker development
-   2014-11-21 Bruce Baller : update produce deps to larreco v03_03_01
-   2014-11-21 Bruce Baller : CCTrackMaker development
-   2014-11-20 Herbert Greenlee : Update debugging output.

larsim v03_02_06
----------------------------------------

-   2014-11-24 Lynn Garren : larsim v03_02_06 for larsoft v03_04_03

larevt v03_02_06
----------------------------------------

-   2014-11-24 Lynn Garren : larevt v03_02_06 for larsoft v03_04_03
-   2014-11-21 Tingjun Yang : add missing fcl

lardata v03_03_03
------------------------------------------

-   2014-11-24 Lynn Garren : lardata v03_03_03 for larsoft v03_04_03

larcore v03_03_03
------------------------------------------

-   2014-11-24 Lynn Garren : larcore v03_03_03 for larsoft v03_04_03
-   2014-11-20 Lynn Garren : larsoft v03_04_02
-   2014-11-19 Gianluca Petrillo : Merge branch ‘feature/WireIntersectionTest’ into develop
-   2014-11-19 Gianluca Petrillo : - moved the Geometry tests in the test directory they belong - removed experiment-specific geometry files (LBNE and MicroBooNE) - removed old test scripts; to test a geometry, write a specific FHiCL file (e.g. lbnecode/test/Geometry/test_geometry_lbne35t.fcl)
-   2014-11-19 Gianluca Petrillo : - Geometry::WireCoordinate() returns double now: rounding errors were relevant - added a test for the new implementation of WireIDsIntersect()
-   2014-11-17 Gianluca Petrillo : Added simple stream output functions for WireID, PlaneID and TPCID.
-   2014-11-17 Gianluca Petrillo : Geometry: made some methods constants (as they should have been)
-   2014-11-17 Gianluca Petrillo : GeometryTest: added a bit of documentation and the option to specify which tests to run
