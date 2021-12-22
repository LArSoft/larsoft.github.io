Guidelines for writing thread-safe modules(#Guidelines-for-writing-thread-safe-modules)
==========================================================================================

1.  Remove class data members that are intended to be valid for each event.
2.  If `TFileService` is used in event-level functions, then
    1.  If using a shared module, `serialize(...)` must be called inside the constructor body, or
    2.  Use a legacy module
