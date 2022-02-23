# The developer environment

As mentioned elsewhere, all LArSoft code is archived in a set of repositories based on the [git version control system](http://git-scm.com/). There are numerous resources on the web on how to use git, starting with the authoritative [Pro Git Book](http://git-scm.com/book) and [git reference manual](http://git-scm.com/docs) provided on the official git website. A search on “git documentation” yields many more.

Fermilab maintains what we will refer to as the set of “reference” repositories. This code in these repositories will be considered the authoritative copy of LArSoft.

The LArSoft project has adopted the git branching model described by Vincent Driessen at [nvie.com](http://nvie.com/posts/a-successful-git-branching-model) to assist with managing the development workflow and maintaining a stable development environment. Within this framework, the git repositories have the following branch structure:

-   A “main” branch that will have only tagged releases. Used only by the software manager.
-   A “develop” branch that will have the working head of the repository. Used by all developers.
-   One or more “release” branches for the integration of specific tagged releases. Used or authorized only by the software manager.
-   An arbitrary set of “feature” branches on which all on-going work takes place. In most cases, these branches will be in local repositories, although “publishing” them to the reference repository is useful in many cases, such as when the branch needs to be shared among several people. Developers can create as many feature branches as needed.
-   One or more “hotfix” branches that is used to develop patches to tagged releases. Used or authorized only by the software manager.

The workflow is depicted in the diagram below. Each colored circle represents a commit, which in git corresponds to a state of the repository on the particular branch after the commit.

![](assets/img/larsoft/Git-branching-model.png)

The workflow and branching model is designed to offer a high degree of stability on the head of the reference repository, and thereby in the overall development environment. The central concepts are that **no development takes place directly on the develop branch** — this is what feature branches, release branches, or hotfix branches are to be used for — and **nothing gets pushed to the reference develop branch** until the changes are tested.

**All LArSoft developers are expected to follow this workflow model in order to maintain the integrity of the reference “develop” and “master” branches.**

Pursuant to this goal, developers are expected to fully test changes in a local branch that is up to date with the reference repository before pushing those changes to the reference develop branch. An official integration test procedure will be introduced to assist with this process.

The [git flow](https://github.com/nvie/gitflow) tool is a set of git extension that provide high-level operations for working within this branching model. We recommend that developers utilize `git flow` when developing LArSoft code. Please consult the [git flow quick-start guide](https://cdcvs.fnal.gov/redmine/projects/cet-is-public/wiki/git flow quick start) for information on using git flow. Developers who choose not to use `git flow` should nonetheless adhere to the branching model.
