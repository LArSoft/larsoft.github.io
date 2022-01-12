LArSoft v07\_02\_00 Release Notes
======================================================================

-   **Table of contents**
-   [LArSoft v07\_02\_00 Release Notes](#LArSoft-v07_02_00-Release-Notes)
    -   [Purpose](#Purpose)
    -   [New features](#New-features)
    -   [Bug fixes](#Bug-fixes)
    -   [Updated dependencies](#Updated-dependencies)
-   [Change List](#Change-List)
    -   [larsoft v07\_02\_00](#larsoft-v07_02_00)
    -   [lareventdisplay v07\_01\_00](#lareventdisplay-v07_01_00)
    -   [larexamples v07\_00\_03](#larexamples-v07_00_03)
    -   [larg4 v07\_00\_03](#larg4-v07_00_03)
    -   [larpandora v07\_01\_00](#larpandora-v07_01_00)
    -   [larwirecell v07\_00\_03](#larwirecell-v07_00_03)
    -   [larana v07\_00\_03](#larana-v07_00_03)
    -   [larreco v07\_02\_00](#larreco-v07_02_00)
    -   [larsim v07\_01\_01](#larsim-v07_01_01)
    -   [larevt v07\_00\_03](#larevt-v07_00_03)
    -   [lardata v07\_00\_03](#lardata-v07_00_03)
    -   [larcore v07\_00\_01](#larcore-v07_00_01)
    -   [larpandoracontent v03\_14\_00](#larpandoracontent-v03_14_00)
    -   [larsoftobj v07\_01\_01](#larsoftobj-v07_01_01)
    -   [lardataobj v07\_01\_01](#lardataobj-v07_01_01)
    -   [lardataalg v07\_00\_01](#lardataalg-v07_00_01)
    -   [larcorealg v07\_01\_00](#larcorealg-v07_01_00)
    -   [larcoreobj v07\_00\_00](#larcoreobj-v07_00_00)
    -   [larbatch v01\_43\_00](#larbatch-v01_43_00)
    -   [larutils v1\_22\_11](#larutils-v1_22_11)

[list of LArSoft releases](LArSoft_release_list)
Download instructions for [larsoft v07\_02\_00](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v07_02_00/larsoft-v07_02_00.html)
Download instructions for [just larsoftobj v07\_01\_01](http://scisoft.fnal.gov/scisoft/bundles/larsoftobj/v07_01_01/larsoftobj-v07_01_01.html)

Purpose
--------------------

-   changes to develop
-   approved feature branches
-   **Final release with e15 support**

New features
------------------------------

-   External building of consolidated Pandora events
    -   [https://indico.fnal.gov/event/17992/contribution/2/material/slides/0.pdf](https://indico.fnal.gov/event/17992/contribution/2/material/slides/0.pdf)
    -   pandora v03\_11\_01
    -   larpandora (feature/larpandoracontent\_v03\_14\_00)
    -   larpandoracontent (feature/larpandoracontent\_v03\_14\_00)
    -   ubreco (feature/larpandoracontent\_v03\_14\_00)
    -   dunetpc (feature/larpandoracontent\_v03\_14\_00)

Bug fixes
------------------------

-   bug fix for larana macOS test

Updated dependencies
----------------------------------------------

-   pandora v03\_11\_01

Change List
============================

larsoft v07\_02\_00
------------------------------------------

-   2018-08-15 Lynn Garren : pandora v03\_11\_01
-   2018-08-15 Lynn Garren : fix larcorealg version
-   2018-08-15 Lynn Garren : larsoft v07\_02\_00 for larsoft v07\_02\_00
-   2018-08-15 Lynn Garren : dependency database
-   2018-08-15 Lynn Garren : product versions
-   2018-08-15 Lynn Garren : put protobuf back for Ubuntu

lareventdisplay v07\_01\_00
----------------------------------------------------------

-   2018-08-15 Lynn Garren : lareventdisplay v07\_01\_00 for larsoft v07\_02\_00
-   2018-08-15 Usher, Tracy L : Merge remote-tracking branch ‘origin/feature/bb\_Vertex2D’ into develop
-   2018-08-09 Lynn Garren : larsoft v07\_00\_02
-   2018-08-08 Tingjun Yang : Merge branch ‘develop’ of ssh://cdcvs.fnal.gov/cvs/projects/lareventdisplay into develop
-   2018-08-08 Tingjun Yang : Add slice space points.
-   2018-08-08 Thomas Junk : make sure the uncompressed data has a big enough buffer
-   2018-08-08 baller : Draw vertices only in the correct TPC.

larexamples v07\_00\_03
--------------------------------------------------

-   2018-08-15 Lynn Garren : larexamples v07\_00\_03 for larsoft v07\_02\_00

larg4 v07\_00\_03
--------------------------------------

-   2018-08-15 Lynn Garren : larg4 v07\_00\_03 for larsoft v07\_02\_00

larpandora v07\_01\_00
------------------------------------------------

-   2018-08-15 Lynn Garren : larpandora v07\_01\_00 for larsoft v07\_02\_00
-   2018-08-14 a-d-smith : cosmetic
-   2018-08-14 a-d-smith : Added missing comment
-   2018-08-08 a-d-smith : Passed the art event to the neutrino ID tool to allow for access to PMT and CRT information
-   2018-08-03 loressa : Fix for slices with no PFOs under one of the hypothesis: nu or cosmics
-   2018-08-03 a-d-smith : Updated comments for latest speed updates
-   2018-08-02 a-d-smith : Removed list lookups where possible for performance increase
-   2018-08-02 a-d-smith : Using vectors for O(1) lookup speed increase
-   2018-08-01 a-d-smith : Allowed for empty pfo lists in LArPandoraOutput
-   2018-07-30 a-d-smith : Added checks before producing associations that may not exist
-   2018-07-16 a-d-smith : Removed shower particle building from Pandora XML files
-   2018-07-12 a-d-smith : Added check for pfos without vertices
-   2018-07-09 a-d-smith : Cosmetic
-   2018-07-04 a-d-smith : Removed unnecessary try-catch block
-   2018-07-04 a-d-smith : Simplified some logic by using the LArPfoHelper
-   2018-07-04 a-d-smith : Simplified logic when collecting all pfo outcomes
-   2018-07-04 a-d-smith : Ensured external event building is reproducible
-   2018-07-04 a-d-smith : Added typedefs for output collections to improve readability
-   2018-07-04 a-d-smith : cosmetic
-   2018-07-04 a-d-smith : removed unused PFParticle to bool associations from dictionary
-   2018-07-04 a-d-smith : Fixed typo in settings and removed repeated algorithms from master settings
-   2018-07-04 a-d-smith : Inlined implementation of Slice class
-   2018-07-02 a-d-smith : Updated pandora instance names to follow convention
-   2018-06-28 a-d-smith : Updated simple neutrino id tool to reproduce in-pandora decisions
-   2018-06-21 a-d-smith : Made simple neutrino id tool using pandora scores
-   2018-06-20 a-d-smith : Added interface to tag slices as a neutrino
-   2018-06-20 a-d-smith : Added the neutrino id tool base class
-   2018-06-20 a-d-smith : Added missing instance labels to temorary ART pointers used when making associations
-   2018-06-19 a-d-smith : Turned on the outcomes of all reconstruction instances
-   2018-06-19 a-d-smith : Added PFParticleMetadata to outputs
-   2018-05-29 a-d-smith : Moved settings checks into function
-   2018-05-23 a-d-smith : Added doxygen comments to LArPandoraOutput
-   2018-05-23 a-d-smith : Fixed up LArPandoraOutput to produce associations
-   2018-05-22 a-d-smith : Added first remaster pass of LArPandoraOutput

larwirecell v07\_00\_03
--------------------------------------------------

-   2018-08-15 Lynn Garren : larwirecell v07\_00\_03 for larsoft v07\_02\_00

larana v07\_00\_03
----------------------------------------

-   2018-08-15 Lynn Garren : larana v07\_00\_03 for larsoft v07\_02\_00
-   2018-08-13 Lynn Garren : problem resolved by a commit in larsim

larreco v07\_02\_00
------------------------------------------

-   2018-08-15 Lynn Garren : larreco v07\_02\_00 for larsoft v07\_02\_00
-   2018-08-15 Lynn Garren : larreco v07\_02\_00 for larsoft v07\_02\_00
-   2018-08-14 Herbert Greenlee : Add fcl parameters to add plane time offsets.
-   2018-08-13 baller : Fix Shower - Hit assns
-   2018-08-09 Lynn Garren : larsoft v07\_00\_02
-   2018-08-08 Tingjun Yang : Revert 1e680a7cdb9d2d1f3f5f3a06b4684ad2a28c6d7e to make it work with non-zero trigger offset.
-   2018-08-08 baller : Fix view bug
-   2018-08-08 baller : Remove old code
-   2018-08-08 baller : Fix errors in reconfigure.
-   2018-08-08 baller : Fix errors and prepare for future creation of PFParticle - Slice assns.

larsim v07\_01\_01
----------------------------------------

-   2018-08-15 Lynn Garren : larsim v07\_01\_01 for larsoft v07\_02\_00
-   2018-08-14 Paul Russo : Fix constructor to explicitly intialize all data members.
-   2018-08-13 Paul Russo : Fix TF1 double delete crashes on macOS.

larevt v07\_00\_03
----------------------------------------

-   2018-08-15 Lynn Garren : larevt v07\_00\_03 for larsoft v07\_02\_00

lardata v07\_00\_03
------------------------------------------

-   2018-08-15 Lynn Garren : lardata v07\_00\_03 for larsoft v07\_02\_00

larcore v07\_00\_01
------------------------------------------

-   2018-08-15 Lynn Garren : larcore v07\_00\_01 for larsoft v07\_02\_00

larpandoracontent v03\_14\_00
--------------------------------------------------------------

-   2018-08-15 Lynn Garren : larpandoracontent v03\_14\_00 for larsoft v07\_02\_00
-   2018-08-02 Multi-algorithm pattern recognition : Merge pull request \#70 from StevenGreen1/feature/NuScoreLabel
-   2018-08-01 Steven Green : Alteration made to pfo metadata in training neutrino id use case.
-   2018-07-30 John Marshall : Merge branch ‘feature/TestBeamParticleCreationWorker’
-   2018-07-30 John Marshall : Update version and change log.
-   2018-07-26 John Marshall : Refactoring, error-checking and cosmetic changes.
-   2018-07-19 Steven Green : Restructured test beam particle creation algorithm to work within worker instance.

larsoftobj v07\_01\_01
------------------------------------------------

-   2018-08-15 Lynn Garren : larsoftobj v07\_01\_01 for larsoft v07\_02\_00
-   2018-08-15 Lynn Garren : update versions

lardataobj v07\_01\_01
------------------------------------------------

-   2018-08-15 Lynn Garren : lardataobj v07\_01\_01 for larsoft v07\_02\_00

lardataalg v07\_00\_01
------------------------------------------------

-   2018-08-15 Lynn Garren : lardataalg v07\_00\_01 for larsoft v07\_02\_00

larcorealg v07\_01\_00
------------------------------------------------

-   2018-08-15 Lynn Garren : larcorealg v07\_01\_00 for larsoft v07\_02\_00
-   2018-06-21 Gianluca Petrillo : Documentation fix
-   2018-08-14 Gianluca Petrillo : OpDetGeo interface expanded to help support for bar geometry.

larcoreobj v07\_00\_00
------------------------------------------------

larbatch v01\_43\_00
--------------------------------------------

larutils v1\_22\_11
------------------------------------------

-   2018-08-15 Lynn Garren : larutils v1\_22\_11 for larsoft v07\_02\_00
-   2018-08-14 Herbert Greenlee : Remove offline qualifier from tarball name.
