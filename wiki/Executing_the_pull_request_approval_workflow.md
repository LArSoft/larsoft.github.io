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

<table>
<thead>
<tr class="header">
<th>Step</th>
<th>Responsible role</th>
<th>Procedure</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td>Create/modify PR</td>
<td>User</td>
<td>Create a new pull request using <code>hub</code> or the GitHub GUI. Modify one using the GitHub GUI</td>
</tr>
<tr class="even">
<td>Code checks</td>
<td>Level 2 manager</td>
<td>* Verify the user is authorized to commit code. If not, proceed to “reject PR” step<br />
* Review the code to verify compliance with plans, architecture, etc. If not compliant, proceed to “reject PR” step<br />
* Post “code-checks” comment to the PR to launch code checks a stand-alone build<br />
The CI system will run code checks and build.<br />
The FNALbuild account will post “+code-checks” if successful, “-code-checks” if it failed<br />
* If the code-checks failed, refer the PR back to the user for corrective actions, and proceed to the “reject PR” step<br />
* If the code-checks succeeded, proceed to the next step</td>
</tr>
<tr class="odd">
<td>Build and test</td>
<td>Level 2 manager</td>
<td>* Post the appropriate “trigger build” comment to the PR. See [[Pull_request_comments_that_trigger_CI_actions]] for more information<br />
The CI system will build the code against <code>develop</code> for all repositories and experiments, and run all unit and CI tests.<br />
The FNALbuild account will post “+tests” if successful, “-tests” for any failures.<br />
* If the build and test failed, refer the PR back to the user for corrective actions, and proceed to the “reject PR” step<br />
* If the build and test succeeded, proceed to the next step</td>
</tr>
<tr class="even">
<td>Level 2 approval</td>
<td>Level 2 manager</td>
<td>* Post any of the following three comments:<br />
“+1”<br />
“+<category>”, where “category” is an arbitrary string that by convention refers to a an area covered by a particular Level 2 manager<br />
“approved”</td>
</tr>
<tr class="odd">
<td>Approval to merge</td>
<td>Level 1 manager</td>
<td>* Post the comment “merge” to trigger a merge of the PR to the target branch</td>
</tr>
<tr class="even">
<td>Approval to close</td>
<td>Level 1 manager</td>
<td>* Post the comment “close” to trigger closing the PR</td>
</tr>
<tr class="odd">
<td>Reject PR</td>
<td>Level 1 or<br />
Level 2 manager</td>
<td>A PR should be rejected if it should not or cannot be merged. Reasons could include no authorization, significant structural problems, changes not consistent on-going plans, etc.</td>
</tr>
<tr class="even">
<td>Remove approval</td>
<td>Level 1 manager</td>
<td>In rare instances, issues may be raised after approval has been granted. If the PR is not already merged, delete the comment or comments approving the PR and change the labels. This must all be done by hand.</td>
</tr>
</tbody>
</table>
