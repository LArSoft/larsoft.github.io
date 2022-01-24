Code documentation requirements and guidelines
==================================================================================================

Requirements
------------------------------

The following information must be included as [Doxygen](http://www.stack.nl/~dimitri/doxygen/manual/docblocks.html) formatted text in every header or module file.

-   Introduction / motivation / overview of what the code does
-   Input data
-   Output data
-   Configuration data / classes / services used (directly)
-   Algorithm description (Can be reference to [larsoft.org](http://larsoft.org/list) entry)
-   Assumptions, pre-requisites
-   Limitations
-   References
-   institution and experiment of author/contributor(s)

Guidelines
--------------------------

Each major algorithm should have an entry in [http://larsoft.org/list](http://larsoft.org/list). (Do this by [https://larsoft.org/add](https://larsoft.org/add) )

Every file should have inline comments at sufficient frequency to allow readers unfamiliar with the code to be able to read and understand the code without undue effort. These comments should not be [Doxygen](http://www.stack.nl/~dimitri/doxygen/manual/docblocks.html) formatted.

Each major algorithm should have a tech note describing technical details of the algorithm (can be internal to LArSoft community or published such as in [http://techpubs.fnal.gov/](http://techpubs.fnal.gov/)

Comments/suggestions on this page are welcome. Please contact Erica Snider or Katherine Lato.
