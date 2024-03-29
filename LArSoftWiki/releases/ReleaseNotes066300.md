# LArSoft v06_63_00 Release Notes



[list of LArSoft releases](LArSoft_release_list)  
Download instructions for [larsoft v06_63_00](https://scisoft.fnal.gov/scisoft/bundles/larsoft/v06_63_00/larsoft-v06_63_00.html)  
Download instructions for [just larsoftobj v1_36_00](https://scisoft.fnal.gov/scisoft/bundles/larsoftobj/v1_36_00/larsoftobj-v1_36_00.html)

## Purpose

-   changes in develop
-   approved feature branch

## New features

-   larreco feature/cerati_kf-fit-inputs-new
    -   update the track fitter so that it is fed with proper inputs
    -   track id based on length, track momentum based on range or mcs
-   lardataobj, lardata, larreco feature/gp_Issue18619
    -   addition of a charge data product with an associated space point, and a proxy to manage it
    -   feature \#18619

## Bug fixes

## Updated dependencies

-   caffe is now in the SLF distributions
-   cetbuildtools v6_01_01 with additions to install_source

# Change List

## larsoft v06_63_00

-   2018-01-10 Lynn Garren : cetbuildtools v6_01_01
-   2018-01-10 Lynn Garren : larsoft v06_63_00 for larsoft v06_62_01
-   2018-01-10 Lynn Garren : update products
-   2018-01-10 Lynn Garren : using install_source

## lareventdisplay v06_15_08

-   2018-01-10 Lynn Garren : lareventdisplay v06_15_08 for larsoft v06_62_01

## larexamples v06_08_01

-   2018-01-10 Lynn Garren : larexamples v06_08_01 for larsoft v06_62_01
-   2018-01-10 Lynn Garren : install_source now picks up the document files - \#18637 resolved
-   2018-01-10 Lynn Garren : install_source now picks up the document files - \#18637 resolved

## larpandora v06_18_03

-   2018-01-10 Lynn Garren : larpandora v06_18_03 for larsoft v06_62_01

## larwirecell v06_08_10

-   2018-01-10 Lynn Garren : larwirecell v06_08_10 for larsoft v06_62_01

## larana v06_14_01

-   2018-01-10 Lynn Garren : larana v06_14_01 for larsoft v06_62_01

## larreco v06_51_00

-   2018-01-10 Lynn Garren : larreco v06_51_00 for larsoft v06_62_01
-   2018-01-10 Lynn Garren : larreco v06_51_00 for larsoft v06_62_01
-   2018-01-10 Lynn Garren : Merge branch 'feature/gp_Issue18619' into release/v06_62_01
-   2018-01-10 Lynn Garren : Merge branch 'feature/cerati_kf-fit-inputs-new' into release/v06_62_01
-   2018-01-10 Lynn Garren : cetbuildtools v6_01_01
-   2018-01-09 Gianluca Petrillo : Fixed compilation error in SpacePointSolver
-   2018-01-09 Chris Backhouse : Minor changes to match local style.
-   2018-01-09 Giuseppe Cerati : bug fix
-   2018-01-08 Giuseppe Cerati : add doSpacePoints_ where missing
-   2018-01-08 Chris Backhouse : Merge commit '21864e6411e2f076973622d5b2ff96200f5e67b0' into develop
-   2018-01-08 Chris Backhouse : Make the definitions of “close in space” and “close in time” configurable from the fcl file.
-   2018-01-05 Giuseppe Cerati : spacePointPtrMaker only when doSpacePoints_
-   2018-01-05 Giuseppe Cerati : avoid using unique_ptr::release
-   2017-12-22 Gianluca Petrillo : SpacePointSolver now uses new charged space point infrastructure
-   2017-12-20 Giuseppe Cerati : KalmanFilterFitTrackMaker set up to use proper inputs for momentum, pid and direction
-   2017-12-20 Giuseppe Cerati : fix documentation
-   2017-09-29 Giuseppe Cerati : first version of full inputs, needs cleanup

## larsim v06_38_03

-   2018-01-10 Lynn Garren : larsim v06_38_03 for larsoft v06_62_01
-   2018-01-09 Gianluca Petrillo : Updated LArG4 documentation (timing of SimChannel).

## larevt v06_16_15

-   2018-01-10 Lynn Garren : larevt v06_16_15 for larsoft v06_62_01

## lardata v06_35_00

-   2018-01-10 Lynn Garren : lardata v06_35_00 for larsoft v06_62_01
-   2018-01-09 Gianluca Petrillo : Fixes to ChargedSpacePoint proxy documentation
-   2018-01-09 Gianluca Petrillo : Merge remote-tracking branch 'origin/develop' into feature/gp_Issue18619
-   2017-12-22 Gianluca Petrillo : Added dumper for space points with charge
-   2017-12-21 Gianluca Petrillo : Introduced a helper to write space points and associated charge.
-   2017-12-20 Gianluca Petrillo : Added proxy for space points associated with charge.

## larcore v06_15_11

-   2018-01-10 Lynn Garren : larcore v06_15_11 for larsoft v06_62_01

## larpandoracontent v03_09_01

-   2018-01-10 Lynn Garren : larpandoracontent v03_09_01 for larsoft v06_62_01
-   2018-01-10 Lynn Garren : larpandoracontent v03_09_01
-   2017-12-19 John Marshall : LArPfoHelper::SortByHitProjection should now fully support use with CartesianVector only (no CaloHit) input.

## larsoftobj v1_36_00

-   2018-01-10 Lynn Garren : larsoftobj v1_36_00 for larsoft v06_62_01
-   2018-01-10 Lynn Garren : update products

## lardataobj v1_26_00

-   2018-01-10 Lynn Garren : lardataobj v1_26_00 for larsoft v06_62_01
-   2018-01-09 Gianluca Petrillo : Merge remote-tracking branch 'origin/develop' into feature/gp_Issue18619
-   2017-12-22 Gianluca Petrillo : Amended documentation of recob::TrajectoryPointFlags
-   2017-12-20 Gianluca Petrillo : Adding recob::PointCharge data product class.

## larcorealg v1_14_01

-   2018-01-10 Lynn Garren : larcorealg v1_14_01 for larsoft v06_62_01
-   2018-01-02 Lynn Garren : larsoft v06_62_00
-   2018-01-02 Gianluca Petrillo : Container indexed by geometry ID: geo::TPCID and geo::PlaneID.
-   2018-01-02 Gianluca Petrillo : Geometry doxygen documentation
-   2018-01-02 Gianluca Petrillo : Fixes to help doxygen parser
-   2018-01-02 Gianluca Petrillo : Added missing arguments in testing::TesterEnvironment.

## larcoreobj v1_18_01

## larbatch v01_35_00

-   2018-01-10 Lynn Garren : larbatch v01_35_00 for larsoft v06_62_01
-   2018-01-09 Herbert Greenlee : Add recursive and analysis flags.
-   2018-01-08 Herbert Greenlee : Add support for recursive input datasets.
-   2018-01-05 Herbert Greenlee : Merge branch 'develop' of ssh://cdcvs.fnal.gov/cvs/projects/larbatch into develop
-   2018-01-05 Herbert Greenlee : Add ability to source environment initialization script directly from cvmfs. Remove ifdh force options from batch scripts. Use new-style way of forcing sam to take a snapshot when starting a project.

## larutils v1_20_05

-   2018-01-10 Lynn Garren : larutils v1_20_05 for larsoft v06_62_01
-   2018-01-05 Thomas Junk : strip the v off of the version number of the tarball so copytoscisoft is happy
