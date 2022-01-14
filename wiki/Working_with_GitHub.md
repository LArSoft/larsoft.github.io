Working with GitHub
============================================

Overview
----------------------

The reference copy of LArSoft is hosted on GitHub under the LArSoft organization. The process of checking out LArSoft repositories from GitHub is nearly identical to that formerly used to check out repositories from Redmine.

The steps required to commit code to the `develop` branch of LArSoft repositories are:

-   Check out relevant repositories
-   Create a feature branch from `develop` or from a tagged release
-   Make local changes to code in the feature branch
-   Test changes against code at the head of `develop`

At this point, developers must initiate a pull-request for the specific change to be merged, since most users will not have privilege to commit directly to the LArSoft repositories on GitHub. In order to create a pull request, a person must first:

-   Have a properly configured personal GitHub account
-   Push the feature branch to the forked LArSoft repositories in their personal GitHub account

Creating the pull request then triggers a workflow that includes:

-   An automated and manual check of the code in the proposed change by a “Level 2” manager from one of the experiments. (Check with your experiment’s offline organization to identify who the Level 2 managers are for your experiment.)
-   Building the code against the head of `develop` . The build is carried out by the CI system
-   Running the usual unit tests and continuous integration tests
-   Upon successful completion of the tests, approval by a “Level 1” manager that triggers an automated merge of the code to the `develop` branch. (See the roles page to identify the LArSoft Level 1 managers)

Note that only Level 1 managers have write privilege to the central repositories.

The next section provides detailed information on each of the above steps, as well as information about the roles and procedures, and how to move an existing branch from a Redmine repository to GitHub.

Detailed information, instructions and resources
-----------------------------------------------------------------------------------------------------

### An [overview of the pull request testing and approval process](Pull_request_testing_and_approval_workflow)

### For LArSoft users and developers: how to check out repositories, requirements and steps to submit changes, move existing code

-   [The basics of working with LArSoft GitHub repositories](WorkingWithLArSoftGithubRepos)
-   [Moving an existing Redmine feature branch to GitHub](Migrating_Redmine_Feature_Branches)

### For Level 1 and Level 2 managers / approvers: procedures for managing and approving pull requests

-   [Executing the pull request approval workflow](Executing_the_pull_request_approval_workflow)
-   [Pull request comments that trigger CI actions](Pull_request_comments_that_trigger_CI_actions)
    -   [Manually trigger a CI test](Manually_trigger_a_CI_test)
-   [Github labels used to indicate pull request status](Github_labels_used_to_indicate_pull_request_status)

### For people who maintain the approval workflow

-   [Maintaining the LArSoft fork of CMSbot scripts and Jenkins GitHub Integration jobs at FNAL](Maintaining_CMSbot_scripts_and_Jenkins_jobs)

### For new experiments / projects seeking to customize and use the pull request approval workflow system

-   [Setting the LArSoft fork of CMSbot for your organization/repo](SetupCMSbotScriptsYourOrg)

### General references on using GitHub (not LArSoft specific)

-   [What is a pull request](https://docs.github.com/en/github/collaborating-with-issues-and-pull-requests/about-pull-requests)
-   [Pull request tutorial](https://yangsu.github.io/pull-request-tutorial/)
-   [command options for pull request](https://git-scm.com/docs/git-request-pull)
-   [Pull request with two-factor authorization](https://docs.github.com/en/github/authenticating-to-github/accessing-github-using-two-factor-authentication)
-   [Merging an upstream repository into your fork](https://docs.github.com/en/github/collaborating-with-issues-and-pull-requests/merging-an-upstream-repository-into-your-fork) - While a PR is waiting for review, the upstream repository often evolves away from it, and the pull request must be maintained while it is waiting.
-   [Beginner’s guide on GitHub](https://mvthanoshan.medium.com/ubuntu-a-beginners-guide-to-git-github-44a2d2fda0b8)

Working notes (mostly archival)
------------------------------------------------------------------

-   The [GitHub migration plan](GitHub_migration_plan)
