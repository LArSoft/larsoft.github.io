Moving a Legacy Redmine Feature Branch to GitHub
======================================================================================================

-   **Table of contents**
-   [Moving a Legacy Redmine Feature Branch to GitHub](#Moving-a-Legacy-Redmine-Feature-Branch-to-GitHub)
    -   [General Instructions](#General-Instructions)
    -   [Special cases](#Special-cases)
        -   [What if I have more than one feature branch?](#What-if-I-have-more-than-one-feature-branch)
        -   [What if there is a fork already existing for your github username?](#What-if-there-is-a-fork-already-existing-for-your-github-username)
            -   [Update from the primary](#Update-from-the-primary)
            -   [Delete the orphaned fork and starting fresh](#Delete-the-orphaned-fork-and-starting-fresh)

None of the feature branches in the original LArSoft Redmine repositories on cdcvs.fnal.gov will be migrated to GitHub. In addition, the history of remaining branches will be truncated to the time of the migration from svn to git in 2014. These changes will make the GitHub repositories much cleaner than their Redmine counterparts. One side effect of this cleanup, however, is that a legacy branch that came from or has been committed directly to a Redmine repository cannot be committed to or merged with the corresponding LArSoft repository on GitHub. A feature branch created before the migration to GitHub, for example, cannot be merged back into the LArSoft repositories on GitHUb.

The following instructions describe a procedure that will alter the history of a local branch to make it consistent with that in the LArSoft repositories on GitHub. Users can use this procedure to recover legacy working branches created prior to the migration.

General Instructions
----------------------------------------------

These instructions describe how to check-out a legacy feature branch in a local repository cloned from Redmine prior to the GitHub migration, and add it to a new fork on GitHub that then be the source of a pull request to the upstream LArSoft repository.

**Important**: It is necessary to use mrb v3\_03\_01 or later.

    # Check-out the desired legacy feature branch in a local repository "package" 
    #
    setup mrb
    source localProducts*/setup
    cd $MRB_SOURCE/<package>
    git checkout <feature branch>
    #
    # Remove the remote 'origin', which points to Redmine, and add a remote 'upstream' that points at 
    # the appropriate LArSoft GitHub repository
    #
    git remote rm origin
    git remote add upstream https://github.com/LArSoft/<package>.git
    #
    # Fork the GitHub repository to your personal account. Make it the remote 'origin'
    #
    hub fork --remote-name=origin
    #
    # Download and run the "truncate-history.sh" script on that branch inside the local git repository 
    # 
    curl -O https://scisoft.fnal.gov/scisoft/bundles/tools/truncate-history.sh
    chmod +x truncate-history.sh
    ./truncate-history.sh
    #
    # Push the branch to origin in your personal GitHub account, and optionally create a pull request
    # to merge the branch to 'develop' 
    # (Note that ssh access needs to be enabled for the @push@ command)
    #
    git push origin <feature branch>
    hub pull-request --edit --base develop

Running the `truncate-history.sh` script will take between a few seconds to a few minutes, depending on the repository. This table shows the time it took to run the `truncate-history.sh` script using branch `feature/Spack-MVP1a`. (The table of example times is copied from [Truncating\_commit\_history\_at\_svn\_to\_git\_transition](Truncating_commit_history_at_svn_to_git_transition).)

||
|repo|runtime|\# rewritten|
|larana|0m18.331s|1222|
|larcore|0m11.186s|761|
|larcorealg|0m22.399s|1544|
|larcoreobj|0m0.205s|0|
|lardata|0m23.491s|1608|
|lardataalg|0m0.173s|0|
|lardataobj|0m10.398s|520|
|larevt|0m9.634s|649|
|lareventdisplay|0m13.403s|930|
|larexamples|0m7.436s|509|
|larg4|0m0.164s|0|
|larpandora|0m13.518s|895|
|larreco|1m36.789s|6319|
|larsim|2m47.225s|8666|
|larsoft|0m17.011s|1209|
|larsoftobj|0m0.169s|0|
|larwirecell|0m0.176s|0|

Special cases
--------------------------------

### What if I have more than one feature branch?

Check out each of the branches in the local repo before removing the Redmine origin. Run the truncate\_history.sh script on each branch.

### What if there is a fork already existing for your github username?

‘hub fork’ is a noop if the fork of the repo already exists in your GitHub account. If you made a fork before the final migration of larsoft repos, then these forks will be orphaned. You will need to rename/remove these orphaned repos through the Github web interface before running ‘hub fork’.

#### Update from the primary

    git pull upstream

#### Delete the orphaned fork and starting fresh

To delete an existing old fork that is no longer relevant.

-   login at github
-   select your repositories
-   click on the repository
-   click on the repository setting, NOT the general github settings
-   scroll to the bottom of the page
-   There will be an option to delete the fork. Follow instructions.
