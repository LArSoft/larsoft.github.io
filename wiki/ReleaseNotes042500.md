LArSoft v04\_25\_00 Release Notes
======================================================================

-   **Table of contents**
-   [LArSoft v04\_25\_00 Release Notes](#LArSoft-v04_25_00-Release-Notes)
    -   [Purpose](#Purpose)
    -   [New features](#New-features)
    -   [Bug fixes](#Bug-fixes)
    -   [Known issues](#Known-issues)
    -   [Updated dependencies](#Updated-dependencies)
-   [Change List](#Change-List)
    -   [larsoft v04\_25\_00](#larsoft-v04_25_00)
    -   [lareventdisplay v04\_09\_01](#lareventdisplay-v04_09_01)
    -   [larexamples v04\_05\_06](#larexamples-v04_05_06)
    -   [larpandora v04\_07\_00](#larpandora-v04_07_00)
    -   [larana v04\_12\_05](#larana-v04_12_05)
    -   [larreco v04\_18\_00](#larreco-v04_18_00)
    -   [larsim v04\_11\_01](#larsim-v04_11_01)
    -   [larevt v04\_11\_00](#larevt-v04_11_00)
    -   [lardata v04\_14\_02](#lardata-v04_14_02)
    -   [larcore v04\_17\_00](#larcore-v04_17_00)
    -   [larbatch v01\_16\_00](#larbatch-v01_16_00)
    -   [larutils v1\_03\_02](#larutils-v1_03_02)

[list of LArSoft releases](LArSoft_release_list)\
[Download instructions](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v04_25_00/larsoft-v04_25_00.html)

Purpose
--------------------

-   Changes to develop since v04\_24\_00
-   New features listed below

New features
------------------------------

-   WireCell
    -   larreco feature/tjyang\_wirecellmerge
    -   We (Chao, Xin and Tingjun) have added a new package to larreco named WireCell. Currently there are two modules. One module merges the wirecell reconstructed information with larsoft root files. The other module converts larsoft files to a data format that can be viewed by the BEE event display.

-   Pandora
    -   is now distributed as two packages instead of one
        -   Pandora
        -   LarPandoraContent
    -   dunetpc feature/PrepareForPandora\_v02-03-00
    -   larpandora feature/PrepareForPandora\_v02-02-00

-   Channel Status service changes
    -   [presentation](https://indico.fnal.gov/getFile.py/access?contribId=7&resId=0&materialId=slides&confId=10465)
    -   larevt feature/Issue1083
    -   lareventdisplay feature/eberly\_channelfilter
    -   uboonecode feature/eberly\_channelfilter

Bug fixes
------------------------

Known issues
------------------------------

Although all available tests passed, there are still some issues with the [Channel Status service changes](Breaking_Changes#ChannelStatus-readiness)

Updated dependencies
----------------------------------------------

  ------------------- ------------- ----------- ----------------------------------------
  Product             Version       Qualifier   Notes
  cmake               v3\_3\_2                  
  pandora             v02\_03\_00   e7:nu       very stable
  larpandoracontent   v02\_03\_00   e7:nu       depends on pandora, may change rapidly
  ------------------- ------------- ----------- ----------------------------------------

Change List
============================

larsoft v04\_25\_00
------------------------------------------

-   2015-10-01 Lynn Garren : larsoft v04\_25\_00 for larsoft v04\_25\_00
-   2015-10-01 Lynn Garren : update dependency database

lareventdisplay v04\_09\_01
----------------------------------------------------------

-   2015-10-01 Lynn Garren : lareventdisplay v04\_09\_01 for larsoft v04\_25\_00
-   2015-09-30 Brandon Eberly : merge with develop
-   2015-08-29 Brandon Eberly : Update to work with service-based ChannelFilter

larexamples v04\_05\_06
--------------------------------------------------

-   2015-10-01 Lynn Garren : larexamples v04\_05\_06 for larsoft v04\_25\_00

larpandora v04\_07\_00
------------------------------------------------

-   2015-10-01 Lynn Garren : larpandora v04\_07\_00 for larsoft v04\_25\_00
-   2015-09-30 Lynn Garren : using larpandoracontent which depends on pandora
-   2015-09-30 Lynn Garren : Merge branch ‘feature/PrepareForPandora\_v02-02-00’ into work
-   2015-09-25 John Marshall : Updated settings for use with Pandora v02-02-00, using new algorithms in LArPandoraContent v02-02-00. Options for reconstructing entire events as a single neutrino, or slicing-up events into separate interactions. Adjusted minimum package version for Pandora.

larana v04\_12\_05
----------------------------------------

-   2015-10-01 Lynn Garren : larana v04\_12\_05 for larsoft v04\_25\_00

larreco v04\_18\_00
------------------------------------------

-   2015-10-01 Lynn Garren : larreco v04\_18\_00 for larsoft v04\_25\_00
-   2015-10-01 Tingjun Yang : Protect against case where local index does not make sense.
-   2015-09-30 Lynn Garren : make sure the local variables are properly initialized
-   2015-09-30 Mike Wallbank : Improved the global wire finding so it functions differently for induction and collection planes to fix problems arising in the collection views using the old method
-   2015-09-30 Mike Wallbank : fix bug (again) which led to only hits in odd numbered TPCs being clustered
-   2015-09-30 Mike Wallbank : updated parameters for blurred
-   2015-09-30 Mike Wallbank : updates to blurred to ensure that tracking isn’t required for the successful running of the module
-   2015-09-30 Mike Wallbank : MW: updates to clustering – option to only run over shower-like objects determined from pmtrack
-   2015-09-30 Mike Wallbank : MW,Blurred: changed from PCA to LS method to determine particle directionality
-   2015-09-25 Mike Wallbank : fixed bug which lead to only hits in even numbered TPCs being clustered
-   2015-09-24 Lynn Garren : Merge branch ‘feature/tjyang\_wirecellmerge’ into develop
-   2015-09-14 Tingjun Yang : add fcl for microboone
-   2015-09-14 Tingjun Yang : Merge branch ‘develop’ into feature/tjyang\_wirecellmerge
-   2015-09-14 Chao Zhang : add celltree module
-   2015-09-06 Tingjun Yang : Update fcl file.
-   2015-09-06 Tingjun Yang : Use cryostat and tpc numbers in the ttree.
-   2015-09-05 Tingjun Yang : Add module to merge wirecell reconstruction with larsoft root file.

larsim v04\_11\_01
----------------------------------------

-   2015-10-01 Lynn Garren : larsim v04\_11\_01 for larsoft v04\_25\_00
-   2015-09-28 Thomas Warburton : Adding protections for if input file is incorrectly specified. Before events were hanging if the file was not found. Also adding an example generaion script for MUSUN.
-   2015-09-25 Thomas Warburton : Also pushed tilda files, so removing them. Sorry.

larevt v04\_11\_00
----------------------------------------

-   2015-10-01 Lynn Garren : larevt v04\_11\_00 for larsoft v04\_25\_00
-   2015-09-30 Brandon Eberly : Implement a default IsGood(), fix noisy channel update bug
-   2015-09-27 Brandon Eberly : Merge branch ‘develop’ into feature/Issue1083
-   2015-09-27 Brandon Eberly : ChannelFilter –\> ChannelStatus
-   2015-09-11 Brandon Eberly : Fixed bug related to setting channel number of statuses returned when using defaults
-   2015-08-30 Brandon Eberly : Add better comments/documentation, remove unnecessary class members
-   2015-08-30 Brandon Eberly : Remove event-by-event noise calculation from standard larsoft SIOV implementation of ChannelFilter service
-   2015-08-29 Brandon Eberly : Various fixes to improve functionality on event displays
-   2015-08-29 Brandon Eberly : Merge branch ‘feature/Issue1083’ of ssh://cdcvs.fnal.gov/cvs/projects/larevt into feature/Issue1083
-   2015-08-29 Brandon Eberly : merged with develop
-   2015-08-29 Brandon Eberly : Merge branch ‘feature/Issue1083’ of ssh://cdcvs.fnal.gov/cvs/projects/larevt into feature/Issue1083
-   2015-08-29 Brandon Eberly : Use DB interface in ChannelFilter
-   2015-08-27 Brandon Eberly : Added spurious noise calculation to channel filter service
-   2015-08-26 Brandon Eberly : Working commit: implementing Tracy’s spurious noise detection algorithm into channel filter service
-   2015-08-26 Brandon Eberly : Updated fcl configuration
-   2015-08-26 Brandon Eberly : Add ability to get status integer from interface. Add LOWNOISE status to SIOV implementation. Create default fcl configuration
-   2015-08-25 Brandon Eberly : fData no longer needs to be mutable
-   2015-08-25 Brandon Eberly : New interfaces and single-IOV implementations for ChannelFilter info from database
-   2015-08-25 Brandon Eberly : Remove try/catch block from DetPedestalRetrievalAlg. Use typedefs for channel ID and timestamp
-   2015-08-19 Brandon Eberly : Merge branch ‘develop’ into feature/Issue1083
-   2015-07-20 Gianluca Petrillo : ChannelFilterService interface implemented. An implementation “SimpleChannelFilter” of that interface is provided, that drinks information from FHiCL file. That implementation has unit test.
-   2015-07-20 Gianluca Petrillo : Merge branch ‘develop’ into feature/Issue1083
-   2014-11-25 Gianluca Petrillo : Added a function filtering out bad digits from a list
-   2014-11-25 Gianluca Petrillo : Issue [\#1083](/redmine/issues/1083 "Bug: filter::ChannelFilter should be made into a service (Closed)"): ChannelFilter moved into a service

lardata v04\_14\_02
------------------------------------------

-   2015-10-01 Lynn Garren : lardata v04\_14\_02 for larsoft v04\_25\_00
-   2015-10-01 Thomas Warburton : Made a mistake with adding the variable, which is now fixed.
-   2015-10-01 Thomas Warburton : Adding TriggerConfidence to T0 object, and adding descriptions for each member

larcore v04\_17\_00
------------------------------------------

larbatch v01\_16\_00
--------------------------------------------

-   2015-10-01 Lynn Garren : larbatch v01\_16\_00 for larsoft v04\_25\_00
-   2015-10-01 Herbert Greenlee : Replace more subprocess.check\_output calls with subprocess.Popen.
-   2015-10-01 Herbert Greenlee : Don’t pass sys.stdout and sys.stderr to subprocess.
-   2015-10-01 Herbert Greenlee : Move method for initializing SAMWebClient object out of project.py and into project\_utilities.py (where code other than project.py can access it). Move call to method for restricting sam dataset definitions to specivied run, subruns out of project.py into stagedef.py.
-   2015-10-01 Herbert Greenlee : Update parallel job submission some more.
-   2015-09-30 Herbert Greenlee : Modify project.py and associated scripts to handle input from sam with pubs.
-   2015-09-30 Herbert Greenlee : Modify batch worker scripts to handle dynamic subruns.
-   2015-09-30 Herbert Greenlee : Add script subruns.py to extract runs and subruns from artroot file.

larutils v1\_03\_02
------------------------------------------
