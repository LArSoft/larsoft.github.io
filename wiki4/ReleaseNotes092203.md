LArSoft v09\_22\_03 Release Notes[¶](#LArSoft-v09_22_03-Release-Notes)
======================================================================

-   **Table of contents**
-   [LArSoft v09\_22\_03 Release Notes](#LArSoft-v09_22_03-Release-Notes)
    -   [Purpose](#Purpose)
    -   [New features](#New-features)
    -   [Bug fixes](#Bug-fixes)
    -   [Breaking Change](#Breaking-Change)
    -   [Updated dependencies](#Updated-dependencies)
-   [Change List](#Change-List)
    -   [larsoft v09\_22\_03](#larsoft-v09_22_03)
    -   [lareventdisplay v09\_01\_09](#lareventdisplay-v09_01_09)
    -   [larexamples v09\_01\_09](#larexamples-v09_01_09)
    -   [larpandora v09\_05\_10](#larpandora-v09_05_10)
    -   [larsimrad v09\_01\_09](#larsimrad-v09_01_09)
    -   [larrecodnn v09\_06\_08](#larrecodnn-v09_06_08)
    -   [larwirecell v09\_02\_07](#larwirecell-v09_02_07)
    -   [larana v09\_02\_05](#larana-v09_02_05)
    -   [larreco v09\_06\_05](#larreco-v09_06_05)
    -   [larsim v09\_13\_02](#larsim-v09_13_02)
    -   [larg4 v09\_03\_06](#larg4-v09_03_06)
    -   [larevt v09\_02\_05](#larevt-v09_02_05)
    -   [lardata v09\_02\_03](#lardata-v09_02_03)
    -   [larcore v09\_02\_01](#larcore-v09_02_01)
    -   [larpandoracontent v03\_22\_10](#larpandoracontent-v03_22_10)
    -   [larsoftobj v09\_05\_03](#larsoftobj-v09_05_03)
    -   [lardataobj v09\_01\_02](#lardataobj-v09_01_02)
    -   [lardataalg v09\_04\_03](#lardataalg-v09_04_03)
    -   [larcorealg v09\_01\_01](#larcorealg-v09_01_01)
    -   [larcoreobj v09\_02\_00](#larcoreobj-v09_02_00)
    -   [webevd v09\_05\_04](#webevd-v09_05_04)
    -   [larbatch v01\_56\_01](#larbatch-v01_56_01)
    -   [larutils v1\_28\_00](#larutils-v1_28_00)

[list of LArSoft releases](LArSoft_release_list)\
Download instructions for [larsoft v09\_22\_03](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v09_22_03/larsoft-v09_22_03.html)\
Download instructions for [just larsoftobj v09\_05\_03](http://scisoft.fnal.gov/scisoft/bundles/larsoftobj/v09_05_03/larsoftobj-v09_05_03.html)


Purpose[¶](#Purpose)
--------------------

-   provide updated h5cpp


New features[¶](#New-features)
------------------------------


Bug fixes[¶](#Bug-fixes)
------------------------

-   h5cpp v1\_10\_4\_6b
    -   h5cpp v1\_10\_4\_6b contains a fix to allow it to work with hdf5 1.12
    -   see [Incompatibility in usage of hdf5 and h5cpp prooducts](https://indico.fnal.gov/event/48790/contributions/213172/attachments/142282/179596/hdf5-2021-04-20.pdf)


Breaking Change[¶](#Breaking-Change)
------------------------------------

-   larsoft now uses debug qualified releases of hdf5 and hep\_hpc in the debug build.
    -   Previously, larsoft was only providing and using the prof build. Any ups/product\_deps file which includes hep\_hpc or hdf5 will need to be updated.
    -   The hdf5 debug libraries use \_debug in their name, e.g., hdf5\_debug instead of hdf5. find\_library calls in CMakeLists.txt files will need to be modified.
    -   **feature/lg\_hep\_hpc\_v0\_14\_01 is provided for dunetpc and argoneutcode**.


Updated dependencies[¶](#Updated-dependencies)
----------------------------------------------

-   h5cpp v1\_10\_4\_6b
    -   see [Incompatibility in usage of hdf5 and h5cpp prooducts](https://indico.fnal.gov/event/48790/contributions/213172/attachments/142282/179596/hdf5-2021-04-20.pdf)
-   hdf5 v1\_12\_0b now uses both debug and prof qualified builds as appropriate
-   hep\_hpc v0\_14\_01
-   hep\_hpc\_toolkit v0\_14\_01
-   h5py v3\_1\_0b
-   wirecell v0\_14\_0f


Change List[¶](#Change-List)
============================


larsoft v09\_22\_03[¶](#larsoft-v09_22_03)
------------------------------------------

-   2021-05-03 Lynn Garren : larsoft v09\_22\_03 for larsoft v09\_22\_03
-   2021-05-03 Lynn Garren : hep\_hpc v0\_14\_01, h5cpp v1\_10\_4\_6b, wirecell v0\_14\_0f


lareventdisplay v09\_01\_09[¶](#lareventdisplay-v09_01_09)
----------------------------------------------------------


larexamples v09\_01\_09[¶](#larexamples-v09_01_09)
--------------------------------------------------


larpandora v09\_05\_10[¶](#larpandora-v09_05_10)
------------------------------------------------


larsimrad v09\_01\_09[¶](#larsimrad-v09_01_09)
----------------------------------------------


larrecodnn v09\_06\_08[¶](#larrecodnn-v09_06_08)
------------------------------------------------


larwirecell v09\_02\_07[¶](#larwirecell-v09_02_07)
--------------------------------------------------

-   2021-05-03 Lynn Garren : larwirecell v09\_02\_07 for larsoft v09\_22\_03


larana v09\_02\_05[¶](#larana-v09_02_05)
----------------------------------------


larreco v09\_06\_05[¶](#larreco-v09_06_05)
------------------------------------------


larsim v09\_13\_02[¶](#larsim-v09_13_02)
----------------------------------------


larg4 v09\_03\_06[¶](#larg4-v09_03_06)
--------------------------------------


larevt v09\_02\_05[¶](#larevt-v09_02_05)
----------------------------------------


lardata v09\_02\_03[¶](#lardata-v09_02_03)
------------------------------------------


larcore v09\_02\_01[¶](#larcore-v09_02_01)
------------------------------------------


larpandoracontent v03\_22\_10[¶](#larpandoracontent-v03_22_10)
--------------------------------------------------------------


larsoftobj v09\_05\_03[¶](#larsoftobj-v09_05_03)
------------------------------------------------


lardataobj v09\_01\_02[¶](#lardataobj-v09_01_02)
------------------------------------------------


lardataalg v09\_04\_03[¶](#lardataalg-v09_04_03)
------------------------------------------------


larcorealg v09\_01\_01[¶](#larcorealg-v09_01_01)
------------------------------------------------


larcoreobj v09\_02\_00[¶](#larcoreobj-v09_02_00)
------------------------------------------------


webevd v09\_05\_04[¶](#webevd-v09_05_04)
----------------------------------------


larbatch v01\_56\_01[¶](#larbatch-v01_56_01)
--------------------------------------------


larutils v1\_28\_00[¶](#larutils-v1_28_00)
------------------------------------------
