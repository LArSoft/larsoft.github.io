Setting up a working directory to develop LArSoft(#Setting-up-a-working-directory-to-develop-LArSoft)
========================================================================================================

DRAFT - Do Not Use yet - DRAFT - 7/31/18

Background:

-   Note: LArSoft is designed to be run by experiments, so most people set up LArSoft for a specific experiment. You do this via the setup guide for your experiment. ([https://cdcvs.fnal.govQuick\_Links](https://cdcvs.fnal.govQuick_Links))
-   The core LArSoft code lives in a set of git repositories maintained by the LArSoft core team. Can view the code organization at [http://larsoft.org/larsoft-code-organization/](http://larsoft.org/larsoft-code-organization/)
-   If you do not have code changes to LArSoft code itself, you may just set up the appropriate products and run.
-   This page is meant to be as short as possible, but being concise means leaving out everything but the straightforward case. Users need to know many things, but including all the options becomes unwieldy. If there is something you think should be included, please [email the LArSoft team](mailto:larsoft-team@fnal.gov)

To set up and run LArSoft, the user must:

1.  Run a setup script
    1.  Source \<experiment specific script\>
    2.  This tells [UPS](https://cdcvs.fnal.gov/redmine/projects/cet-is-public/wiki/AboutUPS) where to find the programs needed (like UPS itself, git, MRB, ROOT, and LArSoft). A UPS product is a software package set up and distributed via [UPS, Unix Product Support](https://cdcvs.fnal.gov/redmine/projects/cet-is-public/wiki/AboutUPS.)) Each [UPS](https://cdcvs.fnal.gov/redmine/projects/cet-is-public/wiki/AboutUPS) product is entirely self-contained, aside from dependencies.
    3.  Specific example for SBND:
        -   using [CVMFS](https://cdcvs.fnal.gov/redmine/projects/sbndcode/wiki/Computing_resources#CVMFS) source /cvmfs/sbnd.opensciencegrid.org/products/sbnd/setup\_sbnd.sh
        -   using a local UPS database /path/to/products filled with [pullProducts](https://cdcvs.fnal.gov/redmine/projects/sbndcode/wiki/Using_LArSoft_on_a_local_machine#Downloading-a-binary-distribution-with-pullProducts)\
            source /path/to/products/setup\
            export MRB\_PROJECT=larsoft\
            setup mrb

    4.  Specific example for DUNE:
        -   source /grid/fermiapp/products/dune/setup\_dune.sh

    5.  Can find links to all LArSoft Collaboration experiments at: [https://cdcvs.fnal.govQuick\_Links](https://cdcvs.fnal.govQuick_Links) \
         

2.  Create a new development area. This creates a number of subdirectories.
    1.  mkdir \<working\_dir\> \#Do not use your home directory, as the libraries you build can get large.
    2.  cd \<working\_dir\>
    3.  mrb newDev or mrb n
    4.  \#May need to specific the version and qualified unless larsoft product is set up.\
        mrb newDev -v \<version\> -q \<qualifiers\>\
         \#Can find out the larsoft releases\
        ups list -aK+ larsoft\
         \#May want to just make the products area (checks that src, build are already there)\
        mrb newDev -p
    5.  Can see mrb newDev options at: [https://cdcvs.fnal.gov/redmine/projects/mrb/wiki/MrbRefereceGuide\#newDev-n](https://cdcvs.fnal.gov/redmine/projects/mrb/wiki/MrbRefereceGuide#newDev-n) \
         

3.  Set up a LArSoft release - Can be [Integration or Production](http://larsoft.org/larsoft-releases/)\
    setup larsoft vXXX -q e15:\<prof|debug\>\
     
4.  Set up local products\
    source localProducts\_larsoft\_vxx\_xx\_xx\_ex\_prof/setup\
     
5.  Check out code from repository
    1.  cd \$MRB\_SOURCE
    2.  mrb gitCheckout \<thecode\>
        -   This will get the code from current development head. If you want code with a different version of LArSoft, use -t with mrb g
        -   mrb g -t LARSOFT\_SUITE\_vxx\_xx\_xx \<thecode\>
        -   mrb g larsoft\_suite
        -   mrb g larsoftobj\_suite\
             

6.  Build and test the code, all commands must be run in the same shell.
    1.  cd \$MRB\_BUILDDIR
    2.  mrbsetenv \#set up development environment
    3.  mrb t (build and test) -jN \#N is number of parallel build streams
        -   mrb z (zapBuild) \#to get rid of what you just built

    4.  May need to fix code, rebuild, retest.\
         

7.  Once the code works as expected, publish it to a feature branch.

A simple view

1.  mkdir my\_larsoft
2.  source \<experiment\_setup\_script\>
3.  cd my\_larsoft/
4.  mrb newDev -vvxx\_xx\_xx -q \<e15:debug\>
5.  source localProducts\_larsoft\_vxx\_xx\_xx\_ex\_prof/setup
6.  cd \$MRB\_SOURCE
7.  mrb g larsoft\_suite
8.  mrb g larsoftobj\_suite
9.  cd \$MRB\_BUILDDIR
10. mrbsetenv
11. mrb t -jN
