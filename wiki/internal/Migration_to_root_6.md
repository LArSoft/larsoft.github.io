# Migration to root 6



# Release Candidates rc4, rc5, and rc6

-   Release candidate v06_00_00_rc4 builds on the previous candidates, but moves ahead to art art:version:2.00.02
    -   A memory leak was identified and fixed in root 6. rc5 and rc6 use art art:version:2.00.03
-   Because this release candidate has more refactoring, it is on the v06_00_00_art2 branch.
-   Changes are provided for the the experiment code, but users may need to run [UpdateToLArSoftObj.sh](Migration_to_root_6#UpdateToLArSoftObjsh)

## v06_00_00_rc5 is in sync with larsoft v05_13_00

## Guide to new products

Several products have been split into separate parts. The new products make a suite, larsoftobj, that does not depend on art.

| art 1.xx | art 2.xx            | notes                                                                                                   |
|----------|---------------------|---------------------------------------------------------------------------------------------------------|
| art      | art, canvas         | [art:Release Notes 2.00.02](https://cdcvs.fnal.gov/redmine/projects/art/wiki/Release_Notes_2.00.02)                                                                       |
| nutools  | nutools, nusimdata  | nusimdata contains SimulationBase                                                                       |
| larcore  | larcore, larcoreobj | larcoreobj contains SimpleTypesAndConstants and SummaryData                                             |
| lardata  | lardata, lardataobj | lardataobj contains AnalysisBase, MCBase, OpticalDetectorData, RawData, RecoBase, and part of Utilities |
| larsim   | larsim, larsimobj   | larsimobj contains part of Simulation                                                                   |

# Release Candidates rc1, rc2, and rc3

Code for building with root 6 and art v1_18_05 will be found in the v06_00_00_rc branch of the following repositories. Release candidate tags will only be made for the larsoft repositories.

-   argoneutcode
-   dunetpc
-   lar1ndcode
-   larana
-   larcore
-   lardata
-   lareventdisplay
-   larevt
-   larexamples
-   lariatsoft
-   lariatutil
-   larpandora
-   larreco
-   larsim
-   larsoft
-   uboonecode
-   ubutil

## v06_00_00_rc3 is in sync with larsoft v05_11_01

## v06_00_00_rc2 is in sync with larsoft v05_10_00

## v06_00_00_rc1 is in sync with larsoft v05_08_00

# Known issues and changes

## gdml breaking change

-   Root 6 does not parse mathematical expressions in GDML (!??)
-   These were used throughout the GDML fles used by the experiments
-   Root 6 silently ignores mathematical expressions and just takes the first number it encounters, resulting in some odd geometry definitions.
    -   Complaints about illegal geometry most likely mean that an expression was not translated.
-   Have corrected those in core LArSoft packages and experiment repositories
    -   but NOT for lar1ndcode
-   Perl scripts that generate gdml have not been corrected
    -   Experiments should fix their own scripts
    -   scripts which are no longer used should be removed

### units

-   The correct units are g/cm3, not g/cc
    -   root 5 allowed g/cc, but root 6 does not
-   The gdml files were fixed with an editor prior to removing expressions

## fast cloning

-   Fast cloning will not work when reading certain products in root 5 input files. Since it is difficult to diagnose this problem, we recommend turning off fast cloning when reading pre root 6 files. If you see an error similar to the one below, you need to add “fastCloning: false” to the output module configuration in the relevant FHiCL file(s). See [art:Facilitating Schema Evolution for Data Products](https://cdcvs.fnal.gov/redmine/projects/art/wiki/Facilitating_Schema_Evolution_for_Data_Products)
        %MSG-s ArtException:  PostOpenFile 12-May-2016 12:55:49 CDT BeforeEvents
        cet::exception caught in art
        ---- FatalRootError BEGIN
          Fatal Root Error: @SUB=TTreeCloner::CollectBranches
          One of the export sub-branches (simb::GTruths_generator__GenieGen.obj.fFShadSystP4) is not present
         in the import TTree.
          cet::exception caught in EventProcessor and rethrown
        ---- FatalRootError END
        %MSG

## root dictionaries

### ROOT_INCLUDE_PATH

-   Root 6 needs to find all classes and enums defined by included headers at runtime. This is handled by defining ROOT_INCLUDE_PATH.
-   cetbuildtools v4_19_04 or later is required.
-   For the time being, larcore sets ROOT_INCLUDE_PATH to include art, fhicl, cetlib, and boost.

### enums

-   Root 6 recognizes enums as explicit types. This means that they must be included in the dictionaries.
-   This error message most likely means that an enum has not been specified.
        ---- DictionaryNotFound BEGIN
          No dictionary found for the following classes:

               geo::_plane_sigtype

          Most likely they were never generated, but it may be that they were generated in the wrong package.

          Please add (or move) the specification

               <class name="MyClassName"/>

          to the appropriate classes_def.xml file.

          If the class is a template instance, you may need
          to define a dummy variable of this type in classes.h.

          Also, if this class has any transient members,
          you need to specify them in classes_def.xml.
        ---- DictionaryNotFound END
-   Add the line to the appropriate dictionary:
        <enum name="geo::_plane_sigtype"                                         />

### art::Assns \#12247

-   For art::Assns, the dictionary must include BOTH art::Assns of a, b AND art::Assns of b, a.
-   Unfortunately, this problem is not spotted during dictionary generation and will result in a segfault.
-   There will be a fix in art 1.19.00 to report the error as early as possible.
-   We must make sure that both definitions are included in the xml files.
    -   see check_dictionaries.sh in the tools section

### template instantiations

With root 6, it is no longer necessary to include template instantiations in classes.h.  
The templates are instantiated when they are used.  
Removing all template instantiations from the classes.h files results in much faster loading of root dictionaries.

## `TFormula` discovered integral math

ROOT 6 implementation of `TFormula` performs integral math evaluation in a fashion more similar to the C language. For example, `"1/2"` evaluates to `0.`, while `"1./2."` evaluates to `0.5`.  
ROOT 5 used to convert all operands to floating point and then perform floating point math: both `"1/2"` and `"1./2."` did evaluate to `0.5`.  
`TFormula` is internally used in many ROOT classes (e.g. `TTree::Draw`, `TTree::Scan`, `TF1`, etc.). All the instances should be checked to make sure that they yield the expected result.  
This new feature has been reported as [JIRA issue 8110](https://sft.its.cern.ch/jira/browse/ROOT-8110), but no official response has been produced yet. For what we know so far, ROOT 6's one might be either a buggy behaviour that will be fixed and disappear, or the new official behaviour of `TFormula`.

## `TFormula` bug on missing parameter in expression

See [JIRA issue 8182](https://sft.its.cern.ch/jira/browse/ROOT-8182).  
In short, if your expression omits a parameter, parameters gets assigned as if you hadn't. This means that some parameters are assigned values that some others should have been assigned.  
For example:

| wrong formula        | interpreted as       | bad effects                                                                   |
|----------------------|----------------------|-------------------------------------------------------------------------------|
| `"[0]*x**[2]"`       | `"[0]*x**[1]"`       | `SetParameters(0., 1., 2.)` results in `[2] <== 1.`                           |
| `"[0]*x**[2]"`       | `"[0]*x**[1]"`       | `SetParameter(2, 2.)` has no effect (there is no parameter 2)                 |
| `gaus(0) + [4]**[5]` | `gaus(0) + [3]**[4]` | `SetParameters(0., 1., 2., 3., 4., 5.)` results in `[4] <== 3.`, `[5] <== 4.` |
| `gaus(0) + [4]**[5]` | `gaus(0) + [3]**[4]` | `SetParameter(4, 4.)` results in `[5] <== 4.`                                 |
| `gaus(0) + [4]**[5]` | `gaus(0) + [3]**[4]` | @SetParameter(5, 5.) has no effect (there is no parameter 5)                  |

# Migration tools

## RemoveMathFromGDML.py

This script is in larsoft. RemoveMathFromGDML.py uses root 5 to translate expressions and must be run with root 5.34.32. You must setup an appropriate larsoft v05_xx_yy release.

    setup larsoft v05_09_00 or later
    cd to the gdml directory
    RemoveMathFromGDML.py *.gdml
    the original gdml files will be named xxx.gdml.bak

### verification of RemoveMathFromGDML.py

-   The redmine project [parsegdml:](https://cdcvs.fnal.gov/redmine/projects/parsegdml/wiki/) uses root 5 to read a gdml file and export the parsed file.
    -   xxx.gdml is exported as xxx_reparsed.gdml
    -   note that xxx_reparsed.gdml is not very readable
-   Verification process
    -   Run parsegdml on the gdml files in develop and in the v06_00_00_rc branch
    -   compare the output of parsegdml
-   Results
    -   larcore/larcore/Geometry/gdml - OK
    -   dunetpc/dune/Geometry/gdml - OK
    -   lariatsoft/Geo/gdml - OK
    -   uboonecode/uboone/Geometry/gdml - OK

## check_dictionaries.sh

    USAGE: check_dictionaries.sh [-h] <directory>
            -h  (this help)
            look for classes_def.xml under the specified directory
            If no directory is specified, search this directory

## DealWithGaus.sh

-   TFormula gaus is now gaus(x), where the default value of x is 0.
-   Root 6 is meant to be backwards compatible and translate all existing calls to “gaus” to “gaus(0)”.
-   However, there is a bug: https://sft.its.cern.ch/jira/browse/ROOT-8105
-   We believe we have translated all calls in the fcl files, but the script is available if needed.

## UpdateToLArSoftObj.sh

-   Some libraries and headers have been moved from larcore to larcoreobj, lardata to lardataobj, and from larsim to larsimobj.
-   This script also makes changes needed by the move to nutools 2 and art 2.

# All known problems are resolved.
