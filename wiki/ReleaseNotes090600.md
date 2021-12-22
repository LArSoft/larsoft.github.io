LArSoft v09\_06\_00 Release Notes(#LArSoft-v09_06_00-Release-Notes)
======================================================================

-   **Table of contents**
-   [LArSoft v09\_06\_00 Release Notes](#LArSoft-v09_06_00-Release-Notes)
    -   [Purpose](#Purpose)
    -   [New features](#New-features)
    -   [Bug fixes](#Bug-fixes)
    -   [Updated dependencies](#Updated-dependencies)
-   [Change List](#Change-List)
    -   [larsoft v09\_06\_00](#larsoft-v09_06_00)
    -   [lareventdisplay v09\_00\_08](#lareventdisplay-v09_00_08)
    -   [larexamples v09\_00\_08](#larexamples-v09_00_08)
    -   [larg4 v09\_01\_01](#larg4-v09_01_01)
    -   [larpandora v09\_02\_00](#larpandora-v09_02_00)
    -   [larsimrad v09\_00\_08](#larsimrad-v09_00_08)
    -   [larrecodnn v09\_01\_03](#larrecodnn-v09_01_03)
    -   [larwirecell v09\_01\_03](#larwirecell-v09_01_03)
    -   [larana v09\_00\_08](#larana-v09_00_08)
    -   [larreco v09\_02\_03](#larreco-v09_02_03)
    -   [larsim v09\_04\_01](#larsim-v09_04_01)
    -   [larevt v09\_00\_06](#larevt-v09_00_06)
    -   [lardata v09\_01\_01](#lardata-v09_01_01)
    -   [larcore v09\_00\_01](#larcore-v09_00_01)
    -   [larpandoracontent v03\_21\_00](#larpandoracontent-v03_21_00)
    -   [larsoftobj v09\_01\_01](#larsoftobj-v09_01_01)
    -   [lardataobj v09\_00\_01](#lardataobj-v09_00_01)
    -   [lardataalg v09\_01\_01](#lardataalg-v09_01_01)
    -   [larcorealg v09\_00\_01](#larcorealg-v09_00_01)
    -   [larcoreobj v09\_00\_00](#larcoreobj-v09_00_00)
    -   [webevd v09\_00\_06](#webevd-v09_00_06)
    -   [larbatch v01\_53\_01](#larbatch-v01_53_01)
    -   [larutils v1\_27\_00](#larutils-v1_27_00)

[list of LArSoft releases](LArSoft_release_list)\
Download instructions for [larsoft v09\_06\_00](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v09_06_00/larsoft-v09_06_00.html)\
Download instructions for [just larsoftobj v09\_01\_01](http://scisoft.fnal.gov/scisoft/bundles/larsoftobj/v09_01_01/larsoftobj-v09_01_01.html)

Purpose(#Purpose)
--------------------

-   changes in develop
-   approved PRs

New features(#New-features)
------------------------------

-   larpandoracontent PR 12
    -   **dunetpc will need feature/imawby\_dunefdCosmicRayRecoModule**
    -   This PR replaces the TrackInEMShower algorithm with the TrackMergeRefinement algorithm within Pandora. This PR accompanies the PR of the imawby\_dunefdCosmicRayRecoModule branch to dunetpc (feature/imawby\_dunefdCosmicRayRecoModule). It is important to mention that these PRs must be merged at the same time as this larpandoracontent PR removes some features that dunetpc depends on (this dependency is removed in the dunetpc PR referenced).
    -   The TrackMergeRefinement algorithm (previously the TrackInEMShower algorithm) is a 2D hit clustering algorithm that attempts to better cluster cosmic ray muon tracks that have been split by large amounts of electromagnetic behaviour. In terms of code structure, the TrackInEMShower algorithm has been refactored into the TrackMergeRefinement algorithm which inherits from a newly created TrackRefinementBase algorithm. In terms of functionality, the TrackMergeRefinement algorithm primarily improves upon the TrackInEMShower algorithm by including a consideration of the detector gaps when searching for split muon tracks. This is essential to optimise the algorithm’s performance when removing the stitching procedure in the DUNE FD cosmic ray reconstruction which will be implemented in the accompanying dunetpc branch.
-   lardataalg PR 14
    -   Dump LAr density in DetectorProperties unit test
-   larutils PR 6
    -   New build script added for sbncode and sbnobj, based on script for sbnd. Tested and builds locally. Also updated buildSBND.sh to be executable as it wasn’t by default before.
-   larpandora PR 11
    -   PR to include Space Charge Effect (SCE) corrections into the TrajPoint dEdx tool (although most of the work is done in the alg for extensibility). This builds on the work in larsoft v09\_04\_00. The input should already have spatial corrections applied by the SCECorrections module.
    -   Specifically the corrections are:
        -   Correct for the “squeezing” from SCE in the dx
        -   Use the local electric field when calculating the recombination in conversion from dQ/dx -\> dE/dx
    -   Default behaviour is unchanged and experiments must choose to enable the corrections via fcl if they wish to use them.

Bug fixes(#Bug-fixes)
------------------------

-   larcorealg PR 11
    -   This should solve issue [\#25003](/redmine/issues/25003 "Bug: Bug in geo::OpDetGeo isBar() when using sphere/semi-sphere optical detectors  (Closed)").

Updated dependencies(#Updated-dependencies)
----------------------------------------------

Change List(#Change-List)
============================

larsoft v09\_06\_00(#larsoft-v09_06_00)
------------------------------------------

-   2020-10-07 Lynn Garren : larsoft v09\_06\_00 for larsoft v09\_06\_00
-   2020-10-07 Lynn Garren : product versions

lareventdisplay v09\_00\_08(#lareventdisplay-v09_00_08)
----------------------------------------------------------

-   2020-10-07 Lynn Garren : lareventdisplay v09\_00\_08 for larsoft v09\_06\_00

larexamples v09\_00\_08(#larexamples-v09_00_08)
--------------------------------------------------

-   2020-10-07 Lynn Garren : larexamples v09\_00\_08 for larsoft v09\_06\_00

larg4 v09\_01\_01(#larg4-v09_01_01)
--------------------------------------

-   2020-10-07 Lynn Garren : larg4 v09\_01\_01 for larsoft v09\_06\_00

larpandora v09\_02\_00(#larpandora-v09_02_00)
------------------------------------------------

-   2020-10-07 Lynn Garren : larpandora v09\_02\_00 for larsoft v09\_06\_00
-   2020-10-07 Lynn Garren : Merge pull request \#11 from PandoraPFA/feature/sce\_v9
-   2020-09-30 AndyChappell : Merge pull request \#7 from etyley/feature/etyley\_sce\_v9
-   2020-09-22 Edward Tyley : Added SCE corrections to TrajPoint dEdx tool. N.B. this requires input to have been corrected using SCECorrections module

larsimrad v09\_00\_08(#larsimrad-v09_00_08)
----------------------------------------------

-   2020-10-07 Lynn Garren : larsimrad v09\_00\_08 for larsoft v09\_06\_00
-   2020-10-07 Lynn Garren : find headers

larrecodnn v09\_01\_03(#larrecodnn-v09_01_03)
------------------------------------------------

-   2020-10-07 Lynn Garren : larrecodnn v09\_01\_03 for larsoft v09\_06\_00

larwirecell v09\_01\_03(#larwirecell-v09_01_03)
--------------------------------------------------

-   2020-10-07 Lynn Garren : larwirecell v09\_01\_03 for larsoft v09\_06\_00

larana v09\_00\_08(#larana-v09_00_08)
----------------------------------------

-   2020-10-07 Lynn Garren : larana v09\_00\_08 for larsoft v09\_06\_00

larreco v09\_02\_03(#larreco-v09_02_03)
------------------------------------------

-   2020-10-07 Lynn Garren : larreco v09\_02\_03 for larsoft v09\_06\_00

larsim v09\_04\_01(#larsim-v09_04_01)
----------------------------------------

-   2020-10-07 Lynn Garren : larsim v09\_04\_01 for larsoft v09\_06\_00

larevt v09\_00\_06(#larevt-v09_00_06)
----------------------------------------

-   2020-10-07 Lynn Garren : larevt v09\_00\_06 for larsoft v09\_06\_00

lardata v09\_01\_01(#lardata-v09_01_01)
------------------------------------------

-   2020-10-07 Lynn Garren : lardata v09\_01\_01 for larsoft v09\_06\_00

larcore v09\_00\_01(#larcore-v09_00_01)
------------------------------------------

-   2020-10-07 Lynn Garren : larcore v09\_00\_01 for larsoft v09\_06\_00

larpandoracontent v03\_21\_00(#larpandoracontent-v03_21_00)
--------------------------------------------------------------

-   2020-10-07 Lynn Garren : larpandoracontent v03\_21\_00 for larsoft v09\_06\_00
-   2020-10-07 Lynn Garren : v03\_21\_00 per branch name
-   2020-10-02 Andrew Chappell : Catch potential exception
-   2020-10-01 AndyChappell : Merge pull request \#139 from imawby/feature/NoStitching
-   2020-10-01 Isobel Mawby : Whitespace removal
-   2020-10-01 Isobel Mawby : update algorithm parameters
-   2020-09-28 Isobel Mawby : PR Changes
-   2020-09-28 Isobel Mawby : Adding doxygen comments and removing TPC boundary sort function
-   2020-09-28 Isobel Mawby : removing av hit sep function from LArClusterHelper
-   2020-09-28 Isobel Mawby : Removing endpoint extension algorithms
-   2020-09-28 Isobel Mawby : Gap consideration code cleanup
-   2020-09-28 Isobel Mawby : Remove TestBeamEventValidation changes
-   2020-09-28 Isobel Mawby : Removing hit loss investigative algorithm
-   2020-09-08 Isobel Mawby : Project vertex to detector
-   2020-09-07 Isobel Mawby : investigative algorithm to check hit losses
-   2020-09-07 Isobel Mawby : Accounting for detector gaps in hit checks
-   2020-09-04 Isobel Mawby : investigative prints
-   2020-09-04 Isobel Mawby : investigate hit difference
-   2020-09-03 Isobel Mawby : adding containment check to DR alg
-   2020-09-02 Isobel Mawby : PR changes and class structure modifications
-   2020-08-28 Isobel Mawby : First PR update
-   2020-08-26 Isobel Mawby : TrackRefinement merge position fix
-   2020-08-26 Isobel Mawby : change to merge point finding
-   2020-08-25 Isobel Mawby : Initialise previousOpeningAngle
-   2020-08-25 Isobel Mawby : remove investigative print statements
-   2020-08-25 Isobel Mawby : Remove TrackInEMShower algorithm
-   2020-08-25 Isobel Mawby : remove TestBeamEventValidationAlgorithm.cc from history
-   2020-08-25 Isobel Mawby : remove files from PR
-   2020-08-25 Isobel Mawby : remove changes from TwoDSlidingFitSplittingAndSplicingAlgorithm.cc
-   2020-08-25 Isobel Mawby : remove investigative print statements
-   2020-08-25 Isobel Mawby : after rebase
-   2020-08-25 Isobel Mawby : Print statements added + containment and endpoint check bug fix
-   2020-08-24 Isobel Mawby : Change to hit collection for subset fits
-   2020-08-24 Isobel Mawby : code refactoring and doxygen comments
-   2020-08-21 Isobel Mawby : code refactoring
-   2020-08-18 Isobel Mawby : Correcting extrapolation point error and start TrackInEMShower integrait
-   2020-08-17 Isobel Mawby : using closest points to extrapolation line
-   2020-08-16 Isobel Mawby : Implementing HW dependent fit parameters
-   2020-08-13 Isobel Mawby : Implementing measures to protect created main tracks
-   2020-08-13 Isobel Mawby : GetExtrapolatedHits refinement
-   2020-08-11 Isobel Mawby : validation hack
-   2020-08-11 Isobel Mawby : Class inheritance refactor and new algorithm added
-   2020-08-07 Isobel Mawby : before TrackExtensionRefinement and TrackMergeRefinement class inheritance structure
-   2020-08-06 Isobel Mawby : Updating the cluster associations of the cluster association vector
-   2020-08-05 Isobel Mawby : Adding curviness check to remove shower clusters
-   2020-08-05 Isobel Mawby : attempt to remove long shower clusters from cluster vector
-   2020-08-03 Isobel Mawby : Adding in cluster association header
-   2020-08-03 Isobel Mawby : fine tuning
-   2020-07-31 Isobel Mawby : Extrapolate Hits update
-   2020-07-28 Isobel Mawby : stable template structure
-   2020-07-28 Isobel Mawby : before template attempt
-   2020-07-27 Isobel Mawby : progress on derived class
-   2020-07-22 Isobel Mawby : update map management
-   2020-07-22 Isobel Mawby : before update TrackInEMShower functions
-   2020-07-20 Isobel Mawby : adding in hit removal and track extension
-   2020-07-17 Isobel Mawby : refining CR clustering error selection
-   2020-07-14 Isobel Mawby : debugging
-   2020-07-07 Isobel Mawby : changes
-   2020-07-01 Isobel Mawby : Trying to tag clustering errors
-   2020-06-29 Isobel Mawby : Class creation
-   2019-10-23 StevenGreen1 : Adding X0 to output validation root trees.

larsoftobj v09\_01\_01(#larsoftobj-v09_01_01)
------------------------------------------------

-   2020-10-07 Lynn Garren : larsoftobj v09\_01\_01 for larsoft v09\_06\_00
-   2020-10-07 Lynn Garren : product versions

lardataobj v09\_00\_01(#lardataobj-v09_00_01)
------------------------------------------------

-   2020-10-07 Lynn Garren : lardataobj v09\_00\_01 for larsoft v09\_06\_00

lardataalg v09\_01\_01(#lardataalg-v09_01_01)
------------------------------------------------

-   2020-10-07 Lynn Garren : lardataalg v09\_01\_01 for larsoft v09\_06\_00
-   2020-10-07 Lynn Garren : Merge pull request \#14 from PetrilloAtWork/feature/gp\_testDensity
-   2020-10-05 Gianluca Petrillo : Fixed typo.
-   2020-10-02 Gianluca Petrillo : … and I forgot the units.
-   2020-10-02 Gianluca Petrillo : Added dump of LAr density to DetectorProperties “test”

larcorealg v09\_00\_01(#larcorealg-v09_00_01)
------------------------------------------------

-   2020-10-07 Lynn Garren : larcorealg v09\_00\_01 for larsoft v09\_06\_00
-   2020-10-07 Lynn Garren : Merge pull request \#11 from PetrilloAtWork/feature/gp\_issue25003
-   2020-10-06 Gianluca Petrillo : Fix OpDetGeo.h for Clang 7.
-   2020-10-05 Gianluca Petrillo : Fixed bug in \`OpDetGeo::isShape()\` implementation.
-   2020-10-02 Gianluca Petrillo : Fixed geo::OpDetGeo::isBar().

larcoreobj v09\_00\_00(#larcoreobj-v09_00_00)
------------------------------------------------

webevd v09\_00\_06(#webevd-v09_00_06)
----------------------------------------

-   2020-10-07 Lynn Garren : webevd v09\_00\_06 for larsoft v09\_06\_00

larbatch v01\_53\_01(#larbatch-v01_53_01)
--------------------------------------------

larutils v1\_27\_00(#larutils-v1_27_00)
------------------------------------------

-   2020-10-07 Lynn Garren : larutils v1\_27\_00 for larsoft v09\_06\_00
-   2020-10-07 Lynn Garren : remove whitespace
-   2020-10-07 Lynn Garren : Merge pull request [\#6](/redmine/issues/6 "Feature: Non-KCA Remediation (New)") from SBNSoftware/feature/ascarff\_sbncodeBuildScript
-   2020-10-07 Andrew Scarff : Adding SBN build script. Small update to buildSBND.sh too.
