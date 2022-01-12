LArSoft v09\_04\_00 Release Notes
======================================================================

-   **Table of contents**
-   [LArSoft v09\_04\_00 Release Notes](#LArSoft-v09_04_00-Release-Notes)
    -   [Purpose](#Purpose)
    -   [New features](#New-features)
    -   [Bug fixes](#Bug-fixes)
    -   [Updated dependencies](#Updated-dependencies)
-   [Change List](#Change-List)
    -   [larsoft v09\_04\_00](#larsoft-v09_04_00)
    -   [lareventdisplay v09\_00\_05](#lareventdisplay-v09_00_05)
    -   [larexamples v09\_00\_05](#larexamples-v09_00_05)
    -   [larg4 v09\_00\_05](#larg4-v09_00_05)
    -   [larpandora v09\_01\_01](#larpandora-v09_01_01)
    -   [larsimrad v09\_00\_05](#larsimrad-v09_00_05)
    -   [larrecodnn v09\_01\_00](#larrecodnn-v09_01_00)
    -   [larwirecell v09\_01\_02](#larwirecell-v09_01_02)
    -   [larana v09\_00\_05](#larana-v09_00_05)
    -   [larreco v09\_02\_00](#larreco-v09_02_00)
    -   [larsim v09\_03\_00](#larsim-v09_03_00)
    -   [larevt v09\_00\_05](#larevt-v09_00_05)
    -   [lardata v09\_01\_00](#lardata-v09_01_00)
    -   [larcore v09\_00\_00](#larcore-v09_00_00)
    -   [larpandoracontent v03\_19\_03](#larpandoracontent-v03_19_03)
    -   [larsoftobj v09\_01\_00](#larsoftobj-v09_01_00)
    -   [lardataobj v09\_00\_00](#lardataobj-v09_00_00)
    -   [lardataalg v09\_01\_00](#lardataalg-v09_01_00)
    -   [larcorealg v09\_00\_00](#larcorealg-v09_00_00)
    -   [larcoreobj v09\_00\_00](#larcoreobj-v09_00_00)
    -   [webevd v09\_00\_05](#webevd-v09_00_05)
    -   [larbatch v01\_53\_01](#larbatch-v01_53_01)
    -   [larutils v1\_26\_01](#larutils-v1_26_01)

[list of LArSoft releases](LArSoft_release_list)
Download instructions for [larsoft v09\_04\_00](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v09_04_00/larsoft-v09_04_00.html)
Download instructions for [just larsoftobj v09\_01\_00](http://scisoft.fnal.gov/scisoft/bundles/larsoftobj/v09_01_00/larsoftobj-v09_01_00.html)

Purpose
--------------------

-   changes in develop
-   approved PRs

New features
------------------------------

-   New SCE Corrections
    -   **dunetpc feature/etyley\_sce\_v9**
    -   lardataalg PR 12
        -   Changed EField to be a input parameter for recombination calculations in detector properties. Previously this calculation used the global electric field but this change allows for passing of a local electric field in the case of non-uniformity (e.g. space charge). Note the lardata PR required by this for ArgoNeut.
    -   lardata PR 9
        -   Changed EField to be a input parameter for recombination calculations in detector properties. Previously this calculation used the global electric field but this change allows for passing of a local electric field in the case of non-uniformity (e.g. space charge). Relies upon lardataalg PR 12.
    -   larreco PR 18
        -   Changes to CalorimetryAlg to allow for passing of a local electric field when converting dQdx -\> dEdx. Requires lardataalg PR 12.
        -   Added SCECorrection module which takes in the output of pattern recognition (Pandora) and corrects the positions of all 3D objects in a slice. This uses the space charge service under the hood, and is simply meant to bring the corrections to the earliest possible stage in the reconstruction process so that downstream algorithms (i.e. track shower and calorimetry object building) will have spatially corrected inputs.
-   New Calorimetry Module
    -   **sbndcode - SBNSoftware/sbndcode\#31**
    -   **dunetpc - feature/pgreen\_semianalytic\_update**
    -   larsim PR 43
        -   The first module (and the primary thrust of this pull request) is the GnocchiCalorimetry module. This code is intended for use to calculate the calorimetry of recob::Track objects. It is largely a rewrite of the existing Calorimetry module, with code cleaned up for easier extensibility. In the default configuration of the module, it will produce identical output to the Calorimetry module (two exceptions: DeadWireResRange’s are not computed, and the PlaneID is always valid in Gnocchi whereas sometimes the original model will output invalid plane ID’s). This has been verified to floating point precision.
        -   In addition to this default configuration, the new module offers a few new features that are motivated by developments in SBN. First: it enables the track pitch calculation required by the space charge correction methodology described in Ed’s pull requests. Second, it enables correcting for E-field distortions directly in the calorimetry code. Third, it enables the use of the recob::Hit SummedADC() method to compute the charge of a hit, in addition to the existing Amplitude() and Integral() methods. The charge computation underlied by SummedADC() organizes individual hits into groups called “Snippets” and some of the code in the new module accommodates this organization.
        -   The second module is the CaloCheck module. It verifies that two individual anab::Calorimetry objects are identical. This is the module that was used to verify the GnocchiCalorimetry output.
-   larrecodnn PR 10
    -   update EvaluateROIEff\_module.cc, more accurate evaluation on efficiency and purity;
    -   update RawWaveformDump\_module.cc to have options use either RawDigit or WireProducer waveform, to save full waveform or short waveform;
    -   update WaveformRoiFinder\_module.cc and waveformroifinder.fcl to use cnnroi network for each plane separately, add an option to set number of planes.
-   larrecodnn PR 11
    -   fixed a potential bug by adding a protection to avoid the same sim channel in an event to be saved more than once
-   added information in opticalwaveform dump
    -   lardataalg PR 13
    -   lardata PR 10
-   larsim PR 43
    -   **sbndcode - SBNSoftware/sbndcode\#31**
    -   **dunetpc - feature/pgreen\_semianalytic\_update**
    -   Updates to semi-analytic light simulation model, presented in LArSoft Coordination meeting on 22-Sep-2020 ([https://indico.fnal.gov/event/45687/](https://indico.fnal.gov/event/45687/)).

Bug fixes
------------------------

-   larreco PR 20
    -   resolves [\#24985](/redmine/issues/24985 "Bug: Some missing size checks in TrajClusterAlg::FindJunkTraj (Closed)")
-   larsim PR 42
    -   restore code lost in when v09 was created

Updated dependencies
----------------------------------------------

-   mrb v4\_02\_00 for [\#24996](/redmine/issues/24996 "Bug: Cmake warning: No project() command is present (Closed)")

Change List
============================

larsoft v09\_04\_00
------------------------------------------

-   2020-09-23 Lynn Garren : larsoft v09\_04\_00 for larsoft v09\_04\_00
-   2020-09-23 Lynn Garren : product versions
-   2020-09-23 Lynn Garren : improve cmake

lareventdisplay v09\_00\_05
----------------------------------------------------------

-   2020-09-23 Lynn Garren : lareventdisplay v09\_00\_05 for larsoft v09\_04\_00
-   2020-09-23 Lynn Garren : improve cmake

larexamples v09\_00\_05
--------------------------------------------------

-   2020-09-23 Lynn Garren : larexamples v09\_00\_05 for larsoft v09\_04\_00
-   2020-09-23 Lynn Garren : improve cmake

larg4 v09\_00\_05
--------------------------------------

-   2020-09-23 Lynn Garren : larg4 v09\_00\_05 for larsoft v09\_04\_00

larpandora v09\_01\_01
------------------------------------------------

-   2020-09-23 Lynn Garren : larpandora v09\_01\_01 for larsoft v09\_04\_00
-   2020-09-23 Lynn Garren : improve cmake

larsimrad v09\_00\_05
----------------------------------------------

-   2020-09-23 Lynn Garren : larsimrad v09\_00\_05 for larsoft v09\_04\_00
-   2020-09-23 Lynn Garren : improve cmake

larrecodnn v09\_01\_00
------------------------------------------------

-   2020-09-23 Lynn Garren : larrecodnn v09\_01\_00 for larsoft v09\_04\_00
-   2020-09-23 Lynn Garren : improve cmake
-   2020-09-23 Lynn Garren : Merge pull request \#11 from wwuoneway/develop
-   2020-09-23 Wanwei Wu : replace codes as Kyle recommended, more efficient
-   2020-09-22 Wanwei Wu : add a protection to avoid the same sim channel in an event to be saved more than once
-   2020-09-21 Lynn Garren : Merge pull request \#10 from wwuoneway/develop
-   2020-09-16 Wanwei Wu : format changes are made as suggested
-   2020-09-15 Wanwei Wu : add configuration for WaveformReg of each plane
-   2020-09-15 Wanwei Wu : add options to use cnnroi network for each plane
-   2020-09-15 Wanwei Wu : comment output line
-   2020-09-15 Wanwei Wu : add options to use either RawDigit or WireProducer, and to save full waveform or short waveform
-   2020-09-15 Wanwei Wu : modify detprop and clockData to accomodate breaking changes
-   2020-09-14 Wanwei Wu : update efficiency and purity calculation for ROI

larwirecell v09\_01\_02
--------------------------------------------------

-   2020-09-23 Lynn Garren : larwirecell v09\_01\_02 for larsoft v09\_04\_00
-   2020-09-23 Lynn Garren : improve cmake

larana v09\_00\_05
----------------------------------------

-   2020-09-23 Lynn Garren : larana v09\_00\_05 for larsoft v09\_04\_00
-   2020-09-23 Lynn Garren : improve cmake

larreco v09\_02\_00
------------------------------------------

-   2020-09-23 Lynn Garren : larreco v09\_02\_00 for larsoft v09\_04\_00
-   2020-09-23 Lynn Garren : improve cmake
-   2020-09-23 Lynn Garren : Merge branch ‘feature/gputnam-new-calorimetry’ into release/v09\_04\_00
-   2020-09-23 Lynn Garren : Merge branch ‘feature/etyley\_sce\_v9’ into release/v09\_04\_00
-   2020-09-23 gputnam : Fix typo bug.
-   2020-09-23 gputnam : Remove unnecessary configs and move default CheckCalo config into calorimetry.fcl
-   2020-09-23 Lynn Garren : Merge pull request \#20 from brballer/develop
-   2020-09-21 Bruce Baller : Add more bounds checking in FindJunkTraj
-   2020-09-16 Edward Tyley : Updated calo alg for v09 changes
-   2020-07-06 Edward Tyley : Made X offset flip a fcl param
-   2020-06-26 Edward Tyley : Fixed rouge - sign
-   2020-04-03 Edward : Overloaded CalorimetryAlg to allow for local E field recombination factor when calculating dEdx
-   2020-04-03 Edward : Removed sorting of PFPs as it borks the assns
-   2020-04-02 Edward : Added exceptions if FindManys are not valid. Tidied whitespace and naming
-   2020-04-02 Edward : Removed unused variables and tidied up
-   2020-03-27 Edward : Refactored to clarify and modularise
-   2020-03-26 Edward : Sorted PFParticle output
-   2020-03-26 Edward : Make our own PFParticle Metadata object rather than assn back to the original one
-   2020-03-26 gputnam : Add in associations between slices and hits and pfparticles and pfpmetadata.
-   2020-03-26 Edward : Added t0 assns and refactored
-   2020-03-24 Edward : First commit of working(ish) SCE correction module
-   2020-09-17 gputnam : Update gnocchi calo to new services interface.
-   2020-09-17 gputnam : Merge branch ‘feature/etyley\_sce\_v9’ into feature/gputnam-new-calorimetry
-   2020-09-17 gputnam : Merge branch ‘sbn\_develop’ into feature/gputnam-new-calorimetry
-   2020-09-17 gputnam : Update checkcalo config to new name for gnocchi calo config.
-   2020-09-17 gputnam : Sort out sign differences in space charge correction. Enable turning on/off E-field distortion correction individually.
-   2020-09-16 Edward Tyley : Updated calo alg for v09 changes
-   2020-07-06 Edward Tyley : Made X offset flip a fcl param
-   2020-06-26 Edward Tyley : Fixed rouge - sign
-   2020-04-03 Edward : Overloaded CalorimetryAlg to allow for local E field recombination factor when calculating dEdx
-   2020-04-03 Edward : Removed sorting of PFPs as it borks the assns
-   2020-04-02 Edward : Added exceptions if FindManys are not valid. Tidied whitespace and naming
-   2020-04-02 Edward : Removed unused variables and tidied up
-   2020-03-27 Edward : Refactored to clarify and modularise
-   2020-03-26 Edward : Sorted PFParticle output
-   2020-03-26 Edward : Make our own PFParticle Metadata object rather than assn back to the original one
-   2020-03-26 gputnam : Add in associations between slices and hits and pfparticles and pfpmetadata.
-   2020-03-26 Edward : Added t0 assns and refactored
-   2020-03-24 Edward : First commit of working(ish) SCE correction module
-   2020-07-06 gputnam : Module for verifying that the content of multiple anab::Calorimetry objects are identical. Configs for running in ICARUS and SBND.
-   2020-06-26 gputnam : Make the sign of the x-dir (drift) SCE correction configurable.
-   2020-06-25 gputnam : First draft of an updated calorimetry module with new space charge corrections and the capability to use projected-track hits and SummedADC().

larsim v09\_03\_00
----------------------------------------

-   2020-09-23 Lynn Garren : larsim v09\_03\_00 for larsoft v09\_04\_00
-   2020-09-23 Lynn Garren : improve cmake
-   2020-09-23 Lynn Garren : Merge branch ‘feature/pgreen\_semianalytic\_update’ into release/v09\_04\_00
-   2020-09-23 Patrick Green : updated generic photon transport time parameterisation for new model, generic parameters are in use by ICARUS
-   2020-09-23 Patrick Green : updated semi-analytic light simulation implementation addressing comments in PR
-   2020-09-23 Patrick Green : updated semi-analytic light simulation implementation addressing comments in PR
-   2020-09-23 Lynn Garren : Merge pull request \#42 from PetrilloAtWork/feature/gp\_mergeFix
-   2020-09-22 Gianluca Petrillo : Restored a condition which had disappeared when merging v9.
-   2020-09-22 Patrick Green : fixed bugs in new semi-analytic model implementation identified during testing + updated placeholder functions for refactored LArG4 photon visibility service calls + removed trailing whitespace
-   2020-09-17 Patrick Green : updated semi-analytic hits models, vuv and visible light
-   2020-09-16 Patrick Green : Updated transport time parameterisation models - VUV and visible light.

larevt v09\_00\_05
----------------------------------------

-   2020-09-23 Lynn Garren : larevt v09\_00\_05 for larsoft v09\_04\_00
-   2020-09-23 Lynn Garren : improve cmake

lardata v09\_01\_00
------------------------------------------

-   2020-09-23 Lynn Garren : lardata v09\_01\_00 for larsoft v09\_04\_00
-   2020-09-23 Lynn Garren : improve cmake
-   2020-09-23 Lynn Garren : Merge branch ‘feature/etyley\_sce\_v9’ into release/v09\_04\_00
-   2020-09-22 Lynn Garren : Merge pull request \#10 from PetrilloAtWork/feature/gp\_OpDetWaveformDump
-   2020-09-20 Gianluca Petrillo : Added option not to sort waveforms in dump.
-   2020-09-18 Edward Tyley : Made changed to ArgoNeut Detector Property services for allowing local E field to be used in recombination calculation

larcore v09\_00\_00
------------------------------------------

larpandoracontent v03\_19\_03
--------------------------------------------------------------

larsoftobj v09\_01\_00
------------------------------------------------

-   2020-09-23 Lynn Garren : larsoftobj v09\_01\_00 for larsoft v09\_04\_00
-   2020-09-23 Lynn Garren : product versions
-   2020-09-23 Lynn Garren : improve cmake

lardataobj v09\_00\_00
------------------------------------------------

lardataalg v09\_01\_00
------------------------------------------------

-   2020-09-23 Lynn Garren : lardataalg v09\_01\_00 for larsoft v09\_04\_00
-   2020-09-23 Lynn Garren : improve cmake
-   2020-09-23 Lynn Garren : Merge branch ‘feature/etyley\_sce\_v9’ into release/v09\_04\_00
-   2020-09-22 Lynn Garren : Merge pull request \#13 from PetrilloAtWork/feature/gp\_OpDetWaveformDump
-   2020-09-20 Gianluca Petrillo : Added more range information in waveform dump.
-   2020-09-16 Edward Tyley : Added EField as a imput param for recombination corrections

larcorealg v09\_00\_00
------------------------------------------------

larcoreobj v09\_00\_00
------------------------------------------------

webevd v09\_00\_05
----------------------------------------

-   2020-09-23 Lynn Garren : webevd v09\_00\_05 for larsoft v09\_04\_00
-   2020-09-23 Lynn Garren : improve cmake

larbatch v01\_53\_01
--------------------------------------------

larutils v1\_26\_01
------------------------------------------
