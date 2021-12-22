LArSoft v09\_35\_00 Release Notes(#LArSoft-v09_35_00-Release-Notes)
======================================================================

-   **Table of contents**
-   [LArSoft v09\_35\_00 Release Notes](#LArSoft-v09_35_00-Release-Notes)
    -   [Purpose](#Purpose)
    -   [New features](#New-features)
    -   [Known issues](#Known-issues)
    -   [Bug fixes](#Bug-fixes)
    -   [Updated dependencies](#Updated-dependencies)
-   [Change List](#Change-List)
    -   [larsoft v09\_35\_00](#larsoft-v09_35_00)
    -   [lareventdisplay v09\_02\_05](#lareventdisplay-v09_02_05)
    -   [larexamples v09\_02\_05](#larexamples-v09_02_05)
    -   [larpandora v09\_09\_05](#larpandora-v09_09_05)
    -   [larsimrad v09\_03\_04](#larsimrad-v09_03_04)
    -   [larrecodnn v09\_09\_05](#larrecodnn-v09_09_05)
    -   [larwirecell v09\_04\_03](#larwirecell-v09_04_03)
    -   [larana v09\_03\_05](#larana-v09_03_05)
    -   [larreco v09\_07\_05](#larreco-v09_07_05)
    -   [larsim v09\_18\_00](#larsim-v09_18_00)
    -   [larg4 v09\_06\_00](#larg4-v09_06_00)
    -   [larevt v09\_03\_03](#larevt-v09_03_03)
    -   [lardata v09\_04\_00](#lardata-v09_04_00)
    -   [larcore v09\_03\_01](#larcore-v09_03_01)
    -   [larpandoracontent v03\_26\_01](#larpandoracontent-v03_26_01)
    -   [larsoftobj v09\_11\_00](#larsoftobj-v09_11_00)
    -   [lardataobj v09\_03\_03](#lardataobj-v09_03_03)
    -   [lardataalg v09\_07\_00](#lardataalg-v09_07_00)
    -   [larcorealg v09\_03\_01](#larcorealg-v09_03_01)
    -   [larcoreobj v09\_03\_01](#larcoreobj-v09_03_01)
    -   [webevd v09\_06\_03](#webevd-v09_06_03)
    -   [larbatch v01\_56\_02](#larbatch-v01_56_02)
    -   [larutils v1\_28\_02](#larutils-v1_28_02)

[list of LArSoft releases](LArSoft_release_list)\
Download instructions for [larsoft v09\_35\_00](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v09_35_00/larsoft-v09_35_00.html)\
Download instructions for [just larsoftobj v09\_11\_00](http://scisoft.fnal.gov/scisoft/bundles/larsoftobj/v09_11_00/larsoftobj-v09_11_00.html)

Purpose(#Purpose)
--------------------

-   changes in develop
-   approved PRs

New features(#New-features)
------------------------------

-   larg4 PR 30
    -   Support multiple larg4 instances
    -   resolve [\#26249](/redmine/issues/26249 "Feature: Run multiple LArG4 paths in the same job (Assigned)") by allowing the following configuration:\

            physics: {
              producers: {
                intime: {
                  module_type: larg4Main
                  inputCollections: ["intime"]  # sequence of input-tag specifications
                }
                outoftime: {
                  module_type: larg4Main
                  inputCollections: ["outoftime"] # sequence of input-tag specifications
                }
              }
              g4path: [intime, outoftime]
            }

    -   requires artg4tk v10\_04\_00

-   larsim PR 76
    -   Support multiple larg4 instances
    -   As shown in issue \#26246, running multiple larg4 instances requires some changes to larg4 and larsim. The larg4 changes are implements in PR LArSoft/larg4\#30, while this PR deals with the changes in larsim, specifically:
        -   Adds fhich input parameter InputModuleLabels to the IonAndScint module, so one can run IonAndScint multiple times with different input collections.
        -   Adds more fhicl configurations to MergeSimSources, so one can select what input collections to merge.
        -   The default behavior of both modules should be unchanged.
-   larpandoracontent PR 34
    -   Update to the set of MC processes available to Pandora’s internal MC particles. This update does not alter the products of any experiment.

Known issues(#Known-issues)
------------------------------

-   In SBND we tried running using larg4 PR 30 and we found the following:
    -   If we run the intime G4 and outoftime G4 instances in two separate fcls things work as expected. Here, we specify the two different inputs to G4 thanks to the changes you made in this branch.
    -   If we run everything in a single fcl file, for example as you suggested in this PR via\

            physics: {
              producers: {
                intime: {
                  module_type: larg4Main
                  inputCollections: ["intime"]  # sequence of input-tag specifications
                }
                outoftime: {
                  module_type: larg4Main
                  inputCollections: ["outoftime"] # sequence of input-tag specifications
                }
              }
              g4path: [intime, outoftime]
            }

        \
        the job fails with error:\

            %MSG-s ArtException:  larg4Main:larg4outtime@Construction  27-Oct-2021 13:39:15 CDT ModuleConstruction
            cet::exception caught in art
            ---- ProductRegistrationFailure BEGIN
              An error occurred during a call to 'produces' or 'reconstitutes'. An attempt was made to declare the following product in the same module:
              Branch type: Event
              Class name: std::vector<artg4tk::PhotonHit>
              Product instance name: LArG4DetectorServicevolOpDetSensitiveXArapucaFilter
            ---- ProductRegistrationFailure END
            %MSG

        \
        And there are many G4 exceptions of type:\

            Volume volTPCActive has the following list of auxiliary information: 
            --> Type: SensDet Value: SimEnergyDeposit

            -------- WWWW ------- G4Exception-START -------- WWWW -------

            *** ExceptionHandler is not defined ***
            *** G4Exception : DET1010
                  issued by : G4SDStructure::AddNewDetector()
            volTPCActive_SimEnergyDeposit had already been stored in /. Object pointer is overwitten.
            It's users' responsibility to delete the old sensitive detector object.
            *** This is just a warning message. ***
            -------- WWWW ------- G4Exception-END -------- WWWW -------

        \
        Showing that the old G4 instance was not deleted and it’s trying to redeclare all our sensitive detector elements.

    -   Note that current workflows will continue to work as before, this is only a problem when trying to use the new feature.
    -   This issue will be addressed in a future PR.

Bug fixes(#Bug-fixes)
------------------------

Updated dependencies(#Updated-dependencies)
----------------------------------------------

-   mrb v5\_19\_05
    -   ifdh\_art is now on github
-   artg4tk v10\_04\_00

Change List(#Change-List)
============================

larsoft v09\_35\_00(#larsoft-v09_35_00)
------------------------------------------

-   2021-10-27 Lynn Garren : larsoft v09\_35\_00 for larsoft v09\_35\_00
-   2021-10-27 Lynn Garren : larsoft v09\_35\_00 for larsoft v09\_35\_00
-   2021-10-27 Lynn Garren : product versions
-   2021-10-27 Lynn Garren : product versions
-   2021-10-27 Lynn Garren : artg4tk v10\_04\_00 and mrb v5\_19\_05

lareventdisplay v09\_02\_05(#lareventdisplay-v09_02_05)
----------------------------------------------------------

-   2021-10-27 Lynn Garren : lareventdisplay v09\_02\_05 for larsoft v09\_35\_00
-   2021-10-27 Lynn Garren : lareventdisplay v09\_02\_05 for larsoft v09\_35\_00

larexamples v09\_02\_05(#larexamples-v09_02_05)
--------------------------------------------------

-   2021-10-27 Lynn Garren : larexamples v09\_02\_05 for larsoft v09\_35\_00
-   2021-10-27 Lynn Garren : larexamples v09\_02\_05 for larsoft v09\_35\_00

larpandora v09\_09\_05(#larpandora-v09_09_05)
------------------------------------------------

-   2021-10-27 Lynn Garren : larpandora v09\_09\_05 for larsoft v09\_35\_00
-   2021-10-27 Lynn Garren : larpandora v09\_09\_05 for larsoft v09\_35\_00

larsimrad v09\_03\_04(#larsimrad-v09_03_04)
----------------------------------------------

-   2021-10-27 Lynn Garren : larsimrad v09\_03\_04 for larsoft v09\_35\_00
-   2021-10-27 Lynn Garren : larsimrad v09\_03\_04 for larsoft v09\_35\_00

larrecodnn v09\_09\_05(#larrecodnn-v09_09_05)
------------------------------------------------

-   2021-10-27 Lynn Garren : larrecodnn v09\_09\_05 for larsoft v09\_35\_00
-   2021-10-27 Lynn Garren : larrecodnn v09\_09\_05 for larsoft v09\_35\_00

larwirecell v09\_04\_03(#larwirecell-v09_04_03)
--------------------------------------------------

larana v09\_03\_05(#larana-v09_03_05)
----------------------------------------

-   2021-10-27 Lynn Garren : larana v09\_03\_05 for larsoft v09\_35\_00
-   2021-10-27 Lynn Garren : larana v09\_03\_05 for larsoft v09\_35\_00

larreco v09\_07\_05(#larreco-v09_07_05)
------------------------------------------

-   2021-10-27 Lynn Garren : larreco v09\_07\_05 for larsoft v09\_35\_00
-   2021-10-27 Lynn Garren : larreco v09\_07\_05 for larsoft v09\_35\_00

larsim v09\_18\_00(#larsim-v09_18_00)
----------------------------------------

-   2021-10-27 Lynn Garren : larsim v09\_18\_00 for larsoft v09\_35\_00
-   2021-10-27 Lynn Garren : larsim v09\_18\_00 for larsoft v09\_35\_00
-   2021-10-26 Lynn Garren : Merge pull request [\#76](/redmine/issues/76 "Bug: Notification preferences link in email (Closed)") from SBNSoftware/mdeltutt\_multiple\_larg4\_instances
-   2021-10-23 Marco Del Tutto : Ensure that all module labels in InputModuleLabels, if specified, are found in the event.
-   2021-10-19 Marco Del Tutto : Clean up
-   2021-10-19 Marco Del Tutto : Clean up dumpConfiguration
-   2021-10-19 Marco Del Tutto : Use are selector to retrieve all sim energy deposit collections with the same module name
-   2021-10-19 Marco Del Tutto : Remove trailing whitespaces
-   2021-10-19 Marco Del Tutto : Add fhicl parameters to select what input collections we want to merge
-   2021-10-17 Marco Del Tutto : Add option to input a list of input labels to IonAndScint

larg4 v09\_06\_00(#larg4-v09_06_00)
--------------------------------------

-   2021-10-27 Lynn Garren : larg4 v09\_06\_00 for larsoft v09\_35\_00
-   2021-10-27 Lynn Garren : Merge branch ‘multiple-larg4-instances’ into release/v09\_35\_00
-   2021-10-19 Kyle Knoepfel : Adjust library link lines.
-   2021-10-19 Kyle Knoepfel : Use artg4tk v10\_04\_00.
-   2021-10-13 Kyle Knoepfel : Allow users to specify input MCTruth collections.
-   2021-10-08 Kyle Knoepfel : Cleanups only; clang-format.

larevt v09\_03\_03(#larevt-v09_03_03)
----------------------------------------

lardata v09\_04\_00(#lardata-v09_04_00)
------------------------------------------

larcore v09\_03\_01(#larcore-v09_03_01)
------------------------------------------

larpandoracontent v03\_26\_01(#larpandoracontent-v03_26_01)
--------------------------------------------------------------

-   2021-10-27 AndyChappell : Merge pull request [\#184](/redmine/issues/184 "Bug: Dummy project changed to real project not handled properly across fiscal years. (Closed)") from AndyChappell/feature/mc\_proc\_update
-   2021-10-25 Andrew Chappell : Update version and ChangeLog
-   2021-10-22 Andrew Chappell : Add primary background MC process

larsoftobj v09\_11\_00(#larsoftobj-v09_11_00)
------------------------------------------------

lardataobj v09\_03\_03(#lardataobj-v09_03_03)
------------------------------------------------

lardataalg v09\_07\_00(#lardataalg-v09_07_00)
------------------------------------------------

larcorealg v09\_03\_01(#larcorealg-v09_03_01)
------------------------------------------------

larcoreobj v09\_03\_01(#larcoreobj-v09_03_01)
------------------------------------------------

webevd v09\_06\_03(#webevd-v09_06_03)
----------------------------------------

larbatch v01\_56\_02(#larbatch-v01_56_02)
--------------------------------------------

larutils v1\_28\_02(#larutils-v1_28_02)
------------------------------------------
