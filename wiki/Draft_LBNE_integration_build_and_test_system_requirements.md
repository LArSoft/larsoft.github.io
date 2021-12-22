Draft LBNE integration build and test system requirements(#Draft-LBNE-integration-build-and-test-system-requirements)
========================================================================================================================

Requirements (courtesy of Brett Viren):

    - A survey of existing solutions must be performed and a report that    presents the arguments for a choice must be drafted.  Free Software    or Open Source solutions must be considered first and proprietary    systems only considered if no FOSS solutions are suitable.

    - It must run a variety of validation programs which are to supplied by    the experiment.

    - Validation programs must rely on storage that persists between    validation runs.

    - incremental and green-field building of the entire experiment      software stack from source

    - analysis that compare current output to prior output including log      files with transient changes filtered and histograms.

    - The system must retain an association between a validation run and a    particular state (commit) of the repository holding the main software    being tested.

    - The system must allow independent validation for different parts of    the software stack (eg, testing art separate from larsoft separate    from lbnecode).

    - The system must independently test different branches of    the software (eg, git "master" of larcore vs. some development or    feature branch).  The system may allow for being configured to ignore    some branches.

    - Validation must run promptly after the triggering commit.  It should    run for every commit which has no commits following w/in a time much    shorter than a day.  This dwell time should be no longer than one    hour and must not be longer than one day.

    - A validation run must be recorded based on unique meta data    including: target host, associated version (git commit hash, svn    revision number), validation domain (eg, package or test name).

    - Reports on validation results be they success and failure must be    stored and made available for browsing via the web.

    - reports should link back to the commit which triggered the    validation.  (Suggest interfacing with Redmine)

    - Success and failure reports should trigger email notifications to an    opt-in list.- Success and failure reports should trigger email notifications to an    opt-in list.

    - Validation runs must be able to run on all supported platforms.

    - Unsupported platforms must be able to run the validation and    contribute results but possibly with additional effort provided.

    - Validation processes must be able to run on hosts on non-Fermilab    networks which may be behind firewalls with default-deny for incoming    connections.

    - It must be possible to invalidate any given validation result in    order to trigger it to rerun.
