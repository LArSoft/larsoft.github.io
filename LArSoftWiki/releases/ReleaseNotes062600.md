# LArSoft v06_26_00 Release Notes



[list of LArSoft releases](LArSoft_release_list)  
Download instructions for [larsoft v06_26_00](https://scisoft.fnal.gov/scisoft/bundles/larsoft/v06_26_00/larsoft-v06_26_00.html)  
Download instructions for [just larsoftobj v1_11_00](https://scisoft.fnal.gov/scisoft/bundles/larsoftobj/v1_11_00/larsoftobj-v1_11_00.html)

## Purpose

-   Changes to develop and approved features

## New features

-   calculate shower energy
    -   larreco feature/yuntse_calo
    -   larpandora feature/yuntse_shower
-   updates for PMA to include track stitching across both CPAs and APAs
    -   larreco feature/lhw_TrackStitcher

## Bug fixes

## Updated dependencies

# Change List

## larsoft v06_26_00

-   2017-02-21 Lynn Garren : larsoft v06_26_00 for larsoft v06_26_00
-   2017-02-21 Lynn Garren : update product versions
-   2017-02-21 Lynn Garren : update dependency database

## lareventdisplay v06_02_14

-   2017-02-21 Lynn Garren : lareventdisplay v06_02_14 for larsoft v06_26_00

## larexamples v06_01_15

-   2017-02-21 Lynn Garren : larexamples v06_01_15 for larsoft v06_26_00

## larpandora v06_08_00

-   2017-02-21 Lynn Garren : add missing library
-   2017-02-21 Lynn Garren : larpandora v06_08_00 for larsoft v06_26_00
-   2017-02-20 Gianluca Petrillo : Shower energy made optional in Pandora.
-   2017-02-18 Gianluca Petrillo : Shower energy preparation moved to LArPandora.
-   2017-02-18 Gianluca Petrillo : LArPandora modules now print the shower energy algorithm configuration into the log.
-   2017-02-18 Gianluca Petrillo : First complete LArPandora interface to shower energy.
-   2017-02-17 Yun-Tse Tsai : first attempt to build the interface of shower energy reco

## larwirecell v06_00_12

-   2017-02-21 Lynn Garren : larwirecell v06_00_12 for larsoft v06_26_00

## larana v06_03_18

-   2017-02-21 Lynn Garren : larana v06_03_18 for larsoft v06_26_00
-   2017-01-11 Gianluca Petrillo : OpFlashAlg now looks for the right TPC.

## larreco v06_20_00

-   2017-02-21 Lynn Garren : larreco v06_20_00 for larsoft v06_26_00
-   2017-02-21 Lynn Garren : find range headers
-   2017-02-21 Lynn Garren : Merge branch 'feature/yuntse_calo' into release/v06_26_00
-   2017-02-21 Lynn Garren : Merge branch 'feature/lhw_TrackStitcher' into release/v06_26_00
-   2017-02-21 Robert Sulej : one more (minor) optimization
-   2017-02-21 Robert Sulej : Merge branch 'develop' of ssh://cdcvs.fnal.gov/cvs/projects/larreco into develop
-   2017-02-21 Robert Sulej : unroll loop so one can vectorize it, optimize memory a bit, speedup by x2 (depending on used layers)
-   2017-02-21 Robert Sulej : add michel test info
-   2017-02-20 Robert Sulej : Merge branch 'develop' of ssh://cdcvs.fnal.gov/cvs/projects/larreco into develop
-   2017-02-20 Robert Sulej : add option for 4-out network
-   2017-02-18 Yun-Tse Tsai : update the constant so that the unit of the energy is GeV
-   2017-02-18 Gianluca Petrillo : LinearEnergyAlg interface extended to accept iterators for hit associated to clusters.
-   2017-02-18 Yun-Tse Tsai : order the output energy vector by the plane
-   2017-02-18 Gianluca Petrillo : LinearEnergyAlg can now print its configuration on screen.
-   2017-02-18 Gianluca Petrillo : Different approach to configuration of LinearEnergyAlg
-   2017-02-18 Gianluca Petrillo : First attempt to configurable recombination parameters.
-   2017-02-18 Gianluca Petrillo : LinearEnergyAlg can now deal with a single cluster too.
-   2017-02-18 Gianluca Petrillo : LinearEnergyAlg cluster energy method made constant.
-   2017-01-11 Gianluca Petrillo : Replacing yet another deprecated GeometryCore::PlaneIDs() with GeometryCore::IteratePlaneIDs().
-   2017-02-17 Yun-Tse Tsai : Merge branch 'develop' into feature/yuntse_calo
-   2017-02-17 Gianluca Petrillo : First revision of the cluster energy algorithm draft.
-   2017-02-17 Yun-Tse Tsai : draft of calorimetry algorithm
-   2017-02-17 Tingjun Yang : Update fcl parameteres for argoneut.
-   2017-02-13 Leigh Whitehead : Replace std::couts with more controlable comments mf::LogInfo
-   2017-02-13 Leigh Whitehead : Merge branch 'develop' into feature/lhw_TrackStitcher
-   2017-02-11 Robert Sulej : merge updates, cleanup unused code
-   2017-02-11 Robert Sulej : split parent track if a branching out daughter is merged with another track in t0 matching
-   2017-02-10 Leigh Whitehead : Updates to allow stitching parameters to be controlled by .fcl files.
-   2017-02-09 Leigh Whitehead : Tidy up code and add some more comments.
-   2017-02-09 Robert Sulej : use new functionality in tree flipping to a coordunate
-   2017-02-09 Robert Sulej : merging matched tracks works fine now
-   2017-02-08 Robert Sulej : Merge branch 'feature/lhw_TrackStitcher' of ssh://cdcvs.fnal.gov/cvs/projects/larreco into feature/lhw_TrackStitcher
-   2017-02-08 Robert Sulej : almost done with merging the stitched
-   2017-02-08 Leigh Whitehead : Merge branch 'feature/lhw_TrackStitcher' of ssh://cdcvs.fnal.gov/cvs/projects/larreco into feature/lhw_TrackStitcher
-   2017-02-08 Leigh Whitehead : Fix a bug introduced in code reformatting.
-   2017-02-08 Leigh Whitehead : Make the TPC ids properly (benign, but better now).
-   2017-02-08 Leigh Whitehead : Don't match tracks if either end of each track is in the same TPC.
-   2017-02-07 Robert Sulej : Merge branch 'feature/lhw_TrackStitcher' of ssh://cdcvs.fnal.gov/cvs/projects/larreco into feature/lhw_TrackStitcher
-   2017-02-07 Robert Sulej : complete handling of all cases of flip in the track structure
-   2017-02-07 Leigh Whitehead : Fixed a bug with APA matching and stitching. Now working.
-   2017-02-06 Leigh Whitehead : Fixed a bug in generating TPCIDs (wasn't a problem for cathode)
-   2017-02-06 Leigh Whitehead : Optimise the stitching x-shift while matching.
-   2017-02-05 Robert Sulej : use the new flip
-   2017-02-03 Robert Sulej : add flip capable of breaking needed tracks
-   2017-02-03 Robert Sulej : remove t0 shift from trajectory points during conversion (now done in the optimization)
-   2017-02-01 Robert Sulej : in vertexing skip the tracks with cosmic muon tag or non-zero x-shift
-   2017-02-01 Robert Sulej : add cosmic mu tag
-   2017-02-01 Robert Sulej : add t0 assn if x-shift is non-zero (not only positive)
-   2017-02-01 Robert Sulej : shift 3d points of hits and reference poins, not only 3d nodes
-   2017-02-01 Robert Sulej : do not add xshift on conversion to recob Track
-   2017-01-31 Robert Sulej : add shift in X to pma nodes, so the track can be re-optimized after its position was corrected for t0
-   2017-01-31 Robert Sulej : Merge branch 'develop' into feature/lhw_TrackStitcher
-   2017-01-31 Leigh Whitehead : First commits to add the ability to stitch tracks in PMA.
-   2017-01-13 Leigh Whitehead : Merge branch 'develop' into feature/lhw_TrackStitcher
-   2017-01-13 Leigh Whitehead : Update to include the stitcher in the tracking algorithm.
-   2017-01-12 Leigh Whitehead : Merge branch 'develop' into feature/lhw_TrackStitcher
-   2017-01-12 Leigh Whitehead : Initial commit to test a new stitching approach for PMA

## larsim v06_13_01

-   2017-02-21 Lynn Garren : larsim v06_13_01 for larsoft v06_26_00

## larevt v06_07_09

-   2017-02-21 Lynn Garren : larevt v06_07_09 for larsoft v06_26_00

## lardata v06_14_04

-   2017-02-21 Lynn Garren : lardata v06_14_04 for larsoft v06_26_00
-   2017-02-15 Lynn Garren : larsoft v06_25_00
-   2017-02-15 Thomas Junk : update comment on the 39Ar decay rate parameter (now not used)

## larcore v06_05_03

-   2017-02-21 Lynn Garren : larcore v06_05_03 for larsoft v06_26_00
-   2017-02-20 Usher, Tracy L : try to make sure things don’t break
-   2017-02-20 Usher, Tracy L : renaming the now old/obsolete icarus geometry fcl file in order to prevent possible path conflicts (depending on your development environment).

## larpandoracontent v03_02_00

## larsoftobj v1_11_00

## lardataobj v1_11_00

## larcoreobj v1_06_02

## larbatch v01_26_05

## larutils v1_11_01
