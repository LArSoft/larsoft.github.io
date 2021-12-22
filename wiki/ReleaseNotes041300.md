LArSoft v04\_13\_00 Release Notes
======================================================================

-   **Table of contents**
-   [LArSoft v04\_13\_00 Release Notes](#LArSoft-v04_13_00-Release-Notes)
    -   [Purpose](#Purpose)
    -   [New features](#New-features)
    -   [Bug fixes](#Bug-fixes)
    -   [Updated dependencies](#Updated-dependencies)
-   [Change List](#Change-List)
    -   [larsoft v04\_13\_00](#larsoft-v04_13_00)
    -   [lareventdisplay v04\_05\_01](#lareventdisplay-v04_05_01)
    -   [larexamples v04\_04\_11](#larexamples-v04_04_11)
    -   [larpandora v04\_04\_11](#larpandora-v04_04_11)
    -   [larana v04\_07\_03](#larana-v04_07_03)
    -   [larreco v04\_09\_00](#larreco-v04_09_00)
    -   [larsim v04\_07\_07](#larsim-v04_07_07)
    -   [larevt v04\_08\_01](#larevt-v04_08_01)
    -   [lardata v04\_09\_00](#lardata-v04_09_00)
    -   [larcore v04\_11\_00](#larcore-v04_11_00)
    -   [larbatch v01\_11\_00](#larbatch-v01_11_00)
    -   [larutils v1\_00\_12](#larutils-v1_00_12)

[list of LArSoft releases](LArSoft_release_list)\
[Download instructions](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v04_13_00/larsoft-v04_13_00.html)

Purpose
--------------------

-   lardata feature/davidc1\_daqheader
-   larreco [feature/rsulej\_PmaTrack3D](https://indico.fnal.gov/getFile.py/access?contribId=5&resId=0&materialId=slides&confId=10058)
-   changes to develop since v04\_12\_00

New features
------------------------------

Bug fixes
------------------------

Updated dependencies
----------------------------------------------

  --------------- ------------ ----------- -------
  Product         Version      Qualifier   Notes
  cetbuildtools   v4\_11\_03               
  --------------- ------------ ----------- -------

Change List
============================

larsoft v04\_13\_00
------------------------------------------

-   2015-06-16 Lynn Garren : larsoft v04\_13\_00 for larsoft v04\_13\_00
-   2015-06-16 Lynn Garren : update product versions
-   2015-06-16 Lynn Garren : cetpkgsupport v1\_08\_06 and cetbuildtools v4\_11\_03
-   2015-06-11 Lynn Garren : just reference buildFW -h
-   2015-06-11 Lynn Garren : using s11
-   2015-06-10 Lynn Garren : not all larcore tests work in standalone build

lareventdisplay v04\_05\_01
----------------------------------------------------------

-   2015-06-16 Lynn Garren : lareventdisplay v04\_05\_01 for larsoft v04\_13\_00

larexamples v04\_04\_11
--------------------------------------------------

-   2015-06-16 Lynn Garren : larexamples v04\_04\_11 for larsoft v04\_13\_00

larpandora v04\_04\_11
------------------------------------------------

-   2015-06-16 Lynn Garren : larpandora v04\_04\_11 for larsoft v04\_13\_00

larana v04\_07\_03
----------------------------------------

-   2015-06-16 Lynn Garren : larana v04\_07\_03 for larsoft v04\_13\_00

larreco v04\_09\_00
------------------------------------------

-   2015-06-16 Lynn Garren : larreco v04\_09\_00 for larsoft v04\_13\_00
-   2015-06-16 Tingjun Yang : Add \${Boost\_SYSTEM\_LIBRARY}
-   2015-06-15 Robert Sulej : fine tuning before publish
-   2015-06-15 Robert Sulej : dedx output to ttree
-   2015-06-12 Robert Sulej : ready to publish, todo better logic in cluster matching, merging of tracks and some special cases
-   2015-06-12 Robert Sulej : merge
-   2015-06-11 Robert Sulej : box for algorithm class
-   2015-06-11 Robert Sulej : trk finding loops done, todo module-alg separation
-   2015-06-11 Lynn Garren : larsoft v04\_12\_00
-   2015-06-10 Tingjun Yang : move trackfindermodules\_argoneut.fcl to argoneutcode
-   2015-06-08 Robert Sulej : working loop over tpc, todo growing tracks
-   2015-06-05 Robert Sulej : merge
-   2015-06-05 Robert Sulej : progress on module
-   2015-06-02 Robert Sulej : dQdx done
-   2015-06-02 Robert Sulej : dQdx ready to save in recobTrack
-   2015-06-01 Robert Sulej : hit to sp associations (to be verified)
-   2015-06-01 Robert Sulej : iteratively growing track tested
-   2015-05-29 Robert Sulej : more initialization
-   2015-05-29 Robert Sulej : Merge branch ‘develop’ into feature/rsulej\_PmaTrack3D
-   2015-05-29 Robert Sulej : can optimize single segments and produce larsoft output
-   2015-05-27 Robert Sulej : track saved to event structure
-   2015-05-26 Robert Sulej : some initial code for PMAlg module
-   2015-05-26 Robert Sulej : add module for PMAlg
-   2015-05-26 Robert Sulej : track 3D basically done, to do wrapping in an algorithm module
-   2015-05-22 Robert Sulej : progress on track, to do initialization
-   2015-05-21 Robert Sulej : track half done
-   2015-05-21 Robert Sulej : Merge branch ‘develop’ of ssh://cdcvs.fnal.gov/cvs/projects/larreco into feature/rsulej\_PmaTrack3D
-   2015-05-20 Robert Sulej : hits, nodes and segments done, track still to do
-   2015-05-20 Robert Sulej : hits, nodes and segments done, track still to do
-   2015-05-20 Robert Sulej : hits, nodes and segments done, track still to do
-   2015-05-19 Robert Sulej : next functions…
-   2015-05-19 Robert Sulej : next classes
-   2015-05-19 Robert Sulej : more classes
-   2015-05-18 Robert Sulej : more code…
-   2015-05-15 Robert Sulej : porting code…
-   2015-05-15 Robert Sulej : add PMAlg

larsim v04\_07\_07
----------------------------------------

-   2015-06-16 Lynn Garren : larsim v04\_07\_07 for larsoft v04\_13\_00

larevt v04\_08\_01
----------------------------------------

-   2015-06-16 Lynn Garren : larevt v04\_08\_01 for larsoft v04\_13\_00

lardata v04\_09\_00
------------------------------------------

-   2015-06-16 Lynn Garren : lardata v04\_09\_00 for larsoft v04\_13\_00
-   2015-06-16 Lynn Garren : Merge branch ‘feature/davidc1\_daqheader’ into release/v04\_13\_00
-   2015-06-16 Lynn Garren : cetbuildtools v4\_11\_03
-   2015-06-16 Taritree Wonjigrad : moved channel map retrival into databaseutil service
-   2015-06-15 Taritree Wonjigrad : database access for swizzler
-   2015-06-14 Taritree Wonjigrad : Revert “Revert”merge in prep to bring branch up to develop“”
-   2015-06-12 Taritree Wonjigrad : Revert “merge in prep to bring branch up to develop”
-   2015-06-11 Taritree Wonjigrad : merge in prep to bring branch up to develop
-   2015-06-02 kterao : Needed change for new optical stuff to coop w/ data swizzling –kazu
-   2015-05-27 kterao : Necessary change to process binary file –kazu
-   2015-05-20 kterao : bang bang –kazu
-   2015-05-20 kterao : Merge tag ‘v04\_07\_00’ into feature/davidc1\_daqheader
-   2014-12-22 David Caratelli : DAQHeader edits: SubRun now stored in DAQHeader –David Caratelli

larcore v04\_11\_00
------------------------------------------

-   2015-06-16 Lynn Garren : larcore v04\_11\_00 for larsoft v04\_13\_00
-   2015-06-15 Gianluca Petrillo : Running geometry\_iterator\_test in the unit test suite only if ‘ONLY\_SLF’ is specified as test group
-   2015-06-12 Gianluca Petrillo : Added unit test for geometry element iterators.
-   2015-06-12 Gianluca Petrillo : Moved comparison operators out of geometry element iterator classes
-   2015-06-12 Gianluca Petrillo : Switched implementation of geometry element iterators from inheritance to containment. Needs unit test.
-   2015-06-12 Gianluca Petrillo : Implementation of geometry element iterators switched to a template.
-   2015-06-12 Gianluca Petrillo : Added iterators through geometry elements, as opposed to their ID. Test updated.
-   2015-06-11 Gianluca Petrillo : Adding “ID” to internal test iterator variables and to documentation.
-   2015-06-11 Gianluca Petrillo : Geometry test configuration now allows to say which tests to skip rather than which ones to run.
-   2015-06-11 Gianluca Petrillo : Slighly reduced debugging output in geometry iterator tests
-   2015-06-10 Gianluca Petrillo : Fixed GeometryCore::ThirdPlaneSlope() to support any detector. Added GeometryCore::ThirdPlane\_dTdW() accepting dT/dW as input instead of “homogeneous” slope. Tests updated accordingly.
-   2015-06-08 Gianluca Petrillo : Added PlaneGeo::PhiZ() to return the angle for increasing wire coordinate. Added test on it.
-   2015-06-05 Gianluca Petrillo : Extended the interface of ThirdPlaneSlope().
-   2015-06-05 Gianluca Petrillo : Added functionality to return the center of TPC and cryostat (from geo::BoxBoundedGeo)
-   2015-06-03 Gianluca Petrillo : Added a very simple test for GeometryCore::ThirdPlaneSlope(), plus LaTeX documentation about the formula.

larbatch v01\_11\_00
--------------------------------------------

-   2015-06-16 Lynn Garren : larbatch v01\_11\_00 for larsoft v04\_13\_00
-   2015-06-16 Tingjun Yang : Return production user name if the role is Production.
-   2015-06-12 Herbert Greenlee : Use proper ifdh option when invoking emptydir.py

larutils v1\_00\_12
------------------------------------------

-   2015-06-16 Lynn Garren : larutils v1\_00\_12 for larsoft v04\_13\_00
-   2015-06-12 Herbert Greenlee : Add a call to /cvmfs/grid.cern.ch/util/cvmfs-uptodate.
