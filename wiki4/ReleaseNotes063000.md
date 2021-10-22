LArSoft v06\_30\_00 Release Notes[¶](#LArSoft-v06_30_00-Release-Notes)
======================================================================

-   **Table of contents**
-   [LArSoft v06\_30\_00 Release Notes](#LArSoft-v06_30_00-Release-Notes)
    -   [Purpose](#Purpose)
    -   [New features](#New-features)
    -   [Breaking Changes](#Breaking-Changes)
    -   [Updated dependencies](#Updated-dependencies)
-   [Change List](#Change-List)
    -   [larsoft v06\_30\_00](#larsoft-v06_30_00)
    -   [lareventdisplay v06\_04\_00](#lareventdisplay-v06_04_00)
    -   [larexamples v06\_02\_00](#larexamples-v06_02_00)
    -   [larpandora v06\_09\_00](#larpandora-v06_09_00)
    -   [larwirecell v06\_02\_00](#larwirecell-v06_02_00)
    -   [larana v06\_04\_00](#larana-v06_04_00)
    -   [larreco v06\_24\_00](#larreco-v06_24_00)
    -   [larsim v06\_16\_00](#larsim-v06_16_00)
    -   [larevt v06\_09\_00](#larevt-v06_09_00)
    -   [lardata v06\_17\_00](#lardata-v06_17_00)
    -   [larcore v06\_07\_00](#larcore-v06_07_00)
    -   [larpandoracontent v03\_03\_00](#larpandoracontent-v03_03_00)
    -   [larsoftobj v1\_16\_00](#larsoftobj-v1_16_00)
    -   [lardataobj v1\_14\_00](#lardataobj-v1_14_00)
    -   [larcoreobj v1\_10\_00](#larcoreobj-v1_10_00)
    -   [larbatch v01\_28\_01](#larbatch-v01_28_01)
    -   [larutils v1\_12\_01](#larutils-v1_12_01)

[list of LArSoft releases](LArSoft_release_list)\
Download instructions for [larsoft v06\_30\_00](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v06_30_00/larsoft-v06_30_00.html)\
Download instructions for [just larsoftobj v1\_16\_00](http://scisoft.fnal.gov/scisoft/bundles/larsoftobj/v1_16_00/larsoftobj-v1_16_00.html)


Purpose[¶](#Purpose)
--------------------

-   build with art 2.06.03 and nutools 2.12.00
-   based off the v06\_29\_00 tag
-   This release only supports an e10 build


New features[¶](#New-features)
------------------------------

-   art [v2\_06\_03](/redmine/projects/art/wiki/Release_Notes_20603)
-   nutools [v2\_12\_00](/redmine/projects/nutools/wiki/NuTools_Release_Notes#nutools-v2_12_00-3302017)


Breaking Changes[¶](#Breaking-Changes)
--------------------------------------

-   There is only one canvas library, named canvas.
-   The cetlib library has been split into cetlib and cetlib\_except.
    -   “cetlib/demangle.h” is now “cetlib\_except/demangle.h”
-   Run UpdateArt206.sh
-   Required changes are found on v06\_30\_00-branch in the experiment repositories.


Updated dependencies[¶](#Updated-dependencies)
----------------------------------------------

  -------------- ------------- ------------ --------------------------------------------------------------------------------------------------
  Product        Version       Qualifiers   Notes
  nutools        v2\_12\_00    e10          [NuTools\_Release\_Notes](/redmine/projects/nutools/wiki/NuTools_Release_Notes#nutools-v2_12_00)
  nusimdata      v1\_07\_01    e10          
  ifdh\_art      v2\_01\_02    e10:nu:s48   
  artdaq\_core   v1\_07\_02    e10:nu:s48   
  art            v2\_06\_03    e10:nu       [Release Notes 2.06.03](/redmine/projects/art/wiki/Release_Notes_20603)
  canvas         v1\_06\_04    e10:nu       
  clhep          v2\_3\_4\_4   e10          
  root           v6\_08\_06d   e10:nu       
  python         v2\_7\_13d                 
  -------------- ------------- ------------ --------------------------------------------------------------------------------------------------


Change List[¶](#Change-List)
============================


larsoft v06\_30\_00[¶](#larsoft-v06_30_00)
------------------------------------------

-   2017-04-03 Lynn Garren : larsoft v06\_30\_00
-   2017-04-03 Lynn Garren : for larsoftobj
-   2017-03-30 Lynn Garren : Merge branch ‘v06\_30\_00\_rc’ into v06\_30\_00-branch
-   2017-03-10 Lynn Garren : cetbuildtools v5\_06\_07
-   2017-03-10 Lynn Garren : for larsoft v06\_30\_00\_rc1 with art v2\_06\_01
-   2017-03-09 Lynn Garren : Merge branch ‘feature/at\_for\_art\_2\_06’ into release/v06\_30\_00\_rc1
-   2017-03-09 Lynn Garren : for art v2\_06
-   2017-03-09 Lynn Garren : working script
-   2017-03-05 Lynn Garren : update the product stack
-   2017-03-05 Lynn Garren : fixup scripts for art 2.06


lareventdisplay v06\_04\_00[¶](#lareventdisplay-v06_04_00)
----------------------------------------------------------

-   2017-04-03 Lynn Garren : lareventdisplay v06\_04\_00
-   2017-03-30 Lynn Garren : Merge branch ‘v06\_30\_00\_rc’ into v06\_30\_00-branch
-   2017-03-10 Lynn Garren : for larsoft v06\_30\_00\_rc1 with art v2\_06\_01
-   2017-03-10 Lynn Garren : Merge branch ‘feature/at\_for\_art\_2\_06’ into release/v06\_30\_00\_rc1
-   2017-03-09 Lynn Garren : for art v2\_06
-   2017-03-09 Lynn Garren : fix link lists
-   2017-03-09 Lynn Garren : fix header


larexamples v06\_02\_00[¶](#larexamples-v06_02_00)
--------------------------------------------------

-   2017-04-03 Lynn Garren : larexamples v06\_02\_00
-   2017-03-30 Lynn Garren : Merge branch ‘v06\_30\_00\_rc’ into v06\_30\_00-branch
-   2017-03-10 Lynn Garren : for larsoft v06\_30\_00\_rc1 with art v2\_06\_01
-   2017-03-10 Lynn Garren : cleanup link list
-   2017-03-10 Lynn Garren : Merge branch ‘feature/at\_for\_art\_2\_06’ into release/v06\_30\_00\_rc1
-   2017-03-09 Lynn Garren : for art v2\_06
-   2017-03-09 Lynn Garren : fix link lists
-   2017-03-09 Lynn Garren : fix link lists


larpandora v06\_09\_00[¶](#larpandora-v06_09_00)
------------------------------------------------

-   2017-04-03 Lynn Garren : larpandora v06\_09\_00
-   2017-03-30 Lynn Garren : Merge branch ‘v06\_30\_00\_rc’ into v06\_30\_00-branch
-   2017-03-10 Lynn Garren : for larsoft v06\_30\_00\_rc1 with art v2\_06\_01
-   2017-03-10 Lynn Garren : Merge branch ‘feature/at\_for\_art\_2\_06’ into release/v06\_30\_00\_rc1
-   2017-03-09 Lynn Garren : for art v2\_06
-   2017-03-09 Lynn Garren : fix link list


larwirecell v06\_02\_00[¶](#larwirecell-v06_02_00)
--------------------------------------------------

-   2017-04-03 Lynn Garren : larwirecell v06\_02\_00
-   2017-03-30 Lynn Garren : Merge branch ‘v06\_30\_00\_rc’ into v06\_30\_00-branch
-   2017-03-10 Lynn Garren : for larsoft v06\_30\_00\_rc1 with art v2\_06\_01
-   2017-03-10 Lynn Garren : Merge branch ‘feature/at\_for\_art\_2\_06’ into release/v06\_30\_00\_rc1
-   2017-03-06 Lynn Garren : for art v2\_06
-   2017-03-06 Lynn Garren : fix link list


larana v06\_04\_00[¶](#larana-v06_04_00)
----------------------------------------

-   2017-04-03 Lynn Garren : larana v06\_04\_00 for larsoft v06\_30\_00
-   2017-03-30 Lynn Garren : Merge branch ‘v06\_30\_00\_rc’ into v06\_30\_00-branch
-   2017-03-10 Lynn Garren : for larsoft v06\_30\_00\_rc1 with art v2\_06\_01
-   2017-03-10 Lynn Garren : cleanup link list
-   2017-03-10 Lynn Garren : Merge branch ‘feature/at\_for\_art\_2\_06’ into release/v06\_30\_00\_rc1
-   2017-03-09 Lynn Garren : for art v2\_06
-   2017-03-09 Lynn Garren : fix link lists


larreco v06\_24\_00[¶](#larreco-v06_24_00)
------------------------------------------

-   2017-04-03 Lynn Garren : larreco v06\_24\_00
-   2017-03-30 Lynn Garren : fix link list
-   2017-03-30 Lynn Garren : Merge branch ‘v06\_30\_00\_rc’ into v06\_30\_00-branch
-   2017-03-10 Lynn Garren : for larsoft v06\_30\_00\_rc1 with art v2\_06\_01
-   2017-03-10 Lynn Garren : Merge branch ‘feature/at\_for\_art\_2\_06’ into release/v06\_30\_00\_rc1
-   2017-03-06 Lynn Garren : use nutools v2\_11\_00
-   2017-03-06 Lynn Garren : picking up the proper fix
-   2017-03-06 Tingjun Yang : Initialize hitcoord.
-   2017-03-06 Lynn Garren : fix link lists
-   2017-03-06 Lynn Garren : initialize hitcoord and contact the author of the code
-   2017-03-06 Lynn Garren : replace InsertFailure with ProductRegistrationFailure
-   2017-03-06 Lynn Garren : include missing header


larsim v06\_16\_00[¶](#larsim-v06_16_00)
----------------------------------------

-   2017-04-03 Lynn Garren : larsim v06\_16\_00
-   2017-03-30 Lynn Garren : Merge branch ‘v06\_30\_00\_rc’ into v06\_30\_00-branch
-   2017-03-10 Lynn Garren : for larsoft v06\_30\_00\_rc1 with art v2\_06\_01
-   2017-03-10 Lynn Garren : Merge branch ‘feature/at\_for\_art\_2\_06’ into release/v06\_30\_00\_rc1
-   2017-03-06 Lynn Garren : for art v2\_06
-   2017-03-06 Lynn Garren : adjust link lists
-   2017-03-06 Lynn Garren : simple\_plugin does not supply cetlib\_except


larevt v06\_09\_00[¶](#larevt-v06_09_00)
----------------------------------------

-   2017-04-03 Lynn Garren : larevt v06\_09\_00
-   2017-03-30 Lynn Garren : Merge branch ‘v06\_30\_00\_rc’ into v06\_30\_00-branch
-   2017-03-10 Lynn Garren : for larsoft v06\_30\_00\_rc1 with art v2\_06\_01
-   2017-03-10 Lynn Garren : Merge branch ‘feature/at\_for\_art\_2\_06’ into release/v06\_30\_00\_rc1
-   2017-03-06 Lynn Garren : for art v2\_06
-   2017-03-06 Lynn Garren : adjust link libraries
-   2017-03-06 Lynn Garren : replace InsertFailure with ProductRegistrationFailure


lardata v06\_17\_00[¶](#lardata-v06_17_00)
------------------------------------------

-   2017-04-03 Lynn Garren : lardata v06\_17\_00 for larsoft v06\_30\_00
-   2017-03-30 Lynn Garren : fix link list
-   2017-03-30 Lynn Garren : Merge branch ‘v06\_30\_00\_rc’ into v06\_30\_00-branch
-   2017-03-10 Lynn Garren : for larsoft v06\_30\_00\_rc1 with art v2\_06\_01
-   2017-03-10 Lynn Garren : cleanup link list
-   2017-03-10 Lynn Garren : Merge branch ‘feature/at\_for\_art\_2\_06’ into release/v06\_30\_00\_rc1
-   2017-03-06 Lynn Garren : replace InsertFailure with ProductRegistrationFailure
-   2017-03-06 Lynn Garren : use +nutools v2\_11\_00
-   2017-03-06 Lynn Garren : adjust link list
-   2017-03-06 Lynn Garren : cetlib/demangle.h is now cetlib\_except/demangle.h
-   2017-03-06 Lynn Garren : add missing cetlib\_except library
-   2017-03-06 Lynn Garren : add missing cetlib\_except library


larcore v06\_07\_00[¶](#larcore-v06_07_00)
------------------------------------------

-   2017-04-03 Lynn Garren : larcore v06\_07\_00 for larsoftobj v1\_16\_00
-   2017-03-30 Lynn Garren : fix library list
-   2017-03-30 Lynn Garren : Merge branch ‘v06\_30\_00\_rc’ into v06\_30\_00-branch
-   2017-03-10 Lynn Garren : for larsoft v06\_30\_00\_rc1 with art v2\_06\_01
-   2017-03-06 Lynn Garren : for art v2\_06\_01
-   2017-03-06 Lynn Garren : adjust link list
-   2017-03-06 Lynn Garren : cetlib/demangle.h is now cetlib\_except/demangle.h


larpandoracontent v03\_03\_00[¶](#larpandoracontent-v03_03_00)
--------------------------------------------------------------

-   2017-04-03 Lynn Garren : larpandoracontent v03\_03\_00 for larsoft v06\_30\_00
-   2017-03-10 Lynn Garren : for larsoft v06\_30\_00\_rc1 with art v2\_06\_01
-   2017-03-10 Lynn Garren : for larsoft v06\_30\_00\_rc1 with art v2\_06\_01
-   2017-03-09 Lynn Garren : for art v2\_06


larsoftobj v1\_16\_00[¶](#larsoftobj-v1_16_00)
----------------------------------------------

-   2017-04-03 Lynn Garren : fix typo
-   2017-04-03 Lynn Garren : cetbuildtools v5\_06\_06
-   2017-04-03 Lynn Garren : larsoftobj v1\_16\_00
-   2017-04-01 Lynn Garren : update product versions
-   2017-03-30 Lynn Garren : Merge branch ‘v06\_30\_00\_rc’ into v06\_30\_00-branch
-   2017-03-10 Lynn Garren : for larsoft v06\_30\_00\_rc1 with art v2\_06\_01
-   2017-03-05 Lynn Garren : for art 2.06.01
-   2017-03-09 Lynn Garren : Merge branch ‘feature/at\_for\_art\_2\_06’ into release/v06\_30\_00\_rc1
-   2017-03-06 Lynn Garren : build cetbuildtools v5\_06\_07


lardataobj v1\_14\_00[¶](#lardataobj-v1_14_00)
----------------------------------------------

-   2017-04-03 Lynn Garren : lardataobj v1\_14\_00 for larsoftobj v1\_16\_00
-   2017-03-30 Lynn Garren : Merge branch ‘v06\_30\_00\_rc’ into v06\_30\_00-branch
-   2017-03-10 Lynn Garren : for larsoft v06\_30\_00\_rc1 with art v2\_06\_01
-   2017-03-05 Lynn Garren : for art 2.06.01
-   2017-03-09 Lynn Garren : fix link list


larcoreobj v1\_10\_00[¶](#larcoreobj-v1_10_00)
----------------------------------------------

-   2017-04-03 Lynn Garren : larcoreobj v1\_10\_00 for larsoftobj v1\_16\_00
-   2017-03-30 Lynn Garren : fix link list
-   2017-03-30 Lynn Garren : Merge branch ‘v06\_30\_00\_rc’ into v06\_30\_00-branch
-   2017-03-10 Lynn Garren : for larsoft v06\_30\_00\_rc1 with art v2\_06\_01


larbatch v01\_28\_01[¶](#larbatch-v01_28_01)
--------------------------------------------


larutils v1\_12\_01[¶](#larutils-v1_12_01)
------------------------------------------
