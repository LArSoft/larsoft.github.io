LArSoft v06_26_01_05 Release Notes
=============================================================================

[list of LArSoft releases](LArSoft_release_list)
Download instructions for [larsoft v06_26_01_05](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v06_26_01_05/larsoft-v06_26_01_05.html)
Download instructions for [just larsoftobj v1_11_00_02](http://scisoft.fnal.gov/scisoft/bundles/larsoftobj/v1_11_00_02/larsoftobj-v1_11_00_02.html)

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

larsoft v06_26_01_05
-------------------------------------------------

-   2017-09-12 Lynn Garren : for larsoft v06_26_01_05

lareventdisplay v06_02_14_05
-----------------------------------------------------------------

-   2017-09-12 Lynn Garren : for larsoft v06_26_01_05

larexamples v06_01_15_03
---------------------------------------------------------

-   2017-09-12 Lynn Garren : for larsoft v06_26_01_05

larpandora v06_08_00_05
-------------------------------------------------------

-   2017-09-12 Lynn Garren : for larsoft v06_26_01_05
-   2017-08-31 John Marshall : LArShowerPfo parameters m_showerMinLayerPosition and m_showerMaxLayerPosition no longer present in larpandoracontent v03_07_04.

larwirecell v06_00_13_05
---------------------------------------------------------

-   2017-09-12 Lynn Garren : for larsoft v06_26_01_05

larana v06_03_18_05
-----------------------------------------------

-   2017-09-12 Lynn Garren : for larsoft v06_26_01_05
-   2017-08-15 Andrew Furmanski : Added options to turn off T0 tag associations Added PFParticle-\>MCParticle matching (plus option to turn this off)
-   2017-08-15 Andrew Furmanski : Merge branch ‘feature/afurmans_MCTruthMatching’ of ssh://cdcvs.fnal.gov/cvs/projects/larana into feature/afurmans_MCTruthMatching
-   2017-08-15 Andrew Furmanski : updated to use a struct in MCtruthMatching auxilary data
-   2017-08-14 Tingjun Yang : Add pfparticle-t0 association.
-   2017-08-14 Andrew Furmanski : Don’t use BackTracker::TrackIDToParticle as it loses the knowledge of the art shared pointer - changed to loop internally
-   2017-08-14 Andrew Furmanski : Added direct association between Track and MCParticle, and fixed compiler errors.

larreco v06_20_00_05
-------------------------------------------------

-   2017-09-12 Lynn Garren : for larsoft v06_26_01_05
-   2017-08-17 Giuseppe Cerati : add TrajectoryMCSFitter

larsim v06_13_01_03
-----------------------------------------------

-   2017-09-12 Lynn Garren : for larsoft v06_26_01_05

larevt v06_07_09_03
-----------------------------------------------

-   2017-09-12 Lynn Garren : for larsoft v06_26_01_05

lardata v06_14_04_02
-------------------------------------------------

-   2017-09-12 Lynn Garren : for larsoft v06_26_01_05

larcore v06_05_03_01
-------------------------------------------------

-   2017-09-12 Lynn Garren : for larsoft v06_26_01_05

larpandoracontent v03_07_02_04
---------------------------------------------------------------------

larsoftobj v1_11_00_02
-----------------------------------------------------

-   2017-09-12 Lynn Garren : for larsoft v06_26_01_05

lardataobj v1_11_00_02
-----------------------------------------------------

-   2017-09-12 Lynn Garren : for larsoft v06_26_01_05
-   2017-05-03 Giuseppe Cerati : forgot std::vector\<recob::MCSFitResult\>
-   2017-04-21 Giuseppe Cerati : first version of MCSFitResult
-   2017-05-03 Giuseppe Cerati : implement suggestions from Gianluca for constructurs in (Track)Trajectory
-   2017-05-03 Giuseppe Cerati : create a TrackTrajectory from a Trajectory
-   2017-08-17 Giuseppe Cerati : add lardataobj/RecoBase/MCSFitResult.h
-   2017-08-15 Andrew Furmanski : Updated new data struct for truth matching metadata
-   2017-08-15 Andrew Furmanski : Merge branch ‘feature/afurmans_MCTruthMatching’ of ssh://cdcvs.fnal.gov/cvs/projects/lardataobj into feature/afurmans_MCTruthMatching
-   2017-08-15 Andrew Furmanski : Updated to use a struct in the auxiliary data for truth matching associations
-   2017-08-14 Tingjun Yang : Add pfparticle-t0 association.
-   2017-08-14 Andrew Furmanski : Need Assns dictionaries both ways round - now have Track-\>MCParticle and MCParticle-\>Track
-   2017-08-14 Andrew Furmanski : Changes to classes for dictionary generation - association between track and MCParticle
