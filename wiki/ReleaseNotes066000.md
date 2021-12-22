LArSoft v06\_60\_00 Release Notes(#LArSoft-v06_60_00-Release-Notes)
======================================================================

-   **Table of contents**
-   [LArSoft v06\_60\_00 Release Notes](#LArSoft-v06_60_00-Release-Notes)
    -   [Purpose](#Purpose)
    -   [New features](#New-features)
    -   [Bug fixes](#Bug-fixes)
    -   [Updated dependencies](#Updated-dependencies)
-   [Change List](#Change-List)
    -   [larsoft v06\_60\_00](#larsoft-v06_60_00)
    -   [lareventdisplay v06\_15\_05](#lareventdisplay-v06_15_05)
    -   [larexamples v06\_07\_13](#larexamples-v06_07_13)
    -   [larpandora v06\_18\_00](#larpandora-v06_18_00)
    -   [larwirecell v06\_08\_07](#larwirecell-v06_08_07)
    -   [larana v06\_13\_02](#larana-v06_13_02)
    -   [larreco v06\_49\_00](#larreco-v06_49_00)
    -   [larsim v06\_38\_00](#larsim-v06_38_00)
    -   [larevt v06\_16\_12](#larevt-v06_16_12)
    -   [lardata v06\_33\_02](#lardata-v06_33_02)
    -   [larcore v06\_15\_08](#larcore-v06_15_08)
    -   [larpandoracontent v03\_09\_00](#larpandoracontent-v03_09_00)
    -   [larsoftobj v1\_33\_00](#larsoftobj-v1_33_00)
    -   [lardataobj v1\_24\_00](#lardataobj-v1_24_00)
    -   [larcorealg v1\_12\_00](#larcorealg-v1_12_00)
    -   [larcoreobj v1\_18\_00](#larcoreobj-v1_18_00)
    -   [larbatch v01\_34\_03](#larbatch-v01_34_03)
    -   [larutils v1\_20\_03](#larutils-v1_20_03)

[list of LArSoft releases](LArSoft_release_list)\
Download instructions for [larsoft v06\_60\_00](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v06_60_00/larsoft-v06_60_00.html)\
Download instructions for [just larsoftobj v1\_33\_00](http://scisoft.fnal.gov/scisoft/bundles/larsoftobj/v1_33_00/larsoftobj-v1_33_00.html)

Purpose(#Purpose)
--------------------

-   changes to develop
-   new pandora
-   approved feature branches

New features(#New-features)
------------------------------

-   pandora v03\_07\_00
    -   larpandoracontent and larpandora feature/larpandoracontent\_v03\_09\_00
    -   uboonecode, dunetpc, and sbndcode feature/larpandoracontent\_v03\_09\_00
    -   [https://indico.fnal.gov/event/15868/contribution/3/material/slides/0.pdf](https://indico.fnal.gov/event/15868/contribution/3/material/slides/0.pdf)
-   larsim feature/JStock\_RadioGenMultiPart
    -   larsoft\_data v1\_02\_01
-   lardataobj feature/gp\_TrackingVectorTypes
    -   non-breaking recob::Track schema evolution
    -   new version of recob::Trajectory
-   larreco feature/cerati\_track-producers-compliant
    -   makes sure that PMA track producers satisfy the basic conventions of a recob::Track.
-   larcoreobj larcorealg feature/gp\_GenVectorTransition
    -   The changes allow the geometry infrastructure object to talk exclusively GenVector vectors (without the need of TVector3, which is still supported as legacy for a while).

Bug fixes(#Bug-fixes)
------------------------

Updated dependencies(#Updated-dependencies)
----------------------------------------------

-   pandora v3\_07\_00
-   ifdhc v2\_2\_3
-   ifdh\_art v2\_04\_02
-   nutools v2\_16\_09

Change List(#Change-List)
============================

larsoft v06\_60\_00(#larsoft-v06_60_00)
------------------------------------------

-   2017-12-13 Lynn Garren : larsoft v06\_60\_00 for larsoft v06\_60\_00
-   2017-12-13 Lynn Garren : update build scripts
-   2017-12-13 Lynn Garren : larsoft\_data v1\_02\_01
-   2017-12-08 Gianluca Petrillo : Added pnfsToXRootD script converting PNFS paths to XRootD URLs.

lareventdisplay v06\_15\_05(#lareventdisplay-v06_15_05)
----------------------------------------------------------

-   2017-12-13 Lynn Garren : lareventdisplay v06\_15\_05 for larsoft v06\_60\_00

larexamples v06\_07\_13(#larexamples-v06_07_13)
--------------------------------------------------

-   2017-12-13 Lynn Garren : larexamples v06\_07\_13 for larsoft v06\_60\_00
-   2017-12-08 Jost Migenda : fixed typo in a comment

larpandora v06\_18\_00(#larpandora-v06_18_00)
------------------------------------------------

-   2017-12-13 Lynn Garren : larpandora v06\_18\_00 for larsoft v06\_60\_00
-   2017-12-13 Lynn Garren : Merge branch ‘feature/larpandoracontent\_v03\_09\_00’ into release/v06\_60\_00
-   2017-11-30 Steven Green : Updated LArPandora to access information via ParticleInventoryService instead of BackTrackerService.
-   2017-11-29 John Marshall : Merge branch ‘feature/LArRemaster’
-   2017-11-28 John Marshall : Add standard PandoraSettings files.
-   2017-11-27 Steven Green : Set the nuance code for non-neutrino MC particles to determine whether the particle originates from beam or cosmic ray.
-   2017-11-24 John Marshall : Truncate wire-type line gaps at physical edges of LArTPC volumes.
-   2017-11-22 John Marshall : Choose alternative ceiling for dEdX values; double vs. single float issue previously.
-   2017-11-21 John Marshall : Now provide LArTPC volume id for each input CaloHit. Remove hit-based trk/shw properties for now. Some refactoring.
-   2017-11-10 John Marshall : Reflect changes to Pandora parent/master algorithm.
-   2017-11-10 John Marshall : Pass all input objects to a single master Pandora instance, which will distribute tasks to worker instances.
-   2017-10-29 John Marshall : Incremental cosmetic changes.
-   2017-10-26 John Marshall : Cosmetic.
-   2017-10-26 John Marshall : Tweaks to function prototypes in LArPandoraHelper, updating calling code.
-   2017-10-26 John Marshall : Update to reflect lar::PtrMaker -\> art::PtrMaker change.
-   2017-10-25 a-d-smith : Removed some unnecessary lines from LArPandoraEvent
-   2017-10-25 a-d-smith : refactored GetAssociatedHits from track/shower creation modules to LArPandoraHelper
-   2017-10-25 a-d-smith : Removed unused backups
-   2017-10-25 a-d-smith : Cosmetic. Updated to match the Pandora style
-   2017-10-19 a-d-smith : added some missing comments for doxygen
-   2017-10-19 a-d-smith : Cleaned up some unused functions
-   2017-10-16 a-d-smith : Fixed subtle issue with parent daughter links if two events were merged then filtered
-   2017-10-11 a-d-smith : Cosmetic
-   2017-10-11 a-d-smith : Reorganised the repo and added some modules to lar\_pandora namespace
-   2017-10-11 a-d-smith : made the PFParticle ID shift value user configurable and removed some debug couts
-   2017-10-11 a-d-smith : Completed neutrino ID skeleton code
-   2017-10-11 a-d-smith : Fixed issues with merging. PFParticle IDs are now corrected for properly
-   2017-10-09 a-d-smith : Added an extra splitting module as a temporary way of making the Kalman track fitters see the input structure they want
-   2017-10-09 a-d-smith : Made track and shower creation modules produce -\> hits associations
-   2017-10-06 a-d-smith : Integrated Track and Shower creation modules. Conflict between track-\>spacepoint and track-\>hit associations
-   2017-10-05 a-d-smith : Started adjusted ID work
-   2017-10-05 a-d-smith : Updated event dumping code
-   2017-10-04 a-d-smith : Fixed bug in LArPandoraEvent association production
-   2017-10-04 a-d-smith : Started LArPandoraEventDump
-   2017-10-02 a-d-smith : Handled errors more gracefully
-   2017-09-29 a-d-smith : Integrated Labels class
-   2017-09-29 a-d-smith : Started to add Labels class
-   2017-09-28 a-d-smith : Improved on coding style a la John
-   2017-09-28 a-d-smith : Added Collection Merging module
-   2017-09-27 a-d-smith : Implemented most of LArPandoraEvent
-   2017-09-26 a-d-smith : Started to develop LArPandoraEvent
-   2017-09-26 a-d-smith : Moved splitting module to larpandora
-   2017-10-05 John Marshall : Add member variable descriptions. Remove shower energy alg for now.
-   2017-10-05 John Marshall : Add member variable descriptions.
-   2017-10-04 John Marshall : First implementation of shower and pcaxis creation, with particle-\>shower, particle-\>pcaxis, shower-\>spacepoints and shower-\>pcaxis associations.
-   2017-10-04 John Marshall : Improve exception handling.
-   2017-10-04 John Marshall : Now outputs particle-\>track and track-\>spacepoints associations.
-   2017-10-02 John Marshall : A few steps forwards…
-   2017-09-28 John Marshall : Moving functionality from LArPandoraOutput into modules in LArPandoraEventBuilding.
-   2017-09-28 John Marshall : Work in progress, taking-on functionality previously provided by LArPandora output.
-   2017-09-28 John Marshall : Add empty modules.

larwirecell v06\_08\_07(#larwirecell-v06_08_07)
--------------------------------------------------

-   2017-12-13 Lynn Garren : larwirecell v06\_08\_07 for larsoft v06\_60\_00

larana v06\_13\_02(#larana-v06_13_02)
----------------------------------------

-   2017-12-13 Lynn Garren : add missing library
-   2017-12-13 Lynn Garren : larana v06\_13\_02 for larsoft v06\_60\_00
-   2017-12-11 Tingjun Yang : Use median by default.
-   2017-12-04 Tingjun Yang : Remove printout.
-   2017-12-04 Tingjun Yang : Add option to calculate PIDA using median instead of mean. Set it to false by default.

larreco v06\_49\_00(#larreco-v06_49_00)
------------------------------------------

-   2017-12-13 Lynn Garren : Merge branch ‘release/v06\_60\_00’
-   2017-12-13 Lynn Garren : add missing library
-   2017-12-13 Lynn Garren : larreco v06\_49\_00 for larsoft v06\_60\_00
-   2017-12-13 Lynn Garren : larreco v06\_49\_00 for larsoft v06\_60\_00
-   2017-12-13 Lynn Garren : nutools v2\_16\_09
-   2017-12-11 Giuseppe Cerati : make sure track satisfies conventions
-   2017-12-11 Giuseppe Cerati : make sure track satisfies conventions
-   2017-12-11 Tingjun Yang : Merge remote-tracking branch ‘origin/feature/tjyang\_emshower’ into develop
-   2017-12-11 Tingjun Yang : Add more information.
-   2017-12-11 Tingjun Yang : Bug fix, forgot to divide by pitch.
-   2017-12-08 Tingjun Yang : Use TMath::Median to calculate median.
-   2017-12-07 Gianluca Petrillo : Have PMA use vector types from tracking.
-   2017-11-26 Tingjun Yang : Use median instead of mean when calculating dE/dx.

larsim v06\_38\_00(#larsim-v06_38_00)
----------------------------------------

-   2017-12-13 Lynn Garren : larsim v06\_38\_00 for larsoft v06\_60\_00
-   2017-12-13 Lynn Garren : larsoft\_data v1\_02\_01
-   2017-12-13 Lynn Garren : Merge branch ‘feature/JStock\_RadioGenMultiPart’ into release/v06\_60\_00
-   2017-12-13 Gianluca Petrillo : Changed the way to comment out a piece of code.
-   2017-12-12 Jason Stock : Merge tag ‘LARSOFT\_SUITE\_v06\_58\_00’ into feature/JStock\_RadioGenMultiPart
-   2017-11-11 Jason Stock : Merge tag ‘LARSOFT\_SUITE\_v06\_56\_00’ into feature/JStock\_RadioGenMultiPart
-   2017-10-19 Jason Stock : Merge remote-tracking branch ‘origin/develop’ into feature/JStock\_RadioGenMultiPart
-   2017-10-19 Jason Stock : Merge remote branch ‘origin/develop’ into feature/JStock\_RadioGenMultiPart
-   2017-10-12 Jason Stock : Merge remote branch ‘origin/develop’ into feature/JStock\_RadioGenMultiPart
-   2017-10-04 Jason Stock : Merge remote-tracking branch ‘origin/develop’ into feature/JStock\_RadioGenMultiPart
-   2017-09-14 Jason Stock : Merge branch ‘feature/JStock\_RadioGenMultiPart’ of ssh://cdcvs.fnal.gov/cvs/projects/larsim into feature/JStock\_RadioGenMultiPart
-   2017-09-07 Jason Stock : Merge branch ‘develop’ into feature/JStock\_RadioGenMultiPart
-   2017-08-08 Jason Stock : Small bug fix. Correcting format for regex match Ar42.
-   2017-08-08 Jason Stock : Merge remote-tracking branch ‘remotes/origin/feature/JStock\_RadioGenMultiPart’ into develop
-   2017-08-08 Jason Stock : Merge branch ‘develop’ into feature/JStock\_RadioGenMultiPart
-   2017-08-07 Jason Stock : Adding the ability to generate more than one particle per decay for the radiological generator. Added the structure needed to properly model a complete K42-Ca42 (For Ar42 decay).

larevt v06\_16\_12(#larevt-v06_16_12)
----------------------------------------

-   2017-12-13 Lynn Garren : larevt v06\_16\_12 for larsoft v06\_60\_00

lardata v06\_33\_02(#lardata-v06_33_02)
------------------------------------------

-   2017-12-13 Lynn Garren : lardata v06\_33\_02 for larsoft v06\_60\_00
-   2017-12-13 Lynn Garren : nutools v2\_16\_09
-   2017-12-07 Gianluca Petrillo : Merge branch ‘feature/gp\_TrajectoryInProxy’ into develop
-   2017-12-07 Gianluca Petrillo : Updated messagefacility configurations.
-   2017-12-06 Lynn Garren : lardata v06\_33\_01 for larsoft v06\_59\_00
-   2017-11-29 Lynn Garren : lardata v06\_33\_00 for larsoft v06\_58\_00
-   2017-11-29 Lynn Garren : nutools v2\_16\_08 for ifdhc v2\_2\_2
-   2017-11-29 Lynn Garren : path for doxygen
-   2017-10-30 Jason Stock : spacing fix.
-   2017-10-28 Jason Stock : Setting this branch back up for the BackTrackerService/ParticleInventoryService update
-   2017-11-29 Gianluca Petrillo : Added a trajectory accessor to Track proxy

larcore v06\_15\_08(#larcore-v06_15_08)
------------------------------------------

-   2017-12-13 Lynn Garren : larcore v06\_15\_08 for larsoft v06\_60\_00

larpandoracontent v03\_09\_00(#larpandoracontent-v03_09_00)
--------------------------------------------------------------

-   2017-12-13 Lynn Garren : larpandoracontent v03\_09\_00 for larsoft v06\_60\_00
-   2017-12-13 Lynn Garren : pandora v03\_07\_00
-   2017-12-13 Lynn Garren : fixes for doxygen
-   2017-12-12 John Marshall : Merge branch ‘feature/BeamParticleIDAnalysis’
-   2017-12-12 John Marshall : Finalise first version of beam particle id logic.
-   2017-12-12 John Marshall : Further refinements for BeamParticleId tool.
-   2017-12-12 John Marshall : Work up BeamParticleId tool for production.
-   2017-12-12 John Marshall : Now start to examine topology of beam slice hypotheses.
-   2017-11-27 Steven Green : Added files for beam particle ID with null logic.
-   2017-11-28 John Marshall : Merge branch ‘updates’
-   2017-11-27 John Marshall : Update version and change log.
-   2017-11-28 John Marshall : Merge branch ‘feature/LArRemaster’
-   2017-11-28 John Marshall : In cosmic ray tagging, handle particles with small numbers of 3D hits, for which 3D sliding fit info is not available.
-   2017-11-27 John Marshall : Tweak conditions for placing hits and gaps in volumes. PandoraMonitoring build optional.
-   2017-11-27 John Marshall : Remove unnecessary message from Reset method.
-   2017-11-27 John Marshall : Do not run custom particle creation for neutrino particles.
-   2017-11-24 John Marshall : Add option to create full-width line gaps in CR worker instances.
-   2017-11-24 John Marshall : Id cosmics extending outside individual volumes if given t0 is that of beam particle.
-   2017-11-23 John Marshall : No longer have cetlib dependency.
-   2017-11-23 John Marshall : Use LArFileHelper to access svm data files.
-   2017-11-23 John Marshall : Can now specify unqualified file names for worker instance xml files, with list of file paths provided by environment variable.
-   2017-11-23 John Marshall : Add SelectAllNeutrinos and SelectOnlyFirstSliceNeutrinos options to neutrino id tool.
-   2017-11-23 John Marshall : Add option to visualize reconstruction status.
-   2017-11-22 John Marshall : Set use LArCaloHits to true by default in persistency.
-   2017-11-21 John Marshall : No need to interchange wire angles as this has been done in input geometry.
-   2017-11-21 John Marshall : Test available steering options.
-   2017-11-21 John Marshall : Apply high-level steering logic. Rename ShouldIdentifyNeutrinoSlice as the more generic ShouldPerformSliceId.
-   2017-11-21 John Marshall : Adopt use of LArTPC volume ids. Replace existing trk/shw information (unused) in LArCaloHit with relevant LArTPC volume id.
-   2017-11-21 John Marshall : Apply x0 shift to pfo hits and vertices, use vertex x0 value in cosmic-ray tagging.
-   2017-11-20 John Marshall : First stitching of pfos crossing between lar tpcs.
-   2017-11-20 John Marshall : Move PfoMopUpBase algorithm to LArUtility.
-   2017-11-20 John Marshall : Refactoring of master algorithm.
-   2017-11-17 John Marshall : Replace stitching info and fill pfo to lar tpc map.
-   2017-11-17 John Marshall : Update use of MultiPandoraApi in stitching helper.
-   2017-11-17 John Marshall : Collect together algorithms, tools and other content associated with overall control flow.
-   2017-11-16 John Marshall : Print slice indices when running slice worker instances.
-   2017-11-16 John Marshall : Drop current list if no pfos formed for a given slice.
-   2017-11-16 John Marshall : Address subtleties with copying hits to worker instances. Must ensure only copy hits owned by master instance.
-   2017-11-16 John Marshall : New interface for neutrino id tools. Work in progress.
-   2017-11-15 John Marshall : Introduce pre- and post-processing algorithms.
-   2017-11-14 John Marshall : Turn on CR tagging and hit removal.
-   2017-11-14 John Marshall : Take wire w pitches from first TPC. Pseudolayer plugin enforces equal pitches for all TPCs.
-   2017-11-14 John Marshall : First Pfo recreation functionality, to be refactored.
-   2017-11-14 John Marshall : Use parent LArTPC for CR tagging.
-   2017-11-13 John Marshall : Add first slicing and processing of slices.
-   2017-11-13 John Marshall : Slicing now occurs entirely within a single Pandora worker instance.
-   2017-11-10 John Marshall : Test slice nu worker instance too.
-   2017-11-10 John Marshall : Pass some hits to CR workers.
-   2017-11-10 John Marshall : Plugins now handle presence of multiple LArTPCs for master instance.
-   2017-11-10 John Marshall : First creation of Pandora worker instances in master algorithm.
-   2017-11-10 John Marshall : Replace parent algorithms with new master algorithm, which will use worker Pandora instances, rather than purely daughter algorithms and tools.
-   2017-11-10 John Marshall : Alter some default parameter values for cosmic reco.
-   2017-10-12 John Marshall : Handle use of repeated stitching tool instances.

larsoftobj v1\_33\_00(#larsoftobj-v1_33_00)
----------------------------------------------

-   2017-12-13 Lynn Garren : larsoftobj v1\_33\_00 for larsoft v06\_60\_00
-   2017-12-13 Lynn Garren : updating build

lardataobj v1\_24\_00(#lardataobj-v1_24_00)
----------------------------------------------

-   2017-12-13 Lynn Garren : lardataobj v1\_24\_00 for larsoft v06\_60\_00
-   2017-12-07 Gianluca Petrillo : Updated recob::Vertex version and checksum
-   2017-12-07 Gianluca Petrillo : Tracking objects now use geometry vector types directly.

larcorealg v1\_12\_00(#larcorealg-v1_12_00)
----------------------------------------------

-   2017-12-13 Lynn Garren : larcorealg v1\_12\_00 for larsoft v06\_60\_00
-   2017-12-13 Gianluca Petrillo : Full support of GenVector vectors in geometry structures
-   2017-12-08 Gianluca Petrillo : Added simplified interface for vector types in affine space
-   2017-12-08 Gianluca Petrillo : Using full path in Doxygen file name documentation

larcoreobj v1\_18\_00(#larcoreobj-v1_18_00)
----------------------------------------------

-   2017-12-13 Lynn Garren : larcoreobj v1\_18\_00 for larsoft v06\_60\_00
-   2017-12-13 Gianluca Petrillo : Removed redundant stream dump operators for vectors.
-   2017-12-11 Gianluca Petrillo : Introduced more generic vector types.
-   2017-12-07 Lynn Garren : larsoft v06\_59\_00
-   2017-12-07 Gianluca Petrillo : Adding ROOT dictionary for geo::Vector\_t and geo::Point\_t

larbatch v01\_34\_03(#larbatch-v01_34_03)
--------------------------------------------

-   2017-12-13 Lynn Garren : larbatch v01\_34\_03 for larsoft v06\_60\_00
-   2017-12-07 Herbert Greenlee : Fix bug in copy to dropbox

larutils v1\_20\_03(#larutils-v1_20_03)
------------------------------------------

-   2017-12-13 Lynn Garren : larutils v1\_20\_03 for larsoft v06\_60\_00
-   2017-12-12 Lynn Garren : s59 for art v2\_05\_01
