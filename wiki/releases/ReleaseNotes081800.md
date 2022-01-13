LArSoft v08_18_00 Release Notes
======================================================================

-   **Table of contents**
-   [LArSoft v08_18_00 Release Notes](#LArSoft-v08_18_00-Release-Notes)
    -   [Purpose](#Purpose)
    -   [New features](#New-features)
    -   [Bug fixes](#Bug-fixes)
    -   [Updated dependencies](#Updated-dependencies)
-   [Change List](#Change-List)
    -   [larsoft v08_18_00](#larsoft-v08_18_00)
    -   [lareventdisplay v08_06_02](#lareventdisplay-v08_06_02)
    -   [larexamples v08_02_02](#larexamples-v08_02_02)
    -   [larg4 v08_03_01](#larg4-v08_03_01)
    -   [larpandora v08_06_02](#larpandora-v08_06_02)
    -   [larwirecell v08_05_01](#larwirecell-v08_05_01)
    -   [larana v08_07_00](#larana-v08_07_00)
    -   [larreco v08_12_02](#larreco-v08_12_02)
    -   [larsim v08_06_02](#larsim-v08_06_02)
    -   [larevt v08_04_01](#larevt-v08_04_01)
    -   [lardata v08_04_02](#lardata-v08_04_02)
    -   [larcore v08_04_01](#larcore-v08_04_01)
    -   [larpandoracontent v03_14_07](#larpandoracontent-v03_14_07)
    -   [larsoftobj v08_13_00](#larsoftobj-v08_13_00)
    -   [lardataobj v08_03_02](#lardataobj-v08_03_02)
    -   [lardataalg v08_06_02](#lardataalg-v08_06_02)
    -   [larcorealg v08_10_00](#larcorealg-v08_10_00)
    -   [larcoreobj v08_05_00](#larcoreobj-v08_05_00)
    -   [larbatch v01_51_03](#larbatch-v01_51_03)
    -   [larutils v1_23_16](#larutils-v1_23_16)

[list of LArSoft releases](LArSoft_release_list)
Download instructions for [larsoft v08_18_00](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v08_18_00/larsoft-v08_18_00.html)
Download instructions for [just larsoftobj v08_13_00](http://scisoft.fnal.gov/scisoft/bundles/larsoftobj/v08_13_00/larsoftobj-v08_13_00.html)

Purpose
--------------------

-   changes in develop
-   build with art v3_02_05 (bug fix release)

New features
------------------------------

Bug fixes
------------------------

-   art v3_02_05 resolves two problems reported against art v3_02_04
    -   Bug [redmine issue 22371](https://cdcvs.fnal.gov/redmine/issues/22371): The TimeTracker summary now reports the correct number of events processed in the art job.
    -   Bug [redmine issue 22407](https://cdcvs.fnal.gov/redmine/issues/22407): Modules that are not enabled for event-processing will not be constructed.

Updated dependencies
----------------------------------------------

-   art v3_02_05 (s83)
-   art_root_io v1_00_05
-   ifdhc_config v2_4_2
-   ifdh_art v2_08_02
-   artdaq_core v3_04_15
-   nutools v2_29_02
-   systematicstools v00_03_02
-   nusystematics v00_03_02
-   artg4tk v09_04_02
-   mrb v3_02_00

Change List
============================

larsoft v08_18_00
------------------------------------------

-   2019-05-01 Lynn Garren : larsoft v08_18_00 for larsoft v08_18_00
-   2019-05-01 Lynn Garren : product versions
-   2019-04-29 Lynn Garren : mrb v3_02_00
-   2019-04-25 Lynn Garren : Mojave replaces Sierra builds

lareventdisplay v08_06_02
----------------------------------------------------------

-   2019-05-01 Lynn Garren : lareventdisplay v08_06_02 for larsoft v08_18_00

larexamples v08_02_02
--------------------------------------------------

-   2019-05-01 Lynn Garren : larexamples v08_02_02 for larsoft v08_18_00

larg4 v08_03_01
--------------------------------------

-   2019-05-01 Lynn Garren : larg4 v08_03_01 for larsoft v08_18_00

larpandora v08_06_02
------------------------------------------------

-   2019-05-01 Lynn Garren : larpandora v08_06_02 for larsoft v08_18_00

larwirecell v08_05_01
--------------------------------------------------

-   2019-05-01 Lynn Garren : larwirecell v08_05_01 for larsoft v08_18_00

larana v08_07_00
----------------------------------------

-   2019-05-01 Lynn Garren : larana v08_07_00 for larsoft v08_18_00
-   2019-04-30 Kyle Spurgeon : Removed unnecessary cout.
-   2019-04-30 Kyle Spurgeon : Added pedestal finding to AlgoSiPM
-   2019-04-30 Kyle Spurgeon : Merge branch ‘develop’ of ssh://cdcvs.fnal.gov/cvs/projects/larana into develop
-   2019-04-30 Kyle Spurgeon : Added pedestal information for AlgoSiPM:
-   2019-04-25 Kyle Spurgeon : Updated SiPM OpHit alg to take pedestal input

larreco v08_12_02
------------------------------------------

-   2019-05-01 Lynn Garren : larreco v08_12_02 for larsoft v08_18_00

larsim v08_06_02
----------------------------------------

-   2019-05-01 Lynn Garren : larsim v08_06_02 for larsoft v08_18_00

larevt v08_04_01
----------------------------------------

-   2019-05-01 Lynn Garren : larevt v08_04_01 for larsoft v08_18_00

lardata v08_04_02
------------------------------------------

-   2019-05-01 Lynn Garren : lardata v08_04_02 for larsoft v08_18_00

larcore v08_04_01
------------------------------------------

-   2019-05-01 Lynn Garren : larcore v08_04_01 for larsoft v08_18_00

larpandoracontent v03_14_07
--------------------------------------------------------------

larsoftobj v08_13_00
------------------------------------------------

-   2019-05-01 Lynn Garren : larsoftobj v08_13_00 for larsoft v08_18_00
-   2019-05-01 Lynn Garren : Mojave
-   2019-05-01 Lynn Garren : product versions

lardataobj v08_03_02
------------------------------------------------

-   2019-05-01 Lynn Garren : lardataobj v08_03_02 for larsoft v08_18_00

lardataalg v08_06_02
------------------------------------------------

-   2019-05-01 Lynn Garren : lardataalg v08_06_02 for larsoft v08_18_00

larcorealg v08_10_00
------------------------------------------------

-   2019-05-01 Lynn Garren : larcorealg v08_10_00 for larsoft v08_18_00
-   2019-04-29 Gianluca Petrillo : Future-proofing plane interface.
-   2019-04-29 Gianluca Petrillo : Added table of contents to the minimal LArTPC GDML.
-   2019-04-28 Gianluca Petrillo : Added minimal LAr TPC geometry description.

larcoreobj v08_05_00
------------------------------------------------

larbatch v01_51_03
--------------------------------------------

-   2019-05-01 Lynn Garren : larbatch v01_51_03 for larsoft v08_18_00
-   2019-04-30 Herbert Greenlee : Set jobsub job id for start-project processes.
-   2019-04-26 Herbert Greenlee : Handle case of empty file list definition.
-   2019-04-26 Herbert Greenlee : Merge branch ‘develop’ of ssh://cdcvs.fnal.gov/cvs/projects/larbatch into develop
-   2019-04-26 Herbert Greenlee : condor_hadd_sam.sh maintenance.

larutils v1_23_16
------------------------------------------

-   2019-05-01 Lynn Garren : larutils v1_23_16 for larsoft v08_18_00
-   2019-04-26 Thomas Junk : ignore LARSOFT_QUAL and get SQUAL from artdaq_core instead
