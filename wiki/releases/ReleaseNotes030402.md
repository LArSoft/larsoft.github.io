# LArSoft v03_04_02 Release Notes



[list of LArSoft releases](LArSoft_release_list)  
[Download instructions](https://scisoft.fnal.gov/scisoft/bundles/larsoft/v03_04_02/larsoft-v03_04_02.html)

## Purpose

-   Include changes in development since v03_04_01.
-   Use art [v1_12_04](https://cdcvs.fnal.gov/redmine/projects/art/wiki/Release_Notes_11204), nutools v1_07_00, and root v5_34_23
-   Include the latest releases of artdaq_core and ifdh_art

## New features

The distribution now uses a generic pullProducts script instead of a versioned script.

## Bug fixes

-   Root v5_31_23 is the official root release with the fix for bug \#7076.
-   Fix the problems Mu2e discovered with root-config (#7253)
-   The link lists for the nutools libraries have been considerably cleaned up. (#5967)

## Updated dependencies

|             |                             |              |                       |                  |
|-------------|-----------------------------|--------------|-----------------------|------------------|
| Product     | Version                     | Qualifier    | Notes                 |                  |
| root        | v5_34_23                    | e6:nu        | see bug \#7253        |                  |
| pandora     | v00_17a                     | e6:nu        | uses root             |                  |
| genie       | v2_8_0m                    | e6           | uses root             |                  |
| art         | [ v1_12_04](https://cdcvs.fnal.gov/redmine/projects/art/wiki/Release_Notes_11204 ) | e6:nu                 | feature requests |
| nutools     | v1_07_00                    | e6           | cleanup the link list |                  |
| ifdh_art    | v1_6_0                     | e6:nu:s5     | with ifdhc v1_5_1    |                  |
| artdaq_core | v1_04_07                    | e6:nu:s5     | uses art              |                  |

# Change List

## larsoft v03_04_02

-   2014-11-19 Lynn Garren : larsoft v03_04_02
-   2014-11-19 Lynn Garren : new larpandora headers

## lareventdisplay v03_02_05

-   2014-11-19 Lynn Garren : lareventdisplay v03_02_05 for larsoft v03_04_02
-   2014-11-13 Gianluca Petrillo : Replaced “3.1416” with pi.

## larexamples v03_02_05

-   2014-11-19 Lynn Garren : larexamples v03_02_05 for larsoft v03_04_02

## larpandora v03_03_04

-   2014-11-19 Lynn Garren : larpandora v03_03_04 for larsoft v03_04_02
-   2014-11-17 Lynn Garren : larpandora remains v03_03_03 until we tag a new larsoft release
-   2014-11-16 Andrew Blake : Updating interface to enable reconstruction in LBNE 35t as well as MicroBooNE. Have organised code for distribution between LArSoft, uboonecode and lbnecode (sometime soon). Have also added analysis modules to study output PFParticles.
-   2014-11-16 Andrew Blake : Adding pandora configuration file for LBNE 35t reconstruction
-   2014-11-16 Andrew Blake : Updating larpandora parent verstion to v03_04_01
-   2014-11-16 Andrew Blake : Updating LArPandoraInterface for use on both LBNE and MicroBooNE, and setting up code for distribution between larsoft, uboonecode, lbnecode. Also adding a set of analysis modules for studying PFParticle output.
-   2014-11-16 Andrew Blake : Updating LArPandoraInterface for use in LBNE as well as MicroBooNE

## larana v03_03_02

-   2014-11-19 Lynn Garren : larana v03_03_02 for larsoft v03_04_02
-   2014-11-12 Wesley Ketchum : put in new option for directly computing dEdx integral
-   2014-11-12 Wesley Ketchum : Merge remote-tracking branch 'origin/develop' into feature/wketchum_TrackCalorimetry
-   2014-11-12 Wesley Ketchum : some fixes, where I make the histogram for the values, and fix a badly matched paranthesis

## larreco v03_03_02

-   2014-11-19 Lynn Garren : larreco v03_03_02 for larsoft v03_04_02
-   2014-11-18 Benjamin Carls : Altering the method that fills the fWirePitch vector so that it doesn't crash LArIAT running the algorithm

## larsim v03_02_05

-   2014-11-19 Lynn Garren : larsim v03_02_05 for larsoft v03_04_02

## larevt v03_02_05

-   2014-11-19 Lynn Garren : larevt v03_02_05 for larsoft v03_04_02

## lardata v03_03_02

-   2014-11-19 Lynn Garren : lardata v03_03_02 for larsoft v03_04_02

## larcore v03_03_02

-   2014-11-19 Lynn Garren : larcore v03_03_02 for larsoft v03_04_02
-   2014-11-18 Tingjun Yang : fix a typo
-   2014-11-16 Tingjun Yang : made it more general
-   2014-11-16 Tingjun Yang : implement a new WireIDsIntersect, the old one does not work for 35t TPC0
-   2014-11-13 Gianluca Petrillo : Issue \#6362: Added WireGeo functions to return sine and cosine of ThetaZ()
