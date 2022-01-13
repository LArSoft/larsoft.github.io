LArSoft v06_24_00 Release Notes
======================================================================

[list of LArSoft releases](LArSoft_release_list)
Download instructions for [larsoft v06_24_00](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v06_24_00/larsoft-v06_24_00.html)
Download instructions for [just larsoftobj v1_10_01](http://scisoft.fnal.gov/scisoft/bundles/larsoftobj/v1_10_01/larsoftobj-v1_10_01.html)

Purpose
--------------------

-   changes to develop
-   approved features

New features
------------------------------

-   larsim, uboonecode feature/zennamo_FunctionalFormFlux
    -   [slides](https://indico.fnal.gov/getFile.py/access?contribId=3&resId=0&materialId=slides&confId=13730)

Bug fixes
------------------------

-   Changed deprecation warning to be less intrusive (see issue [redmine issue 14281](https://cdcvs.fnal.gov/redmine/issues/14281) )

Updated dependencies
----------------------------------------------

||
|Product|Version|Qualifiers|Notes|
|nutools|v2_10_00|e10|[NuTools_Release_Notes](https://cdcvs.fnal.gov/redmine/projects/nutools/wiki/NuTools_Release_Notes#nutools-v2_10_00)|
|cetbuildtools|v5_06_06||recognize \*.tcc headers|

Change List
============================

larsoft v06_24_00
------------------------------------------

-   2017-02-07 Lynn Garren : larsoft v06_24_00 for larsoft v06_24_00
-   2017-02-07 Lynn Garren : no more special handling of lardata
-   2017-02-07 Lynn Garren : update product versions
-   2017-02-02 Lynn Garren : using correct syntax

lareventdisplay v06_02_12
----------------------------------------------------------

-   2017-02-07 Lynn Garren : lareventdisplay v06_02_12 for larsoft v06_24_00

larexamples v06_01_13
--------------------------------------------------

-   2017-02-07 Lynn Garren : larexamples v06_01_13 for larsoft v06_24_00

larpandora v06_06_01
------------------------------------------------

-   2017-02-07 Lynn Garren : larpandora v06_06_01 for larsoft v06_24_00

larwirecell v06_00_10
--------------------------------------------------

-   2017-02-07 Lynn Garren : larwirecell v06_00_10 for larsoft v06_24_00

larana v06_03_16
----------------------------------------

-   2017-02-07 Lynn Garren : larana v06_03_16 for larsoft v06_24_00
-   2017-02-03 Gianluca Petrillo : Fixed recob::Track deprecation warnings.

larreco v06_18_01
------------------------------------------

-   2017-02-07 Lynn Garren : larreco v06_18_01 for larsoft v06_24_00
-   2017-02-03 Gianluca Petrillo : Fixed recob::Track deprecation warnings.

larsim v06_12_00
----------------------------------------

-   2017-02-07 Lynn Garren : larsim v06_12_00 for larsoft v06_24_00
-   2017-02-07 Lynn Garren : Merge branch ‘feature/zennamo_FunctionalFormFlux’ into release/v06_24_00
-   2017-02-06 Gianluca Petrillo : MCReco module: release some memory after use.
-   2017-02-03 Joseph Zennamo : Merge branch ‘develop’ into feature/zennamo_FunctionalFormFlux
-   2017-02-02 Lynn Garren : larsoft v06_23_00
-   2017-02-02 Gianluca Petrillo : Random number engines update in CORSIKAGen module.
-   2017-01-31 Joseph Zennamo : Adding an explicit fcl parameter for the binning of the functional flux
-   2017-01-24 Joseph Zennamo : modified fcl parameters to work with a new nutools feature-branch (with same name) that allows users to define a functional form for the neutrino flux and generate events within a user defined energy range

larevt v06_07_07
----------------------------------------

-   2017-02-07 Lynn Garren : larevt v06_07_07 for larsoft v06_24_00

lardata v06_14_02
------------------------------------------

-   2017-02-07 Lynn Garren : lardata v06_14_02 for larsoft v06_24_00

larcore v06_05_02
------------------------------------------

larpandoracontent v03_02_00
--------------------------------------------------------------

-   2017-02-07 Lynn Garren : larpandoracontent v03_02_00 for larsoft v06_24_00
-   2017-02-07 Lynn Garren : larpandoracontent v03_02_00
-   2017-02-02 John Marshall : Merge branch ‘feature/LArShowerPfo’ into develop
-   2017-02-02 John Marshall : Remove unused LArShowerPfo variable.
-   2017-02-02 John Marshall : Deactivate existing, placeholder ShowerParticleBuilding algorithm for now.
-   2017-02-02 John Marshall : Add LArShowerPfo properties, to hold shower additional/derived shower properties whilst in Pandora.
-   2017-01-23 Lynn Garren : fix typo

larsoftobj v1_10_01
----------------------------------------------

-   2017-02-07 Lynn Garren : larsoftobj v1_10_01 for larsoft v06_24_00

lardataobj v1_10_01
----------------------------------------------

-   2017-02-07 Lynn Garren : lardataobj v1_10_01 for larsoft v06_24_00
-   2017-02-07 Lynn Garren : lardataobj v1_10_01 for larsoft v06_24_00
-   2017-02-06 Gianluca Petrillo : Exceptionally ignore warnings in unit tests testing deprecated methods.
-   2017-02-03 Gianluca Petrillo : Changed deprecation warning to be less intrusive (see issue [redmine issue 14281](https://cdcvs.fnal.gov/redmine/issues/14281) )

larcoreobj v1_06_02
----------------------------------------------

larbatch v01_26_05
--------------------------------------------

-   2017-02-07 Lynn Garren : larbatch v01_26_05 for larsoft v06_24_00
-   2017-02-06 Tingjun Yang : Improve deleting tempdir.

larutils v1_11_00
------------------------------------------
