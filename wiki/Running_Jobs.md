

# Running Jobs

This page describes the job configuration file (often, in jargon: *FHiCL file*) and how to run a job using one.

It is assumed that you have previously read the [Quick-start guide to using and developing LArSoft code](Quick-start_guide_to_using_and_developing_LArSoft_code) and the information on [Using LArSoft on the GPVM nodes](Using_LArSoft_on_the_GPVM_nodes).

## The Job Configuration

Once a base release is set up, it is easy to run a job. The basic unit for running a job is the job-control script, written in the FHICL language. The FHICL language provides a simple mechanism for including parameter set configurations from different files such that many job configuration files can use the same configuration for a module or service.

There is also a [FHiCL quick start guide](https://cdcvs.fnal.gov/redmine/projects/fhicl/wiki) available for more details.

### Key Concepts in FHiCL

There are a few key concepts to writing a FHICL job control script. In order, they are

1.  Including previously defined configurations for services and modules from other files. This is done using `#include` statements. **Be sure you don't have any trailing space or tab characters** on the `#include` line.
2.  Service block, denoted by `services: { }` This block will contain configurations for ART specific services such as the `TFileService` and the `RandomNumberGenerator`. It also contains the configuration of LArSoft specific services[^1].
3.  Source block, denoted by `source: { }`. This block tells the job what kind of source to expect (`EmptyEvent` in the case of Monte Carlo generation, `RootInput` in the case of anything downstream of a Monte Carlo generator or reconstruction, and specific modules for data from the detector), the file name for the input source if appropriate, and how many events to process. Both the file name and number of events to process can be specified on the command line.
4.  Output block, denoted by `outputs: { }` This block tells the job what kind of output to make, i.e. `RootOutput`, and what the name of the output file should be. The output file name can be specified on the command line. It is possible to define more than one output file if one wanted to run a job that produced different output files based on filter criteria - i.e. empty events are put in one file and events with neutrinos in them are put in another. Multiple output files can only be specified in the job configuration file, not from the command line.
5.  Physics block, denoted by `physics: { }` This block is where all producer, analyzer, and filter modules are configured. Sequences of producer and filter modules to run is defined in user-named *paths* in this block. The list of analyzers and output modules to run is defined in a separate user-named path. The block also defines two keyword parameters, `trigger_paths` and `end_paths`. `trigger_paths` contains all producer and filter paths to run, and `end_paths` contains the analyzer and output path.

Comments may be included in FHiCL configuration files using the “\#” character. The `#include` is a keyword so that the parser knows not to ignore what comes after “\#include[^2]”.

### FHiCL Rules

There are a few of rules to keep in mind about FHiCL:

-   The value of the `process_name` parameter may not contain underscores as the process name is used in the ROOT file branch name. Module labels may not contain underscores either, for the same reason.
-   Parameter set names may not contain numbers, periods, backslashes, stars, etc. They may contain underscores.
-   Put the values for all string parameters in double quotes, `"..."`
-   Specify input vectors using `[ , , ]`, i.e. if you want a vector of doubles do `MyVector: [1.0, 3e-9, -900.]`
-   You pick out configurations from the `PROLOG` section(s), usually defined in the `#include` files, using the @ `local::` syntax. The value after the “`::`” is the name of the configuration specified in the `PROLOG` (see the next bullet)
-   You can override the value of an included configuration. For example, imagine there is a configuration specified in a included file called `mymoduleconfig` and it contains the value `-5` for the parameter named `myint`. One can load the configuration and then change the value of `myint` by doing the following:  
    \*# inside the producers block:
        physics: {
          producers: {
            # ...
            mymod: @local::mymoduleconfig
          }
        }

      
    \*# out of the physics block
        physics.producer.mymod.myint: 1

      
    The last value for a parameter always wins. If the second line was repeated with the value `2` instead of `1`, the job would run with `myint` as `2`.  
    Also note that in the example the original content of `mymoduleconfig` is not changed when the content of `mymod` is.

### Example configuration file: `detsimmodules.fcl`

An example of a file with predefined configurations for modules is in the [larsim/DetSim/detsimmodules.fcl](https://cdcvs.fnal.gov/redmine/projects/larsim/repository/revisions/develop/entry/DetSim/detsimmodules.fcl) file.  
All the definitions are inside a prologue block.  
The following is an excerpt taken from LArSoft `v05_00_00` (experiments now use their specific `detsimmodule_Xxxx.fcl` configuration file though):

    BEGIN_PROLOG

    standard_simwire:
    {
      module_type:        "SimWire"
      DriftEModuleLabel:  "largeant"
      NoiseFact:           0.0132      # Noise Scale
      NoiseWidth:         62.4         # Exponential Noise width (kHz)
      LowCutoff:           7.5         # Low frequency filter cutoff (kHz)
      FieldBins:          75
      Col3DCorrection:    2.5
      Ind3DCorrection:    1.5
      ColFieldRespAmp:    0.0354
      IndFieldRespAmp:    0.018
      ShapeTimeConst:     [ 3000., 900. ]
      CompressionType:    "none"
    }

    argoneut_simwireana: @local::standard_simwireana

    ###
    ### ... and more configurations ...
    ###

    END_PROLOG

### Configuring the [message service](https://cdcvs.fnal.gov/redmine/projects/messagefacility/wiki/Using_MessageFacility#Using-MessageFacility)

Several standard configurations for the message service are in [lardata/Utilities/messageservice.fcl](https://cdcvs.fnal.gov/redmine/projects/lardata/repository/revisions/develop/entry/Utilities/messageservice.fcl). There is one configuration for each level of message output - Debug, Info, Warning, and Error. These configurations will be applied to each message level that is specified and those of higher priority. For example, the Info configuration will print out Info, Warning and Error level messages while the Warning configuration only print outs Warning and Error level messages. The “standard” debug configurations will cause the messages to go to a specified output file, `debug.log`. The Error configuration redirect to standard error stream (like `std::cerr`), while the others print into the standard output (`std::cout`). All impose some limits on the repetition of some frequent messages.  
Remember that to use one of these “standard” configurations you need to include it in your FCL file: they are standard, not default.  
If you want to define your own configuration, please take a look at the comments in [lardata/Utilities/messageservice.fcl](https://cdcvs.fnal.gov/redmine/projects/lardata/repository/revisions/develop/entry/Utilities/messageservice.fcl) file to determine how to do so.

Examples of how to include the usual use of the message service configurations are in the example files below.

To get a different level of output from just one module (say `DBSCAN`) one would do:

    services:
    {
      # Load the service that manages root files for histograms.
      TFileService: { fileName: "reco_hist.root" }
      Timing:       {}
      RandomNumberGenerator: {} #ART native random number generator

      # configure the message service with the INFO for DBSCAN
      # and WARNING level for everything else
      message: { 
        destinations: {  
          infomsg: {
            type: "cout"
            threshold: "INFO"
            append: true
            category: {
               DBSCAN: {
                 reportEvery: 1
               }
            }
          }
          warningmsg: {
            type:      "cout"   
            threshold: "WARNING"
            append:    true        
            categories: {
              default: {
                limit:       1000   
                timespan:    60    
              }
            } # end categories
          } # end warningmsg
        } # end destinations
      } # end standard_warning

      user:         @local::argoneut_services        
    }

#### Debug messages

Note that debugging messages are treated in a special way:

1.  there are two ways to print a debug message in the code: by using `mf::LogDebug`, and by using `LOG_DEBUG` macro; the messages using the latter will not be present when a non-debug qualifier (`prof` and `opt`) is used. In fact, no code is generated at all from a `LOG_DEBUG` call unless using a `debug` qualified build
2.  debug output from modules is selectively enabled by the `debugModules` list; to enable all the messages, use `debugModules: [ "*" ]`

Also remember that, depending on the configuration, the debug output could be not shown on screen, but only stored in a file (e.g. `debug.log`).

### Example job script: `prodgenie.fcl`

To see an example job script to produce Monte Carlo events, go to: [larsim/EventGenerator/GENIE/prodgenie.fcl](https://cdcvs.fnal.gov/redmine/projects/larsim/repository/revisions/develop/entry/EventGenerator/GENIE/prodgenie.fcl) . The job defined by this script will generate neutrino interactions using GENIE, run them through Geant4, do the electron transport and then simulate the electronics.

### How to override a default parameter

If you want to override a default parameter that has been included from a predefined parameter set, you must specify which parameter and its value as

    mainBlock.subBlock.label.parameterName: newValue

where

-   `mainBlock` can be `services` or `physics`
-   `subBlock` can be `producers`, `filters`, or `analyzers`, skipped in case of services, and `user` for old service configuration
-   `label` is the name of the desired service or module instance in a producers, filters, or analyzers block
-   `parameterName` is the name of the desired parameter
-   `newValue` is the desired new value; a list or entire block (that is, a brace-enclosed sequence of `key: value` pairs) can be specified

These lines must go after the `mainBlock` and be outside of any other block.

For example, if one wanted to change the default value of the `HitsModuleLabel` parameter in the `dbcluster` module instance in the previous section, one would put

    physics.producers.dbcluster.HitsModuleLabel: "differentHitModuleLabel"

  
Note that FHiCL allows for completely replacing a list but not for changing its size (i.e., it's not possible to add an element to an existing list).

This behavior is general: FHiCL only allows to replace elements. For example, if one wants to change both `eps` and `epstwo` parameters,

    physics.producers.dbcluster.DBScanAlg: { # WRONG!!!
      eps:    1.1
      epstwo: 1.6
    }

will not work, because it is replacing the whole `physics.producers.dbcluster.DBScanAlg` parameter set, thus removing e.g. the parameter `minPts`.  
The correct way to change parameters is to think of that as *replacing* them, and to point exactly at each of them:

    physics.producers.dbcluster.DBScanAlg.eps:    1.1
    physics.producers.dbcluster.DBScanAlg.epstwo: 1.6

will leave the other parameters (e.g., `minPts`) unchanged.

### fhicl Emacs syntax highlighting

If you use Emacs as your editor, you can put the following into your `.emacs` file in your home directory to cause it to display `.fcl` files with syntax highlighting

    (setq fclKeywords
    '(
      ;; This, due to poor language design, conflicts with comments and fails
      ("#include" . font-lock-keyword-face)
      ("@local" . font-lock-keyword-face)
      ;; All these names are magic, I think


    ("process_name:\\|services:\\|source:\\|outputs:\\|physics\\|producers:\\|filters:\\|analyzers:" . font-lock-builtin-face)
      ("true\\|false" . font-lock-builtin-face)
      ;; Variable definitions are followed by colons

      ("[a-zA-Z0-9_]*:" . font-lock-variable-name-face)
     )
    )

    ;; Python mode gets us comment handling and indentation at colons

    (define-derived-mode fcl-mode python-mode
     (setq mode-name "FHICL")
     (setq font-lock-defaults '(fclKeywords))
    ;;  (setq tab-width 2) ;; Doesn't seem to work

    )

    (add-to-list 'auto-mode-alist '("\\.fcl\\'" . fcl-mode))

> Please use *only spaces* for alignment: it's not the perfect solution, but it makes people using different editors see the same code alignment.

## Executable and command line options

Currently there is one executable to run in LArSoft. The executable to run a typical reconstruction or analysis job is `lar` which is placed in the user's path by the setup script. To see what options are available do

    $ lar -h

  
Some of the most useful options (from `lar` version `v1_17_05`) are:

-   `-c`/`--config` `configfile`: specify the job configuration (FHiCL) file
-   `--print-available` what: list all available plugins: `module`, `service`, `source`, `plugin`
-   `--print-description` what: print description of specified `module`, `service`, `source`, or other plugin
-   `-s`/`--source` file: source ROOT data file (may be specified more than once)
-   `-S`/`--source-list` filelist: text file containing a list of source files to read, one per line
-   `-n`/`--nevts` number: number of events to process
-   `--nskip` number: number of events to skip
-   `--rethrow-all`: all exceptions are propagated rather than handled by art
-   `--config-out` newfile: before running the job, creates a text file with the complete job configuration

## Running a Job

To run the job defined by the script above, do

    $ lar -c job/prodgenie.fcl

One can stop a job in two ways:

1.  press <Ctrl>+<C> once: the job will complete at the end of the current module. If the job is running in the background type `kill -9 %jobID` on the command line.
2.  press <Ctrl>+<C> twice: the job should stop immediately and, depending on the shall settings, might produce a core dump.

If you want to have your job keep running even if you get disconnected from a remote session, depending on your shell you might need to start it with:

    $ nohup lar job/prodgenie.fcl >&amp; pg.out

To stop such a job, then do

    $ pgrep lar # to find the job ID (use ps to disambiguate if more than one lar process are running)
    $ kill -INT jobID

One can print out the configuration of the job without starting the executable by:

    $ ART_DEBUG_CONFIG=1 lar -c prodgenie.fcl

  
in `bash`, or

    > env ART_DEBUG_CONFIG=1 lar -c prodgenie.fcl

  
in C-shell, which produces the output

    ** ART_DEBUG_CONFIG is defined: config debug output follows **
    all_modules: [ "out1"
                 , "daq"
                 , "generator"
                 , "largeant"
                 , "rns"
                 ]
    outputs: { out1: { fileName: "genie_gen.root"
                       module_label: "out1"
                       module_type: "RootOutput"
                     }
             }
    physics: { end_paths: [ "stream1" ]
               producers: { daq: { Col3DCorrection: 2.5
                                   ColFieldRespAmp: 3.54e-2
                                   CompressionType: "none"
                                   DriftEModuleLabel: "largeant"
                                   FieldBins: 75
                                   Ind3DCorrection: 1.5
                                   IndFieldRespAmp: 1.8e-2
                                   LowCutoff: 7.5
                                   NoiseFact: 1.32e-1
                                   NoiseWidth: 6.24e1
                                   ResponseFile: "shape-argo.root"
                                   ShapeTimeConst: [ 3000
                                                   , 900
                                                   ]
                                   module_label: "daq"
                                   module_type: "SimWireT962"
                                 }
                            generator: { BeamCenter: [ -1400
                                                     , -350
                                                     , 0
                                                     ]
    [...]

This functionality is particularly helpful when trying to debug what input parameters were passed to the job.

## Why did my job fail?

In case of failure, `art` usually provides some information about the failure.

If a job fails, look at the warnings printed to the screen or any output log files.

Also check in the [breaking changes](releases/Breaking_Changes) page for information about problems (and solutions) caused by changes to the code.

You can ask for help from the larsoft mailing list, or open a issue in the appropriate tracker (usually [the LArSoft one](https://cdcvs.fnal.gov/redmine/projects/larsoft/issues)).  
The usual bug report rules apply: include at least

-   the full command line of the failing command
-   a full path to the input files
-   which LArSoft release you are using
-   the complete error message.

If a bug should be reported to the art-users list, attach the *complete output of the job* to the email.

## Submitting Jobs to the compute farms

We have to find out where the page with the submission instructions went (**TODO**!).

[^1]: In old FHiCL files you will notice that LArSoft and in general non-art service configuration is enclosed in a `user` block, that is now deprecated.

[^2]: Note that the FHiCL parser can't recognize a comment on the same line as a `#include` directive.
