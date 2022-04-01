# LArSoft v04_26_00 Release Notes



[list of LArSoft releases](LArSoft_release_list)  
[Download instructions](https://scisoft.fnal.gov/scisoft/bundles/larsoft/v04_26_00/larsoft-v04_26_00.html)

## Purpose

-   changes to develop
-   Finish Channel Status service changes
-   EMShower module

## New features

-   Channel Status service changes
    -   [presentation](https://indico.fnal.gov/getFile.py/access?contribId=7&amp;resId=0&amp;materialId=slides&amp;confId=10465)
    -   additional name change and fcl work was done
    -   feature/Issue1083 in 5 repositories: larana, lardata, larevt, larreco, larsim
    -   feature/eberly_channelfilter in lareventdisplay
    -   uboonecode needs feature/eberly_channelfilter
    -   dunetpc needs feature/tjyang_channelstatus
-   new EMShower module from Mike Wallbank
    -   [presentation](https://indico.fnal.gov/getFile.py/access?contribId=8&amp;resId=0&amp;materialId=slides&amp;confId=10545)
    -   larreco feature/wallbank_EMShowerToMerge 
-   using cetbuildtools v4_14_01 and the new ALLOW_DEPRECATIONS compiler option

## Bug fixes

## Updated dependencies

|               |          |           |                             |
|---------------|----------|-----------|-----------------------------|
| Product       | Version  | Qualifier | Notes                       |
| cetbuildtools | v4_14_01 |           | supports ALLOW_DEPRECATIONS |
| mrb           | v1_05_03 |           |                             |

# Change List

## larsoft v04_26_00

-   2015-10-08 Lynn Garren : larsoft v04_26_00 for larsoft v04_26_00
-   2015-10-08 Lynn Garren : update product versions and make sure cmake v3_3_2 and cetbuildtools v4_14_01 are part of the distribution
-   2015-10-01 Lynn Garren : update product versions and add larpandoracontent

## lareventdisplay v04_10_00

-   2015-10-08 Lynn Garren : lareventdisplay v04_10_00 for larsoft v04_26_00
-   2015-10-08 Lynn Garren : use new ALLOW_DEPRECATIONS compilation option
-   2015-10-07 Lynn Garren : Merge branch 'feature/eberly_channelfilter' into release/v04_26_00
-   2015-10-03 Tingjun Yang : Make the shower hits brighter and thicker.
-   2015-10-02 Gianluca Petrillo : Updated configurations with IChannelStatusService
-   2015-10-02 Gianluca Petrillo : Merge remote-tracking branch 'origin/develop' into feature/eberly_channelfilter
-   2015-10-02 Gianluca Petrillo : Removed all references to deprecated ChannelFilter, except one (see issue \#10381).
-   2015-10-02 Gianluca Petrillo : Updated configurations with IChannelStatusService
-   2015-10-01 Gianluca Petrillo : Replacing deprecated ChannelFilter with IChannelStatusService

## larexamples v04_05_07

-   2015-10-08 Lynn Garren : larexamples v04_05_07 for larsoft v04_26_00
-   2015-10-08 Lynn Garren : use new ALLOW_DEPRECATIONS compilation option

## larpandora v04_07_01

-   2015-10-08 Lynn Garren : larpandora v04_07_01 for larsoft v04_26_00
-   2015-10-08 Lynn Garren : use new ALLOW_DEPRECATIONS compilation option

## larana v04_13_00

-   2015-10-08 Lynn Garren : larana v04_13_00 for larsoft v04_26_00
-   2015-10-08 Lynn Garren : use new ALLOW_DEPRECATIONS compilation option
-   2015-10-07 Lynn Garren : Merge branch 'feature/Issue1083' into release/v04_26_00
-   2015-10-06 Tracy Usher : Reverse order of objects in associations definition to prevent interesting crash when running where the associations are both created and then used in the same job.
-   2015-10-06 Tingjun Yang : Fix a bug in saving 3D points. The index was off by one. Thanks Greg Pulliam for spotting this.
-   2015-10-02 Gianluca Petrillo : Replacing deprecated ChannelFilter with IChannelStatusService

## larreco v04_19_00

-   2015-10-08 Lynn Garren : larreco v04_19_00 for larsoft v04_26_00
-   2015-10-08 Lynn Garren : use new ALLOW_DEPRECATIONS compilation option
-   2015-10-07 Lynn Garren : Merge branch 'feature/Issue1083' into release/v04_26_00
-   2015-10-07 Lynn Garren : Merge branch 'feature/wallbank_EMShowerToMerge' into release/v04_26_00
-   2015-10-07 Mike Wallbank : remove reference to file showeralgoriths.fcl that doesn't exist
-   2015-10-07 Robert Sulej : matching T0 for APA crossing tracks is off by default, vertexing features as well, until they are finalized
-   2015-10-07 Mike Wallbank : initialised more variables to zero
-   2015-10-07 Mike Wallbank : initial values before increasing them
-   2015-10-07 Robert Sulej : Merge branch 'feature/rsulej_PmaVertexing' of ssh://cdcvs.fnal.gov/cvs/projects/larreco into feature/rsulej_PmaVertexing
-   2015-10-07 Robert Sulej : add t0 data.prod to cross-apa tracks, but need tick-to-time scale and offset to be finished
-   2015-10-07 Mike Wallbank : updates to showering module
-   2015-10-06 Robert Sulej : minor changes to em part selection
-   2015-10-06 Robert Sulej : match t0 for APA crossing tracks, todo assn with T0 product
-   2015-10-05 Mike Wallbank : Rewritten using an alg class and installed properly inside larsoft framework
-   2015-10-05 Chao Zhang : add wirecell conversion for protodune
-   2015-10-05 Gianluca Petrillo : Deprecated ChannelFilter replaced by IChannelStatusService where used, removed or commented out where instantiated but not used.
-   2015-10-05 Mike Wallbank : Merge branch 'develop' into feature/wallbank_EMShowerToMerge
-   2015-10-05 Mike Wallbank : New feature branch with em shower module
-   2015-10-05 Tingjun Yang : protect if no truth is found for hit.
-   2015-10-05 Tingjun Yang : Revert “Merge branch 'feature/wallbank_EMShower' into feature/rsulej_PmaVertexing”
-   2015-10-03 Tingjun Yang : Merge branch 'develop' into feature/rsulej_PmaVertexing
-   2015-10-03 Tingjun Yang : Merge branch 'develop' of ssh://cdcvs.fnal.gov/cvs/projects/larreco into develop
-   2015-10-02 Tingjun Yang : Change warning to debug.
-   2015-10-02 Robert Sulej : add code to detect dQdx steps
-   2015-10-01 Tingjun Yang : Merge branch 'develop' into feature/rsulej_PmaVertexing
-   2015-10-01 Tingjun Yang : Merge branch 'develop' of ssh://cdcvs.fnal.gov/cvs/projects/larreco into develop
-   2015-10-01 Tingjun Yang : Merge branch 'develop' into feature/rsulej_PmaVertexing
-   2015-10-01 Tingjun Yang : Merge branch 'develop' of ssh://cdcvs.fnal.gov/cvs/projects/larreco into develop
-   2015-10-01 Tingjun Yang : Merge branch 'feature/rsulej_PmaVertexing' of ssh://cdcvs.fnal.gov/cvs/projects/larreco into feature/rsulej_PmaVertexing
-   2015-10-01 Robert Sulej : small progress in dQdx processing
-   2015-10-01 Robert Sulej : fix in candidates merging
-   2015-09-30 Tingjun Yang : Merge branch 'feature/wallbank_EMShower' into feature/rsulej_PmaVertexing
-   2015-09-30 Tingjun Yang : Merge branch 'develop' into feature/rsulej_PmaVertexing
-   2015-09-30 Tingjun Yang : Merge branch 'develop' of ssh://cdcvs.fnal.gov/cvs/projects/larreco into develop
-   2015-09-30 Mike Wallbank : fix bug (again) which led to only hits in odd numbered TPCs being clustered
-   2015-09-30 Tingjun Yang : Merge branch 'develop' into feature/rsulej_PmaVertexing
-   2015-09-30 Tingjun Yang : Merge branch 'develop' of ssh://cdcvs.fnal.gov/cvs/projects/larreco into develop
-   2015-09-30 Tingjun Yang : Merge remote-tracking branch 'origin/develop' into feature/rsulej_PmaVertexing
-   2015-09-30 Mike Wallbank : Merge branch 'develop' into feature/wallbank_EMShower
-   2015-09-30 Mike Wallbank : completed shower module which creates recob::Showers and associations
-   2015-09-29 Robert Sulej : Merge branch 'develop' into feature/rsulej_PmaVertexing
-   2015-09-28 Tingjun Yang : Merge branch 'feature/rsulej_PmaVertexing' of ssh://cdcvs.fnal.gov/cvs/projects/larreco into feature/rsulej_PmaVertexing
-   2015-09-28 Robert Sulej : box for merge and split tracks by dQdx
-   2015-09-25 Robert Sulej : protect against using degenerated track segments (in em showers, as usual)
-   2015-09-25 Mike Wallbank : Merge branch 'develop' into feature/wallbank_EMShower
-   2015-09-25 Tingjun Yang : Merge branch 'develop' into feature/rsulej_PmaVertexing
-   2015-09-25 Tingjun Yang : Merge branch 'develop' of ssh://cdcvs.fnal.gov/cvs/projects/larreco into develop
-   2015-09-24 Tingjun Yang : Merge branch 'feature/rsulej_PmaVertexing' of ssh://cdcvs.fnal.gov/cvs/projects/larreco into feature/rsulej_PmaVertexing
-   2015-09-24 Robert Sulej : fix infinite loop in vtx code
-   2015-09-23 Tingjun Yang : Merge branch 'feature/rsulej_PmaVertexing' of ssh://cdcvs.fnal.gov/cvs/projects/larreco into feature/rsulej_PmaVertexing
-   2015-09-23 Robert Sulej : simplify and tune code for reference points
-   2015-09-22 Robert Sulej : one more fix to stitching
-   2015-09-22 Robert Sulej : fix typo affecting stitching result
-   2015-09-22 Robert Sulej : edit terminal messages
-   2015-09-21 Robert Sulej : 3d ref.points to guide wire-plane-parallel tracks
-   2015-09-18 Robert Sulej : Merge branch 'develop' into feature/rsulej_PmaVertexing
-   2015-09-18 Robert Sulej : commit progress to sync with new release
-   2015-09-17 Tingjun Yang : Merge branch 'develop' into feature/rsulej_PmaVertexing
-   2015-09-17 Tingjun Yang : merge branch 'develop' of ssh://cdcvs.fnal.gov/cvs/projects/larreco into develop
-   2015-09-17 Robert Sulej : test push from local installation
-   2015-09-16 Mike Wallbank : Added shower finding
-   2015-09-15 Mike Wallbank : Inital commit of EM shower module
-   2015-09-15 Mike Wallbank : Lots of old modules for 3D showering which I wrote about a month ago
-   2015-09-15 Robert Sulej : Merge branch 'develop' into feature/rsulej_PmaVertexing
-   2015-09-10 Tingjun Yang : Merge remote-tracking branch 'remotes/origin/feature/rsulej_PmaVertexing' into develop
-   2015-09-05 Robert Sulej : lower default size for trk seed
-   2015-09-05 Robert Sulej : save vtx-trk assns in the event
-   2015-09-01 Robert Sulej : fix bug when connecting two large trk structures
-   2015-08-31 Robert Sulej : various fixes to vertex finding, some corrections to stitching
-   2015-08-27 Robert Sulej : fix recursive walk through branching tracks
-   2015-08-26 Robert Sulej : Merge branch 'develop' into feature/rsulej_PmaVertexing
-   2015-08-26 Robert Sulej : fix to work with 2-plane geometries
-   2015-08-26 Robert Sulej : Merge branch 'develop' into feature/rsulej_PmaVertexing
-   2015-08-26 Robert Sulej : basically working, many details to be tuned
-   2015-08-25 Robert Sulej : bugs fixed, todo bring back tpc stitching and tune logic of track selection
-   2015-08-24 Robert Sulej : fix conflicts after merging
-   2015-08-23 Robert Sulej : organize initialization and cleanup
-   2015-08-23 Robert Sulej : code in place, module wired, todo make it running
-   2015-08-22 Robert Sulej : more support for vtx-tracks optimization
-   2015-08-22 Robert Sulej : Merge branch 'develop' into feature/rsulej_PmaVertexing
-   2015-08-22 Robert Sulej : add vtx candidate class (not yet completed)
-   2015-08-21 Robert Sulej : Merge branch 'develop' into feature/rsulej_PmaVertexing
-   2015-08-14 Robert Sulej : add initial work

## larsim v04_12_00

-   2015-10-08 Lynn Garren : add missing library to link list
-   2015-10-08 Lynn Garren : larsim v04_12_00 for larsoft v04_26_00
-   2015-10-08 Lynn Garren : use new ALLOW_DEPRECATIONS compilation option
-   2015-10-07 Lynn Garren : Merge branch 'feature/Issue1083' into release/v04_26_00
-   2015-10-06 Thomas Warburton : Changing MUSUN generation parameters to full DUNE far detector geometry. Previously was using workspace geometry and old LBNE cavern dimensions.
-   2015-10-02 Gianluca Petrillo : Fix to generation test configuration (requires lardata commit a79072f )
-   2015-10-02 Gianluca Petrillo : Replaced deprecated ChannelFilter with IChannelStatusService calls.
-   2015-10-02 Gianluca Petrillo : Updated configurations with IChannelStatusService
-   2015-10-02 Lynn Garren : larsoft v04_25_00
-   2015-10-02 Thomas Warburton : Changing Gen_MUSUN geometry to workspace.

## larevt v04_12_00

-   2015-10-08 Lynn Garren : larevt v04_12_00 for larsoft v04_26_00
-   2015-10-08 Lynn Garren : use new ALLOW_DEPRECATIONS compilation option
-   2015-10-05 Gianluca Petrillo : Removed “channelfilter\*.fcl” configurations after renaming the service to IChannelStatusService
-   2015-10-05 Gianluca Petrillo : ArgoNeuT configuration comes back to LArSoft as per ArgoNeuT policy
-   2015-10-02 Gianluca Petrillo : Merge remote-tracking branch 'origin/develop' into feature/Issue1083
-   2015-10-02 Gianluca Petrillo : ChannelStatus configuration updates
-   2015-10-02 Gianluca Petrillo : Added ChannelStatus service configurations: default and Bo's.
-   2015-10-02 Gianluca Petrillo : Merge remote-tracking branch 'origin/develop' into feature/Issue1083
-   2015-10-02 Gianluca Petrillo : Adding back the GetFilterXxx() interface to the service — possibly only transiently
-   2015-10-02 Gianluca Petrillo : ChannelStatus configuration updates
-   2015-10-02 Gianluca Petrillo : Added ChannelStatus service configurations: default and Bo's
-   2015-10-01 Gianluca Petrillo : Replacing deprecated ChannelFilter with IChannelStatusService
-   2015-10-01 Gianluca Petrillo : Expanded functionality on numerical channel status report
-   2015-10-01 Gianluca Petrillo : Code review by Gianluca: - renamed GetFilter\[Ptr\]() into GetProvider\[Ptr\](); I aim to have this a LArSoft's standard - removed the references to database from the interface (including switching from DB-specific channel ID to LArSoft's) - removed Update() function from service provider interface - renamed SimpleChannelFilterXxx into SimpleChannelStatusXxxx - shipped ArgoNeuT configuration to argoneutcode - minor coding changes

## lardata v04_15_00

-   2015-10-08 Lynn Garren : lardata v04_15_00 for larsoft v04_26_00
-   2015-10-08 Lynn Garren : use new ALLOW_DEPRECATIONS compilation option
-   2015-10-02 Gianluca Petrillo : Added “LArTPC detector” service configuration hub, for LArSoft tests.
-   2015-10-02 Gianluca Petrillo : Updated configurations with IChannelStatusService

## larcore v04_17_01

-   2015-10-08 Lynn Garren : larcore v04_17_01 for larsoft v04_26_00
-   2015-10-08 Lynn Garren : use new ALLOW_DEPRECATIONS compilation option

## larbatch v01_17_00

-   2015-10-08 Lynn Garren : larbatch v01_17_00 for larsoft v04_26_00
-   2015-10-06 Herbert Greenlee : Add flag for dynamic directory name generation (on batch worker) in stage class, and use it in project.py. Make FTS dropbox if it doesn't exist.
-   2015-10-05 Herbert Greenlee : Tweak when output, log, and work directories are deleted in dynamic subrun mode.
-   2015-10-05 Herbert Greenlee : Fix bug making output and log directory in —single mode.
-   2015-10-05 Herbert Greenlee : Appropriately add option '—single' on condor_lar.sh command line.
-   2015-10-05 Herbert Greenlee : Handle missing output/log directories in a nicer way.
-   2015-10-03 Herbert Greenlee : Tweak number of jobs calculation for sam projects.
-   2015-10-02 Herbert Greenlee : Merge branch 'develop' of ssh://cdcvs.fnal.gov/cvs/projects/larbatch into develop
-   2015-10-02 Herbert Greenlee : Modify batch worker script to allow multiple artroot files in a single job.
-   2015-10-02 Herbert Greenlee : Cope with ifdh oddities.
-   2015-10-02 Lynn Garren : larsoft v04_25_00
-   2015-10-02 Herbert Greenlee : Add update CMakeLists.txt.
-   2015-10-02 Herbert Greenlee : Add script mkdir.py.

## larutils v1_03_02
