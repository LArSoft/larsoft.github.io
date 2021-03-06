# Truncating commit history



## Redmine to Github migration of all relevant branches.

This is a copy of script used for truncating the history and rewriting the hashes before pushing to Github.  
[updateFBR.sh](https://github.com/LArSoft/laradmin/blob/bc876e294e0ab6673c21cdd3def613eb59894000/archive/updateFBR.sh)

## Truncating development branch history

Truncating the history of an existing branch in a development clone could use [truncate-history.sh](https://scisoft.fnal.gov/scisoft/bundles/tools/truncate-history.sh)

## Runtimes for example feature branch

This is a table of the time it took to run the development branch script using branch feature/MVP1a.

|                 |           |              |
|-----------------|-----------|--------------|
| repo            | runtime   | \# rewritten |
| larana          | 0m18.331s | 1222         |
| larcore         | 0m11.186s | 761          |
| larcorealg      | 0m22.399s | 1544         |
| larcoreobj      | 0m0.205s  | 0            |
| lardata         | 0m23.491s | 1608         |
| lardataalg      | 0m0.173s  | 0            |
| lardataobj      | 0m10.398s | 520          |
| larevt          | 0m9.634s  | 649          |
| lareventdisplay | 0m13.403s | 930          |
| larexamples     | 0m7.436s  | 509          |
| larg4           | 0m0.164s  | 0            |
| larpandora      | 0m13.518s | 895          |
| larreco         | 1m36.789s | 6319         |
| larsim          | 2m47.225s | 8666         |
| larsoft         | 0m17.011s | 1209         |
| larsoftobj      | 0m0.169s  | 0            |
| larwirecell     | 0m0.176s  | 0            |

## Truncating commit history at svn to git transition

The git replace —graft command is used to truncate the history. This requires git version 2.13 or better.
