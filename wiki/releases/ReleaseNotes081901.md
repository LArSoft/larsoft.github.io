LArSoft v08_19_01 Release Notes
======================================================================

-   **Table of contents**
-   [LArSoft v08_19_01 Release Notes](#LArSoft-v08_19_01-Release-Notes)
    -   [Purpose](#Purpose)
    -   [New features](#New-features)
    -   [Bug fixes](#Bug-fixes)
    -   [Updated dependencies](#Updated-dependencies)
-   [Change List](#Change-List)
    -   [larsoft v08_19_01](#larsoft-v08_19_01)
    -   [lareventdisplay v08_07_00](#lareventdisplay-v08_07_00)
    -   [larexamples v08_02_03](#larexamples-v08_02_03)
    -   [larg4 v08_03_02](#larg4-v08_03_02)
    -   [larpandora v08_06_03](#larpandora-v08_06_03)
    -   [larwirecell v08_05_02](#larwirecell-v08_05_02)
    -   [larana v08_08_01](#larana-v08_08_01)
    -   [larreco v08_13_00](#larreco-v08_13_00)
    -   [larsim v08_07_00](#larsim-v08_07_00)
    -   [larevt v08_04_02](#larevt-v08_04_02)
    -   [lardata v08_05_00](#lardata-v08_05_00)
    -   [larcore v08_04_02](#larcore-v08_04_02)
    -   [larpandoracontent v03_14_07](#larpandoracontent-v03_14_07)
    -   [larsoftobj v08_14_00](#larsoftobj-v08_14_00)
    -   [lardataobj v08_04_00](#lardataobj-v08_04_00)
    -   [lardataalg v08_06_03](#lardataalg-v08_06_03)
    -   [larcorealg v08_11_00](#larcorealg-v08_11_00)
    -   [larcoreobj v08_05_00](#larcoreobj-v08_05_00)
    -   [larbatch v01_51_03](#larbatch-v01_51_03)
    -   [larutils v1_23_17](#larutils-v1_23_17)

[list of LArSoft releases](LArSoft_release_list)
Download instructions for [larsoft v08_19_01](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v08_19_01/larsoft-v08_19_01.html)
Download instructions for [just larsoftobj v08_14_00](http://scisoft.fnal.gov/scisoft/bundles/larsoftobj/v08_14_00/larsoftobj-v08_14_00.html)

Purpose
--------------------

-   approved feature branches
-   changes to develop
-   last minute label name change (v08_19_00 should not be used)

New features
------------------------------

-   larsim feature/wenzel_electrondrift
    -   [https://indico.fnal.gov/event/20744/contribution/1/material/slides/0.pdf](https://indico.fnal.gov/event/20744/contribution/1/material/slides/0.pdf)
-   multiple TPC workflow
    -   [https://indico.fnal.gov/event/20744/contribution/2/material/slides/0.pdf](https://indico.fnal.gov/event/20744/contribution/2/material/slides/0.pdf)
    -   LArAna: feature/usher_multiTPC
    -   LArReco: feature/usher_chargeasymmetry (there are other, non-breaking, changes to Cluster3D hence the non-obvious feature branch name
    -   LArEventDisplay: feature/usher_3DOpticalDisplay (as mentioned this morning, this also includes, in a non breaking way, code to do a rudimentary display of OpHits and OpFlashes in the 3D display.
    -   There are a few instances where art::InpuTags change to std::vector\<art::InputTag\>.
        -   In LArEventDisplay: “RawDataLabel” becomes “RawDataLabels” (see evdservices_base.fcl)
            -   dunetpc, lariatsoft, and uboonecode may be affected
        -   In LArAna: “HitModuleLabel” becomes “HitModuleLabelVec” (see larana/T0Finder/AssociationsTools/hitparticleassociations.fcl)
            -   Several experiments may be affected.
        -   In LArReco: “HitFinderTag” becomes “HitFinderTagVec” (see larreco/RecoAlg/Cluster3DAlgs/cluster3dalgorithms.fcl)
            -   icaruscode will be affected

Bug fixes
------------------------

-   lardataobj feature/knoepfel_separate_dicts
    -   for issue [\#22464](/redmine/issues/22464 "Necessary Maintenance: split up lardataobj RecoBase dictionary (Closed)")
    -   splits the RecoBase dictionary building into 3 separate dictionary builds, which can be executed in parallel.
    -   I have not refactored the AnalysisBase dictionaries yet, but this at least is a start. You should notice an improvement in build time/memory usage. The dictionaries still take a long time to build, but it’s \~100 secs each instead of \~300 when combined into one library.

Updated dependencies
----------------------------------------------

Change List
============================

larsoft v08_19_01
------------------------------------------

-   2019-05-09 Lynn Garren : larsoft v08_19_01
-   2019-05-09 Lynn Garren : larsoft v08_19_00 for larsoft v08_19_00
-   2019-05-08 Lynn Garren : product versions

lareventdisplay v08_07_00
----------------------------------------------------------

-   2019-05-09 Lynn Garren : lareventdisplay v08_07_00 for larsoft v08_19_00
-   2019-05-08 Lynn Garren : Merge branch ‘feature/usher_3DOpticalDisplay’ into release/v08_19_00
-   2019-05-08 Usher, Tracy L : Add library to make sure it builds…
-   2019-05-08 Usher, Tracy L : Fix compile issue… sorry!!
-   2019-05-08 Usher, Tracy L : Use correct fhicl name for RawDataLabels
-   2019-05-08 Usher, Tracy L : Bringing in Tingjun’s fix for the case of compressed RawDigits
-   2019-05-03 Tingjun Yang : Unpack raw data before displaying it.
-   2019-05-03 Usher, Tracy L : Merge branch ‘master’ into feature/usher_3DOpticalDisplay
-   2019-05-02 Usher, Tracy L : In order to accommodate multi TPC detectors where the signal processing and other reconstruction may be broken up by TPC we need to change to a scheme where the input tag is now a vector of input tags and provide loops over these. Fortunately, some of this has been done already, mostly what is done here is to accommodate RawDigits.
-   2019-04-26 Usher, Tracy L : Merge branch ‘master’ into feature/usher_3DOpticalDisplay
-   2019-04-26 Usher, Tracy L : Give the tool the ability to auto select the range for the color coding
-   2019-04-26 Usher, Tracy L : Adding another drawing tool for SpacePoints, this one attempts to color code the charge asymmetry
-   2019-04-22 Usher, Tracy L : Merge branch ‘develop’ into feature/usher_3DOpticalDisplay
-   2019-04-22 Usher, Tracy L : Merge branch ‘master’ into feature/usher_3DOpticalDisplay
-   2019-04-21 Usher, Tracy L : Merge branch ‘develop’ into feature/usher_3DOpticalDisplay
-   2019-04-18 Usher, Tracy L : Updating to make current
-   2019-04-18 Usher, Tracy L : Merge branch ‘master’ into feature/usher_3DOpticalDisplay
-   2019-04-18 Usher, Tracy L : Updates to match changes in develop
-   2019-04-12 Usher, Tracy L : Merge branch ‘develop’ into feature/usher_3DOpticalDisplay
-   2019-04-12 Usher, Tracy L : Updates for adding the display of optical hit/flash information in the 3D display
-   2019-04-12 Usher, Tracy L : Add ability to display truth optical hit information in the 3D display
-   2019-04-12 Usher, Tracy L : Drawing tools for display of optical hits and flashes in the 3D display
-   2019-04-01 Usher, Tracy L : Add the 3D drawer for optical hits and flashes
-   2019-04-01 Usher, Tracy L : Add a 3D drawer for for the optical hits and flashes. Could be improved…

larexamples v08_02_03
--------------------------------------------------

-   2019-05-09 Lynn Garren : larexamples v08_02_03 for larsoft v08_19_00

larg4 v08_03_02
--------------------------------------

-   2019-05-09 Lynn Garren : larg4 v08_03_02 for larsoft v08_19_00

larpandora v08_06_03
------------------------------------------------

-   2019-05-09 Lynn Garren : larpandora v08_06_03 for larsoft v08_19_00

larwirecell v08_05_02
--------------------------------------------------

-   2019-05-09 Lynn Garren : larwirecell v08_05_02 for larsoft v08_19_00

larana v08_08_01
----------------------------------------

-   2019-05-09 Lynn Garren : larana v08_08_01
-   2019-05-09 Lynn Garren : rename HitModuleLabels to HitModuleLabelVec
-   2019-05-09 Lynn Garren : larana v08_08_00 for larsoft v08_19_00
-   2019-05-08 Lynn Garren : Merge branch ‘feature/usher_multiTPC’ into release/v08_19_00
-   2019-05-07 Usher, Tracy L : Necessary modifications to allow for multiple hit producers when making MCParticle\<–\>Hit associations
-   2019-05-06 Kyle Spurgeon : Reverted timing in OpHitAlg

larreco v08_13_00
------------------------------------------

-   2019-05-09 Lynn Garren : larreco v08_13_00 for larsoft v08_19_00
-   2019-05-08 Lynn Garren : Merge branch ‘feature/usher_chargeasymmetry’ into release/v08_19_00
-   2019-05-08 Tingjun Yang : Fix memory issues.
-   2019-05-07 Tingjun Yang : More fix to [\#22219](/redmine/issues/22219 "Bug: Acess invalid element of array in Calorimetry reconstruction  (Closed)").
-   2019-05-03 Usher, Tracy L : Merge branch ‘master’ into feature/usher_chargeasymmetry
-   2019-05-01 Usher, Tracy L : Provide the ability to use hits from more than one producer - the aim is to allow input from multiple TPCs and combine into one global output
-   2019-04-26 Usher, Tracy L : Merge branch ‘master’ into feature/usher_chargeasymmetry
-   2019-04-26 Usher, Tracy L : Starting the process of adding some more output variables aimed at SpacePoint quality
-   2019-04-22 Usher, Tracy L : Merge branch ‘master’ into feature/usher_chargeasymmetry
-   2019-04-18 Usher, Tracy L : Fix compile faux pas
-   2019-04-18 Usher, Tracy L : Merge branch ‘master’ into feature/usher_chargeasymmetry
-   2019-04-18 Usher, Tracy L : Add a “charge asymmetry” calculation to the space point building module and “hide” it in the error matrix for recob::SpacePoint objects.
-   2019-04-18 Usher, Tracy L : This should have been merged already?

larsim v08_07_00
----------------------------------------

-   2019-05-09 Lynn Garren : remove unused variable
-   2019-05-09 Lynn Garren : larsim v08_07_00 for larsoft v08_19_00
-   2019-05-07 Hans-Joachim Wenzel : renaming ISCalculation to ISCalculationSeparate per request
-   2019-05-06 Hans-Joachim Wenzel : refactor electron drift, get rid of LArG4 properties service
-   2019-05-05 Jason Stock : Fixing a typo in output messages

larevt v08_04_02
----------------------------------------

-   2019-05-09 Lynn Garren : larevt v08_04_02 for larsoft v08_19_00

lardata v08_05_00
------------------------------------------

-   2019-05-09 Lynn Garren : lardata v08_05_00 for larsoft v08_19_00
-   2019-05-06 Gianluca Petrillo : Updated code to C++17.

larcore v08_04_02
------------------------------------------

-   2019-05-09 Lynn Garren : larcore v08_04_02 for larsoft v08_19_00

larpandoracontent v03_14_07
--------------------------------------------------------------

larsoftobj v08_14_00
------------------------------------------------

-   2019-05-09 Lynn Garren : larsoftobj v08_14_00 for larsoft v08_19_00
-   2019-05-08 Lynn Garren : product versions

lardataobj v08_04_00
------------------------------------------------

-   2019-05-09 Lynn Garren : lardataobj v08_04_00 for larsoft v08_19_00
-   2019-05-08 Lynn Garren : Merge branch ‘feature/knoepfel_separate_dicts’ into release/v08_19_00
-   2019-04-30 Kyle Knoepfel : Factorize ROOT dictionaries.

lardataalg v08_06_03
------------------------------------------------

-   2019-05-09 Lynn Garren : lardataalg v08_06_03 for larsoft v08_19_00

larcorealg v08_11_00
------------------------------------------------

-   2019-05-09 Lynn Garren : larcorealg v08_11_00 for larsoft v08_19_00
-   2019-05-06 Gianluca Petrillo : \`geo::TPCGeo::PlaneLocations()\` now refers to \`geo::PlaneGeo::GetCenter()\`.
-   2019-05-02 Gianluca Petrillo : Added traits to identify character and string types.
-   2019-05-02 Gianluca Petrillo : Added metaprogramming to find a specified type within a list of types.
-   2019-05-02 Gianluca Petrillo : Update for C++17.

larcoreobj v08_05_00
------------------------------------------------

larbatch v01_51_03
--------------------------------------------

larutils v1_23_17
------------------------------------------

-   2019-05-09 Lynn Garren : larutils v1_23_17 for larsoft v08_19_00
-   2019-05-02 Lynn Garren : larsoft v08_18_00
-   2019-05-01 Lynn Garren : make it smarter
