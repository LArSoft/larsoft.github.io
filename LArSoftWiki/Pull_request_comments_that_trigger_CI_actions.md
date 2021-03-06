# Pull request comments that trigger CI actions

The testing and integration of pull requests is handled by making comments on the pull request with keywords that are parsed from the comment. The comments must be made by a Level 1 or Level 2 manager for CI jobs to be triggered.

## Level 1 or Level 2 managers can make comments with these keywords

-   code-checks

This triggers a checkout of the pull request, and an attempt to compile the repo using the current version dependencies. This fast compilation might fail if coordinated changes are needed in other larsoft repos.  
The FNALbuild account will comment +code-checks or -code-checks  
to indicate the results of the compilation. These comments will trigger a job to set the code-checks-approved or code-checks-rejected label.

    trigger build
    trigger build with pull request #1
    trigger build with pull requests #1, larg4#2, LArSoft/larana#3, https://github.com/LArSoft/larcore/pull/2

This triggers a build of the full larsoft suite using the pull request(s) and the head of develop in other larsoft repos.  
The first example uses the current pull request.  
The second example uses the current pull request in addition to another pull request in the same repo.  
The third example used the current pull request in addition to another pull request in the same repo and pull requests in other larsoft repos. The example also shows the three ways of specifying pull requests in other larsoft repos that can be parsed.

    trigger build using branchname feature/test in repo larcore
    trigger build using branchnames feature/test,feature_test in repos larana,larcore

This triggers a build of the full larsoft suite using the the branch name(s) and repo(s) to determine the pull requests that are built along with the head of develop in other larsoft repos.

The FNALbuild account will comment +tests or -tests to indicate the results of the full suite built. These comments will trigger a job to set the tests-approved or tests-rejected label.

    +1, approve, approved

Any of these indicates that the category manager approves the code changes in the pull requests.

    -1, reject, rejected

Any of these indicates that the category manager rejects the code changes in the pull requests. These comments will trigger a job to set the category-approved or category-rejected label.

Once code-checks-approved, tests-approved , L2-approved and L1-approved labels are set another job is triggered that set the fully-signed label

## Only Level 1 managers can make comments with these keywords

-   merge

This triggers a job that will merge the current PR.

-   close

This triggers a job that will close the current PR.
