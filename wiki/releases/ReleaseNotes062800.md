LArSoft v06_28_00 Release Notes
======================================================================

-   **Table of contents**
-   [LArSoft v06_28_00 Release Notes](#LArSoft-v06_28_00-Release-Notes)
    -   [Purpose](#Purpose)
    -   [New features](#New-features)
    -   [Bug fixes](#Bug-fixes)
    -   [Breaking change](#Breaking-change)
    -   [Updated dependencies](#Updated-dependencies)
-   [Change List](#Change-List)
    -   [larsoft v06_28_00](#larsoft-v06_28_00)
    -   [lareventdisplay v06_03_01](#lareventdisplay-v06_03_01)
    -   [larexamples v06_01_18](#larexamples-v06_01_18)
    -   [larpandora v06_08_03](#larpandora-v06_08_03)
    -   [larwirecell v06_01_00](#larwirecell-v06_01_00)
    -   [larana v06_03_21](#larana-v06_03_21)
    -   [larreco v06_22_00](#larreco-v06_22_00)
    -   [larsim v06_14_00](#larsim-v06_14_00)
    -   [larevt v06_07_12](#larevt-v06_07_12)
    -   [lardata v06_16_00](#lardata-v06_16_00)
    -   [larcore v06_06_00](#larcore-v06_06_00)
    -   [larpandoracontent v03_02_00](#larpandoracontent-v03_02_00)
    -   [larsoftobj v1_14_00](#larsoftobj-v1_14_00)
    -   [lardataobj v1_13_01](#lardataobj-v1_13_01)
    -   [larcoreobj v1_08_00](#larcoreobj-v1_08_00)
    -   [larbatch v01_28_00](#larbatch-v01_28_00)
    -   [larutils v1_12_01](#larutils-v1_12_01)

[list of LArSoft releases](LArSoft_release_list)
Download instructions for [larsoft v06_28_00](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v06_28_00/larsoft-v06_28_00.html)
Download instructions for [just larsoftobj v1_14_00](http://scisoft.fnal.gov/scisoft/bundles/larsoftobj/v1_14_00/larsoftobj-v1_14_00.html)

Purpose
--------------------

-   changes in develop
-   approved features
-   get the latest ifdhc

New features
------------------------------

-   moving argoneut files and resolve [\#5104](/redmine/issues/5104 "Bug: Remove dependency of geometry.fcl in larcore on experiment-specific geometry fcl files. (Closed)")
    -   argoneutcode larcore lardata lareventdisplay larreco
    -   feature/tjyang_bug5104_moveargoneutfcl
-   geometry support for dual phase detector
    -   feature/gp_protoDUNEDP_trueOrientation
    -   larcoreobj, larcore, larreco;
    -   dunetpc, argoneutcode, lariatsoft, soon sbndcode;
-   database access for misconfigured channel determination
    -   larwirecell feature/eberly_asicdb
-   nutools v2_10_01
    -   GENIEHelper fix in feature/jhewes_HondaFlux
    -   feature/jwolcott_simb_multiplicities_master

Bug fixes
------------------------

Breaking change
------------------------------------

-   [geometry support for dual phase detector](Breaking_Changes#undefined-reference-to-TGeoMatrixLocalToMaster)

        In function `geo::LocalTransformation<TGeoHMatrix>::LocalToWorld(double const*, double*) const':
        /scratch/workspace/larsoft-v06_28_00/SLF6/prof/build/larcore/v06_06_00/include/larcore/Geometry/LocalTransformation.h:79: undefined reference to `TGeoMatrix::LocalToMaster(double const*, double*) const' 

    -   If you see this error, add \${ROOT_GEOM} to the appropriate CMakeLists.txt library list.
    -   This is rare, very few libraries are affected.

Updated dependencies
----------------------------------------------

||
|Product|Version|Qualifiers|Notes|
|nutools|v2_10_01|e10|[NuTools_Release_Notes](/redmine/projects/nutools/wiki/NuTools_Release_Notes#nutools-v2_10_00)|
|dk2nu|v01_05_00|e10:r6||
|ifdhc|v2_0_3|e10:p2711||
|ifdhc_config|v2_0_3b|||
|cetbuildtools|v5_06_07|||

Change List
============================

larsoft v06_28_00
------------------------------------------

-   2017-03-15 Lynn Garren : larsoft v06_28_00 for larsoft v06_28_00
-   2017-03-15 Lynn Garren : update dependency datbase
-   2017-03-15 Lynn Garren : using nutools v2_10_01

lareventdisplay v06_03_01
----------------------------------------------------------

-   2017-03-15 Lynn Garren : lareventdisplay v06_03_01 for larsoft v06_28_00
-   2017-03-12 Tingjun Yang : Move argoneut files to argoneutcode.

larexamples v06_01_18
--------------------------------------------------

-   2017-03-15 Lynn Garren : larexamples v06_01_18 for larsoft v06_28_00

larpandora v06_08_03
------------------------------------------------

-   2017-03-15 Lynn Garren : add missing library
-   2017-03-15 Lynn Garren : larpandora v06_08_03 for larsoft v06_28_00

larwirecell v06_01_00
--------------------------------------------------

-   2017-03-15 Lynn Garren : larwirecell v06_01_00 for larsoft v06_28_00
-   2017-03-15 Lynn Garren : Merge branch ‘feature/eberly_asicdb’ into release/v06_28_00
-   2017-03-01 Eberly : Added ASIC database hooks to determine misconfigured channels

larana v06_03_21
----------------------------------------

-   2017-03-15 Lynn Garren : larana v06_03_21 for larsoft v06_28_00

larreco v06_22_00
------------------------------------------

-   2017-03-15 Lynn Garren : add missing library
-   2017-03-15 Lynn Garren : larreco v06_22_00 for larsoft v06_28_00
-   2017-03-15 Lynn Garren : Merge branch ‘feature/gp_protoDUNEDP_trueOrientation’ into release/v06_28_00
-   2017-03-15 Lynn Garren : Merge branch ‘feature/tjyang_bug5104_moveargoneutfcl’ into release/v06_28_00
-   2017-03-14 Robert Sulej : fix bug when trying to use shift from a node while nodes collection is still empty
-   2017-03-14 Gianluca Petrillo : Merge remote-tracking branch ‘origin/develop’ into feature/gp_protoDUNEDP_trueOrientation
-   2017-03-14 Robert Sulej : Merge branch ‘develop’ of ssh://cdcvs.fnal.gov/cvs/projects/larreco into develop
-   2017-03-14 Robert Sulej : move t0 calculation to the function that applies shift in drift, rename x-shift to drift-shift
-   2017-03-14 Robert Sulej : comment out x-shift of 3d points, as it is now handled by the track optimization itself
-   2017-03-13 Giuseppe Cerati : avoid adding the flag ExcludedFromFit when the flag Rejected is already present
-   2017-03-13 Robert Sulej : swap conditions checking to avoid looking for mva values, when they are not configured to be used anyway (the actual bugfix is in art data helper, in one second)
-   2017-03-13 Robert Sulej : add setting pfparticle pdg to 11 for those tracks that were build but classification from looking at all views says they are electrons
-   2017-03-13 Dorota Stefan : corrections related to cnn output for michel electrons
-   2017-03-12 Tingjun Yang : Move argoneut files to argoneutcode.
-   2017-03-12 Robert Sulej : add module identifying track vs em-like plus michel electron activity (4-out cnn model)
-   2017-03-11 Robert Sulej : add option to create tracks using track-like clusters recognized with cnn
-   2017-03-10 Robert Sulej : Merge branch ‘develop’ of ssh://cdcvs.fnal.gov/cvs/projects/larreco into develop
-   2017-03-10 Robert Sulej : prepare for use of em selection
-   2017-03-09 Tingjun Yang : Merge branch ‘develop’ of ssh://cdcvs.fnal.gov/cvs/projects/larreco into develop
-   2017-03-09 Tingjun Yang : Make sure itjLong and jtjLong are not USHRT_MAX.
-   2017-03-08 Lynn Garren : larsoft v06_27_00
-   2017-03-07 Tingjun Yang : Only move trajectory point if it is close to another trajectory.
-   2017-03-07 Tingjun Yang : Merge branch ‘develop’ of ssh://cdcvs.fnal.gov/cvs/projects/larreco into feature/tjyang_TJWork
-   2017-03-06 Gianluca Petrillo : Prepare DisambigCheater for geometry change.
-   2017-02-28 Tingjun Yang : Merge branch ‘develop’ of ssh://cdcvs.fnal.gov/cvs/projects/larreco into feature/tjyang_TJWork
-   2017-02-23 Tingjun Yang : Merge branch ‘develop’ of ssh://cdcvs.fnal.gov/cvs/projects/larreco into feature/tjyang_TJWork
-   2017-02-21 Tingjun Yang : Turn off SplitHiChgHits by default.
-   2017-02-21 Tingjun Yang : Merge branch ‘develop’ of ssh://cdcvs.fnal.gov/cvs/projects/larreco into feature/tjyang_TJWork
-   2017-02-17 Tingjun Yang : Merge branch ‘develop’ of ssh://cdcvs.fnal.gov/cvs/projects/larreco into feature/tjyang_TJWork
-   2017-02-14 Tingjun Yang : Merge branch ‘develop’ of ssh://cdcvs.fnal.gov/cvs/projects/larreco into feature/tjyang_TJWork
-   2017-02-09 Tingjun Yang : Merge branch ‘develop’ of ssh://cdcvs.fnal.gov/cvs/projects/larreco into feature/tjyang_TJWork

larsim v06_14_00
----------------------------------------

-   2017-03-15 Lynn Garren : add missing library
-   2017-03-15 Lynn Garren : larsim v06_14_00 for larsoft v06_28_00
-   2017-03-15 Gianluca Petrillo : Added \`empty_events.fcl\` configuration to create empty events.
-   2017-03-12 Robert Sulej : add TrackIDToSimIDE with view selected by argument

larevt v06_07_12
----------------------------------------

-   2017-03-15 Lynn Garren : larevt v06_07_12 for larsoft v06_28_00

lardata v06_16_00
------------------------------------------

-   2017-03-15 Lynn Garren : add missing library
-   2017-03-15 Lynn Garren : lardata v06_16_00 for larsoft v06_28_00
-   2017-03-15 Lynn Garren : Merge branch ‘feature/tjyang_bug5104_moveargoneutfcl’ into release/v06_28_00
-   2017-03-14 Giuseppe Cerati : better usage of temporaries speeds up execution
-   2017-03-13 Robert Sulej : use getByLabel instead of getting valid handle in not-throwing constructor
-   2017-03-12 Tingjun Yang : Move argoneut files to argoneutcode.
-   2017-03-08 Lynn Garren : larsoft v06_27_00
-   2017-03-08 Gianluca Petrillo : Added module DumpSimPhotonsLite. It does what it says.
-   2017-03-08 Gianluca Petrillo : Added DumpOpDetWaveforms module. It does what it says.

larcore v06_06_00
------------------------------------------

-   2017-03-15 Lynn Garren : larcore v06_06_00 for larsoft v06_28_00
-   2017-03-15 Lynn Garren : Merge branch ‘feature/gp_protoDUNEDP_trueOrientation’ into release/v06_28_00
-   2017-03-13 Tingjun Yang : Remove geometry_argoneut.fcl from geometry.fcl.
-   2017-03-12 Tingjun Yang : Move argoneut files to argoneutcode.
-   2017-03-10 Gianluca Petrillo : Enabled projection facilities in geo::TPCGeo.
-   2017-03-10 Gianluca Petrillo : Added vector interface for FindTPCAtLocation().
-   2017-03-10 Gianluca Petrillo : Revamped geo::PlaneGeo documentation.
-   2017-03-10 Gianluca Petrillo : Removed signal type from plane data.
-   2017-03-10 Gianluca Petrillo : Added missing header inclusion
-   2017-03-06 Gianluca Petrillo : Merge remote-tracking branch ‘origin/develop’ into feature/gp_protoDUNEDP_trueOrientation
-   2017-03-06 Gianluca Petrillo : GeometryCore::IntersectionPoint() now returns nonsense coordinates on error.
-   2017-03-01 Gianluca Petrillo : Extended DumpUtils.h to print arrays.
-   2017-03-01 Gianluca Petrillo : Added options to lar::debug::printBacktrace().
-   2017-03-01 Gianluca Petrillo : Updated documentation style in DebugUtils.h.
-   2017-02-28 Gianluca Petrillo : Changed a method name to uniform style.
-   2017-02-28 Gianluca Petrillo : Added DumpUtils.h with functions to print special object to streams.
-   2017-02-21 Gianluca Petrillo : Adopting the “\*.tcc” convention for template implementation files.
-   2017-02-17 Gianluca Petrillo : The origin of the plane frame reference is now coplanar to the wires.
-   2017-02-17 Gianluca Petrillo : Fixed a bug and extended interface of geo::BoxBoundedGeo.
-   2017-02-16 Gianluca Petrillo : Introduced two different types for wire plane projections.
-   2017-02-16 Gianluca Petrillo : Added facilities to check that a point is on a plane, and to move it there.
-   2017-02-15 Gianluca Petrillo : Comment style changes.
-   2017-01-11 Gianluca Petrillo : Fixed compilation in profiling mode.
-   2017-01-11 Gianluca Petrillo : Fixed a critical mistake in the documentation of PlaneGeo new methods
-   2017-01-11 Gianluca Petrillo : Long due minor test bug fix.
-   2016-12-29 Gianluca Petrillo : Removed the remains of the DriftDirection object.
-   2016-12-05 Gianluca Petrillo : geo::PlaneGeo is now responsible of projections on wire planes
-   2016-12-05 Gianluca Petrillo : Added rounded comparisons for vectors
-   2016-11-30 Gianluca Petrillo : Added convenience RealComparisons\<\>::nonEqual() method
-   2016-11-30 Gianluca Petrillo : Added include guard to RealComparisons.h
-   2016-11-23 Gianluca Petrillo : Added NearestWire(), NearestWireID(), WireCoordinate() and PlaneCoordinate() to geo::PlaneGeo
-   2016-11-22 Gianluca Petrillo : Added distance from plane in PlaneGeo and updated total drift distance in TPCGeo.
-   2016-11-22 Gianluca Petrillo : Added active volume and cathode plane center in geo::TPCGeo.
-   2016-11-21 Gianluca Petrillo : Minor changes in geometry test output on screen.
-   2016-11-21 Gianluca Petrillo : Major changes to geometry objects.
-   2016-11-21 Gianluca Petrillo : Changed the geometry initialisation procedure (sorting)
-   2016-11-21 Gianluca Petrillo : Extended WireGeo interface and updated documentation.
-   2016-11-21 Gianluca Petrillo : Added PlaneGeo method for range-for loop over wires
-   2016-11-21 Gianluca Petrillo : Added iterator wrapper for pointer collections which automatically dereferences its pointer value.
-   2016-11-15 Gianluca Petrillo : Temporary commit: add tests that are not in GIT yet
-   2016-11-15 Gianluca Petrillo : Deprecated GeometryCode::PlaneIDs()
-   2016-11-15 Gianluca Petrillo : Using added geometry interface in geometry test
-   2016-11-15 Gianluca Petrillo : TPCGeo now self-detects its drift direction.
-   2016-11-15 Gianluca Petrillo : Added autodetection of PlaneGeo orientation
-   2016-11-15 Gianluca Petrillo : Extended TPCGeo and PlaneGeo interface
-   2016-11-15 Gianluca Petrillo : Fixed error message in GeometryCore
-   2016-11-15 Gianluca Petrillo : GeometryCore now uses CryostatGeo bounding box
-   2016-11-15 Gianluca Petrillo : Added bounding box to geo::CryostatGeo
-   2016-11-15 Gianluca Petrillo : Fix to geometry test
-   2016-11-11 Gianluca Petrillo : Uniformed the output stream for some error messages of geometry tests.
-   2016-11-11 Gianluca Petrillo : Moved some of the test into using geometry ID interface.
-   2016-11-11 Gianluca Petrillo : Moved intro part of GeometryTestAlg in its own subtest.
-   2016-11-11 Gianluca Petrillo : Extended geo::PlaneGeo interface.
-   2016-11-09 Gianluca Petrillo : Realigned geo::ChannelMapAlg source code
-   2016-11-09 Gianluca Petrillo : Revamped geo::ChannelMapAlg documentation
-   2016-11-04 Gianluca Petrillo : Changed the implementation of wire intersection in Geometry
-   2016-11-04 Gianluca Petrillo : Added a class to help approximate comparisons (RealComparisons).
-   2016-11-04 Gianluca Petrillo : Changed protocol on ChannelMapAlg::ChannelToROP().

larpandoracontent v03_02_00
--------------------------------------------------------------

larsoftobj v1_14_00
----------------------------------------------

-   2017-03-15 Lynn Garren : larsoftobj v1_14_00 for larsoft v06_28_00
-   2017-03-15 Lynn Garren : revert to canvas v1_05_01
-   2017-03-06 Lynn Garren : add bundle directory
-   2017-03-06 Lynn Garren : e10 only
-   2017-03-06 Lynn Garren : generate the larsoftobj bundle scripts

lardataobj v1_13_01
----------------------------------------------

-   2017-03-15 Lynn Garren : lardataobj v1_13_01 for larsoft v06_28_00

larcoreobj v1_08_00
----------------------------------------------

-   2017-03-15 Lynn Garren : fix merge
-   2017-03-15 Lynn Garren : larcoreobj v1_08_00 for larsoft v06_28_00
-   2017-03-15 Lynn Garren : remove GenReflex guards
-   2017-03-10 Gianluca Petrillo : ROOT 6/C++11 update for geo_types.h
-   2017-03-06 Lynn Garren : larcoreobj v1_06_02
-   2017-03-05 Lynn Garren : for art 2.06.01
-   2016-12-06 Gianluca Petrillo : Redefinition of DriftDirection_t semantics

larbatch v01_28_00
--------------------------------------------

-   2017-03-15 Lynn Garren : larbatch v01_28_00 for larsoft v06_28_00
-   2017-03-15 Herbert Greenlee : Update logic for secondary sam projects.
-   2017-03-14 Herbert Greenlee : Better handling of exit status 65.
-   2017-03-14 Herbert Greenlee : Increase timeout.
-   2017-03-14 Herbert Greenlee : Add \<jobsub_timeout\>.
-   2017-03-13 Herbert Greenlee : Add xml element \<jobsub_start\>.

larutils v1_12_01
------------------------------------------

-   2017-03-15 Lynn Garren : larutils v1_12_01 for larsoft v06_28_00
-   2017-03-10 Lynn Garren : adding s46
