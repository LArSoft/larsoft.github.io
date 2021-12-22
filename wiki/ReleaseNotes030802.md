LArSoft v03\_08\_02 Release Notes(#LArSoft-v03_08_02-Release-Notes)
======================================================================

-   **Table of contents**
-   [LArSoft v03\_08\_02 Release Notes](#LArSoft-v03_08_02-Release-Notes)
    -   [Purpose](#Purpose)
    -   [New features](#New-features)
    -   [Known problems](#Known-problems)
    -   [Updated dependencies](#Updated-dependencies)
-   [Change List](#Change-List)
    -   [larsoft v03\_08\_02](#larsoft-v03_08_02)
    -   [lareventdisplay v03\_04\_02](#lareventdisplay-v03_04_02)
    -   [larexamples v03\_02\_14](#larexamples-v03_02_14)
    -   [larpandora v03\_07\_01](#larpandora-v03_07_01)
    -   [larana v03\_04\_02](#larana-v03_04_02)
    -   [larreco v03\_08\_00](#larreco-v03_08_00)
    -   [larsim v03\_07\_00](#larsim-v03_07_00)
    -   [larevt v03\_04\_02](#larevt-v03_04_02)
    -   [lardata v03\_08\_01](#lardata-v03_08_01)
    -   [larcore v03\_05\_00](#larcore-v03_05_00)
    -   [larbatch v01\_04\_01](#larbatch-v01_04_01)
    -   [larutils v1\_00\_03](#larutils-v1_00_03)

[list of LArSoft releases](LArSoft_release_list)\
[Download instructions](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v03_08_02/larsoft-v03_08_02.html)

Purpose(#Purpose)
--------------------

This is the final tag before the v04\_00\_00 release.

New features(#New-features)
------------------------------

-   This release contains commits that were really intended for the v04 release. Release v03\_08\_01 is a better snapshot of the state of the code before v04.

Known problems(#Known-problems)
----------------------------------

-   This release does not build on OSX because of a change in AuxDetDigit.

Updated dependencies(#Updated-dependencies)
----------------------------------------------

  --------------- ------------ ----------- -------
  Product         Version      Qualifier   Notes
  larsoft\_data   v0\_03\_03               
  --------------- ------------ ----------- -------

Change List(#Change-List)
============================

larsoft v03\_08\_02(#larsoft-v03_08_02)
------------------------------------------

-   2015-02-11 Lynn Garren : larsoft v03\_08\_02 for larsoft v03\_08\_02
-   2015-02-11 Lynn Garren : larsoft v03\_08\_02 for larsoft v03\_08\_02
-   2015-02-11 Lynn Garren : psycopg2 has no qualifiers
-   2015-02-11 Lynn Garren : update versions

lareventdisplay v03\_04\_02(#lareventdisplay-v03_04_02)
----------------------------------------------------------

-   2015-02-11 Lynn Garren : lareventdisplay v03\_04\_02 for larsoft v03\_08\_02

larexamples v03\_02\_14(#larexamples-v03_02_14)
--------------------------------------------------

-   2015-02-11 Lynn Garren : larexamples v03\_02\_14 for larsoft v03\_08\_02

larpandora v03\_07\_01(#larpandora-v03_07_01)
------------------------------------------------

-   2015-02-11 Lynn Garren : larpandora v03\_07\_01 for larsoft v03\_08\_02

larana v03\_04\_02(#larana-v03_04_02)
----------------------------------------

-   2015-02-11 Lynn Garren : larana v03\_04\_02 for larsoft v03\_08\_02
-   2015-02-11 Thomas Warburton : Changing the other fcl parameters to useArea-true and ModuleLabels-true. Sorry for multiple commits…
-   2015-02-11 Thomas Warburton : Calibration of 35ton CalAmp constants as discussed in todays 35ton meeting. As noted will need to be re-calibrated again in future.
-   2015-02-11 Thomas Warburton : Calibration of 35ton CalAmp constants as discussed in todays 35ton meeting. As noted will need to be re-calibrated again in future.

larreco v03\_08\_00(#larreco-v03_08_00)
------------------------------------------

-   2015-02-11 Lynn Garren : larreco v03\_08\_00 for larsoft v03\_08\_02
-   2015-02-11 Kalousis Leonidas : Correct a silly bug
-   2015-02-01 Kalousis Leonidas : Fix angular resolution value
-   2015-01-31 Kalousis Leonidas : last change; MultiScatter2 almost ready
-   2015-01-31 Kalousis Leonidas : re-arrange class functions
-   2015-01-31 Kalousis Leonidas : import single LLHD code
-   2015-01-30 Kalousis Leonidas : add aux. pull term in chi\^2
-   2015-01-30 Kalousis Leonidas : push latest chi\^2 (ECC) method
-   2015-01-30 Kalousis Leonidas : modify/imrove RMS algo
-   2015-01-30 Kalousis Leonidas : Modify theta\_{rms} code
-   2015-01-30 Kalousis Leonidas : chi\^2 structure improvement
-   2015-01-29 Kalousis Leonidas : test, first change on MultiScatter2

larsim v03\_07\_00(#larsim-v03_07_00)
----------------------------------------

-   2015-02-11 Lynn Garren : larsim v03\_07\_00 for larsoft v03\_08\_02
-   2015-02-10 Matthew Toups : Change default file for photon library to point to the updated library with 32 PMTs.
-   2015-02-10 Matthew Toups : Merge branch ‘develop’ of ssh://cdcvs.fnal.gov/cvs/projects/larsim into feature/toups\_photon\_library
-   2015-02-10 Matthew Toups : Updated ups product\_deps
-   2015-01-27 Matthew Toups : Update version of larsoft.
-   2015-01-27 Matthew Toups : Merge remote-tracking branch ‘origin/develop’ into feature/toups\_photon\_library
-   2015-01-27 Matthew Toups : Nonfunctional changes to largeant fcl file.
-   2015-01-27 Matthew Toups : Update job submission script
-   2014-12-02 Matthew Toups : Update optical library build tools.
-   2014-12-01 Matthew Toups : Comment out redundant line in simulationservices.fcl for microboone.fcl.

larevt v03\_04\_02(#larevt-v03_04_02)
----------------------------------------

-   2015-02-11 Lynn Garren : larevt v03\_04\_02 for larsoft v03\_08\_02

lardata v03\_08\_01(#lardata-v03_08_01)
------------------------------------------

-   2015-02-11 Lynn Garren : lardata v03\_08\_01 for larsoft v03\_08\_02
-   2015-02-10 Brian\_Rebel : add TimeStamp information to AuxDetDigit. uint64\_t, upper 32 bits used for seconds since 1970, lower for nanosecond precision

larcore v03\_05\_00(#larcore-v03_05_00)
------------------------------------------

-   unchanged

larbatch v01\_04\_01(#larbatch-v01_04_01)
--------------------------------------------

-   2015-02-11 Lynn Garren : larbatch v01\_04\_01 for larsoft v03\_08\_02
-   2015-02-11 Herbert Greenlee : Add version to job name.
-   2015-02-11 Herbert Greenlee : Prevent text widgets from taking input focus.
-   2015-02-10 Herbert Greenlee : Fix typo (add missing “\$”). Thanks Kirby.
-   2015-02-10 Herbert Greenlee : Get rid of all interactive use of ifdh for accessing dCache (use posix instead).
-   2015-02-10 Herbert Greenlee : Add missing splitlines.
-   2015-02-10 Herbert Greenlee : Preserve current directory during job submission.
-   2015-02-05 Tingjun Yang : Missing “then”.

larutils v1\_00\_03(#larutils-v1_00_03)
------------------------------------------

-   2015-02-11 Lynn Garren : larutils v1\_00\_03 for larsoft v03\_08\_02
-   2015-02-04 Herbert Greenlee : Fix tar extension.
