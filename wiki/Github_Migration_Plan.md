# Github Migration Plan

## <u>Prior to migration</u>

-   Complete workflow testing
-   Update documentation
    -   On migrating branches page: add whitespace removal to the procedure
    -   Provide guidance on sharing development within a branch
    -   Provide guidance on errors in “other” experiments
    -   Guidance on a common code check failure: trailing whitespace
        -   Will the error message indicate the corrective action needed?
-   Check that old histories cannot be re-committed to any repository

## <u>Tasks for day of migration</u>

### Remove/rename the test instances of the larsoft repos on github (Patrick)

-   Navigate to the [LArSoft GitHub organization](https://github.com/LArSoft)
-   for each repo navigate to [settings](https://github.com/LArSoft/larsim/settings)
    -   rename reponame to reponame.old (the old ones will be removed later after verifying the webhooks are set up in new instances)

### Create new larsoft repos (Patrick)

-   Navigate to the [LArSoft GitHub organization](https://github.com/LArSoft)
-   The repositories to be migrated:
    -   larana, larbatch, larcore, larcorealg, larcoreobj, lardata, lardataalg, lardataobj, lareventdisplay, larevt, larexamples, larg4, larpandora, larpandoracontent, larreco, larsim, larsoft, larsoftobj, larutils, larwirecell
-   for each repo click New and enter repo name
    -   click settings and ensure LArSoft/Core group has ownership not just the person doing the repo creation. (The web hook settings will be handled by cms-bot scripts.)

### Run the trailing white-space script on the head of develop and commit the changes to the Redmine repo (Lynn)

-   Need contents of the script or a link to the script.
-   Best to have a link to the script that will run over all the repositories, if there is one
-   The script to use to strip trailing white space is larsoft/bin/removeWhiteSpace.sh (${LARSOFT_DIR}/bin/removeWhiteSpace.sh)

Running the white-space script on pull-requests is sufficient. A campaign of pull requests to cleanup whitespace can happen after the migration.

### Change the Redmine repos post-commit-hook script to only allow pushes to branches named feature/\* (Lynn consulting with MarcM Kyle)

-   Need contents of the script here, or a link to the script
-   Best to have a link to the script that will run over all the repositories, if there is one

### Clone the Redmine repos, truncate the history and push the appropriate tags and branches to github (Patrick)

    ssh scisoftbuild01.fnal.gov
    cd /scratch/gartung/srcs
    mkdir working
    cd working
    eval $(ssh-agent)
    ssh-add
    kinit
    /scratch/gartung/srcs/updateFBR

-   Branches to be migrated
    -   master
    -   develop
    -   v\*

<!-- -->

-   Tags to be migrated
    -   LARSOFT_SUITE_v\[0-9\]**_\[0-9**_\[0-9\]\*
    -   v\[0-9\]**_\[0-9\]**_\[0-9\]\*

<!-- -->

-   [Truncating_commit_history_at_svn_to_git_transition](Truncating_commit_history_at_svn_to_git_transition) Script used to perform these tasks updateFBR linked as updateFBR.sh

### Cut mrb v3_05_00 and install it on cvmfs (Lynn)

### Run the cms-bot scripts to set up the webhooks and PR labels for the larsoft repos (Patrick)

    ssh gartung.fnal.gov
    export GITHUBTOKEN=$(cat /web/sites/s/scd-ci.fnal.gov/data/FNALbuild-Github-personal-access-token)
    cd cms-bot
    ./add-externals-gh-labels.py -n -u
    ./add-externals-gh-labels.py -u
    ./create-github-hooks -n -u
    ./create-github-hooks -u

-   for each repo navigate to [settings](https://github.com/LArSoft/larsim/settings)
    -   check that the webhooks were created and that the ping message was accepted by https://scd-ci.fnal.gov/webhook

### Remove phrases with testing from wiki pages

    https://cdcvs.fnal.gov/redmine/projects/larsoft/search?utf8=✓&amp;scope=subprojects&amp;wiki_pages=1&amp;q=testing

## <u>Fallbacks</u>

### Issues with approval workflow (low risk)

-   Postpone use of approval workflow while debugging

### Issues with some other major aspect of migration (low risk)

-   Postpone migration, revert to Redmine
