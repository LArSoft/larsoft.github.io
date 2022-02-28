# LArSoft v03_03_01 Release Notes



[list of LArSoft releases](LArSoft_release_list)  
[Download instructions](https://scisoft.fnal.gov/scisoft/projects/larsoft/v03_03_01/larsoft-v03_03_01.html)

## Purpose

Include changes in development since v03_03_00.

## New features

## Bug fixes

## Updated dependencies

The head of develop for all larsoft packages now uses cetbuildtools v4_03_00, which has some infrastructure improvements to help support the CI system.

# Change List

## larsoft v03_03_01

-   2014-10-21 Lynn Garren : use cetbuildtools v4_03_00
-   2014-10-21 Lynn Garren : release list for larsoft v03_03_01
-   2014-10-21 Lynn Garren : larsoft v03_03_01
-   2014-10-21 Lynn Garren : new header RecoBase/PFParticle.h

## lareventdisplay v03_02_01

## larexamples v03_02_01

## larpandora v03_03_00

## larana v03_02_02

-   2014-10-21 Lynn Garren : use cetbuildtools v4_03_00
-   2014-10-21 Lynn Garren : larana v03_02_02 for larsoft v03_03_01
-   2014-10-20 Marc Mengel : test trigger BuildIt
-   2014-10-20 Wesley Ketchum : add in saturation point for opdet in hypothesis, and put in some info on start/end of track into flashhypothesisana trees
-   2014-10-17 Wesley Ketchum : Merge branch 'feature/wketchum_CosmicTagWork' into develop
-   2014-10-17 Wesley Ketchum : add in a similar hypothesis comparison module for looking at mc truth
-   2014-10-17 Wesley Ketchum : Merge branch 'feature/wketchum_CosmicTagWork' into develop
-   2014-10-17 Wesley Ketchum : put in a cut to ignore optical detectors with PEs below some threshold
-   2014-10-17 Wesley Ketchum : fix bug in chi2 calculation
-   2014-10-16 Wesley Ketchum : add in a chi2 calculation
-   2014-10-16 Wesley Ketchum : update the tree names
-   2014-10-16 Wesley Ketchum : finish up a comparison struct, and fix a fcl typo
-   2014-10-16 Wesley Ketchum : Merge branch 'develop' into feature/wketchum_CosmicTagWork
-   2014-10-16 Wesley Ketchum : Merge remote-tracking branch 'origin/feature/usher_crhitremoval' into develop
-   2014-10-16 Wesley Ketchum : add in more for FlashHypothesisAna
-   2014-10-14 Wesley Ketchum : starting some work for a FlashHypothesis Ana module, to be used standalone/for testing flash and track matching
-   2014-09-30 Tracy Usher : Add references to new PFParticle tagger and crhit removal
-   2014-09-30 Tracy Usher : Fix small bug for out of spill associations
-   2014-09-30 Tracy Usher : Adding a module to perform CR tagging driven from PFParticles
-   2014-09-30 Tracy Usher : Adding a module to remove recob::hits based on PFParticle associations to CosmicTag CR scores

## larreco v03_02_02

-   2014-10-21 Lynn Garren : use cetbuildtools v4_03_00
-   2014-10-21 Lynn Garren : larreco v03_02_02 for larsoft v03_03_01
-   2014-10-21 Lynn Garren : DumpTracks needs to link against root
-   2014-10-21 Gianluca Petrillo : ClusterPCA module: moved FindManyP query out of loop (issue \#7059); also removed dependency on Geometry service and changed constantness of some elements.
-   2014-09-24 Gianluca Petrillo : Added missing headers
-   2014-09-19 Gianluca Petrillo : Fixed includes of FindOne/FindMany headers
-   2014-10-21 Gianluca Petrillo : Merge branch 'feature/CosmicTrackerOptimization' into develop
-   2014-10-21 Gianluca Petrillo : Removed unnecessary nested association query in CosmicTracker module (issue \#7060)
-   2014-10-17 Gianluca Petrillo : DumpTracks module now prints statistics on the associated objects
-   2014-10-16 Gianluca Petrillo : First draft of a track dumper
-   2014-09-19 Gianluca Petrillo : Adding recob::Track dumper module (stub)
-   2014-08-12 Gianluca Petrillo : Minor optimizations

## larsim v03_02_01

## larevt v03_02_01

## lardata v03_02_01

## larcore v03_02_01
