# LArSoft release naming and retention policy

## Release naming policies

-   All LArSoft release versions and core LArSoft products will use the following numbering convention: vMM_mm_pp
    -   MM = major number, mm = minor number, pp = patch number
    -   Releases that require a fork in order to fix a problem will have a suffix added after the patch number
        -   **A fork is required if and only if the release to be patched is not the latest release available**
    -   \[The following item is approved on a case-by-case basis at a LArSoft Coordination Meeting\] A release can be declared as a “production release candidate”, in which case it will have major, minor and patch numbers of the target production release, but with the suffix “_rcN” appended, where N = 1, 2,…
-   Version numbers will be incremented according to the following policy:
    -   The patch number will increment for routine weekly integration releases or bug fixes
    -   The minor number will increment when new features or changes in functionality are introduced
        -   New data members added to existing data products, or extensions to existing user-facing interfaces will require that the minor number be changed.
        -   Interface changes that can be considered
    -   The major number will be incremented for changes that break backwards compatibility, or that involve changes to important components of the infrastructure. For example:
        -   Changes to data products that are not backwards compatible
        -   Changes to user-level interfaces (i.e., interface changes that are not backwards compatible and cannot be considered to be part of an implementation)
        -   Changes to any of the major external dependencies (e.g., root, gcc)

Before new major releases of software are put into production each experiment signs off as accepting the code. Tests are encouraged using the continuous integration infrastructure. Minor releases of software are released weekly, with each experiment providing information of what code from the experiment specific branches they would like in the release.

## Release retention policies

-   Releases are categorized into three classes for the purposes of retention policy
    -   Production
    -   Integration (sometimes referred to as “weekly”)
    -   Nightly

<!-- -->

-   Retention policy for production releases
    -   Production releases will announced as such to the LArSoft community and identified on the [LArSoft release list](https://larsoft.github.io/LArSoftWiki/releases/LArSoft_release_list) page.
        -   The determination of what releases qualify as “production” will be made by the experiments.
        -   The affirmation of a single experiment is sufficient to declare a release as “production”.
    -   Production releases will be retained indefinitely.
        -   Removal of production releases will be coordinated with the experiment(s) that requested the production status.
    -   Each production release will carry one or more common tags across all constituent repositories indicating the larsoft version and the experiment that requested the production status.
        -   More than one tag will be used in the case that the release is declared as “production” by more than one experiment.

<!-- -->

-   Retention policy for integration releases
    -   Unless otherwise specified, a tagged release will be considered as an “integration” release.
        -   The purpose of these releases is (a) to provide a code base for development that is stable yet close to the head of some development branch, or (b) to test a particular set of features or changes integrated into a specific body of code.
        -   A release used for (b) will sometimes be referred to as a “production pre-release” or a “production release candidate”. In all cases, they will be retained according to the policy for any other integration release.
    -   Integration releases will be deleted as space is needed
        -   An announcement will be made to the “larsoft” email list at least one week in advance of deleting an integration release
        -   If an objection is raised to a planned deletion, the release in question will not be deleted pending a further discussion and decision at a subsequent LArSoft Coordination Meeting.

<!-- -->

-   Retention policy for nightly releases \[implemented by convention without approval\]
    -   Nightly releases will be retained for no more than one week.
    -   Proposed changes to this period should be discussed at a LArSoft Stakeholders or Steering Committee meeting.

Policies were established and approved at the May 6, 2014 LArSoft Librarian's Meeting: (https://indico.fnal.gov/event/8490/)
