::: {.wiki .wiki-page}
[]{#Code-analysis-process}

# Code analysis process[¶](#Code-analysis-process){.wiki-anchor} {#code-analysis-process .wiki-class-count}

## Introduction[¶](#Introduction){.wiki-anchor} {#introduction .wiki-class-count}

Regular code analysis forms an essential part of any software quality assurance program. LArSoft is introducing a regime of code analyses and fostering a shift in culture that seeks third-party reviews. The ultimate goal is to form a strong foundation for building increasingly sophisticated algorithms via compliance with LArSoft and art design principles. Good software engineering and low-level coding practices should be followed across the entire LArSoft suite.

## Principles and Preparation[¶](#Principles-and-Preparation){.wiki-anchor} {#principles-and-preparation .wiki-class-count}

The involvement and cooperation of the author (or the active maintainer of the code in question) with the process is critical to the success of analysis.

When having an analysis meeting, a clear charge and a well-defined scope are developed.

-   The charge includes input from the code authors as to their objectives in undergoing the process.
-   A specific set of preliminary work is defined for each code analysis - tailored to the type of code analysis planned.

Profiling results collected prior to code analysis meetings are performed by the code authors with the assistance of a single expert from the analysis team.

The authors provide an overview of the code either prior to or at the beginning of the code analysis meetings.

-   What parts of the code have stabilized, and what is still in flux should also be covered.

The authors and reviewers actively analyze the same code elements as a group. It is important to have a balance between having enough people to stimulate discussion and ideas, but not too many so as to make decision making overly difficult.

-   For design, half-day blocks are the minimum useful time.
-   For a performance analysis, breaks during which profiling jobs are run are often necessary. Analysis sessions need considerable time blocks.

One aim is to examine code as it comes into the repository. Code compliance and C++ best practice code analysis can be done on immature code with considerably less effort than that required for a full code analysis, and can head off some major problems before they become embedded. Code analysis in other less formal settings such as software meetings or collaboration meetings will also help to foster a culture of code analysis.

Since experts will often find issues that more inexperienced users will not immediately see when using profiling tools, using such tools during a code analysis meeting can aid both the analysis of the code and provide learning for code authors.

The preparatory work requires a significant time investment from each of the team members as does follow-up consulting or documentation. This is taken into account and charged to the code analysis when planning and scheduling meetings.

## Types of Code Analysis[¶](#Types-of-Code-Analysis){.wiki-anchor} {#types-of-code-analysis .wiki-class-count}

The following types of code analysis meetings differ in the target, and therefore in the preparatory work needed, the tools used, and the level of reading of the code that might be expected:

-   General code analysis of the code design, class structure, interfaces, etc. (as compared to LArSoft and more general design principles)
-   Analysis of computing performance, identification of resource bottlenecks and their solution
-   Compliance with coding practices and styles (as defined by LArSoft and more general guidelines)
-   Compliance with C++ best practices
-   Physics performance review

> -   In general, such reviews are left to the experiments, and are not considered in this document

Although a single "code analysis" may include more than one of the above, each additional type may require added preparatory work, experts and time during the meeting.

A light-weight process focused on a single type at a time - the specific type agreed upon in advance.

## Conduct of the code analysis[¶](#Conduct-of-the-code-analysis){.wiki-anchor} {#conduct-of-the-code-analysis .wiki-class-count}

Code analysis meetings are initiated on a request from any of the following:

-   The code author(s)
-   An experiment representative
-   The core LArSoft team
-   A standing LArSoft policy (e.g., for each "pull request" equivalent)

The type of code analysis and the scope of code involved are decided at the time of the request in consultation with the requestor, the author, and the core LArSoft team. Whenever possible, the specific charge, code analysis objectives and any metrics of success are defined and agreed upon at this time.

Several considerations can drive a code analysis:

1.  Is the code a good candidate for production processing?
2.  Is there a known problem or set of issues with the code?
3.  Will improvements in performance or design have an impact beyond the code in question?
4.  Is the code a likely exemplar for other developers, or can it be used as such?
5.  Is the code mature? There is a trade-off between improving more mature code (which is therefore less likely to be re-visited to fix problems), versus trying to head off issues early in the development of code where the value to the experiments may be less obvious.
6.  Most importantly, are the code authors or relevant offline organizations supportive of the code analysis for the code in question?

## Roles[¶](#Roles){.wiki-anchor} {#roles .wiki-class-count}

Each code analysis meeting includes at a minimum the following people:

-   Code author(s)
-   An additional problem domain expert
-   Two software engineering experts

Additional people can be added as deemed necessary or helpful. In general, the process should be completely open, so observers are welcome.

Each meeting needs people in the following roles to be present:

-   A scribe who documents important conclusions or points of discussion - Need not be the same person throughout the meeting(s).
-   Domain experts
-   Programming experts
-   Code analysis leader

The audience for the results can include several entities, depending upon the targets identified:

-   Code author(s) and the entity requesting the code analysis
-   Core LArSoft team
-   Other developers in the LArSoft community
-   Experiment offline coordinators
-   art framework team
-   SCD management (in some cases)

## Preparation[¶](#Preparation){.wiki-anchor} {#preparation .wiki-class-count}

Most code analysis, however, will require most or all of the following in advance of any formal meetings:

-   Selection of the domain and software engineering experts to be involved and agreements for the time to be committed
-   Selection of the people who will implement the recommended changes (can be the authors) and perform other follow-up work, and agreements for the time to be committed.
-   Commonly accessible work areas in which to build and profile code
-   Access to the computing resources needed by all people involved in the code analysis
-   A set of representative configurations and input data from the authors to allow the code to be run
-   Aids in viewing the code during the meeting, such as diagrams, cloned repositories, etc.
-   Reports from a static analysis tool
-   Output from preliminary time and memory use profiling
-   \* An initial examination of the output prior to the meetings can identify and possibly address easy to fix issues early in the process.

> -   The results can also be used to help understand the control flow of the code.

-   If changes are to be made, identify a set of tests to validate changes

> -   Typically tests for bitwise identical output are the most useful, since physics validation and changes that result in changes to the physics are outside the scope of these code analysis meetings.
> -   To the extent feasible, each expert should preview the code on his or her own.

## Code Analysis Meetings[¶](#Code-Analysis-Meetings){.wiki-anchor} {#code-analysis-meetings .wiki-class-count}

Meetings will broadly perform or cover the following items.

-   A review of the charge and discussion of special interests of the authors or code analysis requestors.
-   A discussion of how to divide the time between the various topic areas and code elements to be addressed
-   An overview presentation or discussion by the authors of the algorithm and functioning of the code to be examined.

> -   Any major concept and abstractions used by the code should be included in this.
> -   The intent of this presentation is to discuss what the code does, so need not go into details such as the class structure, for instance.

-   Analysis of the code. How this is done is up to those participating in the meeting.

Previous experience suggests that sessions of about half a day in duration are the most effective. Multiple such sessions can be organized as needed. Care should be exercised in scheduling and throughout the planning, however, so as to keep the entire process as light-weight as possible. Single session meetings, for instance, should possibly be the norm. In all cases, the time to be committed should be agreed upon in advance.

Meetings should allow brief discussion regarding topics of opportunity noted by the participants during the course of the meeting (for example, noting a use of call-by-value function arguments when const references would be substantially more efficient).

## Outcomes and Report[¶](#Outcomes-and-Report){.wiki-anchor} {#outcomes-and-report .wiki-class-count}

The direct product of the preparatory work and meetings should include the following:

-   A written report of the conclusions from the code analysis. The report lists:

> -   Recommended changes;
> -   Problems or other issues that require further investigation, thought or discussion;
> -   Conclusions regarding any targets of opportunity discussed;
> -   Any findings that are not reflected among the items above, including discussion of potential trade-offs in any areas addressed by the code analysis;
> -   The metrics of success for the code analysis, when they exist;
> -   Any comments on the process offered.
> -   A reference to comments in GitHub can be included in any of the relevant sections.

-   (Encouraged, but optional) Annotations to the code indicating recommended changes, or issues to investigate or discuss further.

## Follow-up[¶](#Follow-up){.wiki-anchor} {#follow-up .wiki-class-count}

A strong follow-up effort from a code analysis meeting is as critical to the success of the overall code analysis as are the steps leading to the report itself.

We assume that the primary responsibility for implementing changes falls to the author or experiment that owns the code. We further assume that this work will be carried out in consultation with the experts participating in the code analysis, the core LArSoft team, and the offline management of the relevant experiment.

The details of the follow-up work, as for the code analysis meetings, should be tailored to the particular code analysis meeting, the types of recommendations, and the effort available. The following tasks will ensure that the follow-up work is properly specified and tracked, and that any more generally useful conclusions will be disseminated.

-   Code authors define the scope of follow-up work and create a prioritized task list in consultation with the core LArSoft team and experiment offline management.
-   A set of issues entered into the LArSoft issue tracker for each of the tasks to be completed. It is expected that experiments may also choose to independently track issues for which they are responsible.
-   A set of milestones entered into the LArSoft issue tracker that describe overall targets for the follow-up work. Each of the tasks should be under one of the milestones.
-   Regular reports on the progress toward these milestones given at an appropriate meeting (experiment or LArSoft).
-   Reporting of lessons learned in a document available to the LArSoft community.

> -   All such lessons learned should be accumulated in a single location.
> -   A brief report of such lessons learned may be appropriate in cases when they are or broad interest.

## Reference[¶](#Reference){.wiki-anchor} {#reference .wiki-class-count}

The above process is based on the recommendations at <http://cd-docdb.fnal.gov/cgi-bin/ShowDocument?docid=5765> which modified the original process at <https://cdcvs.fnal.gov/redmine/projects/larsoft/wiki/Code_analysis_process_and_tools/4>

## History[¶](#History){.wiki-anchor} {#history .wiki-class-count}

Original proposal for code analysis is as given in [slides at the steering meeting](https://indico.fnal.gov/getFile.py/access?contribId=2&resId=0&materialId=slides&confId=11891){.external}. 
:::
