# LArSoft v06_54_00 Release Notes



[list of LArSoft releases](LArSoft_release_list)  
Download instructions for [larsoft v06_54_00](https://scisoft.fnal.gov/scisoft/bundles/larsoft/v06_54_00/larsoft-v06_54_00.html)  
Download instructions for [just larsoftobj v1_29_00](https://scisoft.fnal.gov/scisoft/bundles/larsoftobj/v1_29_00/larsoftobj-v1_29_00.html)

## Purpose

-   changes to develop
-   approved feature branch

## New features

-   new GENIE release
    -   GENIE 2.12.8 has been released. This is a patch release of GENIE 2.12.6 which contains a number of small bug fixes, the most important of which was a patch to the Bartol atmospheric flux driver requested by the DUNE atmospheric physics group.
    -   updated splines are not yet available
-   larwirecell feature/bv_wct-0.6.2
    -   wirecell 0.6.2
-   larcorealg feature/gp_DifferentViews
    -   also lariatsoft, icaruscode and dunetpc
    -   There have been for a while two sources to get the view information from. One of them has been ignored and is now removed.

## Bug fixes

## Updated dependencies

|          |            |            |                                                             |                   |
|----------|------------|------------|-------------------------------------------------------------|-------------------|
| Product  | Version    | Qualifiers | Notes                                                       |                   |
| nutools  | v2_16_05   | e14        | [ release notes](https://cdcvs.fnal.gov/redmine/projects/nutools/wiki/NuTools_Release_Notes#nutools-v2_16_05-10162017 ) |
| genie    | v2_12_8    | e14        |                                                             |                   |
| dk2nu    | v01_05_00j | e14        |                                                             |                   |
| wirecell | v0_6_2    | e14        |                                                             |                   |

# Change List

## larsoft v06_54_00

-   2017-10-18 Lynn Garren : larsoft v06_54_00 for larsoft v06_54_00
-   2017-10-18 Lynn Garren : update dependency database
-   2017-10-18 Lynn Garren : using nutools v2_16_05

## lareventdisplay v06_13_01

-   2017-10-18 Lynn Garren : lareventdisplay v06_13_01 for larsoft v06_54_00

## larexamples v06_07_05

-   2017-10-18 Lynn Garren : larexamples v06_07_05 for larsoft v06_54_00

## larpandora v06_17_02

-   2017-10-18 Lynn Garren : larpandora v06_17_02 for larsoft v06_54_00

## larwirecell v06_08_00

-   2017-10-18 Lynn Garren : larwirecell v06_08_00 for larsoft v06_54_00
-   2017-10-16 Brett Viren : Support breaking changes coming with art 2.08.03
-   2017-10-16 Brett Viren : Bug fix for if WCT wants to the input waveforms longer. Pad-out using per-trace baseline.
-   2017-10-16 Brett Viren : Merge with develop
-   2017-10-16 Brett Viren : Move to new larevt.
-   2017-10-16 Brett Viren : Remove ExecMon and quell some noisy printouts.
-   2017-10-12 Brett Viren : Add an event 'butcher' to transform raw digits and signal into a form desired by unspecified legacy code requirements.
-   2017-10-06 Brett Viren : Fix bug so we actually save the RawDigits.
-   2017-10-06 Brett Viren : New general purpose frame saver.

## larana v06_10_06

-   2017-10-18 Lynn Garren : larana v06_10_06 for larsoft v06_54_00

## larreco v06_43_00

-   2017-10-18 Lynn Garren : larreco v06_43_00 for larsoft v06_54_00
-   2017-10-16 Gianluca Petrillo : Merge branch 'feature/gp_fixDecodeCTP' into develop
-   2017-10-14 Robert Sulej : add output labels to the fcl config
-   2017-10-13 Robert Sulej : simple training on tf
-   2017-10-13 Robert Sulej : add training on augmented data (wire flips)
-   2017-10-13 Robert Sulej : next steps for multi-tpc events
-   2017-10-13 Robert Sulej : set bigger batch size
-   2017-10-13 Robert Sulej : resolve mrege conflict
-   2017-10-13 Robert Sulej : tune params
-   2017-10-13 Robert Sulej : add conversion to protobuf
-   2017-10-13 Robert Sulej : update scricpts to use TF and augmented data
-   2017-10-13 Robert Sulej : move to global wire projections
-   2017-10-13 Robert Sulej : test based on PFP only if products found
-   2017-10-13 Robert Sulej : minor change in messages
-   2017-10-13 Robert Sulej : add zero level handling and fn to get sum and area of signal over threshold
-   2017-10-13 Robert Sulej : use safer way, almost not slower
-   2017-10-13 Lynn Garren : larsoft v06_53_00
-   2017-10-12 Tingjun Yang : Fix a bug to access vector element beyond the boundary. Thanks Will Foreman for the bug report.
-   2017-10-12 Gianluca Petrillo : tca::DecodeTPC() now sets the ID to be valid.
-   2017-10-06 baller : Merge branch 'develop' into feature/bb_TJWork
-   2017-10-06 baller : ongoing development
-   2017-10-06 baller : Add comments
-   2017-10-05 Giuseppe Cerati : Merge branch 'feature/bb_TJWork' of ssh://cdcvs.fnal.gov/cvs/projects/larreco into feature/bb_TJWork
-   2017-10-05 Giuseppe Cerati : use 2212 as default pdg code and, in the track fit, skip TP with all hits not used
-   2017-09-27 Giuseppe Cerati : Merge branch 'feature/bb_TJWork' of ssh://cdcvs.fnal.gov/cvs/projects/larreco into feature/bb_TJWork
-   2017-09-27 Giuseppe Cerati : Merge branch 'feature/bb_TJWork' of ssh://cdcvs.fnal.gov/cvs/projects/larreco into feature/bb_TJWork
-   2017-09-27 Giuseppe Cerati : add plots and printouts
-   2017-09-26 Giuseppe Cerati : Merge branch 'feature/bb_TJWork' of ssh://cdcvs.fnal.gov/cvs/projects/larreco into feature/bb_TJWork
-   2017-09-26 Giuseppe Cerati : remove printout

## larsim v06_32_00

-   2017-10-18 Lynn Garren : larsim v06_32_00 for larsoft v06_54_00
-   2017-10-17 Dorota Stefan : add two more parameters that allow to change range of the histograms showing the vertex positions. This change is useful for dual phase geometry where we expect to have asymmetric range.
-   2017-10-13 Lynn Garren : larsoft v06_53_00
-   2017-10-12 Steven Gardiner : Fix bug that prevented evgen::MARLEYHelper from loading user-defined neutrino spectra from TGraph or TH1D objects stored in ROOT files.

## larevt v06_16_05

-   2017-10-18 Lynn Garren : larevt v06_16_05 for larsoft v06_54_00

## lardata v06_31_01

-   2017-10-18 Lynn Garren : lardata v06_31_01 for larsoft v06_54_00

## larcore v06_15_02

-   2017-10-18 Lynn Garren : larcore v06_15_02 for larsoft v06_54_00

## larpandoracontent v03_08_01

## larsoftobj v1_29_00

-   2017-10-18 Lynn Garren : larsoftobj v1_29_00 for larsoft v06_54_00
-   2017-10-17 Lynn Garren : update product versions

## lardataobj v1_21_01

## larcorealg v1_09_00

-   2017-10-18 Lynn Garren : larcorealg v1_09_00 for larsoft v06_54_00
-   2017-10-16 Gianluca Petrillo : Removed unused view choice logic from channel mapping.
-   2017-10-16 Gianluca Petrillo : View infrastructure removed from channel mapping.
-   2017-10-11 Gianluca Petrillo : Geometry and all its objects can now print their content.

## larcoreobj v1_16_00

## larbatch v01_32_05

## larutils v1_20_00

-   2017-10-18 Lynn Garren : larutils v1_20_00 for larsoft v06_54_00
-   2017-10-13 Herbert Greenlee : Add ability to initialize ups products from bluearc.
-   2017-10-13 Herbert Greenlee : Add larlite and larcv to the manifest.
