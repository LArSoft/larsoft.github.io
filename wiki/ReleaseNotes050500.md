LArSoft v05\_05\_00 Release Notes
======================================================================

-   **Table of contents**
-   [LArSoft v05\_05\_00 Release Notes](#LArSoft-v05_05_00-Release-Notes)
    -   [Purpose](#Purpose)
    -   [New features](#New-features)
    -   [Bug fixes](#Bug-fixes)
    -   [Updated dependencies](#Updated-dependencies)
-   [Change List](#Change-List)
    -   [larsoft v05\_05\_00](#larsoft-v05_05_00)
    -   [lareventdisplay v05\_02\_00](#lareventdisplay-v05_02_00)
    -   [larexamples v05\_00\_07](#larexamples-v05_00_07)
    -   [larpandora v05\_02\_01](#larpandora-v05_02_01)
    -   [larana v05\_03\_00](#larana-v05_03_00)
    -   [larreco v05\_03\_00](#larreco-v05_03_00)
    -   [larsim v05\_02\_00](#larsim-v05_02_00)
    -   [larevt v05\_01\_03](#larevt-v05_01_03)
    -   [lardata v05\_03\_00](#lardata-v05_03_00)
    -   [larcore v05\_00\_02](#larcore-v05_00_02)
    -   [larbatch v01\_20\_07](#larbatch-v01_20_07)
    -   [larutils v1\_05\_05](#larutils-v1_05_05)

[list of LArSoft releases](LArSoft_release_list)\
[Download instructions](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v05_05_00/larsoft-v05_05_00.html)

Purpose
--------------------

-   integrate feature branches and get changes already in develop

New features
------------------------------

-   larreco, lardata feature/ss-refactoring
    -   uboonecode feature/feature/ss-refactoring
    -   refactor Track3DKalmanHit\_module
-   larreco, lareventdisplay feature/rsulej\_MultipleVtxCollections
    -   Save reconstructed vertices separately for each type (interaction, kink, …) using instance names of collections. [\#11871](/redmine/issues/11871 "Necessary Maintenance: Decay products in pandora do not start from the same vertex, while Projection Matching Algorithm'... (Accepted)")
-   lardata, larana feature/wketchum\_\_CosmicTagIsolation
    -   New algorithm (TrackContainmentAlg) and module (TrackContainmentTagger) that looks at all tracks in a set of collections, identifies those that are uncontained, and then loops through the remaining contained tracks to identify those that are spatially close to an uncontained track. There is a loop to establish this track linkage throughout the whole track collection. The module can create a CosmicTag object and associate it to these tracks. I’ve added a new anab::CosmicTagID\_t value in the enum, “kNotIsolated=500”, in the CosmicTag object to account for contained tracks that are not isolated and thus potentially cosmic.

Bug fixes
------------------------

-   larana cosmic ray track taggers

Updated dependencies
----------------------------------------------

Change List
============================

larsoft v05\_05\_00
------------------------------------------

-   2016-03-23 Lynn Garren : larsoft v05\_05\_00 for larsoft v05\_05\_00
-   2016-03-23 Lynn Garren : update dependency database
-   2016-03-23 Lynn Garren : update product versions
-   2016-03-17 Lynn Garren : larsoft v05\_04\_00
-   2016-03-16 Lynn Garren : using standard qualifier ordering

lareventdisplay v05\_02\_00
----------------------------------------------------------

-   2016-03-23 Lynn Garren : lareventdisplay v05\_02\_00 for larsoft v05\_05\_00
-   2016-03-22 Lynn Garren : Merge branch ‘feature/rsulej\_MultipleVtxCollections’ into release/v05\_05\_00
-   2016-03-22 Robert Sulej : add display of kinks in the ortho views (kinks reconstructed along the track are saved as recob::vertex in the named collection)
-   2016-03-22 Usher, Tracy L : Add option to allow viewing of “bad” channels in raw data event display (and “wire” data too) - should not change current behavior of event display. Also add protection in 3D display of tracks for special cases to prevent crash.

larexamples v05\_00\_07
--------------------------------------------------

-   2016-03-23 Lynn Garren : larexamples v05\_00\_07 for larsoft v05\_05\_00

larpandora v05\_02\_01
------------------------------------------------

-   2016-03-23 Lynn Garren : larpandora v05\_02\_01 for larsoft v05\_05\_00

larana v05\_03\_00
----------------------------------------

-   2016-03-23 Lynn Garren : larana v05\_03\_00 for larsoft v05\_05\_00
-   2016-03-22 Usher, Tracy L : Another tweak to logic to make sure catch right entering/exiting conditions.
-   2016-03-22 Usher, Tracy L : Fix inequality sign faux pas
-   2016-03-22 Usher, Tracy L : Change fiducial distance in x for PFParticle and PCA taggers
-   2016-03-22 Usher, Tracy L : Fix error in logic for tagging cosmic ray tracks where a single end could be tagged as entering/exiting
-   2016-03-22 Wesley Ketchum : forgot the modules
-   2016-03-22 Wesley Ketchum : fixes for compiling in v5
-   2016-03-22 Wesley Ketchum : merging in for v5
-   2016-03-22 Wesley Ketchum : add in a new TrackContainment alg to link tracks that are contained with those that are not contained based on proximity

larreco v05\_03\_00
------------------------------------------

-   2016-03-23 Lynn Garren : larreco v05\_03\_00 for larsoft v05\_05\_00
-   2016-03-22 Lynn Garren : Merge branch ‘feature/rsulej\_MultipleVtxCollections’ into release/v05\_05\_00
-   2016-03-22 Lynn Garren : Merge branch ‘feature/ss-refactoring’ into release/v05\_05\_00
-   2016-03-22 Tingjun Yang : Merge branch ‘develop’ of ssh://cdcvs.fnal.gov/cvs/projects/larreco into develop
-   2016-03-22 Tingjun Yang : Disable the checking of reconstructed vertex for now.
-   2016-03-22 Robert Sulej : save kinks in the named vertex collection and assns to tracks in the named collection as well; interaction vertices are saved with no instance name, as it was up to now; track and pfp are assigned to the vertex where they were created (so 1 vertex for each track or pfp, but many tracks or pfps can be assigned to 1 vtx); a track can have many kinks assigned to it.
-   2016-03-21 Alexander Booth : the addition of a default value for a new fcl parameter and fixing of a bug in the calculation of rms.
-   2016-03-21 Robert Sulej : Merge branch ‘develop’ of ssh://cdcvs.fnal.gov/cvs/projects/larreco into develop
-   2016-03-21 Robert Sulej : enable kink finding, todo assns to tracks (need way to distinguish from interactions so now just vertex objects are created)
-   2016-03-21 Tingjun Yang : Fix a bug.
-   2016-03-21 Robert Sulej : comment out unused var in kink finding
-   2016-03-21 Robert Sulej : Merge branch ‘develop’ of ssh://cdcvs.fnal.gov/cvs/projects/larreco into develop
-   2016-03-21 Robert Sulej : add kink finding on 3d tracks (will reopt with tagged kinks, now disabled, need merge with larsoft 5.04)
-   2016-03-20 Tingjun Yang : Change Warning to DEBUG.
-   2016-03-20 Tingjun Yang : Merge branch ‘develop’ of ssh://cdcvs.fnal.gov/cvs/projects/larreco into develop
-   2016-03-20 Tingjun Yang : A few more tweaks. Add one fcl file for uboone.
-   2016-03-20 Alexander Booth : Small change to ensure hit tails are included symmetrically.
-   2016-03-19 Tingjun Yang : Use TFileService.
-   2016-03-19 Tingjun Yang : Reset energy and momentum bins based on max E and P.
-   2016-03-19 Tingjun Yang : Make fiducial volume cut based on geometry.
-   2016-03-19 Tingjun Yang : Protect against case where MCparticle is null. Remove using namespace std.
-   2016-03-18 Alexander Booth : small bug ammendment
-   2016-03-18 Alexander Booth : small change
-   2016-03-18 Alexander Booth : Merge branch ‘develop’ of ssh://cdcvs.fnal.gov/cvs/projects/larreco into develop
-   2016-03-18 Alexander Booth : Small bug fix and addition of fcl parameter to increase the region of charge integration by a fraction of the rough hit width
-   2016-03-11 Saba Sehirsh : Merge branch ‘develop’ into feature/ss-refactoring
-   2016-03-11 Robert Sulej : if node is frozen (e.g. cascade dir. reco) dont allow to projects hits beyond the outermost node
-   2016-03-10 Saba Sehirsh : fcl file changes for refactored code
-   2016-03-06 Saba Sehirsh : added a new refactored method
-   2016-02-29 Saba Sehirsh : added const and removed a printout
-   2016-02-28 Saba Sehirsh : added typedef for art::PtrVector\<recob::Hit\>
-   2016-02-28 Saba Sehirsh : cleaned up comments, added consts
-   2016-02-27 Saba Sehirsh : Merge branch ‘develop’ into feature/ss-refactoring
-   2016-02-27 Saba Sehirsh : separated local kalman input output
-   2016-02-27 Saba Sehirsh : separated the local kalman struct
-   2016-02-26 Saba Sehirsh : fixed method names and extracted new methods with minimal changes
-   2016-02-25 Saba Sehirsh : cleaned up getInputFromEvent
-   2016-02-25 Saba Sehirsh : changed interface for getInputFromEvent
-   2016-02-25 Saba Sehirsh : removed printouts
-   2016-02-25 Saba Sehirsh : re-indentation
-   2016-02-24 Saba Sehirsh : removed printouts
-   2016-02-24 Saba Sehirsh : fixing configuration files
-   2016-02-23 Saba Sehirsh : reviewed method getInputFromEvent
-   2016-02-23 Saba Sehirsh : added few debug couts, should remove them
-   2016-02-23 Saba Sehirsh : updated fcl for Track3DKalmanAlg
-   2016-02-23 Saba Sehirsh : modified fcl files to reflect the algorithm class
-   2016-02-23 Saba Sehirsh : first version of separated algorithm class
-   2016-02-21 Saba Sehirsh : change to getseedsfromunsortedhits
-   2016-02-19 Saba Sehirsh : fixed the includes
-   2016-02-18 Saba Sehirsh : updated to v05, resolved conflicts
-   2016-02-18 Saba Sehirsh : just a checkin
-   2016-02-17 Saba Sehirsh : some more refactoring work
-   2016-02-11 Saba Sehirsh : Added a member function to create all assns
-   2016-02-10 Saba Sehirsh : minor edit/debug statement
-   2016-02-10 Saba Sehirsh : indentation
-   2016-02-10 Saba Sehirsh : added 2 new methods; generateKalmantracks and getSeeds
-   2016-02-08 Saba Sehirsh : added getInputfrom event method
-   2016-02-07 Saba Sehirsh : renamed smoothTrack to smoothandextendTrack
-   2016-02-04 Saba Sehirsh : added method processSeeds
-   2016-02-04 Saba Sehirsh : added a methof processInitialtracks
-   2016-02-04 Saba Sehirsh : added a method makeInitialtracks
-   2016-02-03 Saba Sehirsh : reversed an if logic and re-indented by one level
-   2016-02-02 Saba Sehirsh : minor clean up
-   2016-02-02 Saba Sehirsh : changed an iterator for loop to simple for
-   2016-02-02 Saba Sehirsh : Merge branch ‘develop’ into feature/ss-recolearn
-   2016-02-02 Saba Sehirsh : replaced temp variable ok with function call
-   2016-02-02 Saba Sehirsh : added fitnupdate momentum method
-   2016-02-02 Saba Sehirsh : cleanup a few if statements
-   2016-02-01 Saba Sehirsh : working version of code, no memory or verification error
-   2016-02-01 Saba Sehirsh : a few minor edits
-   2016-02-01 Saba Sehirsh : fixed the memory error
-   2016-01-29 Saba Sehirsh : reviewed Quality cuts function
-   2016-01-28 Saba Sehirsh : Merge branch ‘develop’ into feature/ss-recolearn
-   2016-01-28 Saba Sehirsh : current working version, which is paaing my verification test
-   2016-01-26 Saba Sehirsh : simplified the data products for loop, got rid of createAssn utility function
-   2016-01-19 Saba Sehirsh : temp version that will be cleaned in the next commit
-   2016-01-19 Saba Sehirsh : changed function names and added const
-   2016-01-14 Saba Sehirsh : minor edit to function name fillHitContainter
-   2016-01-14 Saba Sehirsh : some code clean up and refactoring
-   2016-01-13 Saba Sehirsh : FillHitContainer method reviewed and removed the bare pointers logic
-   2016-01-12 Saba Sehirsh : fixed the memory allocation error I accidently introduced
-   2016-01-11 Saba Sehirsh : Merge branch ‘develop’ into feature/ss-recolearn
-   2016-01-11 Saba Sehirsh : some minor formatting, added const to a function
-   2016-01-08 Saba Sehirsh : added SmoothTracks function
-   2016-01-07 Saba Sehirsh : Changed the parameter list of GenerateSeeds, and GetPFParticleSeedsAndHits
-   2016-01-07 Saba Sehirsh : Changed the parameter list of GetAllHits and GetClusteredHits functions
-   2016-01-07 Saba Sehirsh : Changed the name of few variables i.e. HitCollection to LocalKalmanStruct
-   2016-01-06 Saba Sehirsh : added two methods for getting seeds
-   2016-01-06 Saba Sehirsh : added method for FillPFParticleHits
-   2016-01-06 Saba Sehirsh : minor formating edits, and took out a constant outside the loop
-   2016-01-05 Saba Sehirsh : added 1 method FillAllHits for the case when use PFParticles and clustered hits is false
-   2016-01-05 Saba Sehirsh : added 2 methods; one to chop off hits and second to do quality cuts on seed track
-   2016-01-03 Saba Sehirsh : Merge branch ‘develop’ into feature/ss-recolearn
-   2016-01-03 Saba Sehirsh : wrapped up relevant code into FillClusteredHits function
-   2015-12-24 Saba Sehirsh : wrapped up a body of code in to a FillHitContainer method
-   2015-12-23 Saba Sehirsh : wrapped up a body of code into a FilterHitsonKalmanTracks
-   2015-12-22 Saba Sehirsh : added FillHistograms function and re-indented code

larsim v05\_02\_00
----------------------------------------

-   2016-03-23 Lynn Garren : larsim v05\_02\_00 for larsoft v05\_05\_00
-   2016-03-21 Gianluca Petrillo : Added dumpers for MCShower and MCTrack data products.
-   2016-03-17 Tyler Alion : Add fcl switch for G4 overlap checker, document LArG4 parameters.

larevt v05\_01\_03
----------------------------------------

-   2016-03-23 Lynn Garren : larevt v05\_01\_03 for larsoft v05\_05\_00

lardata v05\_03\_00
------------------------------------------

-   2016-03-23 Lynn Garren : lardata v05\_03\_00 for larsoft v05\_05\_00
-   2016-03-22 Lynn Garren : Merge branch ‘feature/ss-refactoring’ into release/v05\_05\_00
-   2016-03-22 Wesley Ketchum : Merge branch ‘feature/wketchum\_CosmicTagIsolation’ into feature/wketchum\_CosmicTagIsolation\_v5
-   2016-03-21 Wesley Ketchum : Merge tag ‘LARSOFT\_SUITE\_v04\_36\_00’ into HEAD
-   2016-03-21 Wesley Ketchum : add not isolated option for tag
-   2016-03-11 Saba Sehirsh : Merge branch ‘develop’ into feature/ss-refactoring
-   2016-02-27 Saba Sehirsh : Merge branch ‘develop’ into feature/ss-refactoring
-   2016-02-18 Saba Sehirsh : added lardata to the includes
-   2016-02-18 Saba Sehirsh : resolved conflicts updates to v05
-   2016-02-02 Saba Sehirsh : Merge branch ‘develop’ into feature/feature/ss-recolearn
-   2016-01-13 Saba Sehirsh : added a virtual method fill to the base class and added override to the derived

larcore v05\_00\_02
------------------------------------------

larbatch v01\_20\_07
--------------------------------------------

-   2016-03-23 Lynn Garren : larbatch v01\_20\_07 for larsoft v05\_05\_00
-   2016-03-21 Herbert Greenlee : Override EmptyEvent run number in wrapper.fcl.
-   2016-03-18 Herbert Greenlee : Add function batch\_status\_check.

larutils v1\_05\_05
------------------------------------------

-   2016-03-23 Lynn Garren : larutils v1\_05\_05 for larsoft v05\_05\_00
-   2016-03-23 Lynn Garren : update nu version for build
