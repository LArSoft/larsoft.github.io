Process for contributing code to LArSoft
======================================================================================

Process for contributing a non-architectural, non-breaking change to LArSoft:
--------------------------------------------------------------------------------------------------------------------------------------------------------------

1.  Become familiar with the [design principles](http://larsoft.org/important-concepts-in-larsoft/design/) and [coding guidelines](https://cdcvs.fnal.govThe_rules_and_guidelines) of LArSoft.
2.  Develop the code including comments, tests and documentation.
3.  Offer it by talking about it to LArSoft team members and maybe give a presentation at the [LArSoft Coordination Meeting.](https://indico.fnal.gov/categoryDisplay.py?categId=405)

Process for contributing an architectural, breaking change to LArSoft:
------------------------------------------------------------------------------------------------------------------------------------------------

1.  Someone working on an experiment has an idea, an improvement, or a new feature that affects the LArSoft architecture that can be shared in the core LArSoft repositories.
2.  Developer contacts the LArSoft Technical Lead or other members of the core LArSoft team to discuss the idea. Discussion can include an email thread, formal meeting, chat in the hallway, phone call, or any communication that worksli\>Developer contacts the LArSoft Technical Lead or other members of the core LArSoft team to discuss the idea. Discussion can include an email thread, formal meeting, chat in the hallway, phone call, or any communication that works.
    -   May find that the feature, or a suitable alternative, is already in LArSoft, thus saving the need to develop it again.
    -   At this point, a decision will be made as to whether further discussion or review is needed, and where that discussion should take place. If other experts are likely to be required, a plan for including them in the process will be developed. The division of labor for the architectural changes will be discussed as well.

3.  Developer learns/reviews the [design principles](http://larsoft.org/important-concepts-in-larsoft/design/) and [coding guidelines](https://cdcvs.fnal.govThe_rules_and_guidelines) of LArSoft.
4.  Developer prepares a straw proposal or prototype for the change.
5.  For major changes as determined in step (2), the proposal should be presented at the biweekly [LArSoft Coordination Meeting.](https://indico.fnal.gov/categoryDisplay.py?categId=405) Depending on the feedback, more than one presentation may be useful.
6.  The developer writes the code, including comments, tests, and examples as needed, and keeps the LArSoft team informed on the status of work.
    -   Any redmine pages or other technical documentation should be written during this time as well.
    -   For new algorithms and services, an entry in the [list of algorithms](http://larsoft.org/algorithms-list/) should be made.

7.  When development is completed, request that it be merged onto the develop branch since this is a breaking change.

For more information, please read the [LArSoft Note about Contributing Code.](http://larsoft.org/contributing-code/)

Process to move functionality in LArSoft code
------------------------------------------------------------------------------------------------

For various reasons, the code location of functionality sometimes changes. To ensure that users of that code have time to prepare, and that nothing is overlooked, the approach to this type of migration is as follows.

1.  Discuss the possibility of moving the functionality at a LArSoft Coordination Meeting. The goal is to get agreement in principle as well as to see if there are other changes that should be done at the same time. It is likely to be a breaking change and needs to follow the process for breaking code changes.
2.  Create a ticket to establish the new location of the functionality
    -   announce the coming change and deprecation at the LArSoft coordination meeting
    -   copy the method in the new position
    -   modify the method in the old position to refer to the new one (when possible), and designate the former as [deprecated](Deprecated?parent=Process_for_contributing_code_to_LArSoft)
    -   create a ticket following the first one by one month or so, whose resolution will consist in removing the deprecated method. The time required for this depends on the extent of the change required.
    -   mark the original issue as resolved

3.  After the established time, deal with the second ticket
    -   announce in the LArSoft coordination meeting that with the next version the deprecated method will be removed, and ask for objections
    -   remove the deprecated method in the next release
