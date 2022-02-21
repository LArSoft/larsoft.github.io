Removing old history
==============================================

The LArSoft repositories must be cleaned up before they can be migrated to github. We are taking the opportunity to remove old history.

-   In the case of the core repositories, we are removing the very old svn history.
-   Some of the newer repositories retain history from before they were forked from a parent repository. That history will be removed.
-   Not all repositories need this cleanup.
-   Git commit hashes will change when this is done.
-   This step will be done immediately before migrating the repositories from redmine to gitub.

-   Estimated cleanup in terms of size and commits

||
|repo|before|after|before|after|
||size|size|commits|commits|
|larana|18M|17M|6521|1266|
|larcore|27M|27M|6032|777|
|larcorealg|29M|18M|903|732|
|larcoreobj|2.3M|2.2M|163|163|
|lardata|19M|18M|6893|1638|
|lardataalg|99M|99M|416|416|
|lardataobj|1.3M|1.2M|545|543|
|lareventdisplay|17M|16M|6246|990|
|larevt|17M|16M|5930|674|
|larexamples|16M|15M|5786|530|
|larg4|0.4M|0.4M|151|150|
|larpandora|19M|18M|6177|919|
|lareco|31M|30M|11899|6629|
|larsim|2000M|86M|7027|1770|
|larsoft|19M|18M|6521|1263|
|larsoftobj|0.6M|0.5M|297|297|
|larwirecell|0.8M|0.7M|364|363|
