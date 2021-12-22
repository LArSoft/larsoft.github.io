Debugging with cppcheck(#Debugging-with-cppcheck)
====================================================

    7/19/16 update: setup cppcheck v1_58
    does not work:
    ERROR: Product 'cppcheck' (with qualifiers ''), has no v1_58 version (or may not exist)

    so tried: ups list -aK+ cppcheck
    and the list is empty.

Checking your code for non-compile time errors with cppcheck.

cppcheck is a very handy tool available for checking your code that gcc can’t catch like array out of bound error and can also be used for optimization. The tool is documented [here.](http://sourceforge.net/apps/mediawiki/cppcheck/index.php?title=Main_Page)

It is setup at Fermilab using ups. To do so you can

    setup cppcheck v1_58

You then test the code in directory MyDir by doing

    cppcheck --enable=style MyDir

It will print out details for optimizing or fixing your code.
