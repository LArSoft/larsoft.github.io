# Maintaining the LArSoft for of CMSbot scripts and Jenkins Github Integration CI jobs at FNAL

## The CMSbot scripts for LArSoft repos

-   The LArSoft fork of CMSbot is [here](https://github.com/LArSoft/cms-bot)

<!-- -->

-   The per repository configuration scripts are in the subdirectories of [repos/LArSoft](https://github.com/LArSoft/cms-bot/tree/master/repos/LArSoft)

<!-- -->

-   Using the [larsoft cms-bot repo](https://github.com/LArSoft/cms-bot/tree/master/repos/LArSoft/larsoft) as an example:
    -   The [categories.py](https://github.com/LArSoft/cms-bot/blob/master/repos/LArSoft/larsoft/categories.py) file contains the manager info for the repo.
        -   The Level 1 manager is defined by the list CMSSW_L1
        -   The Level 2 manager(s) are defined by the keys in the dictionary CMSSW_L2 with the values being the package category. For larsoft repos this is the current repo.
        -   The list CMSSW_REPOS defines the current repo.
        -   The list EXTERNAL_REPOS defines which other repos can be used when coordinating pull requests.
    -   The [repo_config.py](https://github.com/LArSoft/cms-bot/blob/master/repos/LArSoft/larsoft/repo_config.py) file contains info used to configure and validate this repos webhooks and the Jenkins server info.
        -   GITHUB_WEBHOOK_TOKEN is the encoded secret that is used to validate the signature of GitHub webhook messages.
    -   The [categories_map.py](https://github.com/LArSoft/cms-bot/blob/master/repos/LArSoft/larsoft/categories_map.py) file maps category names to package directories. For larsoft repos the category name and repo name are the same.
    -   The [releases.py](https://github.com/LArSoft/cms-bot/blob/master/repos/LArSoft/larsoft/releases.py) file defines various variables used for release building. Only CMSSW_DEVEL_BRANCH is used for larsoft repos at this time.
    -   The [groups.yaml](https://github.com/LArSoft/cms-bot/blob/master/repos/LArSoft/larsoft/groups.yaml) file defines groups of GitHub user names. The group name can be used in place of a list.
    -   The [category_watchers.yaml](https://github.com/LArSoft/cms-bot/blob/master/repos/LArSoft/larsoft/category-watchers.yaml) file defined GitHub user names of group names that would like to receive @ mentions when a PR in a category is created. For larsoft repos this in the repo name.
    -   The [watchers.yaml](https://github.com/LArSoft/cms-bot/blob/master/repos/LArSoft/larsoft/watchers.yaml) file defines GitHub user names of group names that would like to receive @ mentions when a PR in directory is created. For larsoft repos this is the repo name.
    -   The [super-users.yaml](https://github.com/LArSoft/cms-bot/blob/master/repos/LArSoft/larsoft/super-users.yaml) file defines GitHub user names to Github repo/group names that have extra privileges for CI jobs. For the larsoft repos, the LArSoft/core GitHub group is used and can address the group using @LArSoft/core mentions.


## The GitHub Integration webhook jobs

The webhooks are controled by the *webhook jobs in the Jenkins Github Integration folder

These jobs configure the corresponding webhook. 

These jobs then call the scipt that validates the user and checks the comment.

## \* Scripts used to set up labels for pull requests/issues and the set up web hooks for GitHub repo(s).

The scripts require the environment variable GITHUBTOKEN be set. This is a personal access token that has permissions to change the repo.  
The FNALbuild personal access token can be used. It is saved in /web/sites/s/scd-ci.fnal.gov/data/FNALbuild-Github-personal-access-token

-   Set using 'GITHUBTOKEN=$(cat FNALbuild-Github-personal-access-token)'
-   add-externals-gh-labels.py This adds the labels of different colors to show the status of a pull request or issue.
    -   Invoke with [add-externals-gh-labels.py —users](https://github.com/LArSoft/cms-bot/blob/master/add-externals-gh-labels.py)
-   create-github-hooks This adds the webhooks needed to trigger CI jobs.
    -   Invoke with [create-github-hooks —users](https://github.com/LArSoft/cms-bot/blob/master/create-github-hooks)

## The Jenkins jobs that run the CI requests

The Jenkins job dispatch-github-webhook is triggered by the cgi-script. This triggers a chain of jobs that are started depending on the comments on the pull request.

To trigger the Jenkins job a CILogon cert is needed. At the moment a personal cert is used and is saved as

/web/sites/s/scd-ci.fnal.gov/data/ci_cert.pem

This was made by concatenating the public and private keys together with

'cat /web/sites/s/scd-ci.fnal.gov/data/usercert.pem /web/sites/s/scd-ci.fnal.gov/data/userkey.pem \> /web/sites/s/scd-ci.fnal.gov/data/ci_cert.pem'

The jobs are organized into a [Jenkins project folder](https://buildmaster.fnal.gov/buildmaster/view/GitHub_Integration/job/GithubIntegration/). (Note, VPN is required to access items on buildmaster, plus you must have permission to view the material.) 
