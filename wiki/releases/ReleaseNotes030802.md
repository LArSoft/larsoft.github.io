# LArSoft v03_08_02 Release Notes



[list of LArSoft releases](LArSoft_release_list)  
[Download instructions](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v03_08_02/larsoft-v03_08_02.html)

## Purpose

This is the final tag before the v04_00_00 release.

## New features

-   This release contains commits that were really intended for the v04 release. Release v03_08_01 is a better snapshot of the state of the code before v04.

## Known problems

-   This release does not build on OSX because of a change in AuxDetDigit.

## Updated dependencies

|              |          |           |       |
|--------------|----------|-----------|-------|
| Product      | Version  | Qualifier | Notes |
| larsoft_data | v0_03_03 |           |       |

# Change List

## larsoft v03_08_02

-   2015-02-11 Lynn Garren : larsoft v03_08_02 for larsoft v03_08_02
-   2015-02-11 Lynn Garren : larsoft v03_08_02 for larsoft v03_08_02
-   2015-02-11 Lynn Garren : psycopg2 has no qualifiers
-   2015-02-11 Lynn Garren : update versions

## lareventdisplay v03_04_02

-   2015-02-11 Lynn Garren : lareventdisplay v03_04_02 for larsoft v03_08_02

## larexamples v03_02_14

-   2015-02-11 Lynn Garren : larexamples v03_02_14 for larsoft v03_08_02

## larpandora v03_07_01

-   2015-02-11 Lynn Garren : larpandora v03_07_01 for larsoft v03_08_02

## larana v03_04_02

-   2015-02-11 Lynn Garren : larana v03_04_02 for larsoft v03_08_02
-   2015-02-11 Thomas Warburton : Changing the other fcl parameters to useArea-true and ModuleLabels-true. Sorry for multiple commits…
-   2015-02-11 Thomas Warburton : Calibration of 35ton CalAmp constants as discussed in todays 35ton meeting. As noted will need to be re-calibrated again in future.
-   2015-02-11 Thomas Warburton : Calibration of 35ton CalAmp constants as discussed in todays 35ton meeting. As noted will need to be re-calibrated again in future.

## larreco v03_08_00

-   2015-02-11 Lynn Garren : larreco v03_08_00 for larsoft v03_08_02
-   2015-02-11 Kalousis Leonidas : Correct a silly bug
-   2015-02-01 Kalousis Leonidas : Fix angular resolution value
-   2015-01-31 Kalousis Leonidas : last change; MultiScatter2 almost ready
-   2015-01-31 Kalousis Leonidas : re-arrange class functions
-   2015-01-31 Kalousis Leonidas : import single LLHD code
-   2015-01-30 Kalousis Leonidas : add aux. pull term in chi^2
-   2015-01-30 Kalousis Leonidas : push latest chi^2 (ECC) method
-   2015-01-30 Kalousis Leonidas : modify/imrove RMS algo
-   2015-01-30 Kalousis Leonidas : Modify theta_{rms} code
-   2015-01-30 Kalousis Leonidas : chi^2 structure improvement
-   2015-01-29 Kalousis Leonidas : test, first change on MultiScatter2

## larsim v03_07_00

-   2015-02-11 Lynn Garren : larsim v03_07_00 for larsoft v03_08_02
-   2015-02-10 Matthew Toups : Change default file for photon library to point to the updated library with 32 PMTs.
-   2015-02-10 Matthew Toups : Merge branch 'develop' of ssh://cdcvs.fnal.gov/cvs/projects/larsim into feature/toups_photon_library
-   2015-02-10 Matthew Toups : Updated ups product_deps
-   2015-01-27 Matthew Toups : Update version of larsoft.
-   2015-01-27 Matthew Toups : Merge remote-tracking branch 'origin/develop' into feature/toups_photon_library
-   2015-01-27 Matthew Toups : Nonfunctional changes to largeant fcl file.
-   2015-01-27 Matthew Toups : Update job submission script
-   2014-12-02 Matthew Toups : Update optical library build tools.
-   2014-12-01 Matthew Toups : Comment out redundant line in simulationservices.fcl for microboone.fcl.

## larevt v03_04_02

-   2015-02-11 Lynn Garren : larevt v03_04_02 for larsoft v03_08_02

## lardata v03_08_01

-   2015-02-11 Lynn Garren : lardata v03_08_01 for larsoft v03_08_02
-   2015-02-10 Brian_Rebel : add TimeStamp information to AuxDetDigit. uint64_t, upper 32 bits used for seconds since 1970, lower for nanosecond precision

## larcore v03_05_00

-   unchanged

## larbatch v01_04_01

-   2015-02-11 Lynn Garren : larbatch v01_04_01 for larsoft v03_08_02
-   2015-02-11 Herbert Greenlee : Add version to job name.
-   2015-02-11 Herbert Greenlee : Prevent text widgets from taking input focus.
-   2015-02-10 Herbert Greenlee : Fix typo (add missing “$”). Thanks Kirby.
-   2015-02-10 Herbert Greenlee : Get rid of all interactive use of ifdh for accessing dCache (use posix instead).
-   2015-02-10 Herbert Greenlee : Add missing splitlines.
-   2015-02-10 Herbert Greenlee : Preserve current directory during job submission.
-   2015-02-05 Tingjun Yang : Missing “then”.

## larutils v1_00_03

-   2015-02-11 Lynn Garren : larutils v1_00_03 for larsoft v03_08_02
-   2015-02-04 Herbert Greenlee : Fix tar extension.
