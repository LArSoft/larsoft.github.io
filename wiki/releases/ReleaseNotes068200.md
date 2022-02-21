# LArSoft v06_82_00 Release Notes



[list of LArSoft releases](LArSoft_release_list)  
Download instructions for [larsoft v06_82_00](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v06_82_00/larsoft-v06_82_00.html)  
Download instructions for [just larsoftobj v1_47_02](http://scisoft.fnal.gov/scisoft/bundles/larsoftobj/v1_47_02/larsoftobj-v1_47_02.html)

## Purpose

-   changes in develop
-   approved feature branches

## New features

-   larreco lardata feature/usher_cluster3dupdates
    -   https://indico.fnal.gov/event/17395/contribution/1/material/slides/0.pdf
    -   Cluster3D.h moved and depends explicitly on Eigen
    -   See the [Breaking Changes](Breaking_Changes#Cluster3Dh-moved-from-lardata-to-larreco)
-   `larcore` and `larcorealg`: `feature/gp_GeometryDumper`
    -   new `DumpGeometry` module
    -   `geometry.fcl` now refers to `geometry_lartpcdetector.fcl` (in `larcorealg`)

## Bug fixes

## Updated dependencies

-   mrb v1_16_01

# Change List

## larsoft v06_82_00

-   2018-06-26 Lynn Garren : larsoft v06_82_00 for larsoft v06_82_00
-   2018-06-26 Lynn Garren : update versions
-   2018-06-26 Lynn Garren : script for Cluster3D
-   2018-06-26 Lynn Garren : mrb v1_16_01
-   2018-06-26 Lynn Garren : update dependency database

## lareventdisplay v06_20_03

-   2018-06-26 Lynn Garren : lareventdisplay v06_20_03 for larsoft v06_82_00

## larexamples v06_14_03

-   2018-06-26 Lynn Garren : larexamples v06_14_03 for larsoft v06_82_00

## larpandora v06_31_01

-   2018-06-26 Lynn Garren : larpandora v06_31_01 for larsoft v06_82_00

## larwirecell v06_14_03

-   2018-06-26 Lynn Garren : larwirecell v06_14_03 for larsoft v06_82_00

## larana v06_20_03

-   2018-06-26 Lynn Garren : larana v06_20_03 for larsoft v06_82_00
-   2018-06-26 Lynn Garren : need eigen headers
-   2018-06-26 Lynn Garren : lardata/RecoObjects/Cluster3D.h moved to larreco/RecoAlg/Cluster3DAlgs/Cluster3D.h

## larreco v06_63_00

-   2018-06-26 Lynn Garren : larreco v06_63_00 for larsoft v06_82_00
-   2018-06-26 Lynn Garren : larreco v06_63_00 for larsoft v06_82_00
-   2018-06-26 Lynn Garren : remove temp fix
-   2018-06-26 Usher, Tracy L : Add definition of morphological filter based candidate hit finding tool
-   2018-06-26 Usher, Tracy L : Change access to waveform tools
-   2018-06-26 Usher, Tracy L : Adding a new candidate hit finding method utilizing a combination of morphological filtering and differentiation
-   2018-06-26 Usher, Tracy L : Remove the old version of the waveform tools and replace with significantly enhanced version which includes many new features
-   2018-06-23 Usher, Tracy L : Merge branch 'develop' into feature/usher_cluster3dupdates
-   2018-06-23 Usher, Tracy L : comment out the test for now (wondering if test module should simply be deleted?)
-   2018-06-20 Usher, Tracy L : Final code cleanup and also bring all fhicl files in larreco/hitfinder up to date.
-   2018-06-20 Usher, Tracy L : Merge branch 'develop' of ssh://cdcvs.fnal.gov/cvs/projects/larreco into feature/usher_cluster3dupdates
-   2018-06-17 Usher, Tracy L : Merge branch 'master' into feature/usher_cluster3dupdates
-   2018-06-17 Usher, Tracy L : Primarily updates to the gaushit finder to improve the efficiency for hit finding. Also including update from Bruce to fix an issue causing crashes in TrajCluster
-   2018-06-08 Usher, Tracy L : Merge branch 'develop' into feature/usher_cluster3dupdates
-   2018-05-29 Usher, Tracy L : Modify the candidate hit finding tool interface so that a tool is instantiated for each “plane” one is working with. This allows for more direct/obvious control of parameters for individual planes. Ultimately this could be extended to more fine detail…. (e.g. for a plane in a given tpc in a given cryo) but not there yet.
-   2018-05-26 Usher, Tracy L : Merge branch 'master' into feature/usher_cluster3dupdates
-   2018-05-18 Usher, Tracy L : Merge branch 'master' into feature/usher_cluster3dupdates
-   2018-05-10 Usher, Tracy L : Merge branch 'master' into feature/usher_cluster3dupdates
-   2018-04-27 Usher, Tracy L : Merge branch 'master' into feature/usher_cluster3dupdates
-   2018-04-27 Usher, Tracy L : Introduce a new “path finding” tool to use the Voronoi Diagram
-   2018-04-12 Usher, Tracy L : Merge branch 'master' into feature/usher_cluster3dupdates
-   2018-04-04 Usher, Tracy L : Fix compiler issues for clang compiler
-   2018-04-04 Usher, Tracy L : Merge remote-tracking branch 'origin/feature/team_for_c2' into feature/usher_cluster3dupdates
-   2018-04-04 Usher, Tracy L : Merge branch 'feature/usher_cluster3dupdates' of ssh://cdcvs.fnal.gov/cvs/projects/larreco into feature/usher_cluster3dupdates
-   2018-04-04 Usher, Tracy L : Cleaning up the hit finding a bit
-   2018-03-02 Usher, Tracy L : Merge branch 'master' into feature/usher_cluster3dupdates
-   2018-03-01 Usher, Tracy L : Merge branch 'master' into feature/usher_cluster3dupdates
-   2018-03-01 Usher, Tracy L : Continued develop of the voronoi diagram approach
-   2018-02-19 Usher, Tracy L : Merge branch 'master' into feature/usher_cluster3dupdates
-   2018-02-19 Usher, Tracy L : First attempt at fixing beach line comparison round off error issue + LOTS of diagnostic output
-   2018-02-19 Usher, Tracy L : for test program
-   2018-02-19 Usher, Tracy L : Primarily diagnostics - warning generating lots of output to screen right now
-   2018-02-19 Usher, Tracy L : Adding ability to swap in the first candidate trajectory output ability
-   2018-02-19 Usher, Tracy L : commenting out output for now
-   2018-02-19 Usher, Tracy L : Trying to optimize the utilities a bit, round off error is definitely an issue to keep aware of
-   2018-02-19 Usher, Tracy L : Adding the outline of a test program…
-   2018-02-07 Usher, Tracy L : Merge branch 'master' into feature/usher_cluster3dupdates
-   2018-02-07 Usher, Tracy L : Development…
-   2018-02-07 Usher, Tracy L : development…
-   2018-02-07 Usher, Tracy L : test weighting scheme based on 3D hit chisquare
-   2018-02-07 Usher, Tracy L : Development…
-   2018-02-03 Usher, Tracy L : Merge branch 'develop' into feature/usher_cluster3dupdates
-   2018-02-03 Usher, Tracy L : Major update is to convert to “hit chisquare” in favor of the old scheme using hit “significance”.
-   2018-01-25 Usher, Tracy L : Merge branch 'master' into feature/usher_cluster3dupdates
-   2018-01-25 Usher, Tracy L : Mostly updating to move of data definitions from lardata to the local folder
-   2018-01-25 Usher, Tracy L : Implementation of voronoi diagram building code - still in progress
-   2018-01-25 Usher, Tracy L : Moving from lardata to local folder
-   2017-12-22 Usher, Tracy L : Merge branch 'develop' into feature/usher_cluster3dupdates
-   2017-12-22 Usher, Tracy L : updates for working code
-   2017-12-22 Usher, Tracy L : This is very much work in progress, not at all remotely working at the moment but importing this working code in order to facilitate upgrade to larsoft v06_61_00
-   2017-12-14 Usher, Tracy L : Merge branch 'develop' into feature/usher_cluster3dupdates
-   2017-12-01 Usher, Tracy L : Merge branch 'develop' into feature/usher_cluster3dupdates
-   2017-11-24 Usher, Tracy L : Merge branch 'develop' into feature/usher_cluster3dupdates
-   2017-11-15 Usher, Tracy L : Merge branch 'master' into feature/usher_cluster3dupdates
-   2017-11-15 Usher, Tracy L : Lots of development going on here, updating to next larsoft version
-   2017-11-15 Usher, Tracy L : Adding a simple 2D Convex Hull object
-   2017-11-06 Usher, Tracy L : Merge branch 'develop' into feature/usher_cluster3dupdates
-   2017-11-06 Usher, Tracy L : Development worked based on ICARUS (horizontal wires present some interesting features!)
-   2017-11-06 Usher, Tracy L : Enforce a minimum allowed value for the width during the fit
-   2017-10-27 Usher, Tracy L : Merge branch 'master' into feature/usher_cluster3dupdates
-   2017-10-27 Usher, Tracy L : temporary kludge to get tracks to match across the cathode in ICARUS
-   2017-10-19 Usher, Tracy L : Merge branch 'master' into feature/usher_cluster3dupdates
-   2017-10-19 Usher, Tracy L : Merge branch 'develop' into feature/usher_cluster3dupdates
-   2017-10-19 Usher, Tracy L : This is work in progress aimed at ICARUS related stuff
-   2017-10-06 Usher, Tracy L : Merge branch 'develop' into feature/usher_cluster3dupdates
-   2017-10-06 Usher, Tracy L : adding new tools
-   2017-10-06 Usher, Tracy L : Trying to simplify the build process
-   2017-10-06 Usher, Tracy L : Updates reflecting introduction of new tools and changes in code handling…
-   2017-10-06 Usher, Tracy L : Introduce a basic path finding algorithm built on PCA
-   2017-10-06 Usher, Tracy L : Building of 3D hits now done by art tools, add a tool which can take as input a 3D space point builder with associations to 2D hits (e.g. SpacePointSolver)
-   2017-10-06 Usher, Tracy L : Slight changes aimed at performance
-   2017-10-06 Usher, Tracy L : A small modification aimed at outputting associations to space points of 2D hits in induction planes
-   2017-10-06 Usher, Tracy L : Tweaking selection cuts
-   2017-10-06 Usher, Tracy L : Move to tool scheme for building 3D hits, delete old algorithm
-   2017-10-01 Usher, Tracy L : Merge branch 'feature/usher_cluster3dupdates' of ssh://cdcvs.fnal.gov/cvs/projects/larreco into feature/usher_cluster3dupdates
-   2017-10-01 Usher, Tracy L : Work in progress, updating to v06_51_00

## larsim v06_50_03

-   2018-06-26 Lynn Garren : larsim v06_50_03 for larsoft v06_82_00

## larevt v06_22_01

-   2018-06-26 Lynn Garren : larevt v06_22_01 for larsoft v06_82_00

## lardata v06_47_00

-   2018-06-26 Lynn Garren : lardata v06_47_00 for larsoft v06_82_00
-   2018-06-20 Lynn Garren : fMinConvKernelFrac is unused
-   2018-06-17 Usher, Tracy L : Merge branch 'master' into feature/usher_cluster3dupdates
-   2018-06-08 Usher, Tracy L : Merge branch 'master' into feature/usher_cluster3dupdates
-   2018-05-26 Usher, Tracy L : Merge branch 'master' into feature/usher_cluster3dupdates
-   2018-05-18 Usher, Tracy L : Merge branch 'master' into feature/usher_cluster3dupdates
-   2018-05-10 Usher, Tracy L : Merge branch 'master' into feature/usher_cluster3dupdates
-   2018-05-08 Usher, Tracy L : Set initial condition a bit more carefully
-   2018-04-27 Usher, Tracy L : Merge branch 'master' into feature/usher_cluster3dupdates
-   2018-04-19 Usher, Tracy L : Fix bug and try to smoothly set the response in the region where the response function approaches zero
-   2018-04-12 Usher, Tracy L : Merge branch 'master' into feature/usher_cluster3dupdates
-   2018-04-05 Usher, Tracy L : Trying to make the module readable, minor changes to use stl algorithms instead of loops
-   2018-04-04 Usher, Tracy L : Removing from lardata
-   2018-04-04 Usher, Tracy L : Merge remote-tracking branch 'origin/feature/team_for_c2' into feature/usher_cluster3dupdates
-   2018-03-02 Usher, Tracy L : Merge branch 'master' into feature/usher_cluster3dupdates
-   2018-03-01 Usher, Tracy L : Merge branch 'master' into feature/usher_cluster3dupdates
-   2018-02-19 Usher, Tracy L : Merge branch 'develop' into feature/usher_cluster3dupdates
-   2018-02-07 Usher, Tracy L : Merge branch 'master' into feature/usher_cluster3dupdates
-   2018-02-03 Usher, Tracy L : Merge branch 'master' into feature/usher_cluster3dupdates
-   2018-01-30 Usher, Tracy L : Merge branch 'master' into feature/usher_cluster3dupdates
-   2018-01-25 Usher, Tracy L : Moving these definitions to the local folder in larreco cluster3dalgs
-   2017-12-22 Usher, Tracy L : Merge branch 'master' into feature/usher_cluster3dupdates
-   2017-12-14 Usher, Tracy L : Merge branch 'master' into feature/usher_cluster3dupdates
-   2017-12-01 Usher, Tracy L : Merge branch 'master' into feature/usher_cluster3dupdates
-   2017-11-24 Usher, Tracy L : Merge branch 'master' into feature/usher_cluster3dupdates
-   2017-11-15 Usher, Tracy L : Merge branch 'master' into feature/usher_cluster3dupdates
-   2017-11-15 Usher, Tracy L : updates aimed at accommodating new convex hull class
-   2017-11-06 Usher, Tracy L : Merge branch 'develop' into feature/usher_cluster3dupdates
-   2017-10-27 Usher, Tracy L : Merge branch 'master' into feature/usher_cluster3dupdates
-   2017-10-19 Usher, Tracy L : Merge branch 'master' into feature/usher_cluster3dupdates
-   2017-10-19 Usher, Tracy L : Merge branch 'develop' into feature/usher_cluster3dupdates
-   2017-10-06 Usher, Tracy L : Merge branch 'develop' into feature/usher_cluster3dupdates
-   2017-10-06 Usher, Tracy L : Modify the definition of clusters to allow the creation of “daughters”.

## larcore v06_21_00

-   2018-06-26 Lynn Garren : larcore v06_21_00 for larsoft v06_82_00
-   2018-06-25 Lynn Garren : Merge branch 'feature/gp_GeometryDumper' into release/v06_82_00
-   2018-06-21 Gianluca Petrillo : Removed duplicate configuration file (also in larcorealg)
-   2018-05-30 Gianluca Petrillo : DumpGeometry supporting jobs with no event at all.
-   2018-05-29 Lynn Garren : ignore some files
-   2018-05-24 Lynn Garren : larcore v06_19_03 for larsoft v06_78_00
-   2018-05-15 Lynn Garren : larcore v06_19_02_01
-   2018-05-14 Lynn Garren : only one messagefacility library
-   2018-05-14 Lynn Garren : cetlib_except/exception.h
-   2018-05-30 Gianluca Petrillo : Added module to dump the geometry.

## larpandoracontent v03_13_00

## larsoftobj v1_47_02

-   2018-06-26 Lynn Garren : larsoftobj v1_47_02 for larsoft v06_82_00
-   2018-06-26 Lynn Garren : update versions
-   2018-06-26 Lynn Garren : mrb v1_16_01

## lardataobj v1_33_00

## lardataalg v1_01_02

-   2018-06-26 Lynn Garren : lardataalg v1_01_02 for larsoft v06_82_00

## larcorealg v1_23_01

-   2018-06-26 Lynn Garren : larcorealg v1_23_01 for larsoft v06_82_00
-   2018-06-25 Lynn Garren : Merge branch 'feature/gp_GeometryDumper' into release/v06_82_00
-   2018-06-21 Gianluca Petrillo : Updated geometry configuration for the “standard” LArTPC detector.
-   2018-06-20 Paul Russo : Fix documentation typo.
-   2018-06-20 Lynn Garren : ignore files ending in \~

## larcoreobj v1_24_00

## larbatch v01_42_00

-   2018-06-26 Lynn Garren : larbatch v01_42_00 for larsoft v06_82_00
-   2018-06-25 Herbert Greenlee : Add <dropboxwait>.
-   2018-06-25 Herbert Greenlee : Add dropbox wait interval.

## larutils v1_22_07
