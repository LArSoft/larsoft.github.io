

# Getting started with an analysis task

This page goes along with the [AnalysisExample](https://cdcvs.fnal.gov/redmine/projects/larexamples/repository/revisions/develop/show/larexamples/AnalysisExample) package in LArSoft. It provides an example of how to get started writing code to perform an analysis task on an event file created by LArSoft. It's meant for newcomers to LArSoft.

#### Assumptions

- You are moderately familiar with [UNIX](http://unix.t-a-y-l-o-r.com/index.html).  
- You have a passing acquaintance with [ROOT](http://root.cern.ch).  
- You've at least glanced at some of the other pages in this wiki.  
- You're willing to roll up your sleeves and get your hands dirty with [C](http://www.cplusplus.com/doc/tutorial/) and [STL](http://www.cs.brown.edu/people/jak/proglang/cpp/stltut/tut.html).  
- You're working with a file that contains LArSoft art::Event records.  
- Your goal is to analyze a file created by the LArSoft package, or perhaps try to understand some basic LArSoft concepts.

#### Cautions

- If you've been given a file that contains a ROOT n-tuple, then you don't need this page. Just start using ROOT (there's a nice [tutorial](http://www.nevis.columbia.edu/~seligman/root-class/)) and work with the n-tuple.

- If your goal is to make changes to LArSoft (e.g., write a new Reconstruction algorithm), bear in mind that this is just an analysis example. You'll learn something about the development environment and how to read data from LArSoft event records; you won't learn how to [create producer or filter packages](https://cdcvs.fnal.gov/redmine/projects/larsoft/wiki/Using_art_in_LArSoft#artEDProducer), how to [write data](https://cdcvs.fnal.gov/redmine/projects/larsoft/wiki/Using_art_in_LArSoft#Making-Objects-to-Store-in-the-Output) or [create associations](https://cdcvs.fnal.gov/redmine/projects/larsoft/wiki/Using_art_in_LArSoft#artAssns), how to [save your work in a git repository](https://cdcvs.fnal.gov/redmine/projects/uboonecode/wiki/Uboone_guide), etc. You probably want to read [Developing with LArSoft](https://cdcvs.fnal.gov/redmine/projects/larsoft/wiki/Developing_With_LArSoft) instead.

#### Alternatives

Aside from AnalysisExample, there are other packages you may want to consider for extracting n-tuples from LArSoft event records. Here are the differences:

- [AnalysisTree](https://cdcvs.fnal.gov/redmine/projects/uboonecode/wiki/AnalysisTree_variables#What-is-AnalysisTree) is primarily meant for MicroBooNE users. It reads a file of events and creates a generic n-tuple. The n-tuple is fairly complete, and there's a good chance that the data you're looking for is in there. However, AnalysisTree's n-tuple does not have every bit of data recorded in LArSoft (e.g., the sim::SimChannel information used to derive dE/dx in AnalysisExample).

- [LArLite](http://microboone-docdb.fnal.gov:8080/cgi-bin/ShowDocument?docid=3183) is a MicroBooNE-based tool for simplified data analysis on LArSoft events. It's more user-friendly than LArSoft. However, LArSoft event files have to be converted into LArLite's format before you can use the tool. Also, as with AnalysisTree, not every data item is copied from a LArSoft event record into a LArLite file (though the developer Kazuhiro Terao responds to requests very quickly).

- [Gallery](https://cdcvs.fnal.gov/redmine/projects/gallery/wiki/) is a package for reading files that contain art::Event records. The package itself does not depend on art, and can be simply run without using FHiCL files and the like. There are some nice examples of how to use Gallery [here](https://github.com/marcpaterno/gallery-demo). However, you have to be familiar with [art input protocols](https://cdcvs.fnal.gov/redmine/projects/larsoft/wiki/Using_art_in_LArSoft) (as demonstrated in the AnalysisExample code). Also, Gallery does not support art Services and Algorithms; you have to use other tools if you need access to, for example, detector information or simulation parameters (also demonstrated in AnalysisExample).

- AnalysisExample, an [art::EDAnalyzer](https://cdcvs.fnal.gov/redmine/projects/larsoft/wiki/Using_art_in_LArSoft#artEDAnalyzer), gives you access to all the data objects in LArSoft event records, and all of the art/LArSoft methods and services. It's also useful as a way to learn how to use the LArSoft framework. However, it is not as simple to use as the previous tools; simplicity is not a virtue of LArSoft.

#### Be patient

The art/LArSoft framework is actively evolving. It's possible that some of the steps below no longer work as is (everything has been verified as of July-2017). If something goes wrong, the following resources may help:

-   [LArSoft Quick-Start Guide](Quick-start guide to using and developing LArSoft code)
-   [MRB user guide](https://cdcvs.fnal.gov/redmine/projects/mrb/wiki/MrbUserGuide)

This page covers much the same ground as the [quick-start guide](Quick-start guide to using and developing LArSoft code), but this tutorial is focused on analysis tasks, and it explains the reason why everything works as we go along. Hopefully you'll have enough clues to solve any problems that come up.

## Set up the LArSoft environment

You have to set up the LArSoft development environment for your installation. Look up the instructions for your location; e.g. [Fermilab](Quick-start_guide_to_using_and_developing_LArSoft_code) or [Nevis](https://twiki.nevis.columbia.edu/twiki/bin/view/Main/LArSoftAtNevis).

## Set up a working directory

This is described in the [quick-start guide](Quick-start guide to using and developing LArSoft code). You'll typically be working with files created by a specific release of LArSoft.

In this example, I'll assume you want your working directory to be `lardev` in your home directory, and you plan to work on files created with release v06_44_00. I'm also going to use shell variables when I can, so you can see what's optional and what you can easily change. Let's set up this brand-new development directory:

    source /nevis/amsterdam/share/seligman/microboone/setup_uboone.sh
    # At Fermilab, use these commands:
    #    For uBooNE:  source /grid/fermiapp/products/uboone/setup_uboone.sh
    #    For DUNE:    source /grid/fermiapp/lbne/software/setup_lbne.sh
    #    For SBND:    source /grid/fermiapp/products/lar1nd/setup_lar1nd.sh
    #
    myDev=~/lardev                           # Define your development directory. 
    mkdir -p ${myDev}                        # Create the working directory, if it's not there already. 
    cd ${myDev}                              # Go there.
    vers=v06_44_00                           # Store the larsoft version in a variable for these example commands.
    comp=e14                                 # Compiler version. "ups list -aK+ uboonecode" will tell you which to use.
                                             # (replace "uboonecode" with your experiment's repository; e.g., dunetpc)
    type=debug                               # Use "debug" when developing; "prof" for production.
    mrb newDev -v ${vers} -q ${comp}:${type} # Install the stuff needed to work with mrb+git
    # 'mrb newDev' tells you to do this
    source ./localProducts_larsoft_${vers}_${comp}_${type}/setup  

Remember, you only have to do the above once. Afterwards, when you log in, you'll run the mrb+git setup, followed by the setup for your development directory. For example, at Nevis, this would be:

    source /nevis/amsterdam/share/seligman/microboone/setup_uboone.sh
    myDev=~/lardev
    vers=v06_44_00
    comp=e14
    type=debug 
    source ${myDev}/localProducts_larsoft_${vers}_${comp}_${type}/setup 

Since you have to type the same commands every time you want to work with LArSoft, you may want to set up a command alias that does it for you. For example, if you're at Fermilab, you could include the following lines in `~/.bashrc`:

    export myDev=~/lardev
    vers=v06_44_00
    comp=e14
    type=debug 
    alias MBD="source /grid/fermiapp/uboone/software/setup_uboone.sh; source ${myDev}/localProducts_larsoft_${vers}_${comp}_${type}/setup"

“MBD” stands for “MicroBooNE Development”, but you could use any alias you wish. Remember that the alias command must be a single line in the file, even though it may be displayed as more than one line above.

## Checkout the AnalysisExample package to your development directory

The best way to get AnalysisExample and its associated documentation is by checking out the `larexamples` product from the repository. (As you will learn as you work with LArSoft, you can only checkout code on the “product” level; you cannot just checkout an individual package.) This is covered in the [quick-start guide](Quick-start guide to using and developing LArSoft code). I'm going to do this with variables, as I did above:

    cd ${MRB_SOURCE}                          # Go to your srcs directory
    mrb gitCheckout -t LARSOFT_SUITE_${vers} larexamples  # Checkout the larexamples product, which includes AnalysisExample
    cd ${MRB_BUILDDIR}                        # Go to your build directory
    mrbsetenv                                 # Create the bookkeeping files needed to compile programs.

As a quick check, let's compile the code to see if there are any outstanding problems:

    mrb install                               # Compile the code in ${MRB_SOURCE} and put the results in ${MRB_INSTALL}

The `larexamples` product includes other example code in addition to AnalysisExample; you'll see that code compile as well. If you'd like to learn more about those Algorithm and Service examples, see [LArSoft Examples](https://cdcvs.fnal.gov/redmine/projects/larsoft/wiki/LArSoft_examples).

### The `larexamples` version tag

A note about the `-t` option in the mrb gitCheckout line above:

The -t option specifies the version tag. Without it, you get the most up-to-date version of the code, in the develop branch. However, we specified a particular version of `larsoft` above (look for when we used the variable `${vers}`). As you may have already learned, `larsoft` consists of groups or products (`larsim`, `larreco`, `larexamples`, etc.) and each of the those products has its own version number that's independent of the overall `larsoft` version number.

For this analysis task, we want to maintain consistency between the version of `larsoft` we set up and the version of `larexamples` that we checkout. The `-t LARSOFT_SUITE_${vers}` makes sure of this, since as each product is updated by the software librarian it's given an associated tag of `LARSOFT_SUITE_<larsoft-version>`.

For this particular example, it probably doesn't make much difference; the `larexamples` package is updated so infrequently that the most up-to-date version probably matches the `larsoft` version you want to use. However, as you move on to more complex `larsoft` development tasks, you may want to think about the tags of the sub-products that you checkout. That's why we're making a big fuss about `-t` right now.

## Copying and renaming AnalysisExample to ${YourTask}

*Warning:* At this point, you may be tempted to go into `${MRB_SOURCE}/larexamples/larexamples/AnalysisExample` and start making changes. **Don't do this! No!**

Why not? Because if you were to `git push` any of the those changes, they'd affect the “official” version of `AnalysisExample`, which exists as an example for everyone to use for their analysis (you figured that out, didn't you?). You don't want to alter AnalysisExample. You want to copy it and make changes to your copy.

As noted above, the mrb+git system organizes packages (e.g., HitFinder, ClusterFinder) into groups or products that can be set up with [UPS](https://cdcvs.fnal.gov/redmine/projects/ups/wiki/UPSV4TOC) (e.g., `larreco`); here's a list of the [groups](https://cdcvs.fnal.gov/redmine/projects/larsoft/wiki/_LArSoft_repositories_packages_and_dependencies_). I'm going to assume that you'll create a product of your own. Let's call it `myntuples`; product names must be in lower-case.

In your product will be all the ntuple packages you're going to create based on AnalysisExample; e.g., MyEnergyStudy, MyEfficiencyHistograms. Or perhaps you'll just create one package, but with many modules; e.g., create a MyNtuples package and within it create files like MyEnergyStudy_module.cc, MyEfficiencyHistograms_module.cc. Either approach will work.

### Create a product

We start by creating a new mrb product:

    cd ${MRB_SOURCE}
    # Again, I'm using variables.
    myProject=myntuples                      
    # Create a blank product.
    mrb newProduct ${myProject}

### mrb bookkeeping

Next comes a bit of bookkeeping that `mrb newProduct` omits: you need to manually set which version of larsoft and other products for mrb to use. You'll receive a warning about this when you run `mrb newProduct`; the warning in this case is:

       Check myntuples/ups/product_deps
       Check myntuples/CMakeLists.txt file
       Acc code in myntuples/myntuples

Typically, all you have to do is type the following commands:

    # Tell mrb the required larsoft version for your new product
    mrb uv larsoft ${vers}
    # Tell mrb to update CMakeLists.txt with the latest version numbers of the products.
    mrb uc 

    # Optional; if you want to define a version number for your new product.
    # The version number can be anything you want.
    myProjectVersion=v00_00_05                 
    mrb uv ${myProject} ${myProjectVersion}   

    # "mrb uv" tells you to do this. If everything were perfect it would not be needed,
    # but things are _not_ perfect and you're going to see at least one error message.  
    cd ${MRB_BUILDDIR}            
    mrbsetenv                  

The error message looks something like this:

    ERROR: Version conflict -- dependency tree requires versions conflicting with current setup of product gcc: version v4_8_1 vs v6_3_0

This suggests that while we told mrb to update the version of LArSoft (via `mrb uv` above), we also need to update the version of gcc to `v6_3_0`:

    cd ${MRB_SOURCE}/${myProject}
    mrb uv gcc v6_3_0

Then try `mrbsetenv` again:

    cd ${MRB_BUILDDIR}            
    mrbsetenv                  

Now it works. You've just solved your first product-dependency issue!

### Copy AnalysisExample

Instead of writing a new product from scratch, we're going to copy AnalysisExample:

    # Again with the variables...
    myPackage=MyEnergyAnalysis

    # Go to my product directory...
    # (Why the stuttering of ${myProject}/${myProject}? It has to do with
    # how mrb+cmake organizes the compilation process, and also wanting to include
    # a directory prefix in C++ include statements. Just treat it as a given
    # that all product directories occur twice.)
    cd ${MRB_SOURCE}/${myProject}/${myProject}

    # ...and copy the AnalysisExample package from larexamples to 
    # my product directory. 
    cp -arv ${MRB_SOURCE}/larexamples/larexamples/AnalysisExample/ .

### Change the name

We've copied the package. Now we have to copy and edit the CMakeLists.txt files for the new product and for the products on which it depends. I'm going to use the UNIX utility [sed](http://www.grymoire.com/Unix/Sed.html) to make the changes.

    # Copy the larexamples/AnalysisExample CMakeLists.txt files
    cp -v ${MRB_SOURCE}/larexamples/CMakeLists.txt ${MRB_SOURCE}/${myProject}
    cp -v ${MRB_SOURCE}/larexamples/larexamples/CMakeLists.txt ${MRB_SOURCE}/${myProject}/${myProject}

    # This "magical invocation" means: Change all occurrences of "larexamples' to ${myProject}
    # and change all occurrences of "AnalysisExample" to ${myPackage} in the CMakeLists.txt files.
    # Also, delete any lines with "Services" and "Algorithms" (which were needed to compile larexamples,
    # but are not needed for our new product that is derived solely from AnalysisExample).
    sed -i -e "s/larexamples/${myProject}/g; s/AnalysisExample/${myPackage}/g; /Services/d; /Algorithms/d" \
       ${MRB_SOURCE}/${myProject}/CMakeLists.txt \
       ${MRB_SOURCE}/${myProject}/${myProject}/CMakeLists.txt

The name AnalysisExample occurs frequently in this directory, both for the names of the files and within the files themselves. You don't want to use the name “AnalysisExample” anywhere; you want to use the name of *your* task. There's a script in the directory that will simplify the job of renaming everything.

    mv AnalysisExample ${myPackage}
    cd ${myPackage}
    ./rename.sh ${myPackage}

The name you give to the `rename.sh` script has to be the same as the renamed AnalysisExample directory; I've made sure of this by using the shell variable in the previous lines.

### Test compile

Finally, we have to add new files to our build directory for our new package:

    cd ${MRB_BUILDDIR}
    mrbsetenv

Go ahead and compile. You'll see your new product being compiled as well. Afterwards, you can check that your product is in `${MRB_INSTALL}`:

    mrb install                    # Compile programs.
    ls ${MRB_INSTALL}              # A quick look at the directories created.
    find $MRB_INSTALL -name \*${myPackage}\*.so  # A quick look at the library you created.
    ups list -aK+ ${myProject}     # You'll see it listed with the version you
                                   # assigned, ${myProjectVersion}, in "mrb uv" above.

### Does it work?

Read the file README.md, which will lead you to ADDITIONAL_NOTES.md, which in turn will take you to the rest of the files in the directory. There's lots of comments to get you started. These files are in `${MRB_SOURCE}/${myProject}/${myProject}/${myPackage}`.

Assume you have an input (or “source”) file that contains simulated and reconstructed events created by a LArSoft simulation job: `~/larwork/events.root`. Then you can run the MyEnergyStudy.fcl command file with the following (for more about the `lar` command, see [Running Jobs](https://cdcvs.fnal.gov/redmine/projects/larsoft/wiki/_Running_Jobs_)):

    lar -c MyEnergyStudy.fcl -s ~/larwork/events.root -T ~/larwork/myhistogram.root

If you read README.md, you saw that the function of the example program is to create histograms and n-tuples; these will be in the file indicated by the -T option (`~/larwork/myhistogram.root` in this example). Take a look at them using ROOT:

    root -l ~/larwork/myhistogram.root
    TBrowser tb
    # ... and start clicking around.

#### Doing a complete generation/simulation/reconstruction test

If you want to just run AnalysisExample to see what it does, you'll have to generate, simulate, and reconstruct events. For a simple test using the MicroBooNE detector, do the following: Copy `$UBOONEDIR_DIR/job/prodsingle_uboone.fcl` to your working area. As noted in the `AnalysisExample/ADDITIONAL_NOTES.md`, add the following line to the end of `prodsingle_uboone.fcl`:

    services.LArG4Parameters.KeepEMShowerDaughters: true

Then you should be able to execute the following (note: this worked in Aug-2017):

    lar -c prodsingle_uboone.fcl -o mygen.root
    lar -c standard_detsim_uboone.fcl -s mygen.root \
        -o mydetsim.root
    lar -c reco_uboone_mcc8_driver_stage1and2.fcl \
        -s mydetsim.root -o myreco.root

Then you should be able to run AnalysisExample:

    lar -c AnalysisExample.fcl -s myreco.root -T AnalysisExample.root

You may want to check [Using FCL files in MicroBooNE](https://cdcvs.fnal.gov/redmine/projects/uboonecode/wiki/Guide_to_Using_FCL_files_in_MicroBooNE) to understand why and how this all works.

If you're working on an experiment other than MicroBooNE, you'll have to ask around and/or do some detective work to locate the standard single-particle generation, simulation, and reconstruction .fcl files for your experiment.

## Other tips

It's time to start your work. Unless you happen to be looking at the dE/dx for primary particles in an event, you'll have to edit the code to do what you want.

    cd ${MRB_SOURCE}/${myProject}/${myProject}/${myPackage}
    # ... and start editing code!

### Quick set-up

The [quick-start guide](Quick-start guide to using and developing LArSoft code) may give you the impression that you have to type in many shell commands every time you work with mrb+git; maybe this guide has given you that impression as well. Actually, once you've completed the one-time setups, and provided you don't plan to check in your code to the main git repository, things are pretty simple.

Here's what I do when I login (I work on MicroBooNE):

    my_dev=~/mydev
    my_version=v06_44_00
    my_compiler=e14
    my_type=debug

    source /a/share/amsterdam/seligman/microboone/setup_uboone.sh
    setup uboonecode ${my_version} -q ${my_type}:${my_compiler}
    source ${my_dev}/localProducts_larsoft_${my_version}_${my_compiler}_${my_type}/setup
    mrbsetenv
    cd ${MRB_SOURCE}

… and I'm ready to go. Of course, I don't type all that in; I've got a script that does it for me. (If you have an account at Nevis, take a look at `/nevis/amsterdam/share/seligman/microboone/develop_uboone.sh`.) I compile using `mrb i` when I make changes, and run it using `lar -c ...`. The only time I have to re-visit the build directory is if I add a new package:

    cd $MRB_SOURCE
    mrb newProduct newstuff
    mrb uv larsoft ${my_version}
    cd newstuff
    mkdir NewCode
    # ... fiddle with mrb uv and edit CMakeLists.txt files; 
    # then create beautiful code in NewCode
    cd $MRB_BUILDDIR
    mrbsetenv    # create the files for newstuff

### Getting information

The following resources may help you with ROOT:

- [ROOT web site](http://root.cern.ch/)  
- [ROOT User's Guide](http://root.cern.ch/drupal/content/users-guide)  
- the Nevis [ROOT tutorial](http://www.nevis.columbia.edu/~seligman/root-class/)

In addition to this, you'll probably have to become a “code detective” and use the code and comments in other packages to understand what to do in your own code.

### Browsing code on the web

If you want to browse the code in one of the package groups (e.g., `larsim`, `larreco`, `uboonecode`), you can use the Redmine repository listings at FNAL. The “magic formula” is:

    https://cdcvs.fnal.gov/redmine/projects/<group-name>/repository

So if you want to look at the package group `larreco`, you'd visit the URL https://cdcvs.fnal.gov/redmine/projects/larreco/repository

### Browsing code in UNIX

My preferred way is to look at the code as it's stored on the local computer cluster. After you've set up LArSoft, you can find the code for a given package group in the directory:

    $<GROUP-NAME>_DIR/source/<group-name>

If you wanted to look at the packages in group `larsim`, you can do:

    ls $LARSIM_DIR/source/larsim

Good luck!

## Other links

[Using ART in LArSoft](Using_art_in_LArSoft)  
[Doxgen LArSoft documentation](http://nusoft.fnal.gov/larsoft/doxsvn/html/)  
[Running jobs](Running_Jobs)  
[FHiCL Configuration validation](https://cdcvs.fnal.gov/redmine/projects/fhicl-cpp/wiki/Configuration_validation_and_fhiclcpp_types)  
[FHiCL Configuration description](https://cdcvs.fnal.gov/redmine/projects/art/wiki/Configuration_validation_and_description)
