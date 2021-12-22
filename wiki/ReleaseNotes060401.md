LArSoft v06\_04\_01 Release Notes(#LArSoft-v06_04_01-Release-Notes)
======================================================================

-   **Table of contents**
-   [LArSoft v06\_04\_01 Release Notes](#LArSoft-v06_04_01-Release-Notes)
    -   [Purpose](#Purpose)
    -   [New features](#New-features)
    -   [Bug fixes](#Bug-fixes)
    -   [Updated dependencies](#Updated-dependencies)
-   [Change List](#Change-List)
    -   [larsoft v06\_04\_01](#larsoft-v06_04_01)
    -   [lareventdisplay v06\_01\_01](#lareventdisplay-v06_01_01)
    -   [larexamples v06\_00\_05](#larexamples-v06_00_05)
    -   [larpandora v06\_00\_06](#larpandora-v06_00_06)
    -   [larpandoracontent v02\_07\_09](#larpandoracontent-v02_07_09)
    -   [larana v06\_01\_02](#larana-v06_01_02)
    -   [larreco v06\_03\_01](#larreco-v06_03_01)
    -   [larsim v06\_03\_01](#larsim-v06_03_01)
    -   [larevt v06\_01\_00](#larevt-v06_01_00)
    -   [lardata v06\_03\_00](#lardata-v06_03_00)
    -   [larcore v06\_02\_00](#larcore-v06_02_00)
    -   [larsoftobj v1\_05\_03](#larsoftobj-v1_05_03)
    -   [larsimobj v1\_05\_03](#larsimobj-v1_05_03)
    -   [lardataobj v1\_04\_02](#lardataobj-v1_04_02)
    -   [larcoreobj v1\_04\_02](#larcoreobj-v1_04_02)
    -   [larbatch v01\_23\_04](#larbatch-v01_23_04)
    -   [larutils v1\_08\_03](#larutils-v1_08_03)

[list of LArSoft releases](LArSoft_release_list)\
[Download instructions](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v06_04_01/larsoft-v06_04_01.html)

Purpose(#Purpose)
--------------------

-   changes to develop since v06\_04\_00

New features(#New-features)
------------------------------

Bug fixes(#Bug-fixes)
------------------------

Updated dependencies(#Updated-dependencies)
----------------------------------------------

Change List(#Change-List)
============================

larsoft v06\_04\_01(#larsoft-v06_04_01)
------------------------------------------

-   2016-08-23 Lynn Garren : larsoft v06\_04\_01 for larsoft v06\_04\_01
-   2016-08-23 Lynn Garren : update product versions

lareventdisplay v06\_01\_01(#lareventdisplay-v06_01_01)
----------------------------------------------------------

-   2016-08-23 Lynn Garren : lareventdisplay v06\_01\_01 for larsoft v06\_04\_01

larexamples v06\_00\_05(#larexamples-v06_00_05)
--------------------------------------------------

-   2016-08-23 Lynn Garren : larexamples v06\_00\_05 for larsoft v06\_04\_01

larpandora v06\_00\_06(#larpandora-v06_00_06)
------------------------------------------------

-   2016-08-23 Lynn Garren : larpandora v06\_00\_06 for larsoft v06\_04\_01

larpandoracontent v02\_07\_09(#larpandoracontent-v02_07_09)
--------------------------------------------------------------

-   2016-08-23 Lynn Garren : larpandoracontent v02\_07\_09 for larsoft v06\_04\_01
-   2016-08-18 John Marshall : Merge branch ‘updates’

larana v06\_01\_02(#larana-v06_01_02)
----------------------------------------

-   2016-08-23 Lynn Garren : larana v06\_01\_02 for larsoft v06\_04\_01
-   2016-08-19 mdhaigh : Merge branch ‘develop’ into warwick\_pid
-   2016-08-03 mdhaigh : Add code to check for weight files on FW\_SEARCH\_PATH
-   2016-07-20 Nick Grant : Adding CalcPropLikeRatio.C to larana/ParticleIdentification/scripts

larreco v06\_03\_01(#larreco-v06_03_01)
------------------------------------------

-   2016-08-23 Lynn Garren : larreco v06\_03\_01 for larsoft v06\_04\_01
-   2016-08-22 Dorota Stefan : change condition for tagging MC vertex
-   2016-08-19 Dorota Stefan : change condition for MCvertex appearance
-   2016-08-19 Dorota Stefan : protection against crazy PDG values entering vertex flag

larsim v06\_03\_01(#larsim-v06_03_01)
----------------------------------------

-   2016-08-23 Lynn Garren : larsim v06\_03\_01 for larsoft v06\_04\_01
-   2016-08-23 Gleb Sinev : Merge branch ‘feature/gardiner\_MARLEY\_fhicl’ into develop
-   2016-08-23 Dorota Stefan : added SkipWireSignalInTPCs parameter. It is a vector of tpcs which have dead LAr volumes so ionization electrons will not be simulated
-   2016-08-23 Steven Gardiner : Create a detector-agnostic FHiCL file to use to configure MARLEY, and use it in prodmarley.fcl.
-   2016-08-23 Steven Gardiner : Remove G4ParticleTable calls from the MARLEYGen module. If we want to track recoil nuclei, we’ll need to define the particles within LArG4. Otherwise, running the generator without largeant will fail.

larevt v06\_01\_00(#larevt-v06_01_00)
----------------------------------------

lardata v06\_03\_00(#lardata-v06_03_00)
------------------------------------------

larcore v06\_02\_00(#larcore-v06_02_00)
------------------------------------------

larsoftobj v1\_05\_03(#larsoftobj-v1_05_03)
----------------------------------------------

-   2016-08-23 Lynn Garren : larsoftobj v1\_05\_03 for larsoft v06\_04\_01

larsimobj v1\_05\_03(#larsimobj-v1_05_03)
--------------------------------------------

-   2016-08-23 Lynn Garren : larsimobj v1\_05\_03 for larsoft v06\_04\_01
-   2016-08-19 Gianluca Petrillo : Fixed documentation of sim::IDE

lardataobj v1\_04\_02(#lardataobj-v1_04_02)
----------------------------------------------

larcoreobj v1\_04\_02(#larcoreobj-v1_04_02)
----------------------------------------------

larbatch v01\_23\_04(#larbatch-v01_23_04)
--------------------------------------------

larutils v1\_08\_03(#larutils-v1_08_03)
------------------------------------------

-   2016-08-23 Lynn Garren : larutils v1\_08\_03 for larsoft v06\_04\_01
-   2016-08-18 Lynn Garren : larsoft v06\_04\_00
-   2016-08-18 Lynn Garren : add s41
