LArSoft v06\_15\_00 Release Notes
======================================================================

-   **Table of contents**
-   [LArSoft v06\_15\_00 Release Notes](#LArSoft-v06_15_00-Release-Notes)
    -   [Purpose](#Purpose)
    -   [New features](#New-features)
    -   [Bug fixes](#Bug-fixes)
    -   [Updated dependencies](#Updated-dependencies)
-   [Change List](#Change-List)
    -   [larsoft v06\_15\_00](#larsoft-v06_15_00)
    -   [lareventdisplay v06\_02\_01](#lareventdisplay-v06_02_01)
    -   [larexamples v06\_01\_03](#larexamples-v06_01_03)
    -   [larpandora v06\_03\_00](#larpandora-v06_03_00)
    -   [larwirecell v06\_00\_00](#larwirecell-v06_00_00)
    -   [larana v06\_03\_05](#larana-v06_03_05)
    -   [larreco v06\_11\_00](#larreco-v06_11_00)
    -   [larsim v06\_07\_00](#larsim-v06_07_00)
    -   [larevt v06\_06\_01](#larevt-v06_06_01)
    -   [lardata v06\_09\_01](#lardata-v06_09_01)
    -   [larcore v06\_04\_01](#larcore-v06_04_01)
    -   [larsoftobj v1\_08\_01](#larsoftobj-v1_08_01)
    -   [lardataobj v1\_07\_02](#lardataobj-v1_07_02)
    -   [larcoreobj v1\_06\_01](#larcoreobj-v1_06_01)
    -   [larbatch v01\_24\_00](#larbatch-v01_24_00)
    -   [larutils v1\_11\_00](#larutils-v1_11_00)

[list of LArSoft releases](LArSoft_release_list)\
Download instructions for [larsoft v06\_15\_00](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v06_15_00/larsoft-v06_15_00.html)\
Download instructions for [just larsoftobj v1\_08\_01](http://scisoft.fnal.gov/scisoft/bundles/larsoftobj/v1_08_01/larsoftobj-v1_08_01.html)

Purpose
--------------------

-   changes in develop
-   add larwirecell
-   update larpandoracontent

New features
------------------------------

-   add larwirecell to larsoft
    -   wirecell, eigen, and jsoncpp added to the larsoft products
-   larpandoracontent update
    -   larpandoracontent feature/LArPandoraContent\_v03\_01\_00
    -   larpandora feature/SettingsFor\_LArPandoraContent\_v03\_01\_00
    -   dunetpc feature/SettingsFor\_LArPandoraContent\_v03\_01\_00
    -   sbndcode feature/SettingsFor\_LArPandoraContent\_v03\_01\_00

Bug fixes
------------------------

-   remove accidental use of BASENAME\_ONLY from larsim/EventGenerator/MARLEY/CMakeLists.txt and lareventdisplay/Landed/CMakeLists.txt
-   ifhdc\_config v2\_0\_2
    -   finally fixes OSX ifdhc problems
    -   path must have a trailing slash

Updated dependencies
----------------------------------------------

  --------------- ----------- ------------ -------
  Product         Version     Qualifiers   Notes
  wirecell        v0\_0\_3    e10          new
  jsoncpp         v1\_7\_2    e10          new
  eigen           v3\_2\_9a                new
  ifdhc\_config   v2\_0\_2                 
  --------------- ----------- ------------ -------

Change List
============================

larsoft v06\_15\_00
------------------------------------------

-   2016-11-16 Lynn Garren : larsoft v06\_15\_00 for larsoft v06\_15\_00
-   2016-11-16 Lynn Garren : add larwirecell
-   2016-11-16 Lynn Garren : update product versions
-   2016-11-16 Lynn Garren : ignore pyc files
-   2016-11-16 Lynn Garren : add larwirecell
-   2016-11-16 Lynn Garren : control the version of ifdhc\_config
-   2016-11-14 Lynn Garren : add wirecell to the larsoft distribution

lareventdisplay v06\_02\_01
----------------------------------------------------------

-   2016-11-16 Lynn Garren : lareventdisplay v06\_02\_01 for larsoft v06\_15\_00
-   2016-11-16 Lynn Garren : standardizing cmake usage

larexamples v06\_01\_03
--------------------------------------------------

-   2016-11-16 Lynn Garren : larexamples v06\_01\_03 for larsoft v06\_15\_00

larpandora v06\_03\_00
------------------------------------------------

-   2016-11-16 Lynn Garren : larpandora v06\_03\_00 for larsoft v06\_15\_00
-   2016-11-15 John Marshall : Update configuration for LArPandoraContent v03\_01\_00.

larwirecell v06\_00\_00
--------------------------------------------------

-   2016-11-16 Lynn Garren : larwirecell for larsoft v06\_15\_00
-   2016-11-16 Lynn Garren : fix cmake
-   2016-11-15 Lynn Garren : align with larsoft coding standards
-   2016-11-15 Lynn Garren : needed for standalone build
-   2016-11-15 Lynn Garren : Merge branch ‘wirecell\_ups\_test’ into release/v06\_15\_00
-   2016-11-15 Usher, Tracy L : Removed reference to uboonecode library
-   2016-11-15 Lynn Garren : make sure we can find the jsoncpp headers
-   2016-11-15 Lynn Garren : wirecell depends on jsoncpp and eigen, no need to list them independently
-   2016-11-15 Lynn Garren : update product\_deps for larsoft v06\_14\_00
-   2016-11-15 Lynn Garren : update product\_deps for larsoft v06\_14\_00
-   2016-10-28 bkirby : Fixed product\_deps file, cleaned up Test\_module
-   2016-10-26 Brian Kirby : Fix to CMakeList from Brett, updated test module
-   2016-10-26 bkirby : Added test module to debug linker problem
-   2016-09-22 Brett Viren : Get build working.
-   2016-09-21 Brian Kirby : Testing wirecell UPS product
-   2016-06-28 Lynn Garren : working skeleton
-   2016-06-28 Lynn Garren : working skeleton
-   2016-06-28 Lynn Garren : use approved LArSoft directory structure
-   2016-06-28 Lynn Garren : use approved LArSoft directory structure
-   2016-06-24 David Adams : Start package with single include.
-   2016-06-24 David Adams : Initial commit

larana v06\_03\_05
----------------------------------------

-   2016-11-16 Lynn Garren : larana v06\_03\_05 for larsoft v06\_15\_00
-   2016-11-14 Herbert Greenlee : Merge remote-tracking branch ‘origin/v05\_07\_00\_br’ into develop
-   2016-11-03 Herbert Greenlee : Change beam gate time to trigger time.

larreco v06\_11\_00
------------------------------------------

-   2016-11-16 Lynn Garren : larreco v06\_11\_00 for larsoft v06\_15\_00
-   2016-11-16 Robert Sulej : add more info to tree
-   2016-11-15 Robert Sulej : add eff tests for em component selection, some minor tune of config parametes to be done
-   2016-11-14 Robert Sulej : add mc truth based em fraction (enedgy dep and hits)
-   2016-11-13 Robert Sulej : some more prep work
-   2016-11-13 Robert Sulej : reorganize before adding more eff test code
-   2016-11-12 Robert Sulej : catch all exceptions possibly thrown in mc vertex projection calculation
-   2016-11-11 Lynn Garren : larsoft v06\_14\_00
-   2016-11-11 Mike Wallbank : retune
-   2016-11-11 Mike Wallbank : Save more space points from EMShower and also save hit associations
-   2016-11-10 Mike Wallbank : Bug fixes and general improvements to space point reconstruction in EMShower
-   2016-11-10 Mike Wallbank : Merge branch ‘develop’ into feature/wallbank\_EMShowerImprovements
-   2016-11-10 Mike Wallbank : Updates and improvements to EMShower space point finding
-   2016-11-09 Mike Wallbank : Changed the way space point are saved by the EMShower module. As opposed to using just those made by PMTrack, the algorithm now creates its own based on the associated hits in each view

larsim v06\_07\_00
----------------------------------------

-   2016-11-16 Lynn Garren : larsim v06\_07\_00 for larsoft v06\_15\_00
-   2016-11-16 Lynn Garren : Merge branch ‘save\_changes’ into release/v06\_15\_00
-   2016-11-16 Lynn Garren : standardizing cmake usage
-   2016-11-15 Jeremy Hewes : Added event generator module for GENIE neutron-antineutron oscillation.
-   2016-11-15 Tingjun Yang : Update NucleonDecay\_module.cc to be compatible with genie 2.12. The default decay mode is still p-\>nubar K+.

larevt v06\_06\_01
----------------------------------------

-   2016-11-16 Lynn Garren : larevt v06\_06\_01 for larsoft v06\_15\_00

lardata v06\_09\_01
------------------------------------------

-   2016-11-16 Lynn Garren : lardata v06\_09\_01 for larsoft v06\_15\_00

larcore v06\_04\_01
------------------------------------------

-   2016-11-16 Lynn Garren : larcore v06\_04\_01 for larsoft v06\_15\_00
-   2016-11-11 Gianluca Petrillo : Added WireGeo::Length().

larsoftobj v1\_08\_01
----------------------------------------------

lardataobj v1\_07\_02
----------------------------------------------

larcoreobj v1\_06\_01
----------------------------------------------

larbatch v01\_24\_00
--------------------------------------------

-   2016-11-16 Lynn Garren : larbatch v01\_24\_00 for larsoft v06\_15\_00
-   2016-11-15 Joel Mousseau : Fix a bug in quick check
-   2016-11-15 Joel Mousseau : Do not try and read the missing\_files.list if the file doesnt exist
-   2016-11-10 Joel Mousseau : Finalizing validating on node and multistage running
-   2016-10-23 Joel Mousseau : Changes to allow correct parentage of files in metadata when running multiple stages simultaneously
-   2016-10-11 Joel Mousseau : Fix some issues with condor\_lar and overlay running
-   2016-09-22 Joel Mousseau : Fix some merging isuess
-   2016-09-21 Joel Mousseau : Directly copy root files to dropbox
-   2016-08-25 Joel Mousseau : project.py now handles on-grid validation and multiple jobs per stage more natively
-   2016-08-17 Joel Mousseau : Bug fixes to quick check in project.py condor\_lar will now work with multistage running for any stage even if an output file is not specified
-   2016-08-10 Joel Mousseau : Workable version of multi-stage projects. Updates to extractor dict to handle experiment specific metadata
-   2016-08-05 Joel Mousseau : Add in code to run multiple lar Stages in one worker node
-   2016-07-13 Joel Mousseau : First import of on-grid validation scripts
-   2016-10-23 Joel Mousseau : Valstat is now used to determine condor\_lars return code. Give copy\_to\_fts a default value of 0 in projectdef
-   2016-09-21 Joel Mousseau : Directly copy root files to dropbox
-   2016-08-26 Joel Mousseau : Fix whitesapce issue in files.list
-   2016-08-25 Joel Mousseau : project.py now handles on-grid validation and multiple jobs per stage more natively
-   2016-08-17 Joel Mousseau : Bug fixes to quick check in project.py condor\_lar will now work with multistage running for any stage even if an output file is not specified
-   2016-08-05 Joel Mousseau : Add in code to run multiple lar Stages in one worker node
-   2016-08-10 Joel Mousseau : Workable version of multi-stage projects. Updates to extractor dict to handle experiment specific metadata
-   2016-08-05 Joel Mousseau : Add in code to run multiple lar Stages in one worker node
-   2016-07-13 Joel Mousseau : First import of on-grid validation scripts
-   2016-11-14 Herbert Greenlee : Changes to reduce hang risk.
-   2016-11-14 Herbert Greenlee : Merge branch ‘develop’ of ssh://cdcvs.fnal.gov/cvs/projects/larbatch into develop
-   2016-11-11 Herbert Greenlee : Function walk should not raise exception if directory does not exist.
-   2016-11-11 Lynn Garren : larsoft v06\_14\_00
-   2016-11-10 Herbert Greenlee : Optimize larbatch\_posix.isdir and larbatch\_posix.walk to improve speed and reduce hang risk.

larutils v1\_11\_00
------------------------------------------

-   2016-11-16 Lynn Garren : larutils v1\_11\_00 for larsoft v06\_15\_00
-   2016-11-14 Lynn Garren : no need to define basequal
-   2016-11-14 Lynn Garren : just build third party products
