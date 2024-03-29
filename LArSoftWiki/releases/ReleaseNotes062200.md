# LArSoft v06_22_00 Release Notes



[list of LArSoft releases](LArSoft_release_list)  
Download instructions for [larsoft v06_22_00](https://scisoft.fnal.gov/scisoft/bundles/larsoft/v06_22_00/larsoft-v06_22_00.html)  
Download instructions for [just larsoftobj v1_09_00](https://scisoft.fnal.gov/scisoft/bundles/larsoftobj/v1_09_00/larsoftobj-v1_09_00.html)

## Purpose

-   changes in develop
-   new MVA data product

## New features

-   A new MVA data product has been introduced in lardataobj. Accompanying this data product is a new helper class that manages the interactions required by art. The functionality of this helper is similar to that of existing code in lardata/RecoBaseArt.
-   In order to provide a single, more descriptive home for these classes and any future code of this type, we have moved lardata/RecoBaseArt, along with its contents and the new helper class to lardata/ArtDataHelper.
-   See the [Breaking Changes#lardata/RecoBaseArt renamed lardata/ArtDataHelper](Breaking_Changes#lardata/RecoBaseArt_renamed_lardata/ArtDataHelper) page
-   Please use the accompanying update script in LArSoft: UpdateArtDataHelper.sh

## Bug fixes

## Known problems

-   lardata test_feag2 and sometimes test_feag fail on OSX

## Updated dependencies

# Change List

## larsoft v06_22_00

-   2017-01-25 Lynn Garren : broken test on OSX
-   2017-01-25 Lynn Garren : larsoft v06_22_00 for larsoft v06_22_00
-   2017-01-25 Lynn Garren : update product versions
-   2017-01-20 Lynn Garren : RecoBaseArt is now ArtDataHelper
-   2017-01-20 Lynn Garren : RecoBaseArt becomes ArtDataHelper

## lareventdisplay v06_02_10

-   2017-01-25 Lynn Garren : lareventdisplay v06_02_10 for larsoft v06_22_00

## larexamples v06_01_11

-   2017-01-25 Lynn Garren : larexamples v06_01_11 for larsoft v06_22_00

## larpandora v06_05_03

-   2017-01-25 Lynn Garren : larpandora v06_05_03 for larsoft v06_22_00

## larwirecell v06_00_08

-   2017-01-25 Lynn Garren : larwirecell v06_00_08 for larsoft v06_22_00

## larana v06_03_14

-   2017-01-25 Lynn Garren : larana v06_03_14 for larsoft v06_22_00
-   2017-01-25 Lynn Garren : RecoBaseArt is now ArtDataHelper
-   2017-01-20 Tingjun Yang : User predefined CalorimetryAlg configuration.

## larreco v06_17_00

-   2017-01-25 Lynn Garren : larreco v06_17_00 for larsoft v06_22_00
-   2017-01-25 Lynn Garren : RecoBaseArt is now ArtDataHelper
-   2017-01-25 Lynn Garren : Merge branch 'feature/rnd_GenericMVA' into release/v06_22_00
-   2017-01-25 Robert Sulej : facilitate switch to 4-outputs cnn
-   2017-01-25 Robert Sulej : comment out unused cfg parameter
-   2017-01-20 Robert Sulej : add sigmoid activation
-   2017-01-19 Robert Sulej : move mva helpers to lardata
-   2017-01-14 Robert Sulej : Merge branch 'develop' into feature/rnd_GenericMVA
-   2017-01-10 Robert Sulej : add not-throwing create() for the reader, use it in the module
-   2017-01-09 Robert Sulej : Merge branch 'develop' into feature/rnd_GenericMVA
-   2017-01-08 Robert Sulej : add using process name in EM-track id module, rename MVAOutput to FeatureVector, add check for consistency in registered products in the writer, some cosmetics in exception messages
-   2017-01-06 Robert Sulej : better search for the model file (not only in pardata ups)
-   2017-01-06 Robert Sulej : add comment
-   2017-01-06 Robert Sulej : add hit-by-hit output to dumped info
-   2017-01-06 Robert Sulej : completed use of MVAReader (with some addition to the reader itself), finished configuration, still not using process name while saving MVADesccription, may also consider renaming of data product class names
-   2017-01-05 Robert Sulej : complete saving cnn outputs in the event, separate preparetion of hits, clusters, tracks; still a few minor thing to be finished in config parameters
-   2017-01-04 Robert Sulej : fix missing part of what should be registered and is actually saved, that is vector of objects (not just an object…)
-   2017-01-01 Robert Sulej : calculate decisions for 3d tracks
-   2017-01-01 Robert Sulej : add p-accumulate func with ptr used in weight closure
-   2016-12-30 Robert Sulej : use wrappers to process mva output, do not save mva data products (not yet registered)
-   2016-12-28 Robert Sulej : add wrappers and start using them in cnn modules (wrappers surely to be moved to another place)

## larsim v06_11_00

-   2017-01-25 Lynn Garren : larsim v06_11_00 for larsoft v06_22_00
-   2017-01-22 Jason Stock : Changing a comment for correctness in the PhotonBackTracker. No change in code.
-   2017-01-22 Jason Stock : Corrected name in PhotonBackTracker.h Deprecated poorly named functions. Replacement functions created with more descriptive names.
-   2017-01-22 Jason Stock : Corrections to the PhotonBackTracker in ChannelsToSDPs. Times in OpDetBacktrackerRecords are double G4Times. As such, TDC-ticks should not be used for SDP lookup. This is a bugfix and should not have any breaking changes.

## larevt v06_07_05

-   2017-01-25 Lynn Garren : larevt v06_07_05 for larsoft v06_22_00
-   2017-01-25 Lynn Garren : RecoBaseArt is now ArtDataHelper

## lardata v06_14_00

-   2017-01-25 Lynn Garren : lardata v06_14_00 for larsoft v06_22_00
-   2017-01-25 Lynn Garren : RecoBaseArt renamed ArtDataHelper
-   2017-01-25 Lynn Garren : move helpers from RecoBaseArt to ArtDataHelper
-   2017-01-25 Lynn Garren : Merge branch 'feature/rsulej_ArtDataHelper' into release/v06_22_00
-   2017-01-22 Robert Sulej : remove editor backup files
-   2017-01-22 Robert Sulej : add prob. accumulate fn for multiple groups of labels
-   2017-01-19 Robert Sulej : move mva helpers to new location

## larcore v06_05_02

-   2017-01-25 Lynn Garren : larcore v06_05_02 for larsoft v06_22_00

## larsoftobj v1_09_00

-   2017-01-25 Lynn Garren : larsoftobj v1_09_00 for larsoft v06_22_00

## lardataobj v1_09_00

-   2017-01-25 Lynn Garren : lardataobj v1_09_00 for larsoft v06_22_00
-   2017-01-25 Lynn Garren : lardataobj v1_09_00 for larsoft v06_22_00
-   2017-01-25 Lynn Garren : Merge branch 'feature/rnd_GenericMVA' into release/v06_22_00
-   2017-01-22 Jason Stock : Cleaning out DUNE10ktPhotons to close issue 11468
-   2017-01-10 Robert Sulej : add comments, add data acces function for the feature vector (prepared for std array, so no commented out)
-   2017-01-08 Robert Sulej : rename MVAOutput to FeatureVector
-   2017-01-05 Robert Sulej : add setter for data tag in mva description, change to the class versions 10
-   2016-12-30 Robert Sulej : add assignment operators
-   2016-12-29 Robert Sulej : one more try to register data products
-   2016-12-28 Robert Sulej : register data product classes
-   2016-12-28 Robert Sulej : more complete shape of data prod., not yet registered
-   2016-12-23 Robert Sulej : add initial ver mva data products

## larcoreobj v1_06_02

-   2017-01-25 Lynn Garren : larcoreobj v1_06_02 for larsoft v06_22_00
-   2017-01-25 Lynn Garren : larcoreobj v1_06_02 for larsoft v06_22_00
-   2017-01-20 David Adams : Drop use of register in readout_types.h.

## larbatch v01_26_03

## larutils v1_11_00
