LArSoft v02\_05\_00 Release Notes(#LArSoft-v02_05_00-Release-Notes)
======================================================================

[list of LArSoft releases](LArSoft_release_list)

larsoft v02\_05\_00(#larsoft-v02_05_00)
------------------------------------------

-   2014-08-12 Lynn Garren : for larsoft v02\_05\_00
-   2014-08-12 Lynn Garren : releaseDB/base\_dependency\_database for v02\_05\_00

lareventdisplay v02\_05\_00(#lareventdisplay-v02_05_00)
----------------------------------------------------------

-   2014-08-12 Lynn Garren : for larsoft v02\_05\_00

larexamples v02\_05\_00(#larexamples-v02_05_00)
--------------------------------------------------

-   2014-08-12 Lynn Garren : for larsoft v02\_05\_00

larpandora v02\_05\_00(#larpandora-v02_05_00)
------------------------------------------------

-   2014-08-12 Andrew Blake : Fixing offsets in x,y,z positions assigned to new recob::SpacePoints
-   2014-08-12 Andrew Blake : Fix offsets between real and ‘wire number \* wire pitch’ coordinates. Also, clean up white space!
-   2014-08-12 Andrew Blake : Tweaking values assigned to start/end wire/times of recob::Clusters
-   2014-08-12 Andrew Blake : Tweak the method that build 2D recob::Clusters - start/end times are now set using hits on the start/end wires.
-   2014-08-11 Wesley Ketchum : change TrackIDE namespace from cheat to sim
-   2014-08-11 Wesley Ketchum : Merge remote-tracking branch ‘origin/develop’ into feature/wketchum\_PandoraNoBT
-   2014-08-11 John Marshall : Effectively remove cut on individual Hit MIP-equivalent energy values by setting MIP-equivalent threshold to zero. Will look to re-use this cut in future when MIP-equivalent calibration is satisfactory. Cosmetic changes to algorithm parameter indentation.
-   2014-08-09 Wesley Ketchum : change from vector to map, at suggestion of kazu
-   2014-08-09 Wesley Ketchum : remove backtracker includes, and put in necessary simulation ones
-   2014-08-09 Wesley Ketchum : have pandora use association of particle to mctruth rather than go through backtracker. completely remove backtracker use from pandora
-   2014-08-09 Wesley Ketchum : get hit to trackIDE matches without backtracker
-   2014-08-07 Tracy Usher : Minor change to prevent exception thrown when proposed cluster wire numbers are the same
-   2014-08-01 Andrew Blake : Updating to recob::PFParticle
-   2014-08-01 Andrew Blake : Implementation of reco::Particle

larana v02\_05\_00(#larana-v02_05_00)
----------------------------------------

-   2014-08-12 Lynn Garren : add missing library and remove misleading comments
-   2014-08-12 Tingjun Yang : rename template file name
-   2014-08-11 Wesley Ketchum : add in microboone fcl parameters
-   2014-08-11 Sarah Lockwitz : broke up the tagger into cluster and tracker pieces. uncommentted the crucial put command (thanks sowjanya). minor clean up
-   2014-08-11 Wesley Ketchum : change TrackIDE namespace from cheat to sim
-   2014-08-08 Tingjun Yang : check if calorimetry is valid before running pid
-   2014-08-08 Tingjun Yang : change message level from VERBATIM to DEBUG
-   2014-08-07 Wesley Ketchum : delete unneeded file
-   2014-08-07 Wesley Ketchum : Merge branch ‘feature/wketchum\_CosmicTag’ into develop
-   2014-08-07 Wesley Ketchum : finishing the move of cosmic tagger to larana
-   2014-08-07 Wesley Ketchum : moving cosmic tagger stuff to larana
-   2014-08-07 Wesley Ketchum : move my copy of cosmic tagger here, out of the way
-   2014-08-07 Anne Schukraft : set area mode as default for calorimetry
-   2014-08-07 Wesley Ketchum : Merge branch ‘develop’ of ssh://cdcvs.fnal.gov/cvs/projects/larana into feature/wketchum\_CosmicTag
-   2014-08-07 Anne Schukraft : merge new calorimetry calibration constants Merge branch ‘develop’ of ssh://cdcvs.fnal.gov/cvs/projects/larana into develop
-   2014-08-07 Anne Schukraft : new calorimetry constants for area and pulse height for MCC5
-   2014-06-13 Wesley Ketchum : some timing stuff
-   2014-06-13 Wesley Ketchum : add in some stopwatch stuff
-   2014-06-13 Wesley Ketchum : rework the CosmicRevmoalAna to be tree based, and revert back to v02\_00\_01 due to timing issues
-   2014-06-11 Wesley Ketchum : Merge remote-tracking branch ‘origin/v02\_01\_00\_branch’ into feature/wketchum\_CosmicTag
-   2014-06-11 Wesley Ketchum : Merge remote-tracking branch ‘origin/ub\_dev’ into feature/wketchum\_CosmicTag
-   2014-06-10 Wesley Ketchum : moving CosmicTagger to CosmicRemoval bit, just for the sake of some cleaning up
-   2014-06-10 Wesley Ketchum : Merge branch ‘develop’ of ssh://cdcvs.fnal.gov/cvs/projects/larana into feature/wketchum\_CosmicTag
-   2014-06-10 Wesley Ketchum : Merge branch ‘feature/wketchum\_CosmicTag’ of ssh://cdcvs.fnal.gov/cvs/projects/larana into feature/wketchum\_CosmicTag
-   2014-06-03 Jonathan Asaadi : Merge branch ‘feature/wketchum\_CosmicTag’ of ssh://cdcvs.fnal.gov/cvs/projects/larana into feature/wketchum\_CosmicTag
-   2014-06-03 Jonathan Asaadi : Commit
-   2014-06-03 Jonathan Asaadi : Commiting more TTree changes
-   2014-06-03 Ben Jones : Merge branch ‘feature/wketchum\_CosmicTag’ of ssh://cdcvs.fnal.gov/cvs/projects/larana into feature/wketchum\_CosmicTag
-   2014-06-03 Ben Jones : Make histograms with normalized charge
-   2014-06-03 Jonathan Asaadi : Refactoring TTree things
-   2014-06-03 Jonathan Asaadi : please
-   2014-06-03 Jonathan Asaadi : commit
-   2014-06-03 Ben Jones : Add tracked and clustered charge fraction
-   2014-05-30 Wesley Ketchum : moving CosmicTagger module from larreco to larana
-   2014-05-29 Wesley Ketchum : Merge remote-tracking branch ‘origin/develop’ into feature/wketchum\_CosmicTag
-   2014-05-27 Wesley Ketchum : changes to use the cosmicTag product

larreco v02\_05\_00(#larreco-v02_05_00)
------------------------------------------

-   2014-08-12 Wesley Ketchum : Merge remote-tracking branch ‘origin/feature/MultiScatter’ into develop
-   2014-08-12 Kalousis Leonidas : Fix for the backwards tracks
-   2014-08-12 Kalousis Leonidas : Fix for the backwards tracks
-   2014-08-12 Kalousis Leonidas : Fix for the backwards tracks
-   2014-08-11 Kalousis Leonidas : small changes in the class - again
-   2014-08-11 Kalousis Leonidas : fix isnan problem
-   2014-08-11 Gianluca Petrillo : Reworked code in KingaClusterAna module using ParticleList in a inefficient way.
-   2014-08-11 Wesley Ketchum : remove GenPRINT option from KalmanSPS at request of Gianluca
-   2014-08-11 Wesley Ketchum : Merge branch ‘develop’ of ssh://cdcvs.fnal.gov/cvs/projects/larreco into develop
-   2014-08-11 Wesley Ketchum : somehow got typos in the trackana fcl parameters
-   2014-08-11 Wesley Ketchum : change TrackIDE namespace from cheat to sim
-   2014-08-11 Muhammad Elnimr : Merge branch ‘develop’ of ssh://cdcvs.fnal.gov/cvs/projects/larreco into develop
-   2014-08-11 Muhammad Elnimr : Updates to TrackAnaCT.
-   2014-08-11 Jonathan Asaadi : Bug fix to FeatureVtx to remove duplicates between events
-   2014-08-10 Kalousis Leonidas : reorganise parts in the class
-   2014-08-10 Tingjun Yang : change the way std::vector is used
-   2014-08-10 Muhammad Elnimr : Optimizing the default for TrackAnaCT. –elnimr
-   2014-08-10 Muhammad Elnimr : Forgot to add a block for TrackAnaCT into trackfindermodules.fcl. –elnimr
-   2014-08-09 Tingjun Yang : Merge branch ‘feature/MultiScatter’ of ssh://cdcvs.fnal.gov/cvs/projects/larreco into feature/MultiScatter
-   2014-08-09 Tingjun Yang : Merge branch ‘develop’ into feature/MultiScatter
-   2014-08-09 Muhammad Elnimr : Duplicating TrackAna to TrackAnaCT and fixing it to run for the 35t detector. Hard coding some dimensions for the TPCs, needs to be more rigorous. –elnimr
-   2014-08-09 Kalousis Leonidas : Check minimizer status
-   2014-08-08 Ben Carls : Reinstating DBScan to better handle noise hits
-   2014-08-08 Tingjun Yang : change message level from VERBATIM to DEBUG
-   2014-08-07 Tingjun Yang : fix a bug
-   2014-08-07 Wesley Ketchum : moving cosmic tagger to larana!
-   2014-08-07 Sarah Lockwitz : some updates from the cosmic retreat (sowjanya wanted better kalman capability
-   2014-08-07 Sarah Lockwitz : Merge branch ‘feature/lockwitz\_cosmicTaggerAugust’ into develop
-   2014-08-07 Sarah Lockwitz : changed some timing window things
-   2014-08-07 Sarah Lockwitz : hard-coded a window readout size value to make this functional
-   2014-08-07 Tingjun Yang : change cchitfinder parameters for microboone suggested by Bruce
-   2014-08-07 Bruce Baller : Merge branch ‘feature/ccwork’ into develop
-   2014-08-07 Bruce Baller : Crawling and vertexing tweaks
-   2014-08-06 Tingjun Yang : Merge branch ‘develop’ into feature/MultiScatter
-   2014-08-06 Tingjun Yang : check histograms before making Kolmogorov test
-   2014-08-06 Bruce Baller : Merge branch ‘feature/ccwork’ into develop
-   2014-08-06 Bruce Baller : Vertex finding improvements
-   2014-08-05 Kalousis Leonidas : MultiScatter —\> into LArSoft !
-   2014-08-05 Kalousis Leonidas : MultiScatter: fix RMS parameters
-   2014-08-05 Kalousis Leonidas : MultiScatter: add RMS calculator
-   2014-08-04 Kalousis Leonidas : MultiScatter: up to now
-   2014-08-04 Kalousis Leonidas : MultiScatter: Intro Minuit2
-   2014-08-04 Kalousis Leonidas : MultiScatter: building chi2
-   2014-08-04 Kalousis Leonidas : MultiScatter: adding minimization parameters
-   2014-08-04 Kalousis Leonidas : MultiScatter: changes in seg. algo definition
-   2014-08-04 Kalousis Leonidas : MultiScatter: Minor adds in the constructor
-   2014-08-04 Kalousis Leonidas : MultiScatter: Implementing Segmentation Algorithm
-   2014-08-04 Kalousis Leonidas : MultiScatter first commit, uo to the seg algo

larsim v02\_05\_00(#larsim-v02_05_00)
----------------------------------------

-   2014-08-12 Tingjun Yang : Merge branch ‘develop’ of ssh://cdcvs.fnal.gov/cvs/projects/larsim into develop
-   2014-08-12 Tingjun Yang : fix a bug identified by Kazu, fix suggested by Brian, donot track electrons between wire planes for now
-   2014-08-11 Gianluca Petrillo : Reworked all the code using ParticleList::Particle(int), ::TrackID(int) and ::Primary(int) in a inefficient way (turns out, it was always the case). Added ParticleList::GetPrimaries() to provide all primaries in a decently efficient way.
-   2014-08-11 Wesley Ketchum : change TrackIDE namespace from cheat to sim
-   2014-08-09 Wesley Ketchum : move TrackIDE definition to SimChannel; add default constructor and a non-default constructor to allow me to emplace\_back; translate backtrackers ChannelToTrackIDE to a method of SimChannel (TrackIDEs); modify sim.h to include \<limits\> and not \<climits\>, as for some reason that was not compiling for me
-   2014-08-08 Wesley Ketchum : fix single particle gen to allow negative times
-   2014-08-06 Eric Church : Remove frivolous couts.
-   2014-08-06 Eric Church : Merge branch ‘develop’ of ssh://cdcvs.fnal.gov/cvs/projects/larsim into develop
-   2014-08-06 Gianluca Petrillo : BackTracker: (1) removed an almost unused member whose initialiazation took ages (2) removed an unnecessary copy (3) interface expanded to return non-const vectors when proper
-   2014-08-06 Eric Church : NoDirtFilter now works

larevt v02\_05\_00(#larevt-v02_05_00)
----------------------------------------

-   2014-08-12 Lynn Garren : for larsoft v02\_05\_00

lardata v02\_05\_00(#lardata-v02_05_00)
------------------------------------------

-   2014-08-12 Lynn Garren : for larsoft v02\_05\_00

larcore v02\_05\_00(#larcore-v02_05_00)
------------------------------------------

-   2014-08-08 Tingjun Yang : change message level from VERBATIM to DEBUG
