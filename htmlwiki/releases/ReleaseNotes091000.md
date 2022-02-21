LArSoft v09_10_00 Release Notes
======================================================================

[list of LArSoft releases](LArSoft_release_list)
Download instructions for [larsoft v09_10_00](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v09_10_00/larsoft-v09_10_00.html)
Download instructions for [just larsoftobj v09_03_00](http://scisoft.fnal.gov/scisoft/bundles/larsoftobj/v09_03_00/larsoftobj-v09_03_00.html)

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

-   geant4reweight v01_06_00

Change List
============================

larsoft v09_10_00
------------------------------------------

-   2020-11-20 Lynn Garren : build order matters
-   2020-11-20 Lynn Garren : larsoft v09_10_00 for larsoft v09_10_00
-   2020-11-20 Lynn Garren : v09_10_00
-   2020-11-19 Lynn Garren : product versions
-   2020-11-19 Lynn Garren : removing unnecessary entries for larg4 and larreco

lareventdisplay v09_00_13
----------------------------------------------------------

-   2020-11-20 Lynn Garren : lareventdisplay v09_00_13 for larsoft v09_10_00

larexamples v09_00_12
--------------------------------------------------

-   2020-11-20 Lynn Garren : larexamples v09_00_12 for larsoft v09_10_00

larpandora v09_03_04
------------------------------------------------

-   2020-11-20 Lynn Garren : larpandora v09_03_04 for larsoft v09_10_00

larsimrad v09_00_12
----------------------------------------------

-   2020-11-20 Lynn Garren : larsimrad v09_00_12 for larsoft v09_10_00

larrecodnn v09_02_04
------------------------------------------------

-   2020-11-20 Lynn Garren : larrecodnn v09_02_04 for larsoft v09_10_00

larwirecell v09_01_06
--------------------------------------------------

-   2020-11-20 Lynn Garren : larwirecell v09_01_06 for larsoft v09_10_00

larana v09_00_13
----------------------------------------

-   2020-11-20 Lynn Garren : larana v09_00_13 for larsoft v09_10_00

larreco v09_04_03
------------------------------------------

-   2020-11-20 Lynn Garren : larreco v09_04_03 for larsoft v09_10_00

larsim v09_07_00
----------------------------------------

-   2020-11-20 Lynn Garren : larsim v09_07_00 for larsoft v09_10_00
-   2020-11-19 Lynn Garren : Merge branch ‘feature/lg_add_larg4’ into release/v09_10_00
-   2020-11-19 Lynn Garren : Merge pull request [redmine issue 50](https://cdcvs.fnal.gov/redmine/issues/50) from pgreen135/feature/pgreen_semianalytic_refactoredLArG4
-   2020-11-19 Patrick Green : removing unused variable
-   2020-11-19 Lynn Garren : Merge pull request [redmine issue 53](https://cdcvs.fnal.gov/redmine/issues/53) from PetrilloAtWork/feature/gp_RadioGen
-   2020-11-19 Patrick Green : updating implementation addressing comments in PR
-   2020-11-18 Gianluca Petrillo : Made test on T0/T1 check more demanding.
-   2020-11-18 Gianluca Petrillo : Added documentation to RadioGen.
-   2020-11-17 Lynn Garren : Merge pull request [redmine issue 52](https://cdcvs.fnal.gov/redmine/issues/52) from wforeman/wforeman_correlated_bug_fix
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

larg4 v09_01_04
--------------------------------------

-   2020-11-20 Lynn Garren : larg4 v09_01_04 for larsoft v09_10_00

larevt v09_01_00
----------------------------------------

-   2020-11-20 Lynn Garren : larevt v09_01_00 for larsoft v09_10_00
-   2020-11-19 Lynn Garren : Merge pull request \#9 from uboone/feature/greenlee_sqlite_develop
-   2020-11-18 Herbert Greenlee : Code cleanups.
-   2020-11-03 Herbert Greenlee : Switch from boost::variant to std::variant.
-   2020-10-31 Herbert Greenlee : Change data type from string to boost::variant.
-   2020-10-30 Herbert Greenlee : Update DBFolder.
-   2020-10-27 Herbert Greenlee : Merge remote-tracking branch ‘origin/develop’ into feature/greenlee_sqlite_develop
-   2020-10-23 Herbert Greenlee : Merge remote-tracking branch ‘origin/develop’ into feature/greenlee_sqlite_develop
-   2020-04-09 Herbert Greenlee : Remove active IOV constraint.
-   2020-05-12 Herbert Greenlee : Merge remote-tracking branch ‘upstream/develop’ into develop
-   2020-05-12 Herbert Greenlee : Merge branch ‘feature/greenlee_sqlite_develop’ of github.com:uboone/larevt into develop
-   2020-02-25 Herbert Greenlee : Add ability to read calibration data from sqlite.

lardata v09_01_03
------------------------------------------

larcore v09_00_01
------------------------------------------

larpandoracontent v03_22_02
--------------------------------------------------------------

larsoftobj v09_03_00
------------------------------------------------

lardataobj v09_00_02
------------------------------------------------

lardataalg v09_03_00
------------------------------------------------

larcorealg v09_00_01
------------------------------------------------

larcoreobj v09_00_00
------------------------------------------------

webevd v09_00_08
----------------------------------------

larbatch v01_54_01
--------------------------------------------

larutils v1_27_02
------------------------------------------
