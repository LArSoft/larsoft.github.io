LArSoft v08\_06\_00 Release Notes(#LArSoft-v08_06_00-Release-Notes)
======================================================================

-   **Table of contents**
-   [LArSoft v08\_06\_00 Release Notes](#LArSoft-v08_06_00-Release-Notes)
    -   [Purpose](#Purpose)
    -   [New features](#New-features)
    -   [Bug fixes](#Bug-fixes)
    -   [Updated dependencies](#Updated-dependencies)
-   [Change List](#Change-List)
    -   [larsoft v08\_06\_00](#larsoft-v08_06_00)
    -   [lareventdisplay v08\_03\_00](#lareventdisplay-v08_03_00)
    -   [larexamples v08\_01\_00](#larexamples-v08_01_00)
    -   [larg4 v08\_01\_00](#larg4-v08_01_00)
    -   [larpandora v08\_03\_01](#larpandora-v08_03_01)
    -   [larwirecell v08\_02\_00](#larwirecell-v08_02_00)
    -   [larana v08\_01\_01](#larana-v08_01_01)
    -   [larreco v08\_05\_00](#larreco-v08_05_00)
    -   [larsim v08\_02\_00](#larsim-v08_02_00)
    -   [larevt v08\_01\_00](#larevt-v08_01_00)
    -   [lardata v08\_02\_00](#lardata-v08_02_00)
    -   [larcore v08\_01\_00](#larcore-v08_01_00)
    -   [larpandoracontent v03\_14\_04](#larpandoracontent-v03_14_04)
    -   [larsoftobj v08\_03\_00](#larsoftobj-v08_03_00)
    -   [lardataobj v08\_01\_00](#lardataobj-v08_01_00)
    -   [lardataalg v08\_03\_00](#lardataalg-v08_03_00)
    -   [larcorealg v08\_01\_00](#larcorealg-v08_01_00)
    -   [larcoreobj v08\_01\_00](#larcoreobj-v08_01_00)
    -   [larbatch v01\_47\_03](#larbatch-v01_47_03)
    -   [larutils v1\_23\_10](#larutils-v1_23_10)

[list of LArSoft releases](LArSoft_release_list)\
Download instructions for [larsoft v08\_06\_00](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v08_06_00/larsoft-v08_06_00.html)\
Download instructions for [just larsoftobj v08\_03\_00](http://scisoft.fnal.gov/scisoft/bundles/larsoftobj/v08_03_00/larsoftobj-v08_03_00.html)

Purpose(#Purpose)
--------------------

-   changes in develop
-   approved feature branches

New features(#New-features)
------------------------------

-   Cluster3D and event display improvements
    -   [https://indico.fnal.gov/event/19498/contribution/2/material/slides/0.pdf](https://indico.fnal.gov/event/19498/contribution/2/material/slides/0.pdf)
    -   larreco feature/usher\_cluster3dspacepoints
    -   lareventdisplay feature/usher\_edgedrawingoptions
    -   larana feature/usher\_fixForCosmicPCAxisTagger

Bug fixes(#Bug-fixes)
------------------------

Updated dependencies(#Updated-dependencies)
----------------------------------------------

Change List(#Change-List)
============================

larsoft v08\_06\_00(#larsoft-v08_06_00)
------------------------------------------

-   2019-01-23 Lynn Garren : larsoft v08\_06\_00 for larsoft v08\_06\_00
-   2019-01-23 Lynn Garren : product versions
-   2019-01-17 Lynn Garren : s71

lareventdisplay v08\_03\_00(#lareventdisplay-v08_03_00)
----------------------------------------------------------

-   2019-01-23 Lynn Garren : lareventdisplay v08\_03\_00 for larsoft v08\_06\_00
-   2019-01-17 Usher, Tracy L : Merge branch ‘master’ into feature/usher\_edgedrawingoptions
-   2019-01-13 Usher, Tracy L : Merge branch ‘master’ into feature/usher\_edgedrawingoptions
-   2019-01-11 Usher, Tracy L : Update so that a given recob::HIt will be drawn for all WireIDs it is associated to. Make this optional so that can be turned off and hit will be drawn only for the WireID contained in the hit object
-   2019-01-11 Usher, Tracy L : Add drawer tool specific to ProtoDUNE (changes the mesh for the anode planes which makes “seeing” through it difficult)
-   2019-01-11 Usher, Tracy L : OCD… formatting
-   2018-12-19 Usher, Tracy L : Merge branch ‘master’ into feature/usher\_edgedrawingoptions
-   2018-12-15 Usher, Tracy L : Merge branch ‘master’ into feature/usher\_edgedrawingoptions
-   2018-12-12 Usher, Tracy L : Merge remote-tracking branch ‘origin/v08\_00\_00\_rc\_br’ into feature/usher\_edgedrawingoptions
-   2018-12-06 Usher, Tracy L : Merge branch ‘master’ into feature/usher\_edgedrawingoptions
-   2018-11-15 Usher, Tracy L : Merge branch ‘master’ into feature/usher\_edgedrawingoptions
-   2018-11-09 Usher, Tracy L : Merge branch ‘master’ into feature/usher\_edgedrawingoptions
-   2018-11-03 Usher, Tracy L : Merge branch ‘master’ into feature/usher\_edgedrawingoptions
-   2018-10-25 Usher, Tracy L : Merge branch ‘master’ into feature/usher\_edgedrawingoptions
-   2018-10-12 Usher, Tracy L : Merge branch ‘master’ into feature/usher\_edgedrawingoptions
-   2018-10-10 Usher, Tracy L : Add options to allow a separate producer for SimChannels from MCParticles, also flags to separately turn on/off SimChannel and SimEnergyDeposit displays
-   2018-10-06 Usher, Tracy L : Merging in latest update from develop
-   2018-10-06 Usher, Tracy L : Merge branch ‘develop’ into feature/usher\_edgedrawingoptions
-   2018-10-04 Usher, Tracy L : Add ability for the SimEnergyDeposit display to be displaced for particles generated “out of time”
-   2018-09-27 Usher, Tracy L : Merge branch ‘master’ into feature/usher\_edgedrawingoptions
-   2018-09-27 Usher, Tracy L : deactivate the 3D drawing subfolder
-   2018-09-26 Usher, Tracy L : Merge branch ‘master’ into feature/usher\_edgedrawingoptions
-   2018-09-19 Usher, Tracy L : Prevent exception
-   2018-09-10 Usher, Tracy L : Merge branch ‘master’ into feature/usher\_edgedrawingoptions
-   2018-08-28 Usher, Tracy L : Merge branch ‘develop’ into feature/usher\_edgedrawingoptions
-   2018-08-20 Usher, Tracy L : Output all space points, change colors for hits when multiple sources, prevent crash in sim drawing
-   2018-08-20 Usher, Tracy L : Merge branch ‘master’ into feature/usher\_edgedrawingoptions
-   2018-08-20 Usher, Tracy L : Merge branch ‘feature/usher\_edgedrawingoptions’ of ssh://cdcvs.fnal.gov/cvs/projects/lareventdisplay into feature/usher\_edgedrawingoptions
-   2018-08-20 Usher, Tracy L : Fix build issues
-   2018-08-15 Usher, Tracy L : Merge branch ‘develop’ into feature/usher\_edgedrawingoptions
-   2018-08-10 Usher, Tracy L : Merge branch ‘develop’ into feature/usher\_edgedrawingoptions
-   2018-08-10 Usher, Tracy L : Draw energy deposits with color given by particle ID
-   2018-08-02 Usher, Tracy L : Merge branch ‘master’ into feature/usher\_edgedrawingoptions
-   2018-08-02 Usher, Tracy L : setting up to start moving 3D drawing code out of the monolithic reco base drawer
-   2018-08-02 Usher, Tracy L : Adding stuff
-   2018-07-27 Usher, Tracy L : Merge branch ‘master’ into feature/usher\_edgedrawingoptions
-   2018-07-23 Usher, Tracy L : Merge branch ‘master’ into feature/usher\_edgedrawingoptions
-   2018-07-13 Usher, Tracy L : Protect against missing SimEnergyDeposit objects
-   2018-07-13 Usher, Tracy L : Adding initial SimEnergyDeposit display and activating
-   2018-07-12 Usher, Tracy L : Get the right name for the tools
-   2018-07-12 Usher, Tracy L : Updates primarily aimed at introducing the new Sim 3D drawing tools
-   2018-07-12 Usher, Tracy L : Converting the drawing of 3D truth to art tools. This allows us to introduce a drawer for SimEnergyDeposits
-   2018-07-06 Usher, Tracy L : Merge branch ‘master’ into feature/usher\_edgedrawingoptions
-   2018-07-06 Usher, Tracy L : TEMPORARY: space point drawing modified for special case
-   2018-07-06 Usher, Tracy L : Add a floating baseline option to the gauss hit drawer
-   2018-06-27 Usher, Tracy L : Merge branch ‘master’ into feature/usher\_edgedrawingoptions
-   2018-06-27 Usher, Tracy L : Allow for baseline shift hits
-   2018-06-23 Usher, Tracy L : Merge branch ‘master’ into feature/usher\_edgedrawingoptions
-   2018-06-17 Usher, Tracy L : Merge branch ‘master’ into feature/usher\_edgedrawingoptions
-   2018-06-17 Usher, Tracy L : First round of updates to use art tools to draw the hits on waveform displays. Also try to use a 3D marker box to draw space points (though not yet active while sorting out the zoom issues)
-   2018-06-17 Usher, Tracy L : Moving the drawing of “hits” on the waveform display to art tools so they can be “easily” interchanged if necessary
-   2018-06-08 Usher, Tracy L : Merge branch ‘master’ into feature/usher\_edgedrawingoptions
-   2018-05-29 Usher, Tracy L : Adding fhicl controllable option for putting experiment name into the LArSoft display
-   2018-05-26 Usher, Tracy L : Merge branch ‘master’ into feature/usher\_edgedrawingoptions
-   2018-05-18 Usher, Tracy L : Merge branch ‘master’ into feature/usher\_edgedrawingoptions
-   2018-05-10 Usher, Tracy L : Merge branch ‘master’ into feature/usher\_edgedrawingoptions
-   2018-04-27 Usher, Tracy L : Merge branch ‘master’ into feature/usher\_edgedrawingoptions
-   2018-04-12 Usher, Tracy L : Merge branch ‘master’ into feature/usher\_edgedrawingoptions
-   2018-04-05 Usher, Tracy L : Merge remote-tracking branch ‘origin/feature/team\_for\_c2’ into feature/usher\_edgedrawingoptions
-   2018-03-02 Usher, Tracy L : Merge branch ‘master’ into feature/usher\_edgedrawingoptions
-   2018-03-01 Usher, Tracy L : Merge branch ‘master’ into feature/usher\_edgedrawingoptions
-   2018-03-01 Usher, Tracy L : Tweaking the edge display
-   2018-02-19 Usher, Tracy L : Merge branch ‘master’ into feature/usher\_edgedrawingoptions
-   2018-02-19 Usher, Tracy L : Tweaking output of edges plus some diagnostic output
-   2018-02-07 Usher, Tracy L : Merge branch ‘master’ into feature/usher\_edgedrawingoptions
-   2018-02-07 Usher, Tracy L : Tweak weighting of the space points in 3D PFParticle display
-   2018-02-03 Usher, Tracy L : Merge branch ‘master’ into feature/usher\_edgedrawingoptions
-   2018-02-03 Usher, Tracy L : Adds a function to compute a SpacePoint “chisquare”, modify the PFParticle 3D display to use this to code the color scheme.
-   2018-02-03 Usher, Tracy L : I believe this fixes timing offsets for out of time particles and for multi-TPC experiments.
-   2018-01-25 Usher, Tracy L : Adding more options for drawing edges, going to a feature branch for now

larexamples v08\_01\_00(#larexamples-v08_01_00)
--------------------------------------------------

larg4 v08\_01\_00(#larg4-v08_01_00)
--------------------------------------

larpandora v08\_03\_01(#larpandora-v08_03_01)
------------------------------------------------

-   2019-01-23 Lynn Garren : larpandora v08\_03\_01 for larsoft v08\_06\_00

larwirecell v08\_02\_00(#larwirecell-v08_02_00)
--------------------------------------------------

larana v08\_01\_01(#larana-v08_01_01)
----------------------------------------

-   2019-01-23 Lynn Garren : larana v08\_01\_01 for larsoft v08\_06\_00
-   2019-01-22 Usher, Tracy L : Third time is a charm!
-   2019-01-22 Usher, Tracy L : Pass pointer, not reference
-   2019-01-22 Usher, Tracy L : fix compilation error associated with update to 3D clustering object definitions

larreco v08\_05\_00(#larreco-v08_05_00)
------------------------------------------

-   2019-01-23 Lynn Garren : larreco v08\_05\_00 for larsoft v08\_06\_00
-   2019-01-23 Lynn Garren : Merge branch ‘develop’ into release/v08\_06\_00
-   2019-01-23 Tingjun Yang : Use the right parameter.
-   2019-01-22 Lynn Garren : Merge branch ‘feature/usher\_cluster3dspacepoints’ into release/v08\_06\_00
-   2019-01-22 Usher, Tracy L : Adding basic and optional histogram output
-   2019-01-21 Usher, Tracy L : Some more tweaks, putting in repository
-   2019-01-20 baller : Fix bug in TrimEndPts
-   2019-01-20 baller : Require high MCSMom trajectory in FindHammerVertices
-   2019-01-19 Usher, Tracy L : Change from treating the PCA as a cylinder to an elliptical tube
-   2019-01-19 Usher, Tracy L : Push the declaration of “produces” to the space point building module and add fhicl flags to determine if we should do Wire and RawDigit associations
-   2019-01-17 Usher, Tracy L : Merge branch ‘master’ into feature/usher\_cluster3dspacepoints
-   2019-01-17 Usher, Tracy L : Revamped scheme, fixed some massive bugs and re-histogrammed… prototype for final version…
-   2019-01-15 Usher, Tracy L : Last updates for now
-   2019-01-14 Usher, Tracy L : Very much a work in progress but making some forward progress.
-   2019-01-14 Usher, Tracy L : Code cleanup
-   2019-01-13 Usher, Tracy L : Merge branch ‘master’ into feature/usher\_cluster3dspacepoints
-   2019-01-13 Usher, Tracy L : The eigen solver returns principal components axes in a right handed system with the smallest spread in the “x” (index 0) and largest in “z” (index 2). Instead of always resorting to the opposite order, accept this order and modify downstream code accordingly.
-   2019-01-11 Usher, Tracy L : a few tweaks, clean out the current output statements
-   2019-01-09 Usher, Tracy L : Modified procedure for determining if clusters are consistent by looking at the 3D space points nearest along the vector between the PCA centers…
-   2019-01-09 Usher, Tracy L : Convert the calculation of the PCA to a double… this because it appeared there was the possibility of a nan in the third eigen value… but this may be a red herring…
-   2019-01-09 Usher, Tracy L : Convert position in definition of ClusterHit3D to an Eigen::Vector3f to facilitate calculations in user code. Ripple the changes through the affected code.
-   2019-01-03 Usher, Tracy L : This version is based on looking at distance of PCA centers to their axes… not quite what as efficient as one might like
-   2019-01-03 Usher, Tracy L : Do a better job of counting the 2D hits, in particular how many are unique vs shared
-   2019-01-03 Usher, Tracy L : Remove unused fhicl variable
-   2019-01-03 Usher, Tracy L : Add a fhicl variable (a vector) containing a list of “invalid” TPC’s that can be skipped when making 2D hits.
-   2019-01-03 Usher, Tracy L : Modify the checking of “consistent” pairs to differentiate the drift direction from the y-z direction. Enforce a limit on total number of wires than can be changed for pairs to be near.
-   2019-01-03 Usher, Tracy L : Primarily updates to accommodate the conversion of the cluster parameters building to an art tool
-   2019-01-03 Usher, Tracy L : The interface class and the art tool for handling the cluster parameters. Also, try to simplify the cluster selection (this continues to be work in progress)
-   2019-01-03 Usher, Tracy L : Reimplement this as an art tool
-   2019-01-01 Usher, Tracy L : Changes for new definition of PrincipalComponents and some general cleanup
-   2019-01-01 Usher, Tracy L : Output message only once, realize we don’t need extra looping when associating hits to all valid WireIDs.
-   2019-01-01 Usher, Tracy L : Changes to reflect new definition of PrincipalComponents objects
-   2019-01-01 Usher, Tracy L : Revamp the PrincipalComponents definition for consistent usage of Eigen Vectors and Matrices.
-   2018-12-27 Usher, Tracy L : A big round of updates which address the issue where for some geometries a recob::Hit which belongs to a given readout channel can be associated to more than one WireID. The code should now handle this case transparently. Also update the scheme so that it outputs a new recob::Hit collection which has only those hits used to form 3D space points and, importantly, the WireID for that hit has been set to match the element the SpacePoint appears in.
-   2018-12-19 Usher, Tracy L : Merge branch ‘develop’ into feature/usher\_cluster3dspacepoints
-   2018-12-15 Usher, Tracy L : Merge branch ‘master’ into feature/usher\_cluster3dspacepoints
-   2018-12-12 Usher, Tracy L : Merge remote-tracking branch ‘origin/v08\_00\_00\_rc\_br’ into feature/usher\_cluster3dspacepoints
-   2018-12-12 Usher, Tracy L : Rearrange the fhicl file to better group the variables, add ability to output histograms but turn off waveform hists in the morphological filter tool
-   2018-12-06 Usher, Tracy L : Merge branch ‘develop’ into feature/usher\_cluster3dspacepoints
-   2018-11-15 Usher, Tracy L : Merge branch ‘develop’ into feature/usher\_cluster3dspacepoints
-   2018-11-09 Usher, Tracy L : Merge branch ‘develop’ into feature/usher\_cluster3dspacepoints
-   2018-11-08 Usher, Tracy L : Merging update from develop branch
-   2018-11-03 Usher, Tracy L : Merge branch ‘develop’ into feature/usher\_cluster3dspacepoints
-   2018-10-25 Usher, Tracy L : Merge branch ‘develop’ into feature/usher\_cluster3dspacepoints
-   2018-10-12 Usher, Tracy L : Merge branch ‘develop’ into feature/usher\_cluster3dspacepoints
-   2018-10-06 Usher, Tracy L : Merge branch ‘develop’ into feature/usher\_cluster3dspacepoints
-   2018-09-27 Usher, Tracy L : Merge branch ‘develop’ into feature/usher\_cluster3dspacepoints
-   2018-09-19 Usher, Tracy L : Merge branch ‘develop’ into feature/usher\_cluster3dspacepoints
-   2018-09-10 Usher, Tracy L : Merge branch ‘develop’ into feature/usher\_cluster3dspacepoints
-   2018-08-28 Usher, Tracy L : Merge branch ‘develop’ into feature/usher\_cluster3dspacepoints
-   2018-08-20 Usher, Tracy L : Merge branch ‘develop’ into feature/usher\_cluster3dspacepoints
-   2018-08-15 Usher, Tracy L : Merge branch ‘develop’ into feature/usher\_cluster3dspacepoints
-   2018-08-13 Usher, Tracy L : Merge branch ‘develop’ into feature/usher\_cluster3dspacepoints
-   2018-08-10 Usher, Tracy L : Merge branch ‘develop’ into feature/usher\_cluster3dspacepoints
-   2018-08-10 Usher, Tracy L : Working on order of breaking of clusters
-   2018-08-05 Usher, Tracy L : Merge branch ‘develop’ into feature/usher\_cluster3dspacepoints
-   2018-08-05 Usher, Tracy L : Implement a simple tool interface to cleanly read hits from a specific detector into the solver
-   2018-08-05 Usher, Tracy L : Adding another pointlist to contain the actual convex hull

larsim v08\_02\_00(#larsim-v08_02_00)
----------------------------------------

larevt v08\_01\_00(#larevt-v08_01_00)
----------------------------------------

lardata v08\_02\_00(#lardata-v08_02_00)
------------------------------------------

larcore v08\_01\_00(#larcore-v08_01_00)
------------------------------------------

larpandoracontent v03\_14\_04(#larpandoracontent-v03_14_04)
--------------------------------------------------------------

larsoftobj v08\_03\_00(#larsoftobj-v08_03_00)
------------------------------------------------

lardataobj v08\_01\_00(#lardataobj-v08_01_00)
------------------------------------------------

lardataalg v08\_03\_00(#lardataalg-v08_03_00)
------------------------------------------------

larcorealg v08\_01\_00(#larcorealg-v08_01_00)
------------------------------------------------

larcoreobj v08\_01\_00(#larcoreobj-v08_01_00)
------------------------------------------------

larbatch v01\_47\_03(#larbatch-v01_47_03)
--------------------------------------------

larutils v1\_23\_10(#larutils-v1_23_10)
------------------------------------------

-   2019-01-23 Lynn Garren : larutils v1\_23\_10 for larsoft v08\_06\_00
-   2019-01-15 Lynn Garren : add s71
