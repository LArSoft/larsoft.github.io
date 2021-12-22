LArSoft v05\_12\_00 Release Notes
======================================================================

-   **Table of contents**
-   [LArSoft v05\_12\_00 Release Notes](#LArSoft-v05_12_00-Release-Notes)
    -   [Purpose](#Purpose)
    -   [New features](#New-features)
    -   [Breaking changes](#Breaking-changes)
        -   [SpaceCharge improvements require new call](#SpaceCharge-improvements-require-new-call)
    -   [Bug fixes](#Bug-fixes)
    -   [Updated dependencies](#Updated-dependencies)
-   [Change List](#Change-List)
    -   [larsoft v05\_12\_00](#larsoft-v05_12_00)
    -   [lareventdisplay v05\_07\_00](#lareventdisplay-v05_07_00)
    -   [larexamples v05\_06\_08](#larexamples-v05_06_08)
    -   [larpandora v05\_09\_05](#larpandora-v05_09_05)
    -   [larana v05\_09\_02](#larana-v05_09_02)
    -   [larreco v05\_12\_00](#larreco-v05_12_00)
    -   [larsim v05\_12\_00](#larsim-v05_12_00)
    -   [larevt v05\_07\_00](#larevt-v05_07_00)
    -   [lardata v05\_08\_02](#lardata-v05_08_02)
    -   [larcore v05\_07\_03](#larcore-v05_07_03)
    -   [larbatch v01\_22\_00](#larbatch-v01_22_00)
    -   [larutils v1\_06\_02](#larutils-v1_06_02)

[list of LArSoft releases](LArSoft_release_list)\
[Download instructions](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v05_12_00/larsoft-v05_12_00.html)

Purpose
--------------------

-   approved changes

New features
------------------------------

-   larevt, larsim, uboonecode, dunetpc: feature/mrmooney\_SpaceChargeMay6th2016
-   larsoft\_data 1.00.00
    -   replace SCIoffsets with a dummy so each experiment can maintain their own offsets
-   larreco: feature/rnd\_PmaNoTObject
-   lareventdisplay feature/mrobinso\_LandedEventDisplay

Breaking changes
--------------------------------------

### [SpaceCharge improvements require new call](Breaking_Changes#SpaceCharge-improvements-require-new-call)

-   As a result of the Space Charge improvements, each experiment needs to modify their basic services list to include the following:
    -   SpaceCharge: @local::standard\_spacecharge
-   Also, the following must be included:
    -   \#include “spacecharge.fcl”
-   The error message:\

        %MSG-w LArVoxelReadout:  LArG4:largeant 27-May-2016 13:08:05 CDT run: 1 subRun: 0 event: 10
        step cannot be found in a TPC
        ---- ServiceNotFound BEGIN
          Service  unable to find requested service with compiler type name 'spacecharge::SpaceChargeService'.
        ---- ServiceNotFound END

Bug fixes
------------------------

Updated dependencies
----------------------------------------------

  --------------- ------------ ------------ -------
  Product         Version      Qualifiers   Notes
  larsoft\_data   v1\_00\_00                
  mrb             v1\_07\_01                
  --------------- ------------ ------------ -------

Change List
============================

larsoft v05\_12\_00
------------------------------------------

-   2016-05-25 Lynn Garren : larsoft v05\_12\_00 for larsoft v05\_12\_00
-   2016-05-25 Lynn Garren : update product list
-   2016-05-25 Lynn Garren : update dependency database
-   2016-05-11 Lynn Garren : use the new larpandoracontent qualifiers
-   2016-05-11 Lynn Garren : need genie\_xsec version

lareventdisplay v05\_07\_00
----------------------------------------------------------

-   2016-05-26 Lynn Garren : workaround for MSG\_NOSIGNAL
-   2016-05-25 Lynn Garren : lareventdisplay v05\_07\_00 for larsoft v05\_12\_00
-   2016-05-25 Lynn Garren : Merge branch ‘feature/mrobinso\_LandedEventDisplay’ into release/v05\_12\_00
-   2016-05-10 Matt Robinson : Added Landed event display moduule and service (corrected e-mail address)
-   2016-05-10 Matt Robinson : Added Landed event display moduule and service

larexamples v05\_06\_08
--------------------------------------------------

-   2016-05-25 Lynn Garren : larexamples v05\_06\_08 for larsoft v05\_12\_00

larpandora v05\_09\_05
------------------------------------------------

-   2016-05-25 Lynn Garren : larpandora v05\_09\_05 for larsoft v05\_12\_00

larana v05\_09\_02
----------------------------------------

-   2016-05-25 Lynn Garren : larana v05\_09\_02 for larsoft v05\_12\_00

larreco v05\_12\_00
------------------------------------------

-   2016-05-25 Lynn Garren : larreco v05\_12\_00 for larsoft v05\_12\_00
-   2016-05-25 Robert Sulej : add typedef inside pma for displacement vector 2d and 3d
-   2016-05-25 Robert Sulej : Merge branch ‘develop’ into feature/rnd\_PmaNoTObject
-   2016-05-23 Aaron Higuera Pichardo : Add histograms for PC studies, works with isNeutrinoInt: false, efficiencies for charge pion, muon and charge kaons
-   2016-05-20 Aaron Higuera Pichardo : Include more efficiencies
-   2016-05-12 Dorota Stefan : CLHEP vectors
-   2016-05-11 Dorota Stefan : TObject replaced with another vector from ROOT

larsim v05\_12\_00
----------------------------------------

-   2016-05-25 Lynn Garren : larsim v05\_12\_00 for larsoft v05\_12\_00
-   2016-05-25 Lynn Garren : Merge branch ‘feature/mrmooney\_SpaceChargeMay6th2016’ into release/v05\_12\_00
-   2016-05-06 Michael Mooney : Fixed sign error in space charge implementation of LArVoxelReadout.cxx
-   2016-05-06 Michael Mooney : New space charge service implementation

larevt v05\_07\_00
----------------------------------------

-   2016-05-25 Lynn Garren : larevt v05\_07\_00 for larsoft v05\_12\_00
-   2016-05-25 Lynn Garren : Merge branch ‘feature/mrmooney\_SpaceChargeMay6th2016’ into release/v05\_12\_00
-   2016-05-06 Michael Mooney : New space charge service implementation

lardata v05\_08\_02
------------------------------------------

-   2016-05-25 Lynn Garren : lardata v05\_08\_02 for larsoft v05\_12\_00

larcore v05\_07\_03
------------------------------------------

-   2016-05-25 Lynn Garren : larcore v05\_07\_03 for larsoft v05\_12\_00
-   2016-05-21 Christoph Rudolf von Rohr : BoxBoundedGeo.cxx: Fixed a bug which caused wrong results in rare cases (due to floating point inaccuracies). BoxBoundedGeo.h: added std::vector include for completeness reasons (better usability with IDE programms)

larbatch v01\_22\_00
--------------------------------------------

-   2016-05-25 Lynn Garren : larbatch v01\_22\_00 for larsoft v05\_12\_00
-   2016-05-25 Lynn Garren : larbatch v01\_22\_00 for larsoft v05\_12\_00
-   2016-05-20 yuntse : Merge remote-tracking branch ‘refs/remotes/origin/develop’ into develop
-   2016-05-20 yuntse : Fix bug when noninitial stage has an input definition.
-   2016-05-18 Herbert Greenlee : Update default qualifier from e7 to e9.
-   2016-05-17 Herbert Greenlee : Add condor\_hadd\_sam.sh.
-   2016-05-17 Lynn Garren : Merge branch ‘release/v05\_11\_02’
-   2016-05-17 Lynn Garren : larbatch v01\_21\_05
-   2016-05-13 Herbert Greenlee : Work around art bug.
-   2016-05-13 yuntse : Work around art bug.
-   2016-05-10 yuntse : Merge remote-tracking branch ‘refs/remotes/origin/develop’ into develop
-   2016-05-03 yuntse : Streamline diagnostic printout.
-   2016-05-03 yuntse : Move safecopy from project.py to project\_utilities.py. Add more timeouts. Add more diagnostic printout.

larutils v1\_06\_02
------------------------------------------

-   2016-05-25 Lynn Garren : larutils v1\_06\_02 for larsoft v05\_12\_00
-   2016-05-25 Lynn Garren : larutils v1\_06\_02 for larsoft v05\_12\_00
-   2016-05-16 Lynn Garren : now building with nutools v1\_25\_05
