LArSoft v06\_26\_01\_01 Release Notes[¶](#LArSoft-v06_26_01_01-Release-Notes)
=============================================================================

-   **Table of contents**
-   [LArSoft v06\_26\_01\_01 Release Notes](#LArSoft-v06_26_01_01-Release-Notes)
    -   [Purpose](#Purpose)
    -   [New features](#New-features)
    -   [Bug fixes](#Bug-fixes)
    -   [Updated dependencies](#Updated-dependencies)
-   [Change List](#Change-List)
    -   [larsoft v06\_26\_01\_01](#larsoft-v06_26_01_01)
    -   [lareventdisplay v06\_02\_14\_01](#lareventdisplay-v06_02_14_01)
    -   [larexamples v06\_01\_15\_01](#larexamples-v06_01_15_01)
    -   [larpandora v06\_08\_00\_01](#larpandora-v06_08_00_01)
    -   [larwirecell v06\_00\_13\_01](#larwirecell-v06_00_13_01)
    -   [larana v06\_03\_18\_01](#larana-v06_03_18_01)
    -   [larreco v06\_20\_00\_01](#larreco-v06_20_00_01)
    -   [larsim v06\_13\_01\_01](#larsim-v06_13_01_01)
    -   [larevt v06\_07\_09\_01](#larevt-v06_07_09_01)
    -   [lardata v06\_14\_04\_01](#lardata-v06_14_04_01)
    -   [larcore v06\_05\_03](#larcore-v06_05_03)
    -   [larpandoracontent v03\_02\_00](#larpandoracontent-v03_02_00)
    -   [larsoftobj v1\_11\_00\_01](#larsoftobj-v1_11_00_01)
    -   [lardataobj v1\_11\_00\_01](#lardataobj-v1_11_00_01)
    -   [larcoreobj v1\_06\_02](#larcoreobj-v1_06_02)

[list of LArSoft releases](LArSoft_release_list)\
Download instructions for [larsoft v06\_26\_01\_01](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v06_26_01_01/larsoft-v06_26_01_01.html)\
Download instructions for [just larsoftobj v1\_11\_00\_01](http://scisoft.fnal.gov/scisoft/bundles/larsoftobj/v1_11_00_01/larsoftobj-v1_11_00_01.html)


Purpose[¶](#Purpose)
--------------------

-   MicroBoone patch request


New features[¶](#New-features)
------------------------------

-   feature/cerati\_larsoft-v06\_26\_01-plus-new-kffit
    -   lardata, lardataobj, lareventdisplay, larreco
-   larevt v06\_07\_09\_br
-   larwirecell feature/bkirby\_wirecell\_v0\_5\_2


Bug fixes[¶](#Bug-fixes)
------------------------


Updated dependencies[¶](#Updated-dependencies)
----------------------------------------------

-   wirecell v0\_5\_2


Change List[¶](#Change-List)
============================


larsoft v06\_26\_01\_01[¶](#larsoft-v06_26_01_01)
-------------------------------------------------

-   2017-04-04 Lynn Garren : larsoft v06\_26\_01\_01
-   2017-04-04 Lynn Garren : update product versions


lareventdisplay v06\_02\_14\_01[¶](#lareventdisplay-v06_02_14_01)
-----------------------------------------------------------------

-   2017-04-04 Lynn Garren : lareventdisplay v06\_02\_14\_01
-   2017-03-23 Giuseppe Cerati : Merge remote-tracking branch ‘origin/feature/cerati\_flags-evd’ into feature/cerati\_larsoft-v06\_26\_01-plus-new-kffit
-   2017-03-07 Giuseppe Cerati : draw only valid points for tracks


larexamples v06\_01\_15\_01[¶](#larexamples-v06_01_15_01)
---------------------------------------------------------

-   2017-04-04 Lynn Garren : larexamples v06\_01\_15\_01


larpandora v06\_08\_00\_01[¶](#larpandora-v06_08_00_01)
-------------------------------------------------------

-   2017-04-04 Lynn Garren : larpandora v06\_08\_00\_01


larwirecell v06\_00\_13\_01[¶](#larwirecell-v06_00_13_01)
---------------------------------------------------------

-   2017-04-04 Lynn Garren : larwirecell v06\_00\_13\_01
-   2017-04-04 Lynn Garren : Merge branch ‘feature/bkirby\_wirecell\_v0\_5\_2’ into v06\_26\_01\_01\_branch
-   2017-03-31 Brian Kirby : Fixed noise database line
-   2017-03-30 Brian Kirby : Fix ups product\_dep file
-   2017-03-30 Brian Kirby : Updated larwirecell to work with WireCell UPS product v05\_02
-   2017-03-29 Lynn Garren : larwirecell v06\_01\_01 for larsoft v06\_29\_00
-   2017-03-15 Lynn Garren : larwirecell v06\_01\_00 for larsoft v06\_28\_00
-   2017-03-15 Lynn Garren : Merge branch ‘feature/eberly\_asicdb’ into release/v06\_28\_00
-   2017-03-08 Lynn Garren : larwirecell v06\_00\_15 for larsoft v06\_27\_00
-   2017-03-01 Eberly : Added ASIC database hooks to determine misconfigured channels
-   2017-02-28 Lynn Garren : larwirecell v06\_00\_14 for larsoft v06\_26\_02


larana v06\_03\_18\_01[¶](#larana-v06_03_18_01)
-----------------------------------------------

-   2017-04-04 Lynn Garren : larana v06\_03\_18\_01 for larsoft v06\_26\_01\_01


larreco v06\_20\_00\_01[¶](#larreco-v06_20_00_01)
-------------------------------------------------

-   2017-04-04 Lynn Garren : larreco v06\_20\_00\_01
-   2017-03-09 Tingjun Yang : Make sure itjLong and jtjLong are not USHRT\_MAX.
-   2017-03-30 Giuseppe Cerati : add flag to avoid infs in case 1/p is not updated
-   2017-03-13 Giuseppe Cerati : avoid adding the flag ExcludedFromFit when the flag Rejected is already present
-   2017-03-08 Lynn Garren : add missing libraries
-   2017-03-23 Giuseppe Cerati : Merge remote-tracking branch ‘origin/feature/cerati\_kffitresiduals’ into HEAD
-   2017-03-08 Giuseppe Cerati : move TrackingPlaneHelper to lardata/RecoObjects
-   2017-03-07 Giuseppe Cerati : fcl minor updates
-   2017-03-07 Giuseppe Cerati : add documentation and cleanup
-   2017-03-07 Giuseppe Cerati : remove TrackHitMeta for now
-   2017-03-07 Giuseppe Cerati : add fitter for trajectories
-   2017-03-07 Giuseppe Cerati : cleanup and fixes
-   2017-02-10 Giuseppe Cerati : intermediate commit towards new version of the fitter, large rewrite of TrackKalmanFitter now using flags and new classes based on smatrix


larsim v06\_13\_01\_01[¶](#larsim-v06_13_01_01)
-----------------------------------------------

-   2017-04-04 Lynn Garren : larsim v06\_13\_01\_01


larevt v06\_07\_09\_01[¶](#larevt-v06_07_09_01)
-----------------------------------------------

-   2017-04-04 Lynn Garren : larevt v06\_07\_09\_01
-   2017-02-22 Eberly : Use function with built in timeout to query database. This is the function now supported by SCD and may help alleviate the channel 494 problem


lardata v06\_14\_04\_01[¶](#lardata-v06_14_04_01)
-------------------------------------------------

-   2017-04-04 Lynn Garren : lardata v06\_14\_04\_01 for larsoft v06\_26\_01\_01
-   2017-04-03 Herbert Greenlee : Update comments.
-   2017-04-03 Herbert Greenlee : Protect StatCollector against negative Variance.
-   2017-03-30 Giuseppe Cerati : add flag to avoid infs in case 1/p is not updated
-   2017-03-14 Giuseppe Cerati : better usage of temporaries speeds up execution
-   2017-03-23 Giuseppe Cerati : Merge remote-tracking branch ‘origin/feature/cerati\_kffitresiduals’ into larsoft-v06\_26\_01-plus-new-kffit
-   2017-03-08 Giuseppe Cerati : add TrackingPlaneHelper to lardata/RecoObjects
-   2017-03-08 Giuseppe Cerati : move TrackingPlaneHelper to lardata/RecoObjects
-   2017-03-08 Giuseppe Cerati : fix for sinA2 not 0
-   2017-03-07 Giuseppe Cerati : revert
-   2017-03-07 Giuseppe Cerati : add documentation and cleanup
-   2017-03-07 Giuseppe Cerati : cleanup code and comments
-   2017-03-06 Giuseppe Cerati : complete renaming
-   2017-03-06 Giuseppe Cerati : rename
-   2017-03-06 Giuseppe Cerati : temporary commit before cleanup
-   2017-03-06 Giuseppe Cerati : revert to original version
-   2017-03-06 Giuseppe Cerati : revert to original version
-   2017-03-06 Giuseppe Cerati : temporary commit before reverting
-   2017-02-10 Giuseppe Cerati : remove commented out code and whitespaces
-   2017-02-10 Giuseppe Cerati : new propagator and kalman filter classes using smatrix
-   2017-02-01 Giuseppe Cerati : temporary commit towards smatrix propagator
-   2017-01-30 Giuseppe Cerati : temporary commit
-   2017-01-27 Giuseppe Cerati : add files


larcore v06\_05\_03[¶](#larcore-v06_05_03)
------------------------------------------


larpandoracontent v03\_02\_00[¶](#larpandoracontent-v03_02_00)
--------------------------------------------------------------


larsoftobj v1\_11\_00\_01[¶](#larsoftobj-v1_11_00_01)
-----------------------------------------------------

-   2017-04-04 Lynn Garren : larsoftobj v1\_11\_00\_01 for larsoft v06\_26\_01\_01


lardataobj v1\_11\_00\_01[¶](#lardataobj-v1_11_00_01)
-----------------------------------------------------

-   2017-04-04 Lynn Garren : lardataobj v1\_11\_00\_01 for larsoft v06\_26\_01\_01
-   2017-03-23 Giuseppe Cerati : Merge remote-tracking branch ‘origin/feature/cerati\_kffitresiduals’ into feature/cerati\_larsoft-v06\_26\_01-plus-new-kffit
-   2017-03-07 Giuseppe Cerati : cleanup whitespaces
-   2017-03-07 Giuseppe Cerati : updates for track fitting
-   2017-02-10 Giuseppe Cerati : fix bug in TrackingPlane in case HasMomentum=false, add new TrackFitHitInfo data object


larcoreobj v1\_06\_02[¶](#larcoreobj-v1_06_02)
----------------------------------------------
