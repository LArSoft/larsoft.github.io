LArSoft v06\_54\_00 Release Notes
======================================================================

-   **Table of contents**
-   [LArSoft v06\_54\_00 Release Notes](#LArSoft-v06_54_00-Release-Notes)
    -   [Purpose](#Purpose)
    -   [New features](#New-features)
    -   [Bug fixes](#Bug-fixes)
    -   [Updated dependencies](#Updated-dependencies)
-   [Change List](#Change-List)
    -   [larsoft v06\_54\_00](#larsoft-v06_54_00)
    -   [lareventdisplay v06\_13\_01](#lareventdisplay-v06_13_01)
    -   [larexamples v06\_07\_05](#larexamples-v06_07_05)
    -   [larpandora v06\_17\_02](#larpandora-v06_17_02)
    -   [larwirecell v06\_08\_00](#larwirecell-v06_08_00)
    -   [larana v06\_10\_06](#larana-v06_10_06)
    -   [larreco v06\_43\_00](#larreco-v06_43_00)
    -   [larsim v06\_32\_00](#larsim-v06_32_00)
    -   [larevt v06\_16\_05](#larevt-v06_16_05)
    -   [lardata v06\_31\_01](#lardata-v06_31_01)
    -   [larcore v06\_15\_02](#larcore-v06_15_02)
    -   [larpandoracontent v03\_08\_01](#larpandoracontent-v03_08_01)
    -   [larsoftobj v1\_29\_00](#larsoftobj-v1_29_00)
    -   [lardataobj v1\_21\_01](#lardataobj-v1_21_01)
    -   [larcorealg v1\_09\_00](#larcorealg-v1_09_00)
    -   [larcoreobj v1\_16\_00](#larcoreobj-v1_16_00)
    -   [larbatch v01\_32\_05](#larbatch-v01_32_05)
    -   [larutils v1\_20\_00](#larutils-v1_20_00)

[list of LArSoft releases](LArSoft_release_list)
Download instructions for [larsoft v06\_54\_00](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v06_54_00/larsoft-v06_54_00.html)
Download instructions for [just larsoftobj v1\_29\_00](http://scisoft.fnal.gov/scisoft/bundles/larsoftobj/v1_29_00/larsoftobj-v1_29_00.html)

Purpose
--------------------

-   changes to develop
-   approved feature branch

New features
------------------------------

-   new GENIE release
    -   GENIE 2.12.8 has been released. This is a patch release of GENIE 2.12.6 which contains a number of small bug fixes, the most important of which was a patch to the Bartol atmospheric flux driver requested by the DUNE atmospheric physics group.
    -   updated splines are not yet available
-   larwirecell feature/bv\_wct-0.6.2
    -   wirecell 0.6.2
-   larcorealg feature/gp\_DifferentViews
    -   also lariatsoft, icaruscode and dunetpc
    -   There have been for a while two sources to get the view information from. One of them has been ignored and is now removed.

Bug fixes
------------------------

Updated dependencies
----------------------------------------------

||
|Product|Version|Qualifiers|Notes|
|nutools|v2\_16\_05|e14|[release notes](/redmine/projects/nutools/wiki/NuTools_Release_Notes#nutools-v2_16_05-10162017)|
|genie|v2\_12\_8|e14||
|dk2nu|v01\_05\_00j|e14||
|wirecell|v0\_6\_2|e14||

Change List
============================

larsoft v06\_54\_00
------------------------------------------

-   2017-10-18 Lynn Garren : larsoft v06\_54\_00 for larsoft v06\_54\_00
-   2017-10-18 Lynn Garren : update dependency database
-   2017-10-18 Lynn Garren : using nutools v2\_16\_05

lareventdisplay v06\_13\_01
----------------------------------------------------------

-   2017-10-18 Lynn Garren : lareventdisplay v06\_13\_01 for larsoft v06\_54\_00

larexamples v06\_07\_05
--------------------------------------------------

-   2017-10-18 Lynn Garren : larexamples v06\_07\_05 for larsoft v06\_54\_00

larpandora v06\_17\_02
------------------------------------------------

-   2017-10-18 Lynn Garren : larpandora v06\_17\_02 for larsoft v06\_54\_00

larwirecell v06\_08\_00
--------------------------------------------------

-   2017-10-18 Lynn Garren : larwirecell v06\_08\_00 for larsoft v06\_54\_00
-   2017-10-16 Brett Viren : Support breaking changes coming with art 2.08.03
-   2017-10-16 Brett Viren : Bug fix for if WCT wants to the input waveforms longer. Pad-out using per-trace baseline.
-   2017-10-16 Brett Viren : Merge with develop
-   2017-10-16 Brett Viren : Move to new larevt.
-   2017-10-16 Brett Viren : Remove ExecMon and quell some noisy printouts.
-   2017-10-12 Brett Viren : Add an event ‘butcher’ to transform raw digits and signal into a form desired by unspecified legacy code requirements.
-   2017-10-06 Brett Viren : Fix bug so we actually save the RawDigits.
-   2017-10-06 Brett Viren : New general purpose frame saver.

larana v06\_10\_06
----------------------------------------

-   2017-10-18 Lynn Garren : larana v06\_10\_06 for larsoft v06\_54\_00

larreco v06\_43\_00
------------------------------------------

-   2017-10-18 Lynn Garren : larreco v06\_43\_00 for larsoft v06\_54\_00
-   2017-10-16 Gianluca Petrillo : Merge branch ‘feature/gp\_fixDecodeCTP’ into develop
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
-   2017-10-13 Lynn Garren : larsoft v06\_53\_00
-   2017-10-12 Tingjun Yang : Fix a bug to access vector element beyond the boundary. Thanks Will Foreman for the bug report.
-   2017-10-12 Gianluca Petrillo : tca::DecodeTPC() now sets the ID to be valid.
-   2017-10-06 baller : Merge branch ‘develop’ into feature/bb\_TJWork
-   2017-10-06 baller : ongoing development
-   2017-10-06 baller : Add comments
-   2017-10-05 Giuseppe Cerati : Merge branch ‘feature/bb\_TJWork’ of ssh://cdcvs.fnal.gov/cvs/projects/larreco into feature/bb\_TJWork
-   2017-10-05 Giuseppe Cerati : use 2212 as default pdg code and, in the track fit, skip TP with all hits not used
-   2017-09-27 Giuseppe Cerati : Merge branch ‘feature/bb\_TJWork’ of ssh://cdcvs.fnal.gov/cvs/projects/larreco into feature/bb\_TJWork
-   2017-09-27 Giuseppe Cerati : Merge branch ‘feature/bb\_TJWork’ of ssh://cdcvs.fnal.gov/cvs/projects/larreco into feature/bb\_TJWork
-   2017-09-27 Giuseppe Cerati : add plots and printouts
-   2017-09-26 Giuseppe Cerati : Merge branch ‘feature/bb\_TJWork’ of ssh://cdcvs.fnal.gov/cvs/projects/larreco into feature/bb\_TJWork
-   2017-09-26 Giuseppe Cerati : remove printout

larsim v06\_32\_00
----------------------------------------

-   2017-10-18 Lynn Garren : larsim v06\_32\_00 for larsoft v06\_54\_00
-   2017-10-17 Dorota Stefan : add two more parameters that allow to change range of the histograms showing the vertex positions. This change is useful for dual phase geometry where we expect to have asymmetric range.
-   2017-10-13 Lynn Garren : larsoft v06\_53\_00
-   2017-10-12 Steven Gardiner : Fix bug that prevented evgen::MARLEYHelper from loading user-defined neutrino spectra from TGraph or TH1D objects stored in ROOT files.

larevt v06\_16\_05
----------------------------------------

-   2017-10-18 Lynn Garren : larevt v06\_16\_05 for larsoft v06\_54\_00

lardata v06\_31\_01
------------------------------------------

-   2017-10-18 Lynn Garren : lardata v06\_31\_01 for larsoft v06\_54\_00

larcore v06\_15\_02
------------------------------------------

-   2017-10-18 Lynn Garren : larcore v06\_15\_02 for larsoft v06\_54\_00

larpandoracontent v03\_08\_01
--------------------------------------------------------------

larsoftobj v1\_29\_00
----------------------------------------------

-   2017-10-18 Lynn Garren : larsoftobj v1\_29\_00 for larsoft v06\_54\_00
-   2017-10-17 Lynn Garren : update product versions

lardataobj v1\_21\_01
----------------------------------------------

larcorealg v1\_09\_00
----------------------------------------------

-   2017-10-18 Lynn Garren : larcorealg v1\_09\_00 for larsoft v06\_54\_00
-   2017-10-16 Gianluca Petrillo : Removed unused view choice logic from channel mapping.
-   2017-10-16 Gianluca Petrillo : View infrastructure removed from channel mapping.
-   2017-10-11 Gianluca Petrillo : Geometry and all its objects can now print their content.

larcoreobj v1\_16\_00
----------------------------------------------

larbatch v01\_32\_05
--------------------------------------------

larutils v1\_20\_00
------------------------------------------

-   2017-10-18 Lynn Garren : larutils v1\_20\_00 for larsoft v06\_54\_00
-   2017-10-13 Herbert Greenlee : Add ability to initialize ups products from bluearc.
-   2017-10-13 Herbert Greenlee : Add larlite and larcv to the manifest.
