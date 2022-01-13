LArSoft v05_06_00 Release Notes
======================================================================

[list of LArSoft releases](LArSoft_release_list)
[Download instructions](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v05_06_00/larsoft-v05_06_00.html)

Purpose
--------------------

-   use geant4 10.1.p03

New features
------------------------------

-   use geant4 10.1.p03
    -   use feature/for_v05_06_00 for argoneutcode, dunetpc, lar1ndcode, lariatsoft, and uboonecode

Bug fixes
------------------------

-   The gdml files and the scripts that generate them declare density units to be either “g/cm3” or “g/cc”. However, geant4 10.1 only recognizes “g/cm3”. With geant4 10.1.p03, density values declared as “g/cc” are set to zero and a warning is issued. We have replaced “g/cc” with “g/cm3” in larcore and in the feature/for_v05_06_00 branch for dunetpc, lariatsoft, and uboonecode.

Updated dependencies
----------------------------------------------

||
|Product|Version|Qualifiers|Notes|
|geant4|v4_10_1_p03|e9||
|nutools|v1_24_01|e9||
|g4emlow|v6_41|||
|g4neutron|v4_5|||
|g4neutronxs|v1_4|||
|g4photon|v3_1|||
|g4radiative|v4_2|||

Change List
============================

larsoft v05_06_00
------------------------------------------

-   2016-03-24 Lynn Garren : larsoft v05_06_00 for larsoft v05_06_00
-   2016-03-24 Lynn Garren : using nu v1_24_01
-   2016-03-24 Lynn Garren : Merge branch ‘v05_03_00_rc’ into release/v05_06_00
-   2016-03-10 Lynn Garren : for geant4 10.1.p03
-   2016-03-10 Lynn Garren : v05_03_00_rc1 for geant4 10.1.p03
-   2016-03-09 Lynn Garren : Merge branch ‘feature/lg_for_geant4_10’ into v05_03_00_rc
-   2016-03-04 Lynn Garren : v05_30_00_rc for geant4 10.1.p03

lareventdisplay v05_06_00
----------------------------------------------------------

-   2016-03-24 Lynn Garren : lareventdisplay v05_06_00
-   2016-03-24 Lynn Garren : Merge branch ‘v05_03_00_rc’ into release/v05_06_00
-   2016-03-10 Lynn Garren : v05_03_00_rc1 for geant4 10.1.p03
-   2016-03-09 Lynn Garren : Merge branch ‘feature/lg_for_geant4_10’ into v05_03_00_rc
-   2016-03-04 Lynn Garren : v05_30_00_rc for geant4 10.1.p03

larexamples v05_06_00
--------------------------------------------------

-   2016-03-24 Lynn Garren : larexamples v05_06_00
-   2016-03-24 Lynn Garren : Merge branch ‘v05_03_00_rc’ into release/v05_06_00
-   2016-03-10 Lynn Garren : v05_03_00_rc1 for geant4 10.1.p03

larpandora v05_06_00
------------------------------------------------

-   2016-03-24 Lynn Garren : do not need to list larsim
-   2016-03-24 Lynn Garren : Merge branch ‘v05_03_00_rc’ into release/v05_06_00
-   2016-03-10 Lynn Garren : v05_03_00_rc1 for geant4 10.1.p03

larana v05_06_00
----------------------------------------

-   2016-03-24 Lynn Garren : larana v05_06_00 for larsoft v05_06_00
-   2016-03-24 Lynn Garren : Merge branch ‘v05_03_00_rc’ into release/v05_06_00
-   2016-03-10 Lynn Garren : v05_03_00_rc1 for geant4 10.1.p03
-   2016-03-09 Lynn Garren : Merge branch ‘feature/lg_for_geant4_10’ into v05_03_00_rc
-   2016-03-04 Lynn Garren : v05_30_00_rc for geant4 10.1.p03

larreco v05_06_00
------------------------------------------

-   2016-03-24 Lynn Garren : larreco v05_06_00 for larsoft v05_06_00
-   2016-03-24 Lynn Garren : Merge branch ‘v05_03_00_rc’ into release/v05_06_00
-   2016-03-10 Lynn Garren : v05_03_00_rc1 for geant4 10.1.p03

larsim v05_06_00
----------------------------------------

-   2016-03-24 Lynn Garren : larsim v05_06_00 for larsoft v05_06_00
-   2016-03-24 Lynn Garren : Merge branch ‘v05_03_00_rc’ into release/v05_06_00
-   2016-03-10 Lynn Garren : v05_03_00_rc1 for geant4 10.1.p03
-   2016-03-09 Lynn Garren : Merge branch ‘feature/lg_for_geant4_10’ into v05_03_00_rc
-   2016-03-04 Lynn Garren : v05_30_00_rc for geant4 10.1.p03
-   2016-03-02 Lynn Garren : try to match updated interfaces
-   2016-03-02 Lynn Garren : need to defined the physics vector
-   2016-03-02 Lynn Garren : can also use aParticleIterator here
-   2016-03-02 Lynn Garren : here we can use aParticleIterator

larevt v05_06_00
----------------------------------------

-   2016-03-24 Lynn Garren : larevt v05_06_00
-   2016-03-24 Lynn Garren : Merge branch ‘v05_03_00_rc’ into release/v05_06_00
-   2016-03-10 Lynn Garren : v05_03_00_rc1 for geant4 10.1.p03
-   2016-03-09 Lynn Garren : Merge branch ‘feature/lg_for_geant4_10’ into v05_03_00_rc
-   2016-03-04 Lynn Garren : v05_30_00_rc for geant4 10.1.p03

lardata v05_06_00
------------------------------------------

-   2016-03-24 Lynn Garren : lardata v05_06_00 for larsoft v05_06_00
-   2016-03-24 Lynn Garren : Merge branch ‘v05_03_00_rc’ into release/v05_06_00
-   2016-03-10 Lynn Garren : v05_03_00_rc1 for geant4 10.1.p03
-   2016-03-09 Lynn Garren : Merge branch ‘feature/lg_for_geant4_10’ into v05_03_00_rc
-   2016-03-04 Lynn Garren : v05_30_00_rc for geant4 10.1.p03
-   2016-03-04 Lynn Garren : Merge branch ‘develop’ into feature/lg_for_geant4_10
-   2016-03-02 Lynn Garren : use nutools v1_24_00 with geant4 v4_10_1_p03

larcore v05_06_00
------------------------------------------

-   2016-03-24 Lynn Garren : larcore v05_06_00 for larsoft v05_06_00
-   2016-03-24 Lynn Garren : Merge branch ‘v05_03_00_rc’ into release/v05_06_00
-   2016-03-10 Lynn Garren : v05_03_00_rc1 for geant4 10.1.p03
-   2016-03-09 Lynn Garren : the correct units are g/cm3, not g/cc
-   2016-03-04 Lynn Garren : v05_30_00_rc for geant4 10.1.p03
-   2016-03-02 Lynn Garren : do not define GDML_SCHEMA_DIR here

larbatch v01_20_07
--------------------------------------------

larutils v1_05_05
------------------------------------------
