LArSoft v06\_35\_00 Release Notes
======================================================================

-   **Table of contents**
-   [LArSoft v06\_35\_00 Release Notes](#LArSoft-v06_35_00-Release-Notes)
    -   [Purpose](#Purpose)
    -   [New features](#New-features)
    -   [Bug fixes](#Bug-fixes)
    -   [Updated dependencies](#Updated-dependencies)
-   [Change List](#Change-List)
    -   [larsoft v06\_35\_00](#larsoft-v06_35_00)
    -   [lareventdisplay v06\_05\_04](#lareventdisplay-v06_05_04)
    -   [larexamples v06\_03\_04](#larexamples-v06_03_04)
    -   [larpandora v06\_10\_04](#larpandora-v06_10_04)
    -   [larwirecell v06\_04\_04](#larwirecell-v06_04_04)
    -   [larana v06\_05\_04](#larana-v06_05_04)
    -   [larreco v06\_27\_00](#larreco-v06_27_00)
    -   [larsim v06\_21\_00](#larsim-v06_21_00)
    -   [larevt v06\_13\_02](#larevt-v06_13_02)
    -   [lardata v06\_20\_03](#lardata-v06_20_03)
    -   [larcore v06\_09\_02](#larcore-v06_09_02)
    -   [larpandoracontent v03\_05\_00](#larpandoracontent-v03_05_00)
    -   [larsoftobj v1\_19\_02](#larsoftobj-v1_19_02)
    -   [lardataobj v1\_15\_03](#lardataobj-v1_15_03)
    -   [larcoreobj v1\_13\_01](#larcoreobj-v1_13_01)
    -   [larbatch v01\_32\_00](#larbatch-v01_32_00)
    -   [larutils v1\_12\_04](#larutils-v1_12_04)

[list of LArSoft releases](LArSoft_release_list)
Download instructions for [larsoft v06\_35\_00](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v06_35_00/larsoft-v06_35_00.html)
Download instructions for [just larsoftobj v1\_19\_02](http://scisoft.fnal.gov/scisoft/bundles/larsoftobj/v1_19_02/larsoftobj-v1_19_02.html)

Purpose
--------------------

-   ifdhc v2\_0\_6
-   approved changes

New features
------------------------------

-   ParticleBomb
    -   larsim afurmans\_particleBomb
    -   [particle bomb generator](https://indico.fnal.gov/getFile.py/access?contribId=1&resId=0&materialId=slides&confId=14491)

Bug fixes
------------------------

Updated dependencies
----------------------------------------------

||
|Product|Version|Qualifiers|Notes|
|nutools|v2\_12\_02|e14|[NuTools\_Release\_Notes](/redmine/projects/nutools/wiki/NuTools_Release_Notes#nutools-v2_12_02)|
|ifdhc|v2\_0\_6|e14:p2713d||
|ifdhc\_config|v2\_0\_6b|||
|mrb|v1\_09\_02|||

Change List
============================

larsoft v06\_35\_00
------------------------------------------

-   2017-05-10 Lynn Garren : larsoft v06\_35\_00 for larsoft v06\_35\_00
-   2017-05-10 Lynn Garren : update product versions
-   2017-05-10 Lynn Garren : update dependency database

lareventdisplay v06\_05\_04
----------------------------------------------------------

-   2017-05-10 Lynn Garren : lareventdisplay v06\_05\_04 for larsoft v06\_35\_00

larexamples v06\_03\_04
--------------------------------------------------

-   2017-05-10 Lynn Garren : larexamples v06\_03\_04 for larsoft v06\_35\_00

larpandora v06\_10\_04
------------------------------------------------

-   2017-05-10 Lynn Garren : larpandora v06\_10\_04 for larsoft v06\_35\_00
-   2017-05-03 John Marshall : Merge branch ‘updates’ into develop
-   2017-05-03 John Marshall : Set required larpandoracontent version to v03\_05\_00.

larwirecell v06\_04\_04
--------------------------------------------------

-   2017-05-10 Lynn Garren : larwirecell v06\_04\_04 for larsoft v06\_35\_00

larana v06\_05\_04
----------------------------------------

-   2017-05-10 Lynn Garren : larana v06\_05\_04 for larsoft v06\_35\_00

larreco v06\_27\_00
------------------------------------------

-   2017-05-10 Lynn Garren : larreco v06\_27\_00 for larsoft v06\_35\_00
-   2017-05-09 Tingjun Yang : Add fcl file for microboone.
-   2017-05-09 Tingjun Yang : Replace HitToTrackID with HitToEveID to get the parent particle. Also include antinue in the calculation.
-   2017-05-09 Tingjun Yang : Protect against bad best\_plane.
-   2017-05-09 Robert Sulej : add cosmic tag types
-   2017-05-08 Leigh Whitehead : Merge branch ‘feature/lhw\_cosmicTagPMA’ into develop
-   2017-05-08 Leigh Whitehead : Add protection against unknown directions
-   2017-05-08 Leigh Whitehead : Merge branch ‘develop’ into feature/lhw\_cosmicTagPMA
-   2017-05-06 dlouis95 : Added functionally to make data dumps on real data events.
-   2017-05-05 Robert Sulej : fix saturation in calibrated adc amplitudes
-   2017-05-05 Robert Sulej : restore the order of prefered views, which is reverse w.r.t. the returned by the geometry Views() function (later will add optional config for this)
-   2017-05-05 Robert Sulej : minor improvments in memory usage and training file reading
-   2017-05-04 Robert Sulej : move to the new recobTrack and TrackTrajectory and remove last hardcoded view types from PMAlgTracking
-   2017-05-04 Robert Sulej : remove old way of em-like tagging in pma
-   2017-05-04 Robert Sulej : remove hardcoded views, use list of views available in the geometry
-   2017-05-03 Robert Sulej : add list of available views
-   2017-05-03 Robert Sulej : Merge branch ‘develop’ of ssh://cdcvs.fnal.gov/cvs/projects/larreco into develop
-   2017-05-03 Dorota Stefan : Merge branch ‘develop’ of ssh://cdcvs.fnal.gov/cvs/projects/larreco into develop
-   2017-05-03 Dorota Stefan : add new functionality, such as dump to the root file instead of text file
-   2017-05-03 Robert Sulej : add configuration and code to use adc amplitude calibration
-   2017-04-25 Leigh Whitehead : Large update to the PMA cosmic tagger
-   2017-04-25 Leigh Whitehead : Remember DetectorDriftDirection needs one subtracted from its modulus if using to index an array.
-   2017-04-25 Leigh Whitehead : Simplify the y-crossing method for cosmic tags.
-   2017-04-24 Leigh Whitehead : Merge branch ‘develop’ into feature/lhw\_cosmicTagPMA
-   2017-04-24 Leigh Whitehead : Add files missed in previous commit
-   2017-04-24 Leigh Whitehead : Various updates:
-   2017-04-21 Leigh Whitehead : Add cosmic tagging for tracks traversing the total height of the detector.
-   2017-04-21 Leigh Whitehead : Merge branch ‘develop’ into feature/lhw\_cosmicTagPMA
-   2017-04-18 Leigh Whitehead : Merge branch ‘develop’ into feature/lhw\_cosmicTagPMA
-   2017-04-03 Leigh Whitehead : Add a function to tag partciles with non-zero T0 as cosmics.

larsim v06\_21\_00
----------------------------------------

-   2017-05-10 Lynn Garren : larsim v06\_21\_00 for larsoft v06\_35\_00
-   2017-05-10 Lynn Garren : Merge branch ‘afurmans\_particleBomb’ into release/v06\_35\_00
-   2017-05-09 Andrew Furmanski : fixed a bug in SingleGen (when trying to do a ParticleBomb)
-   2017-05-09 Andrew Furmanski : Fixed a bug in SingleGen
-   2017-05-09 Lynn Garren : Merge branch ‘afurmans\_particleBomb’ into release/v06\_35\_00
-   2017-05-09 Andrew Furmanski : updated to use 2D angular histograms
-   2017-05-03 Dorota Stefan : Merge branch ‘develop’ of ssh://cdcvs.fnal.gov/cvs/projects/larsim into develop
-   2017-05-03 Dorota Stefan : add hittotrackid with reference to hit as an argument
-   2017-02-16 Andrew Furmanski : cleaned up code
-   2017-02-16 Andrew Furmanski : fixed angle calculation in SampleOne as well as SampleMany
-   2017-02-16 Andrew Furmanski : fixed a misunderstanding of what thetaxy and thetaxz mean
-   2017-02-15 Andrew Furmanski : changed how angles are selected from histograms (theta,phi vs thetaxz,thetayz issues)
-   2017-02-15 Andrew Furmanski : made further updates and bug fixes to retain backwards compatibility

larevt v06\_13\_02
----------------------------------------

-   2017-05-10 Lynn Garren : larevt v06\_13\_02 for larsoft v06\_35\_00
-   2017-05-05 Brandon Eberly : Fixed a file-reading bug

lardata v06\_20\_03
------------------------------------------

-   2017-05-10 Lynn Garren : lardata v06\_20\_03 for larsoft v06\_35\_00

larcore v06\_09\_02
------------------------------------------

larpandoracontent v03\_05\_00
--------------------------------------------------------------

-   2017-05-05 John Marshall : Merge branch ‘feature/Factories’ into develop
-   2017-05-04 John Marshall : Remove unused factories.
-   2017-05-04 John Marshall : Place factory implementation inside library to avoid algorithm exposure to client applications.
-   2017-05-05 John Marshall : Merge branch ‘updates’ into develop
-   2017-05-05 John Marshall : Correction to explicit template instantiations.
-   2017-05-03 John Marshall : Merge branch ‘updates’ into develop
-   2017-05-03 John Marshall : Handle case where no 3D spacepoints are created for an input Pfo.
-   2017-05-03 John Marshall : Merge branch ‘updates’ into develop
-   2017-05-03 John Marshall : Update changelog and version (v03\_05\_00).
-   2017-05-03 John Marshall : Merge branch ‘feature/SpacePoints’ into develop
-   2017-05-02 John Marshall : Alter way in which deltaX term is handled in chi2. Tune chi2 cut for track hits. Add hit movement chi2.
-   2017-05-02 John Marshall : Add new rule for identifying end-associated Pfos.
-   2017-04-28 John Marshall : Correct StatusCodeExceptions.
-   2017-04-28 John Marshall : Add deltaX term back to chi2 for two- and three-view treatment of 3D shower hits.
-   2017-04-28 John Marshall : Add option to turn iterative treatment on/off.
-   2017-04-27 John Marshall : Remove debug visualization.
-   2017-04-27 John Marshall : Add configuration options.
-   2017-04-26 John Marshall : Refactoring of 3D hit refinement.
-   2017-04-26 John Marshall : Control 3D hit refinement iterations.
-   2017-04-26 John Marshall : Improvements to iteration control. Consistent treatment for 3D hits based upon a hit and 2 vs. 1 fit position(s).
-   2017-04-25 John Marshall : First proof-of-principle of iterative corrections.
-   2017-04-25 John Marshall : Now must use chi2 approach.
-   2017-04-25 John Marshall : Add GetMinChiSquaredYZ that uses information from fits to an overall trajectory in 3D.
-   2017-04-25 John Marshall : Clarify roles of different 3D hit creation tools.
-   2017-04-24 John Marshall : Add ability to perform sliding fits using CartesianPointLists as input.
-   2017-04-24 John Marshall : Address a couple of minor TODOs.
-   2017-04-24 John Marshall : Push interface changes through all 3D hit creation tools.
-   2017-04-21 John Marshall : Begin to restructure three dimensional hit creation algorithm for subsequent iterative treatment (for tracks).
-   2017-04-19 Multi-algorithm pattern recognition : Merge pull request \#8 from jaw86/develop
-   2017-04-19 Jack Weston : Added compile-time type-checking for variadic template methods and added type decaying where necessary in SVMHelper; deleted redundant method in SVMHelper; fixed documentation for SupportVectorMachine.
-   2017-04-18 John Marshall : Merge branch ‘feature/SVM’ into develop
-   2017-04-18 John Marshall : Cosmetic changes.
-   2017-04-18 Jack Weston : Added support vector machine interface.
-   2017-04-12 John Marshall : Extract pfo vertices, additional print out.

larsoftobj v1\_19\_02
----------------------------------------------

-   2017-05-10 Lynn Garren : larsoftobj v1\_19\_02 for larsoft v06\_35\_00
-   2017-05-10 Lynn Garren : update product versions

lardataobj v1\_15\_03
----------------------------------------------

-   2017-05-10 Lynn Garren : lardataobj v1\_15\_03 for larsoft v06\_35\_00
-   2017-05-02 Gianluca Petrillo : Inlining a function which lives in header.

larcoreobj v1\_13\_01
----------------------------------------------

larbatch v01\_32\_00
--------------------------------------------

larutils v1\_12\_04
------------------------------------------
