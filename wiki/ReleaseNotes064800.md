LArSoft v06\_48\_00 Release Notes
======================================================================

-   **Table of contents**
-   [LArSoft v06\_48\_00 Release Notes](#LArSoft-v06_48_00-Release-Notes)
    -   [Purpose](#Purpose)
    -   [New features](#New-features)
    -   [Bug fixes](#Bug-fixes)
    -   [Updated dependencies](#Updated-dependencies)
-   [Change List](#Change-List)
    -   [larsoft v06\_48\_00](#larsoft-v06_48_00)
    -   [lareventdisplay v06\_11\_02](#lareventdisplay-v06_11_02)
    -   [larexamples v06\_06\_00](#larexamples-v06_06_00)
    -   [larpandora v06\_15\_07](#larpandora-v06_15_07)
    -   [larwirecell v06\_06\_00](#larwirecell-v06_06_00)
    -   [larana v06\_09\_02](#larana-v06_09_02)
    -   [larreco v06\_38\_02](#larreco-v06_38_02)
    -   [larsim v06\_30\_00](#larsim-v06_30_00)
    -   [larevt v06\_15\_07](#larevt-v06_15_07)
    -   [lardata v06\_27\_00](#lardata-v06_27_00)
    -   [larcore v06\_14\_00](#larcore-v06_14_00)
    -   [larpandoracontent v03\_07\_04](#larpandoracontent-v03_07_04)
    -   [larsoftobj v1\_26\_00](#larsoftobj-v1_26_00)
    -   [lardataobj v1\_20\_00](#lardataobj-v1_20_00)
    -   [larcorealg v1\_06\_01](#larcorealg-v1_06_01)
    -   [larcoreobj v1\_15\_01](#larcoreobj-v1_15_01)
    -   [larbatch v01\_32\_04](#larbatch-v01_32_04)
    -   [larutils v1\_19\_00](#larutils-v1_19_00)

[list of LArSoft releases](LArSoft_release_list)\
Download instructions for [larsoft v06\_48\_00](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v06_48_00/larsoft-v06_48_00.html)\
Download instructions for [just larsoftobj v1\_26\_00](http://scisoft.fnal.gov/scisoft/bundles/larsoftobj/v1_26_00/larsoftobj-v1_26_00.html)

Purpose
--------------------

-   changes to develop
-   approved feature branches

New features
------------------------------

-   feature/gardiner\_MARLEY\_upgrade (lardataobj and larsim)
    -   The larsim branch heavily refactors the MARLEYGen module, moving most of the code into new algorithms called MARLEYHelper and ActiveVolumeVertexSampler. Other than a required upgrade to marley v1\_0\_0, however, I believe that the refactored MARLEYGen module will be backwards-compatible with other code (and the existing FHiCL scripts). The larsim branch also adds a new module called MARLEYTimeGen that generates events using time-dependent supernova neutrino spectra.
    -   The lardataobj branch creates a new data product called sim::SupernovaTruth. This object contains the neutrino emission time measured relative to the supernova core bounce and weighting information that can be used for analysis. The MARLEYTimeGen module produces sim::SupernovaTruth objects and creates one-to-one associations between them and the simb::MCTruth objects that it also produces.
-   feature/cerati\_phase2track (larreco and lardata)
    -   preparatory work for the phaseII recob::Track migration
-   larwirecell feature/integration
    -   use wirecell v0\_6\_1
-   larpandoracontent feature/LArPandoraContent\_v03\_07\_04
    -   tracking improvements
-   complete update of the AnalysisExample package, which now:
    -   compiles and executes in the current LArSoft environment;
    -   has updated links to all web pages (no more references to larsoftsvn);
    -   has updated documentation for current packages and tools.
    -   The [AnalysisExample](_AnalysisExample_) web page has also been updated.

Bug fixes
------------------------

Updated dependencies
----------------------------------------------

-   marley v1\_0\_0
-   wirecell v0\_6\_1
-   jsonnet v0\_9\_3 (new dependency)

Change List
============================

larsoft v06\_48\_00
------------------------------------------

-   2017-08-30 Lynn Garren : wirecell v0\_6\_1 and marley v1\_0\_0
-   2017-08-29 Lynn Garren : larsoft v06\_48\_00 for larsoft v06\_48\_00
-   2017-08-29 Lynn Garren : new dependency on jsonnet
-   2017-08-29 Lynn Garren : update product versions
-   2017-08-29 Lynn Garren : update dependency database

lareventdisplay v06\_11\_02
----------------------------------------------------------

-   2017-08-29 Lynn Garren : lareventdisplay v06\_11\_02 for larsoft v06\_48\_00

larexamples v06\_06\_00
--------------------------------------------------

-   2017-08-29 Lynn Garren : larexamples v06\_06\_00 for larsoft v06\_48\_00
-   2017-08-29 William Seligman : Merge branch ‘feature/seligman\_uptodateAnalysisExample’ into develop
-   2017-08-29 William Seligman : Resolving merge conflicts
-   2017-08-29 William Seligman : Final edit-check for spelling, consistency, and readability of AnalysisExample
-   2017-08-29 William Seligman : Wrapping up edits to AnalysisExample
-   2017-08-18 William Seligman : Accidentally committed a patch file
-   2017-08-17 William Seligman : Fixed time matching between sim::SimChannel and recob::Hit
-   2017-08-17 William Seligman : More documentation fixes
-   2017-08-16 William Seligman : documenting CMakeLists.txt
-   2017-08-15 William Seligman : More Markdown document fixes
-   2017-08-15 William Seligman : Edit README.md for README -\> README.md
-   2017-08-15 William Seligman : Change README to README.md since Gianluca wrote Markdown-formatted help files
-   2017-08-11 William Seligman : Remove time checks
-   2017-08-11 William Seligman : matching hits to channels using time
-   2017-08-09 William Seligman : Fiddling with documentation and procedural updates
-   2017-08-04 William Seligman : Update documentation, fix web links, test for uboonecode v06\_44\_00
-   2017-07-26 William Seligman : fix script bug
-   2017-07-26 William Seligman : updating documentation
-   2017-08-09 William Seligman : Fiddling with documentation and procedural updates
-   2017-08-04 William Seligman : Update documentation, fix web links, test for uboonecode v06\_44\_00
-   2017-07-26 William Seligman : fix script bug
-   2017-07-26 William Seligman : updating documentation

larpandora v06\_15\_07
------------------------------------------------

-   2017-08-29 Lynn Garren : larpandora v06\_15\_07 for larsoft v06\_48\_00

larwirecell v06\_06\_00
--------------------------------------------------

-   2017-08-30 Lynn Garren : larcore\_Geometry is now larcorealg\_Geometry
-   2017-08-29 Lynn Garren : larwirecell v06\_06\_00 for larsoft v06\_48\_00
-   2017-08-29 Lynn Garren : fix a link problem
-   2017-08-29 Lynn Garren : Merge branch ‘feature/integration’ into release/v06\_48\_00
-   2017-08-28 Brett Viren : Turn on magic ‘use-less-memory’ option.
-   2017-08-28 Brett Viren : Switch off using wclsChannelNoiseDB in default fcl as the service is not available in the development environment.
-   2017-08-28 Brett Viren : Go to wirecell 0.6.1
-   2017-08-28 Brett Viren : Bump to using wirecell 0.6.0.
-   2017-08-22 Brett Viren : Various config updates for memory problem and to glue in the new consoldated uboone/nfsp/ config from wct.
-   2017-08-22 Brett Viren : Instrument memory checker, temporarily.
-   2017-08-22 Brett Viren : Allow truncation/padding of intput and output frames.
-   2017-08-02 Brett Viren : Add jobs to insinuate magnify sink between steps in order to dump out intermediate results for testing.
-   2017-08-02 Brett Viren : Drop frame when done.
-   2017-08-02 Brett Viren : Add initial support for NF+SP integration.
-   2017-07-12 Brett Viren : Checking/cleaning of text.
-   2017-07-12 Brett Viren : Source reorganization.
-   2017-07-12 Brett Viren : It works.
-   2017-07-11 Brett Viren : Try to make produces\<\>() work but for now the output type is still hard coded in the module.
-   2017-07-11 Brett Viren : Get raw source and cooked sinks in but not yet validated beyond sending null data.
-   2017-07-11 Brett Viren : Functional but not validated input + sigproc.
-   2017-07-07 Brett Viren : Some guidelines for developing the integration boundary code.
-   2017-07-07 Brett Viren : Fix up integration boundary code.
-   2017-07-07 Brett Viren : Try ignoring params.
-   2017-07-07 Brett Viren : Flesh out the tool configuration.
-   2017-07-06 Brett Viren : Transfer RawDigits to IFrame.
-   2017-07-06 Brett Viren : It’s in a silly state right now, but this commit uses the entirety of art to act as the wire-cell command line program.
-   2017-07-05 Brett Viren : Confusion understood.
-   2017-07-05 Brett Viren : Remove bogosity.
-   2017-07-05 Brett Viren : More flailing.
-   2017-07-05 Brett Viren : Fix typo found by Brooke.
-   2017-07-05 Brett Viren : Make explicit base main tool which isn’t also a WCT interface.
-   2017-07-05 Brett Viren : Switch to art\_make\_library after Gianluca helps me see my mistake.
-   2017-07-05 Brett Viren : Add stub of a tool which will grow to run the WCT main entry.
-   2017-07-05 Brett Viren : Add initial interfaces and stubs for two components.
-   2017-07-03 Brett Viren : Kill a zombie.
-   2017-07-03 Brett Viren : Now stuck.
-   2017-07-03 Brett Viren : Various docs and patches to get a development environment going.
-   2017-06-30 Brett Viren : My very first larsoft module.
-   2017-06-30 Brett Viren : Fix instructions.
-   2017-06-30 Brett Viren : Initial guidance on setting up.
-   2017-06-30 Brett Viren : Hacks and fixes to build against latest WCT itself built outside of UPS for now.

larana v06\_09\_02
----------------------------------------

-   2017-08-29 Lynn Garren : larana v06\_09\_02 for larsoft v06\_48\_00

larreco v06\_38\_02
------------------------------------------

-   2017-08-29 Lynn Garren : larreco v06\_38\_02 for larsoft v06\_48\_00
-   2017-08-29 Christoph Alt : Don’t save hits with negative RMS (=negative width). Happens sometimes when the fitter fails. Negative RMS’s crash linecluster.
-   2017-08-24 Robert Sulej : Merge branch ‘develop’ of ssh://cdcvs.fnal.gov/cvs/projects/larreco into develop
-   2017-08-18 Robert Sulej : Merge branch ‘develop’ of ssh://cdcvs.fnal.gov/cvs/projects/larreco into develop
-   2017-08-18 Robert Sulej : add scaling configuration, improve scaling function, minimize fcl; no changes to output

larsim v06\_30\_00
----------------------------------------

-   2017-08-29 Lynn Garren : larsim v06\_30\_00 for larsoft v06\_48\_00
-   2017-08-29 Lynn Garren : Merge branch ‘feature/gardiner\_MARLEY\_upgrade’ into release/v06\_48\_00
-   2017-08-23 Steven Gardiner : Add example FHiCL file for use with the MARLEYTimeGen module
-   2017-08-23 Steven Gardiner : Rename the event tree branches to “event” to match the MARLEY v1.0.0 convention.
-   2017-08-21 Steven Gardiner : Add more doxygen documentation to the MARLEYTimeGen module
-   2017-08-21 Steven Gardiner : Rename the MARLEYGenerator class to MARLEYHelper, in agreement with a similar convention for algorithm classes that provide access to CRY and GENIE
-   2017-08-16 Steven Gardiner : Add output histograms that show the neutrino emission profiles when using a “fit”-format spectrum file
-   2017-08-15 Steven Gardiner : Rewrite code to handle “fit” spectrum files to handle the new format used in the dune\_pardata supernova flux database
-   2017-08-15 Steven Gardiner : Optimize calculation of the flux-averaged total cross section when using “fit”-format spectrum files
-   2017-08-14 Steven Gardiner : Use Clenshaw-Curtis quadrature to compute integrals (via marley::Integrator) rather than the trapezoidal rule
-   2017-08-14 Steven Gardiner : Separate the statistical event weight from the flux-averaged cross section in the sim::SupernovaTruth data product
-   2017-08-14 Steven Gardiner : Add capability for MARLEYTimeGen to use a parameterized spectrum file format in addition to 2D ROOT histograms
-   2017-07-18 Steven Gardiner : Update the MARLEY folder’s CMakeLists.txt to link to larcorealg\_Geometry instead of larcore\_Geometry
-   2017-06-30 Steven Gardiner : Finish implementing biased sampling, neutrino reweighting, module configuration, etc.
-   2017-06-13 Steven Gardiner : Add the SupernovaTruth data product (now produced by the MARLEYTimeGen module)
-   2017-05-17 Steven Gardiner : Add an initial version of the MARLEYTimeGen module
-   2017-04-20 Steven Gardiner : Encapsulate the vertex position sampling method used in the MARLEYGen module into a stand-alone algorithm class, and refactor the module to use it.
-   2017-04-20 Steven Gardiner : Add example FHiCL script that produces MARLEY samples in LArIAT.
-   2017-04-20 Steven Gardiner : Encapsulate the MARLEY interface into a stand-alone algorithm class, and refactor the MARLEYGen module to use the new algorithm.
-   2017-04-18 Steven Gardiner : Add FHiCL configuration validation to the MARLEYGen module. Upgrade the module to use the marley::JSON class (new as of MARLEY v1.0.0) to configure the generator.

larevt v06\_15\_07
----------------------------------------

-   2017-08-29 Lynn Garren : larevt v06\_15\_07 for larsoft v06\_48\_00

lardata v06\_27\_00
------------------------------------------

-   2017-08-29 Lynn Garren : lardata v06\_27\_00 for larsoft v06\_48\_00
-   2017-08-29 Lynn Garren : Merge branch ‘feature/cerati\_phase2track’ into release/v06\_48\_00
-   2017-08-28 Giuseppe Cerati : add util::groupByIndex
-   2017-08-25 Gianluca Petrillo : Added limited support for random access in wrapped ranges.
-   2017-08-18 Gianluca Petrillo : begin() and end() methods of RangeForWrapper are made constant.
-   2017-08-18 Gianluca Petrillo : Added support for up to bidirectional iterators in util::RangeForWrapper.
-   2017-08-25 Giuseppe Cerati : remove attempt to move data members
-   2017-08-25 Gianluca Petrillo : Added limited support for random access in wrapped ranges.
-   2017-08-15 Giuseppe Cerati : allow move (steal) of position and momentum data members, plus adding const to one method

larcore v06\_14\_00
------------------------------------------

larpandoracontent v03\_07\_04
--------------------------------------------------------------

-   2017-08-29 Lynn Garren : larpandoracontent v03\_07\_04 for larsoft v06\_48\_00
-   2017-08-29 Lynn Garren : set FW\_SEARCH\_PATH
-   2017-08-29 Lynn Garren : 03.07.04
-   2017-08-29 John Marshall : Merge branch ‘feature/ChangeLog’
-   2017-08-10 John Marshall : Update changelog.
-   2017-08-29 John Marshall : Merge branch ‘feature/TrackShowerTweaks’
-   2017-08-15 loressa : Strengthen tie-breaking in shower and track overlap result operators
-   2017-08-14 loressa : Added the possibility to work with probabilities instead of binary classification
-   2017-08-29 John Marshall : Merge branch ‘feature/TrackDirections’
-   2017-08-20 Andy Blake : Modifying track direction bug fix for compatibility with LArSoft. Fixing forward/backward asymmetries in 2D and 3D sliding linear fits. Simplifying PcaShowerParticleBuildingAlgorithm by moving bulk of PCA calculations to LArPfoHelper (will later facilitate standalone shower-building module in LArSoft). Fixing STATUS\_CODE\_NOT\_FOUND exceptions in ParticleRecoveryAlgorithm caused by PFOs which don’t have a valid 2D sliding linear fit.
-   2017-08-08 John Marshall : Refactor SlidingFitTrajectory implementation.
-   2017-08-07 Andy Blake : Move calculation of track trajectory from TrackParticleBuildingAlgorithm and LArPfoHelper and remove assumption about direction of 3D sliding fit.

larsoftobj v1\_26\_00
----------------------------------------------

-   2017-08-29 Lynn Garren : larsoftobj v1\_26\_00 for larsoft v06\_48\_00
-   2017-08-29 Lynn Garren : update product versions

lardataobj v1\_20\_00
----------------------------------------------

-   2017-08-29 Lynn Garren : lardataobj v1\_20\_00 for larsoft v06\_48\_00
-   2017-08-14 Steven Gardiner : Separate the statistical event weight from the flux-averaged cross section in the sim::SupernovaTruth data product. Rename the SNTime member to SupernovaTime.
-   2017-06-30 Steven Gardiner : Update description of neutrino weights in the sim::SupernovaTruth header
-   2017-06-13 Steven Gardiner : Add the SupernovaTruth data product (provides timing information, etc. for events produced using the MARLEYTimeGen module)

larcorealg v1\_06\_01
----------------------------------------------

larcoreobj v1\_15\_01
----------------------------------------------

larbatch v01\_32\_04
--------------------------------------------

larutils v1\_19\_00
------------------------------------------
