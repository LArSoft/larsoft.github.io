# LArSoft git Guidelines



## normal development

Work should be done on feature branches, not directly on the head of develop.  
When your work is ready, merge your feature branch with develop and delete the feature branch.  
Start a new feature branch for each project.

These instructions reference git flow, which is used for convenience.

### Create a feature branch

Within the local repository, make sure you are on the develop branch and then create the branch:

    git flow feature start <identifier>_<my_feature>

-   identifier = username or initials
-   my_feature = a short descriptive name of the changes to be made

### Publishing a feature branch

Sometimes you need to make your feature branch available for other developers to work with and/or test.  
Push to the remote repository and set tracking.

    git push -u origin feature/<identifier>_<my_feature>

### Merging your changes back into the repository

If this is a breaking change, request that the branch be merged during the next larsoft release.  
A breaking change is anything that requires other users of larsoft to change their code.  
If this is not a breaking change, and you have tested your code, merge it with develop.  
See [Getting new code into a LArSoft release](Getting_new_code_into_a_LArSoft_release) for guidelines.

Within the local repository:

    git fetch origin
    git rebase origin/develop
    git flow feature finish <identifier>_<my_feature>
    git push origin develop

### Deleting a published feature branch

“git flow feature finish” will remove your local feature branch, but any published branches remain in the remote repository.  
Once you have finished your work and merged your changes, please remove the remote feature branch:

    git push origin :feature/<identifier>_<my_feature>

## working with special branches

An experiment may need a special branch for long term development when their code has temporarily diverged from the head. These branches are requested by the experiment software coordinator and created by the LArSoft code manager.  
(See [Policy for development from a tagged release](Policy_for_development_from_a_tagged_release).)

-   Check out the base release
        mrb g -b vxx_yy_zz_branch <repository>
        cd <repository>
-   Verify you are on the vxx_yy_zz branch
        git branch
-   Create and check out the new 'feature branch'
    -   Your feature branch should conform to the standard feature branch naming conventions
            git checkout -b feature_vxx_yy_zz/<my_branch_name>

## Repository Structure

[Using git repositories](Using_git_repositories)

## Workflow Background

Developers are expected to follow a specific development workflow in order to maintain the integrity of the reference “develop” branch. Git offers many features and capabilities that make it extremely easy to isolate one's work from the rest of the world, to preserve that work in the reference repository and to share it with others without affecting the reference develop branch, while at the same time following and incorporating changes on the reference develop branch. The workflow and branching model is designed to offer a high degree of stability in the development environment. Developers must adhere to this workflow.

The development workflow adopted by LArSoft is based on that documented by Vincent Driessen at http://nvie.com/posts/a-successful-git-branching-model/, and implemented by the git extensions in the [git flow](http://github.com/nvie/gitflow) product.

[[assets/img/larsoft/Git-branching-model.png]]
Branch structure and workflow to be used for LArSoft development

Within this framework, all git repositories have the following branch structure:

-   A “master” branch that will have only tagged releases. Used only by the software manager.
-   A “develop” branch that will have the working head of the repository. Used by all developers.
-   A “release” branch for the integration of specific tagged releases. These branches will follow the naming convention “release-\*” where “\*” denote the intended release. Used or authorized only by the software manager.
-   An arbitrary set of “feature” branches on which all on-going work takes place. In most cases, these branches will be in local repositories, although “publishing” them to the reference repository is allowed whenever needed. Developers can create as many feature branches as desired. Certain names are reserved — “master”, “develop”, “release-\*” or “hotfix-\*”. For feature branches that are to be published, we recommend appending the responsible developer's initials to the branch name. (See above recommendation on naming.)
-   A “hotfix” branch that is used to develop patches to tagged releases. These branches will use the naming convention “hotfit-\*” where “\*” denotes the release for which the fix is needed. If multiple hotfix branches are needed at the same time, then a single small letter will be added to the end of the name. Subsequent hotfix branches will be named alphabetically. Used or authorized only by the software manager.

Note that all branches are created from the develop branch, with the exception of hotfix branches and other special cases approved by the larsoft team as defined in [Policy_for_development_from_a_tagged_release](Policy_for_development_from_a_tagged_release) created from the particular tag on the master branch. The hotfix branches should be merged into the develop branch at the conclusion of work on that branch. Release and hotfix branches are also merged into master.

Developers who choose not to use git flow are expected to understand the details of the workflow model and adhere to the model conventions.

For specific instructions on using git flow, see the [git flow quick-start guide](https://cdcvs.fnal.gov/redmine/projects/cet-is-public/wiki/git flow quick start).
