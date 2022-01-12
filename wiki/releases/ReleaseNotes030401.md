LArSoft v03_04_01 Release Notes
======================================================================

-   **Table of contents**
-   [LArSoft v03_04_01 Release Notes](#LArSoft-v03_04_01-Release-Notes)
    -   [Purpose](#Purpose)
    -   [New features](#New-features)
    -   [Bug fixes](#Bug-fixes)
    -   [Updated dependencies](#Updated-dependencies)
-   [Change List](#Change-List)
    -   [larsoft v03_04_01](#larsoft-v03_04_01)
    -   [lareventdisplay v03_02_04](#lareventdisplay-v03_02_04)
    -   [larexamples v03_02_04](#larexamples-v03_02_04)
    -   [larpandora v03_03_03](#larpandora-v03_03_03)
    -   [larana v03_03_01](#larana-v03_03_01)
    -   [larreco v03_03_01](#larreco-v03_03_01)
    -   [larsim v03_02_04](#larsim-v03_02_04)
    -   [larevt v03_02_04](#larevt-v03_02_04)
    -   [lardata v03_03_01](#lardata-v03_03_01)
    -   [larcore v03_03_01](#larcore-v03_03_01)

[list of LArSoft releases](LArSoft_release_list)
[Download instructions](http://scisoft.fnal.gov/scisoft/projects/larsoft/v03_04_01/larsoft-v03_04_01.html)

Purpose
--------------------

-   Include changes in development since v03_04_00.

New features
------------------------------

Bug fixes
------------------------

Updated dependencies
----------------------------------------------

-   Build now uses cetbuildtools [v04_03_03](https://cdcvs.fnal.gov/redmine/projects/cetbuildtools/wiki/Release_Notes)

Change List
============================

larsoft v03_04_01
------------------------------------------

-   2014-11-11 Lynn Garren : larsoft v03_04_01

lareventdisplay v03_02_04
----------------------------------------------------------

-   2014-11-11 Lynn Garren : lareventdisplay v03_02_04 for larsoft v03_04_01
-   2014-11-11 Tingjun Yang : Merge branch ‘feature/tjyang/Ortho3DmultiTPC’ into develop
-   2014-11-11 Tingjun Yang : plot TPC boundaries in Ortho2D views
-   2014-11-09 Tingjun Yang : change size of Ortho3D pads to account for multiTPCs
-   2014-11-06 Bruce Baller : Merge branch ‘feature/evwork’ into develop
-   2014-11-06 Bruce Baller : Draw cluster (track) IDs if DrawCluster \> 1 (DrawTrack \> 1)

larexamples v03_02_04
--------------------------------------------------

-   2014-11-11 Lynn Garren : larexamples v03_02_04 for larsoft v03_04_01

larpandora v03_03_03
------------------------------------------------

-   2014-11-11 Lynn Garren : larpandora v03_03_03 for larsoft v03_04_01
-   2014-11-06 John Marshall : Vertex reconstruction update and associated configuration changes.

larana v03_03_01
----------------------------------------

-   2014-11-11 Lynn Garren : set fwdir and use install_fw
-   2014-11-10 Alex Himmel : Bug Fix: Counters for Photons per OpDet were reset in the wrong place for Lite Photons.
-   2014-11-07 Wesley Ketchum : Merge branch ‘feature/wketchum_TrackCalorimetry’ into develop
-   2014-11-07 Wesley Ketchum : Merge branch ‘develop’ of ssh://cdcvs.fnal.gov/cvs/projects/larana into develop
-   2014-11-07 Wesley Ketchum : fixes to make the tree work…hope it is actually working
-   2014-11-07 Wesley Ketchum : quick overhaul, so that multuiple KDEs with differing bandwidths can be calculated and used in the same alg
-   2014-11-05 Wesley Ketchum : add some things to the tree, and fill the pida pts
-   2014-11-04 Wesley Ketchum : remove histogram resets before initialization
-   2014-11-04 Wesley Ketchum : fix a typo, and normalize the KDE estimates

larreco v03_03_01
------------------------------------------

-   2014-11-11 Lynn Garren : larreco v03_03_01 for larsoft v03_04_01
-   2014-11-11 Herbert Greenlee : Only create tracks with at least two trajectory points.
-   2014-11-08 Tingjun Yang : Merge branch ‘develop’ of ssh://cdcvs.fnal.gov/cvs/projects/larreco into develop
-   2014-11-08 Tingjun Yang : fix a few indexing bugs, also make it work for multiTPCs
-   2014-11-07 Herbert Greenlee : Add hit efficiency and purity histograms to TrackAna.
-   2014-11-06 Tingjun Yang : update reco parameters for lbne

larsim v03_02_04
----------------------------------------

-   2014-11-11 Lynn Garren : larsim v03_02_04 for larsoft v03_04_01
-   2014-11-10 Sowjanya Gollapinni : Adding in a provision to specify a buffer box that goes around the cryostat, to increase the CRY rate that is fed to GEANT4. Saving only particles that geometrically cross the TPC doesn’t consider the rate loss due to multiple scattering effects one encounters in the GEANT step. A buffer box will compensate for this loss
-   2014-11-07 Tingjun Yang : remove experiment specific configurations

larevt v03_02_04
----------------------------------------

-   2014-11-11 Lynn Garren : larevt v03_02_04 for larsoft v03_04_01

lardata v03_03_01
------------------------------------------

-   2014-11-11 Lynn Garren : lardata v03_03_01 for larsoft v03_04_01
-   2014-11-11 Herbert Greenlee : Add protection against creating tracks with insufficienct number of trajectory points.

larcore v03_03_01
------------------------------------------

-   2014-11-11 Lynn Garren : larcore v03_03_01
-   2014-11-06 Tyler Alion : Add comments to clarify some OpDet sorting code in the CryostatGeo constructor. Add todos so we dont forget to eventually move the lbne-specific sorting code out of larcore and remove the hard-coded number
