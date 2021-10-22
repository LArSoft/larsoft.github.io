LArSoft v04\_11\_00 Release Notes[¶](#LArSoft-v04_11_00-Release-Notes)
======================================================================

-   **Table of contents**
-   [LArSoft v04\_11\_00 Release Notes](#LArSoft-v04_11_00-Release-Notes)
    -   [Purpose](#Purpose)
    -   [New features](#New-features)
    -   [Bug fixes](#Bug-fixes)
    -   [Known Problems](#Known-Problems)
    -   [Updated dependencies](#Updated-dependencies)
-   [Change List](#Change-List)
    -   [larsoft v04\_11\_00](#larsoft-v04_11_00)
    -   [lareventdisplay v04\_04\_09](#lareventdisplay-v04_04_09)
    -   [larexamples v04\_04\_09](#larexamples-v04_04_09)
    -   [larpandora v04\_04\_09](#larpandora-v04_04_09)
    -   [larana v04\_07\_01](#larana-v04_07_01)
    -   [larreco v04\_07\_02](#larreco-v04_07_02)
    -   [larsim v04\_07\_05](#larsim-v04_07_05)
    -   [larevt v04\_07\_03](#larevt-v04_07_03)
    -   [lardata v04\_08\_00](#lardata-v04_08_00)
    -   [larcore v04\_10\_00](#larcore-v04_10_00)
    -   [larbatch v01\_09\_00](#larbatch-v01_09_00)
    -   [larutils v1\_00\_11](#larutils-v1_00_11)

[list of LArSoft releases](LArSoft_release_list)\
[Download instructions](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v04_11_00/larsoft-v04_11_00.html)


Purpose[¶](#Purpose)
--------------------

-   Build with [art v1\_14\_02](https://cdcvs.fnal.gov/redmine/projects/art/wiki/Release_Notes_11402)
-   See [\#8898](/redmine/issues/8898 "Support: art v1_14_02 (Closed)")


New features[¶](#New-features)
------------------------------

-   art now supports reading data products from secondary input files
-   art has improved memory usage


Bug fixes[¶](#Bug-fixes)
------------------------

-   ifdhc v1\_8\_3
-   libwda v2\_21\_0a


Known Problems[¶](#Known-Problems)
----------------------------------

-   See [\#9108](/redmine/issues/9108 "Bug: Processing multiple files (Closed)")
-   If you see undefined reference errors similar to those shown below, add \${Boost\_SYSTEM\_LIBRARY} to the library link list\

        CMakeFiles/LArPandoraInterface.dir/LArPandoraBase.cxx.o: In function `__static_initialization_and_destruction_0':
        /products/boost/v1_57_0/Linux64bit+2.6-2.12-e7-prof/include/boost/system/error_code.hpp:221: undefined reference to `boost::system::generic_category()'
        /products/boost/v1_57_0/Linux64bit+2.6-2.12-e7-prof/include/boost/system/error_code.hpp:222: undefined reference to `boost::system::generic_category()'
        /products/boost/v1_57_0/Linux64bit+2.6-2.12-e7-prof/include/boost/system/error_code.hpp:223: undefined reference to `boost::system::system_category()'


Updated dependencies[¶](#Updated-dependencies)
----------------------------------------------

  ----------------- ---------------- ---------------- ------------------------------
  Product           Version          Qualifier        Notes
  git               v2\_3\_0                          
  gdb               v7\_9                             
  tbb               v4\_3\_5         e7               
  root              v5\_34\_30       e7:nu            
  pandora           v01\_01\_00b     e7:nu            
  genie             v2\_8\_6b        e7               
  dk2nu             v01\_01\_03b     e7               
  libwda            v2\_21\_0a                        
  qt                v5\_4\_1         e7               
  geant4            v4\_9\_6\_p04a   e7:qt            qt build of geant4 available
  ifdhc             v1\_8\_3         p279:e7          
  ifbeam            v1\_4\_10        p279:e7          
  nucondb           v1\_4\_10        p279:e7          
  cetbuildtools     v4\_11\_01                        
  cpp0x             v1\_04\_10       e7               
  cetlib            v1\_12\_01       e7               
  fhiclcpp          v3\_05\_02       e7               
  messagefacility   v1\_14\_05       e7               
  art               v1\_14\_02       e7:nu            
  ifdh\_art         v1\_10\_01       e7:nu:s11        
  nutools           v1\_11\_01       e7 & e7:noifdh   
  artdaq\_core      v1\_04\_13       e7:nu:s11        
  artextensions     v1\_01\_05       e7:nu:s11        
  mrb               v1\_04\_05                        
  ----------------- ---------------- ---------------- ------------------------------


Change List[¶](#Change-List)
============================


larsoft v04\_11\_00[¶](#larsoft-v04_11_00)
------------------------------------------

-   2015-06-05 Lynn Garren : larsoft v04\_11\_00 for larsoft v04\_11\_00
-   2015-06-05 Lynn Garren : using cetbuildtools v4\_11\_01
-   2015-06-03 Lynn Garren : new product suite for art v1\_14\_02


lareventdisplay v04\_04\_09[¶](#lareventdisplay-v04_04_09)
----------------------------------------------------------

-   2015-06-03 Lynn Garren : lareventdisplay v04\_04\_09 for larsoft v04\_11\_00


larexamples v04\_04\_09[¶](#larexamples-v04_04_09)
--------------------------------------------------

-   2015-06-03 Lynn Garren : larexamples v04\_04\_09 for larsoft v04\_11\_00


larpandora v04\_04\_09[¶](#larpandora-v04_04_09)
------------------------------------------------

-   2015-06-05 Lynn Garren : larpandora v04\_04\_09 for larsoft v04\_11\_00
-   2015-06-05 Lynn Garren : add Boost\_SYSTEM\_LIBRARY


larana v04\_07\_01[¶](#larana-v04_07_01)
----------------------------------------

-   2015-06-05 Lynn Garren : larana v04\_07\_01 for larsoft v04\_11\_00
-   2015-06-04 Lynn Garren : add Boost\_SYSTEM\_LIBRARY


larreco v04\_07\_02[¶](#larreco-v04_07_02)
------------------------------------------

-   2015-06-05 Lynn Garren : larreco v04\_07\_02 for larsoft v04\_11\_00
-   2015-06-04 Lynn Garren : need Boost\_SYSTEM\_LIBRARY
-   2015-06-04 Lynn Garren : specify library name
-   2015-06-03 Lynn Garren : need Boost\_SYSTEM\_LIBRARY


larsim v04\_07\_05[¶](#larsim-v04_07_05)
----------------------------------------

-   2015-06-05 Lynn Garren : larsim v04\_07\_05 for larsoft v04\_11\_00
-   2015-06-04 Lynn Garren : add Boost\_SYSTEM\_LIBRARY


larevt v04\_07\_03[¶](#larevt-v04_07_03)
----------------------------------------

-   2015-06-05 Lynn Garren : larevt v04\_07\_03 for larsoft v04\_11\_00
-   2015-06-04 Lynn Garren : need Boost\_SYSTEM\_LIBRARY
-   2015-06-04 Lynn Garren : add Boost\_SYSTEM\_LIBRARY


lardata v04\_08\_00[¶](#lardata-v04_08_00)
------------------------------------------

-   2015-06-05 Lynn Garren : lardata v04\_08\_00 for larsoft v04\_11\_00
-   2015-06-04 Lynn Garren : RawData also needs Boost\_SYSTEM\_LIBRARY
-   2015-06-03 Lynn Garren : need Boost\_SYSTEM\_LIBRARY


larcore v04\_10\_00[¶](#larcore-v04_10_00)
------------------------------------------

-   2015-06-03 Lynn Garren : larcore v04\_10\_00 for larsoft v04\_11\_00


larbatch v01\_09\_00[¶](#larbatch-v01_09_00)
--------------------------------------------


larutils v1\_00\_11[¶](#larutils-v1_00_11)
------------------------------------------

-   2015-06-05 Lynn Garren : larutils v1\_00\_11 for larsoft v04\_11\_00
-   2015-06-03 Lynn Garren : add s11:e7
