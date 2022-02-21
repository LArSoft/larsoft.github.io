# LArSoft v06_38_00_01 Release Notes



[list of LArSoft releases](LArSoft_release_list)  
Download instructions for [larsoft v06_38_00_01](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v06_38_00_01/larsoft-v06_38_00_01.html)  
Download instructions for [just larsoftobj v1_20_00](http://scisoft.fnal.gov/scisoft/bundles/larsoftobj/v1_20_00/larsoftobj-v1_20_00.html)

## Purpose

-   allow the experiments to test genie v2_12_6 and geant4 v4_10_3_p01a

## New features

-   This release is based on larsoft v06_38_00
-   The only changes are those required to use genie v2_12_6 and geant4 v4_10_3_p01a
-   This tag is on the v06_38_00_01_branch in the relevant larsoft repositories.

## Notes

-   Branch feature/team_for_v06_38_00_01 with required changes is available for argoneutcode, dunetpc, and uboonecode.
-   genie v2_12_6
    -   this release comes with genie_xsec v2_12_6 and genie_phyopt v2_12_6
    -   **BREAKING CHANGE**: “Default+MEC” in fcl files is obsolete. See https://cdcvs.fnal.gov/redmine/projects/nutools/wiki/GENIE_Configuration_Files. Branch feature/team_for_v06_38_00_01 for dunetpc and uboonecode reflects this change.
-   geant v4_10_3_p01a
    -   modifications were required in larsim LArG4
    -   See \#16567 for a description of the p01a patch

## Updated dependencies

|         |               |            |                                                            |
|---------|---------------|------------|------------------------------------------------------------|
| Product | Version       | Qualifiers | Notes                                                      |
| nutools | v2_13_03      | e14        | [nutools:NuTools_Release_Notes#nutools-v2_13_03](https://cdcvs.fnal.gov/redmine/projects/nutools/wiki/NuTools_Release_Notes#nutools-v2_13_03)     |
| genie   | v2_12_6       | e14        | http://releases.genie-mc.org/                              |
| geant4  | v4_10_3_p01a | e14        | http://geant4.web.cern.ch/geant4/support/Patch4.10.3-1.txt |

# Change List

## larsoft v06_38_00_01

-   2017-06-02 Lynn Garren : using nutools v2_13_03
-   2017-06-02 Lynn Garren : larsoft v06_38_00_01
-   2017-06-02 Lynn Garren : upate versions
-   2017-06-01 Lynn Garren : Merge branch 'feature/team_for_v06_34_01_01' into feature/team_for_v06_38_00_01
-   2017-05-04 Lynn Garren : for larsoft v06_34_01_01 with geant4 v4_10_3_p01
-   2017-05-04 Lynn Garren : for ifdhc v2_0_6

## lareventdisplay v06_05_07_01

-   2017-06-02 Lynn Garren : lareventdisplay v06_05_07_01
-   2017-06-01 Lynn Garren : Merge branch 'feature/team_for_v06_34_01_01' into feature/team_for_v06_38_00_01
-   2017-05-04 Lynn Garren : for larsoft v06_34_01_01 with geant4 v4_10_3_p01

## larexamples v06_03_07_01

-   2017-06-02 Lynn Garren : larexamples v06_03_07_01
-   2017-06-01 Lynn Garren : Merge branch 'feature/team_for_v06_34_01_01' into feature/team_for_v06_38_00_01
-   2017-05-04 Lynn Garren : for larsoft v06_34_01_01 with geant4 v4_10_3_p01

## larpandora v06_11_01_01

-   2017-06-02 Lynn Garren : larpandora v06_11_01_01
-   2017-06-01 Lynn Garren : Merge branch 'feature/team_for_v06_34_01_01' into feature/team_for_v06_38_00_01
-   2017-05-04 Lynn Garren : for larsoft v06_34_01_01 with geant4 v4_10_3_p01

## larwirecell v06_04_06_01

-   2017-06-02 Lynn Garren : larwirecell v06_04_06_01
-   2017-06-01 Lynn Garren : Merge branch 'feature/team_for_v06_34_01_01' into feature/team_for_v06_38_00_01
-   2017-05-04 Lynn Garren : for larsoft v06_34_01_01 with geant4 v4_10_3_p01

## larana v06_06_02_01

-   2017-06-02 Lynn Garren : larana v06_06_02_01
-   2017-06-01 Lynn Garren : Merge branch 'feature/team_for_v06_34_01_01' into feature/team_for_v06_38_00_01
-   2017-05-04 Lynn Garren : for larsoft v06_34_01_01 with geant4 v4_10_3_p01

## larreco v06_30_00_01

-   2017-06-02 Lynn Garren : larreco v06_30_00_01
-   2017-06-01 Lynn Garren : Merge branch 'feature/team_for_v06_34_01_01' into feature/team_for_v06_38_00_01
-   2017-05-04 Lynn Garren : for larsoft v06_34_01_01 with geant4 v4_10_3_p01
-   2017-05-04 Lynn Garren : use nutools v2_13_02

## larsim v06_23_00_01

-   2017-06-02 Lynn Garren : larsim v06_23_00_01
-   2017-06-01 Lynn Garren : Merge branch 'feature/team_for_v06_34_01_01' into feature/team_for_v06_38_00_01
-   2017-05-17 Hans Wenzel : make sure that physics is initialized
-   2017-05-04 Lynn Garren : for larsoft v06_34_01_01 with geant4 v4_10_3_p01
-   2017-05-04 Lynn Garren : modify to make it work with geant 10.3.p01

## larevt v06_13_04_01

-   2017-06-02 Lynn Garren : larevt v06_13_04_01
-   2017-06-01 Lynn Garren : Merge branch 'feature/team_for_v06_34_01_01' into feature/team_for_v06_38_00_01
-   2017-05-04 Lynn Garren : for larsoft v06_34_01_01 with geant4 v4_10_3_p01

## lardata v06_21_01_01

-   2017-06-02 Lynn Garren : lardata v06_21_01_01
-   2017-06-01 Lynn Garren : Merge branch 'feature/team_for_v06_34_01_01' into feature/team_for_v06_38_00_01
-   2017-05-04 Lynn Garren : for larsoft v06_34_01_01 with geant4 v4_10_3_p01
-   2017-05-04 Lynn Garren : use nutools v2_13_02

## larcore v06_09_02

## larpandoracontent v03_06_00

## larsoftobj v1_20_00

## lardataobj v1_16_00

## larcoreobj v1_13_01

## larbatch v01_32_01

## larutils v1_14_00
