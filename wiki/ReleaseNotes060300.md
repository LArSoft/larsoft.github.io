LArSoft v06\_03\_00 Release Notes
======================================================================

-   **Table of contents**
-   [LArSoft v06\_03\_00 Release Notes](#LArSoft-v06_03_00-Release-Notes)
    -   [Purpose](#Purpose)
    -   [New features](#New-features)
    -   [Known Issues](#Known-Issues)
    -   [Updated dependencies](#Updated-dependencies)
-   [Change List](#Change-List)
    -   [larsoft v06\_03\_00](#larsoft-v06_03_00)
    -   [lareventdisplay v06\_00\_04](#lareventdisplay-v06_00_04)
    -   [larexamples v06\_00\_03](#larexamples-v06_00_03)
    -   [larpandora v06\_00\_04](#larpandora-v06_00_04)
    -   [larana v06\_01\_00](#larana-v06_01_00)
    -   [larreco v06\_02\_00](#larreco-v06_02_00)
    -   [larsim v06\_02\_00](#larsim-v06_02_00)
    -   [larevt v06\_00\_03](#larevt-v06_00_03)
    -   [lardata v06\_02\_00](#lardata-v06_02_00)
    -   [larcore v06\_01\_00](#larcore-v06_01_00)
    -   [lardataobj v1\_04\_01](#lardataobj-v1_04_01)
    -   [larcoreobj v1\_04\_01](#larcoreobj-v1_04_01)
    -   [larbatch v01\_23\_04](#larbatch-v01_23_04)
    -   [larutils v1\_08\_01](#larutils-v1_08_01)

[list of LArSoft releases](LArSoft_release_list)
[Download instructions](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v06_03_00/larsoft-v06_03_00.html)

Purpose
--------------------

-   art v2\_02\_02
    -   fixes [\#13453](/redmine/issues/13453 "Bug: tests using boost unit do not work with art 2.02.01 (Closed)")

New features
------------------------------

-   larsim feature/jpdavies\_supernova\_truth
-   feature/gp\_Issue12367 [\#12367](/redmine/issues/12367 "Necessary Maintenance: Merge namespaces lar::utils and lar::util (Closed)")
    -   Branches feature/gp\_Issue12367 have been published for the LArSoft repositories lardataobj, lardata, larreco, larana; and for the experiment repositories argoneutcode, dunetpc and lariatsoft.

Known Issues
------------------------------

-   When building service libraries, \${ROOT\_CORE} must be include in the library list. [\#13446](/redmine/issues/13446 "Bug: service libraries now need a link to the root core library (Closed)")
    -   The problem is understood and will be fixed in the next art release.

Updated dependencies
----------------------------------------------

||
|Product|Version|Qualifiers|Notes|
|nutools|v2\_03\_00|e10|[NuTools\_Release\_Notes](/redmine/projects/nutools/wiki/NuTools_Release_Notes#nutools-v2_03_00)|
|nusimdata|v1\_05\_01|e10||
|geant4|v4\_10\_1\_p03b|e10||
|ifdh\_art|v1\_15\_04|e10:nu:s39||
|artdaq\_core|v1\_05\_04|e10:nu:s39||
|art|v2\_02\_02|e10:nu|[Release Notes 2.02.02](/redmine/projects/art/wiki/Release_Notes_20202)|

Change List
============================

larsoft v06\_03\_00
------------------------------------------

-   2016-08-11 Lynn Garren : larsoft v06\_03\_00 for larsoft v06\_03\_00
-   2016-08-11 Lynn Garren : use create\_product\_variables
-   2016-08-11 Lynn Garren : larsoft v06\_03\_00 for larsoft v06\_03\_00
-   2016-08-11 Lynn Garren : update product versions
-   2016-08-11 Lynn Garren : igprof is not ready for Jenkins

lareventdisplay v06\_00\_04
----------------------------------------------------------

-   2016-08-11 Lynn Garren : lareventdisplay v06\_00\_04 for larsoft v06\_03\_00

larexamples v06\_00\_03
--------------------------------------------------

-   2016-08-11 Lynn Garren : larexamples v06\_00\_03 for larsoft v06\_03\_00
-   2016-08-08 Gianluca Petrillo : Fix the way we pass arguments to Boost unit tests (issue [\#13477](/redmine/issues/13477 "Necessary Maintenance: Boost unit test interface changed (Closed)"))

larpandora v06\_00\_04
------------------------------------------------

-   2016-08-11 Lynn Garren : larpandora v06\_00\_04 for larsoft v06\_03\_00

larana v06\_01\_00
----------------------------------------

-   2016-08-11 Lynn Garren : larana v06\_01\_00 for larsoft v06\_03\_00
-   2016-08-11 Lynn Garren : Merge branch ‘feature/gp\_Issue12367’ into release/v06\_03\_00
-   2016-08-04 Gianluca Petrillo : Replaced nsmaepace lar::utils with lar::util (issue [\#12367](/redmine/issues/12367 "Necessary Maintenance: Merge namespaces lar::utils and lar::util (Closed)"))

larreco v06\_02\_00
------------------------------------------

-   2016-08-11 Lynn Garren : larreco v06\_02\_00 for larsoft v06\_03\_00
-   2016-08-11 Lynn Garren : Merge branch ‘feature/gp\_Issue12367’ into release/v06\_03\_00
-   2016-08-11 Lynn Garren : nutools v2\_03\_00
-   2016-08-08 Mike Wallbank : Updates to the shower energy algorithms – changed the straight line so that the energy axis is along the y-direction, which makes much more sense. Energy = (c\_1 \* charge) + c\_2, where c\_\* are measured parameters and read from the RecoAlg/showeralgorithms.fcl file. They have been recalculated. Also added new configurations for dune35tdata shower energy determination
-   2016-08-04 Gianluca Petrillo : Replaced nsmaepace lar::utils with lar::util (issue [\#12367](/redmine/issues/12367 "Necessary Maintenance: Merge namespaces lar::utils and lar::util (Closed)"))

larsim v06\_02\_00
----------------------------------------

-   2016-08-11 Lynn Garren : larsim v06\_02\_00 for larsoft v06\_03\_00
-   2016-08-11 Lynn Garren : Merge branch ‘feature/jpdavies\_supernova\_truth’ into release/v06\_03\_00
-   2016-08-11 Brian Rebel : Merge branch ‘develop’ of ssh://cdcvs.fnal.gov/cvs/projects/larsim into develop
-   2016-08-11 Brian Rebel : move visualization .mac file to the correct location
-   2016-08-08 Michael Baird : Merge branch ‘develop’ into feature/jpdavies\_supernova\_truth
-   2016-08-03 Michael Baird : In the MCTruth particle list, setting the status bit for the neutrino to 0, setting the motherID for the primary electron to -1, and picking a different isotrpoic direction for the electron.
-   2016-07-19 Michael Baird : Making use of the SetNeutrino function to set the neutrino for the MCTruths, and implementing adding in one MCTruth for each neutrino created.

larevt v06\_00\_03
----------------------------------------

-   2016-08-11 Lynn Garren : larevt v06\_00\_03 for larsoft v06\_03\_00

lardata v06\_02\_00
------------------------------------------

-   2016-08-11 Lynn Garren : lardata v06\_02\_00 for larsoft v06\_03\_00
-   2016-08-11 Lynn Garren : Merge branch ‘feature/gp\_Issue12367’ into release/v06\_03\_00
-   2016-08-11 Lynn Garren : nutools v2\_03\_00
-   2016-08-04 Gianluca Petrillo : Replaced nsmaepace lar::utils with lar::util (issue [\#12367](/redmine/issues/12367 "Necessary Maintenance: Merge namespaces lar::utils and lar::util (Closed)"))

larcore v06\_01\_00
------------------------------------------

-   2016-08-11 Lynn Garren : larcore v06\_01\_00 for larsoft v06\_03\_00
-   2016-08-08 Gianluca Petrillo : Fix the way we pass arguments to Boost unit tests (issue [\#13477](/redmine/issues/13477 "Necessary Maintenance: Boost unit test interface changed (Closed)"))
    h2. larsimobj v1\_05\_01

-   2016-08-08 Lynn Garren : Merge branch ‘release/v1\_05\_01’
-   2016-08-08 Lynn Garren : larsimobj v1\_05\_01

lardataobj v1\_04\_01
----------------------------------------------

-   2016-08-08 Lynn Garren : Merge branch ‘release/v1\_04\_01’
-   2016-08-08 Lynn Garren : lardataobj v1\_04\_01
-   2016-08-04 Gianluca Petrillo : Removed executable flag from source code
-   2016-07-18 Lynn Garren : Merge branch ‘v06\_00\_00\_art2’ into develop

larcoreobj v1\_04\_01
----------------------------------------------

-   2016-08-08 Lynn Garren : Merge branch ‘release/v1\_04\_01’
-   2016-08-08 Lynn Garren : larcoreobj v1\_04\_01
-   2016-07-18 Lynn Garren : Merge branch ‘v06\_00\_00\_art2’ into develop

larbatch v01\_23\_04
--------------------------------------------

larutils v1\_08\_01
------------------------------------------

-   2016-08-11 Lynn Garren : larutils v1\_08\_01 for larsoft v06\_03\_00
-   2016-08-11 Lynn Garren : add s39
-   2016-08-05 Lynn Garren : larsoft v06\_02\_00
-   2016-08-05 Lynn Garren : nutools
