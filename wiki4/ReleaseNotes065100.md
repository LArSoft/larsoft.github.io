LArSoft v06\_51\_00 Release Notes[¶](#LArSoft-v06_51_00-Release-Notes)
======================================================================

-   **Table of contents**
-   [LArSoft v06\_51\_00 Release Notes](#LArSoft-v06_51_00-Release-Notes)
    -   [Purpose](#Purpose)
    -   [New features](#New-features)
    -   [Bug fixes](#Bug-fixes)
    -   [Updated dependencies](#Updated-dependencies)
-   [Change List](#Change-List)
    -   [larsoft v06\_51\_00](#larsoft-v06_51_00)
    -   [lareventdisplay v06\_12\_03](#lareventdisplay-v06_12_03)
    -   [larexamples v06\_07\_02](#larexamples-v06_07_02)
    -   [larpandora v06\_16\_03](#larpandora-v06_16_03)
    -   [larwirecell v06\_07\_02](#larwirecell-v06_07_02)
    -   [larana v06\_10\_03](#larana-v06_10_03)
    -   [larreco v06\_40\_01](#larreco-v06_40_01)
    -   [larsim v06\_31\_02](#larsim-v06_31_02)
    -   [larevt v06\_16\_02](#larevt-v06_16_02)
    -   [lardata v06\_29\_00](#lardata-v06_29_00)
    -   [larcore v06\_15\_00](#larcore-v06_15_00)
    -   [larpandoracontent v03\_07\_05](#larpandoracontent-v03_07_05)
    -   [larsoftobj v1\_27\_01](#larsoftobj-v1_27_01)
    -   [lardataobj v1\_21\_01](#lardataobj-v1_21_01)
    -   [larcorealg v1\_07\_00](#larcorealg-v1_07_00)
    -   [larcoreobj v1\_16\_00](#larcoreobj-v1_16_00)
    -   [larbatch v01\_32\_05](#larbatch-v01_32_05)
    -   [larutils v1\_19\_02](#larutils-v1_19_02)

[list of LArSoft releases](LArSoft_release_list)\
Download instructions for [larsoft v06\_51\_00](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v06_51_00/larsoft-v06_51_00.html)\
Download instructions for [just larsoftobj v1\_27\_01](http://scisoft.fnal.gov/scisoft/bundles/larsoftobj/v1_27_01/larsoftobj-v1_27_01.html)


Purpose[¶](#Purpose)
--------------------

-   changes in develop
-   approved feature branch


New features[¶](#New-features)
------------------------------

-   lardata feature/gp\_TrackProxy
    -   implement the collection proxy feature in issues [\#17359](/redmine/issues/17359 "Task: Navigate track data product (Closed)") and [\#14060](/redmine/issues/14060 "Task: Provide ways to navigate associated data products in a seamless way (Closed)")


Bug fixes[¶](#Bug-fixes)
------------------------


Updated dependencies[¶](#Updated-dependencies)
----------------------------------------------


Change List[¶](#Change-List)
============================


larsoft v06\_51\_00[¶](#larsoft-v06_51_00)
------------------------------------------

-   2017-09-26 Lynn Garren : larsoft v06\_51\_00 for larsoft v06\_51\_00
-   2017-09-26 Lynn Garren : update product versions
-   2017-09-26 Lynn Garren : update dependency database


lareventdisplay v06\_12\_03[¶](#lareventdisplay-v06_12_03)
----------------------------------------------------------

-   2017-09-26 Lynn Garren : lareventdisplay v06\_12\_03 for larsoft v06\_51\_00


larexamples v06\_07\_02[¶](#larexamples-v06_07_02)
--------------------------------------------------

-   2017-09-26 Lynn Garren : larexamples v06\_07\_02 for larsoft v06\_51\_00


larpandora v06\_16\_03[¶](#larpandora-v06_16_03)
------------------------------------------------

-   2017-09-26 Lynn Garren : larpandora v06\_16\_03 for larsoft v06\_51\_00


larwirecell v06\_07\_02[¶](#larwirecell-v06_07_02)
--------------------------------------------------

-   2017-09-26 Lynn Garren : larwirecell v06\_07\_02 for larsoft v06\_51\_00


larana v06\_10\_03[¶](#larana-v06_10_03)
----------------------------------------

-   2017-09-26 Lynn Garren : larana v06\_10\_03 for larsoft v06\_51\_00


larreco v06\_40\_01[¶](#larreco-v06_40_01)
------------------------------------------

-   2017-09-26 Lynn Garren : larreco v06\_40\_01 for larsoft v06\_51\_00
-   2017-09-20 Lynn Garren : larsoft v06\_50\_00
-   2017-09-19 Giuseppe Cerati : improved documentation


larsim v06\_31\_02[¶](#larsim-v06_31_02)
----------------------------------------

-   2017-09-26 Lynn Garren : larsim v06\_31\_02 for larsoft v06\_51\_00
-   2017-09-25 Alex Himmel : Fix uninitialized variables causing library size to explode. Also, clean up indentation.


larevt v06\_16\_02[¶](#larevt-v06_16_02)
----------------------------------------

-   2017-09-26 Lynn Garren : larevt v06\_16\_02 for larsoft v06\_51\_00


lardata v06\_29\_00[¶](#lardata-v06_29_00)
------------------------------------------

-   2017-09-26 Lynn Garren : lardata v06\_29\_00 for larsoft v06\_51\_00
-   2017-09-23 Gianluca Petrillo : Minor fixes to Doxygen documentation.
-   2017-09-22 Gianluca Petrillo : Merge remote-tracking branch ‘origin/develop’ into feature/gp\_TrackProxy
-   2017-09-22 Gianluca Petrillo : Support of merging a whole proxy collection into a proxy.
-   2017-09-20 Giuseppe Cerati : Merge branch ‘feature/cerati\_docs’ into develop
-   2017-09-20 Giuseppe Cerati : improved documentation
-   2017-09-19 Giuseppe Cerati : improved documentation
-   2017-09-11 Gianluca Petrillo : Added support for direct use of data structures in proxies.
-   2017-09-07 Gianluca Petrillo : More revision of track proxy documentation.
-   2017-09-07 Gianluca Petrillo : No forgiveness: using lar::PtrMaker gives compilation errors.
-   2017-09-07 Gianluca Petrillo : Temporary legacy version of lar::PtrMaker for transition time.
-   2017-09-07 Gianluca Petrillo : Merge remote-tracking branch ‘origin/develop’ into feature/gp\_TrackProxy
-   2017-09-01 Gianluca Petrillo : Revision of Track proxy documentation.
-   2017-08-30 Gianluca Petrillo : Added support for parallel data structures in proxy.
-   2017-08-25 Gianluca Petrillo : Merge remote-tracking branch ‘origin/develop’ into feature/gp\_TrackProxy
-   2017-08-24 Gianluca Petrillo : New implementation of Track proxy.
-   2017-08-21 Gianluca Petrillo : Merge branch ‘develop’ into feature/gp\_TrackProxy
-   2017-08-18 Gianluca Petrillo : Temporary commit
-   2017-08-11 Gianluca Petrillo : Minor additions to CollectionView documentation.
-   2017-08-10 Gianluca Petrillo : Updated and sorted proxy::Tracks documentation.
-   2017-08-10 Gianluca Petrillo : Attempt to actually execute the static asserts.
-   2017-08-10 Gianluca Petrillo : TrackPoint structure now only holds reference to track proxy.
-   2017-08-10 Gianluca Petrillo : proxy::AssociatedData\<\> now returns ranges independent from it.
-   2017-08-08 Gianluca Petrillo : Documentation update.
-   2017-08-08 Gianluca Petrillo : Updating proxy::Tracks documentation
-   2017-08-08 Gianluca Petrillo : Merge branch ‘develop’ into feature/gp\_TrackProxy
-   2017-08-07 Gianluca Petrillo : First implementation of a collection proxy.
-   2017-08-03 Gianluca Petrillo : Added object to view two iterators as a collection.


larcore v06\_15\_00[¶](#larcore-v06_15_00)
------------------------------------------


larpandoracontent v03\_07\_05[¶](#larpandoracontent-v03_07_05)
--------------------------------------------------------------


larsoftobj v1\_27\_01[¶](#larsoftobj-v1_27_01)
----------------------------------------------

-   2017-09-26 Lynn Garren : larsoftobj v1\_27\_01 for larsoft v06\_51\_00
-   2017-09-26 Lynn Garren : update product versions


lardataobj v1\_21\_01[¶](#lardataobj-v1_21_01)
----------------------------------------------

-   2017-09-26 Lynn Garren : lardataobj v1\_21\_01 for larsoft v06\_51\_00
-   2017-09-19 Giuseppe Cerati : improved documentation


larcorealg v1\_07\_00[¶](#larcorealg-v1_07_00)
----------------------------------------------


larcoreobj v1\_16\_00[¶](#larcoreobj-v1_16_00)
----------------------------------------------


larbatch v01\_32\_05[¶](#larbatch-v01_32_05)
--------------------------------------------


larutils v1\_19\_02[¶](#larutils-v1_19_02)
------------------------------------------
