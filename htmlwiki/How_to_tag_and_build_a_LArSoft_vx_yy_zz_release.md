How to tag and build a LArSoft vx_yy_zz release
======================================================================================================

Builds are made with Jenkins, and tagging is done on a local development machine. The instructions presume that the local development machine has products installed in /products. If the products are installed elsewhere, use that directory.

We are using a procedure that mimics git flow instead of using it directly.

Guiding philosophy: the code should build consistently before the tagging process starts. This means that we make a test build first and commit fixes to develop if necessary. We are also now running the quick CI tests locally.

[Overview of Building a LArSoft Release](Overview_of_Building_a_LArSoft_Release)
-----------------------------------------------------------------------------------------------------------------------------------------------------------

[Informal list of experiment contacts](Informal_list_of_experiment_contacts)
-----------------------------------------------------------------------------------------------------------------------------------------------------

Archival instructions for working with redmine repositories.
-----------------------------------------------------------------------------------------------------------------------------

Although these instructions are archival, much of the information remains relevant.

### [Overview of Building a LArSoft Release from redmine](Overview_of_Building_a_LArSoft_Release_from_redmine)

### [LArSoft Release Build Preliminary Steps](LArSoft_Release_Build_Preliminary_Steps)

### [Create a Working Branch](Create_a_Working_Branch)

### [Update versions](Update_versions)

### [Run the quick CI tests](Run_the_quick_CI_tests)

### [Create Tags for a LArSoft Release Build](Create_Tags_for_a_LArSoft_Release_Build)

### [LArSoft Release Official Build](LArSoft_Release_Official_Build)

### [Install for cvmfs](Install_for_cvmfs)

### [LArSoft Release Final Steps](LArSoft_Release_Final_Steps)

### [Special Instructions for Major Releases](Special_Instructions_for_Major_Releases)
