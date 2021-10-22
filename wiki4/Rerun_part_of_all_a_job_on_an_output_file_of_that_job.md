Rerun part or all a job on an output file of that job[¶](#Rerun-part-or-all-a-job-on-an-output-file-of-that-job)
================================================================================================================

Say you have run the configuration `myJob.fcl`, which has produced the output file `myOutput.root`.\
If you decide you want to try and run `myJob.fcl` again, but for any reason you don’t want to rerun on the original input file (because it’s lost, or because you don’t want to actually rerun all the modules in `myJob.fcl` but only part of them), you will need to start with `myOutput.root` as new *input* file.

The new configuration can be *almost* a copy of `myJob.fcl`, but you have to tell *art* to completely ignore the data products you know you are going to regenerate.\
Two options:

-   you need to regenerate all the data products from `myJob.fcl`
-   you need to regenerate some of data products from `myJob.fcl`

In the following we assume that the output file you are going to recycle contains all the necessary input data products. If not, you are obviously out of luck.

> **Note:** these procedures do not guarantee that the random number sequences will be the same as in the original job. To achieve that, additional effort might be needed.


Regenerate all the data products from a job[¶](#Regenerate-all-the-data-products-from-a-job)
--------------------------------------------------------------------------------------------

You first need to know which is the process name of the previous job.\
It should be possible to learn it from `myJob.fcl`, which should have an entry `process_name` (referred below as `<ProcessName>`).

Create a new FHiCL file as follows:\

    #include "myJob.fcl" 

    # change process name
    process_name: <ProcessName>Again

    source.inputCommands: [
      "keep *",
      "drop *_*_*_<ProcessName>" 
    ]

\
This will drop *from the input* all data products produced with a process name `<ProcessName>`.

> **Note**: even so, *art* will remember that `<ProcessName>` happened already and it will forbid the same process name to be used again. For this reason, `process_name` *must* be specified.

You will also want to make sure that:

-   the output file name is different than before (you can use *art* command line argument `--output` or specify the output file name in the new FHiCL file)
-   that the old FHiCL file is in the `FHICL_FILE_PATH` (otherwise the `#include` in the previous configuration will fail

In alternative, you can make the FHiCL file as you prefer, as long as the `source.inputCommands` configuration is present.


Regenerate the data products from selected modules in a job[¶](#Regenerate-the-data-products-from-selected-modules-in-a-job)
----------------------------------------------------------------------------------------------------------------------------

This procedure is in principle similar to the previous one where you regenerate the whole job, but it takes a bit longer to prepare.\
So, read the previous one first.\
We assume we want to rerun the modules with *labels* `module1`, `module2`, up to `moduleN`

The key ingredient is an `inputCommands` line like:\

    source.inputCommands: [
      "keep *",
      "drop *_module1_*_<ProcessName>",
      "drop *_module2_*_<ProcessName>",
      # ...
      "drop *_moduleN_*_<ProcessName>" 
    ]

\
This will drop *from the input* all data products produced by modules with labels `module1`, `module2`, etc., with a process name `<ProcessName>`.\
The complication is that you have to also:

-   change the process name (because the old one will not disappear)
-   overwrite the list of modules you want really to run

The following excerpt should inspire you the solution, but the actual details may vary a lot:\

    #include "myJob.fcl" 

    # change process name
    process_name: MyJobAgain

    # drop the data products of the modules to be rerun
    source.inputCommands: [
      "keep *",
      "drop *_module1_*_<ProcessName>",
      "drop *_module2_*_<ProcessName>",
      # ...
      "drop *_moduleN_*_<ProcessName>" 
    ]

    # change which modules are being run
    physics.trigger_paths: [ reco ]
    physics.reco: [ "module1", "module2", ... , "moduleN" ]


The *art* branch name[¶](#The-art-branch-name)
----------------------------------------------

The specification of *art* branches used in `inputCommands` of `RootInput` (and also in `outputCommands` from `RootOutput` are in the form:\

    <ClassName>_<ModuleLabel>_<InstanceLabel>_<ProcessName>

\
where:

-   `<ClassName>` is related to the fully qualified C++ class of the stored data product; if it’s a collection (that happens almost always in LArSoft), a `s` is appended.\
    For example, `std::vector<recob::Track>` will show a `<ClassName>` like `recob::Tracks`; templates are specials, and the template types are put before the templated class name: for example, an association set without metadata like `art::Assns<simb::MCFlux,simb::MCTruth>` becomes `simb::MCFluxsimb::MCTruthvoidart::Assns` (remember that in that case the metadata is of type `void` and the actual class is `art::Assns<simb::MCFlux,simb::MCTruth, void>`)
-   `<ModuleLabel>` is the label used to configure the module producing the product; for example, in a configuration like `gaushit: { moduleType: GausHitFinder ... }` the module label is `gaushit`
-   `<InstanceLabel>` is the instance label of the data product; it is decided by the producer module, it is often hard coded and in most of the cases it has the default value of an empty label; in that case, the branch will show two underscore characters `_` one after the other
-   `<ProcessName>` is the name of the job (or process) which created the data product; it is set in the configuration as the `process_name` parameter.

If you forget where is what, a peek to a ROOT file will help:\

    root -lb myOutput.root
    Events->GetListOfBranches()->ls()

\
shows all data product branches, while\

    Events->GetListOfBranches()->ls("*_<ProcessName>.")

\
will show only the data products produced by `<ProcessName>` (note the dot `.` at the end of the string).

* * * * *

**These instructions haven’t been tested yet.**\
*For comments, write to [Gianluca Petrillo](mailto:petrillo@fnal.gov) .*
