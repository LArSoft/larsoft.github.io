LArSoft v06\_49\_00 Release Notes(#LArSoft-v06_49_00-Release-Notes)
======================================================================

-   **Table of contents**
-   [LArSoft v06\_49\_00 Release Notes](#LArSoft-v06_49_00-Release-Notes)
    -   [Purpose](#Purpose)
    -   [New features](#New-features)
    -   [Notes for art v2\_08\_03](#Notes-for-art-v2_08_03)
    -   [Updated dependencies](#Updated-dependencies)
-   [Change List](#Change-List)
    -   [larsoft v06\_49\_00](#larsoft-v06_49_00)
    -   [lareventdisplay v06\_12\_00](#lareventdisplay-v06_12_00)
    -   [larexamples v06\_07\_00](#larexamples-v06_07_00)
    -   [larpandora v06\_16\_00](#larpandora-v06_16_00)
    -   [larwirecell v06\_07\_00](#larwirecell-v06_07_00)
    -   [larana v06\_10\_00](#larana-v06_10_00)
    -   [larreco v06\_39\_00](#larreco-v06_39_00)
    -   [larsim v06\_31\_00](#larsim-v06_31_00)
    -   [larevt v06\_16\_00](#larevt-v06_16_00)
    -   [lardata v06\_28\_00](#lardata-v06_28_00)
    -   [larcore v06\_15\_00](#larcore-v06_15_00)
    -   [larpandoracontent v03\_07\_05](#larpandoracontent-v03_07_05)
    -   [larsoftobj v1\_27\_00](#larsoftobj-v1_27_00)
    -   [lardataobj v1\_21\_00](#lardataobj-v1_21_00)
    -   [larcorealg v1\_07\_00](#larcorealg-v1_07_00)
    -   [larcoreobj v1\_16\_00](#larcoreobj-v1_16_00)
    -   [larbatch v01\_32\_04](#larbatch-v01_32_04)
    -   [larutils v1\_19\_01](#larutils-v1_19_01)

[list of LArSoft releases](LArSoft_release_list)\
Download instructions for [larsoft v06\_49\_00](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v06_49_00/larsoft-v06_49_00.html)\
Download instructions for [just larsoftobj v1\_27\_00](http://scisoft.fnal.gov/scisoft/bundles/larsoftobj/v1_27_00/larsoftobj-v1_27_00.html)

Purpose(#Purpose)
--------------------

-   changes to develop
-   approved feature branches
-   upgrade to art v2\_08\_03 (s54)

New features(#New-features)
------------------------------

-   larreco feature/bckhouse reco3d
    -   new charge deposition reconstruction module named SpacePointSolver
-   lardata, larreco feature/usher\_cluster3dupdates

Notes for art v2\_08\_03(#Notes-for-art-v2_08_03)
----------------------------------------------------

-   necessary changes for experiment code are in the feature/team\_for\_art\_2\_08 branch
-   PtrMaker is now in art
    -   use v06\_49\_00-PtrMakerInArt.sh
-   drop the first value in calls to getProductID
-   configuration files are now validated
    -   the statistics line should be inside the destination block
    -   an append statement cannot be used with a cout destination
-   root has breaking change in TMatrixT

Updated dependencies(#Updated-dependencies)
----------------------------------------------

  --------------- -------------- ------------ --------------------------------------------------------------------------------------------------
  Product         Version        Qualifiers   Notes
  nutools         v2\_16\_03     e14          [NuTools\_Release\_Notes](/redmine/projects/nutools/wiki/NuTools_Release_Notes#nutools-v2_16_03)
  nusimdata       v1\_08\_03     e14          
  ifdh\_art       v2\_01\_06     e14:nu:s54   
  artdaq\_core    v1\_07\_11     e14:nu:s54   
  gallery         v1\_05\_02     e14:nu       [Release Notes 1.05.02](/redmine/projects/gallery/wiki/Release_Notes_10502)
  art             v2\_08\_03     e14:nu       [Release Notes 2.08.03](/redmine/projects/art/wiki/Release_Notes_20803)
  canvas          v3\_00\_02     e14:nu       [Release Notes 3.00.02](/redmine/projects/canvas/wiki/Release_Notes#30002)
  root            v6\_10\_04d    e14:nu       
  marley          v1\_0\_0a      e14          
  pandora         v03\_04\_01a   e14:nu       
  wirecell        v0\_6\_1a      e14          
  cetbuildtools   v5\_14\_00                  
  --------------- -------------- ------------ --------------------------------------------------------------------------------------------------

Change List(#Change-List)
============================

larsoft v06\_49\_00(#larsoft-v06_49_00)
------------------------------------------

-   2017-09-06 Lynn Garren : larsoft v06\_49\_00 for larsoft v06\_49\_00
-   2017-09-06 Lynn Garren : make consistent
-   2017-09-06 Lynn Garren : larsoftobj uses gallery build
-   2017-09-06 Lynn Garren : for art 2.08.03
-   2017-09-05 Lynn Garren : not quite so much
-   2017-09-05 Lynn Garren : add some protections
-   2017-09-05 Lynn Garren : have the release name
-   2017-08-31 Lynn Garren : for art 2.08.03
-   2017-08-31 Lynn Garren : put it back..
-   2017-08-31 Lynn Garren : Merge branch ‘develop’ into feature/team\_for\_art\_2\_08
-   2017-08-30 Lynn Garren : buildFW does not attempt to build null flavored products
-   2017-08-28 Lynn Garren : for larsoft test release v06\_47\_01\_01
-   2017-08-28 Lynn Garren : PtrMaker is now in art

lareventdisplay v06\_12\_00(#lareventdisplay-v06_12_00)
----------------------------------------------------------

-   2017-09-06 Lynn Garren : lareventdisplay v06\_12\_00 for larsoft v06\_49\_00
-   2017-09-05 Lynn Garren : Merge branch ‘feature/team\_for\_art\_2\_08’ into release/v06\_49\_00
-   2017-09-01 Usher, Tracy L : Merge branch ‘develop’ of ssh://cdcvs.fnal.gov/cvs/projects/lareventdisplay into develop
-   2017-09-01 Usher, Tracy L : formatting and make sure space points output
-   2017-09-01 Usher, Tracy L : Remove superfluous std cout
-   2017-08-31 Lynn Garren : for art 2.08.03
-   2017-08-31 Lynn Garren : Merge branch ‘develop’ into feature/team\_for\_art\_2\_08
-   2017-08-31 Tingjun Yang : Support negative cluster ID.
-   2017-08-28 Lynn Garren : for larsoft test release v06\_47\_01\_01
-   2017-08-28 Lynn Garren : drop the first value in calls to getProductID

larexamples v06\_07\_00(#larexamples-v06_07_00)
--------------------------------------------------

-   2017-09-06 Lynn Garren : larexamples v06\_07\_00 for larsoft v06\_49\_00
-   2017-08-31 Lynn Garren : for art 2.08.03
-   2017-08-31 Lynn Garren : Merge branch ‘develop’ into feature/team\_for\_art\_2\_08
-   2017-08-28 Lynn Garren : for larsoft test release v06\_47\_01\_01

larpandora v06\_16\_00(#larpandora-v06_16_00)
------------------------------------------------

-   2017-09-06 Lynn Garren : larpandora v06\_16\_00 for larsoft v06\_49\_00
-   2017-08-31 Lynn Garren : for art 2.08.03
-   2017-08-31 Lynn Garren : Merge branch ‘develop’ into feature/team\_for\_art\_2\_08
-   2017-08-28 Lynn Garren : for larsoft test release v06\_47\_01\_01
-   2017-08-28 Lynn Garren : PtrMaker is now in art

larwirecell v06\_07\_00(#larwirecell-v06_07_00)
--------------------------------------------------

-   2017-09-06 Lynn Garren : larwirecell v06\_07\_00 for larsoft v06\_49\_00
-   2017-08-31 Lynn Garren : for art 2.08.03
-   2017-08-31 Lynn Garren : Merge branch ‘develop’ into feature/team\_for\_art\_2\_08
-   2017-08-28 Lynn Garren : for larsoft test release v06\_47\_01\_01

larana v06\_10\_00(#larana-v06_10_00)
----------------------------------------

-   2017-09-06 Lynn Garren : larana v06\_10\_00 for larsoft v06\_49\_00
-   2017-09-05 Lynn Garren : Merge branch ‘feature/team\_for\_art\_2\_08’ into release/v06\_49\_00
-   2017-09-01 Jason Stock : patch for SimPhotonCounter bug impacting dune photon library generation. (The backtracker is not only used when fMakeLightAnalysisTree is true).
-   2017-09-01 Jason Stock : replacing tabs with spaces
-   2017-09-01 Jason Stock : Fixing tabs
-   2017-08-31 Lynn Garren : for art 2.08.03
-   2017-08-31 Lynn Garren : Merge branch ‘develop’ into feature/team\_for\_art\_2\_08
-   2017-08-28 Lynn Garren : for larsoft test release v06\_47\_01\_01

larreco v06\_39\_00(#larreco-v06_39_00)
------------------------------------------

-   2017-09-06 Lynn Garren : larreco v06\_39\_00 for larsoft v06\_49\_00
-   2017-09-06 Lynn Garren : Merge branch ‘feature/usher\_cluster3dupdates’ into release/v06\_49\_00
-   2017-09-05 Usher, Tracy L : Merge remote-tracking branch ‘origin/feature/bckhouse\_reco3d’ into feature/usher\_cluster3dupdates
-   2017-09-05 Usher, Tracy L : Merge branch ‘develop’ into feature/usher\_cluster3dupdates
-   2017-09-05 Usher, Tracy L : Removing the “Reco3D” from the feature branch (inadvertently merged in!)
-   2017-09-05 Usher, Tracy L : Clean up a bit, remove extraneous output
-   2017-09-05 Usher, Tracy L : Improve merging algorithm using PCA axes - rely more on doca information and angles of PCA axes to connecting axis.
-   2017-09-05 Usher, Tracy L : Work in progress: changing scheme for matching PCA axes
-   2017-09-05 Usher, Tracy L : detuning hit selection momentarily
-   2017-09-05 Usher, Tracy L : Add a function which will recursively split clusters based on PCA, add an “output handler” subclass - idea is both will eventually move out of the module
-   2017-09-05 Lynn Garren : Merge branch ‘feature/team\_for\_art\_2\_08’ into release/v06\_49\_00
-   2017-09-05 Lynn Garren : Merge branch ‘feature/bckhouse\_reco3d’ into release/v06\_49\_00
-   2017-09-04 Christopher Backhouse : Centralize CellTree configuration in one place, so adding a new parameter doesn’t require changing four macros.
-   2017-09-04 Christopher Backhouse : Add missing colons to celltree fcls.
-   2017-09-04 Christopher Backhouse : Rename Reco3D to SpacePointSolver.
-   2017-09-01 Christopher Backhouse : Fix bug with naming of 3D output files.
-   2017-09-01 Christopher Backhouse : Match collection and induction wires by X, not T, which should fix some small errors due to the plane spacing.
-   2017-09-01 Christopher Backhouse : Fix fcl so the plotting module actually runs.
-   2017-09-01 Christopher Backhouse : Create Assns between the collection wire hits and their resulting SpacePoints.
-   2017-09-01 Christopher Backhouse : Make module labels configurable.
-   2017-09-01 Usher, Tracy L : More tail chasing in the name of hit arbitration
-   2017-09-01 Usher, Tracy L : Trying to work on hit arbitration but really chasing my tail
-   2017-09-01 Usher, Tracy L : Merge branch ‘develop’ of ssh://cdcvs.fnal.gov/cvs/projects/larreco into develop
-   2017-08-30 Christopher Backhouse : Split the plotting out into its own module.
-   2017-08-31 Lynn Garren : with nutools v2\_16\_03
-   2017-08-31 Lynn Garren : PtrMaker is now in art
-   2017-08-31 Lynn Garren : Merge branch ‘develop’ into feature/team\_for\_art\_2\_08
-   2017-08-30 Lynn Garren : Merge branch ‘feature/cerati\_phase2track’ into develop
-   2017-08-30 Christopher Backhouse : Fix a small nit in the metric calculation.
-   2017-08-30 Christopher Backhouse : Simplify logic to be directly in terms of charge being moved around, no reference to weights.
-   2017-08-29 Christopher Backhouse : Merge branch ‘develop’ of ssh://cdcvs.fnal.gov/cvs/projects/larreco into feature/bckhouse\_reco3d
-   2017-08-29 Giuseppe Cerati : add TrackTrajectoryCreationBookKeeper
-   2017-08-29 Giuseppe Cerati : use track key, plus improve printouts
-   2017-08-28 Usher, Tracy L : Merge remote-tracking branch ‘origin/feature/bckhouse\_reco3d’ into develop
-   2017-08-28 Usher, Tracy L : convert to floats and then invest in trying to find a better cluster hit arbitration
-   2017-08-28 Usher, Tracy L : Convert from double to float, reflect slight restructuring of internal data structure, lots of code cleanup
-   2017-08-28 Lynn Garren : for larsoft test release v06\_47\_01\_01
-   2017-08-28 Lynn Garren : Merge branch ‘feature/team\_for\_art\_2\_082’ into feature/team\_for\_art\_2\_08
-   2017-08-28 Lynn Garren : nutools v2\_16\_01
-   2017-08-28 Giuseppe Cerati : use util::groupByIndex
-   2017-08-26 Tingjun Yang : Merge branch ‘feature/bckhouse\_reco3d’ of ssh://cdcvs.fnal.gov/cvs/projects/larreco into feature/bckhouse\_reco3d
-   2017-08-26 Tingjun Yang : Merge branch ‘feature/bckhouse\_reco3d’ of ssh://cdcvs.fnal.gov/cvs/projects/larreco into feature/bckhouse\_reco3d
-   2017-08-26 Christopher Backhouse : Save a little more memory.
-   2017-08-26 Christopher Backhouse : Remove some unused member variables.
-   2017-08-26 Christopher Backhouse : std::unordered\_map should use less memory, and maybe be faster, than std::map.
-   2017-08-26 Christopher Backhouse : Fix naming of variables inside IntCoord fT-\>fX
-   2017-08-26 Christopher Backhouse : Remove some dead code.
-   2017-08-26 Tingjun Yang : Change to use art::Ptr\<recob::Hit\>
-   2017-08-26 Tingjun Yang : Turn off plotting by default.
-   2017-08-25 Tingjun Yang : Merge branch ‘develop’ of ssh://cdcvs.fnal.gov/cvs/projects/larreco into feature/bckhouse\_reco3d
-   2017-08-25 Christopher Backhouse : Initial commit.
-   2017-08-25 Giuseppe Cerati : fixes, plus addPoint with conset ref
-   2017-08-23 Giuseppe Cerati : improve documentation and functions moving out collections
-   2017-08-23 Giuseppe Cerati : implement suggestions from Gianlunca
-   2017-08-18 Giuseppe Cerati : documentation, plus move functionality in the right place
-   2017-08-18 Giuseppe Cerati : fixes
-   2017-08-18 Giuseppe Cerati : better fratoring of the code, option to use mcs momentum as input to fit
-   2017-08-18 Giuseppe Cerati : remove dummy files
-   2017-08-18 Giuseppe Cerati : update
-   2017-08-15 Giuseppe Cerati : minor touch ups
-   2017-08-15 Giuseppe Cerati : mionr updates
-   2017-08-15 Giuseppe Cerati : factoring of the code, for better readability and usability
-   2017-08-15 Lynn Garren : drop the first value in calls to getProductID
-   2017-08-15 Lynn Garren : PtrMaker is now in art
-   2017-08-15 Lynn Garren : root has breaking change in TMatrixT
-   2017-08-14 Giuseppe Cerati : KalmanFilterFitTrackMaker\_tool and other updates
-   2017-08-10 Giuseppe Cerati : add also producers for TrackTrajectory and PFParticle inputs
-   2017-08-10 Giuseppe Cerati : touchups
-   2017-08-09 Giuseppe Cerati : purely virtual method is the one with TrackTrajectory
-   2017-08-09 Giuseppe Cerati : various updates following Gianluca’s suggestions
-   2017-08-09 Giuseppe Cerati : First version of a producer+tool to fit tracks. A dummy implementation of a tool is provided for testing and may be removed aferwards.

larsim v06\_31\_00(#larsim-v06_31_00)
----------------------------------------

-   2017-09-06 Lynn Garren : larsim v06\_31\_00 for larsoft v06\_49\_00
-   2017-08-31 Lynn Garren : for art 2.08.03
-   2017-08-31 Lynn Garren : Merge branch ‘develop’ into feature/team\_for\_art\_2\_08
-   2017-08-28 Lynn Garren : for larsoft test release v06\_47\_01\_01

larevt v06\_16\_00(#larevt-v06_16_00)
----------------------------------------

-   2017-09-06 Lynn Garren : larevt v06\_16\_00 for larsoft v06\_49\_00
-   2017-08-31 Lynn Garren : for art 2.08.03
-   2017-08-31 Lynn Garren : Merge branch ‘develop’ into feature/team\_for\_art\_2\_08
-   2017-08-28 Lynn Garren : for larsoft test release v06\_47\_01\_01

lardata v06\_28\_00(#lardata-v06_28_00)
------------------------------------------

-   2017-09-06 Lynn Garren : lardata v06\_28\_00 for larsoft v06\_49\_00
-   2017-09-06 Lynn Garren : Merge branch ‘feature/usher\_cluster3dupdates’ into release/v06\_49\_00
-   2017-09-01 Usher, Tracy L : Merge branch ‘develop’ of ssh://cdcvs.fnal.gov/cvs/projects/lardata into develop
-   2017-09-01 Usher, Tracy L : Convert double to float… (and its not faster?)
-   2017-08-31 Lynn Garren : for art 2.08.03
-   2017-08-31 Lynn Garren : Merge branch ‘develop’ into feature/team\_for\_art\_2\_08
-   2017-08-28 Lynn Garren : for larsoft test release v06\_47\_01\_01
-   2017-08-28 Lynn Garren : Merge branch ‘feature/team\_for\_art\_2\_082’ into feature/team\_for\_art\_2\_08
-   2017-08-28 Lynn Garren : nutools v2\_16\_01
-   2017-08-15 Lynn Garren : drop the first value in calls to getProductID
-   2017-08-15 Lynn Garren : PtrMaker is now in art
-   2017-08-15 Lynn Garren : art::ProductID now takes a single value
-   2017-08-15 Lynn Garren : workaround for deficiency in boost 1.64
-   2017-08-15 Lynn Garren : PtrMaker is now in art
-   2017-08-15 Lynn Garren : just call id.value()
-   2017-08-15 Lynn Garren : This header is now a wrapper and is retained for backwards compatibility.

larcore v06\_15\_00(#larcore-v06_15_00)
------------------------------------------

-   2017-09-06 Lynn Garren : larcore v06\_15\_00 for larsoft v06\_49\_00
-   2017-08-31 Lynn Garren : for art 2.08.03
-   2017-08-28 Lynn Garren : set FW\_SEARCH\_PATH
-   2017-08-28 Lynn Garren : for larsoft test release v06\_47\_01\_01

larpandoracontent v03\_07\_05(#larpandoracontent-v03_07_05)
--------------------------------------------------------------

-   2017-09-06 Lynn Garren : larpandoracontent v03\_07\_05 for larsoft v06\_49\_00
-   2017-09-05 Lynn Garren : larpandoracontent v03\_07\_05 for art v2\_08\_03
-   2017-08-31 Lynn Garren : for art 2.08.03
-   2017-08-31 Lynn Garren : Merge branch ‘develop’ into feature/team\_for\_art\_2\_08
-   2017-08-28 Lynn Garren : set FW\_SEARCH\_PATH
-   2017-08-28 Lynn Garren : for larsoft test release v06\_47\_01\_01

larsoftobj v1\_27\_00(#larsoftobj-v1_27_00)
----------------------------------------------

-   2017-09-06 Lynn Garren : larsoftobj v1\_27\_00 for larsoft v06\_49\_00
-   2017-09-06 Lynn Garren : tweaking
-   2017-09-06 Lynn Garren : fix
-   2017-09-06 Lynn Garren : for canvas v3\_00\_02
-   2017-08-31 Lynn Garren : for art 2.08.03
-   2017-08-31 Lynn Garren : Merge branch ‘develop’ into feature/team\_for\_art\_2\_08
-   2017-08-29 Lynn Garren : build with gallery v1\_05\_01
-   2017-08-28 Lynn Garren : for larsoft test release v06\_47\_01\_01

lardataobj v1\_21\_00(#lardataobj-v1_21_00)
----------------------------------------------

-   2017-09-06 Lynn Garren : lardataobj v1\_21\_00 for larsoft v06\_49\_00
-   2017-09-05 Lynn Garren : Merge branch ‘develop’ into release/v06\_49\_00
-   2017-09-05 Andrew Furmanski : Added some wrapper class definitions for truth matching
-   2017-08-31 Lynn Garren : for art 2.08.03
-   2017-08-31 Lynn Garren : Merge branch ‘develop’ into feature/team\_for\_art\_2\_08
-   2017-08-28 Lynn Garren : for larsoft test release v06\_47\_01\_01

larcorealg v1\_07\_00(#larcorealg-v1_07_00)
----------------------------------------------

-   2017-09-06 Lynn Garren : larcorealg v1\_07\_00 for larsoft v06\_49\_00
-   2017-08-31 Lynn Garren : for art 2.08.03
-   2017-08-28 Lynn Garren : set FW\_SEARCH\_PATH
-   2017-08-28 Lynn Garren : for larsoft test release v06\_47\_01\_01
-   2017-08-28 Lynn Garren : fix the statistics line

larcoreobj v1\_16\_00(#larcoreobj-v1_16_00)
----------------------------------------------

-   2017-09-06 Lynn Garren : larcoreobj v1\_16\_00 for larsoft v06\_49\_00
-   2017-08-31 Lynn Garren : for art 2.08.03
-   2017-08-28 Lynn Garren : set FW\_SEARCH\_PATH
-   2017-08-28 Lynn Garren : for larsoft test release v06\_47\_01\_01

larbatch v01\_32\_04(#larbatch-v01_32_04)
--------------------------------------------

larutils v1\_19\_01(#larutils-v1_19_01)
------------------------------------------

-   2017-09-06 Lynn Garren : add s54
-   2017-09-06 Lynn Garren : larutils v1\_19\_01 for larsoft v06\_49\_00
-   2017-09-05 Herbert Greenlee : Use official repo.
-   2017-09-01 Herbert Greenlee : Switch repo.
