Setting up the “CMS-bot” scripts for your organization.(#Setting-up-the-CMS-bot-scripts-for-your-organization)
=================================================================================================================

**cms-bot** started as a single script used to drive PR approval and grew to be the core of the whole release engineering process for CMSSW.

This fork of cms-bot ([https://github.com/FNALbuild/cms-bot](https://github.com/FNALbuild/cms-bot)) has been modified to work with the Fermilab Jenkins infrastructure.

Setup(#Setup)
================

Instructions on having your repos tested on the Fermilab Jenkins CI infrastructure are show below.

Setting up Pull Requests and/or Push CI testing for your organizations repositories(#Setting-up-Pull-Requests-andor-Push-CI-testing-for-your-organizations-repositories)
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------

### Notify

-   This will ensure that the appropriate people are aware that you want to start testing pull requests and/or pushes for your repos and the Jenkins jobs can be configured for this.

### Setup your repository(#Setup-your-repository)

-   Make a Pull Request to add your repository configuration in \`cms-bot/repos/your\_github\_user/your\_repository\`
    -   If you have \`-\` in your github user or repository name then replace it with \`\_\`
-   It is better to copy an existing configuration and change it accordingly e.g. copy \`repos/LArSoft/larsoft\` into \`repos/(your github user or organization)/(your repo name)\` and make changes to reflect your repositories.
-   Add these repository directories with ‘git add’ and create a pull request to have them added to the master branch.

-   Allow \`@FNALbuild\` to update your repository
    -   If you have a github organization then please add github user \`@FNALbuild\` into a team with write (or admin) rights
    -   If it is not an organization then please add \`@FNALbuild\` as Collaborators (under the Settings of your repository).

-   Add github webhook to repo so that Jenkins can get notifications.
    -   If you have given admin rights to \`FNALbuild\` and set \`ADD\_WEB\_HOOK=True\` in \`repos/you\_or\_org/your\_repo/repo\_config.py\` then the cms-bot scripts can add the webhook programmatically.
    -   If \`FNALbuild\` does not have admin rights to your repository then please set the github webhook (under Settings of your repository) manually with your secret and use the command below to encode your secret for the GITHUB\_WEBOOK\_TOKEN entry in repo\_config.py.

<!-- -->

    curl -d TOKEN=xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx https://scd-ci.fnal.gov/cgi-bin/encrypt_github_token

\
If the result is over two lines use triple quotes to enclose the string, eg.\

    GITHUB_WEBHOOK_TOKEN="""U2FsdGVkX1/d2exrj/CWCV+6meORb2ovI2oSU6241ecocQ/58Qm6Ud371xukIlLr
    daOrk0l3uuI2tV1Dxz/n2w==""" 

-   The manually configured webhook would have the following properties.
    -   Payload URL: [https://scd-ci.fnal.gov/cgi-bin/github\_webhook](https://scd-ci.fnal.gov/cgi-bin/github_webhook)
    -   Content type: application/json
    -   Secret: any password of your choice
    -   Let me select individual events: Select
    -   Issues, Issue comment, Pull request
    -   Pushes (for push based events)

### Pull request Testing:(#Pull-request-Testing)

-   You can have your repository set up to trigger the tests whenever you create or update a pull request with new commits to a branch. In this case, please make sure that github webhook for **Pull requests** is active.

### Push based testing(#Push-based-testing)

-   You can have your repository set up to trigger the tests whenever you push some changes to your repo. In this case, please make sure that github webhook for **Pushes** is active.
