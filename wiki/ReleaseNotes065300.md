LArSoft v06\_53\_00 Release Notes
======================================================================

-   **Table of contents**
-   [LArSoft v06\_53\_00 Release Notes](#LArSoft-v06_53_00-Release-Notes)
    -   [Purpose](#Purpose)
    -   [New features](#New-features)
    -   [Bug fixes](#Bug-fixes)
    -   [Updated dependencies](#Updated-dependencies)
-   [Change List](#Change-List)
    -   [larsoft v06\_53\_00](#larsoft-v06_53_00)
    -   [lareventdisplay v06\_13\_00](#lareventdisplay-v06_13_00)
    -   [larexamples v06\_07\_04](#larexamples-v06_07_04)
    -   [larpandora v06\_17\_01](#larpandora-v06_17_01)
    -   [larwirecell v06\_07\_04](#larwirecell-v06_07_04)
    -   [larana v06\_10\_05](#larana-v06_10_05)
    -   [larreco v06\_42\_00](#larreco-v06_42_00)
    -   [larsim v06\_31\_04](#larsim-v06_31_04)
    -   [larevt v06\_16\_04](#larevt-v06_16_04)
    -   [lardata v06\_31\_00](#lardata-v06_31_00)
    -   [larcore v06\_15\_01](#larcore-v06_15_01)
    -   [larpandoracontent v03\_08\_01](#larpandoracontent-v03_08_01)
    -   [larsoftobj v1\_28\_00](#larsoftobj-v1_28_00)
    -   [lardataobj v1\_21\_01](#lardataobj-v1_21_01)
    -   [larcorealg v1\_08\_00](#larcorealg-v1_08_00)
    -   [larcoreobj v1\_16\_00](#larcoreobj-v1_16_00)
    -   [larbatch v01\_32\_05](#larbatch-v01_32_05)
    -   [larutils v1\_19\_03](#larutils-v1_19_03)

[list of LArSoft releases](LArSoft_release_list)\
Download instructions for [larsoft v06\_53\_00](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v06_53_00/larsoft-v06_53_00.html)\
Download instructions for [just larsoftobj v1\_28\_00](http://scisoft.fnal.gov/scisoft/bundles/larsoftobj/v1_28_00/larsoftobj-v1_28_00.html)

Purpose
--------------------

-   changes to develop
-   approved feature branches

New features
------------------------------

-   larreco feature/rsulej\_tf
    -   introduces a dependency on tensorflow
-   larpandoracontent feature/jm\_StitchingInstanceWirePitch
    -   resolves a problem noticed in dunetpc
    -   The issue is that recob::Tracks are not produced for cosmic-ray oriented reconstruction passes of detectors with more than one (what we call) drift volume. MicroBooNE is thus not affected, nor are any neutrino-oriented reconstructed passes (such as the DUNE FD test).

Bug fixes
------------------------

Updated dependencies
----------------------------------------------

  --------------- ------------ ------------ ------------------------
  Product         Version      Qualifiers   Notes
  tensorflow      v1\_3\_0a    e14:p2713d   
  protobuf        v3\_3\_1     e14          
  cetbuildtools   v5\_14\_03                has support for ups v6
  cetpkgsupport   v1\_13\_00                has support for ups v6
  --------------- ------------ ------------ ------------------------

Change List
============================

larsoft v06\_53\_00
------------------------------------------

-   2017-10-12 Lynn Garren : lareventdisplay v06\_13\_00
-   2017-10-12 Lynn Garren : larana v06\_10\_05
-   2017-10-12 Lynn Garren : larsoft v06\_53\_00 for larsoft v06\_53\_00
-   2017-10-12 Lynn Garren : update versions
-   2017-10-12 Lynn Garren : adding tensorflow
-   2017-10-12 Lynn Garren : cetbuildtools v5\_14\_03 and cetpkgsupport v1\_13\_00

lareventdisplay v06\_13\_00
----------------------------------------------------------

-   2017-10-12 Lynn Garren : lareventdisplay v06\_13\_00 for larsoft v06\_53\_00
-   2017-10-09 Usher, Tracy L : Primarily these changes are to get the hits to display correctly in the 2D display with a multi-cryo, multi-tpc detector (e.g. ICARUS - and I’m surprised this didn’t show up in DUNE displays?). Also some formatting updates.
-   2017-10-09 Usher, Tracy L : Updates to try to get the x offsets correct, these specifically for a multi-TPC environment (e.g. ICARUS)

larexamples v06\_07\_04
--------------------------------------------------

-   2017-10-12 Lynn Garren : larexamples v06\_07\_04 for larsoft v06\_53\_00

larpandora v06\_17\_01
------------------------------------------------

-   2017-10-12 Lynn Garren : larpandora v06\_17\_01 for larsoft v06\_53\_00

larwirecell v06\_07\_04
--------------------------------------------------

-   2017-10-12 Lynn Garren : larwirecell v06\_07\_04 for larsoft v06\_53\_00

larana v06\_10\_05
----------------------------------------

-   2017-10-12 Lynn Garren : larana v06\_10\_05 for larsoft v06\_53\_00

larreco v06\_42\_00
------------------------------------------

-   2017-10-12 Lynn Garren : larreco v06\_42\_00 for larsoft v06\_53\_00
-   2017-10-11 Robert Sulej : change deps to the tf 1.3.0
-   2017-10-09 Robert Sulej : Merge branch ‘develop’ into feature/rsulej\_tf
-   2017-10-09 Robert Sulej : go back to b4 for grid purposes
-   2017-10-05 baller : Tingjun fixed bug in NeutrinoPrimaryTjID Merge branch ‘feature/bb\_TJWork’ into develop
-   2017-10-05 baller : Merge branch ‘feature/bb\_TJWork’ of ssh://cdcvs.fnal.gov/cvs/projects/larreco into feature/bb\_TJWork
-   2017-10-05 baller : Add comments
-   2017-10-05 Tingjun Yang : Improve printout for 2-plane geometry
-   2017-10-05 Tingjun Yang : Protect against the case where primID is 0.
-   2017-10-05 Robert Sulej : add total mc truth edep in gev
-   2017-10-05 Robert Sulej : move to batch processing
-   2017-09-29 Robert Sulej : Merge branch ‘develop’ into feature/rsulej\_tf
-   2017-09-29 Robert Sulej : use b5 of tensorflow
-   2017-09-28 Robert Sulej : and now can use graphs with multiple outputs
-   2017-09-26 Robert Sulej : change to tf v1\_3\_0\_b4
-   2017-09-22 Robert Sulej : Merge branch ‘develop’ into feature/rsulej\_tf
-   2017-09-21 Lynn Garren : Merge branch ‘feature/rsulej\_tf’ of ssh://cdcvs.fnal.gov/cvs/projects/larreco into feature/rsulej\_tf
-   2017-09-21 Lynn Garren : using tensorflow v1\_3\_0\_b3 with Eigen\_tf namespace
-   2017-09-20 Lynn Garren : using tensorflow v1\_3\_0\_b2 with our build of protobuf
-   2017-09-20 Lynn Garren : using tensorflow v1\_3\_0\_b0
-   2017-09-20 Robert Sulej : write patch directly to the batch buffer
-   2017-09-19 Robert Sulej : finish batch processing
-   2017-09-19 Robert Sulej : Merge branch ‘develop’ into feature/rsulej\_tf
-   2017-09-19 Robert Sulej : change to buffer events outside network class
-   2017-09-18 Robert Sulej : one mem copy less on running sample by sample, start writing buffer for running samples parallelly
-   2017-09-16 Robert Sulej : glue all together and wait for the first model before debugging
-   2017-09-14 Robert Sulej : merge with develop head, add processing of a batch of inputs
-   2017-09-13 Lynn Garren : define TENSORFLOW
-   2017-09-04 Robert Sulej : remove tensorwlow
-   2017-09-04 Robert Sulej : add interface for TF graph
-   2017-09-04 Robert Sulej : commit after resolving merge conflicts
-   2017-09-01 Robert Sulej : merge with the head and setup tf 1\_2\_1\_b3
-   2017-08-28 Lynn Garren : tensorflow v1\_2\_1\_b3
-   2017-08-24 Lynn Garren : fix qualifier matrix
-   2017-08-23 Robert Sulej : setup dependecy on tensorflow, add first include (not yet doing anything useful)

larsim v06\_31\_04
----------------------------------------

-   2017-10-12 Lynn Garren : larsim v06\_31\_04 for larsoft v06\_53\_00

larevt v06\_16\_04
----------------------------------------

-   2017-10-12 Lynn Garren : larevt v06\_16\_04 for larsoft v06\_53\_00

lardata v06\_31\_00
------------------------------------------

-   2017-10-12 Lynn Garren : lardata v06\_31\_00 for larsoft v06\_53\_00
-   2017-10-09 Gianluca Petrillo : Merge branch ‘feature/gp\_TrackProxy’ into develop (again)
-   2017-10-09 Gianluca Petrillo : Added support for recob::TrackTrajectory associated to Track proxy
-   2017-10-09 Gianluca Petrillo : Added proxy support to one-to-one associations.
-   2017-10-06 Gianluca Petrillo : Install DetectorInfo test executables
-   2017-09-28 Gianluca Petrillo : Minor documentation fixes to proxy.
-   2017-10-05 Gianluca Petrillo : DetectorPropertiesService test now prints some more information.
-   2017-10-05 Gianluca Petrillo : Fixed bug in DetectorPropertiesStandard initialization for test code.

larcore v06\_15\_01
------------------------------------------

larpandoracontent v03\_08\_01
--------------------------------------------------------------

-   2017-10-12 Lynn Garren : larpandoracontent v03\_08\_01 for larsoft v06\_53\_00
-   2017-10-11 Lynn Garren : v03\_08\_01
-   2017-10-06 John Marshall : Temporary workaround to cover usage of TrackParticleBuilding algorithm by a Pandora stitching instance.

larsoftobj v1\_28\_00
----------------------------------------------

lardataobj v1\_21\_01
----------------------------------------------

larcorealg v1\_08\_00
----------------------------------------------

larcoreobj v1\_16\_00
----------------------------------------------

larbatch v01\_32\_05
--------------------------------------------

larutils v1\_19\_03
------------------------------------------

-   2017-10-12 Lynn Garren : larutils v1\_19\_03 for larsoft v06\_53\_00
-   2017-10-11 Lynn Garren : use explicit ups flavor -4
-   2017-10-10 Herbert Greenlee : Use ‘ups flavor -4’ for linux builds.
