LArSoft v04\_29\_00 Release Notes[¶](#LArSoft-v04_29_00-Release-Notes)
======================================================================

-   **Table of contents**
-   [LArSoft v04\_29\_00 Release Notes](#LArSoft-v04_29_00-Release-Notes)
    -   [Purpose](#Purpose)
    -   [New features](#New-features)
    -   [Bug fixes](#Bug-fixes)
    -   [Updated dependencies](#Updated-dependencies)
-   [Change List](#Change-List)
    -   [larsoft v04\_29\_00](#larsoft-v04_29_00)
    -   [lareventdisplay v04\_12\_02](#lareventdisplay-v04_12_02)
    -   [larexamples v04\_06\_03](#larexamples-v04_06_03)
    -   [larpandora v04\_08\_03](#larpandora-v04_08_03)
    -   [larana v04\_15\_03](#larana-v04_15_03)
    -   [larreco v04\_22\_00](#larreco-v04_22_00)
    -   [larsim v04\_14\_01](#larsim-v04_14_01)
    -   [larevt v04\_13\_03](#larevt-v04_13_03)
    -   [lardata v04\_18\_01](#lardata-v04_18_01)
    -   [larcore v04\_20\_00](#larcore-v04_20_00)
    -   [larbatch v01\_18\_01](#larbatch-v01_18_01)
    -   [larutils v1\_04\_02](#larutils-v1_04_02)

[list of LArSoft releases](LArSoft_release_list)\
[Download instructions](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v04_29_00/larsoft-v04_29_00.html)


Purpose[¶](#Purpose)
--------------------

-   Changes in develop
-   merge new features
-   art bug fix release


New features[¶](#New-features)
------------------------------

-   lareventdisplay feature/Issue10538
    -   improvement based on [\#10538](/redmine/issues/10538 "Bug: Event display cannot read data products with an instance name (Closed)")
-   larreco feature/dstefan\_DirOfGamma
-   lardata DUNE zero suppression


Bug fixes[¶](#Bug-fixes)
------------------------

-   [\#10623](/redmine/issues/10623 "Bug: Crash reading multiple files (Closed)") resolved with art v1\_17\_03


Updated dependencies[¶](#Updated-dependencies)
----------------------------------------------

  --------------- ------------ ------------- ---------------------------------------------------------------------------------------
  Product         Version      Qualifiers    Notes
  art             v1\_17\_03   e9:nu         resolve [\#10623](/redmine/issues/10623 "Bug: Crash reading multiple files (Closed)")
  artdaq\_core    v1\_04\_21   e9:nu:s21     
  ifdh\_art       v1\_13\_04   e9:nu:s21     
  nutools         v1\_16\_01   e9[:noifdh]   
  artextensions   v1\_02\_02   e9:nu:s21     
  cetbuildtools   v4\_17\_00                 
  --------------- ------------ ------------- ---------------------------------------------------------------------------------------


Change List[¶](#Change-List)
============================


larsoft v04\_29\_00[¶](#larsoft-v04_29_00)
------------------------------------------

-   2015-10-28 Lynn Garren : update product versions
-   2015-10-28 Lynn Garren : larsoft v04\_29\_00 for larsoft v04\_29\_00
-   2015-10-28 Lynn Garren : art v1\_17\_03, etc.
-   2015-10-28 Lynn Garren : build just the products that do not depend on art


lareventdisplay v04\_12\_02[¶](#lareventdisplay-v04_12_02)
----------------------------------------------------------

-   2015-10-28 Lynn Garren : lareventdisplay v04\_12\_02 for larsoft v04\_29\_00
-   2015-10-26 Gianluca Petrillo : Raw digit options now store the product label as art::InputTag (more appropriate)
-   2015-10-26 Gianluca Petrillo : Removed MaxChannelStatus from default configuration. There is no general value that can be safely used in it. Experiments should decide which value to use. By default, all channels are drawn.
-   2015-10-24 Lynn Garren : larsoft v04\_28\_00
-   2015-10-22 Lynn Garren : trying to untangle the different commits
-   2015-10-22 Lynn Garren : Merge branch ‘release/v04\_27\_01’ into develop
-   2015-10-21 Tracy Usher : Merge branch ‘develop’ of ssh://cdcvs.fnal.gov/cvs/projects/lareventdisplay into develop
-   2015-10-21 Tracy Usher : Update to address reversed grading scheme for channel status - works on mac… needs look by Gianluca
-   2015-10-14 Tracy Usher : Change inequality to become consistent with new scheme


larexamples v04\_06\_03[¶](#larexamples-v04_06_03)
--------------------------------------------------

-   2015-10-28 Lynn Garren : larexamples v04\_06\_03 for larsoft v04\_29\_00


larpandora v04\_08\_03[¶](#larpandora-v04_08_03)
------------------------------------------------

-   2015-10-28 Lynn Garren : larpandora v04\_08\_03 for larsoft v04\_29\_00


larana v04\_15\_03[¶](#larana-v04_15_03)
----------------------------------------

-   2015-10-28 Lynn Garren : larana v04\_15\_03 for larsoft v04\_29\_00
-   2015-10-28 Tingjun Yang : Use ModBox mode as the default recombination correction.
-   2015-10-28 Tingjun Yang : Update parameters for dune10kt.
-   2015-10-24 Lynn Garren : larsoft v04\_28\_00
-   2015-10-23 Thomas Warburton : Adding a PE threshold for making a T0, as requested. It is defaulted to 0 so that it doesn’t effect any exisiting analyses


larreco v04\_22\_00[¶](#larreco-v04_22_00)
------------------------------------------

-   2015-10-28 Lynn Garren : larreco v04\_22\_00 for larsoft v04\_29\_00
-   2015-10-28 Lynn Garren : everything can be in the same directory
-   2015-10-28 Tingjun Yang : Code improvements following Gianluca’s suggestions.
-   2015-10-28 Tingjun Yang : Merge branch ‘develop’ of ssh://cdcvs.fnal.gov/cvs/projects/larreco into feature/dstefan\_DirOfGamma
-   2015-10-28 Bruce Baller : Add ART flag
-   2015-10-27 Tingjun Yang : Merge branch ‘develop’ of ssh://cdcvs.fnal.gov/cvs/projects/larreco into feature/dstefan\_DirOfGamma
-   2015-10-27 Robert Sulej : fix reverse order of hits and indexes, fix dx of hits around missing track parts
-   2015-10-25 Tingjun Yang : Merge branch ‘develop’ into feature/dstefan\_DirOfGamma
-   2015-10-25 Robert Sulej : fill dx values in metadata
-   2015-10-24 Tingjun Yang : Put back fEMShowerAlg
-   2015-10-24 Tingjun Yang : Merge branch ‘develop’ into feature/dstefan\_DirOfGamma
-   2015-10-24 Tingjun Yang : Comment out unproduced association.
-   2015-10-24 Tingjun Yang : Comment out unproduced association.
-   2015-10-24 Tingjun Yang : Merge branch ‘develop’ into feature/dstefan\_DirOfGamma
-   2015-10-24 Lynn Garren : larsoft v04\_28\_00
-   2015-10-23 Tingjun Yang : Merge branch ‘develop’ into feature/dstefan\_DirOfGamma
-   2015-10-23 Mike Wallbank : Fixed bug which occassionally led to no clustering in certain views
-   2015-10-23 Tingjun Yang : Merge branch ‘develop’ into feature/dstefan\_DirOfGamma
-   2015-10-23 Tingjun Yang : Remvoe unused variables.
-   2015-10-23 Mike Wallbank : Merge branch ‘develop’ of ssh://cdcvs.fnal.gov/cvs/projects/larreco into develop
-   2015-10-23 Mike Wallbank : default value for MinTrackLength parameter
-   2015-10-22 Tingjun Yang : Merge branch ‘develop’ into feature/dstefan\_DirOfGamma
-   2015-10-22 Lynn Garren : Merge branch ‘release/v04\_27\_01’ into develop
-   2015-10-22 Mike Wallbank : Improved dynamic blurring, including re-tuned default parameters
-   2015-10-22 Mike Wallbank : Updated shower finding: includes energy and dEdx calculations (need to be improved)
-   2015-10-11 Tingjun Yang : Merge branch ‘develop’ of ssh://cdcvs.fnal.gov/cvs/projects/larreco into feature/dstefan\_DirOfGamma
-   2015-10-09 Tingjun Yang : Merge branch ‘feature/wallbank\_EMShowerToMerge’ into feature/dstefan\_DirOfGamma
-   2015-10-09 Tingjun Yang : Merge branch ‘develop’ into feature/dstefan\_DirOfGamma
-   2015-10-09 Tingjun Yang : turn off FindShowerProperties
-   2015-10-08 Tingjun Yang : Merge remote-tracking branch ‘origin’ into feature/wallbank\_EMShowerToMerge
-   2015-10-08 Tingjun Yang : Merge branch ‘feature/wallbank\_EMShowerToMerge’ of ssh://cdcvs.fnal.gov/cvs/projects/larreco into feature/wallbank\_EMShowerToMerge
-   2015-10-08 Tingjun Yang : Merge branch ‘feature/wallbank\_EMShowerToMerge’ of ssh://cdcvs.fnal.gov/cvs/projects/larreco into feature/wallbank\_EMShowerToMerge
-   2015-10-08 Tingjun Yang : Merge branch ‘feature/dstefan\_DirOfGamma’ into feature/wallbank\_EMShowerToMerge
-   2015-10-08 Tingjun Yang : Update CMakeLists.txt and include more header files.
-   2015-10-07 Tingjun Yang : Merge branch ‘feature/dstefan\_DirOfGamma’ into feature/wallbank\_EMShowerToMerge
-   2015-10-07 Tingjun Yang : Merge branch ‘develop’ into feature/wallbank\_EMShowerToMerge
-   2015-10-05 Dorota Stefan : DirOfGamma moved from dunetpc


larsim v04\_14\_01[¶](#larsim-v04_14_01)
----------------------------------------

-   2015-10-28 Lynn Garren : larsim v04\_14\_01 for larsoft v04\_29\_00
-   2015-10-28 Tingjun Yang : Use ModBox recombination in simulation by default. Most experiments already use it.


larevt v04\_13\_03[¶](#larevt-v04_13_03)
----------------------------------------

-   2015-10-28 Lynn Garren : larevt v04\_13\_03 for larsoft v04\_29\_00


lardata v04\_18\_01[¶](#lardata-v04_18_01)
------------------------------------------

-   2015-10-28 Lynn Garren : lardata v04\_18\_01 for larsoft v04\_29\_00
-   2015-10-28 Gianluca Petrillo : Restoring product class name in the output after the change of default value in art dumper module
-   2015-10-24 Lynn Garren : larsoft v04\_28\_00
-   2015-10-22 Lynn Garren : Merge branch ‘develop’ of ssh://cdcvs.fnal.gov/cvs/projects/lardata into develop
-   2015-10-21 Jonathan Insler : Added new zero suppression functions for 35t to handle nonzero pedestals and ADC sticky code issue


larcore v04\_20\_00[¶](#larcore-v04_20_00)
------------------------------------------

-   2015-10-28 Lynn Garren : larcore v04\_20\_00 for larsoft v04\_29\_00
-   2015-10-27 Gianluca Petrillo : Added module dumping on screen the TPC channel ID – wire ID mapping (with test)


larbatch v01\_18\_01[¶](#larbatch-v01_18_01)
--------------------------------------------

-   2015-10-28 Lynn Garren : larbatch v01\_18\_01 for larsoft v04\_29\_00
-   2015-10-28 Lynn Garren : using noarch instead of simple
-   2015-10-27 Herbert Greenlee : Add xml options for specifying cpus, disk, and memory.


larutils v1\_04\_02[¶](#larutils-v1_04_02)
------------------------------------------

-   2015-10-28 Lynn Garren : larutils v1\_04\_02 for larsoft v04\_29\_00
-   2015-10-28 Lynn Garren : adding s21
-   2015-10-28 Lynn Garren : using noarch instead of simple
-   2015-10-23 Lynn Garren : Merge branch ‘release/v04\_28\_00’ into develop
-   2015-10-22 Herbert Greenlee : Do not add uboonedaq\_datatypes to manifest unless a version is actually specified in the uboonecode product\_deps file.
