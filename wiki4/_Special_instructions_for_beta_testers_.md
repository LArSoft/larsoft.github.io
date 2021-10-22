Instructions for beta testers[¶](#Instructions-for-beta-testers)
================================================================

Thank you for participating in the beta testing of the new LArSoft suite and development tools. The purpose of this test is:

-   to ensure that the release and setup configuration is correct and complete (by demonstrating that all programs run and that they produce identical results to those obtained using svn/SRT);
-   to demonstrate that the development and build tools work properly and address the needs of developers and users;
-   to determine if the documentation is adequate to allow new users to quickly start working with the new system;
-   to demonstrate that the software suite can be installed, built and run on off-site computers.

To start testing:

1.  Follow the instructions on the [quick-start page](_Quick-start_guide_to_using_and_developing_LArSoft_code_). The instructions will explain how to configure a working area, check out the code, and build and configure it to run.
2.  Run your favorite jobs or programs.
3.  If successful, please send mail to [rs@fnal.gov](mailto:rs@fnal.gov) with a cc to [garren@fnal.gov](mailto:garren@fnal.gov) telling us:
    -   the job that you ran, and the geometry (if not obvious)
    -   whether you built the code, were using the base release, or some combination of the two.
    -   where you performed the tests (Fermilab vs off-site location)

4.  Please open a ticket in [the LArSoft (beta) issue tracker](https://cdcvs.fnal.gov/redmine/projects/larsoft/issues/new) if you:
    -   encounter problems or errors when attempting to install or build the software;
    -   encounter problems or errors when attempting to run the software
    -   encounter problems or observe errors when using any of the tools
    -   have feedback on the tools or general features of the system
    -   have comments or suggestions regarding the documentation

> In the ticket, provide as much information as possible about the job or application where the problem was encountered, what setup you used, where we can find your working area, etc.

The experiment code for LBNE and MicroBooNE lives in the beta git repositories “lbnecode” and “uboonecode”, respectively. The urls to these repositories are in the table below. The code for all other experiments and projects can be found in their original locations in the core LArSoft packages for the time being.

  ------------- ------------------------------------------------------------------------------------------------- ------------------ --------------------------------------------------------------------------
  **Product \   **repository url (all in Redmine)**                                                               lxr link \         Redmine browser
  repository\                                                                                                      (not yet avail)   
  name**                                                                                                                             

  lbnecode      ssh://[p-lbnecode@cdcvs.fnal.gov](mailto:p-lbnecode@cdcvs.fnal.gov)/cvs/projects/lbnecode         –                  [redmine](https://cdcvs.fnal.gov/redmine/projects/lbnecode/repository)

  uboonecode    ssh://[p-uboonecode@cdcvs.fnal.gov](mailto:p-uboonecode@cdcvs.fnal.gov)/cvs/projects/uboonecode   –                  [redmine](https://cdcvs.fnal.gov/redmine/projects/uboonecode/repository)
  ------------- ------------------------------------------------------------------------------------------------- ------------------ --------------------------------------------------------------------------

The instructions for working lbnecode and uboonecode are nearly identical to those for working with the core LArSoft repositories. Please see the [quick-start page](_Quick-start_guide_to_using_and_developing_LArSoft_code_) for details.

Please send mail to [rs@fnal.gov](mailto:rs@fnal.gov) with a cc to [garren@fnal.gov](mailto:garren@fnal.gov) and [brebel@fnal.gov](mailto:brebel@fnal.gov) if you have questions or need immediate assistance.
