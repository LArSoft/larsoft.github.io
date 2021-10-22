LArSoft v04\_20\_00 Release Notes[¶](#LArSoft-v04_20_00-Release-Notes)
======================================================================

-   **Table of contents**
-   [LArSoft v04\_20\_00 Release Notes](#LArSoft-v04_20_00-Release-Notes)
    -   [Purpose](#Purpose)
    -   [New features](#New-features)
    -   [Bug fixes](#Bug-fixes)
    -   [Updated dependencies](#Updated-dependencies)
-   [Change List](#Change-List)
    -   [larsoft v04\_20\_00](#larsoft-v04_20_00)
    -   [lareventdisplay v04\_06\_04](#lareventdisplay-v04_06_04)
    -   [larexamples v04\_05\_02](#larexamples-v04_05_02)
    -   [larpandora v04\_05\_02](#larpandora-v04_05_02)
    -   [larana v04\_11\_00](#larana-v04_11_00)
    -   [larreco v04\_15\_00](#larreco-v04_15_00)
    -   [larsim v04\_09\_02](#larsim-v04_09_02)
    -   [larevt v04\_09\_01](#larevt-v04_09_01)
    -   [lardata v04\_12\_01](#lardata-v04_12_01)
    -   [larcore v04\_16\_01](#larcore-v04_16_01)
    -   [larbatch v01\_13\_00](#larbatch-v01_13_00)
    -   [larutils v1\_03\_00](#larutils-v1_03_00)

[list of LArSoft releases](LArSoft_release_list)\
[Download instructions](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v04_20_00/larsoft-v04_20_00.html)


Purpose[¶](#Purpose)
--------------------

Production release for DUNE MCC4.


New features[¶](#New-features)
------------------------------

-   build with art v1\_15\_02 (s15)
-   larana feature/warburton\_PhotonMatching
-   larreco blurred clustering


Bug fixes[¶](#Bug-fixes)
------------------------


Updated dependencies[¶](#Updated-dependencies)
----------------------------------------------

  --------------- ------------ ---------------- -------------------------------------------------------------------------
  Product         Version      Qualifier        Notes
  art             v1\_15\_02   e7:nu            [Release\_Notes\_11502](/redmine/projects/art/wiki/Release_Notes_11502)
  ifdh\_art       v1\_12\_02   e7:nu:s15        
  nutools         v1\_14\_02   e7 & e7:noifdh   
  artdaq\_core    v1\_04\_17   e7:nu:s15        
  artextensions   v1\_01\_08   e7:nu:s15        
  ifdhc           v1\_8\_5     e7:p279          
  git             v2\_4\_6                      
  cetbuildtools   v4\_12\_06                    
  --------------- ------------ ---------------- -------------------------------------------------------------------------


Change List[¶](#Change-List)
============================


larsoft v04\_20\_00[¶](#larsoft-v04_20_00)
------------------------------------------

-   2015-08-19 Lynn Garren : changes to git and ifdhc
-   2015-08-19 Lynn Garren : s15 for art v1\_15\_02
-   2015-08-19 Lynn Garren : larsoft v04\_20\_00 for larsoft v04\_20\_00
-   2015-08-19 Lynn Garren : update product versions


lareventdisplay v04\_06\_04[¶](#lareventdisplay-v04_06_04)
----------------------------------------------------------

-   2015-08-19 Lynn Garren : lareventdisplay v04\_06\_04 for larsoft v04\_20\_00
-   2015-08-17 Gianluca Petrillo : Fixed syntax of message facility debug specification


larexamples v04\_05\_02[¶](#larexamples-v04_05_02)
--------------------------------------------------

-   2015-08-19 Lynn Garren : larexamples v04\_05\_02 for larsoft v04\_20\_00


larpandora v04\_05\_02[¶](#larpandora-v04_05_02)
------------------------------------------------

-   2015-08-19 Lynn Garren : larpandora v04\_05\_02 for larsoft v04\_20\_00


larana v04\_11\_00[¶](#larana-v04_11_00)
----------------------------------------

-   2015-08-19 Lynn Garren : larana v04\_11\_00 for larsoft v04\_20\_00
-   2015-08-14 Thomas Warburton : Merge branch ‘develop’ into feature/warburton\_PhotonMatching
-   2015-08-14 Thomas Warburton : Further changes
-   2015-08-13 Thomas Warburton : Adding functionality, and correcting timings
-   2015-08-12 Thomas Warburton : Adding a module to find T0 data products from photon dietectors.


larreco v04\_15\_00[¶](#larreco-v04_15_00)
------------------------------------------

-   2015-08-19 Lynn Garren : larreco v04\_15\_00 for larsoft v04\_20\_00
-   2015-08-18 Mike Wallbank : Improved merging, with support for global TPC reconstruction
-   2015-08-18 Mike Wallbank : Updates to blurred clustering: tidied the code up, added support for global TPC reconstruction
-   2015-08-14 Lynn Garren : larsoft v04\_19\_00
-   2015-08-13 Robert Sulej : add option to pass hits from all views in a single vector


larsim v04\_09\_02[¶](#larsim-v04_09_02)
----------------------------------------

-   2015-08-19 Lynn Garren : larsim v04\_09\_0 for larsoft v04\_20\_00


larevt v04\_09\_01[¶](#larevt-v04_09_01)
----------------------------------------

-   2015-08-19 Lynn Garren : larevt v04\_09\_01 for larsoft v04\_20\_00


lardata v04\_12\_01[¶](#lardata-v04_12_01)
------------------------------------------

-   2015-08-19 Lynn Garren : lardata v04\_12\_01 for larsoft v04\_20\_00
-   2015-08-17 Gianluca Petrillo : Fixed syntax of message facility debug specification


larcore v04\_16\_01[¶](#larcore-v04_16_01)
------------------------------------------

-   2015-08-19 Lynn Garren : larcore v04\_16\_01 for larsoft v04\_20\_0


larbatch v01\_13\_00[¶](#larbatch-v01_13_00)
--------------------------------------------


larutils v1\_03\_00[¶](#larutils-v1_03_00)
------------------------------------------

-   2015-08-19 Lynn Garren : add support for building with art v1\_15\_02
-   2015-08-19 Lynn Garren : larutils v1\_03\_00 for larsoft v04\_20\_00
-   2015-08-13 Tingjun Yang : add scripts to build dunetpc and duneutil
