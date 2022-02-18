# Changes Expected for Future Releases

These are short term plans.

LArSoft [pull requests](https://github.com/orgs/LArSoft/projects/2)

## week of Feb. 22

-   ifdhc_config v2_6_1c
    -   Making gridftp the default without re-enabling door rotation caused the default door to become congested (oops), so we’re going to fix that by hard-coding more default doors (which dCache is adding) and re-enabling rotation without discovery (since that’s still broken).
-   gh v2_5_1a
    -   GitHub CLI
    -   note that hub is a wrapper for git, gh is a command line interface

## Coming soon

-   wirecell v0_18_0

<!-- -->

-   build larsoft with cetmodules
-   new build of tensorflow
