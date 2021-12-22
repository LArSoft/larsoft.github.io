LArSoft v06\_02\_00 Release Notes
======================================================================

-   **Table of contents**
-   [LArSoft v06\_02\_00 Release Notes](#LArSoft-v06_02_00-Release-Notes)
    -   [Purpose](#Purpose)
    -   [New features](#New-features)
    -   [Bug fixes](#Bug-fixes)
    -   [Updated dependencies](#Updated-dependencies)
-   [Change List](#Change-List)
    -   [larsoft v06\_02\_00](#larsoft-v06_02_00)
    -   [lareventdisplay v06\_00\_03](#lareventdisplay-v06_00_03)
    -   [larexamples v06\_00\_02](#larexamples-v06_00_02)
    -   [larpandora v06\_00\_03](#larpandora-v06_00_03)
    -   [larana v06\_00\_03](#larana-v06_00_03)
    -   [larreco v06\_01\_01](#larreco-v06_01_01)
    -   [larsim v06\_01\_01](#larsim-v06_01_01)
    -   [larevt v06\_00\_02](#larevt-v06_00_02)
    -   [lardata v06\_01\_00](#lardata-v06_01_00)
    -   [larcore v06\_00\_01](#larcore-v06_00_01)
    -   [larsimobj v1\_05\_00](#larsimobj-v1_05_00)
    -   [lardataobj v1\_04\_00](#lardataobj-v1_04_00)
    -   [larcoreobj v1\_04\_00](#larcoreobj-v1_04_00)
    -   [larbatch v01\_23\_04](#larbatch-v01_23_04)
    -   [larutils v1\_08\_00](#larutils-v1_08_00)

[list of LArSoft releases](LArSoft_release_list)\
[Download instructions](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v06_02_00/larsoft-v06_02_00.html)

Purpose
--------------------

-   fix for [\#13329](/redmine/issues/13329 "Bug: ROOT 6 emits a load of "errors" when running GENIE+Corsika simulation (Closed)")
    -   genie v2\_10\_10
    -   dk2nu v01\_04\_01
-   larsimobj feature/gp\_SimChannelRevision

New features
------------------------------

-   larsimobj feature/gp\_SimChannelRevision
    -    std::map<unsigned short,std::vector<sim::IDE> > must be replaced by auto

    -   In most cases, the type should be const auto &
    -   This change has already been made in the experiment code

Bug fixes
------------------------

-   [\#13329](/redmine/issues/13329 "Bug: ROOT 6 emits a load of "errors" when running GENIE+Corsika simulation (Closed)") is fixed with genie v2\_10\_10

Updated dependencies
----------------------------------------------

  --------------- ------------- ------------ ------------------------------------------------------------------------------------------------------------------------
  Product         Version       Qualifiers   Notes
  nutools         v2\_01\_03    e10          
  dk2nu           v01\_04\_01   e10:r6       
  genie           v2\_10\_10    e10:r6       [\#13329](/redmine/issues/13329 "Bug: ROOT 6 emits a load of "errors" when running GENIE+Corsika simulation (Closed)")
  cetbuildtools   v5\_04\_03                 
  --------------- ------------- ------------ ------------------------------------------------------------------------------------------------------------------------

Change List
============================

larsoft v06\_02\_00
------------------------------------------

-   2016-08-05 Lynn Garren : larsoft v06\_02\_00 for larsoft v06\_02\_00
-   2016-08-05 Lynn Garren : nutools, genie, dk2nu

lareventdisplay v06\_00\_03
----------------------------------------------------------

-   2016-08-05 Lynn Garren : lareventdisplay v06\_00\_03 for larsoft v06\_02\_00
-   2016-08-04 Tingjun Yang : Fix a bug so calorimetry matches pid.
-   2016-08-04 Tingjun Yang : Add information of number of hits per plane.
-   2016-08-04 Tingjun Yang : Match calorimetry color with track color.
-   2016-08-04 Tingjun Yang : Use hist (no L) option, also fix other places with the new option.
-   2016-08-03 Gianluca Petrillo : Draw waveforms with no error bar (issue [\#13366](/redmine/issues/13366 "Bug: Draw waveform as histogram not points (Closed)"))
-   2016-08-03 Gianluca Petrillo : Added missing service to event display

larexamples v06\_00\_02
--------------------------------------------------

-   2016-08-05 Lynn Garren : larexamples v06\_00\_02 for larsoft v06\_02\_00
-   2016-07-29 Gianluca Petrillo : Removed HTML file which should have never been there.

larpandora v06\_00\_03
------------------------------------------------

-   2016-08-05 Lynn Garren : larpandora v06\_00\_03 for larsoft v06\_02\_00
-   2016-07-30 Andrew Blake : Modifying LArPandora analysis code to handle one hit per seed and multiple seeds per particle (rather than one seed per particle, as was assumed by previous analysis module)

larana v06\_00\_03
----------------------------------------

-   2016-08-05 Lynn Garren : larana v06\_00\_03 for larsoft v06\_02\_00
-   2016-08-03 Tingjun Yang : Save all points (including the first and last points).

larreco v06\_01\_01
------------------------------------------

-   2016-08-05 Lynn Garren : larreco v06\_01\_01 for larsoft v06\_02\_00
-   2016-08-04 Robert Sulej : add support for vertex info in dumped pdg maps
-   2016-08-04 Robert Sulej : make sure this is most up to date script for EM vs track-like training data prep
-   2016-08-03 Robert Sulej : add options for downscaling function
-   2016-07-29 Lynn Garren : larsoft v06\_00\_02
-   2016-07-29 Robert Sulej : add function for view selection
-   2016-07-29 Robert Sulej : add classification of unclustered hits

larsim v06\_01\_01
----------------------------------------

-   2016-08-05 Lynn Garren : larsim v06\_01\_01 for larsoft v06\_02\_00
-   2016-08-04 Lynn Garren : adding ROOT core library
-   2016-08-04 Lynn Garren : using auto in advance of SimChannel changes
-   2016-08-01 Brian Rebel : Add file for configuring G4 to visualize volumes in HepRep format
-   2016-08-01 Dorota Stefan : add parameter which specifies minimum number of electron clusters. Default MinNumberOfElCluster is 0 so behavior is not changed until new parameter is set.

larevt v06\_00\_02
----------------------------------------

-   2016-08-05 Lynn Garren : larevt v06\_00\_02 for larsoft v06\_02\_00

lardata v06\_01\_00
------------------------------------------

-   2016-08-05 Lynn Garren : lardata v06\_01\_00 for larsoft v06\_02\_00
-   2016-08-04 Lynn Garren : add ROOT core library
-   2016-08-03 Tingjun Yang : Exclude the first and last point in the PID calculation.

larcore v06\_00\_01
------------------------------------------

-   2016-08-05 Lynn Garren : larcore v06\_00\_01 for larsoft v06\_02\_00
-   2016-08-01 Lynn Garren : disallow the default constructor

larsimobj v1\_05\_00
--------------------------------------------

-   2016-08-05 Lynn Garren : larsimobj v1\_05\_00 for larsoft v06\_02\_00
-   2016-07-22 Gianluca Petrillo : sim::SimChannel: minor optimisations
-   2016-07-22 Gianluca Petrillo : sim::SimChannel: documentation and meaningful type definitions
-   2016-07-22 Gianluca Petrillo : Bug fixes to IDE and channel merging algorithms in sim::SimChannel
-   2016-07-21 Brian Rebel : build the dictionary for the sim::TDCIDE
-   2016-07-21 Brian Rebel : Make some changes suggested by Gianluca
-   2016-07-21 Brian Rebel : put the changes to SimChannel into this repository now. Change map\<unsigned short, std::vector\<sim::IDE\> \> to vector\<pair\<unsigned short, std::vector\<sim::IDE\> \> \>.
-   2016-07-18 Lynn Garren : Merge branch ‘v06\_00\_00\_art2’ into develop

lardataobj v1\_04\_00
----------------------------------------------

larcoreobj v1\_04\_00
----------------------------------------------

larbatch v01\_23\_04
--------------------------------------------

-   2016-08-05 Lynn Garren : larbatch v01\_23\_04 for larsoft v06\_02\_00
-   2016-08-03 Herbert Greenlee : Delete temporary files.
-   2016-08-01 yuntse : Update feature to check file size in pubs.
-   2016-08-01 Herbert Greenlee : Merge branch ‘develop’ into feature/greenlee\_target\_size
-   2016-07-06 Herbert Greenlee : Implement target size feature when merging files in pubs mode.

larutils v1\_08\_00
------------------------------------------

-   2016-08-05 Lynn Garren : larutils v1\_08\_00 for larsoft v06\_02\_00
-   2016-08-04 Herbert Greenlee : Merge branch ‘develop’ of ssh://cdcvs.fnal.gov/cvs/projects/larutils into develop
-   2016-08-04 Herbert Greenlee : Switch to using Taritree’s github.
-   2016-08-01 Lynn Garren : lines of code changed in the last year
-   2016-08-01 Lynn Garren : make sure we have cloc
-   2016-08-01 Lynn Garren : get information such as the author list, lines of code, etc.
