# LArSoft v08_21_00 Release Notes



[list of LArSoft releases](LArSoft_release_list)  
Download instructions for [larsoft v08_21_00](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v08_21_00/larsoft-v08_21_00.html)  
Download instructions for [just larsoftobj v08_15_01](http://scisoft.fnal.gov/scisoft/bundles/larsoftobj/v08_15_01/larsoftobj-v08_15_01.html)

## Purpose

-   changes in develop
-   approved feature branches

## New features

-   TrajCluster 3D rewrite
    -   larreco feature/bb_new3D
    -   I have finished testing the 3D reconstruction re-write on my mac. The following lines summarize the performance on a small sample of uB MCC9 events with and without using a sliced hit collection. The overall efficiency \* purity for 2D reconstruction (weighted by true kinetic energy) is 0.75 (unsliced hits) vs 0.69 (sliced hits) at a cost of 70 s/event (unsliced hits) vs 5.9 s/event (sliced hits). The processing times are for a c2 debug build which should correspond to 23 s/event and 2 s/event with a E17 prof build.
            *** May 22 Fixed bug in ReconstructAllTraj Setting slc.IsValid false if StoreTraj failed
            Evt 500 El 0.43 Mu 0.79 Pi 0.70 P 0.67 MuPiKP 0.75 BadEP 106 longGood 0.92 MCP cnt 2515 PFP 0.60
            reco:trajcluster2:TrajCluster                  0.194766       70.604        629.536       48.9219       77.1072        320    
            >>> May 23 Repeat using sliced hits
            Evt 500 El 0.40 Mu 0.71 Pi 0.69 P 0.65 MuPiKP 0.69 BadEP 138 longGood 0.90 MCP cnt 2515 PFP 0.54
            reco:trajcluster2:TrajCluster                  0.508129       5.85482       144.144       3.34092       10.298         320    
-   updates for space charge effects calibration
    -   feature/herogers_updateSCE
    -   larreco, larevt
    -   dunetpc, sbndcode and ubevt

## Bug fixes

## Updated dependencies

# Change List

## larsoft v08_21_00

-   2019-05-29 Lynn Garren : larsoft v08_21_00 for larsoft v08_21_00
-   2019-05-29 Lynn Garren : product versions

## lareventdisplay v08_07_03

-   2019-05-29 Lynn Garren : lareventdisplay v08_07_03

## larexamples v08_02_06

-   2019-05-29 Lynn Garren : larexamples v08_02_06

## larg4 v08_03_05

-   2019-05-29 Lynn Garren : larg4 v08_03_05

## larpandora v08_07_02

-   2019-05-29 Lynn Garren : larpandora v08_07_02

## larwirecell v08_05_05

-   2019-05-29 Lynn Garren : larwirecell v08_05_05 for larsoft v08_21_00

## larana v08_09_00

-   2019-05-29 Lynn Garren : larana v08_09_00
-   2019-05-23 Lynn Garren : larsoft v08_20_01
-   2019-05-22 Kyle Spurgeon : Changed all timing variables in OpFlashAna to Doubles

## larreco v08_14_00

-   2019-05-29 Lynn Garren : larreco v08_14_00 for larsoft v08_21_00
-   2019-05-29 Lynn Garren : Merge branch 'feature/bb_new3D' into release/v08_21_00
-   2019-05-29 baller : Merge branch 'feature/bb_new3D' of ssh://cdcvs.fnal.gov/cvs/projects/larreco into feature/bb_new3D
-   2019-05-29 baller : Fix Match3DCuts specification
-   2019-05-29 baller : Fix Match3DCuts specification
-   2019-05-29 Lynn Garren : Merge branch 'feature/herogers_updateSCE' into release/v08_21_00
-   2019-05-26 baller : fixed error
-   2019-05-25 baller : Use const
-   2019-05-23 baller : Fix c2 - e17 conflict
-   2019-05-23 baller : Fix c2 - e17 differences
-   2019-05-23 baller : Change nutools version to get a build
-   2019-05-23 baller : Merge branch 'develop' into feature/bb_new3D
-   2019-05-23 baller : Set default TrajCluster Match3DCuts
-   2019-05-23 baller : Finish 3D re-write
-   2019-05-23 baller : Finish 3D re-write
-   2019-05-23 baller : Finish 3D re-write
-   2019-05-23 baller : Finish 3D re-write
-   2019-05-23 baller : Finish 3D re-write
-   2019-05-23 baller : Finish 3D re-write
-   2019-05-23 baller : Finish 3D re-write
-   2019-05-23 baller : Finish 3D re-write
-   2019-05-23 baller : Finish 3D re-write
-   2019-05-21 Hannah Rogers : Update space charge service for TPC specific corrections
-   2019-05-21 baller : Remove temporary timing code
-   2019-05-16 baller : Add Match3Planes
-   2019-05-16 baller : Replace MatchPlanes with MatchPlanes3D for three-plane TPCs
-   2019-05-12 baller : Ongoing 3D re-write
-   2019-05-12 baller : Ongoing 3D re-write
-   2019-05-12 baller : Ongoing 3D re-write
-   2019-05-12 baller : Ongoing 3D re-write
-   2019-05-12 baller : Ongoing 3D re-write
-   2019-05-12 baller : Ongoing 3D re-write
-   2019-05-12 baller : Ongoing 3D re-write
-   2019-05-12 baller : Ongoing 3D re-write
-   2019-05-07 baller : Fix merge errors
-   2019-05-07 baller : Fix merge errors
-   2019-05-07 baller : Fix merge errors
-   2019-05-07 baller : Fix merge errors
-   2019-05-07 baller : Merge branch 'develop' into feature/bb_new3D
-   2019-05-07 baller : Ongoing 3D re-write
-   2019-05-07 baller : Improve PFP performance metric
-   2019-05-07 baller : Ongoing 3D re-write
-   2019-05-07 baller : Ongoing 3D re-write
-   2019-05-07 baller : Ongoing 3D re-write
-   2019-05-05 baller : Ongoing 3D re-write.
-   2019-05-05 baller : Ongoing 3D re-write.
-   2019-05-05 baller : Ongoing 3D re-write.
-   2019-05-05 baller : Ongoing 3D re-write.
-   2019-05-05 baller : Ongoing 3D re-write.
-   2019-05-05 baller : Ongoing 3D re-write.
-   2019-05-03 baller : Clean up Find2DVertices
-   2019-05-03 baller : Clean up Find2DVertices
-   2019-05-03 baller : Remove HiEndDelta
-   2019-05-03 baller : Remove HiEndDelta - segfault
-   2019-05-03 baller : Ongoing 3D re-write
-   2019-05-03 baller : Ongoing 3D re-write
-   2019-04-30 baller : Ongoing 3D reconstruction re-write
-   2019-04-30 baller : Ongoing 3D reconstruction re-write
-   2019-04-30 baller : Ongoing 3D reconstruction re-write
-   2019-04-30 baller : Ongoing 3D reconstruction re-write
-   2019-04-30 baller : Ongoing 3D reconstruction re-write
-   2019-04-30 baller : Ongoing 3D reconstruction re-write
-   2019-04-30 baller : Ongoing 3D reconstruction re-write
-   2019-04-30 baller : Ongoing 3D reconstruction re-write
-   2019-04-30 baller : Ongoing 3D reconstruction re-write
-   2019-04-30 baller : Ongoing 3D reconstruction re-write
-   2019-04-30 baller : Ongoing 3D reconstruction re-write
-   2019-04-16 baller : Ongoing 3D re-write
-   2019-04-16 baller : Ongoing 3D re-write
-   2019-04-16 baller : Ongoing 3D re-write
-   2019-04-16 baller : Ongoing 3D re-write
-   2019-04-16 baller : Ongoing 3D re-write
-   2019-04-13 baller : Ongoing 3D reconstruction re-write + 2D merge change.
-   2019-04-13 baller : Ongoing 3D reconstruction re-write + 2D merge change.
-   2019-04-13 baller : Ongoing 3D reconstruction re-write + 2D merge change.
-   2019-04-13 baller : Ongoing 3D reconstruction re-write + 2D merge change.
-   2019-04-13 baller : Ongoing 3D reconstruction re-write + 2D merge change.
-   2019-04-13 baller : Ongoing 3D reconstruction re-write + 2D merge change.
-   2019-04-13 baller : Ongoing 3D reconstruction re-write + 2D merge change.
-   2019-04-13 baller : Ongoing 3D reconstruction re-write + 2D merge change.
-   2019-04-13 baller : Ongoing 3D reconstruction re-write + 2D merge change.
-   2019-04-13 baller : Ongoing 3D reconstruction re-write + 2D merge change.
-   2019-04-13 baller : Ongoing 3D reconstruction re-write + 2D merge change.
-   2019-04-10 baller : Ongoing 3D reconstruction re-write.
-   2019-04-10 baller : Ongoing 3D reconstruction re-write.
-   2019-04-10 baller : Ongoing 3D reconstruction re-write.
-   2019-04-10 baller : Ongoing 3D reconstruction re-write.
-   2019-04-10 baller : Ongoing 3D reconstruction re-write.
-   2019-04-10 baller : Ongoing 3D reconstruction re-write.
-   2019-04-10 baller : Ongoing 3D reconstruction re-write.
-   2019-03-29 baller : Ongoing work on 3D reconstruction
-   2019-03-29 baller : Ongoing work on 3D reconstruction
-   2019-03-29 baller : Ongoing work on 3D reconstruction
-   2019-03-29 baller : Ongoing work on 3D reconstruction
-   2019-03-29 baller : Ongoing work on 3D reconstruction
-   2019-03-29 baller : Ongoing work on 3D reconstruction
-   2019-03-24 baller : Step back to v08_13_00
-   2019-03-24 baller : Merge branch 'develop' into feature/bb_new3D
-   2019-03-23 baller : Ongoing re-write of 3D reconstruction
-   2019-03-23 baller : Ongoing re-write of 3D reconstruction
-   2019-03-23 baller : Ongoing re-write of 3D reconstruction
-   2019-03-23 baller : Ongoing re-write of 3D reconstruction
-   2019-03-23 baller : Ongoing re-write of 3D reconstruction
-   2019-03-23 baller : Ongoing re-write of 3D reconstruction
-   2019-03-23 baller : Ongoing re-write of 3D reconstruction
-   2019-03-14 baller : Print feature branch name
-   2019-03-14 baller : Add PFParticle SectionFits
-   2019-03-14 baller : Add PFParticle SectionFits
-   2019-03-14 baller : Add PFParticle SectionFits
-   2019-03-14 baller : Add PFParticle SectionFits
-   2019-03-14 baller : Add PFParticle SectionFits
-   2019-03-14 baller : Add PFParticle SectionFits
-   2019-03-14 baller : Add PFParticle SectionFits
-   2019-03-14 baller : Add PFParticle SectionFits.
-   2019-03-14 baller : Add PFParticle SectionFits
-   2019-03-14 baller : Add PFParticle SectionFits
-   2019-03-14 baller : Add PFParticle SectionFits
-   2019-03-07 baller : Ongoing 3D re-write
-   2019-03-07 baller : Ongoing 3D re-write
-   2019-03-07 baller : Ongoing 3D re-write
-   2019-03-07 baller : Ongoing 3D re-write
-   2019-03-07 baller : Ongoing 3D re-write
-   2019-03-07 baller : Ongoing 3D re-write
-   2019-03-07 baller : Ongoing 3D re-write
-   2019-03-07 baller : Ongoing 3D re-write
-   2019-03-07 baller : Ongoing 3D re-write
-   2019-03-07 baller : Ongoing 3D re-write
-   2019-03-07 baller : Ongoing 3D re-write
-   2019-02-27 baller : First phase of 3D reco re-write
-   2019-02-27 baller : First phase of 3D reco re-write
-   2019-02-27 baller : First phase of 3D reco re-write
-   2019-02-27 baller : First phase of 3D reco re-write
-   2019-02-27 baller : First phase of 3D reco re-write
-   2019-02-27 baller : First phase of 3D reco re-write
-   2019-02-27 baller : First phase of 3D reco re-write
-   2019-02-27 baller : First phase of 3D reco re-write
-   2019-02-27 baller : First phase of 3D reco re-write
-   2019-02-27 baller : First phase of 3D reco re-write
-   2019-02-23 baller : Remove commented code
-   2019-02-22 baller : Define default MaxSliceHits
-   2019-02-22 baller : Back up product_deps to get a build
-   2019-02-22 baller : Merge branch 'develop' into feature/bb_TCOpt
-   2019-02-22 baller : Add MaxSliceHits
-   2019-01-29 baller : fix comparison error
-   2019-01-29 baller : remove comment
-   2019-01-29 baller : Fix comparison error
-   2019-01-29 baller : Fix comparison error
-   2019-01-28 baller : Replace allHitsRanges with goodWire and wireHitRange to reduce cpu time.
-   2019-01-28 baller : Replace allHitsRanges with goodWire and wireHitRange to reduce cpu time.
-   2019-01-28 baller : Add UseChannelStatus
-   2019-01-28 baller : Replace allHitsRanges with goodWire and wireHitRange to reduce cpu time.
-   2019-01-28 baller : Replace allHitsRanges with goodWire and wireHitRange to reduce cpu time.
-   2019-01-28 baller : Replace allHitsRanges with goodWire and wireHitRange to reduce cpu time.
-   2019-01-28 baller : Replace allHitsRanges with goodWire and wireHitRange to reduce cpu time.
-   2019-01-28 baller : noop
-   2019-01-28 baller : Replace allHitsRanges with goodWire and wireHitRange to reduce cpu time.

## larsim v08_07_03

-   2019-05-29 Lynn Garren : larsim v08_07_03 for larsoft v08_21_00

## larevt v08_05_00

-   2019-05-29 Lynn Garren : larevt v08_05_00
-   2019-05-29 Lynn Garren : Merge branch 'feature/herogers_updateSCE' into release/v08_21_00
-   2019-05-21 Hannah Rogers : Update space charge service for TCP specific corrections

## lardata v08_05_02

## larcore v08_04_03

## larpandoracontent v03_14_08

## larsoftobj v08_15_01

## lardataobj v08_04_02

## lardataalg v08_07_01

## larcorealg v08_12_00

## larcoreobj v08_05_00

## larbatch v01_51_03

## larutils v1_23_18
