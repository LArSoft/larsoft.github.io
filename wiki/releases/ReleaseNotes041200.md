LArSoft v04_12_00 Release Notes
======================================================================

[list of LArSoft releases](LArSoft_release_list)
[Download instructions](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v04_12_00/larsoft-v04_12_00.html)

Purpose
--------------------

-   Include changes in development since v04_11_00.
-   Merge larevt feature/usher_uboone_pedestal
-   Merge lareventdisplay feature/usher_uboone_pedestals

New features
------------------------------

1.  Up until now we (MicroBooNE) have been retrieving the pedestals for the RawDigit waveforms from the RawDigit object itself. I believe this feature has already been deprecated, in any case with the data coming from MicroBooNE there are no pedestals in the RawDigits. Instead a set of channel-by-channel pedestals have already been determined and entered into a database, in fact the first implementation of the code to retrieve these pedestals is already in larevt.
     While it is my understanding that the current implementation is meant to be superseded with a new interface (services?) there is a short term need in order to read the MicroBooNE data and use the event display. To achieve this some minor changes have been made to the database access methods and the “raw” event display code updated to get pedestals using this interface. Note that the user must EXPLICITLY request database access, otherwise they will be returned default values (one value per wire plane) which are controllable through fhicl parameters (I am not sure if the default values need to be modified for 35 ton work, or Lariat but I believe Tingjun has looked at this and can comment).
2.  Due to the physical layout of the electronics vs sense wires there are a number of channels read out in the MicroBooNE data stream which are not physically attached to wires. When the channel id mapping is applied, these “unphyisical” channels are given channel ID’s which are \> 10,000. When processing RawDigits in loops it is common to use the geometry service to convert channel ID’s into wires, planes, etc. When this is done the geometry service does an internal check to insure the validity of the channel ID and throws an exception for “illegal” values. Currently this exception is caught by art and event processing terminates. Placing a try-catch block inside a loop over channels is a possible solution to this problem but perhaps not the optimal solution… After much discussion it was agreed that a “better” solution was to have the ChannelFilter keep the list of these unphysical channels and have the loops over RawDigits simply “continue” when a unphysical channel was detected.
     Again, my understanding is that the current ChannelFilter will be superseded at some point but until that time this module has been enhanced for the particular case of MicroBooNE. Now it is possible to label a channel with one of four possible states: GOOD, NOISY, DEAD, UNPHYSICAL. The module has been updated to return UNPHYSICAL for any MicroBooNE channel ID larger than that expected by the geometry service’s maximum channel count (the same check used in the geometry service). Additionally, the wires which have already been labelled as Noisy (from the data) will return NOISY though current modifications to calling code ignore any state other than UNPHYSICAL at the moment.
     The interface remains the same for other experiments, in particular the Lariat folks should see no change to their use of this module.
3.  Finally… the last issue that is being addressed in these updates, again MicroBooNE specific, is that the current noise run data does NOT contain a valid timestamp in the art::Event object. This is a MicroBooNE daq/swizzling/above-my-pay-grade problem, not a larsoft problem. So, in the case of MicroBooNE database queries, the invalid time stamp is temporarily replaced with a value corresponding to a date of around the end of May (as I recall) and will be until the timestamp becomes available.

Bug fixes
------------------------

Updated dependencies
----------------------------------------------

Known Problems
----------------------------------

-   [redmine issue 9108](https://cdcvs.fnal.gov/redmine/issues/9108)

Change List
============================

larsoft v04_12_00
------------------------------------------

-   2015-06-10 Lynn Garren : larsoft v04_12_00 for larsoft v04_12_00
-   2015-06-10 Lynn Garren : update dependency database
-   2015-06-10 Lynn Garren : update product versions

lareventdisplay v04_05_00
----------------------------------------------------------

-   2015-06-10 Lynn Garren : lareventdisplay v04_05_00 for larsoft v04_12_00
-   2015-06-10 Lynn Garren : Merge branch ‘feature/usher_uboone_pedestals’ into release/v04_12_00
-   2015-06-09 Lynn Garren : Merge branch ‘release/v04_11_00’ into develop
-   2015-06-04 Tracy Usher : Updates aimed at using ChannelFilter to detect and skip the non physical channels in the MicroBooNE RawDigit stream. ChannelFilter now assigns a status (GOOD, NOISY, DEAD, NOTPHYSICAL) to a channel and the display will skip all NOTPHYSICAL channels and have an option for the level to display for the other states.
-   2015-06-04 Tracy Usher : Merging Tingjun’s update
-   2015-06-03 Tingjun Yang : Merge branch ‘develop’ of ssh://cdcvs.fnal.gov/cvs/projects/lareventdisplay into develop
-   2015-06-03 Tingjun Yang : Change the way to calculate tick from x.
-   2015-06-03 Lynn Garren : larsoft v04_10_00
-   2015-06-02 Tingjun Yang : Replace ChannelsIntersect with WireIDsIntersect.
-   2015-05-26 Tracy Usher : Primary change is to switch to using the detector pedestal algorithm to return the pedestals for RawDigits. Among other things allows access to the MicroBooNE pedestal database for real data. For other experiments the default is to return a fhicl controllable constant per wire plane. Also, temporarily add some protection against invalid channel numbers present in MicroBooNE noise data, again waiting for “correct” solution.

larexamples v04_04_10
--------------------------------------------------

-   2015-06-10 Lynn Garren : larexamples v04_04_10 for larsoft v04_12_00

larpandora v04_04_10
------------------------------------------------

-   2015-06-10 Lynn Garren : larpandora v04_04_10 for larsoft v04_12_00

larana v04_07_02
----------------------------------------

-   2015-06-10 Lynn Garren : larana v04_07_02 for larsoft v04_12_00

larreco v04_08_00
------------------------------------------

-   2015-06-10 Lynn Garren : larreco v04_08_00 for larsoft v04_12_00
-   2015-06-09 Lynn Garren : Merge branch ‘release/v04_11_00’ into develop
-   2015-06-06 Tingjun Yang : Remove duplicated trajectory points.
-   2015-06-05 Tingjun Yang : Merge branch ‘feature/tjyang_cosmictrackeralg’ into develop
-   2015-06-05 Mike Wallbank : wallbank: Updated the clustering validation module – can now specify more than one clustering output and the module will produce validation plots for each and save them, along with comparison plots, in a root file.
-   2015-06-05 Michelle Stancari : bug fix
-   2015-06-05 Michelle Stancari : upgrade and bug fix
-   2015-06-05 Tingjun Yang : Change stitching algorithm and other updates on cosmic tracker.
-   2015-06-05 Tingjun Yang : Change KS cut for argoneut and lbne35t.
-   2015-06-05 Tingjun Yang : Change charge cut to 50% from 80%.
-   2015-06-03 Mike Wallbank : wallbank: Added clustering validation module which is being used to characterise Blurred Clustering currently but is written generically for use validation any clustering method
-   2015-06-03 Tingjun Yang : Merge branch ‘develop’ into feature/tjyang_cosmictrackeralg
-   2015-06-02 Tingjun Yang : Fixing track stitching. Sorting hits.
-   2015-06-01 Tingjun Yang : Add track stitcher. Clean up code.
-   2015-06-01 Tingjun Yang : Make space points for each hit using trajectory points.
-   2015-05-28 Tingjun Yang : Merge branch ‘develop’ into feature/tjyang_cosmictrackeralg
-   2015-05-27 Tingjun Yang : Merge branch ‘develop’ into feature/tjyang_cosmictrackeralg
-   2015-05-26 Tingjun Yang : Merge branch ‘develop’ into feature/tjyang_cosmictrackeralg
-   2015-05-26 Tingjun Yang : Separate algorithm from module. Also use Bruce’s TrackTrajectoryAlg to reconstruct track trajectory.
-   2015-05-26 Tingjun Yang : Use the middle of points as xOrigin instead of the beginning. Also relax the requirement on chgSum cut to reconstruct the last trajectory point.

larsim v04_07_06
----------------------------------------

-   2015-06-10 Lynn Garren : larsim v04_07_06 for larsoft v04_12_00

larevt v04_08_00
----------------------------------------

-   2015-06-10 Lynn Garren : larevt v04_08_00 for larsoft v04_12_00
-   2015-06-10 Lynn Garren : Merge branch ‘feature/usher_uboone_pedestal’ into release/v04_12_00
-   2015-06-04 Tracy Usher : Updating the current ChannelFilter implementation for use in eliminating the non-physical channels read out in the MicroBooNE noise data. The original concept is now extended to assign a status, from an enumerated list, to a channel with current values: GOOD, NOISY, DEAD and NOTPHYSICAL. The object is also modified to include the current list of known noisy wires from David (via Leon) and to suppress spurious messages. It is believed this object will eventually become a larsoft service with access to a database…
-   2015-05-26 Tracy Usher : Temporary modification to include a call to “update” passing a reference to the art::Event object. For current uboone noise data this sets a time stamp to a constant value (since current time stamps in the data are invalid). For simulation or other experiments which are not accessing a pedestals database the default action, which is independent of the timestamp, is to return a constant pedestal value per wire plane.

lardata v04_08_01
------------------------------------------

-   2015-06-10 Lynn Garren : lardata v04_08_01 for larsoft v04_12_00

larcore v04_10_01
------------------------------------------

-   2015-06-10 Lynn Garren : larcore v04_10_01 for larsoft v04_12_00
-   2015-06-09 Lynn Garren : Merge branch ‘release/v04_11_00’ into develop
-   2015-06-05 Gianluca Petrillo : Bug fix: compiler was able to implicitly convert geometry IDs into integers. Updated test to detect this bug.

larbatch v01_10_00
--------------------------------------------

-   2015-06-10 Lynn Garren : larbatch v01_10_00 for larsoft v04_12_00
-   2015-06-10 Herbert Greenlee : Pubs-related features, improvements, and bug fixes.

larutils v1_00_11
------------------------------------------
