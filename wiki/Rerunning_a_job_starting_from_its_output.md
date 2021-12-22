Rerunning a job starting from its output(#Rerunning-a-job-starting-from-its-output)
======================================================================================

-   **Table of contents**
-   [Rerunning a job starting from its output](#Rerunning-a-job-starting-from-its-output)
    -   [Optimisation: don’t keep the output from the original job (recommended)](#Optimisation-dont-keep-the-output-from-the-original-job-recommended)
    -   [A failure: myjob.fcl does not ask for timestamp to be added to output file name](#A-failure-myjobfcl-does-not-ask-for-timestamp-to-be-added-to-output-file-name)
    -   [A failure: process name is explicitly specified in the configuration of modules or services](#A-failure-process-name-is-explicitly-specified-in-the-configuration-of-modules-or-services)

These instructions drive you to rerun a job when the input file was lost, but the output file is still available.\
Let’s define:

-   `myjob.fcl`: the file with the original FHiCL configuration for the job
-   `MyJob`: the name of the process defined in there (found in a line like `process_name: MyJob`)
-   `myjob_output_SOMETIMESTAMP.root`: the old output file produced by that job

Rerunning the job is quite simple, actually, but with one caveat: the process name *must* be different. In fact, *art* will not allow two jobs with the same process name to process the same file.\
Therefore, a `myjob_again.fcl` file with content:\

    #include "myjob.fcl" 

    process_name: MyJobAgain

is all what’s needed^[1](#fn1)^:\

    lar -c myjob_again.fcl -s myjob_output_SOMETIMESTAMP.root

will produce an output file `myjob_output_SOMEOTHERTIMESTAMP.root` will all the content of `myjob_output_SOMETIMESTAMP.root` and also the new one. Even better, the following jobs which specify input tags as “moduleName:instanceName” will still work: there may be two data products matching “moduleName:instanceName”, one produced by `MyJob` and another by `MyJobAgain`, but unless the process name is explicitly set (like in “MyJob:moduleName:instanceName”… but who does that?) *art* will silently select the most recent.

> In general, additional configuration can be specified after those lines to change the details of the job, which may be quite useful. Note that no `PROLOG` can be opened after the inclusion of `myjob.fcl`, and for the same reason additional inclusions are typically valid only *before* that inclusion.

^1^ Nothing LArSoft-specific in this page: you can replace `lar` command with any other `art`-based executable or with `art` itself.

Optimisation: don’t keep the output from the original job *(recommended)*(#Optimisation-dont-keep-the-output-from-the-original-job-recommended)
--------------------------------------------------------------------------------------------------------------------------------------------------

The configuration above will produce an output file with *both* `MyJob` and `MyJobAgain` output data products. While this does not any harm in common cases^[2](#fn2)^, they have the potential to create confusion, they take disk space and they have no purpose. In short: we should get rid of them:\

    #include "myjob.fcl" 

    process_name: MyJobAgain

    source.inputCommands: [ "keep *", "drop *_*_*_MyJob" ]

\
The file still remembers that `MyJob` was run and which data products it produced, but at least jobs will not be able to use that old data.

^2^ Exceptions apply: see below.

A failure: `myjob.fcl` does not ask for timestamp to be added to output file name(#A-failure-myjobfcl-does-not-ask-for-timestamp-to-be-added-to-output-file-name)
--------------------------------------------------------------------------------------------------------------------------------------------------------------------

If the output file name does not include timestamps (e.g. `myjob_output.root`), rerunning the job will attempt to overwrite the input file. We *definitely* don’t want that.\
A one-line fix is to explicitly specify the output file name on command line:\

    lar -c myjob_again.fcl -s myjob_output.root -o myjob_output_again.root

\
A more systematic approach is to have the new file name in the new FHiCL configuration:\

    #include "myjob.fcl" 

    process_name: MyJobAgain

    output.out1.out.fileName: "%ifb_again.root"

\
(`%ifb` is replaced with the base name of the input file, `myjob_output`; another popular option is `%ifb_%p-%tc.root`, adding process name and timestamp at file closure).\
Note that instead of `out1` you will have to put the name of the `RootOutput` instance in `myjob.fcl` (find it with `fhicl-dump myjob.fcl | less`).

A failure: process name is explicitly specified in the configuration of modules or services(#A-failure-process-name-is-explicitly-specified-in-the-configuration-of-modules-or-services)
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

If downstream configuration explicitly specifies the process name (`MyJob`), that is going to cause trouble (typically, the old data is used instead of the new one).\
It is quite uncommon for configuration to specify the process name in a input tag (as in the “MyJob:moduleName:instanceName” above).\
More common is to have filters to the input or output. If a `RootInput` module specifies `inputCommands: [ "drop *", "keep *_*_*_MyJob" ]`, it will remove anything that is not from `MyJob` from input, including `MyJobAgain` data (for example, if the `MyJob` data products were not dropped as recommended above, the job will silently process the old data). Whatever may happen then, it’s not what we want. Also `RootOutput` mirror configuration `inputCommands: [ "drop *", "keep *_*_*_MyJob" ]` will not give the desired result.\
In these cases, those configuration lines need to be replaced, like in:\

    #include "downstreamjob.fcl" 

    source.inputCommands: [ "drop *", "keep *_*_*_MyJobAgain" ]

* * * * *

*For questions or comments, contact [Gianluca Petrillo](mailto:petrillo@fnal.gov) .*
