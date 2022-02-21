LArSoft v03_07_00 Release Notes
======================================================================

[list of LArSoft releases](LArSoft_release_list)
[Download instructions](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v03_07_00/larsoft-v03_07_00.html)

Purpose
--------------------

-   Changes since v03_06_00
-   deconvolution and signal shaping as approved Jan. 13 for this release
-   Bezier track updates

New features
------------------------------

-   SignalShaping

Bug fixes
------------------------

Updated dependencies
----------------------------------------------

||
|Product|Version|Qualifier|Notes|
|artextensions|v1_00_01|e6:s6|contains a random number seed service|
|larsoft_data|v0_03_02||new file for MicroBooNE|

Change List
============================

larsoft v03_07_00
------------------------------------------

-   2015-01-21 Lynn Garren : artextensions
-   2015-01-21 Lynn Garren : add artexternals and larutils
-   2015-01-21 Lynn Garren : update dependency list

lareventdisplay v03_03_02
----------------------------------------------------------

-   2015-01-21 Lynn Garren : lareventdisplay v03_03_02 for larsoft v03_07_00
-   2015-01-16 Wesley Ketchum : change drawing for bezier tracks to use bezierformat … I really dont want to change everything else

larexamples v03_02_12
--------------------------------------------------

-   2015-01-21 Lynn Garren : larexamples v03_02_12 for larsoft v03_07_00

larpandora v03_06_00
------------------------------------------------

-   2015-01-21 Lynn Garren : larpandora v03_06_00 for larsoft v03_07_00
-   2015-01-20 Andrew Blake : Add true particle length to PFParticle analysis module
-   2015-01-19 Andrew Blake : Updating for v3 of LBNE geometry
-   2015-01-19 Andrew Blake : Merge branch ‘feature/blake_AddLBNE4APA’ into develop, enabling reconstruction of the LBNE Far Detector 4-APA geometry, and simplifying Pandora interfaces (TODO: Move LBNE code to lbnecode… this is on my to-do list).
-   2015-01-19 Andrew Blake : Updating helper functions in Pandora interface
-   2015-01-19 Andrew Blake : Adding LBNE 4-APA reconstruction, and simplifying Pandora helper functions. (TODO: Move LBNE code to lbnecode and MicroBooNE code to uboonecode)
-   2015-01-16 Andrew Blake : Updating Pandora settings file: set final output at end of cosmic script
-   2015-01-16 Andrew Blake : Remove hard-coded detector height from geometry helpers
-   2015-01-15 Andrew Blake : Merge branch ‘feature/feature/blake_particleTracks’ into develop, which adds an option to output recob::Track objects, and also orders all output objects according to sorting functions.
-   2015-01-15 Andrew Blake : tidying up pandoramodules_microboone.fcl
-   2015-01-15 Andrew Blake : Add recob::Track to Pandora output (switched off by default)
-   2015-01-15 Andrew Blake : Adding recob::Track to analysis ntuple, and recob::Shower to ART/Pandora interface
-   2015-01-15 Andrew Blake : Quietening warning messages when MC particles aren’t inputted into Pandora
-   2015-01-15 Andrew Blake : Modifying Cluster and ParticleFlowObject helpers in LArPandoraAlgorithms to return a set of trajectory points for a given reconstructed track. Also, adding new sorting functions for hits.

larana v03_03_10
----------------------------------------

-   2015-01-21 Lynn Garren : larana v03_03_10 for larsoft v03_07_00
-   2015-01-21 Lynn Garren : Merge branch ‘feature/wketchum_BezierTrack’ into release/v03_07_00
-   2015-01-20 Thomas Warburton : Correct the fcl parameters for TrackModuleLabel and SpacePointModuleLabel for lbne35t
-   2015-01-16 Wesley Ketchum : Merge remote-tracking branch ‘origin/develop’ into feature/wketchum_BezierTrack
-   2015-01-15 Alex Himmel : Move LBNE-specific files into lbnecode.
-   2015-01-08 Wesley Ketchum : just add some useful comments
-   2015-01-06 Wesley Ketchum : change calorimetry to use particular product instance

larreco v03_06_00
------------------------------------------

-   2015-01-21 Lynn Garren : larreco v03_06_00 for larsoft v03_07_00
-   2015-01-16 Wesley Ketchum : Merge remote-tracking branch ‘origin/develop’ into feature/wketchum_BezierTrackFix
-   2015-01-07 Wesley Ketchum : remove some couts, and make all the instance labels good
-   2015-01-07 Wesley Ketchum : bunch of cout statements for debugging
-   2015-01-06 Wesley Ketchum : add in creation og ub_style tracks in bezier tracker

larsim v03_05_00
----------------------------------------

-   2015-01-21 Lynn Garren : larsim v03_05_00 for larsoft v03_07_00
-   2015-01-20 Tingjun Yang : Add option to move particles to a new plane.
-   2015-01-15 Brandon Eberly : Fixed bug in particle filter in which some particles that intersect the cryostat were not kept for simulation
-   2015-01-14 Gianluca Petrillo : Added module to dump content of raw::RawDigit on screen

larevt v03_04_00
----------------------------------------

-   2015-01-21 Lynn Garren : larevt v03_04_00 for larsoft v03_07_00
-   2015-01-14 Gianluca Petrillo : Removed MicroBooNE-specific geometry configuration from test modules

lardata v03_07_00
------------------------------------------

-   2015-01-21 Lynn Garren : lardata v03_07_00 for larsoft v03_07_00
-   2015-01-21 Lynn Garren : Merge branch ‘feature/wketchum_BezierTrackFix’ into release/v03_07_00
-   2015-01-20 Lynn Garren : Merge branch ‘feature/jyoti_XinSignalShaping’ into release/v03_07_00
-   2015-01-16 Wesley Ketchum : removed a cout statement and fixed a resurrected bug
-   2015-01-16 Wesley Ketchum : Merge remote-tracking branch ‘origin/develop’ into feature/wketchum_BezierTrackFix
-   2015-01-13 Xin Qian : test
-   2015-01-09 Xin Qian : Clean up the ResetDecon
-   2015-01-09 Wesley Ketchum : add in correction piece for getting end point of track more precisely
-   2015-01-08 Xin Qian : slightly update of SignalShaping
-   2015-01-07 Xin Qian : Modify Shaping Service to save Response function
-   2015-01-07 Wesley Ketchum : remove some cout statements
-   2015-01-07 Wesley Ketchum : fix to a bug in the vector sizes
-   2015-01-07 Xin Qian : add reset deconvolution kernel in SignalShaping
-   2015-01-07 Wesley Ketchum : bunch of cout debugging statements
-   2015-01-06 Wesley Ketchum : add GetTrack method
-   2015-01-06 Xin Qian : change back
-   2015-01-06 Xin Qian : receive time offset

larcore v03_05_00
------------------------------------------

-   unchanged

larbatch v01_02_00
--------------------------------------------

-   2015-01-21 Lynn Garren : larbatch v01_02_00 for larsoft v03_07_00
-   2015-01-20 Tingjun Yang : Use gridftp as IFDH_OPT for Production role.
-   2015-01-20 Tingjun Yang : Add \<output\> parameter to specify the output file name.
-   2015-01-19 Tingjun Yang : Add –role=Analysis or –role=Production as jobsub_submit option s
-   2015-01-16 Tingjun Yang : Require an inputlist or inputfile for textfile inputmode.
-   2015-01-16 Tingjun Yang : Raise an error if inputmode is textfile but inputlist is not speci
-   2015-01-16 Herbert Greenlee : Add check on number of input text files.
-   2015-01-16 Tingjun Yang : Fix typo.
-   2015-01-16 Tingjun Yang : Only pass –inputmode if it is not empty.
-   2015-01-16 Tingjun Yang : Add support for TextFileGen mode. User can specify \<inputmode\>text
-   2015-01-15 Herbert Greenlee : Add project.py –fetchlog (calls jobsub_fetchlog).

larutils v1_00_00
------------------------------------------

-   2015-01-21 Lynn Garren : larutils v1_00_00 for larsoft v03_07_00
-   2015-01-20 Lynn Garren : add makeDataTar.sh to create a tarball for larsoft_data, uboone_data, etc.
