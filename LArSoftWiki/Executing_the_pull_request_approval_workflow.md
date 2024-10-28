# Executing the pull request approval workflow

## Roles

-   Users: the people working on code changes who create pull requests, and fix problems that arise during the approval workflow
-   Level 1 managers: the group with write privilege to the primary repositories, who merge PRs after all tests have succeeded. Level 1 managers may perform any Level 2 manager function.
-   Level 2 managers: the group of individuals from each experiment who review changes, trigger tests, review results, and approve PRs. They are charged with resolving problems identified via the review and testing stages. Level 2 managers may perform any user function.

## Methods

### Structured comments on pull requests

-   Steps in the testing and approval workflow are initiated via comments with keywords specific to a particular step.
-   Comment labels are used by the system to indicate the status of the given stage.
-   See [Pull_request_comments_that_trigger_CI_actions](Pull_request_comments_that_trigger_CI_actions) for details of possible comments

### “CMS-bot” scripts

-   The scripts that monitor PR comment for keywords, and launch jobs on the Jenkins CI system to carry out the appropriate actions on the PR.

### Jenkins CI system

-   Runs jobs that perform each of the actions in the PR testing and approval workflow
-   Actions include running checks or tests, posting comments with results, labeling comments with the appropriate status label

## Workflow

| Step   | Resonsible Role | Procedure        |
|-------------------|--------------------|---------------------------------------------------------------------------------------|
| Create/modify PR | User | Create a new pull request using `gh` or the GitHub GUI. Modify one using `git` or the GitHub GUI. |
| Code checks | Level 2 manager |  Verify the user is authorized to commit code. If not, proceed to “reject PR” step. | 
|  |  |  Review the code to verify compliance with plans, architecture, etc. If not compliant, proceed to “reject PR” step. |
|  |  | Post `code-checks` comment to the PR to launch code checks a stand-alone build. The CI system will run code checks and build.The FNALbuild account will post `+code-checks` if successful, `-code-checks` if it failed |
|  |  |  If the code-checks failed, refer the PR back to the user for corrective actions, and proceed to the “reject PR” step. |
|  |  |  If the code-checks succeeded, proceed to the next step. |
| Build and test | Level 2 manager | Post the appropriate `trigger build` comment to the PR.   The CI system will build the code against develop for all repositories and experiments, and run all unit and CI tests.  The FNALbuild account will post `+tests` if successful, `-tests` for any failures. |
|  |  | If the build and test failed, refer the PR back to the user for corrective actions. |
|  |  | If the build and test succeeded, proceed to the next step. |
|  |  | See [Pull_request_comments_that_trigger_CI_actions](Pull_request_comments_that_trigger_CI_actions) for more information. |
| Level 2 approval | Level 2 manager |  Post any of the following comments: `+1` or `approve`  |
|  |  | You may also post `+<category>`, where `category` is an arbitrary string that by convention refers to a an area covered by a particular Level 2 manager. | 
| Approval to merge | Level 1 manager | Post the comment `approve`. | 
|  |  | Use the github merge button to merge with develop if appropriate. | 
|  |  | In some situations, such as multiple related PRs, we do not merge on GitHub.  Instead, they will be merged as part of the release procedure. | 
| Approval to close | Level 1 manager |  This should be rare.  Post the comment `close` to trigger closing the PR. | 
| Reject PR | Level 1 or Level 2 manager | A PR should be rejected if it should not or cannot be merged. Reasons could include no authorization, significant structural problems, changes not consistent on-going plans, etc. | 
| Remove approval | Level 1 manager | In rare instances, issues may be raised after approval has been granted. If the PR is not already merged, delete the comment or comments approving the PR and change the labels. This must all be done by hand. | 
