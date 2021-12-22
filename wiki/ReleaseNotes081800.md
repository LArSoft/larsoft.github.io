LArSoft v08\_18\_00 Release Notes(#LArSoft-v08_18_00-Release-Notes)
======================================================================

-   **Table of contents**
-   [LArSoft v08\_18\_00 Release Notes](#LArSoft-v08_18_00-Release-Notes)
    -   [Purpose](#Purpose)
    -   [New features](#New-features)
    -   [Bug fixes](#Bug-fixes)
    -   [Updated dependencies](#Updated-dependencies)
-   [Change List](#Change-List)
    -   [larsoft v08\_18\_00](#larsoft-v08_18_00)
    -   [lareventdisplay v08\_06\_02](#lareventdisplay-v08_06_02)
    -   [larexamples v08\_02\_02](#larexamples-v08_02_02)
    -   [larg4 v08\_03\_01](#larg4-v08_03_01)
    -   [larpandora v08\_06\_02](#larpandora-v08_06_02)
    -   [larwirecell v08\_05\_01](#larwirecell-v08_05_01)
    -   [larana v08\_07\_00](#larana-v08_07_00)
    -   [larreco v08\_12\_02](#larreco-v08_12_02)
    -   [larsim v08\_06\_02](#larsim-v08_06_02)
    -   [larevt v08\_04\_01](#larevt-v08_04_01)
    -   [lardata v08\_04\_02](#lardata-v08_04_02)
    -   [larcore v08\_04\_01](#larcore-v08_04_01)
    -   [larpandoracontent v03\_14\_07](#larpandoracontent-v03_14_07)
    -   [larsoftobj v08\_13\_00](#larsoftobj-v08_13_00)
    -   [lardataobj v08\_03\_02](#lardataobj-v08_03_02)
    -   [lardataalg v08\_06\_02](#lardataalg-v08_06_02)
    -   [larcorealg v08\_10\_00](#larcorealg-v08_10_00)
    -   [larcoreobj v08\_05\_00](#larcoreobj-v08_05_00)
    -   [larbatch v01\_51\_03](#larbatch-v01_51_03)
    -   [larutils v1\_23\_16](#larutils-v1_23_16)

[list of LArSoft releases](LArSoft_release_list)\
Download instructions for [larsoft v08\_18\_00](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v08_18_00/larsoft-v08_18_00.html)\
Download instructions for [just larsoftobj v08\_13\_00](http://scisoft.fnal.gov/scisoft/bundles/larsoftobj/v08_13_00/larsoftobj-v08_13_00.html)

Purpose(#Purpose)
--------------------

-   changes in develop
-   build with art v3\_02\_05 (bug fix release)

New features(#New-features)
------------------------------

Bug fixes(#Bug-fixes)
------------------------

-   art v3\_02\_05 resolves two problems reported against art v3\_02\_04
    -   Bug [\#22371](/redmine/issues/22371 "Bug: TimeTracker summary wrong when only one event in the job (Closed)"): The TimeTracker summary now reports the correct number of events processed in the art job.
    -   Bug [\#22407](/redmine/issues/22407 "Bug: art 3.02.04 constructs modules that are not included in paths (Closed)"): Modules that are not enabled for event-processing will not be constructed.

Updated dependencies(#Updated-dependencies)
----------------------------------------------

-   art v3\_02\_05 (s83)
-   art\_root\_io v1\_00\_05
-   ifdhc\_config v2\_4\_2
-   ifdh\_art v2\_08\_02
-   artdaq\_core v3\_04\_15
-   nutools v2\_29\_02
-   systematicstools v00\_03\_02
-   nusystematics v00\_03\_02
-   artg4tk v09\_04\_02
-   mrb v3\_02\_00

Change List(#Change-List)
============================

larsoft v08\_18\_00(#larsoft-v08_18_00)
------------------------------------------

-   2019-05-01 Lynn Garren : larsoft v08\_18\_00 for larsoft v08\_18\_00
-   2019-05-01 Lynn Garren : product versions
-   2019-04-29 Lynn Garren : mrb v3\_02\_00
-   2019-04-25 Lynn Garren : Mojave replaces Sierra builds

lareventdisplay v08\_06\_02(#lareventdisplay-v08_06_02)
----------------------------------------------------------

-   2019-05-01 Lynn Garren : lareventdisplay v08\_06\_02 for larsoft v08\_18\_00

larexamples v08\_02\_02(#larexamples-v08_02_02)
--------------------------------------------------

-   2019-05-01 Lynn Garren : larexamples v08\_02\_02 for larsoft v08\_18\_00

larg4 v08\_03\_01(#larg4-v08_03_01)
--------------------------------------

-   2019-05-01 Lynn Garren : larg4 v08\_03\_01 for larsoft v08\_18\_00

larpandora v08\_06\_02(#larpandora-v08_06_02)
------------------------------------------------

-   2019-05-01 Lynn Garren : larpandora v08\_06\_02 for larsoft v08\_18\_00

larwirecell v08\_05\_01(#larwirecell-v08_05_01)
--------------------------------------------------

-   2019-05-01 Lynn Garren : larwirecell v08\_05\_01 for larsoft v08\_18\_00

larana v08\_07\_00(#larana-v08_07_00)
----------------------------------------

-   2019-05-01 Lynn Garren : larana v08\_07\_00 for larsoft v08\_18\_00
-   2019-04-30 Kyle Spurgeon : Removed unnecessary cout.
-   2019-04-30 Kyle Spurgeon : Added pedestal finding to AlgoSiPM
-   2019-04-30 Kyle Spurgeon : Merge branch ‘develop’ of ssh://cdcvs.fnal.gov/cvs/projects/larana into develop
-   2019-04-30 Kyle Spurgeon : Added pedestal information for AlgoSiPM:
-   2019-04-25 Kyle Spurgeon : Updated SiPM OpHit alg to take pedestal input

larreco v08\_12\_02(#larreco-v08_12_02)
------------------------------------------

-   2019-05-01 Lynn Garren : larreco v08\_12\_02 for larsoft v08\_18\_00

larsim v08\_06\_02(#larsim-v08_06_02)
----------------------------------------

-   2019-05-01 Lynn Garren : larsim v08\_06\_02 for larsoft v08\_18\_00

larevt v08\_04\_01(#larevt-v08_04_01)
----------------------------------------

-   2019-05-01 Lynn Garren : larevt v08\_04\_01 for larsoft v08\_18\_00

lardata v08\_04\_02(#lardata-v08_04_02)
------------------------------------------

-   2019-05-01 Lynn Garren : lardata v08\_04\_02 for larsoft v08\_18\_00

larcore v08\_04\_01(#larcore-v08_04_01)
------------------------------------------

-   2019-05-01 Lynn Garren : larcore v08\_04\_01 for larsoft v08\_18\_00

larpandoracontent v03\_14\_07(#larpandoracontent-v03_14_07)
--------------------------------------------------------------

larsoftobj v08\_13\_00(#larsoftobj-v08_13_00)
------------------------------------------------

-   2019-05-01 Lynn Garren : larsoftobj v08\_13\_00 for larsoft v08\_18\_00
-   2019-05-01 Lynn Garren : Mojave
-   2019-05-01 Lynn Garren : product versions

lardataobj v08\_03\_02(#lardataobj-v08_03_02)
------------------------------------------------

-   2019-05-01 Lynn Garren : lardataobj v08\_03\_02 for larsoft v08\_18\_00

lardataalg v08\_06\_02(#lardataalg-v08_06_02)
------------------------------------------------

-   2019-05-01 Lynn Garren : lardataalg v08\_06\_02 for larsoft v08\_18\_00

larcorealg v08\_10\_00(#larcorealg-v08_10_00)
------------------------------------------------

-   2019-05-01 Lynn Garren : larcorealg v08\_10\_00 for larsoft v08\_18\_00
-   2019-04-29 Gianluca Petrillo : Future-proofing plane interface.
-   2019-04-29 Gianluca Petrillo : Added table of contents to the minimal LArTPC GDML.
-   2019-04-28 Gianluca Petrillo : Added minimal LAr TPC geometry description.

larcoreobj v08\_05\_00(#larcoreobj-v08_05_00)
------------------------------------------------

larbatch v01\_51\_03(#larbatch-v01_51_03)
--------------------------------------------

-   2019-05-01 Lynn Garren : larbatch v01\_51\_03 for larsoft v08\_18\_00
-   2019-04-30 Herbert Greenlee : Set jobsub job id for start-project processes.
-   2019-04-26 Herbert Greenlee : Handle case of empty file list definition.
-   2019-04-26 Herbert Greenlee : Merge branch ‘develop’ of ssh://cdcvs.fnal.gov/cvs/projects/larbatch into develop
-   2019-04-26 Herbert Greenlee : condor\_hadd\_sam.sh maintenance.

larutils v1\_23\_16(#larutils-v1_23_16)
------------------------------------------

-   2019-05-01 Lynn Garren : larutils v1\_23\_16 for larsoft v08\_18\_00
-   2019-04-26 Thomas Junk : ignore LARSOFT\_QUAL and get SQUAL from artdaq\_core instead
