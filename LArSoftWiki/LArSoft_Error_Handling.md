# LArSoft Error Handling

The LArSoft error handling policy is to code in a way that allows error information passed up the framework so the people who run the framework can make the decision on what actions to take. LArSoft uses the `art::Exception` class to pass error information from algorithm code to the framework. (Note that `art::Exception` is defined in `canvas` and can therefore be used by gallery and in other art-independent repositories and contexts. See `./canvas/Utilities/Exception.h`) Algorithm code should not catch exceptions. Let the framework deal with it.

There are two general levels of errors recognized within the LArSoft error handling policy:

-   Errors: applies to cases that cause downstream processing to be invalid.
-   Warnings: suitable when something is wrong, but the data is still valid and meaningful for downstream processing.

When exiting a module, an error code should be returned. Pick the error code that is closest. Can add more details in an error message. Whether the error is treated as fatal is up to the framework. For more information please see:

1.  the [art wiki page on error handling](https://cdcvs.fnal.gov/redmine/projects/art/wiki/Error-handling_policy)
2.  and the art wiki page on [art exit codes](https://cdcvs.fnal.gov/redmine/projects/art/wiki/ArtExitCodes).
