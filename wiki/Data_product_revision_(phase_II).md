Data product revision (phase II)
====================================================================

Targets
--------------------

Possible targets, to be discussed, include:

-   replacement of data structures:
    -   old ROOT 3- and 4-vectors with new ones (possibly non-breaking change)
    -   replacement of complex data structures with simple ones (`std::array` if supported by ROOT at the time we need it, `std::vector`, replacing `std::set` and `std::map`)
-   definition of a data augmentation protocol (e.g. with parallel collections)
    -   development of viewing tools to push the structure behind the interface
-   reorganisation of data structures; candidates:
    -   `recob::Cluster`: very heavy-weight, could be split by augmentation
    -   `recob::Track`: needs redefinition
    -   `recob::Shower`: it’s a stub
