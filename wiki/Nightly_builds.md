Nightly builds(#Nightly-builds)
==================================

***LArSoft no longer makes nightly builds. Their functionality has been replaced by the CI tests*.**

This nightly build scripts are in the laradmin repository in the “nightly” sub-directory. To run the nightly build procedure, run the following command:\

    laradmin/nightly/nightly.sh [-d] <project>

\
where “\<project\>” is either larsoft, lbne, or uboone for the larsoft suite, dunetpc, or uboonecode, respectively; and “-d” enables “development mode”, which prevents any activity from affecting the production nightly build areas.

The nightly build script runs one build for each supported flavor/qualifier combination. At the time of writing, this is SLF5 and SLF6. See the [Supported platforms](_Supported_platforms_) page for the most current information. Since the script launches jobs on multiple machines, the nightly cron job must be configured such that is has authorization to run on these machines to write to disk areas owned by user or group “larsoft”. At present, the nightly.sh script is run from inside the “nightly\_wrapper.sh” script, which obtains the necessary credentials to run the nightly build at Fermilab. Running off-site will require appropriate changes.

The nightly\_wrapper.sh script simply passes all arguments to nightly.sh, so see nightly.sh for information on the qualifiers.

The following cron jobs are set up to run the nightly build. The time span between the larsoft and either the dunetpc or uboonecode builds must accommodate the building of all flavors and qualifiers (a total of 4 at present) run serially:

-   On lbnegpvm01.fnal.gov\

        MAILTO=kirby@fnal.gov,rs@fnal.gov
        ## 00 3 * * * /grid/fermiapp/larsoft/home/larsoft/code/laradmin/nightly/nightly_wrapper.sh lbne
        00 4 * * * /grid/fermiapp/larsoft/home/larsoft/doxygen/update_lar_doxygen.sh

-   On uboonegpvm01.fnal.gov\

        20 0 * * * /grid/fermiapp/larsoft/home/larsoft/code/laradmin/nightly/nightly_wrapper.sh larsoft
        00 3 * * * /grid/fermiapp/larsoft/home/larsoft/code/laradmin/nightly/nightly_wrapper.sh uboone

System recovery or set-up(#System-recovery-or-set-up)
--------------------------------------------------------

The script laradmin/nightly/init\_nightly.sh creates the work areas for the nightly build. See that script and the laradmin/nightly/README file for details on how to set up the nightly build area.
