LArSoft v06\_10\_00\_rc2 Release Notes
===============================================================================

-   **Table of contents**
-   [LArSoft v06\_10\_00\_rc2 Release Notes](#LArSoft-v06_10_00_rc2-Release-Notes)
    -   [Purpose](#Purpose)
    -   [New features](#New-features)
    -   [Bug fixes](#Bug-fixes)
    -   [Updated dependencies](#Updated-dependencies)
-   [Change List](#Change-List)
    -   [larsoft v06\_10\_00\_rc2](#larsoft-v06_10_00_rc2)
    -   [lareventdisplay v06\_10\_00\_rc2](#lareventdisplay-v06_10_00_rc2)
    -   [larexamples v06\_10\_00\_rc2](#larexamples-v06_10_00_rc2)
    -   [larpandora v06\_10\_00\_rc2](#larpandora-v06_10_00_rc2)
    -   [larana v06\_10\_00\_rc2](#larana-v06_10_00_rc2)
    -   [larreco v06\_10\_00\_rc2](#larreco-v06_10_00_rc2)
    -   [larsim v06\_10\_00\_rc2](#larsim-v06_10_00_rc2)
    -   [larevt v06\_10\_00\_rc2](#larevt-v06_10_00_rc2)
    -   [lardata v06\_10\_00\_rc2](#lardata-v06_10_00_rc2)
    -   [larcore v06\_10\_00\_rc2](#larcore-v06_10_00_rc2)
    -   [larsoftobj v1\_07\_00](#larsoftobj-v1_07_00)
    -   [lardataobj v1\_07\_00](#lardataobj-v1_07_00)
    -   [larcoreobj v1\_05\_00](#larcoreobj-v1_05_00)
    -   [larbatch v01\_23\_06](#larbatch-v01_23_06)
    -   [larutils v1\_08\_06](#larutils-v1_08_06)

[list of LArSoft releases](LArSoft_release_list)\
[Download instructions](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v06_10_00_rc2/larsoft-v06_10_00_rc2.html)

Purpose
--------------------

-   created from the larsoft v06\_08\_00 tag
-   allow testing of GENIE, Geant4, and ifdhc 2

New features
------------------------------

-   The v06\_10\_00\_rc branch is also available for argoneutcode, dunetpc, lariatsoft, and uboonecode.
-   A docker image is available: docker pull fnalart/larsoft:v06\_10\_00\_rc2-s42-e10-prof
    -   Please note that this image starts with larsoft already setup and ready to use.

Bug fixes
------------------------

Updated dependencies
----------------------------------------------

  --------------- ----------------- -------------------------------------- -------------------------------------------------------------------
  Product         Version           Qualifiers                             Notes
  nutools         v2\_04\_03        e10                                    nutools 2.04.xx are beta releases for use with larsoft 6.10.00.rc
  ifdh\_art       v2\_00\_00\_rc0   e10:nu:s42                             
  ifdhc           b2\_0\_3          e10:p2711                              
  geant4          v4\_10\_2\_p02b   e10                                    
  genie           v2\_11\_2         e10:r6                                 
  genie\_phyopt   v2\_11\_0         dkcharmtau                             
  genie\_xsec     v2\_11\_0         DefaultPlusMECWithNCUseOldBYScaleVar   
  genie\_xsec     v2\_11\_0         EffSFTEMUseOldBYScaleVar               
  dk2nu           v01\_04\_01b      e10:r6                                 
  --------------- ----------------- -------------------------------------- -------------------------------------------------------------------

Change List
============================

larsoft v06\_10\_00\_rc2
---------------------------------------------------

-   2016-10-04 Lynn Garren : larsoftobj cfg file
-   2016-10-04 Lynn Garren : the nu distribution has git v2\_8\_2 and gitflow v1\_9\_1
-   2016-10-03 Lynn Garren : larsoft v06\_10\_00\_rc2
-   2016-10-03 Lynn Garren : new config files
-   2016-10-03 Lynn Garren : ifdhc b2\_0\_3, genie v2\_11\_2, and geant4 v4\_10\_2\_p02b
-   2016-09-30 Lynn Garren : Merge tag ‘LARSOFT\_SUITE\_v06\_08\_00’ into v06\_10\_00\_rc
-   2016-09-09 Lynn Garren : update the source code manifest
-   2016-09-09 Lynn Garren : v06\_10\_00\_rc1 with nutools v2\_04\_01

lareventdisplay v06\_10\_00\_rc2
-------------------------------------------------------------------

-   2016-10-03 Lynn Garren : lareventdisplay v06\_10\_00\_rc2
-   2016-09-30 Lynn Garren : Merge tag ‘LARSOFT\_SUITE\_v06\_08\_00’ into v06\_10\_00\_rc
-   2016-09-09 Lynn Garren : v06\_10\_00\_rc1

larexamples v06\_10\_00\_rc2
-----------------------------------------------------------

-   2016-10-03 Lynn Garren : larexamples v06\_10\_00\_rc2
-   2016-09-30 Lynn Garren : Merge tag ‘LARSOFT\_SUITE\_v06\_08\_00’ into v06\_10\_00\_rc
-   2016-09-09 Lynn Garren : v06\_10\_00\_rc1

larpandora v06\_10\_00\_rc2
---------------------------------------------------------

-   2016-10-03 Lynn Garren : larpandora v06\_10\_00\_rc2
-   2016-09-30 Lynn Garren : Merge tag ‘LARSOFT\_SUITE\_v06\_08\_00’ into v06\_10\_00\_rc
-   2016-09-09 Lynn Garren : v06\_10\_00\_rc1

larana v06\_10\_00\_rc2
-------------------------------------------------

-   2016-10-03 Lynn Garren : larana v06\_10\_00\_rc2
-   2016-09-30 Lynn Garren : Merge tag ‘LARSOFT\_SUITE\_v06\_08\_00’ into v06\_10\_00\_rc
-   2016-09-09 Lynn Garren : larana v06\_10\_00\_rc1

larreco v06\_10\_00\_rc2
---------------------------------------------------

-   2016-10-03 Lynn Garren : larreco v06\_10\_00\_rc2
-   2016-09-30 Lynn Garren : Merge tag ‘LARSOFT\_SUITE\_v06\_08\_00’ into v06\_10\_00\_rc
-   2016-09-26 Lynn Garren : revert to nutools v2\_04\_00 with geant4 v4\_10\_2\_p02a
-   2016-09-09 Lynn Garren : v06\_10\_00\_rc1 with nutools v2\_04\_01

larsim v06\_10\_00\_rc2
-------------------------------------------------

-   2016-10-03 Lynn Garren : larsim v06\_10\_00\_rc2
-   2016-09-30 Lynn Garren : Merge tag ‘LARSOFT\_SUITE\_v06\_08\_00’ into v06\_10\_00\_rc
-   2016-09-26 Hans-Joachim Wenzel : replace VisibleEnergyDeposition with \>VisibleEnergyDepositionAtAStep
-   2016-09-09 Lynn Garren : v06\_10\_00\_rc1

larevt v06\_10\_00\_rc2
-------------------------------------------------

-   2016-10-03 Lynn Garren : larevt v06\_10\_00\_rc2
-   2016-09-30 Lynn Garren : Merge tag ‘LARSOFT\_SUITE\_v06\_08\_00’ into v06\_10\_00\_rc
-   2016-09-09 Lynn Garren : v06\_10\_00\_rc1

lardata v06\_10\_00\_rc2
---------------------------------------------------

-   2016-10-03 Lynn Garren : lardata v06\_10\_00\_rc2
-   2016-09-30 Lynn Garren : Merge tag ‘LARSOFT\_SUITE\_v06\_08\_00’ into v06\_10\_00\_rc
-   2016-09-26 Lynn Garren : revert to nutools v2\_04\_00 with geant4 v4\_10\_2\_p02a
-   2016-09-09 Lynn Garren : lardata v06\_10\_00\_rc1 with nutools v2\_04\_01

larcore v06\_10\_00\_rc2
---------------------------------------------------

-   2016-10-03 Lynn Garren : larcore v06\_10\_00\_rc2
-   2016-09-30 Lynn Garren : Merge tag ‘LARSOFT\_SUITE\_v06\_08\_00’ into v06\_10\_00\_rc

larsoftobj v1\_07\_00
----------------------------------------------

lardataobj v1\_07\_00
----------------------------------------------

larcoreobj v1\_05\_00
----------------------------------------------

larbatch v01\_23\_06
--------------------------------------------

larutils v1\_08\_06
------------------------------------------
