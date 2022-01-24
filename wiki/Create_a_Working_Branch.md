Create a Working Branch
====================================================

The type of release you are building determines how you select a working branch
--------------------------------------------------------------------------------------------------------------------------------------------------------------------

### Tag against develop

-   This is the most common option
-   cd \$MRB_SOURCE
-   tagLAr start \$MRB_PROJECT_VERSION
    -   makes a local branch: release/\$MRB_PROJECT_VERSION

### Tag against an existing release

-   Use this option to start a release with no changes except, for instance, a new version of art
-   cd \$MRB_SOURCE
-   tagLAr patch \$MRB_PROJECT_VERSION \<existing_tag\>
    -   use LARSOFT_SUITE_vxx_yy_zz for the existing tag
    -   makes a local branch: release/\$MRB_PROJECT_VERSION

### Make a new branch

-   Use this option for release candidate and hotfix branches
-   cd \$MRB_SOURCE
-   tagLAr branch \$MRB_PROJECT_VERSION \<existing_tag\>
    -   use LARSOFT_SUITE_vxx_yy_zz for the existing tag
    -   makes a local branch: \$MRB_PROJECT_VERSION

### Use an existing branch

-   Use this option for release candidates
-   cd \$MRB_SOURCE
-   tagLAr use \<existing_branch\>
    -   checks out \<existing_branch\>

Merge PRs if necessary
--------------------------------------------------

-   Most PRs will be merged with the head of develop.
-   PRs that need to be merged when making the release:
    -   Multiple PRs addressing some update
    -   PRs which require changes to dependencies
-   cd \$MRB_SOURCE/\<package\>
-   hub pr list
-   hub pr checkout \<PR number\>
    -   This step will checkout a branch
-   git co release/\$MRB_PROJECT_VERSION
-   git merge \<PR branch\>
-   deal with conflicts if necessary
    -   In some cases, you may need to ask the author for help.
-   **Make a clean build with these changes before proceeding**
-   **IMPORTANT**:
    -   If there are related PRs in several different repositories, merge all of these before starting a new build.
    -   Make sure you merge and test each set of PRs. This helps sort out confusion in case of conflicts.

### Update non-larsoft product versions

-   use mrb uv to update versions of products such as art or nutools which are not part of the larsoft suite.
-   **Make a clean build with these changes before proceeding**
