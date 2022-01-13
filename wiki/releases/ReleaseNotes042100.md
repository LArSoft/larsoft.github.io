LArSoft v04_21_00 Release Notes
======================================================================

[list of LArSoft releases](LArSoft_release_list)
[Download instructions](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v04_21_00/larsoft-v04_21_00.html)

Purpose
--------------------

-   Changes to develop since v04_20_00 and integrate feature/greenlee_line_surface

New features
------------------------------

-   lardata and larreco feature/greenlee_line_surface

Bug fixes
------------------------

Updated dependencies
----------------------------------------------

Change List
============================

larsoft v04_21_00
------------------------------------------

-   2015-08-26 Lynn Garren : larsoft v04_21_00 for larsoft v04_21_00
-   2015-08-26 Lynn Garren : update product versions
-   2015-08-26 Lynn Garren : update dependency database
-   2015-08-19 Lynn Garren : git v2_4_6

lareventdisplay v04_07_00
----------------------------------------------------------

-   2015-08-26 Lynn Garren : lareventdisplay v04_07_00 for larsoft v04_21_00
-   2015-08-24 Tingjun Yang : fix a bug in case fCosmicTagLabels is empty.
-   2015-08-24 Tingjun Yang : Plot cluster across multiple TPCs.
-   2015-08-22 Tracy Usher : Two main updates: 1) allow for fhicl settable lower “tick” to go along with upper “tick” (this allows one to display only the beam drift window for MicroBooNE), 2) try to stop the event display from rendering each view twice when changing the ADC threshold (very time consuming!).
-   2015-08-22 Tracy Usher : Constrain length of incoming particle (addresses issues if not a BNB generated particle)
-   2015-08-22 Tracy Usher : Enhancements for 3D display of PFParticle objects, should be transparent to everything else
-   2015-08-22 Tracy Usher : Merge branch ‘develop’ of ssh://cdcvs.fnal.gov/cvs/projects/lareventdisplay into develop
-   2015-08-21 Tracy Usher : One more update for the drift time windowing
-   2015-08-21 Tracy Usher : These updates allow not only a maximum “tick” for the drift time window but also a lower value too
-   2015-08-21 Tracy Usher : Add parameter for low tick on windowing, updates for cosmic tag display

larexamples v04_05_03
--------------------------------------------------

-   2015-08-26 Lynn Garren : larexamples v04_05_03 for larsoft v04_21_00

larpandora v04_05_03
------------------------------------------------

-   2015-08-26 Lynn Garren : larpandora v04_05_03 for larsoft v04_21_00

larana v04_12_00
----------------------------------------

-   2015-08-26 Lynn Garren : larana v04_12_00 for larsoft v04_21_00
-   2015-08-22 Tracy Usher : Merge branch ‘develop’ of ssh://cdcvs.fnal.gov/cvs/projects/larana into develop
-   2015-08-22 Tracy Usher : Correcting small bug with ticks (there may be some tab madness going on here as well)
-   2015-08-22 Tracy Usher : Use space points instead of hits for trajectory extremes

larreco v04_16_00
------------------------------------------

-   2015-08-26 Lynn Garren : larreco v04_16_00 for larsoft v04_21_00
-   2015-08-26 Lynn Garren : Merge branch ‘feature/greenlee_line_surface’ into release/v04_21_00
-   2015-08-26 Tingjun Yang : do not throw
-   2015-08-25 Herbert Greenlee : Merge remote-tracking branch ‘origin/develop’ into feature/greenlee_line_surface
-   2015-08-25 Herbert Greenlee : Comment out bad channel removal (causes crash).
-   2015-08-25 Herbert Greenlee : Merge remote-tracking branch ‘origin/develop’ into feature/greenlee_line_surface
-   2015-08-24 Bruce Baller : Merge branch ‘feature/bb_ccwork’ into develop
-   2015-08-24 Bruce Baller : Check for non-physical wire numbers
-   2015-08-24 Robert Sulej : do not use backtracker on real data
-   2015-08-24 Robert Sulej : Merge branch ‘develop’ of ssh://cdcvs.fnal.gov/cvs/projects/larreco into develop
-   2015-08-24 Bruce Baller : Merge branch ‘feature/bb_ccwork’ into develop
-   2015-08-24 Bruce Baller : initialize end in unfinished code
-   2015-08-22 Robert Sulej : Merge branch ‘develop’ of ssh://cdcvs.fnal.gov/cvs/projects/larreco into develop
-   2015-08-22 Bruce Baller : Merge branch ‘feature/bb_ccwork’ into develop
-   2015-08-22 Bruce Baller : Temporary uB code
-   2015-08-22 Bruce Baller : Temporary uB code
-   2015-08-22 Bruce Baller : Temporary clustercrawler fcl settings
-   2015-08-21 Tracy Usher : fixing special case which causes crash in some cases in data
-   2015-08-21 Bruce Baller : Set default fuBCode value
-   2015-08-21 Bruce Baller : new fcl params for uB
-   2015-08-20 Robert Sulej : Merge branch ‘develop’ of ssh://cdcvs.fnal.gov/cvs/projects/larreco into develop
-   2015-08-20 Robert Sulej : place for trimming tracks to given volume - to be implemented
-   2015-08-20 Herbert Greenlee : Merge remote-tracking branch ‘origin/develop’ into feature/greenlee_line_surface
-   2015-08-20 Bruce Baller : Merge branch ‘develop’ into feature/bb_ccwork
-   2015-08-20 Bruce Baller : add uBCode parameter
-   2015-08-20 Bruce Baller : add uBCode parameter
-   2015-08-20 Bruce Baller : add uBCode parameter
-   2015-08-19 Herbert Greenlee : Change initial momentum from 0.2 to 0.5 GeV.
-   2015-08-17 Herbert Greenlee : Merge remote-tracking branch ‘origin/feature/greenlee_line_surface’ into feature/greenlee_line_surface
-   2015-08-17 Bruce Baller : Merge branch ‘develop’ into feature/bb_ccwork
-   2015-08-17 Bruce Baller : Temporary hacks for early data
-   2015-08-16 Herbert Greenlee : Merge remote-tracking branch ‘origin/develop’ into feature/greenlee_line_surface
-   2015-08-14 Herbert Greenlee : Merge branch ‘develop’ into feature/greenlee_line_surface
-   2015-08-14 Herbert Greenlee : Merge remote-tracking branch ‘origin/develop’ into feature/greenlee_line_surface
-   2015-08-12 Herbert Greenlee : Merge remote-tracking branch ‘origin/develop’ into feature/greenlee_line_surface
-   2015-08-12 Bruce Baller : Merge branch ‘develop’ into feature/bb_ccwork
-   2015-08-12 Bruce Baller : Early data hacks
-   2015-08-12 Herbert Greenlee : Modify the way smoothed trajectory points are displayed on graphical trace display.
-   2015-08-07 Herbert Greenlee : Add capability to do graphical tracing on line surfaces.
-   2015-08-07 Herbert Greenlee : Add fcl parameter to choose whether hits are stored on plane or line surfaces.
-   2015-08-06 Herbert Greenlee : Add validity checks after track updating.
-   2015-08-05 Herbert Greenlee : Merge remote-tracking branch ‘origin/feature/greenlee_wireid_surface’ into feature/greenlee_line_surface
-   2015-08-04 Herbert Greenlee : Merge remote-tracking branch ‘origin/develop’ into feature/greenlee_line_surface
-   2015-08-04 Herbert Greenlee : Merge remote-tracking branch ‘origin/develop’ into feature/greenlee_wireid_surface
-   2015-08-04 Herbert Greenlee : Merge remote-tracking branch ‘origin/feature/greenlee_wireid_surface’ into feature/greenlee_line_surface
-   2015-08-04 Herbert Greenlee : Use line surface container.
-   2015-08-04 Herbert Greenlee : Merge remote-tracking branch ‘origin/develop’ into feature/greenlee_wireid_surface
-   2015-08-03 Herbert Greenlee : Add self-seeding capability for tracks made from PFParticles.
-   2015-08-03 Herbert Greenlee : Add parameter “linear” for method buildTrack.
-   2015-07-29 Herbert Greenlee : Merge remote-tracking branch ‘origin/feature/greenlee_wireid_surface’ into feature/greenlee_line_surface
-   2015-07-29 Herbert Greenlee : Adjust to SurfYZPlane interface change.
-   2015-07-29 Herbert Greenlee : Merge remote-tracking branch ‘origin/develop’ into feature/greenlee_line_surface
-   2015-07-29 Herbert Greenlee : Turn off pfparticle seeds by default.
-   2015-07-29 Herbert Greenlee : Change propagator.
-   2015-07-28 Herbert Greenlee : Merge branch ‘develop’ into feature/greenlee_line_surface
-   2015-07-01 Herbert Greenlee : Adapt to interface change of SurfYZPlane.

larsim v04_09_03
----------------------------------------

-   2015-08-26 Lynn Garren : larsim v04_09_03 for larsoft v04_21_00

larevt v04_10_00
----------------------------------------

-   2015-08-26 Lynn Garren : larevt v04_10_00 for larsoft v04_21_00
-   2015-08-26 Tracy Usher : Update of MicroBooNE channel list (last before Brandon service becomes available)
-   2015-08-22 Tracy Usher : Get the right channel numbers for the missing wires in the V plane…
-   2015-08-22 Tracy Usher : A very first attempt at delineating the list of problem channels observed in early data taking. This list was made by looking at 10 events in subrun 0 of run 1532 and is meant to TEMPORARILY capture the state of things until a channel status database and interface is up and running. This should NOT impact any other experiments.

lardata v04_13_00
------------------------------------------

-   2015-08-26 Lynn Garren : lardata v04_13_00 for larsoft v04_21_00
-   2015-08-25 Herbert Greenlee : Merge remote-tracking branch ‘origin/develop’ into feature/greenlee_line_surface
-   2015-08-22 Tracy Usher : Make data members private, add accessor so the cosmic tag module can modify before committing (which is probably not the right way to do this but…)
-   2015-08-22 Tracy Usher : Formatting
-   2015-08-20 Herbert Greenlee : Merge remote-tracking branch ‘origin/develop’ into feature/greenlee_line_surface
-   2015-08-17 Herbert Greenlee : Merge remote-tracking branch ‘origin/feature/greenlee_line_surface’ into feature/greenlee_line_surface
-   2015-08-16 Herbert Greenlee : Merge remote-tracking branch ‘origin/develop’ into feature/greenlee_line_surface
-   2015-08-14 Herbert Greenlee : Merge branch ‘develop’ into feature/greenlee_line_surface
-   2015-08-14 Herbert Greenlee : Merge remote-tracking branch ‘origin/develop’ into feature/greenlee_line_surface
-   2015-08-12 Herbert Greenlee : Merge remote-tracking branch ‘origin/develop’ into feature/greenlee_line_surface
-   2015-08-11 Herbert Greenlee : Add protection for phi wrap.
-   2015-08-10 Herbert Greenlee : Add support for KHitWireLine measurements.
-   2015-08-10 Herbert Greenlee : Fix handling of errors for hits on line surfaces.
-   2015-08-07 Herbert Greenlee : Fix include guard.
-   2015-08-07 Herbert Greenlee : Tweak multi-step propagation.
-   2015-08-06 Herbert Greenlee : Add validity check during Kalman smoothing.
-   2015-08-06 Herbert Greenlee : Add more sophisticated validity check in method KTrack::isValid.
-   2015-08-06 Herbert Greenlee : Throw exception in case of adding invalid track.
-   2015-08-06 Herbert Greenlee : Add method isTrackValid.
-   2015-08-06 Herbert Greenlee : Fix some cases where propagators were not preserving track in case of propagation failure.
-   2015-08-06 Herbert Greenlee : Update interactors.
-   2015-08-06 Herbert Greenlee : Add InteractGeneral.
-   2015-08-05 Herbert Greenlee : Merge remote-tracking branch ‘origin/feature/greenlee_wireid_surface’ into feature/greenlee_line_surface
-   2015-08-05 Herbert Greenlee : Fix MCS correlation coefficient for tracks moving in backward direction.
-   2015-08-05 Herbert Greenlee : Fix MCS correlation coefficient for backward propagation.
-   2015-08-04 Herbert Greenlee : Merge remote-tracking branch ‘origin/develop’ into feature/greenlee_line_surface
-   2015-08-04 Herbert Greenlee : Merge remote-tracking branch ‘origin/develop’ into feature/greenlee_wireid_surface
-   2015-08-04 Herbert Greenlee : Add function for general matrix inverse in KalmanLinearAlgebra.h, with corresponding tests.
-   2015-08-04 Herbert Greenlee : Merge remote-tracking branch ‘origin/feature/greenlee_wireid_surface’ into feature/greenlee_line_surface
-   2015-08-04 Herbert Greenlee : Merge remote-tracking branch ‘origin/develop’ into feature/greenlee_wireid_surface
-   2015-07-30 Herbert Greenlee : Merge remote-tracking branch ‘origin/feature/greenlee_wireid_surface’ into feature/greenlee_line_surface
-   2015-07-30 Herbert Greenlee : Add class KHitContainerWireLine.
-   2015-07-30 Herbert Greenlee : Fix wrong comment.
-   2015-07-30 Herbert Greenlee : Add class KHitWireLine.
-   2015-07-30 Herbert Greenlee : Merge remote-tracking branch ‘origin/feature/greenlee_wireid_surface’ into feature/greenlee_line_surface
-   2015-07-30 Herbert Greenlee : Add class SurfWireTime.
-   2015-07-30 Herbert Greenlee : Remove unused data member.
-   2015-07-30 Herbert Greenlee : Add new class SurfWireTime.
-   2015-07-30 Herbert Greenlee : Merge remote-tracking branch ‘origin/feature/greenlee_wireid_surface’ into feature/greenlee_line_surface
-   2015-07-30 Herbert Greenlee : Minor bug fix.
-   2015-07-30 Herbert Greenlee : Fix some wrong comments.
-   2015-07-30 Herbert Greenlee : Minor bug fixes.
-   2015-07-29 Herbert Greenlee : Merge remote-tracking branch ‘origin/feature/greenlee_wireid_surface’ into feature/greenlee_line_surface
-   2015-07-29 Herbert Greenlee : Add x0 surface parameter for SurfYZPlane.
-   2015-07-29 Herbert Greenlee : Merge remote-tracking branch ‘origin/feature/greenlee_wireid_surface’ into feature/greenlee_line_surface
-   2015-07-29 Herbert Greenlee : Change SurfWireX from being defined by a channel to being defined by a WireID.
-   2015-07-28 Herbert Greenlee : Merge branch ‘develop’ into feature/greenlee_line_surface
-   2015-06-29 Herbert Greenlee : Add method origin_vec_prop in all propagators (pure virtual in base class Propagator, implemented in derived classes) which method handles the use case of zero-distance propagation between non-parallel surfaces or different type surfaces.
-   2015-06-29 Herbert Greenlee : Adapt to SurfYZPlane interface change.
-   2015-06-29 Herbert Greenlee : Give SurfYZPlane an extra surface parameter x0 which defines the global x-origin of the surface coordinate system (instead of always being zero).
-   2015-06-29 Herbert Greenlee : Remove PropZero. Instead, add method origin_vec_prop in other propagator classes.
-   2015-06-29 Herbert Greenlee : Streamline calculations.
-   2015-06-28 Herbert Greenlee : Add propagator to line surface.
-   2015-06-26 Herbert Greenlee : Merge remote-tracking branch ‘origin/develop’ into feature/greenlee_line_surface
-   2015-06-23 Herbert Greenlee : Add special transformations between SurfYZPlane and SurfXYZPlane in both directions.
-   2015-06-23 Herbert Greenlee : Add unit test for SurfYZLineTest.
-   2015-06-22 Herbert Greenlee : Merge remote-tracking branch ‘origin/develop’ into feature/greenlee_line_surface
-   2015-06-22 Herbert Greenlee : Add SurfYZLine concrete line surface.
-   2015-06-22 Herbert Greenlee : Add base class for line type surfaces.
-   2015-06-22 Herbert Greenlee : abs -\> std::abs
-   2015-06-22 Herbert Greenlee : Add fpe protections in pointing error calculation.
-   2015-06-22 Herbert Greenlee : Modify PropYZPlane and PropXYZPlane to do coordinate transformations using PropZero.
-   2015-06-22 Herbert Greenlee : Add PropAny for doing propagations between arbitrary surfaces types.
-   2015-06-22 Herbert Greenlee : Add PropZero for doing zero-distance propagation (effectively coordinate transformations between different types of surfaces).
-   2015-06-19 Herbert Greenlee : Merge branch ‘develop’ into feature/greenlee_line_surface
-   2015-06-18 Herbert Greenlee : Start adding line surfaces.

larcore v04_16_01
------------------------------------------

larbatch v01_13_01
--------------------------------------------

-   2015-08-26 Lynn Garren : larbatch v01_13_01 for larsoft v04_21_00
-   2015-08-21 Herbert Greenlee : Prefer certificate authentication to kerberos authentication for jobsub.

larutils v1_03_00
------------------------------------------
