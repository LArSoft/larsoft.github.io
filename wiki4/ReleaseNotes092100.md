LArSoft v09\_21\_00 Release Notes[¶](#LArSoft-v09_21_00-Release-Notes)
======================================================================

-   **Table of contents**
-   [LArSoft v09\_21\_00 Release Notes](#LArSoft-v09_21_00-Release-Notes)
    -   [Purpose](#Purpose)
    -   [New features](#New-features)
    -   [Bug fixes](#Bug-fixes)
    -   [Updated dependencies](#Updated-dependencies)
-   [Change List](#Change-List)
    -   [larsoft v09\_21\_00](#larsoft-v09_21_00)
    -   [lareventdisplay v09\_01\_06](#lareventdisplay-v09_01_06)
    -   [larexamples v09\_01\_06](#larexamples-v09_01_06)
    -   [larpandora v09\_05\_07](#larpandora-v09_05_07)
    -   [larsimrad v09\_01\_06](#larsimrad-v09_01_06)
    -   [larrecodnn v09\_06\_05](#larrecodnn-v09_06_05)
    -   [larwirecell v09\_02\_03](#larwirecell-v09_02_03)
    -   [larana v09\_02\_02](#larana-v09_02_02)
    -   [larreco v09\_06\_02](#larreco-v09_06_02)
    -   [larsim v09\_12\_00](#larsim-v09_12_00)
    -   [larg4 v09\_03\_03](#larg4-v09_03_03)
    -   [larevt v09\_02\_02](#larevt-v09_02_02)
    -   [lardata v09\_02\_01](#lardata-v09_02_01)
    -   [larcore v09\_02\_01](#larcore-v09_02_01)
    -   [larpandoracontent v03\_22\_09](#larpandoracontent-v03_22_09)
    -   [larsoftobj v09\_05\_01](#larsoftobj-v09_05_01)
    -   [lardataobj v09\_01\_01](#lardataobj-v09_01_01)
    -   [lardataalg v09\_04\_01](#lardataalg-v09_04_01)
    -   [larcorealg v09\_01\_01](#larcorealg-v09_01_01)
    -   [larcoreobj v09\_02\_00](#larcoreobj-v09_02_00)
    -   [webevd v09\_05\_02](#webevd-v09_05_02)
    -   [larbatch v01\_55\_01](#larbatch-v01_55_01)
    -   [larutils v1\_28\_00](#larutils-v1_28_00)

[list of LArSoft releases](LArSoft_release_list)\
Download instructions for [larsoft v09\_21\_00](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v09_21_00/larsoft-v09_21_00.html)\
Download instructions for [just larsoftobj v09\_05\_01](http://scisoft.fnal.gov/scisoft/bundles/larsoftobj/v09_05_01/larsoftobj-v09_05_01.html)


Purpose[¶](#Purpose)
--------------------

-   changes in develop
-   approved PRs


New features[¶](#New-features)
------------------------------

-   larsim PR 64
    -   Refactor EventWeight interface to GENIE v3
    -   **This is a breaking change** See the [technote](https://cdcvs.fnal.gov/redmine/attachments/63586/genieweightcalc_technote.pdf)
    -   23 Feb 2021 LArSoft Coordination Meeting [slides](https://indico.fnal.gov/event/47983/contributions/209278/attachments/140332/176331/genie_v3_reweight_larsoft.pdf)
-   larutils PRs 9 and 10
    -   update SBN and SBND build scripts


Bug fixes[¶](#Bug-fixes)
------------------------

-   larbatch PR 14
    -   resolve [\#25709](/redmine/issues/25709 "Bug: project.py: Parse error in expression (Closed)")


Updated dependencies[¶](#Updated-dependencies)
----------------------------------------------

-   sundials v5\_6\_1a
-   stan\_math v4\_0\_1
-   stan v2\_26\_1


Change List[¶](#Change-List)
============================


larsoft v09\_21\_00[¶](#larsoft-v09_21_00)
------------------------------------------

-   2021-04-07 Lynn Garren : larsoft v09\_21\_00 for larsoft v09\_21\_00
-   2021-04-07 Lynn Garren : product versions
-   2021-04-07 Lynn Garren : sundials v5\_6\_1a, stan\_math v4\_0\_1, stan v2\_26\_1


lareventdisplay v09\_01\_06[¶](#lareventdisplay-v09_01_06)
----------------------------------------------------------

-   2021-04-07 Lynn Garren : lareventdisplay v09\_01\_06 for larsoft v09\_21\_00


larexamples v09\_01\_06[¶](#larexamples-v09_01_06)
--------------------------------------------------

-   2021-04-07 Lynn Garren : larexamples v09\_01\_06 for larsoft v09\_21\_00


larpandora v09\_05\_07[¶](#larpandora-v09_05_07)
------------------------------------------------

-   2021-04-07 Lynn Garren : larpandora v09\_05\_07 for larsoft v09\_21\_00


larsimrad v09\_01\_06[¶](#larsimrad-v09_01_06)
----------------------------------------------

-   2021-04-07 Lynn Garren : larsimrad v09\_01\_06 for larsoft v09\_21\_00


larrecodnn v09\_06\_05[¶](#larrecodnn-v09_06_05)
------------------------------------------------

-   2021-04-07 Lynn Garren : larrecodnn v09\_06\_05 for larsoft v09\_21\_00


larwirecell v09\_02\_03[¶](#larwirecell-v09_02_03)
--------------------------------------------------


larana v09\_02\_02[¶](#larana-v09_02_02)
----------------------------------------

-   2021-04-07 Lynn Garren : larana v09\_02\_02 for larsoft v09\_21\_00


larreco v09\_06\_02[¶](#larreco-v09_06_02)
------------------------------------------

-   2021-04-07 Lynn Garren : larreco v09\_06\_02 for larsoft v09\_21\_00


larsim v09\_12\_00[¶](#larsim-v09_12_00)
----------------------------------------

-   2021-04-07 Lynn Garren : larsim v09\_12\_00 for larsoft v09\_21\_00
-   2021-04-06 Lynn Garren : Merge branch ‘feature/gardiner-refactor-genie-rwght’ into release/v09\_21\_00
-   2021-03-19 Steven Gardiner : Fix unused variable warning
-   2021-03-17 Steven Gardiner : Remove the example fcl for running GENIE reweighting in MicroBooNE in favor of the universal “generic” example. Experiment-specific ones should go in the appropriate repositories for ubsim, etc. Tweak the GenieWeightCalc class so that configuration parameters which are unused do not need to be explicitly specified anymore. Add a gallery macro that will retrieve and print the weights from an artroot file produced by running genie\_reweight\_generic.fcl.
-   2021-02-23 Steven Gardiner : Rewrite genie\_eventweight.fcl to provide a trivial GENIE v3-compatible example for testing
-   2021-02-22 Steven Gardiner : Add an experiment-agnostic example fcl to use for running GENIE reweighting
-   2021-02-22 Steven Gardiner : Update the “pm1sigma” mode to respect the user’s fcl input that defines what “1-sigma” means in terms of the nominal GENIE value
-   2021-02-22 Steven Gardiner : Switch from printing a warning to throwing an exception in cases where an unrecognized GENIE reweighting knob name (as judged by GENIE itself via a conversion to the genie::rew::GSyst\_t enumerated type) is encountered.
-   2021-02-22 Steven Gardiner : Update EventWeight headers and library list for splitting of nutools into separate repositories
-   2021-02-22 Steven Gardiner : Update larsim/EventWeight/Calculators/CMakeLists.txt to link to GENIE properly
-   2020-03-19 Steven Gardiner : Fix edge case in which the CCQE weight calculator is not always configured correctly
-   2020-03-17 Steven Gardiner : Fix edge case where untweaked CV knobs are not added when throwing systematics in UBGenieWeightCalc. This ensures that systematic weights are always thrown around the tuned CV.
-   2020-03-16 Steven Gardiner : Add the ability to run reweighting in “quiet mode” (now default but FHiCL-configurable)
-   2020-03-16 Steven Gardiner : Add new weight calculators from GENIE v3.0.4 MicroBooNE patch 02. Also move the GENIE-specific stuff from the global ubsim CMakeLists.txt to the one for the ubsim/EventWeight/Calculators folder.
-   2019-12-11 Steven Gardiner : Add the “minmax” and “central\_value” reweighting modes to the GENIE weight calculator. Manually silence some annoying logging messsages from GENIE that obscure the useful parts of the reweighting logs. Also fix a problem in which a couple of variables needed by the new MEC weight calculators were not being set in the event record by evgb::RetrieveGHEP(). The symptom of this problem is inf or NaN weights returned by genie::rew::GReWeightXSecMEC::CalcWeight().
-   2019-12-10 Steven Gardiner : Add parsing of modified GENIE knob central values from the input FHiCL file. Also add a bunch of logging messages.
-   2019-12-10 Steven Gardiner : Rewrite GenieWeightCalc.cxx to interface directly with GENIE’s native reweighting tools
-   2019-04-16 Steven Gardiner : Refactor the EventWeight module to use the new evgb::SetEventGeneratorListAndTune() function to configure GENIE.
-   2018-12-19 Steven Gardiner : In GenieWeightCalc.cxx, add checks of the GENIE\_PRE\_R3 preprocessor macro around GENIE headers and references to the pion or nucleon elastic fate FSI tweak dials (removed in hA2018 for GENIE v3)


larg4 v09\_03\_03[¶](#larg4-v09_03_03)
--------------------------------------


larevt v09\_02\_02[¶](#larevt-v09_02_02)
----------------------------------------


lardata v09\_02\_01[¶](#lardata-v09_02_01)
------------------------------------------


larcore v09\_02\_01[¶](#larcore-v09_02_01)
------------------------------------------


larpandoracontent v03\_22\_09[¶](#larpandoracontent-v03_22_09)
--------------------------------------------------------------


larsoftobj v09\_05\_01[¶](#larsoftobj-v09_05_01)
------------------------------------------------


lardataobj v09\_01\_01[¶](#lardataobj-v09_01_01)
------------------------------------------------


lardataalg v09\_04\_01[¶](#lardataalg-v09_04_01)
------------------------------------------------


larcorealg v09\_01\_01[¶](#larcorealg-v09_01_01)
------------------------------------------------


larcoreobj v09\_02\_00[¶](#larcoreobj-v09_02_00)
------------------------------------------------


webevd v09\_05\_02[¶](#webevd-v09_05_02)
----------------------------------------


larbatch v01\_55\_01[¶](#larbatch-v01_55_01)
--------------------------------------------

-   2021-04-07 Lynn Garren : larbatch v01\_55\_01 for larsoft v09\_21\_00
-   2021-04-05 Lynn Garren : Merge pull request \#14 from PetrilloAtWork/feature/gp\_containerQuotingFix
-   2021-04-02 Gianluca Petrillo : Fixed quoting of jobsub option specifying singularity image


larutils v1\_28\_00[¶](#larutils-v1_28_00)
------------------------------------------

-   2021-04-07 Lynn Garren : larutils v1\_28\_00 for larsoft v09\_21\_00
-   2021-04-06 Lynn Garren : Merge pull request \#10 from pgreen135/feature/pgreen\_sbnd\_build\_script\_update
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
