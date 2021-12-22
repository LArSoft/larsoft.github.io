LArSoft v08\_53\_00 Release Notes(#LArSoft-v08_53_00-Release-Notes)
======================================================================

-   **Table of contents**
-   [LArSoft v08\_53\_00 Release Notes](#LArSoft-v08_53_00-Release-Notes)
    -   [Purpose](#Purpose)
    -   [New features](#New-features)
    -   [Bug fixes](#Bug-fixes)
    -   [Updated dependencies](#Updated-dependencies)
-   [Change List](#Change-List)
    -   [larsoft v08\_53\_00](#larsoft-v08_53_00)
    -   [lareventdisplay v08\_12\_16](#lareventdisplay-v08_12_16)
    -   [larexamples v08\_06\_16](#larexamples-v08_06_16)
    -   [larg4 v08\_14\_02](#larg4-v08_14_02)
    -   [larpandora v08\_12\_08](#larpandora-v08_12_08)
    -   [larrecodnn v08\_04\_01](#larrecodnn-v08_04_01)
    -   [larwirecell v08\_12\_14](#larwirecell-v08_12_14)
    -   [larana v08\_17\_08](#larana-v08_17_08)
    -   [larreco v08\_32\_01](#larreco-v08_32_01)
    -   [larsim v08\_25\_00](#larsim-v08_25_00)
    -   [larevt v08\_11\_07](#larevt-v08_11_07)
    -   [lardata v08\_15\_07](#lardata-v08_15_07)
    -   [larcore v08\_11\_08](#larcore-v08_11_08)
    -   [larpandoracontent v03\_16\_00](#larpandoracontent-v03_16_00)
    -   [larsoftobj v08\_29\_00](#larsoftobj-v08_29_00)
    -   [lardataobj v08\_11\_00](#lardataobj-v08_11_00)
    -   [lardataalg v08\_13\_12](#lardataalg-v08_13_12)
    -   [larcorealg v08\_22\_00](#larcorealg-v08_22_00)
    -   [larcoreobj v08\_12\_00](#larcoreobj-v08_12_00)
    -   [larbatch v01\_52\_02](#larbatch-v01_52_02)
    -   [larutils v1\_25\_09](#larutils-v1_25_09)

[list of LArSoft releases](LArSoft_release_list)\
Download instructions for [larsoft v08\_53\_00](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v08_53_00/larsoft-v08_53_00.html)\
Download instructions for [just larsoftobj v08\_29\_00](http://scisoft.fnal.gov/scisoft/bundles/larsoftobj/v08_29_00/larsoftobj-v08_29_00.html)

Purpose(#Purpose)
--------------------

-   changes in develop
-   approved PRs

New features(#New-features)
------------------------------

-   larpandoracontent PR 4
    -   REQUIRES dunetpc feature/IM\_PandoraHitWidthAlgs
    -   This PR includes a set of features to improve the stitching of CR muon tracks across multiple LArTPCs and the reconstruction of highly transverse tracks via the use of hit width information. The PR breakdown is as follows:
        -   Upgrades to the StitchingCosmicRayTool and the incorporation of hit width information in sliding linear fits PandoraPFA\#118 (PR)
        -   The development of the HitWidthClusterMerging algorithm PandoraPFA\#111 (PR) PandoraPFA\#117 (PR)
        -   Small tweaks to the HitWidthClusterMerging algorithm to catch exception code throws PandoraPFA\#119 (PR)
    -   With the application of this PR, the CR stitching improvements will be immediately activated in the CR reconstruction of all detectors. Once dunetpc feature/IM\_PandoraHitWidthAlgs is included, the HitWidthClusterMerging will be in use in the neutrino and CR reconstruction chain of the DUNE FD and the CR reconstruction chain of ProtoDUNE-DP with a view to extend its use across more detectors in the future.
    -   Details of these changes and their impacts on the reconstruction performance can be found in the following talks:
        -   Stitching Upgrades: [https://indico.fnal.gov/event/43171/](https://indico.fnal.gov/event/43171/) (DUNEFD + ProtoDUNE-SP)
        -   HitWidthClusterMerging algorithm: [https://indico.fnal.gov/event/43171/](https://indico.fnal.gov/event/43171/) (DUNEFD), [https://indico.fnal.gov/event/24366/](https://indico.fnal.gov/event/24366/) (ProtoDUNE-DP)
-   Change internal representation of sim::OnePhoton [\#22628](/redmine/issues/22628 "Feature: Change internal representation of sim::OnePhoton (Closed)")
    -   larcoreobj PR 7
    -   larcorealg PR 6
    -   lardataobj PR 7
    -   larsim PR 17
    -   REQUIRES ublite feature/gp\_issue22628
-   larsim PR 15
    -   New module \`POTaccumulator\` counting the total POT in a simulated dataset
-   lardataobj PR 5
    -   Added another compression algorithm. Note this is what DUNE intends to implement to compress the data “online”. The algorithm uses two lambda functions that the user can change to modify the encoding/decoding, and the default implementation of these functions is done in lardataobj/RawData/raw.cxx.

Bug fixes(#Bug-fixes)
------------------------

Updated dependencies(#Updated-dependencies)
----------------------------------------------

-   mrb v4\_01\_00
    -   With this release, mrb g will checkout the known SBN repositories from github by default. The known SBN repositories are icarusutil, sbndcode, icaruscode, icarus\_signal\_processing, sbncode, and sbndutil.
    -   [https://github.com/SBNSoftware/](https://github.com/SBNSoftware/)

Change List(#Change-List)
============================

larsoft v08\_53\_00(#larsoft-v08_53_00)
------------------------------------------

-   2020-05-20 Lynn Garren : larsoft v08\_53\_00 for larsoft v08\_53\_00
-   2020-05-20 Lynn Garren : product versions

lareventdisplay v08\_12\_16(#lareventdisplay-v08_12_16)
----------------------------------------------------------

-   2020-05-20 Lynn Garren : lareventdisplay v08\_12\_16 for larsoft v08\_53\_00

larexamples v08\_06\_16(#larexamples-v08_06_16)
--------------------------------------------------

-   2020-05-20 Lynn Garren : larexamples v08\_06\_16 for larsoft v08\_53\_00

larg4 v08\_14\_02(#larg4-v08_14_02)
--------------------------------------

-   2020-05-20 Lynn Garren : larg4 v08\_14\_02 for larsoft v08\_53\_00

larpandora v08\_12\_08(#larpandora-v08_12_08)
------------------------------------------------

-   2020-05-20 Lynn Garren : larpandora v08\_12\_08 for larsoft v08\_53\_00

larrecodnn v08\_04\_01(#larrecodnn-v08_04_01)
------------------------------------------------

-   2020-05-20 Lynn Garren : larrecodnn v08\_04\_01 for larsoft v08\_53\_00

larwirecell v08\_12\_14(#larwirecell-v08_12_14)
--------------------------------------------------

-   2020-05-20 Lynn Garren : larwirecell v08\_12\_14 for larsoft v08\_53\_00

larana v08\_17\_08(#larana-v08_17_08)
----------------------------------------

-   2020-05-20 Lynn Garren : larana v08\_17\_08 for larsoft v08\_53\_00

larreco v08\_32\_01(#larreco-v08_32_01)
------------------------------------------

-   2020-05-20 Lynn Garren : larreco v08\_32\_01 for larsoft v08\_53\_00

larsim v08\_25\_00(#larsim-v08_25_00)
----------------------------------------

-   2020-05-20 Lynn Garren : larsim v08\_25\_00 for larsoft v08\_53\_00
-   2020-05-20 Lynn Garren : Merge branch ‘feature/gp\_issue22628’ into release/v08\_53\_00
-   2020-05-20 Lynn Garren : Merge pull request \#15 from PetrilloAtWork/feature/gp\_POTaggregator
-   2020-05-15 Gianluca Petrillo : Forgot one piece… removed redundant elements in POTsummary.fcl
-   2020-05-15 Gianluca Petrillo : POTaccumulator module aggregation now relies on art.
-   2020-05-15 Gianluca Petrillo : Implemented comments from code review (one pending).
-   2020-05-15 Gianluca Petrillo : Merge remote-tracking branch ‘upstream/develop’ into feature/gp\_POTaggregator
-   2020-05-12 Gianluca Petrillo : Optimization of energy deposits save in LegacyLArG4
-   2020-05-12 Gianluca Petrillo : Updates for new sim::OnePhoton.
-   2020-05-03 Gianluca Petrillo : Fixed copy error in POTsummary.fcl.
-   2020-04-29 Gianluca Petrillo : New module \`POTaccumulator\` counting the total POT in a dataset.

larevt v08\_11\_07(#larevt-v08_11_07)
----------------------------------------

-   2020-05-20 Lynn Garren : larevt v08\_11\_07 for larsoft v08\_53\_00

lardata v08\_15\_07(#lardata-v08_15_07)
------------------------------------------

-   2020-05-20 Lynn Garren : lardata v08\_15\_07 for larsoft v08\_53\_00

larcore v08\_11\_08(#larcore-v08_11_08)
------------------------------------------

-   2020-05-20 Lynn Garren : larcore v08\_11\_08 for larsoft v08\_53\_00

larpandoracontent v03\_16\_00(#larpandoracontent-v03_16_00)
--------------------------------------------------------------

-   2020-05-20 Lynn Garren : larpandoracontent v03\_16\_00 for larsoft v08\_53\_00
-   2020-05-18 Multi-algorithm pattern recognition : Merge pull request \#119 from imawby/feature/larpandoracontent\_v03\_16\_00
-   2020-05-18 Isobel Mawby : add try/catch and remove single hit allowance
-   2020-05-15 John Marshall : Merge pull request \#118 from imawby/feature/MultipleTPCStitching
-   2020-05-15 John Marshall : Update change log.
-   2020-05-15 John Marshall : Cosmetic, label a TODO.
-   2020-05-14 John Marshall : Cosmetic and remove whitespace.
-   2020-05-14 Isobel Mawby : prevent division by zero and include HW into sliding fit
-   2020-05-13 Isobel Mawby : adding in parameters to alg contructor
-   2020-05-11 Isobel Mawby : add T0 consistency check and map T0 tree writing
-   2020-05-07 Isobel Mawby : changes to investigate outliers
-   2020-05-06 Isobel Mawby : adding constantness
-   2020-05-06 Isobel Mawby : remove TB hierarchy validation from PR
-   2020-05-06 Isobel Mawby : PR changes
-   2020-05-06 Isobel Mawby : working through commits
-   2020-05-01 Isobel Mawby : added in missed rebase commits
-   2020-05-01 Isobel Mawby : code cleanup rebase
-   2020-04-30 Isobel Mawby : print statements
-   2020-04-22 Isobel Mawby : X0 Distribution Tree rebase
-   2020-04-22 imawby : Add files via upload rebase
-   2020-04-20 Isobel Mawby : remove print statements rebase
-   2020-04-14 Isobel Mawby : removed APA/CPA determination
-   2020-04-14 Isobel Mawby : sign changes
-   2020-04-08 Isobel Mawby : stitching investigation visualisation
-   2020-05-05 John Marshall : Merge pull request \#117 from imawby/feature/HitWidthRebase
-   2020-05-05 John Marshall : Remove whitespace.
-   2020-05-05 John Marshall : Cosmetic.
-   2020-05-05 Isobel Mawby : PR changes
-   2020-05-05 Isobel Mawby : changes - need to sort out clusterVector issue
-   2020-05-01 Isobel Mawby : change header file path
-   2020-05-01 Isobel Mawby : move alg into LArClusterAssociations and remove whitespace
-   2020-04-30 Isobel Mawby : dealing with empty cluster vector
-   2020-04-29 Isobel Mawby : added numProposedConstituentHits function and fitting convention
-   2020-04-29 Isobel Mawby : code cleanup
-   2020-04-28 Isobel Mawby : Finding test cluster closest merge point when overlap
-   2020-04-28 Isobel Mawby : adding sparseness check
-   2020-04-27 Isobel Mawby : new fitting implemented
-   2020-04-20 John Marshall : Merge branch ‘updates’.
-   2020-04-20 John Marshall : Update version and change log.
-   2020-04-20 John Marshall : Relocate HitWidthClusterMerging algorithm.
-   2020-04-20 John Marshall : Remove whitespace.
-   2020-04-20 John Marshall : Merge branch ‘feature/HitWidths’.
-   2020-04-20 Isobel Mawby : removing excess fits to one hit checks
-   2020-04-20 Isobel Mawby : making GetWeightedGradient more understandable
-   2020-04-15 Isobel Mawby : all changes except cluster direction
-   2020-04-06 Isobel Mawby : moving to mac
-   2020-04-02 Isobel Mawby : mutable unordered map implemented
-   2020-04-01 Isobel Mawby : mutable map implementation
-   2020-03-27 Isobel Mawby : with Doxygen comments
-   2020-03-27 Isobel Mawby : fixed map bug
-   2020-03-27 imawby : PR changes
-   2020-03-27 imawby : PR changes & sliding fit implementation removed from alg
-   2020-03-20 imawby : Implemented fittingHitWeight and check of - has direction dramatically changed after merge?
-   2020-03-20 imawby : Implemented fittingHitWeight and check of - has direction dramatically changed after merge?
-   2020-03-17 imawby : HitWidthWeight bug fix
-   2020-03-17 imawby : ClusterWeightSum bug fixed
-   2020-03-13 imawby : Add files via upload
-   2020-03-13 imawby : Add files via upload
-   2020-03-13 imawby : Delete LArHitWidthHelper.h
-   2020-03-13 imawby : Delete LArHitWidthHelper.cc
-   2020-03-13 imawby : implemented static map
-   2020-03-13 imawby : Add files via upload
-   2020-03-13 imawby : HitWidth helper

larsoftobj v08\_29\_00(#larsoftobj-v08_29_00)
------------------------------------------------

-   2020-05-20 Lynn Garren : product versions
-   2020-05-20 Lynn Garren : larsoftobj v08\_29\_00 for larsoft v08\_53\_00

lardataobj v08\_11\_00(#lardataobj-v08_11_00)
------------------------------------------------

-   2020-05-20 Lynn Garren : lardataobj v08\_11\_00 for larsoft v08\_53\_00
-   2020-05-20 Lynn Garren : Merge branch ‘feature/gp\_issue22628’ into release/v08\_53\_00
-   2020-05-19 Gianluca Petrillo : Using consistent \`struct\`/\`class\` (caught by Clang).
-   2020-05-18 Lynn Garren : Merge pull request [\#5](/redmine/issues/5 "Feature: NIMROD extended to Accelerator Division (New)") from plasorak/feature/plasorak-fibonacci
-   2020-05-15 Gianluca Petrillo : Added a comparison operator for sim::OnePhoton.
-   2020-05-15 Gianluca Petrillo : Renamed OpticalVector3D\_t into OpticalVector\_t.
-   2020-05-15 Gianluca Petrillo : Fixed semantic mistake: sim::SimPhotons:FinalLocalPosition is not in world frame.
-   2020-05-14 Pierre Lasorak : Add unit test for fibonacci encoding
-   2020-05-14 Pierre Lasorak : Correct one of the most stupidest bug in history
-   2020-05-13 Gianluca Petrillo : Whitespace removal.
-   2020-05-11 Gianluca Petrillo : Breaking change: sim::OnePhoton data members moved from TVector3 to geo::Point\_t.
-   2020-05-11 Gianluca Petrillo : Adopted some standard C++ coding practices.
-   2020-05-11 Gianluca Petrillo : Updated SimPhotons.h documentation.
-   2020-04-17 Pierre Lasorak : rm whitespace
-   2020-04-17 Pierre Lasorak : Faster version, without excption thrown all the time, and with proper with proper exption thrown in case size isn’t right. encode size of the waveform on the 2 first smaples of the compressed waveform.
-   2020-02-28 Pierre Lasorak : rm whitespace
-   2020-02-28 Pierre Lasorak : Faster implementation without else if. User may now provide a lambda that can be used as table
-   2020-01-21 Pierre Lasorak : add fibonacci encoding

lardataalg v08\_13\_12(#lardataalg-v08_13_12)
------------------------------------------------

-   2020-05-20 Lynn Garren : lardataalg v08\_13\_12 for larsoft v08\_53\_00

larcorealg v08\_22\_00(#larcorealg-v08_22_00)
------------------------------------------------

-   2020-05-20 Lynn Garren : larcorealg v08\_22\_00 for larsoft v08\_53\_00
-   2020-05-20 Lynn Garren : Merge branch ‘feature/gp\_issue22628’ into release/v08\_53\_00
-   2020-05-15 Gianluca Petrillo : Renamed OpticalVector3D\_t into OpticalVector\_t.
-   2020-05-15 Gianluca Petrillo : Support for issue [\#22628](/redmine/issues/22628 "Feature: Change internal representation of sim::OnePhoton (Closed)") (sim::OnePhoton).

larcoreobj v08\_12\_00(#larcoreobj-v08_12_00)
------------------------------------------------

-   2020-05-20 Lynn Garren : larcoreobj v08\_12\_00 for larsoft v08\_53\_00
-   2020-05-20 Gianluca Petrillo : Fixed a typo in a comment.
-   2020-05-15 Gianluca Petrillo : Renamed OpticalVector3D\_t into OpticalVector\_t.
-   2020-05-15 Gianluca Petrillo : Support for issue [\#22628](/redmine/issues/22628 "Feature: Change internal representation of sim::OnePhoton (Closed)") (sim::OnePhoton).

larbatch v01\_52\_02(#larbatch-v01_52_02)
--------------------------------------------

larutils v1\_25\_09(#larutils-v1_25_09)
------------------------------------------
