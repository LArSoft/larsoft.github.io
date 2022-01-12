LArSoft v08\_10\_00 Release Notes
======================================================================

-   **Table of contents**
-   [LArSoft v08\_10\_00 Release Notes](#LArSoft-v08_10_00-Release-Notes)
    -   [Purpose](#Purpose)
    -   [New features](#New-features)
    -   [Bug fixes](#Bug-fixes)
    -   [Updated dependencies](#Updated-dependencies)
-   [Change List](#Change-List)
    -   [larsoft v08\_10\_00](#larsoft-v08_10_00)
    -   [lareventdisplay v08\_03\_05](#lareventdisplay-v08_03_05)
    -   [larexamples v08\_01\_05](#larexamples-v08_01_05)
    -   [larg4 v08\_01\_05](#larg4-v08_01_05)
    -   [larpandora v08\_04\_04](#larpandora-v08_04_04)
    -   [larwirecell v08\_02\_05](#larwirecell-v08_02_05)
    -   [larana v08\_02\_02](#larana-v08_02_02)
    -   [larreco v08\_08\_01](#larreco-v08_08_01)
    -   [larsim v08\_03\_02](#larsim-v08_03_02)
    -   [larevt v08\_02\_01](#larevt-v08_02_01)
    -   [lardata v08\_03\_02](#lardata-v08_03_02)
    -   [larcore v08\_02\_00](#larcore-v08_02_00)
    -   [larpandoracontent v03\_14\_05](#larpandoracontent-v03_14_05)
    -   [larsoftobj v08\_07\_00](#larsoftobj-v08_07_00)
    -   [lardataobj v08\_02\_01](#lardataobj-v08_02_01)
    -   [lardataalg v08\_04\_00](#lardataalg-v08_04_00)
    -   [larcorealg v08\_04\_00](#larcorealg-v08_04_00)
    -   [larcoreobj v08\_02\_01](#larcoreobj-v08_02_01)
    -   [larbatch v01\_48\_00](#larbatch-v01_48_00)
    -   [larutils v1\_23\_11](#larutils-v1_23_11)

[list of LArSoft releases](LArSoft_release_list)
Download instructions for [larsoft v08\_10\_00](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v08_10_00/larsoft-v08_10_00.html)
Download instructions for [just larsoftobj v08\_07\_00](http://scisoft.fnal.gov/scisoft/bundles/larsoftobj/v08_07_00/larsoftobj-v08_07_00.html)

Purpose
--------------------

-   changes to develop
-   approved features

New features
------------------------------

-   feature/usher\_driftvelocityfudgefactor
    -   DriftVelFudgeFactor added to detector properties
    -   The default behavior is unchanged.
    -   ***breaking if you do not inherit from detectorproperties.fcl***
        -   add this line:

                DriftVelFudgeFactor: 1.

        -   for example, this change is needed in test\_ExponentialChannelNoiseService.cxx

                diff --git a/dune/DetSim/Service/test/test_ExponentialChannelNoiseService.cxx b/dune/DetSim/Service/test/test_ExponentialChannelNoiseService.cxx
                index 08342bcd..df4e63e4 100644
                --- a/dune/DetSim/Service/test/test_ExponentialChannelNoiseService.cxx
                +++ b/dune/DetSim/Service/test/test_ExponentialChannelNoiseService.cxx
                @@ -342,6 +342,8 @@ extern const std::string LArPropertiesServiceConfigurationString { R"cfg(
                extern const std::string DetectorPropertiesServiceConfigurationString { R"cfg(
                service_provider: "DetectorPropertiesServiceStandard" 

                +DriftVelFudgeFactor: 1.
                +
                # Drift properties
                SternheimerA:     0.1956  # Ar Sternheimer parameter a.
                SternheimerK:     3.0000  # Ar Sternheimer parameter k.

Bug fixes
------------------------

Updated dependencies
----------------------------------------------

-   nutools v2\_26\_08
    -   missing GTruth information added
-   nusimdata v1\_15\_03
    -   missing GTruth information added
-   ifdh\_art v2\_07\_02
-   nusystematics v00\_02\_07
-   cetbuildtools v7\_11\_00
    -   includes new format-code script that can be used with clang format
    -   format-code does not impose any formatting guidelines
    -   to use the script, add .clang-format and select format options

Change List
============================

larsoft v08\_10\_00
------------------------------------------

-   2019-02-20 Lynn Garren : larsoft v08\_10\_00 for larsoft v08\_10\_00
-   2019-02-20 Lynn Garren : for nutools v2\_26\_08

lareventdisplay v08\_03\_05
----------------------------------------------------------

-   2019-02-20 Lynn Garren : lareventdisplay v08\_03\_05 for larsoft v08\_10\_00

larexamples v08\_01\_05
--------------------------------------------------

-   2019-02-20 Lynn Garren : larexamples v08\_01\_05 for larsoft v08\_10\_00

larg4 v08\_01\_05
--------------------------------------

-   2019-02-20 Lynn Garren : larg4 v08\_01\_05 for larsoft v08\_10\_00

larpandora v08\_04\_04
------------------------------------------------

-   2019-02-20 Lynn Garren : larpandora v08\_04\_04 for larsoft v08\_10\_00

larwirecell v08\_02\_05
--------------------------------------------------

-   2019-02-20 Lynn Garren : larwirecell v08\_02\_05 for larsoft v08\_10\_00

larana v08\_02\_02
----------------------------------------

-   2019-02-20 Lynn Garren : larana v08\_02\_02 for larsoft v08\_10\_00

larreco v08\_08\_01
------------------------------------------

-   2019-02-20 Lynn Garren : larreco v08\_08\_01 for larsoft v08\_10\_00
-   2019-02-18 Tingjun Yang : Reenable the check for negative hit charge that was removed unintentionally.

larsim v08\_03\_02
----------------------------------------

-   2019-02-20 Lynn Garren : larsim v08\_03\_02 for larsoft v08\_10\_00

larevt v08\_02\_01
----------------------------------------

-   2019-02-20 Lynn Garren : larevt v08\_02\_01 for larsoft v08\_10\_00

lardata v08\_03\_02
------------------------------------------

-   2019-02-20 Lynn Garren : lardata v08\_03\_02 for larsoft v08\_10\_00

larcore v08\_02\_00
------------------------------------------

larpandoracontent v03\_14\_05
--------------------------------------------------------------

larsoftobj v08\_07\_00
------------------------------------------------

-   2019-02-20 Lynn Garren : larsoftobj v08\_07\_00 for larsoft v08\_10\_00
-   2019-02-20 Lynn Garren : for nusimdata v1\_15\_03

lardataobj v08\_02\_01
------------------------------------------------

-   2019-02-20 Lynn Garren : lardataobj v08\_02\_01 for larsoft v08\_10\_00

lardataalg v08\_04\_00
------------------------------------------------

-   2019-02-20 Lynn Garren : lardataalg v08\_04\_00 for larsoft v08\_10\_00
-   2019-02-19 Lynn Garren : Merge branch ‘feature/usher\_driftvelocityfudgefactor’ into release/v08\_09\_01
-   2019-02-11 Joseph Zennamo : Changing drift velocity fudge factor fcl parameter name
-   2019-01-28 Joseph Zennamo : Merge tag ‘tags/v08\_03\_00’ into feature/usher\_driftvelocityfudgefactor
-   2019-01-09 Usher, Tracy L : Add a fhicl variable which will allow a scaling of the drift velocity - a “fudge factor” as suggested by Michelle Stancari (hence the name)

larcorealg v08\_04\_00
------------------------------------------------

larcoreobj v08\_02\_01
------------------------------------------------

larbatch v01\_48\_00
--------------------------------------------

-   2019-02-20 Lynn Garren : larbatch v01\_48\_00 for larsoft v08\_10\_00
-   2019-02-14 Herbert Greenlee : Add ability to declare files before validate\_in\_job.

larutils v1\_23\_11
------------------------------------------
