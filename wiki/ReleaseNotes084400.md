LArSoft v08\_44\_00 Release Notes(#LArSoft-v08_44_00-Release-Notes)
======================================================================

-   **Table of contents**
-   [LArSoft v08\_44\_00 Release Notes](#LArSoft-v08_44_00-Release-Notes)
    -   [Purpose](#Purpose)
    -   [Important Note](#Important-Note)
    -   [New features](#New-features)
    -   [Bug fixes](#Bug-fixes)
    -   [Updated dependencies](#Updated-dependencies)
-   [Change List](#Change-List)
    -   [larsoft v08\_44\_00](#larsoft-v08_44_00)
    -   [lareventdisplay v08\_12\_04](#lareventdisplay-v08_12_04)
    -   [larexamples v08\_06\_04](#larexamples-v08_06_04)
    -   [larg4 v08\_12\_02](#larg4-v08_12_02)
    -   [larpandora v08\_11\_04](#larpandora-v08_11_04)
    -   [larwirecell v08\_12\_04](#larwirecell-v08_12_04)
    -   [larana v08\_16\_04](#larana-v08_16_04)
    -   [larreco v08\_28\_01](#larreco-v08_28_01)
    -   [larsim v08\_20\_00](#larsim-v08_20_00)
    -   [larevt v08\_10\_04](#larevt-v08_10_04)
    -   [lardata v08\_14\_03](#lardata-v08_14_03)
    -   [larcore v08\_11\_00](#larcore-v08_11_00)
    -   [larpandoracontent v03\_15\_15](#larpandoracontent-v03_15_15)
    -   [larsoftobj v08\_27\_00](#larsoftobj-v08_27_00)
    -   [lardataobj v08\_10\_03](#lardataobj-v08_10_03)
    -   [lardataalg v08\_13\_03](#lardataalg-v08_13_03)
    -   [larcorealg v08\_21\_00](#larcorealg-v08_21_00)
    -   [larcoreobj v08\_10\_02](#larcoreobj-v08_10_02)
    -   [larbatch v01\_52\_02](#larbatch-v01_52_02)
    -   [larutils v1\_25\_07](#larutils-v1_25_07)

[list of LArSoft releases](LArSoft_release_list)\
Download instructions for [larsoft v08\_44\_00](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v08_44_00/larsoft-v08_44_00.html)\
Download instructions for [just larsoftobj v08\_27\_00](http://scisoft.fnal.gov/scisoft/bundles/larsoftobj/v08_27_00/larsoftobj-v08_27_00.html)

Purpose(#Purpose)
--------------------

-   changes in develop
-   approved PRs

Important Note(#Important-Note)
----------------------------------

This release is not available for macOS. There is a problem in the ROOT cmake config file which causes problems for macOS builds using the target-based ROOT libraries. A solution will be in place for the next release.

New features(#New-features)
------------------------------

-   Use target-based ROOT libraries
    -   e.g., ROOT::Core instead of \${ROOT\_CORE}
    -   lardata PR 4
    -   lardataobj PR 3
    -   larpandora PR 3
    -   larana PR 3
    -   lareventdisplay PR 3
    -   larreco PR 5
    -   larsim PR 5
    -   larevt PR 3
-   Making GeometryService and other services thread-safe
    -   [https://indico.fnal.gov/event/23434/contribution/1/material/slides/0.pdf](https://indico.fnal.gov/event/23434/contribution/1/material/slides/0.pdf)
    -   larcorealg PR 3
    -   larcore PR 3
    -   **breaking change:** use provided feature branch
    -   dunetpc, icaruscode, lariatsoft, sbndcode, ubcore, ubcrt feature/knoepfel\_threadsafe\_geometry
-   Rename larsim/LArG4 to larsim/LegacyLArG4
    -   [https://indico.fnal.gov/event/23434/contribution/3/material/slides/0.pdf](https://indico.fnal.gov/event/23434/contribution/3/material/slides/0.pdf)
    -   larsim PR 6
    -   larsoft PR 8
    -   **breaking change:** use UpdateToLegacyLarG4.sh
    -   only larsim and dunetpc are directly affected

Bug fixes(#Bug-fixes)
------------------------

Updated dependencies(#Updated-dependencies)
----------------------------------------------

Change List(#Change-List)
============================

larsoft v08\_44\_00(#larsoft-v08_44_00)
------------------------------------------

-   2020-02-26 Lynn Garren : larsoft v08\_44\_00 for larsoft v08\_44\_00
-   2020-02-26 Lynn Garren : product versions
-   2020-02-26 Lynn Garren : rename LegacyLarG4 directory with release
-   2020-02-19 Lynn Garren : remove trailing whitespace
-   2020-02-19 Lynn Garren : add LegacyLarG4 migration scripts
-   2020-02-17 Patrick Gartung : remove github actions
-   2020-02-17 Lynn Garren : add an optional stack suffix and get larbatch v01\_52\_02

lareventdisplay v08\_12\_04(#lareventdisplay-v08_12_04)
----------------------------------------------------------

-   2020-02-26 Lynn Garren : lareventdisplay v08\_12\_04 for larsoft v08\_44\_00
-   2020-02-25 Lynn Garren : Merge pull request [\#3](/redmine/issues/3 "Feature: Connect to Database with kerberos authentication (Rejected)") from knoepfel/feature/knoepfel\_cleanup\_cmake\_files
-   2020-02-20 Kyle Knoepfel : Update to target-based ROOT libraries
-   2020-02-17 Patrick Gartung : remove github actions

larexamples v08\_06\_04(#larexamples-v08_06_04)
--------------------------------------------------

-   2020-02-26 Lynn Garren : larexamples v08\_06\_04 for larsoft v08\_44\_00
-   2020-02-17 Patrick Gartung : remove github actions

larg4 v08\_12\_02(#larg4-v08_12_02)
--------------------------------------

-   2020-02-26 Lynn Garren : larg4 v08\_12\_02 for larsoft v08\_44\_00
-   2020-02-17 Patrick Gartung : remove github actions

larpandora v08\_11\_04(#larpandora-v08_11_04)
------------------------------------------------

-   2020-02-26 Lynn Garren : larpandora v08\_11\_04 for larsoft v08\_44\_00
-   2020-02-25 Lynn Garren : Merge pull request [\#3](/redmine/issues/3 "Feature: Connect to Database with kerberos authentication (Rejected)") from knoepfel/feature/knoepfel\_cleanup\_cmake\_files
-   2020-02-20 Kyle Knoepfel : Use target-based ROOT libraries.
-   2020-02-17 Patrick Gartung : remove github actions

larwirecell v08\_12\_04(#larwirecell-v08_12_04)
--------------------------------------------------

-   2020-02-26 Lynn Garren : larwirecell v08\_12\_04 for larsoft v08\_44\_00
-   2020-02-17 Patrick Gartung : remove github actions

larana v08\_16\_04(#larana-v08_16_04)
----------------------------------------

-   2020-02-26 Kyle Knoepfel : Add ART\_UTILITIES library dependency.
-   2020-02-26 Lynn Garren : larana v08\_16\_04 for larsoft v08\_44\_00
-   2020-02-25 Lynn Garren : Merge pull request [\#3](/redmine/issues/3 "Feature: Connect to Database with kerberos authentication (Rejected)") from knoepfel/feature/knoepfel\_cleanup\_cmake\_files
-   2020-02-20 Kyle Knoepfel : Update to target-based ROOT libraries
-   2020-02-17 Patrick Gartung : Remove github actions

larreco v08\_28\_01(#larreco-v08_28_01)
------------------------------------------

-   2020-02-26 Kyle Knoepfel : Add ART\_UTILITIES library dependency.
-   2020-02-26 Lynn Garren : larreco v08\_28\_01 for larsoft v08\_44\_00
-   2020-02-25 Lynn Garren : Merge branch ‘feature/knoepfel\_threadsafe\_geometry’ into release/v08\_44\_00
-   2020-02-20 Kyle Knoepfel : More target-based ROOT dependencies.
-   2020-02-17 Patrick Gartung : remove github actions
-   2020-02-17 Kyle Knoepfel : Add missing library dependencies.

larsim v08\_20\_00(#larsim-v08_20_00)
----------------------------------------

-   2020-02-26 Lynn Garren : larsim v08\_20\_00 for larsoft v08\_44\_00
-   2020-02-26 Lynn Garren : LegacyLArG4
-   2020-02-25 Lynn Garren : Merge branch ‘feature/knoepfel\_threadsafe\_geometry’ into release/v08\_44\_00
-   2020-02-17 Patrick Gartung : remove github actions
-   2020-02-17 Kyle Knoepfel : Add missing library dependencies.

larevt v08\_10\_04(#larevt-v08_10_04)
----------------------------------------

-   2020-02-26 Lynn Garren : larevt v08\_10\_04 for larsoft v08\_44\_00
-   2020-02-25 Lynn Garren : Merge branch ‘feature/knoepfel\_threadsafe\_geometry’ into release/v08\_44\_00
-   2020-02-17 Patrick Gartung : remove github actions
-   2020-02-17 Kyle Knoepfel : Add missing library dependencies.

lardata v08\_14\_03(#lardata-v08_14_03)
------------------------------------------

-   2020-02-26 Lynn Garren : add missing library
-   2020-02-26 Lynn Garren : lardata v08\_14\_03 for larsoft v08\_44\_00
-   2020-02-25 Lynn Garren : Merge pull request [\#4](/redmine/issues/4 "Feature: Postgres database  (Closed)") from knoepfel/feature/knoepfel\_cleanup\_cmake\_files
-   2020-02-20 Kyle Knoepfel : Use target-based ROOT libraries.
-   2020-02-17 Patrick Gartung : remove github actions

larcore v08\_11\_00(#larcore-v08_11_00)
------------------------------------------

-   2020-02-26 Lynn Garren : larcore v08\_11\_00 for larsoft v08\_44\_00
-   2020-02-25 Lynn Garren : Merge branch ‘feature/knoepfel\_threadsafe\_geometry’ into release/v08\_44\_00
-   2020-02-20 Kyle Knoepfel : Use target-based ROOT libraries.
-   2020-02-17 Patrick Gartung : remove github actions
-   2020-02-14 Kyle Knoepfel : Make (AuxDet)ExptGeoHelperInterface thread-safe.
-   2020-02-14 Kyle Knoepfel : Make Geometry service callback private.
-   2020-02-13 Kyle Knoepfel : Add class that requires only one art schedule.

larpandoracontent v03\_15\_15(#larpandoracontent-v03_15_15)
--------------------------------------------------------------

larsoftobj v08\_27\_00(#larsoftobj-v08_27_00)
------------------------------------------------

-   2020-02-26 Lynn Garren : larsoftobj v08\_27\_00 for larsoft v08\_44\_00
-   2020-02-26 Lynn Garren : product versions
-   2020-02-17 Patrick Gartung : remove github actions

lardataobj v08\_10\_03(#lardataobj-v08_10_03)
------------------------------------------------

-   2020-02-26 Lynn Garren : lardataobj v08\_10\_03 for larsoft v08\_44\_00
-   2020-02-25 Lynn Garren : Merge pull request [\#3](/redmine/issues/3 "Feature: Connect to Database with kerberos authentication (Rejected)") from knoepfel/feature/knoepfel\_cleanup\_cmake\_files
-   2020-02-20 Kyle Knoepfel : Use target-based ROOT libraries.
-   2020-02-17 Patrick Gartung : remove github actions

lardataalg v08\_13\_03(#lardataalg-v08_13_03)
------------------------------------------------

-   2020-02-26 Lynn Garren : lardataalg v08\_13\_03 for larsoft v08\_44\_00
-   2020-02-17 Patrick Gartung : remove github actions

larcorealg v08\_21\_00(#larcorealg-v08_21_00)
------------------------------------------------

-   2020-02-26 Lynn Garren : larcorealg v08\_21\_00 for larsoft v08\_44\_00
-   2020-02-25 Lynn Garren : Merge branch ‘feature/knoepfel\_threadsafe\_geometry’ into release/v08\_44\_00
-   2020-02-20 Kyle Knoepfel : Remove trailing whitespace.
-   2020-02-20 Kyle Knoepfel : Use target-based ROOT libraries.
-   2020-02-17 Patrick Gartung : remove github actions
-   2020-02-14 Kyle Knoepfel : Use cet::square instead of home-grown version.
-   2020-02-14 Kyle Knoepfel : Change to by-value ownership of geometry collections
-   2020-02-14 Kyle Knoepfel : (AuxDet)GeometryCore now exclusively owns the channel map.

larcoreobj v08\_10\_02(#larcoreobj-v08_10_02)
------------------------------------------------

larbatch v01\_52\_02(#larbatch-v01_52_02)
--------------------------------------------

-   2020-02-17 Lynn Garren : larbatch v01\_52\_02 fixes bug \#7
-   2020-02-17 Fermilab build bot account : Merge pull request \#8 from hgreenlee/develop
-   2020-02-17 Herbert Greenlee : Remove problematic sorted functions in rootstat.py.

larutils v1\_25\_07(#larutils-v1_25_07)
------------------------------------------
