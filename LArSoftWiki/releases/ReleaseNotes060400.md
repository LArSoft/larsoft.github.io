# LArSoft v06_04_00 Release Notes



[list of LArSoft releases](LArSoft_release_list)  
[Download instructions](https://scisoft.fnal.gov/scisoft/bundles/larsoft/v06_04_00/larsoft-v06_04_00.html)

## Purpose

-   changes to develop
-   art bug fixes
-   integrate approved features

## New features

-   art v2_03_00 has improved handling of fastcloning \#13275
-   larsim feature/gardiner_MARLEYmodule
    -   uses new marley ups product
-   larreco feature/rnd_PmaModuleSplit
    -   also in dunetpc, uboonecode and lariatsoft
-   larreco feature/rnd_HigherDriftResCNN
-   larcore/CoreUtils/quiet_Math_Functor.h replaces larreco/RecoAlg/RootMathFunctor.h
    -   RootMathFunctor.h did not restore the pragma state after including Math/Functor.h. This sometimes masked other warnings.

## Bug fixes

-   art v2_03_00
    -   bug fix for \#13564 (reported by LArIAT)
    -   bug fix \#13446

## Updated dependencies

|             |          |            |                                               |
|-------------|----------|------------|-----------------------------------------------|
| Product     | Version  | Qualifiers | Notes                                         |
| nutools     | v2_03_01 | e10        |                                               |
| nusimdata   | v1_05_02 | e10        |                                               |
| marley      | v0_9_5  | e10        |                                               |
| ifdh_art    | v1_15_05 | e10:nu:s41 |                                               |
| artdaq_core | v1_05_05 | e10:nu:s41 |                                               |
| art         | v2_03_00 | e10:nu     | [art:Release Notes 2.03.00](https://cdcvs.fnal.gov/redmine/projects/art/wiki/Release_Notes_2.03.00)             |
| mrb         | v1_08_00 |            | provide more information when mrbsetenv fails |

# Change List

## larsoft v06_04_00

-   2016-08-18 Lynn Garren : larsoft v06_04_00 for larsoft v06_04_00
-   2016-08-18 Lynn Garren : update product versions
-   2016-08-17 Lynn Garren : add marley to the distribution
-   2016-08-17 Lynn Garren : s39
-   2016-08-16 Gianluca Petrillo : Do-it-yourself part of resolution of issue \#8104
-   2016-08-12 Gianluca Petrillo : Merging LArSoft v06_03_00.
-   2016-08-11 Lynn Garren : qt and geant4
-   2016-08-10 Gianluca Petrillo : Added script RemoveUserFromServiceConfig.py to remove the “user” layer from art service configuration in FHiCL.

## lareventdisplay v06_01_00

-   2016-08-18 Lynn Garren : lareventdisplay v06_01_00 for larsoft v06_04_00
-   2016-08-16 Gianluca Petrillo : Removed obsolete configuration files (issue \#13513)

## larexamples v06_00_04

-   2016-08-18 Lynn Garren : larexamples v06_00_04 for larsoft v06_04_00

## larpandora v06_00_05

-   2016-08-18 Lynn Garren : larpandora v06_00_05 for larsoft v06_04_00

## larana v06_01_01

-   2016-08-18 Lynn Garren : larana v06_01_01 for larsoft v06_04_00
-   2016-08-18 Lynn Garren : quiet the deprecation warnings from root Math/Functor.h

## larreco v06_03_00

-   2016-08-18 Lynn Garren : larreco v06_03_00 for larsoft v06_04_00
-   2016-08-18 Lynn Garren : Merge branch 'feature/rnd_HigherDriftResCNN' into release/v06_04_00
-   2016-08-18 Lynn Garren : Merge branch 'feature/rnd_PmaModuleSplit' into release/v06_04_00
-   2016-08-18 Lynn Garren : replacing old RootMathFunctor.h with modern quiet_Math_Functor.h
-   2016-08-18 Dorota Stefan : fixed missed vertices
-   2016-08-17 Robert Sulej : fix bug in maxmean downsampling
-   2016-08-17 Robert Sulej : move to rectangular patches, add margin around event in data prep
-   2016-08-16 Robert Sulej : Merge branch 'develop' into feature/rnd_HigherDriftResCNN
-   2016-08-16 Robert Sulej : remove commented out pma parameters (moved to algorithm config, here was just a remainder of old state)
-   2016-08-16 Robert Sulej : Merge branch 'develop' into feature/rnd_PmaModuleSplit
-   2016-08-12 Wesley Ketchum : use HitCollectionAssociator to make hit\<—\>wire and hit\<—\>rawdigit assns
-   2016-08-12 Wesley Ketchum : fix seg fault on unprotected vector access
-   2016-08-12 Chao Zhang : fix mc_ntrack initialization
-   2016-08-12 Mike Wallbank : First iteration of calculated parameters for dune35tdata shower energy
-   2016-08-08 Tingjun Yang : Reconfig PMA.
-   2016-08-08 Tingjun Yang : Add configurations for microboone.
-   2016-08-08 Tingjun Yang : Merge branch 'develop' of ssh://cdcvs.fnal.gov/cvs/projects/larreco into feature/rnd_PmaModuleSplit
-   2016-08-08 Tingjun Yang : Merge branch 'feature/rnd_PmaModuleSplit' of ssh://cdcvs.fnal.gov/cvs/projects/larreco into feature/rnd_PmaModuleSplit
-   2016-08-05 Robert Sulej : throw if input data products are missing
-   2016-08-04 Robert Sulej : independent patch size in wire and drift direction, so can increase resolution in drift (todo python scripts update)
-   2016-08-04 Tingjun Yang : Merge branch 'feature/rnd_PmaModuleSplit' of ssh://cdcvs.fnal.gov/cvs/projects/larreco into feature/rnd_PmaModuleSplit
-   2016-08-04 Robert Sulej : change logic of making multi-tpc track to be more consistent with single tpc trakc params
-   2016-08-04 Robert Sulej : another fix, trajectory fits crossing many tpcs may be constructed from different sets of views in each tpc, so need to be aware that when looking for a hit from particular view it is possible not to find in all tpcs
-   2016-08-03 Tingjun Yang : Merge branch 'feature/rnd_PmaModuleSplit' of ssh://cdcvs.fnal.gov/cvs/projects/larreco into feature/rnd_PmaModuleSplit
-   2016-08-03 Robert Sulej : fix issue in gudeEndpoints(), actually it was present also before module split
-   2016-07-30 Robert Sulej : Merge branch 'develop' into feature/rnd_PmaModuleSplit
-   2016-07-29 Tingjun Yang : Merge branch 'develop' into feature/rnd_PmaModuleSplit
-   2016-07-25 Robert Sulej : faster init() function
-   2016-07-25 Robert Sulej : cosmetics in function names
-   2016-07-25 Robert : merge with larsoft 6, correct conflicts, make it running
-   2016-07-23 Robert Sulej : complete pma module split, frist tests done
-   2016-07-20 Robert Sulej : redesign algorithm classes (extract from modules) - ready for fit-only
-   2016-07-15 Robert Sulej : resolve merge conflicts, add separate label for tagged EM clusters
-   2016-07-14 Robert Sulej : Merge branch 'develop' into feature/rnd_PmaModuleSplit
-   2016-07-14 Robert Sulej : use make_unique
-   2016-07-14 Robert Sulej : minor cleanups
-   2016-07-14 Robert Sulej : rearrange cryo_tpc_view_hitmap place, but anyway this type to be removed asap
-   2016-07-14 Robert Sulej : comment out reconfigure() of PMA algorithm instance, this reconfiguration has no real application in the standard reco chain, has no art tags setup inside; reconfigure() func is removed from the new PMA code
-   2016-07-13 Robert Sulej : added fhicl params validation
-   2016-07-12 Robert Sulej : cleanup typos and a few mistakes
-   2016-07-12 Robert Sulej : split into two modules, one using unassociated clusters, second using pfparticles; mostly done second module (input tags and validation to be added to fhcl config)
-   2016-07-11 Robert Sulej : merge with 5.14.01 head
-   2016-06-23 Robert Sulej : Merge branch 'develop' into feature/rnd_PmaModuleSplit
-   2016-06-12 Robert Sulej : Merge branch 'develop' into feature/rnd_PmaModuleSplit
-   2016-05-31 Robert Sulej : Merge branch 'develop' into feature/rnd_PmaModuleSplit
-   2016-05-31 Robert Sulej : remove old code version
-   2016-05-31 Robert Sulej : prepare for module split

## larsim v06_03_00

-   2016-08-18 Lynn Garren : larsim v06_03_00 for larsoft v06_04_00
-   2016-08-18 Lynn Garren : finally remove files now in larsimobj
-   2016-08-18 Lynn Garren : using the marley ups product in the standard manner
-   2016-08-18 Lynn Garren : Merge branch 'feature/gardiner_MARLEYmodule' into release/v06_04_00
-   2016-08-17 Thomas Warburton : Adding a TTree, turned off by default which stores the cryostat sizes.
-   2016-08-17 Steven Gardiner : Add code to allow the user to set a fixed vertex location for the MARLEYGen module. Update prodmarley.fcl and add comments.
-   2016-08-17 Steven Gardiner : Add all particles from MARLEY to the MCTruth object, and call SetNeutrino appropriately as well.
-   2016-08-16 Steven Gardiner : Use the LArSeedService to handle all RNG seeds in the MARLEYGen module.
-   2016-08-15 Steven Gardiner : Add code to configure MARLEY from FHiCL setttings rather than a separate config.txt file (requires using MARLEY v0.9.5 or greater). Update the prodmarley.fcl script accordingly.
-   2016-07-25 Steven Gardiner : Adjust starting trackID passed to Geant4 so that all final particles have trackID \>= 1. This ensures that Geant4 will track all of them. The outgoing electrons previously had trackID = 0, and Geant4 appeared to skip them in the simulation.
-   2016-07-25 Steven Gardiner : Add a TTree of MARLEY events to the “hist” ROOT file produced by the MARLEYGen module. These may be matched to art::Event objects in the “gen” ROOT file by comparing the run, subrun, and event numbers included as other branches in the tree.
-   2016-07-24 Steven Gardiner : Enable high-precision neutron physics (“NeutronHP” in the FHiCL file custom physics list) so that neutrino-induced neutrons from MARLEY will be tracked more accurately.
-   2016-07-03 Steven Gardiner : Add module that provides an interface to the MARLEY (Model of Argon Reaction Low Energy Yields) event generator for tens-of-MeV neutrinos in liquid argon. For more information, see https://marleygen.org.
-   2016-08-16 Gianluca Petrillo : Removed obsolete configuration files (issue \#13513)

## larevt v06_01_00

-   2016-08-18 Lynn Garren : larevt v06_01_00 for larsoft v06_04_00
-   2016-08-16 Gianluca Petrillo : Removed obsolete configuration files (issue \#13513)

## lardata v06_03_00

-   2016-08-18 Lynn Garren : lardata v06_03_00 for larsoft v06_04_00
-   2016-08-18 Lynn Garren : finally remove files now in lardataobj
-   2016-08-16 Gianluca Petrillo : Adding configuration for resource tracking services
-   2016-08-16 Gianluca Petrillo : Removed obsolete configuration files (issue \#13513)

## larcore v06_02_00

-   2016-08-18 Lynn Garren : larcore v06_02_00 for larsoft v06_04_00
-   2016-08-18 Lynn Garren : finally remove files now in larcoreobj
-   2016-08-18 Lynn Garren : quiet the deprecation warnings from root Math/Functor.h

## larsimobj v1_05_02

-   2016-08-18 Lynn Garren : larsimobj v1_05_02 for larsoft v06_04_00
-   2016-08-08 Lynn Garren : Merge tag 'v1_05_01' into develop

## lardataobj v1_04_02

-   2016-08-18 Lynn Garren : lardataobj v1_04_02 for larsoft v06_04_00
-   2016-08-11 Gianluca Petrillo : Removing duplicate FHiCL file (should be only in lardata)

## larcoreobj v1_04_02

-   2016-08-18 Lynn Garren : larcoreobj v1_04_02 for larsoft v06_04_00

## larbatch v01_23_04

## larutils v1_08_02

-   2016-08-18 Lynn Garren : larutils v1_08_02 for larsoft v06_04_00
-   2016-08-18 Herbert Greenlee : Add swtrigger to manifest.
