LArSoft v09_11_00 Release Notes
======================================================================

[list of LArSoft releases](LArSoft_release_list)
Download instructions for [larsoft v09_11_00](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v09_11_00/larsoft-v09_11_00.html)
Download instructions for [just larsoftobj v09_03_03](http://scisoft.fnal.gov/scisoft/bundles/larsoftobj/v09_03_03/larsoftobj-v09_03_03.html)

Purpose
--------------------

-   changes in develop
-   approved PRs

New features
------------------------------

-   larg4 PR 19 for [redmine issue 25279](https://cdcvs.fnal.gov/redmine/issues/25279)
    -   This includes changes to keep the second to last point during sparsification.
    -   An updated nusimdata was also required
-   larg4 PR 18
    -   Using the MCParticle method to keep transportation steps, with configurable parameter in ParticleListAction
-   webevd PR 17
    -   Support detectors with Z/Y views rather than Z/U/V.

Bug fixes
------------------------

Updated dependencies
----------------------------------------------

nusimdata v1_21_05 for [redmine issue 25279](https://cdcvs.fnal.gov/redmine/issues/25279)
nuevdb v1_02_09
nug4 v1_05_04
nugen v1_10_12
nurandom v1_04_05
nutools v3_07_05
geant4reweight v01_06_03
nusystematics v00_10_08
mrb v4_04_01

Change List
============================

larsoft v09_11_00
------------------------------------------

-   2020-12-16 Lynn Garren : larsoft v09_11_00 for larsoft v09_11_00
-   2020-12-16 Lynn Garren : product versions

lareventdisplay v09_00_16
----------------------------------------------------------

-   2020-12-16 Lynn Garren : lareventdisplay v09_00_16 for larsoft v09_11_00

larexamples v09_00_15
--------------------------------------------------

-   2020-12-16 Lynn Garren : larexamples v09_00_15 for larsoft v09_11_00

larpandora v09_03_07
------------------------------------------------

-   2020-12-16 Lynn Garren : larpandora v09_03_07 for larsoft v09_11_00

larsimrad v09_00_15
----------------------------------------------

-   2020-12-16 Lynn Garren : larsimrad v09_00_15 for larsoft v09_11_00

larrecodnn v09_02_07
------------------------------------------------

-   2020-12-16 Lynn Garren : larrecodnn v09_02_07 for larsoft v09_11_00

larwirecell v09_01_09
--------------------------------------------------

-   2020-12-16 Lynn Garren : larwirecell v09_01_09 for larsoft v09_11_00

larana v09_00_16
----------------------------------------

-   2020-12-16 Lynn Garren : larana v09_00_16 for larsoft v09_11_00

larreco v09_04_06
------------------------------------------

-   2020-12-16 Lynn Garren : larreco v09_04_06 for larsoft v09_11_00

larsim v09_07_03
----------------------------------------

-   2020-12-16 Lynn Garren : larsim v09_07_03 for larsoft v09_11_00

larg4 v09_02_00
--------------------------------------

-   2020-12-16 Lynn Garren : larg4 v09_02_00 for larsoft v09_11_00
-   2020-12-15 Lynn Garren : Merge branch ‘feature/calcuttj_second_to_last’ into release/v09_11_00
-   2020-12-15 Lynn Garren : Merge pull request \#18 from calcuttj/feature/calcuttj_keep_transportation
-   2020-12-14 Jacob Calcutt : Implementing keeping second-to-last point in sparsification with configurable fcl parameter
-   2020-12-14 Jacob Calcutt : Merge tag ‘tags/v09_01_06’ into feature/calcuttj_second_to_last
-   2020-12-11 Jacob Calcutt : Added default value for KeepTransportation
-   2020-12-03 Jacob Calcutt : Added KeepTransportation flag to ParticleListAction

larevt v09_01_03
----------------------------------------

-   2020-12-16 Lynn Garren : larevt v09_01_03 for larsoft v09_11_00

lardata v09_01_06
------------------------------------------

-   2020-12-16 Lynn Garren : lardata v09_01_06 for larsoft v09_11_00

larcore v09_00_01
------------------------------------------

larpandoracontent v03_22_03
--------------------------------------------------------------

larsoftobj v09_03_03
------------------------------------------------

-   2020-12-16 Lynn Garren : larsoftobj v09_03_03 for larsoft v09_11_00
-   2020-12-16 Lynn Garren : product versions

lardataobj v09_00_05
------------------------------------------------

-   2020-12-16 Lynn Garren : lardataobj v09_00_05 for larsoft v09_11_00

lardataalg v09_03_03
------------------------------------------------

-   2020-12-16 Lynn Garren : lardataalg v09_03_03 for larsoft v09_11_00

larcorealg v09_00_01
------------------------------------------------

larcoreobj v09_00_00
------------------------------------------------

webevd v09_01_00
----------------------------------------

-   2020-12-16 Lynn Garren : webevd v09_01_00 for larsoft v09_11_00
-   2020-12-16 Lynn Garren : Merge pull request [redmine issue 17](https://cdcvs.fnal.gov/redmine/issues/17) from LArSoft/feature/yview_support
-   2020-12-16 Christopher Backhouse : Add a fcl that selects the correct services for VD simulation.
-   2020-12-16 Christopher Backhouse : Support detectors with Z/Y views rather than Z/U/V. Tested on a vertical drift file, but probably would help with ProtoDUNE-DP too.

larbatch v01_54_01
--------------------------------------------

larutils v1_27_03
------------------------------------------
