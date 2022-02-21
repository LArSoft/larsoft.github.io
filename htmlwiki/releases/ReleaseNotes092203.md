LArSoft v09_22_03 Release Notes
======================================================================

[list of LArSoft releases](LArSoft_release_list)
Download instructions for [larsoft v09_22_03](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v09_22_03/larsoft-v09_22_03.html)
Download instructions for [just larsoftobj v09_05_03](http://scisoft.fnal.gov/scisoft/bundles/larsoftobj/v09_05_03/larsoftobj-v09_05_03.html)

Purpose
--------------------

-   provide updated h5cpp

New features
------------------------------

Bug fixes
------------------------

-   h5cpp v1_10_4_6b
    -   h5cpp v1_10_4_6b contains a fix to allow it to work with hdf5 1.12
    -   see [Incompatibility in usage of hdf5 and h5cpp prooducts](https://indico.fnal.gov/event/48790/contributions/213172/attachments/142282/179596/hdf5-2021-04-20.pdf)

Breaking Change
------------------------------------

-   larsoft now uses debug qualified releases of hdf5 and hep_hpc in the debug build.
    -   Previously, larsoft was only providing and using the prof build. Any ups/product_deps file which includes hep_hpc or hdf5 will need to be updated.
    -   The hdf5 debug libraries use _debug in their name, e.g., hdf5_debug instead of hdf5. find_library calls in CMakeLists.txt files will need to be modified.
    -   **feature/lg_hep_hpc_v0_14_01 is provided for dunetpc and argoneutcode**.

Updated dependencies
----------------------------------------------

-   h5cpp v1_10_4_6b
    -   see [Incompatibility in usage of hdf5 and h5cpp prooducts](https://indico.fnal.gov/event/48790/contributions/213172/attachments/142282/179596/hdf5-2021-04-20.pdf)
-   hdf5 v1_12_0b now uses both debug and prof qualified builds as appropriate
-   hep_hpc v0_14_01
-   hep_hpc_toolkit v0_14_01
-   h5py v3_1_0b
-   wirecell v0_14_0f

Change List
============================

larsoft v09_22_03
------------------------------------------

-   2021-05-03 Lynn Garren : larsoft v09_22_03 for larsoft v09_22_03
-   2021-05-03 Lynn Garren : hep_hpc v0_14_01, h5cpp v1_10_4_6b, wirecell v0_14_0f

lareventdisplay v09_01_09
----------------------------------------------------------

larexamples v09_01_09
--------------------------------------------------

larpandora v09_05_10
------------------------------------------------

larsimrad v09_01_09
----------------------------------------------

larrecodnn v09_06_08
------------------------------------------------

larwirecell v09_02_07
--------------------------------------------------

-   2021-05-03 Lynn Garren : larwirecell v09_02_07 for larsoft v09_22_03

larana v09_02_05
----------------------------------------

larreco v09_06_05
------------------------------------------

larsim v09_13_02
----------------------------------------

larg4 v09_03_06
--------------------------------------

larevt v09_02_05
----------------------------------------

lardata v09_02_03
------------------------------------------

larcore v09_02_01
------------------------------------------

larpandoracontent v03_22_10
--------------------------------------------------------------

larsoftobj v09_05_03
------------------------------------------------

lardataobj v09_01_02
------------------------------------------------

lardataalg v09_04_03
------------------------------------------------

larcorealg v09_01_01
------------------------------------------------

larcoreobj v09_02_00
------------------------------------------------

webevd v09_05_04
----------------------------------------

larbatch v01_56_01
--------------------------------------------

larutils v1_28_00
------------------------------------------
