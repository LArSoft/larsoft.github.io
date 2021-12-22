-   **Table of contents**
-   [Preliminaries](#Preliminaries)
-   [Using LArSoft](#Using-LArSoft)
    -   [Information on GitHub and pull request testing](#Information-on-GitHub-and-pull-request-testing)
    -   [Some hints](#Some-hints)
-   [Documentation](#Documentation)
    -   [Using HPC with LArSoft](#Using-HPC-with-LArSoft)
-   [How-to](#How-to)

-   [Quick\_Links](Quick_Links) \* [Concepts in LArSoft](http://larsoft.org/important-concepts-in-larsoft/)

Preliminaries
================================

-   Fermilab computing accounts: see [the process to request access to Fermilab](https://get-connected.fnal.gov/faq/#SABprocess) and [Fermilab computing access](Fermilab_computing_access).
-   See [Load Balanced Access to General Purpose VMs](Load_Balanced_Access_to_General_Purpose_VMs) for information on accessing experiment VMs at Fermilab (e.g., lbnegpvm0X, uboonegpvm0X, etc., collectively known as GPCF.)
-   [Supported platforms](_Supported_platforms_)
-   To join the LArSoft mailing list, please follow [these instructions](https://listserv.fnal.gov/users.asp#subscribe%20to%20list) using the list name LARSOFT.

Using LArSoft
================================

First-time, or infrequent, users will be well-served to go through the following steps in order:

1.  Start by reading [Concepts in LArSoft](https://larsoft.org/important-concepts-in-larsoft/), the [training material at larsoft.org](http://larsoft.org/training) and other information available at [larsoft.org](http://larsoft.org)
    -   Also look at your experiment’s [Experiment-specific information](Quick_Links).

2.  Choose the correct release from the [List of LArSoft Releases and Release Notes](LArSoft_release_list).
    -   If you can use a tagged release as is (aside from fcl files which can be modified and used from any directory), you can now run LArSoft.
    -   If you need to modify the code locally, or use code not yet in a tagged release, then additional steps (below) are required.

3.  Create a working area. This is described in the presentation from the 2019 workshop session on [LArSoft technical details](https://indico.fnal.gov/event/20453/session/5/contribution/2/material/slides/0.pdf).
    -   To find out which repositories contain the code you need to modify for your task, examine the [List of repositories and their relationships](_LArSoft_repositories_packages_and_dependencies_).
    -   If you have questions, ask the LArSoft module authors and [release managers and offline coordinators](Librarians).

4.  To modify the code, clone the reference software into your working area from the [LArSoft github](https://github.com/LArSoft) repositories.
    -   This is where to find [Experiment-specific code](_Experiment-specific_code).
    -   And this is the [Sub-package locations](_Sub-package_locations_) (e.g., in which repository can I find the `HitFinder` sub-package?)

5.  To install a local copy of the pre-built products, or to build and install a local copy of the products for the core LArSoft suite, follow the [Installation Procedures on the Getting LArSoft page](Getting_LArSoft).
    -   To use cvmfs to access the binaries and header files in a tagged release (thereby avoiding the need to install or build a local copy), follow the [LArSoft cvmfs](_LArSoft_cvmfs_) instructions.
    -   Sometimes your local code will fail to build against a new LArSoft release because there are “breaking changes” in the release, which are modifications that require adaptations to the code that references that modified code. These changes and the corrective actions needed are documented on the [Breaking Changes](Breaking_Changes) page.
    -   Comments in the code are incorporated into documentation at [LArSoft Doxygen](https://nusoft.fnal.gov/larsoft/doxsvn/html/index.html) using [the Doxygen tool.](http://www.doxygen.nl/helpers.html)

6.  Recommended.
    -   Install and run [igprof profiler](_igprof_profiler).

Information on GitHub and pull request testing
--------------------------------------------------------------------------------------------------

Start by reviewing the information on [the overview page for using LArSoft with GitHub](Working_with_GitHub). The GitHub repositories are available. Contact your experiment offline management to identify acting Level 2 managers. Send any comments to , or via Redmine issues.

Some hints
--------------------------

-   [Rerun part of all a job on an output file of that job](Rerun_part_of_all_a_job_on_an_output_file_of_that_job).
-   Tips on [Interactive GPVM sessions with terminal multiplexers](Interactive_GPVM_sessions_with_terminal_multiplexers)
-   [Reproducing jobs using the same random number sequences](Reproducing_jobs_using_the_same_random_number_sequences)
-   [Rerunning a job starting from its output](Rerunning_a_job_starting_from_its_output)
-   About [fast cloning](Fast_cloning)
-   [Working With LArSoft GitHub Repositories](Working_with_GitHub)

Documentation
================================

-   Description of [Event Displays](Event_Displays) options with links to further information.
-   Description of [The user environment](_The_user_environment_) with examples.
-   Description of [The developer environment](_The_developer_environment_) with a picture.

Using HPC with LArSoft
--------------------------------------------------

-   Using GPU as a service to accelerate machine learning inference applications.
    -   [Part One: Overview and introduction to the NuSonic Triton client library](_GPU_as_a_Service_)
    -   [Part Two: Setting up the model on the Triton inference server](GPU_as_a_Service_part_two)
    -   [Part Three: Testing the Triton client and model configuration with an inference server](GPU_as_a_Service_part_three)

How-to
==================

-   [Getting started with an analysis task: an example](_AnalysisExample_)
-   [Running Jobs](_Running_Jobs_)
