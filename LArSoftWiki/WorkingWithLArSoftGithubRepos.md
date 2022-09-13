# Working With LArSoft Github Repositories



This page is for LArSoft users who need to check out LArSoft repositories from GitHub, and for those who need to commit changes back to LArSoft. The latter requires creation of a pull request from a personal GitHub account.

In the following:

-   “upstream” refers to the primary LArSoft repository on GitHub
-   “origin” or “personal repository” refers to the repository in the user's GitHub account
-   “local” refers to the working repository on the user's development machine

## Where are the primary LArSoft repositories?

The LArSoft repositories are owned by the LArSoft organization on [Github](https://github.com/LArSoft)

## How do I join GitHub and configure my personal GitHub account?

In order to develop and contribute LArSoft code, you will need to have a personal GitHub account.

-   If you don't have one already, go to [GitHub join](https://github.com/join)
    -   Follow the instructions to create a new account. Make sure you either use a  
        username that people will easily recognize, or specify your real name, so that people know who issued the pull request.

<!-- -->

-   If you have an account, use the “Sign in” dialog at [GitHub login](https://github.com/login)

<!-- -->

-   On your development machine, add your personal information and your GitHub account to your local git configuration:
            git config --global user.name "<First Name> <Last Name>"
            git config --global user.email <Your-Email-Address>
            git config --global user.github <Your-GitHub-Account-Username>

    -   Note that git uses \`$VISUAL\`, not \`$CVS_EDITOR\` for the commit  
        message editor, so you might want to adapt your shell profile as well.

<!-- -->

-   To simplify pushing commits to your GitHub account, you can register your ssh key with your GitHub account. See [generating ssh keys](https://help.github.com/articles/generating-ssh-keys) for instructions on how to do this. (Note the different tabs on each topic page for Mac, Linux, etc.)

## How do I check out LArSoft repositories from GitHub?

The '`mrb gitCheckout`' command has been updated to work with Github.

-   To check out LArSoft repositories from GitHub:
    ```
        mrb gitCheckout --repo-type github <larsoft respository>
    ```
-   This creates a repository with one remote that points to the upstream repository on GitHub. You will not be able to push to this remote.
-   As with other `mrb` checkout commands, specifying `larsoft_suite` as the repository will check out all LArSoft repositories.

## How do I submit changes to the LArSoft GitHub repository?

Only a small number of people (the Level 1 managers) can push to the upstream LArSoft repository on GitHub. Changes from general users are made by:

1.  creating a fork of the upstream repository(ies) in your personal GitHub account (a one-time operation)
2.  creating a local repository by cloning the upstream repository or personal fork
3.  committing changes to the local repository and pushing them to your personal repository
4.  submitting a pull request to the upstream repository.

To assist with the various GitHub operations needed, you can use `hub`, a command-line utility that performs GitHub operations from local repositories. `hub` can, for instance, fork the upstream repositories to your GitHub account, or create pull requests from your local repositories. It is packaged as a dependency of the latest MRB, so is available whenever MRB is set up. More information on `hub` can be found at [hub.github.com](https://hub.github.com).

The GitHub CLI, gh, is now available as an alternative to hub. See [this talk](https://indico.fnal.gov/event/53302/contributions/234977/attachments/152351/197249/gh-feb22.pdf) for more info.

Before executing any of the steps below, these commands must be run in the current login session:

    setup mrb
    source localproducts*/setup

-   Fork the primary LArSoft repository(ies) to your personal GitHub account. This only needs to happen once per repository, per personal account.
    -   From an existing local clone:
    ```
            cd $MRB_SOURCE/<repo name>
            hub fork --remote-name=origin
    ```
    -   Fork and create a local clone in one operation:
    ```
            cd $MRB_SOURCE
            mrb gitCheckout --repo-type github --fork <repository name> 
    ```

<!-- -->

-   Submit a pull request from a local repository:
    ```
        hub pull-request -m MESSAGE [--edit] [--base <target-branch>] [--head <source-branch>]
    ``` 
    The `target-branch` defaults to `develop` for LArSoft repositories. The `source-branch` defaults to the currently checked out branch.

<!-- -->

-   To check-out the head of a pull request into the local repository:
    ```
        hub pr checkout <PR-NUMBER> [<BRANCH>]
    ```
    where `BRANCH` is a new branch into which the PR will be placed.

For additional examples of using `hub`, see:

-   [github.com](https://hub.github.com)
-   [hub.1](https://hub.github.com/hub.1.html)

### What do I do if there is a problem with the pull request?

The most common problem initially, may be a code check failure due to trailing whitespace. The failure message will provide instructions for fixing the problem. Only files that you have changed will be checked for trailing whitespace. Run removeWhiteSpace.sh (found in larsoft) on the problematic files.
```
    removeWhiteSpace.sh myfile.cxx myfile.h
```
Once the problem has been addressed, commit the changes, and push your feature branch to origin again.
```
    git commit -m"some message" <my files>
    git push origin <my feature branch>
```
## How do I create a merge request for a legacy feature branch that existed prior to the migration to GitHub?

The GitHub repositories have commit histories that have been cleaned of old commits (ca. 2014), and all feature branches at the time of the migration. Because their commit histories have been rewritten, you cannot submit pull requests to `develop` from any legacy branch that existed prior to the migration, and therefore contains the old commit history.

For instructions on how to alter the histories of these branches so that they can be merged with the GitHub repositories, see the instructions on the [Migrating_Redmine_Feature_Branches](Migrating_Redmine_Feature_Branches) page.

## How do I update an existing fork?

If you already have a fork of one of the LArSoft GitHub repositories, you will need to regularly pull changes from the upstream LArSoft repository. However, when you clone an existing fork, it will not reference the upstream repository. You need to add that yourself.
```
    git clone https://github.com/<github_identity>/<larsoft_package>.git
    cd <larsoft_package>
    git remote add upstream  git@github.com:LArSoft/<larsoft_package>.git
    OR
    git remote add upstream https://github.com/LArSoft/<larsoft_package>.git
```
  
To merge upstream changes in develop with your develop branch:
```
    git checkout develop
    git pull upstream develop
```
