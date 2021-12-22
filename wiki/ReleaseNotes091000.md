LArSoft v09\_10\_00 Release Notes
======================================================================

-   **Table of contents**
-   [LArSoft v09\_10\_00 Release Notes](#LArSoft-v09_10_00-Release-Notes)
    -   [Purpose](#Purpose)
    -   [New features](#New-features)
    -   [Bug fixes](#Bug-fixes)
    -   [Updated dependencies](#Updated-dependencies)
-   [Change List](#Change-List)
    -   [larsoft v09\_10\_00](#larsoft-v09_10_00)
    -   [lareventdisplay v09\_00\_13](#lareventdisplay-v09_00_13)
    -   [larexamples v09\_00\_12](#larexamples-v09_00_12)
    -   [larpandora v09\_03\_04](#larpandora-v09_03_04)
    -   [larsimrad v09\_00\_12](#larsimrad-v09_00_12)
    -   [larrecodnn v09\_02\_04](#larrecodnn-v09_02_04)
    -   [larwirecell v09\_01\_06](#larwirecell-v09_01_06)
    -   [larana v09\_00\_13](#larana-v09_00_13)
    -   [larreco v09\_04\_03](#larreco-v09_04_03)
    -   [larsim v09\_07\_00](#larsim-v09_07_00)
    -   [larg4 v09\_01\_04](#larg4-v09_01_04)
    -   [larevt v09\_01\_00](#larevt-v09_01_00)
    -   [lardata v09\_01\_03](#lardata-v09_01_03)
    -   [larcore v09\_00\_01](#larcore-v09_00_01)
    -   [larpandoracontent v03\_22\_02](#larpandoracontent-v03_22_02)
    -   [larsoftobj v09\_03\_00](#larsoftobj-v09_03_00)
    -   [lardataobj v09\_00\_02](#lardataobj-v09_00_02)
    -   [lardataalg v09\_03\_00](#lardataalg-v09_03_00)
    -   [larcorealg v09\_00\_01](#larcorealg-v09_00_01)
    -   [larcoreobj v09\_00\_00](#larcoreobj-v09_00_00)
    -   [webevd v09\_00\_08](#webevd-v09_00_08)
    -   [larbatch v01\_54\_01](#larbatch-v01_54_01)
    -   [larutils v1\_27\_02](#larutils-v1_27_02)

[list of LArSoft releases](LArSoft_release_list)\
Download instructions for [larsoft v09\_10\_00](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v09_10_00/larsoft-v09_10_00.html)\
Download instructions for [just larsoftobj v09\_03\_00](http://scisoft.fnal.gov/scisoft/bundles/larsoftobj/v09_03_00/larsoftobj-v09_03_00.html)

Purpose
--------------------

-   changes in develop
-   approved PRs

New features
------------------------------

-   larsim now depends directly on larg4
-   larsim PR 50
    -   Updates to the refactored LArG4 parameterised light simulation module with the refined model(s) implemented in legacy LArG4 in PR 43. The changes to the models are detailed in [https://indico.fnal.gov/event/45687/](https://indico.fnal.gov/event/45687/) (presented in Sep before the update to the legacy code).
    -   I have also added support for SimPhotons and Reflected photons in PDFastSimPAR following the approach used by Muve (see PR 48) and used in legacy LArG4.
-   larsim PR 53
    -   Volume name feature for RadioGen event generator.
    -   Features have been added to RadioGen event generator:
        -   volumes can be added by name instead of coordinates
        -   generation times can be specified nuclide by nuclide, or one for all (or there is a not-so-useful default)
        -   added Doxygen documentation
-   larevt PR 9
    -   Add support for reading from sqlite calibration databases
    -   [coordination meeting talk](https://indico.fnal.gov/event/46314/contributions/201503/attachments/136947/170545/larsoft_sqlite_nov3_2020.pdf)

Bug fixes
------------------------

-   larsim PR 52
    -   Fixed bug where ScintPreScale factor wasn’t being set
    -   In LegacyLArG4/ISCalculationCorrelated.cxx, which SBND still uses, the factor “fScintPreScale” was not being set. This is now retrieved from LArPropertiesServices, as expected. This bug is not present in the newer refactorized-LArG4 version of the alg (in IonizationAndScintillation).

Updated dependencies
----------------------------------------------

-   geant4reweight v01\_06\_00

Change List
============================

larsoft v09\_10\_00
------------------------------------------

-   2020-11-20 Lynn Garren : build order matters
-   2020-11-20 Lynn Garren : larsoft v09\_10\_00 for larsoft v09\_10\_00
-   2020-11-20 Lynn Garren : v09\_10\_00
-   2020-11-19 Lynn Garren : product versions
-   2020-11-19 Lynn Garren : removing unnecessary entries for larg4 and larreco

lareventdisplay v09\_00\_13
----------------------------------------------------------

-   2020-11-20 Lynn Garren : lareventdisplay v09\_00\_13 for larsoft v09\_10\_00

larexamples v09\_00\_12
--------------------------------------------------

-   2020-11-20 Lynn Garren : larexamples v09\_00\_12 for larsoft v09\_10\_00

larpandora v09\_03\_04
------------------------------------------------

-   2020-11-20 Lynn Garren : larpandora v09\_03\_04 for larsoft v09\_10\_00

larsimrad v09\_00\_12
----------------------------------------------

-   2020-11-20 Lynn Garren : larsimrad v09\_00\_12 for larsoft v09\_10\_00

larrecodnn v09\_02\_04
------------------------------------------------

-   2020-11-20 Lynn Garren : larrecodnn v09\_02\_04 for larsoft v09\_10\_00

larwirecell v09\_01\_06
--------------------------------------------------

-   2020-11-20 Lynn Garren : larwirecell v09\_01\_06 for larsoft v09\_10\_00

larana v09\_00\_13
----------------------------------------

-   2020-11-20 Lynn Garren : larana v09\_00\_13 for larsoft v09\_10\_00

larreco v09\_04\_03
------------------------------------------

-   2020-11-20 Lynn Garren : larreco v09\_04\_03 for larsoft v09\_10\_00

larsim v09\_07\_00
----------------------------------------

-   2020-11-20 Lynn Garren : larsim v09\_07\_00 for larsoft v09\_10\_00
-   2020-11-19 Lynn Garren : Merge branch ‘feature/lg\_add\_larg4’ into release/v09\_10\_00
-   2020-11-19 Lynn Garren : Merge pull request [\#50](/redmine/issues/50 "Feature: SimpleProfiler must be easy to build. (Closed)") from pgreen135/feature/pgreen\_semianalytic\_refactoredLArG4
-   2020-11-19 Patrick Green : removing unused variable
-   2020-11-19 Lynn Garren : Merge pull request [\#53](/redmine/issues/53 "Feature: The front page of the site needs a "getting started" document. (Closed)") from PetrilloAtWork/feature/gp\_RadioGen
-   2020-11-19 Patrick Green : updating implementation addressing comments in PR
-   2020-11-18 Gianluca Petrillo : Made test on T0/T1 check more demanding.
-   2020-11-18 Gianluca Petrillo : Added documentation to RadioGen.
-   2020-11-17 Lynn Garren : Merge pull request [\#52](/redmine/issues/52 "Feature: SimpleProfiler needs documentation. (Closed)") from wforeman/wforeman\_correlated\_bug\_fix
-   2020-11-17 Will Foreman : Removing some whitespace
-   2020-11-16 Will Foreman : Fixed bug where ScintPreScale factor wasn’t being set in LegacyLArG4/ISCalculationCorrelated
-   2020-11-13 Gianluca Petrillo : Updates for LArSoft 9.
-   2019-11-18 Gianluca Petrillo : Trying to fix the automatic time window detection.
-   2019-07-25 Gianluca Petrillo : Removed code that is now in \`larcorealg\`.
-   2019-07-24 Gianluca Petrillo : Bug fix: the number I was taking the negative of was actually unsigned.
-   2019-07-23 Gianluca Petrillo : RadioGen now allows specification of volumes by name.
-   2020-11-13 Lynn Garren : larsim now depends on larg4
-   2020-11-11 Patrick Green : removed placeholder photon visibilty service functions for old model in PDFastSimPAR that are no longer required
-   2020-11-11 Patrick Green : removed placeholder photon visibilty service functions for old model in PDFastSimPAR that are no longer required
-   2020-11-11 Patrick Green : removing testing outputs and trailing white space
-   2020-11-10 Patrick Green : implemented saving reflected light and option to use simphotons following approach implemented by Mu Wei
-   2020-10-16 Patrick Green : added calculation of reflected light, however this is not saved separate to direct light for now
-   2020-10-16 Patrick Green : restructured semi-analytic hits and timing to avoid duplicate calculations for fast and slow photons
-   2020-10-15 Patrick Green : updated semi-analytic light simulation hits and transport time models in refactored LArG4 to bring in line with updates to LegacyLArG4

larg4 v09\_01\_04
--------------------------------------

-   2020-11-20 Lynn Garren : larg4 v09\_01\_04 for larsoft v09\_10\_00

larevt v09\_01\_00
----------------------------------------

-   2020-11-20 Lynn Garren : larevt v09\_01\_00 for larsoft v09\_10\_00
-   2020-11-19 Lynn Garren : Merge pull request \#9 from uboone/feature/greenlee\_sqlite\_develop
-   2020-11-18 Herbert Greenlee : Code cleanups.
-   2020-11-03 Herbert Greenlee : Switch from boost::variant to std::variant.
-   2020-10-31 Herbert Greenlee : Change data type from string to boost::variant.
-   2020-10-30 Herbert Greenlee : Update DBFolder.
-   2020-10-27 Herbert Greenlee : Merge remote-tracking branch ‘origin/develop’ into feature/greenlee\_sqlite\_develop
-   2020-10-23 Herbert Greenlee : Merge remote-tracking branch ‘origin/develop’ into feature/greenlee\_sqlite\_develop
-   2020-04-09 Herbert Greenlee : Remove active IOV constraint.
-   2020-05-12 Herbert Greenlee : Merge remote-tracking branch ‘upstream/develop’ into develop
-   2020-05-12 Herbert Greenlee : Merge branch ‘feature/greenlee\_sqlite\_develop’ of github.com:uboone/larevt into develop
-   2020-02-25 Herbert Greenlee : Add ability to read calibration data from sqlite.

lardata v09\_01\_03
------------------------------------------

larcore v09\_00\_01
------------------------------------------

larpandoracontent v03\_22\_02
--------------------------------------------------------------

larsoftobj v09\_03\_00
------------------------------------------------

lardataobj v09\_00\_02
------------------------------------------------

lardataalg v09\_03\_00
------------------------------------------------

larcorealg v09\_00\_01
------------------------------------------------

larcoreobj v09\_00\_00
------------------------------------------------

webevd v09\_00\_08
----------------------------------------

larbatch v01\_54\_01
--------------------------------------------

larutils v1\_27\_02
------------------------------------------
