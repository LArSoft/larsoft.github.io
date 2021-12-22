LArSoft v06\_09\_00 Release Notes(#LArSoft-v06_09_00-Release-Notes)
======================================================================

-   **Table of contents**
-   [LArSoft v06\_09\_00 Release Notes](#LArSoft-v06_09_00-Release-Notes)
    -   [Purpose](#Purpose)
    -   [New features](#New-features)
    -   [Bug fixes](#Bug-fixes)
    -   [Updated dependencies](#Updated-dependencies)
-   [Change List](#Change-List)
    -   [larsoft v06\_09\_00](#larsoft-v06_09_00)
    -   [lareventdisplay v06\_01\_07](#lareventdisplay-v06_01_07)
    -   [larexamples v06\_00\_11](#larexamples-v06_00_11)
    -   [larpandora v06\_01\_02](#larpandora-v06_01_02)
    -   [larana v06\_02\_00](#larana-v06_02_00)
    -   [larreco v06\_07\_00](#larreco-v06_07_00)
    -   [larsim v06\_04\_00](#larsim-v06_04_00)
    -   [larevt v06\_03\_00](#larevt-v06_03_00)
    -   [lardata v06\_06\_00](#lardata-v06_06_00)
    -   [larcore v06\_02\_02](#larcore-v06_02_02)
    -   [larsoftobj v1\_07\_00](#larsoftobj-v1_07_00)
    -   [lardataobj v1\_07\_00](#lardataobj-v1_07_00)
    -   [larcoreobj v1\_05\_00](#larcoreobj-v1_05_00)
    -   [larbatch v01\_23\_06](#larbatch-v01_23_06)
    -   [larutils v1\_09\_00](#larutils-v1_09_00)

[list of LArSoft releases](LArSoft_release_list)\
[Download instructions](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v06_09_00/larsoft-v06_09_00.html)

Purpose(#Purpose)
--------------------

-   changes in develop
-   feature/mrmooney\_SCERecombFeature

New features(#New-features)
------------------------------

-   larevt and larsim feature/mrmooney\_SCERecombFeature

Bug fixes(#Bug-fixes)
------------------------

-   Fix memory leak in NEST (issue [\#14085](/redmine/issues/14085 "Bug: Memory leak running LArG4 with NEST (Closed)"))

Updated dependencies(#Updated-dependencies)
----------------------------------------------

  --------------- ------------ ------------ --------------------------------
  Product         Version      Qualifiers   Notes
  larsoft\_data   v1\_01\_01                updated uboone/SCEoffsets.root
  --------------- ------------ ------------ --------------------------------

Change List(#Change-List)
============================

larsoft v06\_09\_00(#larsoft-v06_09_00)
------------------------------------------

-   2016-10-06 Lynn Garren : larsoft\_data v1\_01\_01
-   2016-10-05 Lynn Garren : larsoft v06\_09\_00 for larsoft v06\_09\_00
-   2016-10-05 Lynn Garren : correct qualifier for canvas
-   2016-10-04 Lynn Garren : larsoftobj cfg file
-   2016-10-03 Lynn Garren : new config files
-   2016-10-05 Lynn Garren : update product versions
-   2016-09-30 Lynn Garren : fix squal

lareventdisplay v06\_01\_07(#lareventdisplay-v06_01_07)
----------------------------------------------------------

-   2016-10-05 Lynn Garren : lareventdisplay v06\_01\_07 for larsoft v06\_09\_00

larexamples v06\_00\_11(#larexamples-v06_00_11)
--------------------------------------------------

-   2016-10-05 Lynn Garren : larexamples v06\_00\_11 for larsoft v06\_09\_00

larpandora v06\_01\_02(#larpandora-v06_01_02)
------------------------------------------------

-   2016-10-05 Lynn Garren : larpandora v06\_01\_02 for larsoft v06\_09\_00

larana v06\_02\_00(#larana-v06_02_00)
----------------------------------------

-   2016-10-05 Lynn Garren : larana v06\_02\_00 for larsoft v06\_09\_00
-   2016-09-29 Lynn Garren : larsoft v06\_08\_00
-   2016-09-28 Tingjun Yang : Use TrackHitMeta information to get position and direction of trajectory point associated with a hit if TrackHitMeta information is available. Currently only works for PMA.
-   2016-09-28 Tingjun Yang : Add option to decide whether to flip track direction if dQ/dx is higher at track start. This used to be the default behavior. Turn it off for argoneut.
-   2016-09-28 Tingjun Yang : Clean up code to remove TTree related stuff.

larreco v06\_07\_00(#larreco-v06_07_00)
------------------------------------------

-   2016-10-05 Lynn Garren : larreco v06\_07\_00 for larsoft v06\_09\_00
-   2016-10-05 Robert Sulej : Merge branch ‘develop’ of ssh://cdcvs.fnal.gov/cvs/projects/larreco into develop
-   2016-10-05 Robert Sulej : and finally making vertex objects for detected decays
-   2016-10-05 Mike Wallbank : Added dEdx calculation temporary until T0 support is added. Commented out by default
-   2016-10-05 Mike Wallbank : Merge branch ‘develop’ of ssh://cdcvs.fnal.gov/cvs/projects/larreco into develop
-   2016-10-05 Mike Wallbank : Updated calorimetry info for 35ton data
-   2016-10-04 Robert Sulej : add script to run cnn on dumped raw, process and plot entire 2d projection
-   2016-10-04 Robert Sulej : cut not used import
-   2016-10-04 Robert Sulej : option to pass configuration file via cmd line arg
-   2016-10-04 Robert Sulej : move most configuration to json file
-   2016-10-04 Robert Sulej : Merge branch ‘develop’ of ssh://cdcvs.fnal.gov/cvs/projects/larreco into develop
-   2016-10-04 Robert Sulej : option to skip crop (now in data dumping module); use float32 for training patches
-   2016-10-03 Dorota Stefan : fixed bug 13797 reported by Gianluca
-   2016-09-30 Robert Sulej : progress with making vtx from cnn tagged decay - 3D position output seems correct, now need create object

larsim v06\_04\_00(#larsim-v06_04_00)
----------------------------------------

-   2016-10-06 Lynn Garren : larsoft\_data v1\_01\_01
-   2016-10-05 Lynn Garren : larsim v06\_04\_00 for larsoft v06\_09\_00
-   2016-10-05 Lynn Garren : Revert “Revert”Merge branch ‘feature/mrmooney\_SCERecombFeature’ of ssh://cdcvs.fnal.gov/cvs/projects/larsim into develop“”
-   2016-10-05 Gianluca Petrillo : Fixing memory leak in NEST (issue [\#14085](/redmine/issues/14085 "Bug: Memory leak running LArG4 with NEST (Closed)"))
-   2016-10-04 Gianluca Petrillo : Changed a detail of exception throwning in LArSeedService.
-   2016-10-04 Gianluca Petrillo : Removed old unused header
-   2016-10-04 Michael Mooney : Revert “Merge branch ‘feature/mrmooney\_SCERecombFeature’ of ssh://cdcvs.fnal.gov/cvs/projects/larsim into develop”
-   2016-10-04 Michael Mooney : Merge branch ‘feature/mrmooney\_SCERecombFeature’ of ssh://cdcvs.fnal.gov/cvs/projects/larsim into develop
-   2016-09-29 Tingjun Yang : Merge branch ‘develop’ of ssh://cdcvs.fnal.gov/cvs/projects/larsim into develop
-   2016-09-29 Tingjun Yang : Set GENIE random number seed using the one from LArSeedService.
-   2016-08-31 Michael Mooney : Reduce verbosity of output
-   2016-07-27 Michael Mooney : Incorporate E-field distortions in recombination model

larevt v06\_03\_00(#larevt-v06_03_00)
----------------------------------------

-   2016-10-05 Lynn Garren : larevt v06\_03\_00 for larsoft v06\_09\_00
-   2016-10-05 Lynn Garren : from Gianluca: check for old fhicl parameter
-   2016-10-05 Lynn Garren : Revert “Revert”Merge branch ‘feature/mrmooney\_SCERecombFeature’ of ssh://cdcvs.fnal.gov/cvs/projects/larevt into develop“”
-   2016-10-04 Michael Mooney : Revert “Merge branch ‘feature/mrmooney\_SCERecombFeature’ of ssh://cdcvs.fnal.gov/cvs/projects/larevt into develop”
-   2016-10-04 Michael Mooney : Merge branch ‘feature/mrmooney\_SCERecombFeature’ of ssh://cdcvs.fnal.gov/cvs/projects/larevt into develop
-   2016-07-27 Michael Mooney : Incorporate E-field distortions in SCE service

lardata v06\_06\_00(#lardata-v06_06_00)
------------------------------------------

larcore v06\_02\_02(#larcore-v06_02_02)
------------------------------------------

larsoftobj v1\_07\_00(#larsoftobj-v1_07_00)
----------------------------------------------

lardataobj v1\_07\_00(#lardataobj-v1_07_00)
----------------------------------------------

larcoreobj v1\_05\_00(#larcoreobj-v1_05_00)
----------------------------------------------

larbatch v01\_23\_06(#larbatch-v01_23_06)
--------------------------------------------

larutils v1\_09\_00(#larutils-v1_09_00)
------------------------------------------

-   2016-10-05 Lynn Garren : larutils v1\_09\_00 for larsoft v06\_09\_00
-   2016-10-05 Lynn Garren : using newBuild
-   2016-10-03 Lynn Garren : make it work
-   2016-10-03 Lynn Garren : try again to use newBuild
-   2016-10-03 Lynn Garren : specify larsoftobj version
-   2016-10-03 Lynn Garren : use newBuild
-   2016-09-29 Lynn Garren : larsoft v06\_08\_00
-   2016-09-28 Lynn Garren : better oldver
