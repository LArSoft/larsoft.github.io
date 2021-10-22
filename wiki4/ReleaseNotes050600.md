LArSoft v05\_06\_00 Release Notes[¶](#LArSoft-v05_06_00-Release-Notes)
======================================================================

-   **Table of contents**
-   [LArSoft v05\_06\_00 Release Notes](#LArSoft-v05_06_00-Release-Notes)
    -   [Purpose](#Purpose)
    -   [New features](#New-features)
    -   [Bug fixes](#Bug-fixes)
    -   [Updated dependencies](#Updated-dependencies)
-   [Change List](#Change-List)
    -   [larsoft v05\_06\_00](#larsoft-v05_06_00)
    -   [lareventdisplay v05\_06\_00](#lareventdisplay-v05_06_00)
    -   [larexamples v05\_06\_00](#larexamples-v05_06_00)
    -   [larpandora v05\_06\_00](#larpandora-v05_06_00)
    -   [larana v05\_06\_00](#larana-v05_06_00)
    -   [larreco v05\_06\_00](#larreco-v05_06_00)
    -   [larsim v05\_06\_00](#larsim-v05_06_00)
    -   [larevt v05\_06\_00](#larevt-v05_06_00)
    -   [lardata v05\_06\_00](#lardata-v05_06_00)
    -   [larcore v05\_06\_00](#larcore-v05_06_00)
    -   [larbatch v01\_20\_07](#larbatch-v01_20_07)
    -   [larutils v1\_05\_05](#larutils-v1_05_05)

[list of LArSoft releases](LArSoft_release_list)\
[Download instructions](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v05_06_00/larsoft-v05_06_00.html)


Purpose[¶](#Purpose)
--------------------

-   use geant4 10.1.p03


New features[¶](#New-features)
------------------------------

-   use geant4 10.1.p03
    -   use feature/for\_v05\_06\_00 for argoneutcode, dunetpc, lar1ndcode, lariatsoft, and uboonecode


Bug fixes[¶](#Bug-fixes)
------------------------

-   The gdml files and the scripts that generate them declare density units to be either “g/cm3” or “g/cc”. However, geant4 10.1 only recognizes “g/cm3”. With geant4 10.1.p03, density values declared as “g/cc” are set to zero and a warning is issued. We have replaced “g/cc” with “g/cm3” in larcore and in the feature/for\_v05\_06\_00 branch for dunetpc, lariatsoft, and uboonecode.


Updated dependencies[¶](#Updated-dependencies)
----------------------------------------------

  ------------- ---------------- ------------ -------
  Product       Version          Qualifiers   Notes
  geant4        v4\_10\_1\_p03   e9           
  nutools       v1\_24\_01       e9           
  g4emlow       v6\_41                        
  g4neutron     v4\_5                         
  g4neutronxs   v1\_4                         
  g4photon      v3\_1                         
  g4radiative   v4\_2                         
  ------------- ---------------- ------------ -------


Change List[¶](#Change-List)
============================


larsoft v05\_06\_00[¶](#larsoft-v05_06_00)
------------------------------------------

-   2016-03-24 Lynn Garren : larsoft v05\_06\_00 for larsoft v05\_06\_00
-   2016-03-24 Lynn Garren : using nu v1\_24\_01
-   2016-03-24 Lynn Garren : Merge branch ‘v05\_03\_00\_rc’ into release/v05\_06\_00
-   2016-03-10 Lynn Garren : for geant4 10.1.p03
-   2016-03-10 Lynn Garren : v05\_03\_00\_rc1 for geant4 10.1.p03
-   2016-03-09 Lynn Garren : Merge branch ‘feature/lg\_for\_geant4\_10’ into v05\_03\_00\_rc
-   2016-03-04 Lynn Garren : v05\_30\_00\_rc for geant4 10.1.p03


lareventdisplay v05\_06\_00[¶](#lareventdisplay-v05_06_00)
----------------------------------------------------------

-   2016-03-24 Lynn Garren : lareventdisplay v05\_06\_00
-   2016-03-24 Lynn Garren : Merge branch ‘v05\_03\_00\_rc’ into release/v05\_06\_00
-   2016-03-10 Lynn Garren : v05\_03\_00\_rc1 for geant4 10.1.p03
-   2016-03-09 Lynn Garren : Merge branch ‘feature/lg\_for\_geant4\_10’ into v05\_03\_00\_rc
-   2016-03-04 Lynn Garren : v05\_30\_00\_rc for geant4 10.1.p03


larexamples v05\_06\_00[¶](#larexamples-v05_06_00)
--------------------------------------------------

-   2016-03-24 Lynn Garren : larexamples v05\_06\_00
-   2016-03-24 Lynn Garren : Merge branch ‘v05\_03\_00\_rc’ into release/v05\_06\_00
-   2016-03-10 Lynn Garren : v05\_03\_00\_rc1 for geant4 10.1.p03


larpandora v05\_06\_00[¶](#larpandora-v05_06_00)
------------------------------------------------

-   2016-03-24 Lynn Garren : do not need to list larsim
-   2016-03-24 Lynn Garren : Merge branch ‘v05\_03\_00\_rc’ into release/v05\_06\_00
-   2016-03-10 Lynn Garren : v05\_03\_00\_rc1 for geant4 10.1.p03


larana v05\_06\_00[¶](#larana-v05_06_00)
----------------------------------------

-   2016-03-24 Lynn Garren : larana v05\_06\_00 for larsoft v05\_06\_00
-   2016-03-24 Lynn Garren : Merge branch ‘v05\_03\_00\_rc’ into release/v05\_06\_00
-   2016-03-10 Lynn Garren : v05\_03\_00\_rc1 for geant4 10.1.p03
-   2016-03-09 Lynn Garren : Merge branch ‘feature/lg\_for\_geant4\_10’ into v05\_03\_00\_rc
-   2016-03-04 Lynn Garren : v05\_30\_00\_rc for geant4 10.1.p03


larreco v05\_06\_00[¶](#larreco-v05_06_00)
------------------------------------------

-   2016-03-24 Lynn Garren : larreco v05\_06\_00 for larsoft v05\_06\_00
-   2016-03-24 Lynn Garren : Merge branch ‘v05\_03\_00\_rc’ into release/v05\_06\_00
-   2016-03-10 Lynn Garren : v05\_03\_00\_rc1 for geant4 10.1.p03


larsim v05\_06\_00[¶](#larsim-v05_06_00)
----------------------------------------

-   2016-03-24 Lynn Garren : larsim v05\_06\_00 for larsoft v05\_06\_00
-   2016-03-24 Lynn Garren : Merge branch ‘v05\_03\_00\_rc’ into release/v05\_06\_00
-   2016-03-10 Lynn Garren : v05\_03\_00\_rc1 for geant4 10.1.p03
-   2016-03-09 Lynn Garren : Merge branch ‘feature/lg\_for\_geant4\_10’ into v05\_03\_00\_rc
-   2016-03-04 Lynn Garren : v05\_30\_00\_rc for geant4 10.1.p03
-   2016-03-02 Lynn Garren : try to match updated interfaces
-   2016-03-02 Lynn Garren : need to defined the physics vector
-   2016-03-02 Lynn Garren : can also use aParticleIterator here
-   2016-03-02 Lynn Garren : here we can use aParticleIterator


larevt v05\_06\_00[¶](#larevt-v05_06_00)
----------------------------------------

-   2016-03-24 Lynn Garren : larevt v05\_06\_00
-   2016-03-24 Lynn Garren : Merge branch ‘v05\_03\_00\_rc’ into release/v05\_06\_00
-   2016-03-10 Lynn Garren : v05\_03\_00\_rc1 for geant4 10.1.p03
-   2016-03-09 Lynn Garren : Merge branch ‘feature/lg\_for\_geant4\_10’ into v05\_03\_00\_rc
-   2016-03-04 Lynn Garren : v05\_30\_00\_rc for geant4 10.1.p03


lardata v05\_06\_00[¶](#lardata-v05_06_00)
------------------------------------------

-   2016-03-24 Lynn Garren : lardata v05\_06\_00 for larsoft v05\_06\_00
-   2016-03-24 Lynn Garren : Merge branch ‘v05\_03\_00\_rc’ into release/v05\_06\_00
-   2016-03-10 Lynn Garren : v05\_03\_00\_rc1 for geant4 10.1.p03
-   2016-03-09 Lynn Garren : Merge branch ‘feature/lg\_for\_geant4\_10’ into v05\_03\_00\_rc
-   2016-03-04 Lynn Garren : v05\_30\_00\_rc for geant4 10.1.p03
-   2016-03-04 Lynn Garren : Merge branch ‘develop’ into feature/lg\_for\_geant4\_10
-   2016-03-02 Lynn Garren : use nutools v1\_24\_00 with geant4 v4\_10\_1\_p03


larcore v05\_06\_00[¶](#larcore-v05_06_00)
------------------------------------------

-   2016-03-24 Lynn Garren : larcore v05\_06\_00 for larsoft v05\_06\_00
-   2016-03-24 Lynn Garren : Merge branch ‘v05\_03\_00\_rc’ into release/v05\_06\_00
-   2016-03-10 Lynn Garren : v05\_03\_00\_rc1 for geant4 10.1.p03
-   2016-03-09 Lynn Garren : the correct units are g/cm3, not g/cc
-   2016-03-04 Lynn Garren : v05\_30\_00\_rc for geant4 10.1.p03
-   2016-03-02 Lynn Garren : do not define GDML\_SCHEMA\_DIR here


larbatch v01\_20\_07[¶](#larbatch-v01_20_07)
--------------------------------------------


larutils v1\_05\_05[¶](#larutils-v1_05_05)
------------------------------------------
