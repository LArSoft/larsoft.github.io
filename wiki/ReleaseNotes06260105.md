LArSoft v06\_26\_01\_05 Release Notes
=============================================================================

-   **Table of contents**
-   [LArSoft v06\_26\_01\_05 Release Notes](#LArSoft-v06_26_01_05-Release-Notes)
    -   [Purpose](#Purpose)
    -   [New features](#New-features)
    -   [Bug fixes](#Bug-fixes)
    -   [Updated dependencies](#Updated-dependencies)
-   [Change List](#Change-List)
    -   [larsoft v06\_26\_01\_05](#larsoft-v06_26_01_05)
    -   [lareventdisplay v06\_02\_14\_05](#lareventdisplay-v06_02_14_05)
    -   [larexamples v06\_01\_15\_03](#larexamples-v06_01_15_03)
    -   [larpandora v06\_08\_00\_05](#larpandora-v06_08_00_05)
    -   [larwirecell v06\_00\_13\_05](#larwirecell-v06_00_13_05)
    -   [larana v06\_03\_18\_05](#larana-v06_03_18_05)
    -   [larreco v06\_20\_00\_05](#larreco-v06_20_00_05)
    -   [larsim v06\_13\_01\_03](#larsim-v06_13_01_03)
    -   [larevt v06\_07\_09\_03](#larevt-v06_07_09_03)
    -   [lardata v06\_14\_04\_02](#lardata-v06_14_04_02)
    -   [larcore v06\_05\_03\_01](#larcore-v06_05_03_01)
    -   [larpandoracontent v03\_07\_02\_04](#larpandoracontent-v03_07_02_04)
    -   [larsoftobj v1\_11\_00\_02](#larsoftobj-v1_11_00_02)
    -   [lardataobj v1\_11\_00\_02](#lardataobj-v1_11_00_02)

[list of LArSoft releases](LArSoft_release_list)
Download instructions for [larsoft v06\_26\_01\_05](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v06_26_01_05/larsoft-v06_26_01_05.html)
Download instructions for [just larsoftobj v1\_11\_00\_02](http://scisoft.fnal.gov/scisoft/bundles/larsoftobj/v1_11_00_02/larsoftobj-v1_11_00_02.html)

Purpose
--------------------

-   requested by MicroBooNE

New features
------------------------------

Bug fixes
------------------------

Updated dependencies
----------------------------------------------

Change List
============================

larsoft v06\_26\_01\_05
-------------------------------------------------

-   2017-09-12 Lynn Garren : for larsoft v06\_26\_01\_05

lareventdisplay v06\_02\_14\_05
-----------------------------------------------------------------

-   2017-09-12 Lynn Garren : for larsoft v06\_26\_01\_05

larexamples v06\_01\_15\_03
---------------------------------------------------------

-   2017-09-12 Lynn Garren : for larsoft v06\_26\_01\_05

larpandora v06\_08\_00\_05
-------------------------------------------------------

-   2017-09-12 Lynn Garren : for larsoft v06\_26\_01\_05
-   2017-08-31 John Marshall : LArShowerPfo parameters m\_showerMinLayerPosition and m\_showerMaxLayerPosition no longer present in larpandoracontent v03\_07\_04.

larwirecell v06\_00\_13\_05
---------------------------------------------------------

-   2017-09-12 Lynn Garren : for larsoft v06\_26\_01\_05

larana v06\_03\_18\_05
-----------------------------------------------

-   2017-09-12 Lynn Garren : for larsoft v06\_26\_01\_05
-   2017-08-15 Andrew Furmanski : Added options to turn off T0 tag associations Added PFParticle-\>MCParticle matching (plus option to turn this off)
-   2017-08-15 Andrew Furmanski : Merge branch ‘feature/afurmans\_MCTruthMatching’ of ssh://cdcvs.fnal.gov/cvs/projects/larana into feature/afurmans\_MCTruthMatching
-   2017-08-15 Andrew Furmanski : updated to use a struct in MCtruthMatching auxilary data
-   2017-08-14 Tingjun Yang : Add pfparticle-t0 association.
-   2017-08-14 Andrew Furmanski : Don’t use BackTracker::TrackIDToParticle as it loses the knowledge of the art shared pointer - changed to loop internally
-   2017-08-14 Andrew Furmanski : Added direct association between Track and MCParticle, and fixed compiler errors.

larreco v06\_20\_00\_05
-------------------------------------------------

-   2017-09-12 Lynn Garren : for larsoft v06\_26\_01\_05
-   2017-08-17 Giuseppe Cerati : add TrajectoryMCSFitter

larsim v06\_13\_01\_03
-----------------------------------------------

-   2017-09-12 Lynn Garren : for larsoft v06\_26\_01\_05

larevt v06\_07\_09\_03
-----------------------------------------------

-   2017-09-12 Lynn Garren : for larsoft v06\_26\_01\_05

lardata v06\_14\_04\_02
-------------------------------------------------

-   2017-09-12 Lynn Garren : for larsoft v06\_26\_01\_05

larcore v06\_05\_03\_01
-------------------------------------------------

-   2017-09-12 Lynn Garren : for larsoft v06\_26\_01\_05

larpandoracontent v03\_07\_02\_04
---------------------------------------------------------------------

larsoftobj v1\_11\_00\_02
-----------------------------------------------------

-   2017-09-12 Lynn Garren : for larsoft v06\_26\_01\_05

lardataobj v1\_11\_00\_02
-----------------------------------------------------

-   2017-09-12 Lynn Garren : for larsoft v06\_26\_01\_05
-   2017-05-03 Giuseppe Cerati : forgot std::vector\<recob::MCSFitResult\>
-   2017-04-21 Giuseppe Cerati : first version of MCSFitResult
-   2017-05-03 Giuseppe Cerati : implement suggestions from Gianluca for constructurs in (Track)Trajectory
-   2017-05-03 Giuseppe Cerati : create a TrackTrajectory from a Trajectory
-   2017-08-17 Giuseppe Cerati : add lardataobj/RecoBase/MCSFitResult.h
-   2017-08-15 Andrew Furmanski : Updated new data struct for truth matching metadata
-   2017-08-15 Andrew Furmanski : Merge branch ‘feature/afurmans\_MCTruthMatching’ of ssh://cdcvs.fnal.gov/cvs/projects/lardataobj into feature/afurmans\_MCTruthMatching
-   2017-08-15 Andrew Furmanski : Updated to use a struct in the auxiliary data for truth matching associations
-   2017-08-14 Tingjun Yang : Add pfparticle-t0 association.
-   2017-08-14 Andrew Furmanski : Need Assns dictionaries both ways round - now have Track-\>MCParticle and MCParticle-\>Track
-   2017-08-14 Andrew Furmanski : Changes to classes for dictionary generation - association between track and MCParticle
