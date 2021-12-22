LArSoft v04\_23\_00 Release Notes
======================================================================

-   **Table of contents**
-   [LArSoft v04\_23\_00 Release Notes](#LArSoft-v04_23_00-Release-Notes)
    -   [Purpose](#Purpose)
    -   [New features](#New-features)
    -   [Bug fixes](#Bug-fixes)
    -   [Updated dependencies](#Updated-dependencies)
-   [Change List](#Change-List)
    -   [larsoft v04\_23\_00](#larsoft-v04_23_00)
    -   [lareventdisplay v04\_08\_01](#lareventdisplay-v04_08_01)
    -   [larexamples v04\_05\_04](#larexamples-v04_05_04)
    -   [larpandora v04\_06\_01](#larpandora-v04_06_01)
    -   [larana v04\_12\_03](#larana-v04_12_03)
    -   [larreco v04\_17\_01](#larreco-v04_17_01)
    -   [larsim v04\_10\_00](#larsim-v04_10_00)
    -   [larevt v04\_10\_01](#larevt-v04_10_01)
    -   [lardata v04\_14\_00](#lardata-v04_14_00)
    -   [larcore v04\_17\_00](#larcore-v04_17_00)
    -   [larbatch v01\_15\_00](#larbatch-v01_15_00)
    -   [larutils v1\_03\_01](#larutils-v1_03_01)

[list of LArSoft releases](LArSoft_release_list)\
[Download instructions](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v04_23_00/larsoft-v04_23_00.html)

Purpose
--------------------

-   changes in development since v04\_22\_00
-   features

New features
------------------------------

-   larcore feature/gp\_FixGeometryReload
-   lardata and larsim feature/zennamo\_MCShowerdEdx

Bug fixes
------------------------

Updated dependencies
----------------------------------------------

Change List
============================

larsoft v04\_23\_00
------------------------------------------

-   2015-09-16 Lynn Garren : because the nu distribution has a different pandora, we start with artbase
-   2015-09-16 Lynn Garren : larsoft v04\_23\_00 for larsoft v04\_23\_00
-   2015-09-16 Lynn Garren : update product versions

lareventdisplay v04\_08\_01
----------------------------------------------------------

-   2015-09-16 Lynn Garren : lareventdisplay v04\_08\_01 for larsoft v04\_23\_00

larexamples v04\_05\_04
--------------------------------------------------

-   2015-09-16 Lynn Garren : cetbuildtools v4\_13\_00 needs an updated setup\_for\_development
-   2015-09-16 Lynn Garren : larexamples v04\_05\_04 for larsoft v04\_23\_00

larpandora v04\_06\_01
------------------------------------------------

-   2015-09-16 Lynn Garren : larpandora v04\_06\_01 for larsoft v04\_23\_00

larana v04\_12\_03
----------------------------------------

-   2015-09-16 Lynn Garren : larana v04\_12\_03 for larsoft v04\_23\_00
-   2015-09-11 drinkingkazu : Use more optimal indexing than just using OpDetWaveform’s time which could be many, many micro-seconds… this probably used to be a sample number which is limited to some finite integer within a frame –kazu

larreco v04\_17\_01
------------------------------------------

-   2015-09-16 Lynn Garren : larreco v04\_17\_01 for larsoft v04\_23\_00
-   2015-09-16 Herbert Greenlee : Merge branch ‘develop’ of ssh://cdcvs.fnal.gov/cvs/projects/larreco into develop
-   2015-09-16 Herbert Greenlee : Don’t throw ProductNotFound exception of no MCTracks are found.
-   2015-09-15 Mike Wallbank : Updated parameters for the MergeClusters algorithm
-   2015-09-15 Mike Wallbank : Improvements to cluster algorithm; rewrite of the cluster merging algorithm

larsim v04\_10\_00
----------------------------------------

-   2015-09-16 Lynn Garren : cetbuildtools v4\_13\_00 needs an updated setup\_for\_development
-   2015-09-16 Lynn Garren : larsim v04\_10\_00 for larsoft v04\_23\_00
-   2015-09-16 Lynn Garren : Merge branch ‘feature/zennamo\_MCShowerdEdx’ into release/v04\_23\_00
-   2015-09-09 Joseph Zennamo : Clean up after last commit
-   2015-09-09 Joseph Zennamo : Adding dQdx to MCShower and fixing PlaneCharge
-   2015-08-24 Joseph Zennamo : Merge remote-tracking branch ‘origin/develop’ into feature/zennamo\_MCShowerdEdx
-   2015-07-14 Joseph Zennamo : Filling MCShower radial dEdx and the MCShower direction from the inital energy deposits
-   2015-07-09 Joseph Zennamo : Filling MCShower dEdx, using a signed distance to start point plane. Includes extra iteration through Shower Daughters.

larevt v04\_10\_01
----------------------------------------

-   2015-09-16 Lynn Garren : cetbuildtools v4\_13\_00 needs an updated setup\_for\_development
-   2015-09-16 Lynn Garren : larevt v04\_10\_01 for larsoft v04\_23\_00

lardata v04\_14\_00
------------------------------------------

-   2015-09-16 Lynn Garren : cetbuildtools v4\_13\_00 needs an updated setup\_for\_development
-   2015-09-16 Lynn Garren : lardata v04\_14\_00 for larsoft v04\_23\_00
-   2015-09-16 Lynn Garren : Merge branch ‘feature/zennamo\_MCShowerdEdx’ into release/v04\_23\_00
-   2015-09-15 Gianluca Petrillo : Revisited sim::MCShower: - removed virtual member call from constructor - replaced empty destructor with a “default” one - updated include paths to LArSoft standards - added explicit header includes for stuff we do use - replaced error messages with exceptions - removed references from simple type function arguments - removed constantness from simple type function arguments - added move-type setters for vector data - converted a few comments to Doxygen format - removed “ifdef” protection from implementation file - fixed two range check bugs Issue still remaining: MCShower::Charge() and MCShower::dQdx() still perform range checking, that should instead be delegated to the caller.
-   2015-09-15 Gianluca Petrillo : Merge remote-tracking branch ‘origin/develop’ into feature/zennamo\_MCShowerdEdx
-   2015-09-09 Jason St.John : Add default values to getter & (private) setter functions GetUBChannelMap, GetUBChannelReverseMap, and LoadUBChannelMap in DatabaseUtil. Correct indentation. Remove debugging output.
-   2015-09-09 Joseph Zennamo : Adding dQdx
-   2015-09-08 Jason St.John : Toward LoadUBChannelMap( int data\_taking\_timestamp, int swizzling\_timestamp)
-   2015-09-08 Jason St.John : Prepare to pass data-taking and swizzling times as long integers.
-   2015-09-05 Jason St.John : Useful comments for the more obscure lines.
-   2015-09-05 Jason St.John : Parse get\_map() results correctly into crate/slot/FEMch/Larsoft-channel-number. Introduce handy string splitting.
-   2015-09-02 Jason St. John : Sync with v04\_13\_00
-   2015-09-01 Jason St. John : Fix typo in db call.
-   2015-08-25 Jason St. John : Switch away from hard-coded quaery to new database function get\_map(). Using default (now) values for data-taking and data-swizzling timestamp arguments.
-   2015-08-25 Jason St. John : Switch away from hard-coded quaery to new database function get\_map(). Using default (now) values for data-taking and data-swizzling timestamp arguments.
-   2015-08-24 Joseph Zennamo : Merge branch ‘feature/zennamo\_MCShowerdEdx’ of ssh://cdcvs.fnal.gov/cvs/projects/lardata into feature/zennamo\_MCShowerdEdx
-   2015-08-24 Joseph Zennamo : Adding dEdx getters
-   2015-08-24 Joseph Zennamo : Merge remote-tracking branch ‘origin/develop’ into feature/zennamo\_MCShowerdEdx
-   2015-07-27 Joseph Zennamo : Merge remote-tracking branch ‘origin/develop’ into feature/zennamo\_MCShowerdEdx
-   2015-07-14 Joseph Zennamo : Adding in Radial dE/dx and direction of the start of the shower
-   2015-07-06 Joseph Zennamo : added dEdx variable to MCShowers, need to fill it in Larsim
-   2015-07-06 Joseph Zennamo : Merge branch ‘master’ of ssh://cdcvs.fnal.gov/cvs/projects/lardata into feature/zennamo\_MCShowerdEdx
-   2015-07-06 Joseph Zennamo : Changed MCShower to include dEdx variable for filling

larcore v04\_17\_00
------------------------------------------

-   2015-09-16 Lynn Garren : cetbuildtools v4\_13\_00 needs an updated setup\_for\_development
-   2015-09-16 Lynn Garren : larcore v04\_17\_00 for larsoft v04\_23\_00
-   2015-09-10 Gianluca Petrillo : Workaround for geometry reloading bug: GDML was not really reloaded. the bug was introduced with the AuxDetGeometry service hack.
-   2015-09-10 Gianluca Petrillo : Reimplemented TPCGeo::Plane(geo::View) to provide some check on the argument. Replaced a static variable with a member one. Static variables are trouble.

larbatch v01\_15\_00
--------------------------------------------

-   2015-09-16 Lynn Garren : larbatch v01\_15\_00 for larsoft v04\_23\_00
-   2015-09-14 Herbert Greenlee : Modify upload function to use symbolic links where appropriate.
-   2015-09-14 Herbert Greenlee : Add “shorten” action in output menu.

larutils v1\_03\_01
------------------------------------------
