# How to tag and build a LArSoft vx_yy_zz release



Builds are made with Jenkins, and tagging is done on a local development machine. The instructions presume that the local development machine has products installed in /products. If the products are installed elsewhere, use that directory.

We are using a procedure that mimics git flow instead of using it directly.

Guiding philosophy: the code should build consistently before the tagging process starts. 
- A PR should pass the CI tests and have both level 1 and level 2 approval before it is merged.  
  - See the overview for more details.
- We also make a test build first and commit fixes on the local working branch if necessary.

## [Overview of Building a LArSoft Release](Overview_of_Building_a_LArSoft_Release)

### [Install for cvmfs](Install_for_cvmfs)

### [Special Instructions for Major Releases](Special_Instructions_for_Major_Releases)

## [Informal list of experiment contacts](Informal_list_of_experiment_contacts)
