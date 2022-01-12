LArSoft v03\_04\_04 Release Notes
======================================================================

-   **Table of contents**
-   [LArSoft v03\_04\_04 Release Notes](#LArSoft-v03_04_04-Release-Notes)
    -   [Purpose](#Purpose)
    -   [New features](#New-features)
-   [Change List](#Change-List)
    -   [larsoft v03\_04\_04](#larsoft-v03_04_04)
    -   [lareventdisplay v03\_02\_07](#lareventdisplay-v03_02_07)
    -   [larexamples v03\_02\_07](#larexamples-v03_02_07)
    -   [larpandora v03\_04\_00](#larpandora-v03_04_00)
    -   [larana v03\_03\_04](#larana-v03_03_04)
    -   [larreco v03\_03\_04](#larreco-v03_03_04)
    -   [larsim v03\_02\_07](#larsim-v03_02_07)
    -   [larevt v03\_02\_07](#larevt-v03_02_07)
    -   [lardata v03\_04\_00](#lardata-v03_04_00)

[list of LArSoft releases](LArSoft_release_list)
[Download instructions](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v03_04_04/larsoft-v03_04_04.html)

Purpose
--------------------

Changes in development since v03\_04\_03 and new art associations.

New features
------------------------------

-   Adding an art associations. See below.

Change List
============================

larsoft v03\_04\_04
------------------------------------------

-   2014-12-02 Lynn Garren : product versions
-   2014-12-02 Lynn Garren : changes in larpandora
-   2014-12-02 Lynn Garren : larsoft v03\_04\_04 for larsoft v03\_04\_04

lareventdisplay v03\_02\_07
----------------------------------------------------------

-   2014-12-02 Lynn Garren : lareventdisplay v03\_02\_07 for larsoft v03\_04\_04

larexamples v03\_02\_07
--------------------------------------------------

-   2014-12-02 Lynn Garren : larexamples v03\_02\_07 for larsoft v03\_04\_04

larpandora v03\_04\_00
------------------------------------------------

-   2014-12-02 Lynn Garren : larpandora v03\_04\_00 for larsoft v03\_04\_04
-   2014-12-02 Lynn Garren : Merge branch ‘feature/blake\_particleSeeds’ into release/v03\_04\_04
-   2014-11-27 Andrew Blake : Merge branch ‘feature/blake\_updateForLBNE’ into develop. This will remove the LBNE-specific .fcl and .xml files (which are being moved to lbnecode). I have also modified PFParticleTrackMaker to write out ART associations between tracks and hits, and to store better positions and directions in the recob::Track objects.
-   2014-11-27 Andrew Blake : Remove PandoraSettings\_LBNE35t\_Cosmic settings from scripts and move to lbnecode
-   2014-11-27 Andrew Blake : Remove the obsolete dependency on BackTracker service in CMakeLists
-   2014-11-27 Andrew Blake : Move LBNE .fcl files to lbnecode
-   2014-11-27 Andrew Blake : Modifying PFParticleTrackMaker Producer to write out ART associations between recob::Track and recob::Hit objects (as this seems to be the standard). Also adding directions to the trajectory points along the recob::Track objects (based on a simple linear fit, so more work to do here).
-   2014-11-22 Andrew Blake : Writing out recob::Seeds and their associations to recob::PFParticles

larana v03\_03\_04
----------------------------------------

-   2014-12-03 Lynn Garren : larana v03\_03\_04 for larsoft v03\_04\_04
-   2014-12-02 Ben Carls : Checking in for Tracy Usher, applies a fix that allows the module to work on events without cosmics
-   2014-11-25 Tingjun Yang : more FindMany out of a loop, clean up code

larreco v03\_03\_04
------------------------------------------

-   2014-12-02 Lynn Garren : larreco v03\_03\_04 for larsoft v03\_04\_04
-   2014-11-26 Bruce Baller : Merge branch ‘feature/cctm’ into develop
-   2014-11-26 Bruce Baller : CCTrackMaker tweaks
-   2014-11-25 Bruce Baller : Merge branch ‘feature/cctm’ into develop
-   2014-11-25 Bruce Baller : Add new algorithm to CCTrackMaker

larsim v03\_02\_07
----------------------------------------

-   2014-12-02 Lynn Garren : larsim v03\_02\_07 for larsoft v03\_04\_04
-   2014-12-01 Matthew Toups : Add comments to prodsingle\_buildopticallibrary.fcl in photon library build tools.
-   2014-12-01 Matthew Toups : Add comments to SubmitCommand.sh in library build tools.
-   2014-12-01 Matthew Toups : Merge head of develop with minor edits to photon library build tool commits.
-   2014-12-01 Matthew Toups : Add some comments to library build tool script and fcl file.

larevt v03\_02\_07
----------------------------------------

-   2014-12-02 Lynn Garren : larevt v03\_02\_07 for larsoft v03\_04\_04

lardata v03\_04\_00
------------------------------------------

-   2014-12-02 Lynn Garren : lardata v03\_04\_00 for larsoft v03\_04\_04
-   2014-12-02 Lynn Garren : Merge branch ‘feature/blake\_particleSeeds’ into release/v03\_04\_04
-   2014-11-22 Andrew Blake : Adding an ART association between recob::PFParticle and recob::Seed
