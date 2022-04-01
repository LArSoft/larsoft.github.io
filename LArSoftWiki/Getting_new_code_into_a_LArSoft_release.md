# Getting new code into a LArSoft release

This page describes the basic policies and procedures developers need to follow in order to get new code of any kind included in a LArSoft release. Most changes fall into one of the following categories:

-   Non-breaking changes
    -   Fixing a bug in existing code
    -   Adding completely new code that is not referenced by existing code in LArSoft and does not change any dependencies for the repositories.
    -   Modifying existing code in a way that changes the behavior (aside from fixing a bug), but does not change any interfaces

<!-- -->

-   Breaking changes
    -   Adding code of any type that changes the existing relationship of dependencies between LArSoft repositories
    -   Adding code of any type that introduces a new external dependency for LArSoft (e.g., uses a third-party product not already distributed with LArSoft)
    -   Modifying an existing interface
    -   Modifying existing code in a way that breaks backwards compatibility

Non-breaking changes may be commited directly to the develop branch. For anything other than a bug fix, email should be sent to the larsoft mailing list announcing the change.

Breaking changes should be made on a feature branch. If the changes affect more than one repository, please use the same feature branch in all repositories. If the changes affect experiment code, please provide feature branches with necessary corrections for the experiment repositories. These repositories include, but are not limited to, uboonecode, dunetpc, lariatsoft, and argoneutcode.

Breaking changes must be presented at a [bi-weekly coordination meeting](https://indico.fnal.gov/categoryDisplay.py?categId=405).

In all cases, new features should be presented at the next [bi-weekly coordination meeting](https://indico.fnal.gov/categoryDisplay.py?categId=405).
