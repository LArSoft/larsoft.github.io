-   **Table of contents**
-   [Editing Code](#Editing-Code)
    -   [Overview](#Overview)
    -   [Coding Conventions](#Coding-Conventions)
    -   [Using and Creating a Test Release](#Using-and-Creating-a-Test-Release)
    -   [Adding Packages to the Test Release](#Adding-Packages-to-the-Test-Release)
    -   [Removing Packages from the Test Release](#Removing-Packages-from-the-Test-Release)
    -   [Compiling Packages in the Test Release](#Compiling-Packages-in-the-Test-Release)
    -   [Checking code into the repository](#Checking-code-into-the-repository)
        -   [Previously Checked Out Code](#Previously-Checked-Out-Code)
        -   [Adding New Code to an Existing Package](#Adding-New-Code-to-an-Existing-Package)
        -   [Adding a new Package to the Repository](#Adding-a-new-Package-to-the-Repository)
    -   [Updating a test release](#Updating-a-test-release)
    -   [Editing code remotely with Emacs and Tramp](#Editing-code-remotely-with-Emacs-and-Tramp)

Editing Code(#Editing-Code)
==============================

Overview(#Overview)
----------------------

The following is an outline of how to edit the code. Step 3 is usually done only once; i.e., the first time one wants to start editing code.

1.  source the setup file to set the SRT related variables \# cd to a working directory \# create a test release \# cd into test release directory and work on code

Whether you are using the Fermilab installation or have installed LArSoft on a local machine, the steps to editing the code are the same. The main benefit of SRT becomes apparent in this process, namely that it allows users to create test releases that are distinct from the local base release. In this system, multiple users can work on several packages from the base release at once without interfering with each other.

Please be sure to follow the coding conventions enumerated below.

Please also sign yourself up to receive email notification of code commits from svn. This will allow you to monitor your package in case others have to commit changes to it. To sign up, follow these [instructions](http://listserv.fnal.gov/users.asp#subscribe%20to%20list) with the list name LARSOFTCOMMIT.

Coding Conventions(#Coding-Conventions)
------------------------------------------

There are only a few conventions to keep in mind when writing code for LArSoft, and they are

1.  Namespaces must be explicit, no “using namespace XXX” statements are allowed.
2.  All packages are a namespace; the names of the namespaces should be kept to 5 letters or less and should indicate the package, ie evd:: for the EventDisplay package
3.  Data members of an object should have variable names that begin with “f”, ie fADC
4.  Static variables defined in an object should have names that begin with “k”, ie kConstantValue
5.  Variable names should be reasonably descriptive for the scope in which they are used - i is ok in a small for loop, not ok in one spanning \> 20 lines.
6.  Typedefs for predefined types are discouraged, ie typedef int Int\_t, typedef std::vector \< double \> dubvec. Typedefs should be reserved for legitmate new types, ie Origin\_t in !SimulationBase/MCTruth.h.
7.  Comments are mandatory - each new object should have a description of its purpose in both the header and implementation file
8.  Comments should be of a format that enables [doxygen](http://www.stack.nl/~dimitri/doxygen/docblocks.html) to interpret them
9.  Use the [message service](Using_the_Framework?parent=Editing_Code#Message-Facility-and-MessageLogger) for output to the screen.
10. Module types and file names should be consistent, ie if a module is of type MyModule, the file names should be MyModule.h, MyModule.cxx and MyModule\_moudle.cc

Using and Creating a Test Release(#Using-and-Creating-a-Test-Release)
------------------------------------------------------------------------

A test release should contain only those packages that the user plans to alter. The remaining packages will be linked from the stable base release. To create a test release cd to a directory other than \$SRT\_DIST or its subdirectories and do

% newrel -t \<base\> test/release/directory

where \<base\> is the name of the base release, i.e. development, and test/release/directory is the name of the test release directory, e.g. lartest.

Only one test release need to be created. It can hold all packages that the user wishes to modify. However, in certain circumstances it can be useful to set up multiple test releases, such as having a test release for development code and one for a frozen point release.

Adding Packages to the Test Release(#Adding-Packages-to-the-Test-Release)
----------------------------------------------------------------------------

Once the test release is made, the user should cd into the directory and add packages to edit by doing

% addpkg\_svn -h package

where the -h indicates that the package should be checked out from the head of the repository and package is the name of the package. If you have trouble with this step, you may need to be added to the list of developers for larsoft so please contact the larsoft managers. Packages that come out of nusoft use cvs and not svn, so if addpkg\_svn fails, try

% addpkg -h nusoft\_package

If you have a test release based on a frozen release, SYYYY.MM.DD, then do

% addpkg\_svn package \<tag\>

where \<tag\> is the svn tag for the version of that package you wish to checkout. See the \$SRT\_PUBLIC\_CONTEXT/setup/packages-SYYYY.MM.DD file to determine the tag for the package.

If you wish to create a package in your test release, simply do

% mkdir mypackage

where mypackage is the name of your new package. You will need to create a GNUmakefile inside the directory; you can copy an example from existing packages. You will also want to create a link from your new package to the include directory of your test release in order to compile your package,

% cd include\
% ln -sf ../ mypackage .

Removing Packages from the Test Release(#Removing-Packages-from-the-Test-Release)
------------------------------------------------------------------------------------

DO NOT under ANY circumstance do a rm -r package. SRT creates secret links that are not seen by the user that if left in place will mysteriously cause the test release to break. Instead, one must always do:

% rmpkg \<package-name\>

This removes the package and all the links that SRT has made, including the .so files in one’s lib folder.

Compiling Packages in the Test Release(#Compiling-Packages-in-the-Test-Release)
----------------------------------------------------------------------------------

Compiling packages under the SRT environment is fairly straightforward. First, one needs to run the command

% srt\_setup -a

This command sets the \$SRT\_PRIVATE\_CONTEXT variable to the current directory and also sets paths for the compilation. To compile a package, do

% gmake package.all

If a clean compilation is needed, the user should do

% gmake package.clean

before compiling. When compiling code replace package in the above examples with the name of the package; e.g., RecoBase.

If you have several packages in your release that you want to compile at the same time do

% lar\_build -t

and that will do a clean build of all the packages in the proper dependency order.

Checking code into the repository(#Checking-code-into-the-repository)
------------------------------------------------------------------------

These are instructions for checking code into a package that already exists in the repository. Before checking any code into the repository compile it to be sure it builds. Then cd into the directory and follow these instructions.

### Previously Checked Out Code(#Previously-Checked-Out-Code)

`svn diff`

This command will print the differences between your edited code and the version in the repository. Check to be sure that the differences are expected. Then do

`svn commit -m'an informative message describing the changes'`

The “-m” indicates that what follows is a message that will be saved along with the changes in the repository.

### Adding New Code to an Existing Package(#Adding-New-Code-to-an-Existing-Package)

If the code to be committed does not yet exist in the repository it needs to be added with

`svn add xxx.yyy`

where xxx is the file name and .yyy is the file type, ie .cxx, .h, .cc.

Then do

`svn commit -m'adding new code to do ...'`

where the commit message indicates the purpose of the newly added code.

### Adding a new Package to the Repository(#Adding-a-new-Package-to-the-Repository)

Please follow [these instructions](Using_SVN_with_LArSoft?parent=Editing_Code#Adding-a-Package) to add a new package to the repository.

Updating a test release(#Updating-a-test-release)
----------------------------------------------------

It is useful to bring a test release in line with the head of the release the test is using from time to time. This is especially true if one has several packages in a test release and has not been diligent about updating them. There is a utility to automate this update, [source:SRT\_LAR/scripts/lar\_update\_testrel](/redmine/projects/larsoft/repository/entry/SRT_LAR/scripts/lar_update_testrel) and is used as follows

`$lar_update_testrel -rel xxxx`

where xxxx is the name of the base release the test release is built on, ie development. If the test release is built on a frozen release, then xxx is the name of that frozen release.

The script will compare all the packages in the test release that are also in the base release. If there is a package in a test release that is not in the \$SRT\_PUBLIC\_CONTEXT/setup/packages-xxxx file for the base release, it will not be updated.

Editing code remotely with Emacs and Tramp(#Editing-code-remotely-with-Emacs-and-Tramp)
------------------------------------------------------------------------------------------

Emacs has a handy facility called [Tramp](http://emacswiki.org/emacs/TrampMode) that will scp a file to your local machine, allowing you to edit it without network latency, and then scp the saved changes back to the original location. To use tramp add the following to your .emacs file

    (define-abbrev-table 'my-tramp-abbrev-table
      '(
        ("aliasname" "/ssh:somegpvm.fnal.gov:/uboone/app/users/my_user_name/")
        ))

where “aliasname” is the name you want to use for an alias, “somegpvm.fnal.gov” is the name of the machine you wish to access remotely, and “my\_user\_name” is your username on that machine.

Restart Emacs, and then attempt to open a file with “ctrl-x ctrl-f”. Replace the “\~/” in the file open dialog window with “aliasname” and press tab to access the remote directory.
