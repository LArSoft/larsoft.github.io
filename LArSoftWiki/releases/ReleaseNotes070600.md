# LArSoft v07_06_00 Release Notes



[list of LArSoft releases](LArSoft_release_list)  
Download instructions for [larsoft v07_06_00](https://scisoft.fnal.gov/scisoft/bundles/larsoft/v07_06_00/larsoft-v07_06_00.html)  
Download instructions for [just larsoftobj v07_03_00](https://scisoft.fnal.gov/scisoft/bundles/larsoftobj/v07_03_00/larsoftobj-v07_03_00.html)

## Purpose

-   changes in develop
-   approved feature branches

## New features

-   move MCDumpers to lardataalg from larsim \#18281
    -   larsim : feature/ss_issue18281
    -   larg4 : feature/ss_issue18281
    -   lardataalg : feature/ss_issue18281
-   Shower Reconstruction Algorithm for Electrons
    -   larreco feature/rsf_TCNueSelection
    -   https://indico.fnal.gov/event/18244/contribution/1/material/slides/0.pdf
-   implementing the optical detector response in dune dual phase.
    -   larana feature/jsoto_opdigiproperties_chargenormalization
    -   OpDigiProperties_service provides a feature to read a waveform, and it normalizes it by its amplitude. DUNE needs to normalize by the charge (its integral). Implemented with a new fhicl parameter (false by default) that changes the normalization.

## Bug fixes

## Updated dependencies

-   systematics packages added to distribution
    -   https://indico.fnal.gov/event/17640/contribution/3/material/slides/0.pdf
    -   systematicstools v00_01_01
    -   nusystematics v00_01_01

# Change List

## larsoft v07_06_00

-   2018-09-11 Lynn Garren : larsoft v07_06_00 for larsoft v07_06_00
-   2018-09-11 Lynn Garren : update versions
-   2018-09-11 Lynn Garren : update dependency database
-   2018-09-10 Lynn Garren : add systematicstools and nusystematics

## lareventdisplay v07_01_04

-   2018-09-11 Lynn Garren : lareventdisplay v07_01_04 for larsoft v07_06_00

## larexamples v07_00_07

-   2018-09-11 Lynn Garren : larexamples v07_00_07 for larsoft v07_06_00

## larg4 v07_01_02

-   2018-09-11 Lynn Garren : larg4 v07_01_02 for larsoft v07_06_00
-   2018-09-09 Saba Sehrish : updated header for MCDumpers to lardataalg

## larpandora v07_01_04

-   2018-09-11 Lynn Garren : larpandora v07_01_04 for larsoft v07_06_00

## larwirecell v07_01_01

-   2018-09-11 Lynn Garren : larwirecell v07_01_01 for larsoft v07_06_00

## larana v07_02_00

-   2018-09-11 Lynn Garren : larana v07_02_00 for larsoft v07_06_00
-   2018-09-11 Jose Soto : Added a fhicl parameter to normalize the waveform by the charge

## larreco v07_04_00

-   2018-09-11 Lynn Garren : larreco v07_04_00 for larsoft v07_06_00
-   2018-09-11 Lynn Garren : larreco v07_04_00 for larsoft v07_06_00
-   2018-09-11 Lynn Garren : deal with unused variables
-   2018-09-10 Rory Fitzpatrick : add slice-shower association
-   2018-09-10 Rory Fitzpatrick : Merge branch 'feature/rsf_TCNueSelection' of ssh://cdcvs.fnal.gov/cvs/projects/larreco into feature/rsf_TCNueSelection
-   2018-09-10 Rory Fitzpatrick : added slice-shower association. won't compile currently
-   2018-09-08 Tingjun Yang : Add code to handle bad channels. Disable for now.
-   2018-09-07 Tingjun Yang : Remove hardcoded skip pdg value.
-   2018-09-07 Tingjun Yang : Fix hit-slice association, resolve \#20777.
-   2018-09-07 Rory Fitzpatrick : fixing merge conflicts
-   2018-09-07 Rory Fitzpatrick : Merge branch 'feature/rsf_TCNueSelection' of ssh://cdcvs.fnal.gov/cvs/projects/larreco into feature/rsf_TCNueSelection
-   2018-09-07 Rory Fitzpatrick : committing in order to merge
-   2018-09-07 Tingjun Yang : Clear shower hits before looking at each track.
-   2018-09-06 Rory Fitzpatrick : Merge remote-tracking branch 'origin/develop' into feature/rsf_TCNueSelection
-   2018-09-05 Rory Fitzpatrick : added TCShowerAnalysis for truth matching
-   2018-09-04 Rory Fitzpatrick : Merge branch 'feature/rsf_TCNueSelection' of ssh://cdcvs.fnal.gov/cvs/projects/larreco into feature/rsf_TCNueSelection
-   2018-09-04 Rory Fitzpatrick : added maximum track length cut
-   2018-09-04 Tingjun Yang : Take all clusters associated with slice when reconstructing shower.
-   2018-09-04 baller : Add Slice - Cluster assns
-   2018-08-31 baller : bug fixes
-   2018-08-31 Tingjun Yang : Merge branch 'feature/rsf_TCNueSelection' of ssh://cdcvs.fnal.gov/cvs/projects/larreco into feature/rsf_TCNueSelection
-   2018-08-31 Tingjun Yang : Change fcl configurations.
-   2018-08-30 baller : Fix bug in ID check.
-   2018-08-29 Rory Fitzpatrick : initial implementation using slices. compiles, needs to be tested
-   2018-08-27 Rory Fitzpatrick : more restructuring
-   2018-08-27 Rory Fitzpatrick : restructuring tcshower in preparation for using slices
-   2018-08-24 Rory Fitzpatrick : Merge remote-tracking branch 'origin' into feature/rsf_TCNueSelection
-   2018-08-22 Rory Fitzpatrick : minor updates
-   2018-08-22 Rory Fitzpatrick : fixed likelihood calculation
-   2018-08-22 Rory Fitzpatrick : binning adjustments and not including 0 bins in calculations
-   2018-08-22 Rory Fitzpatrick : initial implementation of electron likelihood
-   2018-08-08 Rory Fitzpatrick : now making energy templates up to electron energies of 20 GeV
-   2018-08-08 Rory Fitzpatrick : calculate energy chi2 using binned transverse profiles
-   2018-08-08 Rory Fitzpatrick : save transverse templates by radiation length for use with TCShowerElectronLikelihood
-   2018-08-06 Rory Fitzpatrick : split transverse profiles into bins by radiation length
-   2018-08-03 Rory Fitzpatrick : initial implemenation of chi2 test for energy guess
-   2018-08-03 Rory Fitzpatrick : initial commit of TCShowerElectronLikelihood
-   2018-08-02 Rory Fitzpatrick : renamed TCShowerAnalysis to TCShowerTemplateMaker
-   2018-08-02 Rory Fitzpatrick : code cleanup and variable consistency
-   2018-08-01 Rory Fitzpatrick : transverse electron profiles added
-   2018-08-01 Rory Fitzpatrick : longitudinal profiles binned by energy and implementation of sim channel transverse profiles
-   2018-08-01 Rory Fitzpatrick : minor updates
-   2018-08-01 Rory Fitzpatrick : fixed distance calculation in shower profile and code cleanup
-   2018-08-01 Rory Fitzpatrick : added fixes to showerProfile and showerProfile true (with hits)
-   2018-08-01 Rory Fitzpatrick : code cleanup
-   2018-07-30 Rory Fitzpatrick : finish 3D truth profile implementation and bug fixes in plotting
-   2018-07-27 Rory Fitzpatrick : including simchannel level information
-   2018-07-26 Rory Fitzpatrick : finish implementation of true electron longitudinal profile
-   2018-07-26 Rory Fitzpatrick : fixed bug in ShowerProfile function
-   2018-07-25 Rory Fitzpatrick : more preliminary work on true shower profiles
-   2018-07-25 Rory Fitzpatrick : true shower longitudinal profile initial commit
-   2018-07-19 Rory Fitzpatrick : minor updates to TCShowerAnalysis
-   2018-07-16 Rory Fitzpatrick : remove redundant analysis code from TCShower
-   2018-07-16 Rory Fitzpatrick : updated showerfindermodules to include tcshoweranalysis
-   2018-07-16 Rory Fitzpatrick : initial commit of TCShowerAnalysis
-   2018-07-13 Rory Fitzpatrick : shower profile initial implementation
-   2018-07-03 Rory Fitzpatrick : working dE/dx and code cleanup
-   2018-07-03 Rory Fitzpatrick : work on dedx implementatino
-   2018-06-18 Rory Fitzpatrick : code cleanup
-   2018-06-18 Rory Fitzpatrick : minor bug fix
-   2018-06-18 Rory Fitzpatrick : fixed bug adding repeat hits to shwoer and code cleanup
-   2018-06-15 Rory Fitzpatrick : improved addition of unclustered hit and downstream shower completeness
-   2018-06-15 Rory Fitzpatrick : update shower direction
-   2018-06-15 Rory Fitzpatrick : clean up code
-   2018-06-15 Rory Fitzpatrick : updated shower direction and resort tracks
-   2018-06-13 Rory Fitzpatrick : added linear regression for fitting primary electron direction, not currently using the function
-   2018-06-12 Tingjun Yang : To make the code work for more than 2 planes and multiple TPCs (e.g. DUNE).
-   2018-06-12 Rory Fitzpatrick : added comment to describe returns in goodHit
-   2018-06-12 Rory Fitzpatrick : add extraneous hits to showers
-   2018-06-12 Rory Fitzpatrick : restructuring to reduce repeat code snippets
-   2018-06-12 Rory Fitzpatrick : update loop indices
-   2018-06-12 Rory Fitzpatrick : Merge branch 'feature/bb_TCWork' into feature/rsf_TCNueSelection
-   2018-06-12 Rory Fitzpatrick : clean up and comment code
-   2018-06-12 Rory Fitzpatrick : exclude upstream clusters by checking angle between hits and track
-   2018-06-12 Rory Fitzpatrick : improved reconstruction of lower energy QElike events
-   2018-06-12 Rory Fitzpatrick : exclude tracks near vertex
-   2018-06-11 Rory Fitzpatrick : adding trajcluster changes from bb_TCWork
-   2018-06-11 Rory Fitzpatrick : working on removing tracks near vertex from shower
-   2018-06-11 Rory Fitzpatrick : now add all hits from close showerlike clusters and metric for distribution of clusters around track
-   2018-06-11 Rory Fitzpatrick : improved track direction
-   2018-06-08 Rory Fitzpatrick : added description to top of tcshower module
-   2018-06-08 Rory Fitzpatrick : initial commit of tcshower module

## larsim v07_03_00

-   2018-09-11 Lynn Garren : larsim v07_03_00 for larsoft v07_06_00
-   2018-09-09 Saba Sehrish : moved MCDumpers to lardataalg, updated headers

## larevt v07_00_07

-   2018-09-11 Lynn Garren : larevt v07_00_07 for larsoft v07_06_00

## lardata v07_00_07

-   2018-09-11 Lynn Garren : lardata v07_00_07 for larsoft v07_06_00

## larcore v07_00_02

## larpandoracontent v03_14_01

## larsoftobj v07_03_00

-   2018-09-11 Lynn Garren : larsoftobj v07_03_00 for larsoft v07_06_00
-   2018-09-11 Lynn Garren : update versions

## lardataobj v07_02_02

## lardataalg v07_01_00

-   2018-09-12 Lynn Garren : MCdumpers require lardataobj
-   2018-09-12 Lynn Garren : use cet_make
-   2018-09-11 Lynn Garren : lardataalg v07_01_00 for larsoft v07_06_00
-   2018-09-09 Saba Sehrish : Moved MCDumpers from larsim to lardataalg

## larcorealg v07_01_01

## larcoreobj v07_00_01

## larbatch v01_44_02

-   2018-09-11 Lynn Garren : larbatch v01_44_02 for larsoft v07_06_00
-   2018-09-08 Herbert Greenlee : Add support for pndr files.

## larutils v1_23_01
