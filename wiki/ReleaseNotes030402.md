LArSoft v03\_04\_02 Release Notes(#LArSoft-v03_04_02-Release-Notes)
======================================================================

-   **Table of contents**
-   [LArSoft v03\_04\_02 Release Notes](#LArSoft-v03_04_02-Release-Notes)
    -   [Purpose](#Purpose)
    -   [New features](#New-features)
    -   [Bug fixes](#Bug-fixes)
    -   [Updated dependencies](#Updated-dependencies)
-   [Change List](#Change-List)
    -   [larsoft v03\_04\_02](#larsoft-v03_04_02)
    -   [lareventdisplay v03\_02\_05](#lareventdisplay-v03_02_05)
    -   [larexamples v03\_02\_05](#larexamples-v03_02_05)
    -   [larpandora v03\_03\_04](#larpandora-v03_03_04)
    -   [larana v03\_03\_02](#larana-v03_03_02)
    -   [larreco v03\_03\_02](#larreco-v03_03_02)
    -   [larsim v03\_02\_05](#larsim-v03_02_05)
    -   [larevt v03\_02\_05](#larevt-v03_02_05)
    -   [lardata v03\_03\_02](#lardata-v03_03_02)
    -   [larcore v03\_03\_02](#larcore-v03_03_02)

[list of LArSoft releases](LArSoft_release_list)\
[Download instructions](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v03_04_02/larsoft-v03_04_02.html)

Purpose(#Purpose)
--------------------

-   Include changes in development since v03\_04\_01.
-   Use art [v1\_12\_04](/redmine/projects/art/wiki/Release_Notes_11204), nutools v1\_07\_00, and root v5\_34\_23
-   Include the latest releases of artdaq\_core and ifdh\_art

New features(#New-features)
------------------------------

The distribution now uses a generic pullProducts script instead of a versioned script.

Bug fixes(#Bug-fixes)
------------------------

-   Root v5\_31\_23 is the official root release with the fix for bug [\#7076](/redmine/issues/7076 "Bug: LArSoft v03_00_00 unable to read recob::Wire from MicroBooNE MCC 5 files (Closed)").
-   Fix the problems Mu2e discovered with root-config ([\#7253](/redmine/issues/7253 "Bug: root-config (Closed)"))
-   The link lists for the nutools libraries have been considerably cleaned up. ([\#5967](/redmine/issues/5967 "Support: Requesting support for running larsoft jobs on OSG nodes without X11 libraries installed (Closed)"))

Updated dependencies(#Updated-dependencies)
----------------------------------------------

  -------------- -------------------------------------------------------------- ----------- --------------------------------------------------------------------
  Product        Version                                                        Qualifier   Notes
  root           v5\_34\_23                                                     e6:nu       see bug [\#7253](/redmine/issues/7253 "Bug: root-config (Closed)")
  pandora        v00\_17a                                                       e6:nu       uses root
  genie          v2\_8\_0m                                                      e6          uses root
  art            [v1\_12\_04](/redmine/projects/art/wiki/Release_Notes_11204)   e6:nu       feature requests
  nutools        v1\_07\_00                                                     e6          cleanup the link list
  ifdh\_art      v1\_6\_0                                                       e6:nu:s5    with ifdhc v1\_5\_1
  artdaq\_core   v1\_04\_07                                                     e6:nu:s5    uses art
  -------------- -------------------------------------------------------------- ----------- --------------------------------------------------------------------

Change List(#Change-List)
============================

larsoft v03\_04\_02(#larsoft-v03_04_02)
------------------------------------------

-   2014-11-19 Lynn Garren : larsoft v03\_04\_02
-   2014-11-19 Lynn Garren : new larpandora headers

lareventdisplay v03\_02\_05(#lareventdisplay-v03_02_05)
----------------------------------------------------------

-   2014-11-19 Lynn Garren : lareventdisplay v03\_02\_05 for larsoft v03\_04\_02
-   2014-11-13 Gianluca Petrillo : Replaced “3.1416” with pi.

larexamples v03\_02\_05(#larexamples-v03_02_05)
--------------------------------------------------

-   2014-11-19 Lynn Garren : larexamples v03\_02\_05 for larsoft v03\_04\_02

larpandora v03\_03\_04(#larpandora-v03_03_04)
------------------------------------------------

-   2014-11-19 Lynn Garren : larpandora v03\_03\_04 for larsoft v03\_04\_02
-   2014-11-17 Lynn Garren : larpandora remains v03\_03\_03 until we tag a new larsoft release
-   2014-11-16 Andrew Blake : Updating interface to enable reconstruction in LBNE 35t as well as MicroBooNE. Have organised code for distribution between LArSoft, uboonecode and lbnecode (sometime soon). Have also added analysis modules to study output PFParticles.
-   2014-11-16 Andrew Blake : Adding pandora configuration file for LBNE 35t reconstruction
-   2014-11-16 Andrew Blake : Updating larpandora parent verstion to v03\_04\_01
-   2014-11-16 Andrew Blake : Updating LArPandoraInterface for use on both LBNE and MicroBooNE, and setting up code for distribution between larsoft, uboonecode, lbnecode. Also adding a set of analysis modules for studying PFParticle output.
-   2014-11-16 Andrew Blake : Updating LArPandoraInterface for use in LBNE as well as MicroBooNE

larana v03\_03\_02(#larana-v03_03_02)
----------------------------------------

-   2014-11-19 Lynn Garren : larana v03\_03\_02 for larsoft v03\_04\_02
-   2014-11-12 Wesley Ketchum : put in new option for directly computing dEdx integral
-   2014-11-12 Wesley Ketchum : Merge remote-tracking branch ‘origin/develop’ into feature/wketchum\_TrackCalorimetry
-   2014-11-12 Wesley Ketchum : some fixes, where I make the histogram for the values, and fix a badly matched paranthesis

larreco v03\_03\_02(#larreco-v03_03_02)
------------------------------------------

-   2014-11-19 Lynn Garren : larreco v03\_03\_02 for larsoft v03\_04\_02
-   2014-11-18 Benjamin Carls : Altering the method that fills the fWirePitch vector so that it doesn’t crash LArIAT running the algorithm

larsim v03\_02\_05(#larsim-v03_02_05)
----------------------------------------

-   2014-11-19 Lynn Garren : larsim v03\_02\_05 for larsoft v03\_04\_02

larevt v03\_02\_05(#larevt-v03_02_05)
----------------------------------------

-   2014-11-19 Lynn Garren : larevt v03\_02\_05 for larsoft v03\_04\_02

lardata v03\_03\_02(#lardata-v03_03_02)
------------------------------------------

-   2014-11-19 Lynn Garren : lardata v03\_03\_02 for larsoft v03\_04\_02

larcore v03\_03\_02(#larcore-v03_03_02)
------------------------------------------

-   2014-11-19 Lynn Garren : larcore v03\_03\_02 for larsoft v03\_04\_02
-   2014-11-18 Tingjun Yang : fix a typo
-   2014-11-16 Tingjun Yang : made it more general
-   2014-11-16 Tingjun Yang : implement a new WireIDsIntersect, the old one does not work for 35t TPC0
-   2014-11-13 Gianluca Petrillo : Issue [\#6362](/redmine/issues/6362 "Feature: Pre-calculate trig functions for wire angles (Closed)"): Added WireGeo functions to return sine and cosine of ThetaZ()
