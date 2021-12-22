LArSoft v05\_03\_00\_rc1 Release Notes(#LArSoft-v05_03_00_rc1-Release-Notes)
===============================================================================

-   **Table of contents**
-   [LArSoft v05\_03\_00\_rc1 Release Notes](#LArSoft-v05_03_00_rc1-Release-Notes)
    -   [Purpose](#Purpose)
    -   [New features](#New-features)
    -   [Bug fixes](#Bug-fixes)
    -   [Updated dependencies](#Updated-dependencies)
-   [Change List](#Change-List)
    -   [larsoft v05\_03\_00\_rc1](#larsoft-v05_03_00_rc1)
    -   [lareventdisplay v05\_03\_00\_rc1](#lareventdisplay-v05_03_00_rc1)
    -   [larexamples v05\_03\_00\_rc1](#larexamples-v05_03_00_rc1)
    -   [larpandora v05\_03\_00\_rc1](#larpandora-v05_03_00_rc1)
    -   [larana v05\_03\_00\_rc1](#larana-v05_03_00_rc1)
    -   [larreco v05\_03\_00\_rc1](#larreco-v05_03_00_rc1)
    -   [larsim v05\_03\_00\_rc1](#larsim-v05_03_00_rc1)
    -   [larevt v05\_03\_00\_rc1](#larevt-v05_03_00_rc1)
    -   [lardata v05\_03\_00\_rc1](#lardata-v05_03_00_rc1)
    -   [larcore v05\_03\_00\_rc1](#larcore-v05_03_00_rc1)

[list of LArSoft releases](LArSoft_release_list)\
[Download instructions](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v05_03_00_rc1/larsoft-v05_03_00_rc1.html)

Purpose(#Purpose)
--------------------

-   use geant4 10.1.p03
    -   This release candidate is on branch v05\_03\_00\_rc
    -   There is also a v05\_03\_00\_rc branch and v05\_03\_00\_rc1 tag for argoneutcode, dunetpc, lariatsoft, and uboonecode.

New features(#New-features)
------------------------------

-   use geant4 10.1.p03

Bug fixes(#Bug-fixes)
------------------------

-   The gdml files and the scripts that generate them declare density units to be either “g/cm3” or “g/cc”. However, geant4 only recognizes “g/cm3”. With geant4 10.1.p03, density values declared as “g/cc” are set to zero and a warning is issued. We have replaced “g/cc” with “g/cm3” in the v05\_03\_00\_rc branch of larcore, dunetpc, lariatsoft, and uboonecode.

Updated dependencies(#Updated-dependencies)
----------------------------------------------

  ------------- ---------------- ------------ -------
  Product       Version          Qualifiers   Notes
  geant4        v4\_10\_1\_p03   e9           
  nutools       v1\_24\_00       e9           
  g4emlow       v6\_41                        
  g4neutron     v4\_5                         
  g4neutronxs   v1\_4                         
  g4photon      v3\_1                         
  g4radiative   v4\_2                         
  ------------- ---------------- ------------ -------

Change List(#Change-List)
============================

larsoft v05\_03\_00\_rc1(#larsoft-v05_03_00_rc1)
---------------------------------------------------

-   2016-03-10 Lynn Garren : for geant4 10.1.p03
-   2016-03-10 Lynn Garren : v05\_03\_00\_rc1 for geant4 10.1.p03
-   2016-03-09 Lynn Garren : Merge branch ‘feature/lg\_for\_geant4\_10’ into v05\_03\_00\_rc
-   2016-03-04 Lynn Garren : v05\_30\_00\_rc for geant4 10.1.p03

lareventdisplay v05\_03\_00\_rc1(#lareventdisplay-v05_03_00_rc1)
-------------------------------------------------------------------

-   2016-03-10 Lynn Garren : v05\_03\_00\_rc1 for geant4 10.1.p03
-   2016-03-09 Lynn Garren : Merge branch ‘feature/lg\_for\_geant4\_10’ into v05\_03\_00\_rc
-   2016-03-04 Lynn Garren : v05\_30\_00\_rc for geant4 10.1.p03

larexamples v05\_03\_00\_rc1(#larexamples-v05_03_00_rc1)
-----------------------------------------------------------

-   2016-03-10 Lynn Garren : v05\_03\_00\_rc1 for geant4 10.1.p03

larpandora v05\_03\_00\_rc1(#larpandora-v05_03_00_rc1)
---------------------------------------------------------

-   2016-03-10 Lynn Garren : v05\_03\_00\_rc1 for geant4 10.1.p03

larana v05\_03\_00\_rc1(#larana-v05_03_00_rc1)
-------------------------------------------------

-   2016-03-10 Lynn Garren : v05\_03\_00\_rc1 for geant4 10.1.p03
-   2016-03-09 Lynn Garren : Merge branch ‘feature/lg\_for\_geant4\_10’ into v05\_03\_00\_rc
-   2016-03-04 Lynn Garren : v05\_30\_00\_rc for geant4 10.1.p03

larreco v05\_03\_00\_rc1(#larreco-v05_03_00_rc1)
---------------------------------------------------

-   2016-03-10 Lynn Garren : v05\_03\_00\_rc1 for geant4 10.1.p03

larsim v05\_03\_00\_rc1(#larsim-v05_03_00_rc1)
-------------------------------------------------

-   2016-03-10 Lynn Garren : v05\_03\_00\_rc1 for geant4 10.1.p03
-   2016-03-09 Lynn Garren : Merge branch ‘feature/lg\_for\_geant4\_10’ into v05\_03\_00\_rc
-   2016-03-04 Lynn Garren : v05\_30\_00\_rc for geant4 10.1.p03
-   2016-03-02 Lynn Garren : try to match updated interfaces
-   2016-03-02 Lynn Garren : need to defined the physics vector
-   2016-03-02 Lynn Garren : can also use aParticleIterator here
-   2016-03-02 Lynn Garren : here we can use aParticleIterator

larevt v05\_03\_00\_rc1(#larevt-v05_03_00_rc1)
-------------------------------------------------

-   2016-03-10 Lynn Garren : v05\_03\_00\_rc1 for geant4 10.1.p03
-   2016-03-09 Lynn Garren : Merge branch ‘feature/lg\_for\_geant4\_10’ into v05\_03\_00\_rc
-   2016-03-04 Lynn Garren : v05\_30\_00\_rc for geant4 10.1.p03

lardata v05\_03\_00\_rc1(#lardata-v05_03_00_rc1)
---------------------------------------------------

-   2016-03-10 Lynn Garren : v05\_03\_00\_rc1 for geant4 10.1.p03
-   2016-03-09 Lynn Garren : Merge branch ‘feature/lg\_for\_geant4\_10’ into v05\_03\_00\_rc
-   2016-03-04 Lynn Garren : v05\_30\_00\_rc for geant4 10.1.p03
-   2016-03-04 Lynn Garren : Merge branch ‘develop’ into feature/lg\_for\_geant4\_10
-   2016-03-02 Lynn Garren : use nutools v1\_24\_00 with geant4 v4\_10\_1\_p03

larcore v05\_03\_00\_rc1(#larcore-v05_03_00_rc1)
---------------------------------------------------

-   2016-03-10 Lynn Garren : v05\_03\_00\_rc1 for geant4 10.1.p03
-   2016-03-09 Lynn Garren : the correct units are g/cm3, not g/cc
-   2016-03-04 Lynn Garren : v05\_30\_00\_rc for geant4 10.1.p03
-   2016-03-02 Lynn Garren : do not define GDML\_SCHEMA\_DIR here
