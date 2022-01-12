LArSoft v04\_08\_02 Release Notes
======================================================================

-   **Table of contents**
-   [LArSoft v04\_08\_02 Release Notes](#LArSoft-v04_08_02-Release-Notes)
    -   [Purpose](#Purpose)
    -   [New features](#New-features)
    -   [Bug fixes](#Bug-fixes)
    -   [Updated dependencies](#Updated-dependencies)
-   [Change List](#Change-List)
    -   [larsoft v04\_08\_02](#larsoft-v04_08_02)
    -   [lareventdisplay v04\_04\_06](#lareventdisplay-v04_04_06)
    -   [larexamples v04\_04\_06](#larexamples-v04_04_06)
    -   [larpandora v04\_04\_06](#larpandora-v04_04_06)
    -   [larana v04\_06\_04](#larana-v04_06_04)
    -   [larreco v04\_06\_01](#larreco-v04_06_01)
    -   [larsim v04\_07\_02](#larsim-v04_07_02)
    -   [larevt v04\_07\_00](#larevt-v04_07_00)
    -   [lardata v04\_07\_00](#lardata-v04_07_00)
    -   [larcore v04\_07\_01](#larcore-v04_07_01)
    -   [larbatch v01\_08\_00](#larbatch-v01_08_00)
    -   [larutils v1\_00\_10](#larutils-v1_00_10)

[list of LArSoft releases](LArSoft_release_list)
[Download instructions](http://scisoft.fnal.gov/scisoft/bundles/larsoft/v04_08_02/larsoft-v04_08_02.html)

Purpose
--------------------

-   Changes to development since v04\_08\_01

New features
------------------------------

Bug fixes
------------------------

Updated dependencies
----------------------------------------------

Change List
============================

larsoft v04\_08\_02
------------------------------------------

-   2015-05-27 Lynn Garren : update product versions
-   2015-05-27 Lynn Garren : larsoft v04\_08\_02 for larsoft v04\_08\_02

lareventdisplay v04\_04\_06
----------------------------------------------------------

-   2015-05-27 Lynn Garren : lareventdisplay v04\_04\_06 for larsoft v04\_08\_02

larexamples v04\_04\_06
--------------------------------------------------

-   2015-05-27 Lynn Garren : larexamples v04\_04\_06 for larsoft v04\_08\_02

larpandora v04\_04\_06
------------------------------------------------

-   2015-05-27 Lynn Garren : larpandora v04\_04\_06 for larsoft v04\_08\_02

larana v04\_06\_04
----------------------------------------

-   2015-05-27 Lynn Garren : larana v04\_06\_04 for larsoft v04\_08\_02
-   2015-05-26 Thomas Warburton : Re-tuning lbne35t calorimetry constants.

larreco v04\_06\_01
------------------------------------------

-   2015-05-27 Lynn Garren : larreco v04\_06\_01 for larsoft v04\_08\_02

larsim v04\_07\_02
----------------------------------------

-   2015-05-27 Lynn Garren : larsim v04\_07\_02 for larsoft v04\_08\_02

larevt v04\_07\_00
----------------------------------------

-   2015-05-27 Lynn Garren : larevt v04\_07\_00 for larsoft v04\_08\_02
-   2015-05-22 Brandon Eberly : Default fcl file for database interface

lardata v04\_07\_00
------------------------------------------

larcore v04\_07\_01
------------------------------------------

larbatch v01\_08\_00
--------------------------------------------

-   2015-05-27 Lynn Garren : larbatch v01\_08\_00 for larsoft v04\_08\_02
-   2015-05-26 Herbert Greenlee : Really fix subrun merging bug.
-   2015-05-26 Herbert Greenlee : Make methods dojobsub and dosubmit raise an exception if they are unable to determine a jobsub job id from jobsub output.
-   2015-05-26 Herbert Greenlee : Fix job subrun Fix job merging bug.merging bug.
-   2015-05-26 Herbert Greenlee : Change most error handling from return/exit codes to raising python exceptions. This will allow better error handling for non-command-line.
-   2015-05-26 Herbert Greenlee : Add exception classes.
-   2015-05-21 Herbert Greenlee : Add method get\_pubs\_setage in module project.py. Move many modules into subdirectory project\_modules so that they won’t be directly on PYTHONPATH.
-   2015-05-21 Herbert Greenlee : Merge remote-tracking branch ‘origin/develop’ into feature/greenlee\_pubs2
-   2015-05-20 Herbert Greenlee : Forgot to add jobsuberror.py.
-   2015-05-20 Herbert Greenlee : Add exception class JobsubError, and make all jobsub commands raise this exception in case of nonzero return status.
-   2015-05-20 Herbert Greenlee : Save submitted jobsub jobids in a bookkeeping file called “jobids.list”.
-   2015-05-20 Herbert Greenlee : Capture output from various jobsub commands to reduce the amount of garbage printout.
-   2015-05-20 Herbert Greenlee : Remove separate options for –pubs\_input and –pubs\_output. Instead, add an xml element that can be used to disable pubs input mode for stages that don’t need it (generally intial stages from a fixed input list).
-   2015-05-20 Herbert Greenlee : Modify methods dosubmit and dojobsub to capture submitted job id from jobsub and return the jobid.
-   2015-05-20 Herbert Greenlee : Modify docheck\* methods to return more meaningful status codes (generally 0=success).
-   2015-05-15 Herbert Greenlee : Add options for using pubs input with many-to-one subrun mapping.
-   2015-05-15 Herbert Greenlee : Merge branch ‘develop’ into feature/greenlee\_pubs2
-   2015-05-15 Herbert Greenlee : Merge branch ‘develop’ into feature/greenlee\_pubs2
-   2015-05-14 Herbert Greenlee : Add features that are intended to support pubs.

larutils v1\_00\_10
------------------------------------------
