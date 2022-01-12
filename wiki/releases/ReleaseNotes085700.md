LArSoft v08\_57\_00 Release Notes
======================================================================

-   **Table of contents**
-   [LArSoft v08\_57\_00 Release Notes](#LArSoft-v08_57_00-Release-Notes)
    -   [Purpose](#Purpose)
    -   [New features](#New-features)
    -   [Bug fixes](#Bug-fixes)
    -   [Updated dependencies](#Updated-dependencies)
-   [Change List](#Change-List)
    -   [larsoft v08\_57\_00](#larsoft-v08_57_00)
    -   [lareventdisplay v08\_12\_20](#lareventdisplay-v08_12_20)
    -   [larexamples v08\_06\_20](#larexamples-v08_06_20)
    -   [larg4 v08\_14\_06](#larg4-v08_14_06)
    -   [larpandora v08\_13\_00](#larpandora-v08_13_00)
    -   [larrecodnn v08\_06\_00](#larrecodnn-v08_06_00)
    -   [larwirecell v08\_12\_16](#larwirecell-v08_12_16)
    -   [larana v08\_17\_12](#larana-v08_17_12)
    -   [larreco v08\_32\_05](#larreco-v08_32_05)
    -   [larsim v08\_28\_01](#larsim-v08_28_01)
    -   [larevt v08\_12\_00](#larevt-v08_12_00)
    -   [lardata v08\_15\_09](#lardata-v08_15_09)
    -   [larcore v08\_11\_10](#larcore-v08_11_10)
    -   [larpandoracontent v03\_17\_00](#larpandoracontent-v03_17_00)
    -   [larsoftobj v08\_29\_02](#larsoftobj-v08_29_02)
    -   [lardataobj v08\_11\_02](#lardataobj-v08_11_02)
    -   [lardataalg v08\_13\_14](#lardataalg-v08_13_14)
    -   [larcorealg v08\_22\_02](#larcorealg-v08_22_02)
    -   [larcoreobj v08\_12\_01](#larcoreobj-v08_12_01)
    -   [webevd v08\_00\_07](#webevd-v08_00_07)
    -   [larbatch v01\_52\_02](#larbatch-v01_52_02)
    -   [larutils v1\_26\_00](#larutils-v1_26_00)

[list of LArSoft releases](LArSoft_release_list)
Download instructions for [larsoft v08\_57\_00](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v08_57_00/larsoft-v08_57_00.html)
Download instructions for [just larsoftobj v08\_29\_02](http://scisoft.fnal.gov/scisoft/bundles/larsoftobj/v08_29_02/larsoftobj-v08_29_02.html)

Purpose
--------------------

-   changes in develop
-   approved PRs

New features
------------------------------

-   larpandora PR 8
    -   This pull request contains features enabling Pandora to create new detector gaps for the ProtoDUNE DP geometry. These correspond to LEM and CRP gaps. The changes should not impact other detector geometries.
    -   The new features were presented in the ProtoDUNE DP session at the DUNE Physics Week. Here a link to the [talk](https://indico.fnal.gov/event/24397/contributions/188598/attachments/129259/156741/PresentationCollabMeeting_June2020.pdf).
-   larrecodnn PR 5
    -   Add Mike’s module to dump raw waveform for ROI finding network training
-   larpandoracontent PR 7
    -   This pull request contains the latest set of larcontent features, mostly providing updates for two-view LArTPC reconstruction. Additionally, the c++ standard is bumped to c++17. The latest changelog and links to the contributing larcontent pull requests can be found below.
    -   The changes should not impact any experiment output unless experiments enable the new algorithms in their configuration XML.
        The bulk of the commits/changes are related to expanding the 2D-\>3D matching for two-view LArTPCs; the matching now calculates calorimetry-based matching metrics which are starting to be used in the two-view 2D-\>3D matching process.
    -   To enable the new matching features in dunetpc, feature/newPandoraDPfeature\_caloMatching will need to be included in the dunetpc release immediately following the merge of this PR.
-   larg4 PR 12
    -   Added ParticleListActionService configuration parameter to enable trajectory sparsification for MCParticles to reduce memory consumption in the ROOT output stage. If enabled this applies only to particles with full trajectories (as opposed to being called for all particles including those with only a start and and end point)

Bug fixes
------------------------

-   larsim PR 27
    -   Normally LightSource module produces each photon on a randomised location offset from a central location.
    -   Previous PR wrote the central location to the event, instead of the randomised one.
    -   This is a one line bug fix.
-   larsoft PR 14
    -   bug fixes for the larwire distribution

Updated dependencies
----------------------------------------------

Change List
============================

larsoft v08\_57\_00
------------------------------------------

-   2020-07-08 Lynn Garren : larsoft v08\_57\_00 for larsoft v08\_57\_00
-   2020-07-08 Lynn Garren : product versions
-   2020-07-02 Lynn Garren : Merge pull request \#14 from lgarren/feature/lg\_more\_larwire
-   2020-07-02 Lynn Garren : adding libwda and art\_root\_io, and fixing pyqual

lareventdisplay v08\_12\_20
----------------------------------------------------------

-   2020-07-08 Lynn Garren : lareventdisplay v08\_12\_20 for larsoft v08\_57\_00

larexamples v08\_06\_20
--------------------------------------------------

-   2020-07-08 Lynn Garren : larexamples v08\_06\_20 for larsoft v08\_57\_00

larg4 v08\_14\_06
--------------------------------------

-   2020-07-08 Lynn Garren : larg4 v08\_14\_06 for larsoft v08\_57\_00
-   2020-07-07 Lynn Garren : Merge pull request \#12 from drivera-fnal/feature\_drivera\_sparsify\_trajectories
-   2020-07-06 David Rivera : Merge branch ‘develop’ of github.com:LArSoft/larg4 into feature\_drivera\_sparsify\_trajectories (pull in changes from larsoft\_suite\_v08\_56\_00 and develop HEAD )
-   2020-07-06 David Rivera : Added fhicl parameter to enable simb::MCParticle::SparsifyTrajectory() method to be called on particles with full trajectories to reduce memory usage.

larpandora v08\_13\_00
------------------------------------------------

-   2020-07-08 Lynn Garren : m\_maxGapSize is unused
-   2020-07-08 Lynn Garren : larpandora v08\_13\_00 for larsoft v08\_57\_00
-   2020-07-08 Lynn Garren : Merge pull request \#8 from PandoraPFA/feature/ProtoDUNEDualPhaseGaps
-   2020-07-08 Etienne Chardonnet : In LArPandoraInput.cxx: Removed explicit cast L357 – replaced try/catch L250-258 by requested if statement
-   2020-07-08 Etienne Chardonnet : In LArPandoraGeometry: Added noexcept to MaxGapSize static function – Replaced flagged push\_backs by emplace\_backs
-   2020-07-06 Etienne Chardonnet : used removedWhiteSpace.sh
-   2020-07-03 Etienne Chardonnet : Implemented all comments from PR – Especially, created a member variable m\_maxGapSize for LArDetectorGap class
-   2020-06-29 Etienne Chardonnet : Modified LArPandoraGeometry and LArPandoraInput to include DP gaps together with SP gaps
-   2020-06-01 Maria Brigida Brunetti : Shorten crp gaps to match drift volume X width
-   2020-05-20 Maria Brigida Brunetti : Fix bug and add condition to only add CRP gaps if detector is DP and has 4 TPCs (corresponding to CRPs in DP)
-   2020-05-20 Maria Brigida Brunetti : Move CRP gaps to correct method
-   2020-05-20 Maria Brigida Brunetti : Add gaps between CRPs for ProtoDUNE DP
-   2020-05-20 Etienne Chardonnet : Added unpolished LEM gaps in LArPandora.Input.cxx
-   2020-06-29 Etienne Chardonnet : Modified LArPandoraGeometry and LArPandoraInput to include DP gaps together with SP gaps
-   2020-06-01 Maria Brigida Brunetti : Shorten crp gaps to match drift volume X width
-   2020-05-20 Maria Brigida Brunetti : Fix bug and add condition to only add CRP gaps if detector is DP and has 4 TPCs (corresponding to CRPs in DP)
-   2020-05-20 Maria Brigida Brunetti : Move CRP gaps to correct method
-   2020-05-20 Maria Brigida Brunetti : Add gaps between CRPs for ProtoDUNE DP
-   2020-05-20 Etienne Chardonnet : Added unpolished LEM gaps in LArPandora.Input.cxx

larrecodnn v08\_06\_00
------------------------------------------------

-   2020-07-08 Lynn Garren : larrecodnn v08\_06\_00 for larsoft v08\_57\_00
-   2020-07-07 Lynn Garren : Merge pull request [\#5](/redmine/issues/5 "Feature: NIMROD extended to Accelerator Division (New)") from yangtj207/develop
-   2020-04-28 Tingjun Yang : Use smart pointer.
-   2020-04-28 Tingjun Yang : addressing comments
-   2020-04-28 Tingjun Yang : Add option to save noise.
-   2020-04-27 Tingjun Yang : Remove white space.
-   2020-04-27 Tingjun Yang : Add Mike’s module to dump raw waveform info for ROI finding network training.

larwirecell v08\_12\_16
--------------------------------------------------

larana v08\_17\_12
----------------------------------------

-   2020-07-08 Lynn Garren : larana v08\_17\_12 for larsoft v08\_57\_00

larreco v08\_32\_05
------------------------------------------

-   2020-07-08 Lynn Garren : larreco v08\_32\_05 for larsoft v08\_57\_00

larsim v08\_28\_01
----------------------------------------

-   2020-07-08 Lynn Garren : larsim v08\_28\_01 for larsoft v08\_57\_00
-   2020-07-03 Lynn Garren : Merge pull request \#27 from PetrilloAtWork/feature/gp\_LightSource
-   2020-07-02 Gianluca Petrillo : LightSource bug fix: random generation location restored

larevt v08\_12\_00
----------------------------------------

lardata v08\_15\_09
------------------------------------------

larcore v08\_11\_10
------------------------------------------

larpandoracontent v03\_17\_00
--------------------------------------------------------------

-   2020-07-08 Lynn Garren : larpandoracontent v03\_17\_00 for larsoft v08\_57\_00
-   2020-07-07 Lynn Garren : Merge pull request \#7 from PandoraPFA/feature/larpandoracontent\_v03\_17\_00
-   2020-07-02 Dom Brailsford : Update changelog.
-   2020-07-02 Dom Brailsford : Bug fix: initialise m\_matchingScore in the empty base constructor.
-   2020-07-02 Andrew Chappell : Explicitly check dynamic cast worked
-   2020-07-01 Andrew Chappell : Remove coverage checks from cron
-   2020-07-01 Andrew Chappell : Update cron docker container
-   2020-07-01 Andrew Chappell : Merge remote-tracking branch ‘dom/feature/larpandoracontent\_v03\_17\_00’ into feature/larpandoracontent\_v03\_17\_00
-   2020-06-26 Dom Brailsford : Sanity/bounds checks on some variables before using them. Style/cosmetic changes. Include a AllFloatInputData typedef.
-   2020-06-26 Dom Brailsford : Read in params from XML
-   2020-06-26 Dom Brailsford : Cosmetic/style changes.
-   2020-06-26 Dom Brailsford : tiny bug fix. Check that the view1 span is greater than 0 when checking the view1 overlap fraction (it was originally checking view0)
-   2020-06-26 Dom Brailsford : Have the TwoViewXOverlap object calculate the overlap span during construction, rather than having it passed pre-calculated in the constructor argument list. This required a change to the constructor argument list (dropped an argument), so few header/source files have changed.
-   2020-06-26 Dom Brailsford : Correct linebreak.
-   2020-06-25 Dom Brailsford : XML text and c++ same name
-   2020-06-25 Dom Brailsford : Style, cosmetics and small optimisations.
-   2020-06-25 Dom Brailsford : Make the upperLimit a function argument
-   2020-06-25 Dom Brailsford : size\_t to unsigned int. Space after comma in arguments. Real float checks.
-   2020-06-15 Dom Brailsford : RNG as member variable. Initialise the seed to the sum of the cluster hits (was bugged, pCluster2 hits were self-added), in the overridden function, before all of the matching machinery is called. This is done to try and avoid code changes allowing an non-reset seed passing through to the matching functions
-   2020-06-03 Dom Brailsford : Drop redundant lines/functions.
-   2020-06-03 Dom Brailsford : Use a well defined, reproducible random seed. There’s now no need to store the random objects as member variables. static\_cast to the type needed for the random seed.
-   2020-06-03 Dom Brailsford : Style changes. Small optimisation tweak.
-   2020-06-03 Dom Brailsford : Only calculate width when the width is needed
-   2020-06-02 Dom Brailsford : Style changes. Small fixes. Includes changing an unsigned int to an int for easier bounds checking.
-   2020-06-02 Dom Brailsford : Drop downsampling value
-   2020-06-01 Dom Brailsford : Style changes. Swap to c++-style casts.
-   2020-06-01 Dom Brailsford : Move functions to implementation file. Fix the compilation error (signed to unsigned in for loop) that appears now that it’s in its own implementation file. Include the missing header in the header file.
-   2020-06-01 Dom Brailsford : Various small cosmetic changes and tidyings to make the code more inkeeping with the pandora style.
-   2020-06-01 Dom Brailsford : Change function names to reflect numbered rather than lettered views
-   2020-05-29 Dom Brailsford : Remove redundant and old code.
-   2020-05-29 Dom Brailsford : Large update to the transverse alg to make it feature complete. The alg now fully: - Resamples the two discrete probability vectors to create equally sampled vectors - Calculates their correlation P-value via permutation tests. - Calculates the fraction of the two clusters local regions that match each other. - Stores all relevant information in the overlap result.
-   2020-05-29 Dom Brailsford : Print out all overlap result data members in the visualisation tool. Include a check on the locally matched fraction as a condition in the clear tracks tool. Update the logic checks to use floating epsilon.
-   2020-05-22 Dom Brailsford : Function to return probability from the probability vector, includes logic to enable/disable width. Use probability function in the helper class, rather than hand-calculating it.
-   2020-05-22 Dom Brailsford : Add alternative Pvalue calculation, assuming r follows a T distribution
-   2020-05-22 Dom Brailsford : Store the width of the bin as a data member. Various functions need updating to calculate/store the width. Include the option of ignoring the bin width in all calculations. Missing normalising the density by the bin width when converting from cumulative probability to probability density. This has now been fixed.
-   2020-05-21 Dom Brailsford : Small bug fixes and floating check tweaks.
-   2020-05-21 Dom Brailsford : Wrapper function for CalculateOverlapResult so that a statuscode can be returned. Easier for debugging and copies the three view case. Some minor moving of checks from within the CalculateOverlapResult function. Still under construction
-   2020-05-20 Dom Brailsford : Small doxygen fixes, cosmetics etc. Drop some old tree filling code that isn’t used.
-   2020-05-19 Dom Brailsford : Add feature for calculating p value from permutation test. This includes not only the calculation but also functions which potentially outsource randomisation of the input dataset (currently either a vector or a LArDiscreteProbabilityVector)
-   2020-05-18 Dom Brailsford : First commit for the LArDiscreteProbabilityHelper class. Functionality is already included, including correlation coefficient calculation and all necessary functions for that calculation.
-   2020-05-15 Dom Brailsford : Change throw to not initialised. - This logic deals with the vector data member rather than an input parameter set. If the vector data member doesn’t meet the reqs then it can be considered not initialised
-   2020-05-15 Dom Brailsford : Function to return all data at a particular index. Const-ify the index argument for the other Get functions
-   2020-05-14 Dom Brailsford : Create implementation file and migrate most functions to it. Make remaining header functions inline. Fix bug in normalisation.
-   2020-05-14 Dom Brailsford : New constructor and functions to create a resampled probability vector. Also include a dedicated function to verify the data as both constructors need it
-   2020-05-14 Dom Brailsford : Include more sanity checks on the data members and inputs. Update the logic for comparing adjacent elements in the probability array.
-   2020-05-14 Dom Brailsford : Include a variable for the upper bound of the probability vector. It is needed for normalisating the distribution as, otherwise, the last point acts as the upper bound and does not contribute to the normalisation.
-   2020-05-14 Dom Brailsford : Reorder when InputData refernce is declared in the constructor
-   2020-05-14 Dom Brailsford : Function to evaluate the cumulative probability at any x
-   2020-05-11 Dom Brailsford : First commit for the LArDiscreteProbabilityVector class. The class will hold a vector of ordered discrete probability data, including: - probability density - cumulative probability
-   2020-04-13 Etienne Chardonnet : Added our own linear interpolation Disable the cumulative distribution padding Change how the pandora object is retrieved for filling the tree. Add checks before attempting to interrogate the matched truth Comment out filling of some tree variables twice
-   2020-04-09 Etienne Chardonnet : Moved the output.root lines
-   2020-04-08 Etienne Chardonnet : Fixed segfault for resampled size==10 and fixed fracGoodScore\>1 Add more stuff to the tree.
-   2020-04-03 Etienne Chardonnet : Fixed merging issue regarding the use of the t-test p-value. Change some printout.
-   2020-04-03 Etienne Chardonnet : Added sliding feature for discrete cumulative distributions. Make the good score fraction the matching score.
-   2020-04-02 Etienne Chardonnet : Added sliding window feature
-   2020-04-03 Dom Brailsford : Functions to calculate pvalue from a correlation coefficient. Make the matchin score 1-pvalue
-   2020-04-02 John Marshall : Plumb-in NViewMatchingAlgs using TwoViewMatchingControl and TrackTwoViewOverlapResult.
-   2020-04-02 Dom Brailsford : Check the cluster’s fractional overlap, rather than absolute overlap
-   2020-04-02 Etienne Chardonnet : Added segments feature
-   2020-04-02 Dom Brailsford : Continued development study updates.
-   2020-03-26 Etienne Chardonnet : fixed error in PValue computation
-   2020-03-26 Dom Brailsford : Continued development study updates.
-   2020-03-26 Etienne Chardonnet : Added CalculatePValueSumTerm and CalculatePValueWithKSTestStatistic functions in .cc and .h of LArDiscreteCumulativeDistributionHelper
-   2020-03-25 Dom Brailsford : Continued development work for the temporary classes while the 2D-\>3D matching ideas were being fleshed out.
-   2020-03-25 Etienne Chardonnet : added new helper function in LArDiscreteCumulativeDistributionHelper.h called CreateDistributionFromCaloHits
-   2019-11-20 Dominic Brailsford : Initial migration of old code and start of development studies. This includes temporary creation of the LArDiscreteCumulativeDistribution and the LArDiscreteCumulativeDistributionHelper classes.
-   2020-03-24 Dom Brailsford : Use TwoViewXOverlap functionality instead of tribal placeholders.
-   2020-03-25 Dom Brailsford : Break up calculation of xOverlap, as the min and max are needed downstream. Fill separate calo hit lists with the two clusters overlapping hits.
-   2020-03-24 Dom Brailsford : Template on the TransverseTwoTrackOverlapResult. Includes a necessary update to the CalculateOverlapResult function body as the alg now templates on the TransverseTwoTrackOverlapResult.
-   2020-06-03 Dom Brailsford : Complete doxygen comments and some other cosmetic changes.
-   2020-05-29 Dom Brailsford : Add new data members and associated functionality: - Locally matched fraction - Number of sampling points using in local matching - Global correlation coefficient
-   2020-05-15 Dom Brailsford : Header and cosmetic changes.
-   2020-03-24 Dom Brailsford : Add matching score parameter to the base class. Add comparison operators for the base class which uses the matching score for its comparison. Provide functionality to return the matching score.
-   2020-03-19 Dom Brailsford : The two-view track and two-view transverse track overlap result initial blueprints.
-   2020-03-19 Dom Brailsford : A class which represents the overlap of two clusters in a two-view detector or when only two views are used. The class provides some functionality, such as calculating a cluster’s fractional overlap (how much of the cluster is contained in the overlap region).
-   2019-11-19 Dominic Brailsford : Function to create calo hit list from cluster hits contained in a bounding box. The bounding box works in multiple dimensions.
-   2020-06-26 AndyChappell : Merge pull request [\#129](/redmine/issues/129 "Feature: move financial approvers so they can edit reqs (New)") from AndyChappell/feature/cpp17
-   2020-06-26 Andrew Chappell : Update version
-   2020-06-19 johnmarshall80 : Merge pull request [\#128](/redmine/issues/128 "Feature: Add quadrant leaders to signature requirements (New)") from AndyChappell/feature/cpp17
-   2020-06-19 Andy Chappell : Move to C++17 standard

larsoftobj v08\_29\_02
------------------------------------------------

lardataobj v08\_11\_02
------------------------------------------------

lardataalg v08\_13\_14
------------------------------------------------

larcorealg v08\_22\_02
------------------------------------------------

larcoreobj v08\_12\_01
------------------------------------------------

webevd v08\_00\_07
----------------------------------------

larbatch v01\_52\_02
--------------------------------------------

larutils v1\_26\_00
------------------------------------------
