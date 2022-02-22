# LArSoft v03_04_04 Release Notes



[list of LArSoft releases](LArSoft_release_list)  
[Download instructions](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v03_04_04/larsoft-v03_04_04.html)

## Purpose

Changes in development since v03_04_03 and new art associations.

## New features

-   Adding an art associations. See below.

# Change List

## larsoft v03_04_04

-   2014-12-02 Lynn Garren : product versions
-   2014-12-02 Lynn Garren : changes in larpandora
-   2014-12-02 Lynn Garren : larsoft v03_04_04 for larsoft v03_04_04

## lareventdisplay v03_02_07

-   2014-12-02 Lynn Garren : lareventdisplay v03_02_07 for larsoft v03_04_04

## larexamples v03_02_07

-   2014-12-02 Lynn Garren : larexamples v03_02_07 for larsoft v03_04_04

## larpandora v03_04_00

-   2014-12-02 Lynn Garren : larpandora v03_04_00 for larsoft v03_04_04
-   2014-12-02 Lynn Garren : Merge branch 'feature/blake_particleSeeds' into release/v03_04_04
-   2014-11-27 Andrew Blake : Merge branch 'feature/blake_updateForLBNE' into develop. This will remove the LBNE-specific .fcl and .xml files (which are being moved to lbnecode). I have also modified PFParticleTrackMaker to write out ART associations between tracks and hits, and to store better positions and directions in the recob::Track objects.
-   2014-11-27 Andrew Blake : Remove PandoraSettings_LBNE35t_Cosmic settings from scripts and move to lbnecode
-   2014-11-27 Andrew Blake : Remove the obsolete dependency on BackTracker service in CMakeLists
-   2014-11-27 Andrew Blake : Move LBNE .fcl files to lbnecode
-   2014-11-27 Andrew Blake : Modifying PFParticleTrackMaker Producer to write out ART associations between recob::Track and recob::Hit objects (as this seems to be the standard). Also adding directions to the trajectory points along the recob::Track objects (based on a simple linear fit, so more work to do here).
-   2014-11-22 Andrew Blake : Writing out recob::Seeds and their associations to recob::PFParticles

## larana v03_03_04

-   2014-12-03 Lynn Garren : larana v03_03_04 for larsoft v03_04_04
-   2014-12-02 Ben Carls : Checking in for Tracy Usher, applies a fix that allows the module to work on events without cosmics
-   2014-11-25 Tingjun Yang : more FindMany out of a loop, clean up code

## larreco v03_03_04

-   2014-12-02 Lynn Garren : larreco v03_03_04 for larsoft v03_04_04
-   2014-11-26 Bruce Baller : Merge branch 'feature/cctm' into develop
-   2014-11-26 Bruce Baller : CCTrackMaker tweaks
-   2014-11-25 Bruce Baller : Merge branch 'feature/cctm' into develop
-   2014-11-25 Bruce Baller : Add new algorithm to CCTrackMaker

## larsim v03_02_07

-   2014-12-02 Lynn Garren : larsim v03_02_07 for larsoft v03_04_04
-   2014-12-01 Matthew Toups : Add comments to prodsingle_buildopticallibrary.fcl in photon library build tools.
-   2014-12-01 Matthew Toups : Add comments to SubmitCommand.sh in library build tools.
-   2014-12-01 Matthew Toups : Merge head of develop with minor edits to photon library build tool commits.
-   2014-12-01 Matthew Toups : Add some comments to library build tool script and fcl file.

## larevt v03_02_07

-   2014-12-02 Lynn Garren : larevt v03_02_07 for larsoft v03_04_04

## lardata v03_04_00

-   2014-12-02 Lynn Garren : lardata v03_04_00 for larsoft v03_04_04
-   2014-12-02 Lynn Garren : Merge branch 'feature/blake_particleSeeds' into release/v03_04_04
-   2014-11-22 Andrew Blake : Adding an ART association between recob::PFParticle and recob::Seed
