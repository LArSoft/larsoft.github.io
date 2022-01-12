Github labels used as status indicators
====================================================================================

Labels on pull requests are used to indicate the status of the pull request within the approval workflow. The labels are automatically generated when the PR is created, and change in response to comments that trigger CI actions, indicate step approvals / rejections, or contain results from the CI system. Two special labels indicate the overall approval status, and third used to indicate that the PRs is linked to coordinated PRs in one or more other repositories. Such PRs are built and tested together.

The labels have the format \<signature/process category prefix\>-\<status suffix\>, and bear colors that reflect the status. The “category” or “process” values correspond to steps in the approval workflow., as described below. The overall status and linked PR labels do not conform to this format.

Process category labels
----------------------------------------------------

-   These process category prefixes are assigned for CI processes:
    |process prefix|process|
    |:-------------|:------|
    |code-checks|code checks results|
    |tests|integration test results|

-   The following suffixes/colors are used to indicate the status of CI processes:
    |process suffix (color)|status|
    |:---------------------|:-----|
    |-pending|the CI process not yet triggered by a comment from a L1 or L2 manager|
    |-started|the CI process has started|
    |-approved|the CI process succeeded|
    |-rejected|the CI process failed|

Signature category labels
--------------------------------------------------------

-   The signature category is assigned depending on what files are changed in the pull request:
    |signature prefix|files/dirs changed|
    |:---------------|:-----------------|
    |L1|all files|
    |L2|files other than those in the ups subdir|

Level 2 managers must sign-off on PRs with the L2 category label.

Level 1 managers sign off on all pull requests when they are ready to be merged. Coordinated PRs will be merged at the same time. In the case of breaking changes, the merge is done during the process of cutting a release.

-   The following suffixes/colors are used to indicate the signature status:
    category suffix (color)
    status
    -pending
    awaiting sign off
    -approved
    (L2 category only) L2 has signed off on PR
    -rejected
    PR has been rejected PR by L1 or L2 manager

Special labels
----------------------------------

Two special labels/colors are added to a pull request to indicate the overall status.

|label (color)|overall status|
|:------------|:-------------|
|signatures-pending|requires sign off by L1 and L2 managers|
|fully-signed|all categories and CI processes approved|

When the comment ‘trigger build with …’ is used, another special label “requires external” is added to indicate this PR requires a coordinated change

|label (color)|status|
|:------------|:-----|
|requires external|requires a PR from another LArSoft repo|
