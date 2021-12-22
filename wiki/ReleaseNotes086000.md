LArSoft v08\_60\_00 Release Notes(#LArSoft-v08_60_00-Release-Notes)
======================================================================

-   **Table of contents**
-   [LArSoft v08\_60\_00 Release Notes](#LArSoft-v08_60_00-Release-Notes)
    -   [Purpose](#Purpose)
    -   [New features](#New-features)
    -   [Bug fixes](#Bug-fixes)
    -   [Updated dependencies](#Updated-dependencies)
-   [Change List](#Change-List)
    -   [larsoft v08\_60\_00](#larsoft-v08_60_00)
    -   [lareventdisplay v08\_12\_23](#lareventdisplay-v08_12_23)
    -   [larexamples v08\_06\_23](#larexamples-v08_06_23)
    -   [larg4 v08\_14\_07](#larg4-v08_14_07)
    -   [larpandora v08\_13\_03](#larpandora-v08_13_03)
    -   [larsimrad v08\_00\_01](#larsimrad-v08_00_01)
    -   [larrecodnn v08\_06\_03](#larrecodnn-v08_06_03)
    -   [larwirecell v08\_12\_17](#larwirecell-v08_12_17)
    -   [larana v08\_17\_15](#larana-v08_17_15)
    -   [larreco v08\_32\_08](#larreco-v08_32_08)
    -   [larsim v08\_31\_00](#larsim-v08_31_00)
    -   [larevt v08\_12\_01](#larevt-v08_12_01)
    -   [lardata v08\_15\_10](#lardata-v08_15_10)
    -   [larcore v08\_11\_10](#larcore-v08_11_10)
    -   [larpandoracontent v03\_19\_00](#larpandoracontent-v03_19_00)
    -   [larsoftobj v08\_29\_03](#larsoftobj-v08_29_03)
    -   [lardataobj v08\_11\_03](#lardataobj-v08_11_03)
    -   [lardataalg v08\_13\_15](#lardataalg-v08_13_15)
    -   [larcorealg v08\_22\_02](#larcorealg-v08_22_02)
    -   [larcoreobj v08\_12\_01](#larcoreobj-v08_12_01)
    -   [webevd v08\_01\_00](#webevd-v08_01_00)
    -   [larbatch v01\_52\_02](#larbatch-v01_52_02)
    -   [larutils v1\_26\_01](#larutils-v1_26_01)

[list of LArSoft releases](LArSoft_release_list)\
Download instructions for [larsoft v08\_60\_00](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v08_60_00/larsoft-v08_60_00.html)\
Download instructions for [just larsoftobj v08\_29\_03](http://scisoft.fnal.gov/scisoft/bundles/larsoftobj/v08_29_03/larsoftobj-v08_29_03.html)

Purpose(#Purpose)
--------------------

-   changes in develop
-   approved PRs

New features(#New-features)
------------------------------

-   lardataobj PR 8
    -   Extended \`recob::SpacePoint\` interface.
-   larpandoracontent PR 9
    -   **dunetpc will want feature/imawby\_trackInEMShower**
    -   This PR introduces the TrackInEMShower algorithm to Pandora.
    -   The TrackInEMShower algorithm is a 2D hit clustering algorithm that attempts to better cluster cosmic ray muon tracks that have been split by large amounts of electromagnetic behaviour. A detailed description of this algorithm can be found in [this talk](https://indico.fnal.gov/event/24397/contributions/188223/attachments/129113/156520/DUNEWeek_v2.pdf) whilst some up to date performance metrics are given [here](https://indico.fnal.gov/event/44120/contributions/190068/attachments/130579/159204/CosmicRayUpdate.pdf). Once a related PR to dunetpc (dunetpc feature/imawby\_trackInEMShower) is passed through, the TrackInEMShower will be in use in the cosmic ray reconstruction chain of the DUNE FD with a view to extend its use across more detectors in the future.
-   webevd PR 14
    -   Don’t wait for PNGs to be processed before being ready to serve the page. Instead, encode pngs on demand, and write them directly to the network socket without an intermediate file. This gives better interactive performance.
-   webevd PR 15
    -   No longer require a temporary directory. coords.js is now served directly from memory, and it and the various static files are compressed on-demand.
-   larsim PR 31
    -   Added some features to the legacy LArG4 chain to speed up the generation of a photon visibility library.\
        The changes in larsim include:
        -   option not to produce simb::MCParticle collection; this yield a major memory saving since a photon library job may generate hundred of thousand scintillation-like photons;
        -   option to use sim::SimPhotonsLite instead of sim::SimPhotons, which would save individual photons; the information we require for the photon library is just the total number of detected photons, and possibly a time distribution;
        -   as a “bonus”, added support for some metadata in the photon library: number of voxels and volume covered.
    -   To be valuable, these features need to be combined with improvements in SimPhotonCounters module, which is the target of the twin pull request \#8 for larana.
    -   As a technical note: metadata is implemented via writing RooInt and RooDouble objects into the TFileService ROOT file: I could not find any other TObject-like object which would contain a single value and play well with TFileService registry interface (it was not obvious to me how to write non-TObject objects like TVectorD, neither.
-   larana PR 8
    -   This pull request is twin of larsim pull request \#31, of which it completes the features. The motivation is described in that pull request.
    -   New features introduced in SimPhotonCounter module:
        -   deal with events missing a simb::MCParticle collection, when that collection is effectively not needed;
        -   support for filling the library with information from sim::SimPhotonsLite instead of sim::SimPhotons
    -   The whole photon library generation pattern is in need of a deep redesign, which is not attempted here.

Bug fixes(#Bug-fixes)
------------------------

Updated dependencies(#Updated-dependencies)
----------------------------------------------

-   mrb v4\_01\_04

Change List(#Change-List)
============================

larsoft v08\_60\_00(#larsoft-v08_60_00)
------------------------------------------

-   2020-07-29 Lynn Garren : larsoft v08\_60\_00 for larsoft v08\_60\_00
-   2020-07-29 Lynn Garren : product versions
-   2020-07-23 Lynn Garren : including bxdecay0

lareventdisplay v08\_12\_23(#lareventdisplay-v08_12_23)
----------------------------------------------------------

-   2020-07-29 Lynn Garren : lareventdisplay v08\_12\_23 for larsoft v08\_60\_00

larexamples v08\_06\_23(#larexamples-v08_06_23)
--------------------------------------------------

-   2020-07-29 Lynn Garren : larexamples v08\_06\_23 for larsoft v08\_60\_00

larg4 v08\_14\_07(#larg4-v08_14_07)
--------------------------------------

-   2020-07-29 Lynn Garren : larg4 v08\_14\_07 for larsoft v08\_60\_00

larpandora v08\_13\_03(#larpandora-v08_13_03)
------------------------------------------------

-   2020-07-29 Lynn Garren : larpandora v08\_13\_03 for larsoft v08\_60\_00

larsimrad v08\_00\_01(#larsimrad-v08_00_01)
----------------------------------------------

-   2020-07-29 Lynn Garren : larsimrad v08\_00\_01 for larsoft v08\_60\_00
-   2020-07-29 Lynn Garren : find headers
-   2020-07-29 Lynn Garren : ignore temporary files

larrecodnn v08\_06\_03(#larrecodnn-v08_06_03)
------------------------------------------------

-   2020-07-29 Lynn Garren : larrecodnn v08\_06\_03 for larsoft v08\_60\_00

larwirecell v08\_12\_17(#larwirecell-v08_12_17)
--------------------------------------------------

-   2020-07-29 Lynn Garren : larwirecell v08\_12\_17 for larsoft v08\_60\_00

larana v08\_17\_15(#larana-v08_17_15)
----------------------------------------

-   2020-07-29 Lynn Garren : larana v08\_17\_15 for larsoft v08\_60\_00
-   2020-07-29 Lynn Garren : remove whitespace again - blame the merge
-   2020-07-29 Lynn Garren : Merge branch ‘feature/gp\_fasterLight’ into release/v08\_60\_00
-   2020-07-22 Gianluca Petrillo : Attempt to make SimPhotonCounter module a bit easier to understand.
-   2020-07-22 Gianluca Petrillo : Moved hard-coded wavelengths into constants.
-   2020-07-16 Gianluca Petrillo : SimPhotonCounter now supports building photon library with SimPhotonsLite.
-   2020-07-16 Gianluca Petrillo : SimPhotonCounter: fixed some indentation issues.
-   2020-07-16 Gianluca Petrillo : SimPhotonCounter: tabulations converted into spaces.
-   2020-07-16 Gianluca Petrillo : SimPhotonCounter: PhotonVisibilityService moved to data member.
-   2020-07-15 Gianluca Petrillo : SimPhotonCounter: MCParticle not demanded when not needed.

larreco v08\_32\_08(#larreco-v08_32_08)
------------------------------------------

-   2020-07-29 Lynn Garren : larreco v08\_32\_08 for larsoft v08\_60\_00

larsim v08\_31\_00(#larsim-v08_31_00)
----------------------------------------

-   2020-07-29 Lynn Garren : larsim v08\_31\_00 for larsoft v08\_60\_00
-   2020-07-29 Lynn Garren : whitespace cleanup
-   2020-07-29 Lynn Garren : Merge branch ‘feature/gp\_fasterLight’ into release/v08\_60\_00
-   2020-07-22 Gianluca Petrillo : Missed a last commit…
-   2020-07-22 Gianluca Petrillo : Less restrictive implementation of PhotonLibrary::GetVoxelDef()
-   2020-07-22 Gianluca Petrillo : PhotonLibrary object does not depend on TFileService any more.
-   2020-07-22 Gianluca Petrillo : Using make\_optional() intead of a type “conversion”.
-   2020-07-22 Gianluca Petrillo : Adopted explicit static\_cast to test an unique pointer.
-   2020-07-22 Gianluca Petrillo : Adopted \`cet::exempt\_ptr\` in place of a base C pointer.
-   2020-07-22 Gianluca Petrillo : \`OpDetSensitiveDetector::Wavelength()\` moved to free function.
-   2020-07-18 Gianluca Petrillo : PhotonVoxels suddenty realised it was using GenVectors.
-   2020-07-17 Gianluca Petrillo : Support for storing library geometry metadata in the photon library.
-   2020-07-16 Gianluca Petrillo : Added support to generate SimPhotonsLite with full optical simulation.
-   2020-07-16 Gianluca Petrillo : Allow disabling particle list output in LArG4

larevt v08\_12\_01(#larevt-v08_12_01)
----------------------------------------

-   2020-07-29 Lynn Garren : larevt v08\_12\_01 for larsoft v08\_60\_00

lardata v08\_15\_10(#lardata-v08_15_10)
------------------------------------------

-   2020-07-29 Lynn Garren : lardata v08\_15\_10 for larsoft v08\_60\_00

larcore v08\_11\_10(#larcore-v08_11_10)
------------------------------------------

larpandoracontent v03\_19\_00(#larpandoracontent-v03_19_00)
--------------------------------------------------------------

-   2020-07-29 Lynn Garren : larpandoracontent v03\_19\_00 for larsoft v08\_60\_00
-   2020-07-28 Lynn Garren : Merge pull request \#9 from PandoraPFA/feature/larpandoracontent\_v03\_19\_00
-   2020-07-27 Isobel Mawby : unsigned into to signed int change
-   2020-07-23 Isobel Mawby : Assess whether position can be found in sliding fit
-   2020-07-20 Isobel Mawby : whitespace removal
-   2020-07-20 Isobel Mawby : CMakeLists.txt and ChangeLog.txt updates
-   2020-07-20 Isobel Mawby : cosmetic
-   2020-07-20 Isobel Mawby : Check unavailable clusters set before dereferencing in TwoDSlidingFitConsolidation algorithm.
-   2020-07-20 Isobel Mawby : Check unavailable clusters set before dereferencing in TwoDSlidingFitConsolidation algorithm.
-   2020-07-07 Isobel Mawby : PR changes
-   2020-07-01 Isobel Mawby : Adding CosmicRayTrackRecoveryAlgorithm.cc back in
-   2020-07-01 Isobel Mawby : whitespace removal
-   2020-07-01 Isobel Mawby : PR changes
-   2020-06-29 Isobel Mawby : PR changes
-   2020-06-22 Isobel Mawby : cosmetic and refactoring
-   2020-06-18 Isobel Mawby : before remove extrapolated hit vector
-   2020-06-15 Isobel Mawby : handling remnant clusters
-   2020-06-10 Isobel Mawby : end of AddToCluster fragmentation update
-   2020-06-08 Isobel Mawby : before AddToCluster fragmentation update
-   2020-06-04 Isobel Mawby : remove added whitespace to sliding fit result
-   2020-06-04 Isobel Mawby : moving impact parameter tree writing from stitching
-   2020-06-04 Isobel Mawby : finished new fragmentation procedure
-   2020-06-04 Isobel Mawby : separation distance motivated fragmentation
-   2020-06-04 Isobel Mawby : remove print
-   2020-06-04 Isobel Mawby : continue DR investigation
-   2020-05-29 Isobel Mawby : implementation of fragmentation of delta rays
-   2020-05-28 Isobel Mawby : state before fragmentation addition
-   2020-05-27 Isobel Mawby : remove line
-   2020-05-27 Isobel Mawby : cosmetic changes to impact parameter
-   2020-05-27 Isobel Mawby : cosmetic changes
-   2020-05-26 imawby : Delete EMTrackAlgorithm.h
-   2020-05-26 Isobel Mawby : code cleanup
-   2020-05-19 Isobel Mawby : adding impact parameter changes
-   2020-05-18 Isobel Mawby : consider association with largest number of hits first
-   2020-05-18 Isobel Mawby : general improvements
-   2020-05-15 imawby : Add files via upload
-   2020-04-09 Isobel Mawby : improve track refinement - iterate through calo hits
-   2020-04-08 Isobel Mawby : refining the tracks (remove delta rays)
-   2020-04-03 Isobel Mawby : make assessment of gaps continuous and not net
-   2020-04-03 Isobel Mawby : alter merging point definintions
-   2020-04-02 Isobel Mawby : visualisation code changes
-   2020-03-31 Isobel Mawby : isContinuous - dealt with last segment, investigate different cluster direction
-   2020-03-30 Isobel Mawby : make algorithm continuous, change is continuous track logic
-   2020-03-27 Isobel Mawby : merging final clusters together
-   2020-03-26 Isobel Mawby : added hits to the inner cluster - need to clean up maps
-   2020-03-25 Isobel Mawby : selection of hits within shower that fall between tracks
-   2020-03-23 Isobel Mawby : initial push

larsoftobj v08\_29\_03(#larsoftobj-v08_29_03)
------------------------------------------------

-   2020-07-29 Lynn Garren : larsoftobj v08\_29\_03 for larsoft v08\_60\_00
-   2020-07-29 Lynn Garren : cleanup
-   2020-07-29 Lynn Garren : product versions

lardataobj v08\_11\_03(#lardataobj-v08_11_03)
------------------------------------------------

-   2020-07-29 Lynn Garren : lardataobj v08\_11\_03 for larsoft v08\_60\_00
-   2020-07-29 Lynn Garren : Merge pull request \#8 from PetrilloAtWork/feature/gp\_SpacePoint
-   2020-07-25 Gianluca Petrillo : Extended \`recob::SpacePoint\` interface.

lardataalg v08\_13\_15(#lardataalg-v08_13_15)
------------------------------------------------

-   2020-07-29 Lynn Garren : lardataalg v08\_13\_15 for larsoft v08\_60\_00

larcorealg v08\_22\_02(#larcorealg-v08_22_02)
------------------------------------------------

larcoreobj v08\_12\_01(#larcoreobj-v08_12_01)
------------------------------------------------

webevd v08\_01\_00(#webevd-v08_01_00)
----------------------------------------

-   2020-07-29 Lynn Garren : webevd v08\_01\_00 for larsoft v08\_60\_00
-   2020-07-29 Lynn Garren : find headers
-   2020-07-27 Lynn Garren : Merge pull request \#15 from cjbackhouse/feature/no\_tmp
-   2020-07-24 Christopher Backhouse : Merge branch ‘feature/no\_tmp’ of github.com:cjbackhouse/webevd into feature/no\_tmp
-   2020-07-23 Christopher Backhouse : No longer require a temporary directory. coords.js is now served directly from memory, and it and the various static files are compressed on-demand.
-   2020-07-24 Lynn Garren : Merge pull request \#14 from cjbackhouse/feature/lazy\_pngs
-   2020-07-24 Christopher Backhouse : Guess at clang build fix.
-   2020-07-23 Christopher Backhouse : No longer require a temporary directory. coords.js is now served directly from memory, and it and the various static files are compressed on-demand.
-   2020-07-20 Christopher Backhouse : Don’t wait for PNGs to be processed before being ready to serve the page. Insterad, encode pngs on demand, and write them directly to the network socket without an intermediate file. This gives better interactive performance.

larbatch v01\_52\_02(#larbatch-v01_52_02)
--------------------------------------------

larutils v1\_26\_01(#larutils-v1_26_01)
------------------------------------------
