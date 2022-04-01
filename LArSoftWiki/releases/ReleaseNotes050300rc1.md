# LArSoft v05_03_00_rc1 Release Notes



[list of LArSoft releases](LArSoft_release_list)  
[Download instructions](https://scisoft.fnal.gov/scisoft/bundles/larsoft/v05_03_00_rc1/larsoft-v05_03_00_rc1.html)

## Purpose

-   use geant4 10.1.p03
    -   This release candidate is on branch v05_03_00_rc
    -   There is also a v05_03_00_rc branch and v05_03_00_rc1 tag for argoneutcode, dunetpc, lariatsoft, and uboonecode.

## New features

-   use geant4 10.1.p03

## Bug fixes

-   The gdml files and the scripts that generate them declare density units to be either “g/cm3” or “g/cc”. However, geant4 only recognizes “g/cm3”. With geant4 10.1.p03, density values declared as “g/cc” are set to zero and a warning is issued. We have replaced “g/cc” with “g/cm3” in the v05_03_00_rc branch of larcore, dunetpc, lariatsoft, and uboonecode.

## Updated dependencies

|             |              |            |       |
|-------------|--------------|------------|-------|
| Product     | Version      | Qualifiers | Notes |
| geant4      | v4_10_1_p03 | e9         |       |
| nutools     | v1_24_00     | e9         |       |
| g4emlow     | v6_41        |            |       |
| g4neutron   | v4_5         |            |       |
| g4neutronxs | v1_4         |            |       |
| g4photon    | v3_1         |            |       |
| g4radiative | v4_2         |            |       |

# Change List

## larsoft v05_03_00_rc1

-   2016-03-10 Lynn Garren : for geant4 10.1.p03
-   2016-03-10 Lynn Garren : v05_03_00_rc1 for geant4 10.1.p03
-   2016-03-09 Lynn Garren : Merge branch 'feature/lg_for_geant4_10' into v05_03_00_rc
-   2016-03-04 Lynn Garren : v05_30_00_rc for geant4 10.1.p03

## lareventdisplay v05_03_00_rc1

-   2016-03-10 Lynn Garren : v05_03_00_rc1 for geant4 10.1.p03
-   2016-03-09 Lynn Garren : Merge branch 'feature/lg_for_geant4_10' into v05_03_00_rc
-   2016-03-04 Lynn Garren : v05_30_00_rc for geant4 10.1.p03

## larexamples v05_03_00_rc1

-   2016-03-10 Lynn Garren : v05_03_00_rc1 for geant4 10.1.p03

## larpandora v05_03_00_rc1

-   2016-03-10 Lynn Garren : v05_03_00_rc1 for geant4 10.1.p03

## larana v05_03_00_rc1

-   2016-03-10 Lynn Garren : v05_03_00_rc1 for geant4 10.1.p03
-   2016-03-09 Lynn Garren : Merge branch 'feature/lg_for_geant4_10' into v05_03_00_rc
-   2016-03-04 Lynn Garren : v05_30_00_rc for geant4 10.1.p03

## larreco v05_03_00_rc1

-   2016-03-10 Lynn Garren : v05_03_00_rc1 for geant4 10.1.p03

## larsim v05_03_00_rc1

-   2016-03-10 Lynn Garren : v05_03_00_rc1 for geant4 10.1.p03
-   2016-03-09 Lynn Garren : Merge branch 'feature/lg_for_geant4_10' into v05_03_00_rc
-   2016-03-04 Lynn Garren : v05_30_00_rc for geant4 10.1.p03
-   2016-03-02 Lynn Garren : try to match updated interfaces
-   2016-03-02 Lynn Garren : need to defined the physics vector
-   2016-03-02 Lynn Garren : can also use aParticleIterator here
-   2016-03-02 Lynn Garren : here we can use aParticleIterator

## larevt v05_03_00_rc1

-   2016-03-10 Lynn Garren : v05_03_00_rc1 for geant4 10.1.p03
-   2016-03-09 Lynn Garren : Merge branch 'feature/lg_for_geant4_10' into v05_03_00_rc
-   2016-03-04 Lynn Garren : v05_30_00_rc for geant4 10.1.p03

## lardata v05_03_00_rc1

-   2016-03-10 Lynn Garren : v05_03_00_rc1 for geant4 10.1.p03
-   2016-03-09 Lynn Garren : Merge branch 'feature/lg_for_geant4_10' into v05_03_00_rc
-   2016-03-04 Lynn Garren : v05_30_00_rc for geant4 10.1.p03
-   2016-03-04 Lynn Garren : Merge branch 'develop' into feature/lg_for_geant4_10
-   2016-03-02 Lynn Garren : use nutools v1_24_00 with geant4 v4_10_1_p03

## larcore v05_03_00_rc1

-   2016-03-10 Lynn Garren : v05_03_00_rc1 for geant4 10.1.p03
-   2016-03-09 Lynn Garren : the correct units are g/cm3, not g/cc
-   2016-03-04 Lynn Garren : v05_30_00_rc for geant4 10.1.p03
-   2016-03-02 Lynn Garren : do not define GDML_SCHEMA_DIR here
