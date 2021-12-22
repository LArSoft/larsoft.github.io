LArSoft v04\_35\_00 Release Notes
======================================================================

-   **Table of contents**
-   [LArSoft v04\_35\_00 Release Notes](#LArSoft-v04_35_00-Release-Notes)
    -   [Purpose](#Purpose)
    -   [New features](#New-features)
    -   [Bug fixes](#Bug-fixes)
    -   [Updated dependencies](#Updated-dependencies)
-   [Change List](#Change-List)
    -   [larsoft v04\_35\_00](#larsoft-v04_35_00)
    -   [lareventdisplay v04\_14\_02](#lareventdisplay-v04_14_02)
    -   [larexamples v04\_06\_13](#larexamples-v04_06_13)
    -   [larpandora v04\_09\_04](#larpandora-v04_09_04)
    -   [larana v04\_17\_01](#larana-v04_17_01)
    -   [larreco v04\_29\_00](#larreco-v04_29_00)
    -   [larsim v04\_20\_00](#larsim-v04_20_00)
    -   [larevt v04\_14\_03](#larevt-v04_14_03)
    -   [lardata v04\_22\_00](#lardata-v04_22_00)
    -   [larcore v04\_26\_00](#larcore-v04_26_00)
    -   [larbatch v01\_20\_03](#larbatch-v01_20_03)
    -   [larutils v1\_04\_08](#larutils-v1_04_08)

[list of LArSoft releases](LArSoft_release_list)\
[Download instructions](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v04_35_00/larsoft-v04_35_00.html)

Purpose
--------------------

-   use art v1\_17\_07
-   changes to develop since v04\_35\_00
-   requested features

New features
------------------------------

-   lardata feature/warburton\_ExternalTrigger
-   larsim feature/mibass\_GenInTimeFilter
-   larsim feature/wketchum\_ParticleTimeFilter
-   larsim feature/mibass\_GenInTimeFilter (see [\#11512](/redmine/issues/11512 "Feature: Include mibass_GenInTimeFilter in next larsim release (Closed)"))
-   larreco feature/rsulej\_PmaVertexingWork

Bug fixes
------------------------

Updated dependencies
----------------------------------------------

  --------------- ------------ ------------ -------------------------------------------------------------------------
  Product         Version      Qualifiers   Notes
  art             v1\_17\_07   e9:nu        [Release Notes 1.17.07](/redmine/projects/art/wiki/Release_Notes_11707)
  artdaq\_core    v1\_04\_28   e9:nu:s30    
  ifdh\_art       v1\_14\_07   e9:nu:s28    
  nutools         v1\_22\_00   e9           
  artextensions   v1\_02\_07   e9:nu:s28    
  cetbuildtools   v4\_18\_02                
  --------------- ------------ ------------ -------------------------------------------------------------------------

Change List
============================

larsoft v04\_35\_00
------------------------------------------

-   2016-01-28 Lynn Garren : larsoft v04\_35\_00 for larsoft v04\_35\_00
-   2016-01-28 Lynn Garren : using nutools v1\_22\_00

lareventdisplay v04\_14\_02
----------------------------------------------------------

-   2016-01-28 Lynn Garren : lareventdisplay v04\_14\_02 for larsoft v04\_35\_00
-   2016-01-24 Tingjun Yang : Add options to display flash in a time window and above a PE threshold.

larexamples v04\_06\_13
--------------------------------------------------

-   2016-01-28 Lynn Garren : larexamples v04\_06\_13 for larsoft v04\_35\_00

larpandora v04\_09\_04
------------------------------------------------

-   2016-01-28 Lynn Garren : larpandora v04\_09\_04 for larsoft v04\_35\_00
-   2016-01-25 Andrew Blake : Adjust “PandoraSettings\_Write.xml” to write out LAr-specific variables. Also, add an extra monitoring variable to LArPandoraParticleCreator module to assist in debugging reconstruction of multiple drift volumes

larana v04\_17\_01
----------------------------------------

-   2016-01-28 Lynn Garren : larana v04\_17\_01 for larsoft v04\_35\_00
-   2016-01-26 Usher, Tracy L : Rework determination of end ticks for CR rejection - old method was essentially not working correctly for 70 kV running in MicroBooNE
-   2016-01-23 Alex Himmel : Remove a debugging line left in accidentally.

larreco v04\_29\_00
------------------------------------------

-   2016-01-28 Lynn Garren : larreco v04\_29\_00 for larsoft v04\_35\_00
-   2016-01-25 Robert Sulej : Merge branch ‘develop’ into feature/rsulej\_PmaVertexingWork
-   2016-01-22 Robert Sulej : add TrkCandidateColl class to collect all manipulations on trk-vertex in one place
-   2016-01-22 Robert Sulej : find directions of tracks in tree by dQdx
-   2016-01-22 Robert Sulej : edit comments for parameters
-   2016-01-22 Robert Sulej : add option to skip pdg or process only selected pdg when using pfparticles as input
-   2016-01-21 Robert Sulej : add pdg lists to select or skip when tracking
-   2016-01-21 Robert Sulej : fix track id’s when recovering from backup
-   2016-01-21 Robert Sulej : can initialize from hits in many tpcs
-   2016-01-21 Robert Sulej : protect track initialization from using hits from many tpcs
-   2016-01-19 Robert Sulej : Merge branch ‘develop’ into feature/rsulej\_PmaVertexingWork
-   2016-01-19 Robert Sulej : Merge branch ‘feature/rsulej\_PmaVertexingWork’ of ssh://cdcvs.fnal.gov/cvs/projects/larreco into feature/rsulej\_PmaVertexingWork
-   2016-01-19 Robert Sulej : more reasonable stitching
-   2016-01-09 Robert Sulej : Merge branch ‘feature/rsulej\_PmaVertexingWork’ of ssh://cdcvs.fnal.gov/cvs/projects/larreco into feature/rsulej\_PmaVertexingWork
-   2016-01-09 Robert Sulej : Merge branch ‘develop’ into feature/rsulej\_PmaVertexingWork
-   2016-01-09 Robert Sulej : improve merging within a tpc
-   2016-01-08 Robert Sulej : catch on matrix singularity
-   2016-01-06 Robert Sulej : bit more robust selection of primary track, and fix vtx-pfp assn
-   2016-01-06 Robert Sulej : first, simple selection of root (or primary) in the tree of tracks
-   2016-01-06 Robert Sulej : debugging done, backup tracks seem ok, todo nice selection of primary particle in the tree
-   2016-01-05 Robert Sulej : add recovery from wrong vtx result
-   2016-01-04 Robert Sulej : prepare to output trk-vtx tree made with PMA as PFParticles

larsim v04\_20\_00
----------------------------------------

-   2016-01-28 Lynn Garren : larsim v04\_20\_00 for larsoft v04\_35\_00
-   2016-01-28 Lynn Garren : Merge branch ‘feature/mibass\_GenInTimeFilter’ into release/v04\_35\_00
-   2016-01-27 Matthew Bass : Change IFDH usage to not call findMatchingFiles when no \* is used in filename.
-   2016-01-27 Matthew Bass : Adjust timing of particles to add randomness between adjacent grid positions
-   2016-01-26 Wesley Ketchum : Merge branch ‘develop’ of ssh://cdcvs.fnal.gov/cvs/projects/larsim into feature/wketchum\_ParticleTimeFilter
-   2016-01-25 Matthew Bass : New filter to requre an event have a trajectory through the cryostat within a specified time window.
-   2016-01-19 Wesley Ketchum : store an array of summed energies
-   2016-01-19 Wesley Ketchum : add in a new filter for events based on simulated photon times

larevt v04\_14\_03
----------------------------------------

-   2016-01-28 Lynn Garren : larevt v04\_14\_03 for larsoft v04\_35\_00

lardata v04\_22\_00
------------------------------------------

-   2016-01-29 Lynn Garren : updated dictionary
-   2016-01-29 Lynn Garren : make it portable
-   2016-01-28 Lynn Garren : lardata v04\_22\_00 for larsoft v04\_35\_00
-   2016-01-26 Thomas Warburton : Changing back to int64 for greater flexibility and also introducing a typedef.
-   2016-01-25 Thomas Warburton : Changing from int64\_t to uint64\_t
-   2016-01-25 Thomas Warburton : Changing the TrigTime from an unsigned int to an int64\_t to accomodate a 64 bit timestamps being stored there.

larcore v04\_26\_00
------------------------------------------

-   2016-01-28 Lynn Garren : larcore v04\_26\_00 for larsoft v04\_35\_00

larbatch v01\_20\_03
--------------------------------------------

-   2016-01-28 Lynn Garren : larbatch v01\_20\_03 for larsoft v04\_35\_00
-   2016-01-28 Lynn Garren : larbatch v01\_20\_03 for larsoft v04\_35\_00
-   2016-01-28 Herbert Greenlee : Change voms-proxy-init command used with certificates.

larutils v1\_04\_08
------------------------------------------

-   2016-01-28 Lynn Garren : fix typo
-   2016-01-28 Lynn Garren : larutils v1\_04\_08 for larsoft v04\_35\_00
-   2016-01-28 Lynn Garren : add s30
