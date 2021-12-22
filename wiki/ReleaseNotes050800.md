LArSoft v05\_08\_00 Release Notes(#LArSoft-v05_08_00-Release-Notes)
======================================================================

-   **Table of contents**
-   [LArSoft v05\_08\_00 Release Notes](#LArSoft-v05_08_00-Release-Notes)
    -   [Purpose](#Purpose)
    -   [New features](#New-features)
    -   [Bug fixes](#Bug-fixes)
    -   [Updated dependencies](#Updated-dependencies)
-   [Change List](#Change-List)
    -   [larsoft v05\_08\_00](#larsoft-v05_08_00)
    -   [lareventdisplay v05\_06\_02](#lareventdisplay-v05_06_02)
    -   [larexamples v05\_06\_02](#larexamples-v05_06_02)
    -   [larpandora v05\_08\_00](#larpandora-v05_08_00)
    -   [larana v05\_07\_00](#larana-v05_07_00)
    -   [larreco v05\_08\_00](#larreco-v05_08_00)
    -   [larsim v05\_08\_00](#larsim-v05_08_00)
    -   [larevt v05\_06\_02](#larevt-v05_06_02)
    -   [lardata v05\_07\_01](#lardata-v05_07_01)
    -   [larcore v05\_06\_00](#larcore-v05_06_00)
    -   [larbatch v01\_20\_08](#larbatch-v01_20_08)
    -   [larutils v1\_05\_06](#larutils-v1_05_06)

[list of LArSoft releases](LArSoft_release_list)\
[Download instructions](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v05_08_00/larsoft-v05_08_00.html)

Purpose(#Purpose)
--------------------

-   MicroBooNE production release

New features(#New-features)
------------------------------

-   larana
    -   Three changes included
        -   New modules that matches tracks to PFParticles. This is used to improve cosmic tagging making it possible to include all hits in a PFParticle to be tagged as a cosmic for any track that is matched to the PFParticle
        -   Fixes to logic errors introduced by RawDigit truncation
        -   Fixes to logic errors in Cosmic PFParticle tagging
    -   Branch (all changes in the same branch)
        -   feature/usher\_trackpfparticlematch
-   larreco
    -   Hit filtering
        -   Branch
            -   feature/eberly\_hitfiltering
    -   Seed finder (Here just for the record! No additional merging required)
        -   Changes
            -   Provides the option of allowing 2D seed finding
            -   Provides the option of applying a 2-bin average in hit finding.
        -   Branch
            -   feature\_allow2dseeds
-   larpandora
    -   Change
        -   Include proper treatment of dead wires in pattern recognition
    -   Branch
        -   feature/PrepareFor\_LArPandoraContent\_v02-07-00
    -   Update product dependencies to include LArPandoraContent v02-07-00

Bug fixes(#Bug-fixes)
------------------------

Updated dependencies(#Updated-dependencies)
----------------------------------------------

  ------------------- ------------- ------------ -------
  Product             Version       Qualifiers   Notes
  larpandoracontent   v02\_07\_00   e9:nu:r5     
  mrb                 v1\_06\_03                 
  ------------------- ------------- ------------ -------

Change List(#Change-List)
============================

larsoft v05\_08\_00(#larsoft-v05_08_00)
------------------------------------------

-   2016-04-08 Lynn Garren : larsoft v05\_08\_00 for larsoft v05\_08\_00
-   2016-04-08 Lynn Garren : update dependency database
-   2016-04-07 Lynn Garren : update product versions
-   2016-04-07 Gianluca Petrillo : RemoveMathFromGDML.py: bug fix, was using python when expected to use ROOT expression and vice versa (embarrassing…)
-   2016-04-06 Gianluca Petrillo : RemoveMathFromGDML.py: removed “native” expression evaluation based on python, since it may give “wrong” results.
-   2016-04-05 Gianluca Petrillo : RemoveMathFromGDML.py: Using ROOT to evaluate expressions
-   2016-04-05 Gianluca Petrillo : RemoveMathFromGDML.py now supports power operator ‘\^’ and mathematical functions
-   2016-04-01 Gianluca Petrillo : RemoveMathFromGDML.py v1.1: changed default behaviours on output and on parser (see change log)
-   2016-04-01 Gianluca Petrillo : Added script to remove expressions from GDML files. Run with ‘–help’ for usage instructions.

lareventdisplay v05\_06\_02(#lareventdisplay-v05_06_02)
----------------------------------------------------------

-   2016-04-08 Lynn Garren : lareventdisplay v05\_06\_02 for larsoft v05\_08\_00
-   2016-04-01 Robert Sulej : Merge branch ‘develop’ of ssh://cdcvs.fnal.gov/cvs/projects/lareventdisplay into develop
-   2016-03-29 Robert Sulej : display pma nodes if present

larexamples v05\_06\_02(#larexamples-v05_06_02)
--------------------------------------------------

-   2016-04-08 Lynn Garren : larexamples v05\_06\_02 for larsoft v05\_08\_00

larpandora v05\_08\_00(#larpandora-v05_08_00)
------------------------------------------------

-   2016-04-08 Lynn Garren : larpandora v05\_08\_00 for larsoft v05\_08\_00
-   2016-04-07 John Marshall : Increment required larpandoracontent version. Explicitly set EnableLineGaps to true in pandoramodules\_microboone.fcl. Work around include difficulties in LArPandoraInput; revisit later with next larpandoracontent release.
-   2016-04-06 John Marshall : Update PandoraSettings files to use new algorithms addressing detector gaps, see MicroBooNE docdb no. 5588.
-   2016-04-02 Andrew Blake : Fix creation of line gaps for DUNE. The code in LArPandoraInput will now correctly handle cases where wire ordinate decreases with wire number. Also add ‘EnableLineGaps’ configurable parameter to pandoramodules.fcl with a default value of ‘true’.
-   2016-04-02 Andrew Blake : Populating associations between seeds and hits in LArPandoraOutput (and adding extra code to PFParticleAnalysis module to check that it works)

larana v05\_07\_00(#larana-v05_07_00)
----------------------------------------

-   2016-04-08 Lynn Garren : larana v05\_07\_00 for larsoft v05\_08\_00
-   2016-04-07 Tingjun Yang : New constants for MCC7.
-   2016-04-07 Usher, Tracy L : Fix error in logic with respect to entering/exiting tracks. It looks like this gets the last of the “missing” xc group events (ok, to be confirmed!).
-   2016-04-07 Usher, Tracy L : Merge remote-tracking branch ‘origin/feature/usher\_trackpfparticlematch’ into develop
-   2016-03-31 Lynn Garren : larsoft v05\_07\_00
-   2016-03-31 Tingjun Yang : Put back try/catch.
-   2016-03-30 Tingjun Yang : Use the next trajectory point if the first one is outside TPC.
-   2016-03-28 Usher, Tracy L : Removed the unwanted text output
-   2016-03-28 Usher, Tracy L : updates to accommodate changes to the hit removal module and to include the track \<–\> PFParticle matching algorithm.
-   2016-03-28 Usher, Tracy L : Large changes to the module to accommodate removing hits using several input associations to match to PFParticles from a single producer. This will allow one to reject hits associated to tracks from PandoraCosmic as well as another tracking algorithm where those tracks have been matched to PFParticles through a separate module.
-   2016-03-28 Usher, Tracy L : Simplify the logic for associating cosmic tags with tracks (required reversing order in definition of assocations for tracks and tags)
-   2016-03-28 Usher, Tracy L : New module which can match tracks to PFParticles where the tracks are from a different producer than the PFParticle chain. It does this by matching hits.

larreco v05\_08\_00(#larreco-v05_08_00)
------------------------------------------

-   2016-04-08 Lynn Garren : add missing library to link list
-   2016-04-08 Lynn Garren : larreco v05\_08\_00 for larsoft v05\_08\_00
-   2016-04-07 Brandon Eberly : Fixed a typo
-   2016-04-07 Usher, Tracy L : Resolve final conflicts in merging Brandon’s updates for hit filtering with the gaushit finder module
-   2016-04-07 Usher, Tracy L : Provide ability to do 2D seeds if don’t have all three planes if option is selected
-   2016-04-07 Usher, Tracy L : Merge remote-tracking branch ‘origin/feature/usher\_allow2dseeds’ into develop
-   2016-04-07 Brandon Eberly : Updated hit filtering parameters
-   2016-04-06 Robert Sulej : following request from Erica - regular pattern of selecting hits for initial optimization
-   2016-04-04 Robert Sulej : Merge branch ‘feature/rnd\_PmaImprovements’ into develop
-   2016-04-04 Robert Sulej : Merge branch ‘feature/rnd\_PmaImprovements’ of ssh://cdcvs.fnal.gov/cvs/projects/larreco into feature/rnd\_PmaImprovements
-   2016-04-02 Brandon Eberly : New hit filtering module. Added it to GausHitFinder and turned off by default
-   2016-04-01 Robert Sulej : Merge branch ‘develop’ of ssh://cdcvs.fnal.gov/cvs/projects/larreco into develop
-   2016-03-31 Lynn Garren : larsoft v05\_07\_00
-   2016-03-31 Dorota Stefan : Merge branch ‘develop’ into feature/rnd\_PmaImprovements
-   2016-03-30 Robert Sulej : add functionality to select fraction of hits in the initial optimization of tracks, enabled now with conservative params to verify behaviour; again several code improvements
-   2016-03-30 Robert Sulej : one more fix to the kink finding; many small cleanups in all pma classes
-   2016-03-30 Bruce Baller : Comment out LogError messages.
-   2016-03-29 Robert Sulej : fix bug in optimization fn
-   2016-03-29 Robert Sulej : use track idx for all kinks on it to have the same color used in the ev.display
-   2016-03-29 Robert Sulej : add option to save pma nodes in a named collection of vertices (helps in development, off by default)
-   2016-03-25 Usher, Tracy L : Add ability (as an option which is off by default) for form candidate seeds in the event only two planes of information is available. Also, fix a couple of small bugs that would have prevented two plane operation in the event of preferring the collection plane.
-   2016-03-25 Usher, Tracy L : Adds the option (default is off) to do bin averaging before finding candidate peaks

larsim v05\_08\_00(#larsim-v05_08_00)
----------------------------------------

-   2016-04-08 Lynn Garren : larsim v05\_08\_00 for larsoft v05\_08\_00
-   2016-03-31 Lynn Garren : larsoft v05\_07\_00
-   2016-03-30 Gianluca Petrillo : Added dumpers for sim::SimChannel and sim::SimPhotons data products
-   2016-03-30 Gianluca Petrillo : DumpMCParticle: removed timestamps from output; output now uses one buffer per particle (saves memory)

larevt v05\_06\_02(#larevt-v05_06_02)
----------------------------------------

-   2016-04-08 Lynn Garren : larevt v05\_06\_02 for larsoft v05\_08\_00

lardata v05\_07\_01(#lardata-v05_07_01)
------------------------------------------

-   2016-04-08 Lynn Garren : lardata v05\_07\_01 for larsoft v05\_08\_00
-   2016-04-02 Herbert Greenlee : Add conversion rule for reading version 10 MCHit.

larcore v05\_06\_00(#larcore-v05_06_00)
------------------------------------------

larbatch v01\_20\_08(#larbatch-v01_20_08)
--------------------------------------------

larutils v1\_05\_06(#larutils-v1_05_06)
------------------------------------------
