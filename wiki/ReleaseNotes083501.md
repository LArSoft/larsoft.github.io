LArSoft v08\_35\_01 Release Notes(#LArSoft-v08_35_01-Release-Notes)
======================================================================

-   **Table of contents**
-   [LArSoft v08\_35\_01 Release Notes](#LArSoft-v08_35_01-Release-Notes)
    -   [Purpose](#Purpose)
    -   [New features](#New-features)
    -   [Bug fixes](#Bug-fixes)
    -   [Updated dependencies](#Updated-dependencies)
-   [Change List](#Change-List)
    -   [larsoft v08\_35\_01](#larsoft-v08_35_01)
    -   [lareventdisplay v08\_08\_21](#lareventdisplay-v08_08_21)
    -   [larexamples v08\_02\_26](#larexamples-v08_02_26)
    -   [larg4 v08\_05\_03](#larg4-v08_05_03)
    -   [larpandora v08\_07\_25](#larpandora-v08_07_25)
    -   [larwirecell v08\_08\_02](#larwirecell-v08_08_02)
    -   [larana v08\_12\_01](#larana-v08_12_01)
    -   [larreco v08\_22\_01](#larreco-v08_22_01)
    -   [larsim v08\_15\_02](#larsim-v08_15_02)
    -   [larevt v08\_06\_15](#larevt-v08_06_15)
    -   [lardata v08\_09\_03](#lardata-v08_09_03)
    -   [larcore v08\_06\_01](#larcore-v08_06_01)
    -   [larpandoracontent v03\_15\_08](#larpandoracontent-v03_15_08)
    -   [larsoftobj v08\_21\_01](#larsoftobj-v08_21_01)
    -   [lardataobj v08\_06\_03](#lardataobj-v08_06_03)
    -   [lardataalg v08\_08\_11](#lardataalg-v08_08_11)
    -   [larcorealg v08\_16\_00](#larcorealg-v08_16_00)
    -   [larcoreobj v08\_06\_00](#larcoreobj-v08_06_00)
    -   [larbatch v01\_51\_10](#larbatch-v01_51_10)
    -   [larutils v1\_25\_01](#larutils-v1_25_01)

[list of LArSoft releases](LArSoft_release_list)\
Download instructions for [larsoft v08\_35\_01](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v08_35_01/larsoft-v08_35_01.html)\
Download instructions for [just larsoftobj v08\_21\_01](http://scisoft.fnal.gov/scisoft/bundles/larsoftobj/v08_21_01/larsoftobj-v08_21_01.html)

Purpose(#Purpose)
--------------------

-   changes in develop
-   approved feature branches

New features(#New-features)
------------------------------

-   Lengthen raw::RawDigit’s fSamples
    -   [https://indico.fnal.gov/event/22319/contribution/2/material/slides/0.pdf](https://indico.fnal.gov/event/22319/contribution/2/material/slides/0.pdf)
    -   RawDigit samples is now type ULong64\_t. The previous type was unsigned short.
    -   lardataobj, larevt feature/trj\_rawdigitfsample64
    -   ubcore feature/trj\_rawdigitfsample64
    -   [Breaking Change](Breaking_Changes#Lengthen-rawRawDigit-fSamples): Note that a few int loops will need to become explicit unsigned int loops.

Bug fixes(#Bug-fixes)
------------------------

Updated dependencies(#Updated-dependencies)
----------------------------------------------

-   mrb v3\_04\_00
    -   options -B (top of build directory) and -P (top of product directory) added
    -   mrb cq (change qualifiers in ups/product\_deps) improved

Change List(#Change-List)
============================

larsoft v08\_35\_01(#larsoft-v08_35_01)
------------------------------------------

-   2019-11-11 Lynn Garren : larsoft v08\_35\_01 for larsoft v08\_35\_01
-   2019-11-11 Lynn Garren : product versions

lareventdisplay v08\_08\_21(#lareventdisplay-v08_08_21)
----------------------------------------------------------

-   2019-11-11 Lynn Garren : lareventdisplay v08\_08\_21 for larsoft v08\_35\_01
-   2019-11-10 Tingjun Yang : Draw shower ID.
-   2019-11-10 Tingjun Yang : Only draw track points in the current TPC.
-   2019-11-10 Tingjun Yang : Add protection if no hit is found.

larexamples v08\_02\_26(#larexamples-v08_02_26)
--------------------------------------------------

-   2019-11-11 Lynn Garren : larexamples v08\_02\_26 for larsoft v08\_35\_01

larg4 v08\_05\_03(#larg4-v08_05_03)
--------------------------------------

-   2019-11-11 Lynn Garren : larg4 v08\_05\_03 for larsoft v08\_35\_01
-   2019-11-06 David Rivera : Initialize messageLogger instance for ParticleListAction\_service. Cleaned unecessary headers. Added some debug messages.
-   2019-11-06 David Rivera : Fixed issue with events with multiple generators. More specifically the fix was to the loop over the list of Handles to MCTruth object lists.

larpandora v08\_07\_25(#larpandora-v08_07_25)
------------------------------------------------

-   2019-11-11 Lynn Garren : larpandora v08\_07\_25 for larsoft v08\_35\_01

larwirecell v08\_08\_02(#larwirecell-v08_08_02)
--------------------------------------------------

-   2019-11-11 Lynn Garren : larwirecell v08\_08\_02 for larsoft v08\_35\_01

larana v08\_12\_01(#larana-v08_12_01)
----------------------------------------

-   2019-11-11 Lynn Garren : larana v08\_12\_01 for larsoft v08\_35\_01

larreco v08\_22\_01(#larreco-v08_22_01)
------------------------------------------

-   2019-11-11 Lynn Garren : larreco v08\_22\_01 for larsoft v08\_35\_01
-   2019-11-07 Tingjun Yang : Merge branch ‘feature/usher\_removerawdigits’ into develop
-   2019-11-07 Tingjun Yang : Remove raw digits from disambiguation cheater.

larsim v08\_15\_02(#larsim-v08_15_02)
----------------------------------------

-   2019-11-11 Lynn Garren : larsim v08\_15\_02 for larsoft v08\_35\_01

larevt v08\_06\_15(#larevt-v08_06_15)
----------------------------------------

-   2019-11-11 Lynn Garren : larevt v08\_06\_15 for larsoft v08\_35\_01
-   2019-11-11 Lynn Garren : Merge branch ‘feature/trj\_rawdigitfsample64’ into release/v08\_35\_01
-   2019-11-06 Thomas Junk : unsigned int loop counter. Should have warned before with the unsigned short but comparison but didn’t.

lardata v08\_09\_03(#lardata-v08_09_03)
------------------------------------------

-   2019-11-11 Lynn Garren : lardata v08\_09\_03 for larsoft v08\_35\_01

larcore v08\_06\_01(#larcore-v08_06_01)
------------------------------------------

larpandoracontent v03\_15\_08(#larpandoracontent-v03_15_08)
--------------------------------------------------------------

larsoftobj v08\_21\_01(#larsoftobj-v08_21_01)
------------------------------------------------

-   2019-11-11 Lynn Garren : larsoftobj v08\_21\_01 for larsoft v08\_35\_01
-   2019-11-11 Lynn Garren : product versions

lardataobj v08\_06\_03(#lardataobj-v08_06_03)
------------------------------------------------

-   2019-11-11 Lynn Garren : lardataobj v08\_06\_03 for larsoft v08\_35\_01
-   2019-11-11 Lynn Garren : Merge branch ‘feature/trj\_rawdigitfsample64’ into release/v08\_35\_01
-   2019-11-06 Thomas Junk : upgrade fSamples from an unsigned short to a ULong64\_t

lardataalg v08\_08\_11(#lardataalg-v08_08_11)
------------------------------------------------

-   2019-11-11 Lynn Garren : lardataalg v08\_08\_11 for larsoft v08\_35\_01

larcorealg v08\_16\_00(#larcorealg-v08_16_00)
------------------------------------------------

larcoreobj v08\_06\_00(#larcoreobj-v08_06_00)
------------------------------------------------

larbatch v01\_51\_10(#larbatch-v01_51_10)
--------------------------------------------

larutils v1\_25\_01(#larutils-v1_25_01)
------------------------------------------

-   2019-11-11 Lynn Garren : larutils v1\_25\_01 for larsoft v08\_35\_01
-   2019-11-06 Thomas Junk : allow multiple artdaq\_core lines
