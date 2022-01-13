LArSoft v08_48_01 Release Notes
======================================================================

[list of LArSoft releases](LArSoft_release_list)
Download instructions for [larsoft v08_48_01](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v08_48_01/larsoft-v08_48_01.html)
Download instructions for [just larsoftobj v08_27_04](http://scisoft.fnal.gov/scisoft/bundles/larsoftobj/v08_27_04/larsoftobj-v08_27_04.html)

Purpose
--------------------

-   changes in develop
-   approved PRs

Updated Rayleigh and R index for LAr
------------------------------------------------------------------------------

-   lardataalg PR 5
-   The values for Rayleigh scattering and refractive index for LAr have been recently measured with greater precision. There is growing evidence that points to a value of around 90-100 cm for scattering at 128 nm instead of the \~60 cm currently in lardataalg. Those values influence quite a lot the outcome for the light that is going to be recorded by the photon detectors in the experiments. Alex Himmel suggested that updating this in Larsoft instead of only in dunetpc could be of interest among all experiments that base their codes on Larsoft. The updated measures are consistent with the ones presented in arXiv:2002.09346.
-   This change will affect the creation of photon libraries and parameterizations in the future, but it won’t affect any running simulation in LArSoft since we aren’t changing the libraries or parameterizations. DUNE has actually had longer scattering lengths in our parameterizations for some time, and this commit would bring the current state of the code in line with the way the simulations have been running.
-   In the SBN PDS working group meetings we have already discussed the new measurements, and we believe updating the index of refraction and Rayleigh scattering spectra obtained with the constrains coming form the recent group velocity measurements is the right way to follow. We are also planning to update soon our optical-libraries and semi-analytic corrections for the light simulation accordingly.

New features
------------------------------

-   larpandoracontent v03_15_16
    -   larpandoracontent PR 3
    -   This is a set of related features that have converged ready for a new development push for two-view LArTPCs (so e.g. ProtoDUNE-DP or recovery mode for a single-phase LArTPC). The changelog snippet, with links to individual pull requests on PandoraPFA/LArContent are linked here. No change in behaviour is expected, with these features enabling new developments.

Bug fixes
------------------------

Updated dependencies
----------------------------------------------

-   pygccxml v1_9_1b
    -   included in larsoft distribution for the first time
    -   This product is not setup automatically.

Change List
============================

larsoft v08_48_01
------------------------------------------

-   2020-04-01 Lynn Garren : larsoft v08_48_01 for larsoft v08_48_01
-   2020-04-01 Lynn Garren : product versions
-   2020-03-30 Lynn Garren : Merge pull request \#11 from lgarren/develop
-   2020-03-30 Lynn Garren : provide pygccxml in the product stack

lareventdisplay v08_12_09
----------------------------------------------------------

-   2020-04-01 Lynn Garren : lareventdisplay v08_12_09 for larsoft v08_48_01

larexamples v08_06_09
--------------------------------------------------

-   2020-04-01 Lynn Garren : larexamples v08_06_09 for larsoft v08_48_01

larg4 v08_12_07
--------------------------------------

-   2020-04-01 Lynn Garren : larg4 v08_12_07 for larsoft v08_48_01

larpandora v08_12_01
------------------------------------------------

-   2020-04-01 Lynn Garren : larpandora v08_12_01 for larsoft v08_48_01

larrecodnn v08_01_02
------------------------------------------------

-   2020-04-01 Lynn Garren : larrecodnn v08_01_02 for larsoft v08_48_01

larwirecell v08_12_08
--------------------------------------------------

-   2020-04-01 Lynn Garren : larwirecell v08_12_08 for larsoft v08_48_01

larana v08_17_01
----------------------------------------

-   2020-04-01 Lynn Garren : larana v08_17_01 for larsoft v08_48_01

larreco v08_30_01
------------------------------------------

-   2020-04-01 Lynn Garren : larreco v08_30_01 for larsoft v08_48_01

larsim v08_22_01
----------------------------------------

-   2020-04-01 Lynn Garren : larsim v08_22_01 for larsoft v08_48_01

larevt v08_11_01
----------------------------------------

-   2020-04-01 Lynn Garren : larevt v08_11_01 for larsoft v08_48_01

lardata v08_15_01
------------------------------------------

-   2020-04-01 Lynn Garren : lardata v08_15_01 for larsoft v08_48_01

larcore v08_11_02
------------------------------------------

larpandoracontent v03_15_16
--------------------------------------------------------------

-   2020-04-01 Lynn Garren : larpandoracontent v03_15_16 for larsoft v08_48_01
-   2020-03-30 Lynn Garren : Merge pull request [redmine issue 3](https://cdcvs.fnal.gov/redmine/issues/3) from PandoraPFA/feature/larpandoracontent_v03_15_16
-   2020-03-30 John Marshall : Merge branch ‘updates’
-   2020-03-30 John Marshall : Update version and change log.
-   2020-03-30 John Marshall : Remove whitespace.
-   2020-03-30 John Marshall : Merge branch ‘feature/TwoViewMatchingUpdate’
-   2020-03-26 John Marshall : pCluster3 argument in CalculateOverlapResult is optional.
-   2020-03-20 John Marshall : Overhaul cluster preparation step to handle failures during preparatory work.
-   2020-03-20 John Marshall : Legacy functionality for ThreeViewTrackFragments algorithm.
-   2020-03-20 John Marshall : Cosmetic.
-   2020-03-20 John Marshall : Remove duplicate member, now inherited from NViewMatchingControl.
-   2020-03-20 John Marshall : Restrict access to matching control. Algs only have full access to the overlap container.
-   2020-03-20 John Marshall : Add NViewMatchingControl base class.
-   2020-03-20 John Marshall : Rename MatchingContainer classes to MatchingControl.
-   2020-03-20 John Marshall : Cosmetic.
-   2020-03-20 John Marshall : Resolve all but one ThreeViewTrackFragments algorithm issues. Clarify TODOs.
-   2020-03-20 John Marshall : Continued progress. Now builds, Fragments alg to be sorted. Major TODO is CalculateOverlapResult.
-   2020-03-19 John Marshall : Cosmetic.
-   2020-03-19 John Marshall : Experimental restructuring.
-   2020-03-27 John Marshall : Merge branch ‘updates’
-   2020-03-27 John Marshall : Unused variable in case when building with monitoring off.
-   2020-03-27 John Marshall : Tidy up contents of pfo info map when adjusting vertex.
-   2020-03-25 John Marshall : Merge branch ‘feature/UnfoldingMCParticleHierarchy’
-   2020-03-23 Isobel Mawby : removal of empty line
-   2020-03-23 Isobel Mawby : whitespace removal
-   2020-03-23 Isobel Mawby : 23rd March PR updates
-   2020-03-18 Isobel Mawby : indentation fix
-   2020-03-18 Isobel Mawby : pull request changes - ternary operators
-   2020-03-16 Isobel Mawby : updating hierarchy unfolding functionality
-   2020-03-12 John Marshall : Cosmetic.
-   2020-01-22 Isobel Mawby : Added hit unfolding functionality
-   2020-03-20 John Marshall : Merge branch ‘feature/TwoViewMatching’
-   2020-03-20 John Marshall : Add new directory to CMakeLists.txt
-   2020-03-17 John Marshall : Cosmetic.
-   2020-03-11 John Marshall : Specify explicit hash for HitTypeToIndexMap.
-   2020-03-09 John Marshall : Add example TransverseMatrixVisualization and TwoViewClearTracks tools.
-   2020-03-09 John Marshall : ProtoParticle now only holds a single cluster list.
-   2020-03-09 John Marshall : Add first example two-view matching algorithm and tool.
-   2020-03-09 John Marshall : Rename ExamineTensor -\> ExamineOverlapContainer. Add SetParticleId function.
-   2020-03-05 John Marshall : Cosmetic.
-   2020-03-04 John Marshall : Cosmetic change to LArOverlapTensor class.
-   2020-03-04 John Marshall : Use LArOverlapMatrix class.
-   2020-03-04 John Marshall : Add LArOverlapMatrix class.
-   2020-03-04 John Marshall : Move cluster-splitting functionality to matching base class.
-   2020-03-04 John Marshall : Rename three-view matching algorithms.
-   2020-03-03 John Marshall : Added two-view and three-view matching algorithms, and matching base algorithm.
-   2020-03-12 John Marshall : Merge branch ‘feature/TwoDMetricsExample’
-   2020-03-11 John Marshall : Allow validation algorithms to read all primary selection parameters from xml.
-   2020-03-12 John Marshall : Merge branch ‘feature/MvaPfoCharacterisation’
-   2020-03-12 John Marshall : Template PfoCharacterisation algorithm on mva type.
-   2020-02-17 Patrick Gartung : remove github actions

larsoftobj v08_27_04
------------------------------------------------

-   2020-04-01 Lynn Garren : larsoftobj v08_27_04 for larsoft v08_48_01
-   2020-04-01 Lynn Garren : product versions

lardataobj v08_10_05
------------------------------------------------

lardataalg v08_13_07
------------------------------------------------

-   2020-04-01 Lynn Garren : lardataalg v08_13_07 for larsoft v08_48_01
-   2020-04-01 Lynn Garren : Merge pull request [redmine issue 5](https://cdcvs.fnal.gov/redmine/issues/5) from lpaulucc/feature/lp_rayleigh90cm
-   2020-03-26 Laura Paulucci : Removing empty space
-   2020-03-26 Laura Paulucci : Updating Rayleigh and R index for LAr

larcorealg v08_21_02
------------------------------------------------

larcoreobj v08_10_04
------------------------------------------------

larbatch v01_52_02
--------------------------------------------

larutils v1_25_09
------------------------------------------

-   2020-04-01 Lynn Garren : larutils v1_25_09 for larsoft v08_48_01
-   2020-03-30 Lynn Garren : Merge pull request [redmine issue 4](https://cdcvs.fnal.gov/redmine/issues/4) from lgarren/develop
-   2020-03-30 Lynn Garren : need to recognize s69
