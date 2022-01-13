LArSoft v09_21_00 Release Notes
======================================================================

-   **Table of contents**
-   [LArSoft v09_21_00 Release Notes](#LArSoft-v09_21_00-Release-Notes)
    -   [Purpose](#Purpose)
    -   [New features](#New-features)
    -   [Bug fixes](#Bug-fixes)
    -   [Updated dependencies](#Updated-dependencies)
-   [Change List](#Change-List)
    -   [larsoft v09_21_00](#larsoft-v09_21_00)
    -   [lareventdisplay v09_01_06](#lareventdisplay-v09_01_06)
    -   [larexamples v09_01_06](#larexamples-v09_01_06)
    -   [larpandora v09_05_07](#larpandora-v09_05_07)
    -   [larsimrad v09_01_06](#larsimrad-v09_01_06)
    -   [larrecodnn v09_06_05](#larrecodnn-v09_06_05)
    -   [larwirecell v09_02_03](#larwirecell-v09_02_03)
    -   [larana v09_02_02](#larana-v09_02_02)
    -   [larreco v09_06_02](#larreco-v09_06_02)
    -   [larsim v09_12_00](#larsim-v09_12_00)
    -   [larg4 v09_03_03](#larg4-v09_03_03)
    -   [larevt v09_02_02](#larevt-v09_02_02)
    -   [lardata v09_02_01](#lardata-v09_02_01)
    -   [larcore v09_02_01](#larcore-v09_02_01)
    -   [larpandoracontent v03_22_09](#larpandoracontent-v03_22_09)
    -   [larsoftobj v09_05_01](#larsoftobj-v09_05_01)
    -   [lardataobj v09_01_01](#lardataobj-v09_01_01)
    -   [lardataalg v09_04_01](#lardataalg-v09_04_01)
    -   [larcorealg v09_01_01](#larcorealg-v09_01_01)
    -   [larcoreobj v09_02_00](#larcoreobj-v09_02_00)
    -   [webevd v09_05_02](#webevd-v09_05_02)
    -   [larbatch v01_55_01](#larbatch-v01_55_01)
    -   [larutils v1_28_00](#larutils-v1_28_00)

[list of LArSoft releases](LArSoft_release_list)
Download instructions for [larsoft v09_21_00](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v09_21_00/larsoft-v09_21_00.html)
Download instructions for [just larsoftobj v09_05_01](http://scisoft.fnal.gov/scisoft/bundles/larsoftobj/v09_05_01/larsoftobj-v09_05_01.html)

Purpose
--------------------

-   changes in develop
-   approved PRs

New features
------------------------------

-   larsim PR 64
    -   Refactor EventWeight interface to GENIE v3
    -   **This is a breaking change** See the [technote](https://cdcvs.fnal.gov/redmine/attachments/63586/genieweightcalc_technote.pdf)
    -   23 Feb 2021 LArSoft Coordination Meeting [slides](https://indico.fnal.gov/event/47983/contributions/209278/attachments/140332/176331/genie_v3_reweight_larsoft.pdf)
-   larutils PRs 9 and 10
    -   update SBN and SBND build scripts

Bug fixes
------------------------

-   larbatch PR 14
    -   resolve [redmine issue 25709](https://cdcvs.fnal.gov/redmine/issues/25709)

Updated dependencies
----------------------------------------------

-   sundials v5_6_1a
-   stan_math v4_0_1
-   stan v2_26_1

Change List
============================

larsoft v09_21_00
------------------------------------------

-   2021-04-07 Lynn Garren : larsoft v09_21_00 for larsoft v09_21_00
-   2021-04-07 Lynn Garren : product versions
-   2021-04-07 Lynn Garren : sundials v5_6_1a, stan_math v4_0_1, stan v2_26_1

lareventdisplay v09_01_06
----------------------------------------------------------

-   2021-04-07 Lynn Garren : lareventdisplay v09_01_06 for larsoft v09_21_00

larexamples v09_01_06
--------------------------------------------------

-   2021-04-07 Lynn Garren : larexamples v09_01_06 for larsoft v09_21_00

larpandora v09_05_07
------------------------------------------------

-   2021-04-07 Lynn Garren : larpandora v09_05_07 for larsoft v09_21_00

larsimrad v09_01_06
----------------------------------------------

-   2021-04-07 Lynn Garren : larsimrad v09_01_06 for larsoft v09_21_00

larrecodnn v09_06_05
------------------------------------------------

-   2021-04-07 Lynn Garren : larrecodnn v09_06_05 for larsoft v09_21_00

larwirecell v09_02_03
--------------------------------------------------

larana v09_02_02
----------------------------------------

-   2021-04-07 Lynn Garren : larana v09_02_02 for larsoft v09_21_00

larreco v09_06_02
------------------------------------------

-   2021-04-07 Lynn Garren : larreco v09_06_02 for larsoft v09_21_00

larsim v09_12_00
----------------------------------------

-   2021-04-07 Lynn Garren : larsim v09_12_00 for larsoft v09_21_00
-   2021-04-06 Lynn Garren : Merge branch ‘feature/gardiner-refactor-genie-rwght’ into release/v09_21_00
-   2021-03-19 Steven Gardiner : Fix unused variable warning
-   2021-03-17 Steven Gardiner : Remove the example fcl for running GENIE reweighting in MicroBooNE in favor of the universal “generic” example. Experiment-specific ones should go in the appropriate repositories for ubsim, etc. Tweak the GenieWeightCalc class so that configuration parameters which are unused do not need to be explicitly specified anymore. Add a gallery macro that will retrieve and print the weights from an artroot file produced by running genie_reweight_generic.fcl.
-   2021-02-23 Steven Gardiner : Rewrite genie_eventweight.fcl to provide a trivial GENIE v3-compatible example for testing
-   2021-02-22 Steven Gardiner : Add an experiment-agnostic example fcl to use for running GENIE reweighting
-   2021-02-22 Steven Gardiner : Update the “pm1sigma” mode to respect the user’s fcl input that defines what “1-sigma” means in terms of the nominal GENIE value
-   2021-02-22 Steven Gardiner : Switch from printing a warning to throwing an exception in cases where an unrecognized GENIE reweighting knob name (as judged by GENIE itself via a conversion to the genie::rew::GSyst_t enumerated type) is encountered.
-   2021-02-22 Steven Gardiner : Update EventWeight headers and library list for splitting of nutools into separate repositories
-   2021-02-22 Steven Gardiner : Update larsim/EventWeight/Calculators/CMakeLists.txt to link to GENIE properly
-   2020-03-19 Steven Gardiner : Fix edge case in which the CCQE weight calculator is not always configured correctly
-   2020-03-17 Steven Gardiner : Fix edge case where untweaked CV knobs are not added when throwing systematics in UBGenieWeightCalc. This ensures that systematic weights are always thrown around the tuned CV.
-   2020-03-16 Steven Gardiner : Add the ability to run reweighting in “quiet mode” (now default but FHiCL-configurable)
-   2020-03-16 Steven Gardiner : Add new weight calculators from GENIE v3.0.4 MicroBooNE patch 02. Also move the GENIE-specific stuff from the global ubsim CMakeLists.txt to the one for the ubsim/EventWeight/Calculators folder.
-   2019-12-11 Steven Gardiner : Add the “minmax” and “central_value” reweighting modes to the GENIE weight calculator. Manually silence some annoying logging messsages from GENIE that obscure the useful parts of the reweighting logs. Also fix a problem in which a couple of variables needed by the new MEC weight calculators were not being set in the event record by evgb::RetrieveGHEP(). The symptom of this problem is inf or NaN weights returned by genie::rew::GReWeightXSecMEC::CalcWeight().
-   2019-12-10 Steven Gardiner : Add parsing of modified GENIE knob central values from the input FHiCL file. Also add a bunch of logging messages.
-   2019-12-10 Steven Gardiner : Rewrite GenieWeightCalc.cxx to interface directly with GENIE’s native reweighting tools
-   2019-04-16 Steven Gardiner : Refactor the EventWeight module to use the new evgb::SetEventGeneratorListAndTune() function to configure GENIE.
-   2018-12-19 Steven Gardiner : In GenieWeightCalc.cxx, add checks of the GENIE_PRE_R3 preprocessor macro around GENIE headers and references to the pion or nucleon elastic fate FSI tweak dials (removed in hA2018 for GENIE v3)

larg4 v09_03_03
--------------------------------------

larevt v09_02_02
----------------------------------------

lardata v09_02_01
------------------------------------------

larcore v09_02_01
------------------------------------------

larpandoracontent v03_22_09
--------------------------------------------------------------

larsoftobj v09_05_01
------------------------------------------------

lardataobj v09_01_01
------------------------------------------------

lardataalg v09_04_01
------------------------------------------------

larcorealg v09_01_01
------------------------------------------------

larcoreobj v09_02_00
------------------------------------------------

webevd v09_05_02
----------------------------------------

larbatch v01_55_01
--------------------------------------------

-   2021-04-07 Lynn Garren : larbatch v01_55_01 for larsoft v09_21_00
-   2021-04-05 Lynn Garren : Merge pull request \#14 from PetrilloAtWork/feature/gp_containerQuotingFix
-   2021-04-02 Gianluca Petrillo : Fixed quoting of jobsub option specifying singularity image

larutils v1_28_00
------------------------------------------

-   2021-04-07 Lynn Garren : larutils v1_28_00 for larsoft v09_21_00
-   2021-04-06 Lynn Garren : Merge pull request \#10 from pgreen135/feature/pgreen_sbnd_build_script_update
-   2021-04-06 Patrick Green : updated SBND build script to enable branch(es) to be specified, following approach used for SBN
-   2021-04-05 Lynn Garren : Merge pull request \#9 from SBNSoftware/develop
-   2021-02-05 Wesley : Merge branch ‘develop’ of github.com:SBNSoftware/larutils into develop
-   2021-02-04 Lynn Garren : back to normal
-   2021-02-04 Lynn Garren : temporarily disable the larwire distribution while we fix it for art 3.06
-   2021-02-02 Wesley : make manifest
-   2021-02-01 Wesley : update build scripts for initial split rollout
-   2021-01-26 Wesley : cleanup buildSBN, and add buildSBNANA starter
-   2021-01-22 Wesley : add echos to sbn setup
-   2021-01-22 Wesley : Merge branch ‘develop’ of github.com:SBNSoftware/larutils into develop
-   2020-12-14 Wesley : Merge branch ‘develop’ of github.com:SBNSoftware/larutils into develop
-   2020-11-04 Wesley : Merge branch ‘develop’ of github.com:SBNSoftware/larutils into develop
-   2020-11-04 Wesley : setup sbn cvmfs area
