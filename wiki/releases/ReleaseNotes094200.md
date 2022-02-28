# LArSoft v09_42_00 Release Notes



-   [list of LArSoft releases](LArSoft_release_list)
-   Download instructions for [larsoft v09_42_00](https://scisoft.fnal.gov/scisoft/bundles/larsoft/v09_42_00/larsoft-v09_42_00.html)
-   Download instructions for [just larsoftobj v09_16_01](https://scisoft.fnal.gov/scisoft/bundles/larsoftobj/v09_16_01/larsoftobj-v09_16_01.html)

## Purpose

-   changes in develop
-   approved PRs

## New features

-   larsim PR 85
    -   Add Offset to TextFileGen module This allows controlling it via a script in grind jobs, making running grid jobs easier.
    -   New parameter defaults to zero in textfilegen.fcl, should be invisible to users who don't care about it.
    -   Restructured the code - moved the event reading into a member function.
-   larwirecell PR 13
    -   Adding new DepoSetSource. Passing DepoSet instead of queue of Depos. Which makes Pgrapher engine much more efficient.
-   webevd PR 36
    -   Add a “Save” button that downloads a png of the current canvas

## Bug fixes

## Updated dependencies

-   ifdhc v2_6_1
-   ifdh_art v2_13_03
-   nusimdata v1_25_02
-   nuevdb v1_06_02
-   nug4 v1_12_02
-   geant4reweight v01_12_00
-   nugen v1_15_03
-   nutools v3_12_02
-   ppfx v02_14_08
-   nusystematics v01_00_07
-   mrb v5_19_09
-   cetmodules v2_30_01
-   cmake v3_22_0

# Change List

## larsoft v09_42_00

-   2022-01-13 Lynn Garren : larsoft v09_42_00 for larsoft v09_42_00
-   2022-01-13 Lynn Garren : larsoft v09_42_00 for larsoft v09_42_00
-   2022-01-13 Lynn Garren : product versions
-   2022-01-12 Lynn Garren : genie_phyopt dkcharmtau-resfixfix

## lareventdisplay v09_03_04

-   2022-01-13 Lynn Garren : lareventdisplay v09_03_04 for larsoft v09_42_00
-   2022-01-13 Lynn Garren : lareventdisplay v09_03_04 for larsoft v09_42_00

## larexamples v09_03_04

-   2022-01-13 Lynn Garren : larexamples v09_03_04 for larsoft v09_42_00
-   2022-01-13 Lynn Garren : larexamples v09_03_04 for larsoft v09_42_00

## larpandora v09_12_01

-   2022-01-13 Lynn Garren : larpandora v09_12_01 for larsoft v09_42_00
-   2022-01-13 Lynn Garren : larpandora v09_12_01 for larsoft v09_42_00
-   2022-01-13 Lynn Garren : using target libraries

## larsimrad v09_04_04

-   2022-01-13 Lynn Garren : larsimrad v09_04_04 for larsoft v09_42_00
-   2022-01-13 Lynn Garren : larsimrad v09_04_04 for larsoft v09_42_00

## larrecodnn v09_10_04

-   2022-01-13 Lynn Garren : larrecodnn v09_10_04 for larsoft v09_42_00
-   2022-01-13 Lynn Garren : larrecodnn v09_10_04 for larsoft v09_42_00

## larwirecell v09_06_00

-   2022-01-13 Lynn Garren : larwirecell v09_06_00 for larsoft v09_42_00
-   2022-01-13 Lynn Garren : larwirecell v09_06_00 for larsoft v09_42_00
-   2022-01-12 Lynn Garren : Merge pull request \#13 from HaiwangYu/dev
-   2021-12-16 HaiwangYu : init DepoSetSource
-   2021-08-20 HaiwangYu : init SimDepoSetSource

## larana v09_05_01

-   2022-01-13 Lynn Garren : larana v09_05_01 for larsoft v09_42_00
-   2022-01-13 Lynn Garren : larana v09_05_01 for larsoft v09_42_00

## larreco v09_09_01

-   2022-01-13 Lynn Garren : larreco v09_09_01 for larsoft v09_42_00
-   2022-01-13 Lynn Garren : larreco v09_09_01 for larsoft v09_42_00

## larsim v09_22_00

-   2022-01-13 Lynn Garren : larsim v09_22_00 for larsoft v09_42_00
-   2022-01-13 Lynn Garren : larsim v09_22_00 for larsoft v09_42_00
-   2022-01-13 Lynn Garren : cleanup whitespace
-   2022-01-13 Lynn Garren : Merge pull request \#85 from therealendrju/feature/andrzejs_TextFileGen
-   2022-01-13 a.szelc@ed.ac.uk : remove default Offset value (0) and uncomment it in the .fcl file
-   2022-01-06 a.szelc@ed.ac.uk : code cleanup
-   2022-01-06 a.szelc@ed.ac.uk : modify code to not create vectors needlesly, move offset calculation to beginJob
-   2021-12-21 a.szelc@ed.ac.uk : add the extra parameter to the .fcl file for reference
-   2021-12-21 a.szelc@ed.ac.uk : Merge branch 'develop' of github.com:LArSoft/larsim into feature/andrzejs_TextFileGen
-   2021-12-20 Andrzej Szelc : TextFileGen final clean up
-   2021-11-25 Andrzej Szelc : add Offset parameter, allowingto skip n events in a file
-   2021-11-25 Andrzej Szelc : move out file reading into a helper function to simplify next steps

## larg4 v09_07_03

-   2022-01-13 Lynn Garren : larg4 v09_07_03 for larsoft v09_42_00
-   2022-01-13 Lynn Garren : larg4 v09_07_03 for larsoft v09_42_00

## larevt v09_04_03

-   2022-01-13 Lynn Garren : larevt v09_04_03 for larsoft v09_42_00
-   2022-01-13 Lynn Garren : larevt v09_04_03 for larsoft v09_42_00

## lardata v09_07_01

-   2022-01-13 Lynn Garren : lardata v09_07_01 for larsoft v09_42_00
-   2022-01-13 Lynn Garren : lardata v09_07_01 for larsoft v09_42_00

## larcore v09_04_00

## larpandoracontent v03_26_02

## larsoftobj v09_16_01

-   2022-01-13 Lynn Garren : larsoftobj v09_16_01 for larsoft v09_42_00
-   2022-01-13 Lynn Garren : larsoftobj v09_16_01 for larsoft v09_42_00
-   2022-01-13 Lynn Garren : product versions

## larvecutils v09_00_01

-   2022-01-13 Lynn Garren : larvecutils v09_00_01 for larsoft v09_42_00
-   2021-12-15 Lynn Garren : a few more to ignore

## lardataobj v09_05_01

-   2022-01-13 Lynn Garren : lardataobj v09_05_01 for larsoft v09_42_00
-   2022-01-13 Lynn Garren : lardataobj v09_05_01 for larsoft v09_42_00

## lardataalg v09_09_02

-   2022-01-13 Lynn Garren : lardataalg v09_09_02 for larsoft v09_42_00
-   2022-01-13 Lynn Garren : lardataalg v09_09_02 for larsoft v09_42_00

## larcorealg v09_05_00

## larcoreobj v09_04_00

## webevd v09_08_03

-   2022-01-13 Lynn Garren : webevd v09_08_03 for larsoft v09_42_00
-   2022-01-13 Lynn Garren : webevd v09_08_03 for larsoft v09_42_00
-   2022-01-11 Lynn Garren : Merge pull request \#36 from LArSoft/feature/save_image
-   2022-01-06 Christopher Backhouse : Add a “Save” button that downloads a png of the current canvas.

## larbatch v01_56_02

## larutils v1_28_02
