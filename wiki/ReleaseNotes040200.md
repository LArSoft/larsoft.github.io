LArSoft v04\_02\_00 Release Notes
======================================================================

-   **Table of contents**
-   [LArSoft v04\_02\_00 Release Notes](#LArSoft-v04_02_00-Release-Notes)
    -   [Purpose](#Purpose)
    -   [New features](#New-features)
    -   [Bug fixes](#Bug-fixes)
    -   [Updated dependencies](#Updated-dependencies)
-   [Change List](#Change-List)
    -   [larsoft v04\_02\_00](#larsoft-v04_02_00)
    -   [lareventdisplay v04\_01\_01](#lareventdisplay-v04_01_01)
    -   [larexamples v04\_00\_03](#larexamples-v04_00_03)
    -   [larpandora v04\_01\_00](#larpandora-v04_01_00)
    -   [larana v04\_01\_01](#larana-v04_01_01)
    -   [larreco v04\_01\_01](#larreco-v04_01_01)
    -   [larsim v04\_02\_00](#larsim-v04_02_00)
    -   [larevt v04\_00\_03](#larevt-v04_00_03)
    -   [lardata v04\_00\_03](#lardata-v04_00_03)
    -   [larcore v04\_00\_02](#larcore-v04_00_02)
    -   [larbatch v01\_04\_03](#larbatch-v01_04_03)

[list of LArSoft releases](LArSoft_release_list)
[Download instructions](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v04_02_00/larsoft-v04_02_00.html)

Purpose
--------------------

Changes for MicroBooNE MCC6 and 35T

New features
------------------------------

-   MergeSimSources
-   Removing LBNE-specific code from LArPandoraInterface

Bug fixes
------------------------

Updated dependencies
----------------------------------------------

||
|Product|Version|Qualifier|Notes|
|cetbuildtools|v4\_07\_03||updated buildtool features|
|cmake|v3\_1\_2||for cetbuildtools v4\_07\_03|

Change List
============================

larsoft v04\_02\_00
------------------------------------------

-   2015-03-05 Lynn Garren : Merge branch ‘release/v04\_01\_01’
-   2015-03-05 Lynn Garren : need cmake v3\_1\_2 and cetbuildtools v4\_07\_03
-   2015-03-05 Lynn Garren : update product versions and use create\_product\_variables
-   2015-03-05 Lynn Garren : LBNE 35T code removed from larpandora
-   2015-03-05 Lynn Garren : adding LArG4/MergeSimSources.h

lareventdisplay v04\_01\_01
----------------------------------------------------------

-   2015-03-05 Lynn Garren : lareventdisplay v04\_01\_01 for larsoft v04\_01\_01

larexamples v04\_00\_03
--------------------------------------------------

-   2015-03-05 Lynn Garren : larexamples v04\_00\_03 for larsoft v04\_01\_01

larpandora v04\_01\_00
------------------------------------------------

-   2015-03-05 Lynn Garren : larpandora v04\_01\_00 for larsoft v04\_01\_01
-   2015-03-04 Andrew Blake : Removing LBNE-specific code from LArPandoraInterface (moving to lbnecode)
-   2015-03-03 Andrew Blake : Build recob::Track objects in LArPandoraParticleCreator, and stitch them together in PFParticleStitcher. Add many new variables to analysis trees for better validation.

larana v04\_01\_01
----------------------------------------

-   2015-03-05 Lynn Garren : larana v04\_01\_01 for larsoft v04\_01\_01
-   2015-03-05 Tingjun Yang : Update constants for pre-MCC6.

larreco v04\_01\_01
------------------------------------------

-   2015-03-05 Lynn Garren : larreco v04\_01\_01 for larsoft v04\_01\_01
-   2015-03-05 Michelle Stancari : bug fixes
-   2015-03-04 drinkingkazu : Disregard \#e- =\> ADC conversion factor from DetectorProperties –kazu

larsim v04\_02\_00
----------------------------------------

-   2015-03-05 Lynn Garren : larsim v04\_02\_00 for larsoft v04\_01\_01
-   2015-03-05 Lynn Garren : larsim v04\_02\_00 for larsoft v04\_01\_01
-   2015-03-03 Wesley Ketchum : Merge remote-tracking branch ‘origin/feature/andrzej\_save\_endprocess’ into develop
-   2015-03-02 Wesley Ketchum : Merge branch ‘develop’ into feature/wketchum\_MergeSimSources
-   2015-02-26 Andrzej Szelc : add saving of EndProcess to particle in LArG4
-   2015-02-18 Wesley Ketchum : fix making of associations … now ready to commit!
-   2015-02-18 Wesley Ketchum : add option in LArG4 to specify generator input; also, changes/updates to reset MergeSimSourceUtility between events
-   2015-02-18 Wesley Ketchum : finish up the MergeSimSourcesUtility class, and add in a module to run it … module makes all the things LArG4 makes
-   2015-02-13 Wesley Ketchum : add a MergeSimSourcesUtility: requires additional methods in simulation products

larevt v04\_00\_03
----------------------------------------

-   2015-03-05 Lynn Garren : larevt v04\_00\_03 for larsoft v04\_01\_01

lardata v04\_00\_03
------------------------------------------

-   2015-03-05 Lynn Garren : lardata v04\_00\_03 for larsoft v04\_01\_01

larcore v04\_00\_02
------------------------------------------

-   2015-03-05 Lynn Garren : larcore v04\_00\_02 for larsoft v04\_01\_01
-   2015-03-02 Herbert Greenlee : Fix geometry updating.
-   2015-02-28 Herbert Greenlee : Fix bug in geometry versioning.

larbatch v01\_04\_03
--------------------------------------------

-   2015-03-05 Lynn Garren : larbatch v01\_04\_03 for larsoft v04\_01\_01
-   2015-03-04 Herbert Greenlee : Combine functions fill\_workdir and dojobsub into one function called dojobsub.
