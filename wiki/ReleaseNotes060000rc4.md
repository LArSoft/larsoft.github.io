LArSoft v06\_00\_00\_rc4 Release Notes(#LArSoft-v06_00_00_rc4-Release-Notes)
===============================================================================

-   **Table of contents**
-   [LArSoft v06\_00\_00\_rc4 Release Notes](#LArSoft-v06_00_00_rc4-Release-Notes)
    -   [Purpose](#Purpose)
    -   [New features](#New-features)
    -   [Required changes](#Required-changes)
    -   [Updated dependencies](#Updated-dependencies)
-   [Change List](#Change-List)
    -   [larsoft v06\_00\_00\_rc4](#larsoft-v06_00_00_rc4)
    -   [lareventdisplay v06\_00\_00\_rc4](#lareventdisplay-v06_00_00_rc4)
    -   [larexamples v06\_00\_00\_rc4](#larexamples-v06_00_00_rc4)
    -   [larpandora v06\_00\_00\_rc4](#larpandora-v06_00_00_rc4)
    -   [larana v06\_00\_00\_rc4](#larana-v06_00_00_rc4)
    -   [larreco v06\_00\_00\_rc4](#larreco-v06_00_00_rc4)
    -   [larsim v06\_00\_00\_rc4](#larsim-v06_00_00_rc4)
    -   [larevt v06\_00\_00\_rc4](#larevt-v06_00_00_rc4)
    -   [lardata v06\_00\_00\_rc4](#lardata-v06_00_00_rc4)
    -   [larcore v06\_00\_00\_rc4](#larcore-v06_00_00_rc4)

[list of LArSoft releases](LArSoft_release_list)\
[Download instructions](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v06_00_00_rc4/larsoft-v06_00_00_rc4.html)

Purpose(#Purpose)
--------------------

-   build with art 2.00.02 and nutools 2.00.00
-   refactor to use larcoreobj, lardataobj, and larsimobj
-   Because this release candidate has more refactoring, it is on the v06\_00\_00\_art2 branch.
-   [Migration\_to\_root\_6](Migration_to_root_6)
-   This release is consistent with larsoft v05\_12\_00 plus changes from develop as of June 2.

New features(#New-features)
------------------------------

Several products have been split into separate parts. The new products make a suite, larsoftobj, that does not depend on art.

  ---------- --------------------- ------------------------------------------------------------------------------------------------------------------------------------
  art 1.xx   art 2.xx              notes
  art        art, canvas           [Release Notes 2.00.02](/redmine/projects/art/wiki/Release_Notes_20002)
  nutools    nutools, nusimdata    nusimdata contains SimulationBase [NuTools\_Release\_Notes](/redmine/projects/nutools/wiki/NuTools_Release_Notes#nutools-v2_00_00)
  larcore    larcore, larcoreobj   larcoreobj contains SimpleTypesAndConstants and SummaryData
  lardata    lardata, lardataobj   lardataobj contains AnalysisBase, MCBase, OpticalDetectorData, RawData, RecoBase, and part of Utilities
  larsim     larsim, larsimobj     larsimobj contains part of Simulation
  ---------- --------------------- ------------------------------------------------------------------------------------------------------------------------------------

Required changes(#Required-changes)
--------------------------------------

-   The v06\_00\_00\_art2 branch is supplied for dunetpc, duneutil, uboonecode, ubutil, argoneutcode, lar1ndcode, and lariatsoft.
-   [UpdateToLArSoftObj.sh](Migration_to_root_6#UpdateToLArSoftObjsh) will make all required changes in user code.

Updated dependencies(#Updated-dependencies)
----------------------------------------------

-   This release uses a new product stack built with gcc v4\_9\_3a (e10)
-   art v2\_00\_02 (s33) [Release\_Notes\_20002](/redmine/projects/art/wiki/Release_Notes_20002)
-   nutools v2\_00\_00 [NuTools\_Release\_Notes](/redmine/projects/nutools/wiki/NuTools_Release_Notes#nutools-v2_00_00)
-   [larsoftobj v1\_02\_00](http://scisoft.fnal.gov/scisoft/bundles/larsoftobj/v1_02_00/larsoftobj-v1_02_00.html)

Change List(#Change-List)
============================

larsoft v06\_00\_00\_rc4(#larsoft-v06_00_00_rc4)
---------------------------------------------------

-   2016-06-06 Lynn Garren : fix the g4 versions
-   2016-06-06 Lynn Garren : fix buildcfg
-   2016-06-03 Lynn Garren : larsoftobj v1\_02\_00
-   2016-06-03 Lynn Garren : update the dependency database
-   2016-06-03 Lynn Garren : for larsoft v06\_00\_00\_rc4
-   2016-06-03 Lynn Garren : for larsoft v06\_00\_00\_rc4
-   2016-06-03 Lynn Garren : larsoft v06\_00\_00\_rc4
-   2016-06-02 Lynn Garren : e10 and s33
-   2016-06-02 Lynn Garren : Merge branch ‘develop’ into v06\_00\_00\_art2
-   2016-06-02 Lynn Garren : use nutools 2.00.00
-   2016-06-02 Lynn Garren : update scripts for larsoftobj with nutools 2.0 and art 2.0
-   2016-06-02 Lynn Garren : build with nutools 2.00.00 and art 2.00.02
-   2016-05-25 Lynn Garren : larsoft v05\_12\_00 for larsoft v05\_12\_00
-   2016-05-25 Lynn Garren : update product list
-   2016-05-25 Lynn Garren : update dependency database

lareventdisplay v06\_00\_00\_rc4(#lareventdisplay-v06_00_00_rc4)
-------------------------------------------------------------------

-   2016-06-03 Lynn Garren : lareventdisplay v06\_00\_00\_rc4
-   2016-06-03 Lynn Garren : build with art 2.00.02 and nutools 2.00.00
-   2016-06-02 Lynn Garren : Merge branch ‘develop’ into v06\_00\_00\_art2
-   2016-06-02 Lynn Garren : changes for nutools 2.00.00 and larsoftobj
-   2016-06-02 Lynn Garren : changes for nutools 2.00.00 and larsoftobj
-   2016-06-02 Matt Robinson : Landed: switched from cerr and cout to mf:: and replaced ::length with ::empty on checks to see if outputFilename\_ is unset.
-   2016-06-02 Matt Robinson : Landed events filter now ignored when running over unix socket.
-   2016-06-02 Matt Robinson : Missing ‘events’ parameter now tolerated (was throwing exception before)
-   2016-06-02 Matt Robinson : Landed module now builds with boost asio implementation of unix sockets
-   2016-06-02 Matt Robinson : Converting low level unix socket i/o to boost asio
-   2016-05-26 Lynn Garren : workaround for MSG\_NOSIGNAL
-   2016-05-25 Lynn Garren : lareventdisplay v05\_07\_00 for larsoft v05\_12\_00
-   2016-05-25 Lynn Garren : Merge branch ‘feature/mrobinso\_LandedEventDisplay’ into release/v05\_12\_00
-   2016-05-11 Lynn Garren : lareventdisplay v05\_06\_07 for larsoft v05\_11\_01
-   2016-05-10 Matt Robinson : Added Landed event display moduule and service (corrected e-mail address)
-   2016-05-10 Matt Robinson : Added Landed event display moduule and service

larexamples v06\_00\_00\_rc4(#larexamples-v06_00_00_rc4)
-----------------------------------------------------------

-   2016-06-03 Lynn Garren : larexamples v06\_00\_00\_rc4
-   2016-06-02 Lynn Garren : more changes for larsimobj and lardataobj
-   2016-06-02 Lynn Garren : Merge branch ‘develop’ into v06\_00\_00\_art2
-   2016-06-02 Lynn Garren : changes for nutools 2.00.00
-   2016-06-02 Lynn Garren : changes for nutools 2.00.00
-   2016-05-25 Lynn Garren : larexamples v05\_06\_08 for larsoft v05\_12\_00
-   2016-05-11 Lynn Garren : larexamples v05\_06\_07 for larsoft v05\_11\_01

larpandora v06\_00\_00\_rc4(#larpandora-v06_00_00_rc4)
---------------------------------------------------------

-   2016-06-06 Lynn Garren : fix larpandoracontent qualifier
-   2016-06-03 Lynn Garren : larpandora v06\_00\_00\_rc4
-   2016-06-02 Lynn Garren : changes for larsoftobj
-   2016-06-02 Lynn Garren : changes for larsoftobj
-   2016-06-02 Lynn Garren : Merge branch ‘develop’ into v06\_00\_00\_art2
-   2016-06-02 Lynn Garren : changes for nutools 2.00.00
-   2016-05-25 Lynn Garren : larpandora v05\_09\_05 for larsoft v05\_12\_00

larana v06\_00\_00\_rc4(#larana-v06_00_00_rc4)
-------------------------------------------------

-   2016-06-03 Lynn Garren : larana v06\_00\_00\_rc4
-   2016-06-03 Lynn Garren : more changes for art 2
-   2016-06-02 Lynn Garren : changes for larsoftobj
-   2016-06-02 Lynn Garren : Merge branch ‘develop’ into v06\_00\_00\_art2
-   2016-06-02 Lynn Garren : build with nutools 2.00.00
-   2016-06-02 Lynn Garren : build with nutools 2.00.00
-   2016-05-25 Lynn Garren : larana v05\_09\_02 for larsoft v05\_12\_00
-   2016-05-11 Lynn Garren : larana v05\_09\_01 for larsoft v05\_11\_01

larreco v06\_00\_00\_rc4(#larreco-v06_00_00_rc4)
---------------------------------------------------

-   2016-06-03 Lynn Garren : larreco v06\_00\_00\_rc4
-   2016-06-02 Lynn Garren : more changes for larsoftobj
-   2016-06-02 Lynn Garren : more changes for larsoftobj
-   2016-06-02 Lynn Garren : changes for nutools 2.00.00

larsim v06\_00\_00\_rc4(#larsim-v06_00_00_rc4)
-------------------------------------------------

-   2016-06-03 Lynn Garren : larsim v06\_00\_00\_rc4
-   2016-06-02 Lynn Garren : more changes for lardataobj and larsimobj
-   2016-06-02 Lynn Garren : Merge branch ‘develop’ into v06\_00\_00\_art2
-   2016-06-02 Lynn Garren : use larsimobj v1\_01\_01
-   2016-06-02 Lynn Garren : move files in larsimobj v1\_01\_01
-   2016-06-02 Lynn Garren : use larsimobj v1\_01\_01
-   2016-06-02 Lynn Garren : changes for nutools 2.00.00 and art 2.00.02
-   2016-06-02 Lynn Garren : changes for nutools 2.00.00 and art 2.00.02
-   2016-06-02 Lynn Garren : build with art 2.00.02
-   2016-05-25 Lynn Garren : larsim v05\_12\_00 for larsoft v05\_12\_00
-   2016-05-25 Lynn Garren : Merge branch ‘feature/mrmooney\_SpaceChargeMay6th2016’ into release/v05\_12\_00
-   2016-05-11 Lynn Garren : larsim v05\_11\_01 for larsoft v05\_11\_01
-   2016-05-06 Michael Mooney : Fixed sign error in space charge implementation of LArVoxelReadout.cxx
-   2016-05-06 Michael Mooney : New space charge service implementation

larevt v06\_00\_00\_rc4(#larevt-v06_00_00_rc4)
-------------------------------------------------

-   2016-06-06 Lynn Garren : make sure we use the fhicl library
-   2016-06-03 Lynn Garren : larevt v06\_00\_00\_rc4
-   2016-06-02 Lynn Garren : changes for lardataobj
-   2016-06-02 Lynn Garren : Merge branch ‘develop’ into v06\_00\_00\_art2
-   2016-06-02 Lynn Garren : build with art 2, lardataobj, and larcoreobj
-   2016-05-25 Lynn Garren : larevt v05\_07\_00 for larsoft v05\_12\_00
-   2016-05-25 Lynn Garren : Merge branch ‘feature/mrmooney\_SpaceChargeMay6th2016’ into release/v05\_12\_00
-   2016-05-11 Lynn Garren : larevt v05\_06\_07 for larsoft v05\_11\_01
-   2016-05-06 Michael Mooney : New space charge service implementation

lardata v06\_00\_00\_rc4(#lardata-v06_00_00_rc4)
---------------------------------------------------

-   2016-06-03 Lynn Garren : lardata v06\_00\_00\_rc4
-   2016-06-03 Lynn Garren : still have RawData/utils
-   2016-06-02 Lynn Garren : more changes for lardataobj
-   2016-06-02 Lynn Garren : more changes for lardataobj
-   2016-06-02 Lynn Garren : use lardataobj v1\_01\_01
-   2016-06-02 Lynn Garren : build with lardataobj v1\_01\_01
-   2016-06-02 Lynn Garren : use lardataobj v1\_01\_01
-   2016-06-02 Lynn Garren : rename code now in lardataobj
-   2016-06-02 Lynn Garren : Merge branch ‘develop’ into v06\_00\_00\_art2
-   2016-06-02 Lynn Garren : changes for nutools v2\_00\_00 and art v2\_00\_02
-   2016-06-02 Lynn Garren : changes for nutools v2\_00\_00 and art v2\_00\_02
-   2016-06-02 Lynn Garren : use nutools v2\_00\_00
-   2016-05-27 Tingjun Yang : Add space charge service.
-   2016-05-25 Lynn Garren : lardata v05\_08\_02 for larsoft v05\_12\_00
-   2016-05-11 Lynn Garren : lardata v05\_08\_01 for larsoft v05\_11\_01

larcore v06\_00\_00\_rc4(#larcore-v06_00_00_rc4)
---------------------------------------------------

-   2016-06-03 Lynn Garren : larcore v06\_00\_00\_rc4
-   2016-06-03 Lynn Garren : larsoft v06\_00\_00\_rc4
-   2016-06-03 Lynn Garren : these tests are now in larcoreobj
-   2016-06-03 Lynn Garren : these tests are now in larcoreobj
-   2016-06-02 Gianluca Petrillo : Updated tests to Boost 1.61
-   2016-06-02 Lynn Garren : rename SummaryData and SimpleTypesAndConstants prior to removing them
-   2016-06-02 Lynn Garren : Merge branch ‘develop’ into v06\_00\_00\_art2
-   2016-06-02 Lynn Garren : temporarily disable Geometry tests
-   2016-06-02 Lynn Garren : changes for art v2\_00\_02 and larcoreobj v1\_01\_01
-   2016-06-02 Lynn Garren : using art v2\_00\_02 and larcoreobj v1\_01\_01
-   2016-05-25 Lynn Garren : larcore v05\_07\_03 for larsoft v05\_12\_00
-   2016-05-21 Christoph Rudolf von Rohr : BoxBoundedGeo.cxx: Fixed a bug which caused wrong results in rare cases (due to floating point inaccuracies). BoxBoundedGeo.h: added std::vector include for completeness reasons (better usability with IDE programms)
-   2016-05-11 Lynn Garren : larcore v05\_07\_02 for larsoft v05\_11\_01
