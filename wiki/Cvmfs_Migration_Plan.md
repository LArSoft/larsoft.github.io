cvmfs Migration Plan(#cvmfs-Migration-Plan)
==============================================

-   **Table of contents**
-   [cvmfs Migration Plan](#cvmfs-Migration-Plan)
    -   [Executive summary](#Executive-summary)
    -   [Releases to be installed](#Releases-to-be-installed)
    -   [Production releases for /cvmfs/larsoft.opensciencegrid.org/products](#Production-releases-for-cvmfslarsoftopensciencegridorgproducts)
    -   [Removing the old product area](#Removing-the-old-product-area)
    -   [Reporting problems](#Reporting-problems)

Executive summary(#Executive-summary)
----------------------------------------

As has been noted, the time between when we install files into /grid/fermiapp/products/larsoft and when they appear on /cvmfs/fermilab.opensciencegrid.org/products/larsoft can be several hours because the files must first be copied via rsync to cvmfs and then published. This time delay is problematic.

We now have a dedicated larsoft cvmfs area: /cvmfs/larsoft.opensciencegrid.org, where we can install products directly onto cvmfs. Releases will be announced after the cvmfs publish step, but there will still be some delay while the cvmfs staging collects the changes.

Experiments will need to change their setup scripts to add /cvmfs/larsoft.opensciencegrid.org/products. No other changes are necessary. This is just a change in where the larsoft products are found.

Recall that once [cvmfs is installed](https://opensciencegrid.github.io/docs/worker-node/install-cvmfs/), you should be able to access any cvmfs repository.

Releases to be installed(#Releases-to-be-installed)
------------------------------------------------------

-   We think that most people are either using a production release or a recent larsoft release.
-   We plan to install the following releases in /cvmfs/larsoft.opensciencegrid.org/products
    -   recent larsoft releases starting with v06\_69\_01
    -   all v06 production releases
    -   v05\_14\_00 for DUNE
    -   v05\_08\_00\_01 for MicroBooNE
    -   v03\_08\_02 for SBND
-   Other releases may be installed upon request.

Production releases for /cvmfs/larsoft.opensciencegrid.org/products(#Production-releases-for-cvmfslarsoftopensciencegridorgproducts)
---------------------------------------------------------------------------------------------------------------------------------------

This is a short list. The full list of releases is available [here](LArSoft_release_list).

  LArSoft Production Release   LArSoftObj Release   Date         Purpose               Changes / notes                                        Full release notes
  ---------------------------- -------------------- ------------ --------------------- ------------------------------------------------------ --------------------------------------------------------------------------------------
  future                                                                                                                                      [Changes Expected for Future Releases](FutureChanges)
  **v06\_70\_01\_01**          v1\_41\_01           03/13/2018                         requested by SBND for SBN workshop                     [Release Notes](ReleaseNotes06700101)
  **v06\_26\_01\_10**          v1\_11\_00\_05       01/31/2018                         requested by MicroBooNE                                [Release Notes](ReleaseNotes06260110)
  **v06\_26\_01\_09**          v1\_11\_00\_04       12/12/2017                         requested by MicroBooNE, uses art v2\_05\_01           [Release Notes](ReleaseNotes06260109)
  **v06\_26\_01\_08**          v1\_11\_00\_03       11/20/2017                         requested by MicroBooNE                                [Release Notes](ReleaseNotes06260108)
  **v06.26.01.07**                                  10/19/2017                         for MicroBooNE                                         [Release Notes](ReleaseNotes06260107)
  **v06.26.01.05**                                  09/12/2017   Production Release    for MicroBooNE                                         [Release Notes](ReleaseNotes06260105)
  **v06.26.01.04**                                  08/05/2017   Production Release    for MicroBooNE                                         [Release Notes](ReleaseNotes06260104)
  **v06.26.01.03**                                  06/13/2017   Production Release    for MicroBooNE                                         [Release Notes](ReleaseNotes06260103)
  **v06.26.01.02**                                  05/04/2017   Production Release    for MicroBooNE                                         [Release Notes](ReleaseNotes06260102)
  **v06.26.01.01**                                  04/04/2017   Production Release    for MicroBooNE                                         [Release Notes](ReleaseNotes06260101)
  **v06.30.00**                                     04/03/2017   Production Release    first release with art 2.06.03, ProtoDUNE production   [Release Notes](ReleaseNotes063000)
  **v06.26.01**                                     02/23/2017   Production Release    for MicroBooNE mcc8                                    [Release Notes](ReleaseNotes062601)
  **v06.05.00**                                     08/31/2016   Integration Release   DUNE MCC7.2                                            [Release Notes](ReleaseNotes060500)
  **v06.04.01**                                     08/24/2016   Weekly Tag            DUNE MCC7.1                                            [Release Notes](ReleaseNotes060401)
  **v06.02.00**                                     08/05/2016   Integration Release   DUNE MCC7.0                                            [Release Notes](ReleaseNotes060200)

  Release            Date         Purpose               Changes / notes                                       Full release notes
  ------------------ ------------ --------------------- ----------------------------------------------------- ----------------------------------------------------------------------
  **v05.08.00.01**   11/03/2016   Production Release    requested by MicroBooNE                               [Release Notes](ReleaseNotes05080001)
  **v05.14.00**      06/29/2016   Integration release   DUNE 35t production                                   [Release Notes](ReleaseNotes051400)
  **v03.08.02**      02/12/2015   Final tag             rollup tag preceeding v04\_00\_00 - retain for SBND   [Release Notes](ReleaseNotes030802)

Removing the old product area(#Removing-the-old-product-area)
----------------------------------------------------------------

-   We plan to freeze and then remove /grid/fermiapp/products/larsoft
    -   The date for this is not yet established.
-   We are aware that there are problems using cvmfs on the Jenkins macOS build machines.
    -   A CI update scheduled for March 20 is expected to help.
    -   After the March 20 CI update, we will work to see if cvmfs can be used reliably on the Jenkins build machines.
    -   If there is still a problem, we will work with the experiments to find reasonable solution.

Reporting problems(#Reporting-problems)
------------------------------------------

Please either open a [LArSoft redmine issue](https://cdcvs.fnal.gov/redmine/projects/larsoft/issues/new) or send email to
