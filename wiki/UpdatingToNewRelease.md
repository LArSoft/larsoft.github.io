

# What to do when there is a new release

Conventions used in this document:  
NEW_RELEASE_VERSION - new release version (e.g., v03_00_00)  
OLD_RELEASE_VERSION - the version of whatever release is currently setup  
TOP_PRODUCT - generally this is larsoft, lbnecode, etc.  
QUALIFIERS - qualifiers associated with the TOP_PRODUCT  
WORKING_DIRECTORY - directory where you ran the mrb newDev command

## Reference Documentation

mrb - the multi-repository build tool  
UPS - Unix Product Support

-   [mrb user guide](https://cdcvs.fnal.gov/redmine/projects/mrb/wiki/mrbUserGuide)
-   [mrb reference guide](https://cdcvs.fnal.gov/redmine/projects/mrb/wiki/mrbRefereceGuide)
-   [mrb trouble shooting](https://cdcvs.fnal.gov/redmine/projects/mrb/wiki/Trouble Shooting)
-   [UPS Documentation](https://cdcvs.fnal.gov/redmine/projects/ups/wiki/Documentation)

## Preliminaries

1.  type “ups active” to see what is in your current environment
    -   check for the version and qualifiers used by your TOP_PRODUCT here
2.  type “unsetup_all” and reestablish your basic working environment
3.  If at all possible, simply logout and start from a fresh login

## Using a new release with your existing source code directory

When a new LArSoft release is available and you want to develop against the new LArSoft release

1.  Start from a fresh login and establish your basic working environment.
2.  To check the list of available larsoft releases:
        ups list -aK+ larsoft
3.  Make a new local products area for this release:
        cd WORKING_DIRECTORY
        mrb newDev -p -v NEW_RELEASE_VERSION -q QUALIFIERS
          #this creates a new localProducts_XXXX directory using the new larsoft release and the existing srcs directory
        source localProducts_XXXX/setup  
          #make sure to use the new localProducts directory, you may wish to delete the old directory
4.  Now deal with the code:
    -   If you are working on the `develop` branch:
            cd srcs/<repository>
            git checkout develop
            git pull
    -   If you are working on a feature branch:
            cd srcs/<repository>
            git checkout develop
            git pull
            git checkout feature/<my feature branch>
            git merge develop
    -   Repeat for each repository in $MRB_SOURCE
    -   mrb uv larsoft NEW_RELEASE_VERSION
5.  Resolving conflicts
    -   git is very good about telling you how to resolve a conflict, please read the onscreen instructions
    -   in particular, if you get lost, `git status` usually explains what is left to do, and how to do that
6.  Check the required code changes, if any; these are called “breaking changes” and they are documented in our [Breaking Changes](releases/Breaking_Changes) wiki page. You may need to write update scripts and/or apply changes manually.
7.  Make a clean build:
        cd $MRB_BUILDDIR
        mrb z
        mrbsetenv
        mrb i -jN #rebuild

## Getting more information

1.  To see a list of lar packages in a given larsoft release:
    -   setup larsoft -v RELEASE_VERSION -q QUALIFIERS
    -   cat $LARSOFT_DIR/releaseDB/product_list
    -   This feature has been available since larsoft v03_03_00
2.  To see the complete set of dependencies:
    -   ups depend larsoft -v RELEASE_VERSION -q QUALIFIERS

# Other use cases

## You have no checked out code

This is the simplest possible case. We suggest that you start from a fresh login.

1.  setup TOP_PRODUCT NEW_RELEASE_VERSION -q QUALIFIERS
2.  See [Quick links](Quick_links) for experiment-specific instructions on getting started

## Updating your own package

1.  Change the dependencies (larsoft and any other package that is explicitly listed in ups/product_deps)
        mrb uv larsoft NEW_RELEASE_VERSION
        mrb uv product version

## Your experiment repository/feature branch is not ready yet for the latest LArSoft release

This is the scenario:

-   you have started developing on your experiment repository (e.g. `sbndcode`) using gitflow
-   at the time you started, you were using the latest LArSoft version of the time, in `develop` (e.g., `v07_07_00`)
-   new versions of LArSoft have been released since then (e.g. now `develop` is based on LArSoft tag `v07_09_00`)
-   the repository you are using is not yet up to date with the latest of those versions (e.g. `v07_08_00`)
-   now you want to update your branch to your repository `develop` (e.g. `sbndcode` now at `v07_08_00`)

Following the guide above may very well be all you need to do: you'll get to work with the latest LArSoft (`v07_09_00`) and with an `sbndcode` that is the latest available (`develop` based officially on LArSoft `v07_08_00`), tweaked to work with the latest LArSoft.  
But if there are [breaking changes](breaking_changes) of any type between LArSift `v07_08_00` and `v07_09_00`, it might not work!  
If the breaking changes pertain directly your code, you'd better bite it and fix them now following the [release notes](LArSoft release list) and the \[\[breaking changes\]\] instructions.  
If instead the issues are not in your code, you may either fix the repository code (that is, the whole `sbndcode`) for your collaboration, and make the fix available to your release manager as a feature branch (not including your personal code changed); or let the collaboration take care of that.  
If you opt for the latter, in the meanwhile you need to:

-   you go back to the official tag of your experiment repository (`v07_08_00` of `sbndcode`):
    -   make sure you are in the branch you expect to be (either `develop` or your feature branch, the same where you started)
    -   restore your last commit via `git reset --hard COMMIT` (the commit hash can be found in the log reading `git log`); in this way, you land on the older LArSoft dependency too (`v07_07_00`); at this point you are where you started from
    -   merge your experiment `develop` branch via `git rebase` (only if you haven't published your branch yet) or `git merge`, landing to the experiment-supported LArSoft version (`v07_08_00`)
-   check out, for all the LArSoft repositories in your working area, the `LARSOFT_SUITE` tag matching your experiment LArSoft dependency (`git checkout LARSOFT_SUITE_v07_08_00`)
-   go again through the instructions in the main part of this document, setting up the working area for the new, albeit not the latest, release (now `07_08_00`) etc., but leave the LArSoft repositories at the `LARSOFT_SUITE_...` tag you just checked out; noyr that `mrb uv larsoft v07_08_00` should at this point have no effect

# If cetpkgsupport was updated

Or what to do when you see errors like this:

    mrbsetenv 
    The working build directory is /scratch/garren/larsoft/v04_03_02/p/build_slf6.x86_64
    The source code directory is /home/garren/scratch/larsoft/v04_03_02/srcs
    ----------- check this block for errors -----------------------
    ERROR: Version conflict -- dependency tree requires versions conflicting with current setup of product : full descriptions cetpkgsupport v1_08_04 -f NULL -z /products vs cetpkgsupport v1_08_05 -f NULL -z /products
    ERROR: Version conflict -- dependency tree requires versions conflicting with current setup of product cetpkgsupport: version v1_08_05 vs v1_08_04
    ERROR: Version conflict -- dependency tree requires versions conflicting with current setup of product : full descriptions cetpkgsupport v1_08_04 -f NULL -z /products vs cetpkgsupport v1_08_05 -f NULL -z /products
    ERROR: Version conflict -- dependency tree requires versions conflicting with current setup of product : full descriptions cetpkgsupport v1_08_04 -f NULL -z /products vs cetpkgsupport v1_08_05 -f NULL -z /products

The default release of cetpkgsupport changes from time to time.  
The solution is simply to unsetup cetpkgsupport and rerun the command.

    unsetup cetpkgsupport
