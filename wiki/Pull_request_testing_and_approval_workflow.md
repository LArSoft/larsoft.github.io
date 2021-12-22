Overview of the pull request testing and approval workflow(#Overview-of-the-pull-request-testing-and-approval-workflow)
==========================================================================================================================

Committing code to the LArSoft repositories requires that developers initiate a pull request (PR) on GitHub against the appropriate LArSoft repositories. That action triggers a testing and approval workflow, the final step of which is a merge of the proposed change to the requested branch. The purpose of the testing and approval workflow is:

-   To ensure that only code from authorized people is merged into LArSoft
-   To ensure that relevant coding standards are met
-   To check that the code builds against the head of the target branch and runs as designed (assuming appropriate unit and integration tests are in place)
-   To ensure that changes submitted by one experiment do not have unintended consequences or otherwise break the code of other experiments, as determined by unit and CI testing

The workflow, depicted in the diagram below, is carried out by combination of “Level 1” and “Level 2” managers, the Continuous Integration (CI) system, and a set of “bot” scripts that take actions based on comments posted to PRs on GitHub by the Level 1 and Level 2 managers, or jobs running on CI system. The basic procedure is the following:

-   After a PR is initiated or changes state, the bot scripts email the managers alerting them to the new or updated PR. After a PR is initiated or changes state, the bot scripts email the managers alerting them to the new or updated PR.
-   Upon reviewing the change, a manager (any of them) posts a comment to the PR directing the system to run code checks, and to build and test the PR.
-   The bot scripts then send a message to the Jenkins CI server with instructions to build the new code, and run all the unit and CI tests for each experiment.
-   Jenkins posts the results of those steps as a comment on the PR. Managers receive email that a comment has been posted. Jenkins posts the results of those steps as a comment on the PR. Managers receive email that a comment has been posted.
-   If the test results are satisfactory, then a Level 1 manager posts a message to the PR approving the merge of the PR.
-   The bot scripts and the Jenkins CI system then perform a sequence of actions that merge and commit the code, and close the PR.

Note that the initial manager comment to perform build checks is not included in this diagram. We envision that the first code checks and build attempts will be started automatically upon posting the PR. The diagram reflects that procedure.

![](/redmine/attachments/download/56466/GitHub_messaging_sequence.png)
