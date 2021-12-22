FNAL Redmine tricks
============================================

-   **Table of contents**
-   [FNAL Redmine tricks](#FNAL-Redmine-tricks)
    -   [Empty page - for testing](#Empty-page-for-testing)
    -   [Calling macros](#Calling-macros)
    -   [Syntax highlight for code](#Syntax-highlight-for-code)
    -   [References to other redmine locations](#References-to-other-redmine-locations)
    -   [Custom macro test](#Custom-macro-test)
    -   [Collapsing text](#Collapsing-text)
    -   [Mathematical formulas with LaTeX](#Mathematical-formulas-with-LaTeX)
    -   [Other tricks with LaTeX](#Other-tricks-with-LaTeX)
    -   [DOT graphs](#DOT-graphs)
    -   [List of supported macros](#List-of-supported-macros)

Empty page - for testing
----------------------------------------------------

An empty page for your tests: [LArSoft Redmine sandbox](LArSoft_Redmine_sandbox?parent=FNAL_Redmine_tricks); remember to clean up after yourself!

Calling macros
----------------------------------

A macro can be called by enclosing its name in double braces; for example:\

    {{hello_world(arg="argument text")
      block of text
    }}

> Hello world! Object: WikiContent, Arguments: arg=“argument text” and a 13 bytes long block of text.

Syntax highlight for code
--------------------------------------------------------

The standard way to get some syntax highlight is to switch to HTML mode with.

Class names are

  -------- ---------- --------------------------------
  C        `c`        
  C++      `cpp`      (does not know C++11 keywords)
  python   `python`   
  ruby     `ruby`     
  JSON     `json`     
  bash     n/a        
  FHiCL    n/a        (try with `python`)
  -------- ---------- --------------------------------

[Example with C++ code (class: “cpp”)](#)[Example with C++ code (class: “cpp”)](#)

      /**
       * @file   ServiceUtils.h
       * @brief  Utility functions in `lar` namespace to interface with art services
       * @author me@fnal.gov
       * @date   October 9th, 2015
       */
      #ifndef COREUTILS_SERVICEUTILS_H
      #define COREUTILS_SERVICEUTILS_H

      // framework libraries
      #include "art/Framework/Services/Registry/ServiceHandle.h" 
      #include "art/Utilities/Exception.h" 
      #include "cetlib/demangle.h" 

      // C/C++ standard libraries
      #include <typeinfo>
      #include <type_traits> // std::is_copy_assignable<>, ...

      namespace lar {

        /**
         * @brief  Returns a constant pointer to the provider of specified service
         * @tparam SERVICE the class of the service that is needed
         * @return a constant, non-null pointer to the service provider
         * @throw  art::Exception if service returns a null pointer
         *
         * The service class is required to have a `provider_type` and a `provider()`
         * members defined.
         */
        template <typename SERVICE>
        SERVICE const* providerFrom() {
          // if you get a compilation error here,
          // the service class your code is asking for does not comply with LArSoft
          // service class requirements
          static_assert(
               !std::is_copy_constructible<typename SERVICE::provider_type>::value
            && !std::is_move_constructible<typename SERVICE::provider_type>::value
            && !std::is_copy_assignable<typename SERVICE::provider_type>::value
            && !std::is_move_assignable<typename SERVICE::provider_type>::value,
            "LArSoft service provider classes must not be copyable nor moveable!");
          SERVICE const* pProv = art::ServiceHandle<SERVICE>()->provider();
          if (!pProv) {
            throw art::Exception(art::errors::NotFound)
              << "Service " << cet::demangle(typeid(SERVICE).name())
              << " returned a null provider!";
          }
          return pProv;
        } // providerFrom()

      } // namespace lar

      #endif // COREUTILS_SERVICEUTILS_H

[Example with C code (class: “c”)](#)[Example with C code (class: “c”)](#)

      #include <stdio.h>

      int main() {
        int const n = 10;
        for (int i = 0; i < n; ++i) {
          printf ("Loop: %d\n", i);
        } /* for */
        return 0;
      } /* main() */

[Example with python code (class: “python”)](#)[Example with python code (class: “python”)](#)

      import sys

      if __name__ == "__main__":
        print "%s got %d command line arguments: '%s'." \
          % (sys.argv[0], len(sys.argv) - 1, "', '".join(sys.argv[1:]))
        sys.exit(0)
      # main

[Example with FHiCL code (class: not supported but “python” may do)](#)[Example with FHiCL code (class: not supported but “python” may do)](#)

    #include "services.fcl" 

    BEGIN_PROLOG
    my_service: { 
      service_provider: "ReallyMyService" 

      lower_limit: 10
      upper_limit: 20

    } # my service
    END_PROLOG

    services: {
      IMyService: @local::my_service
    }

    services.IMyService.upper_limit: 30
    services.IMyService.upper_limit: @erase

[Example with BASH code (class: not supported)](#)[Example with BASH code (class: not supported)](#)

    #!/usr/bin/env bash
    #
    # Print the full patch of each argument
    #

    function ExpandPath() {
      local Path="$1" 
      readlink -f "$Path" 
    } # ExpandPath()

    for Param in "$@" ; do
      ExpandPath "$Param" 
    done

References to other redmine locations
--------------------------------------------------------------------------------

-   **issue trackers**: `issue #1083` renders as: issue [\#1083](/redmine/issues/1083 "Bug: filter::ChannelFilter should be made into a service (Closed)") (grayed and barred if closed); the numbering is unique within Fermilab Redmine
-   **source code**:
    -   `source:bin/CMakeLists.txt` renders as: [source:bin/CMakeLists.txt](/redmine/projects/larsoft/repository/entry/bin/CMakeLists.txt)
    -   `lardata:source:ups/product_deps` renders as: [lardata:source:ups/product\_deps](/redmine/projects/lardata/repository/entry/ups/product_deps)
-   **commits**: `lardata:commit:ce08cb0c03376890c3e9339edf95d9ce10ffb377` or shortened `lardata:commit:ce08cb0` render as [lardata:ce08cb0c03376890c3e9339edf95d9ce10ffb377](/redmine/projects/lardata/repository/revisions/ce08cb0c03376890c3e9339edf95d9ce10ffb377 "lardata v06_27_00 for larsoft v06_48_00") and [lardata:ce08cb0](/redmine/projects/lardata/repository/revisions/ce08cb0c03376890c3e9339edf95d9ce10ffb377 "lardata v06_27_00 for larsoft v06_48_00") respectively (both point to the same place)
-   **wiki pages**: the labels can be obtained from the page and section titles, removing all “special” characters
    -   `[[art:]]` points to the main wiki page of *art* Redmine project: [art](/redmine/projects/art/wiki) (`[[art:|art wiki]]` typesets the specified label: [art wiki](/redmine/projects/art/wiki))
    -   `[[FNAL Redmine tricks]]` points to this wiki page: [FNAL Redmine tricks](FNAL_Redmine_tricks) (`[[FNAL Redmine tricks|tricks]]` typesets the specified label: [tricks](FNAL_Redmine_tricks))
    -   `[[FNAL Redmine tricks#References to other redmine locations]]` points to this paragraph: [FNAL Redmine tricks](#References-to-other-redmine-locations) (label syntax available as above)
    -   `[[art:Configuration validation and description]]` points to a specific wiki page of the redmine project *art*: [Configuration validation and description](/redmine/projects/art/wiki/Configuration_validation_and_description) (label syntax available as above)
-   **projects**: `project:art` renders as [art](/redmine/projects/art)
-   **versions**: versions are declared in the `Settings` panel of a Redmine project
    -   `version:v06_49_00` renders as [v06\_49\_00](/redmine/versions/1370)
    -   `art:version:2.09.00` renders as [2.09.00](/redmine/versions/1352)

Custom macro test
----------------------------------------

*(this is currently incorrect or not working)*

macro :my\_macro, :desc =\> ‘This is a custom macro’ do |obj, args| \# args is an array \# and this macro does not accept a block of text\
end

{{my\_macro}}

Collapsing text
------------------------------------

The following macro creates a collapsible window with the specified text as short description.\
The extended text can contain macros; e.g.:\

    {{collapse(View details...)
      bq. {{child_pages}}
      This is a block of text that is collapsed by default.
      It can be expanded by clicking a link.
    }}

[View details…](#)[View details…](#)

> \
>  This is a block of text that is collapsed by default.\
>  It can be expanded by clicking a link.

Mathematical formulas with LaTeX
----------------------------------------------------------------------

    {{latex($\beta\tau\Theta\theta$)}}

> ![\$\\beta\\tau\\Theta\\theta\$](/redmine/wiki_external_filter?index=0&macro=latex&name=b9207d95767c15eba1c44746b98e0ff410eb2c90fe6ff97d0b448ec349fc12f5)

Other tricks with LaTeX
----------------------------------------------------

Today’s date:\

    {{latex(\today)}}

![\\today](/redmine/wiki_external_filter?index=0&macro=latex&name=107e3fa2d81e325cc1f009f58d011f18f7fa90cfcae749b05870bce006be559a)

Minutes since midnight: \

    {{latex(\the\time)}}

![\\the\\time](/redmine/wiki_external_filter?index=0&macro=latex&name=6a2f328ea226733ce22418b45975991674b49ca36464f0110b9ff59395c3223c)

Note: The above do not seem to consistently update when the page is edited.

DOT graphs
--------------------------

This seems not to work…\

    {{graphviz( a -> b ;)}}

> Error executing the **graphviz** macro (No such file or directory - /usr/bin/dot)

List of supported macros
------------------------------------------------------

The following list can be rendered by running the `{{macro_list}}` macro:

* * * * *

`hello_world`
:   Sample macro.

`macro_list`
:   Displays a list of all available macros, including description if available.

`child_pages`
:   Displays a list of child pages. With no argument, it displays the child pages of the current wiki page. Examples:

        {{child_pages}} -- can be used from a wiki page only
        {{child_pages(depth=2)}} -- display 2 levels nesting only
        {{child_pages(Foo)}} -- lists all children of page Foo
        {{child_pages(Foo, parent=1)}} -- same as above with a link to page Foo

`include`
:   Includes a wiki page. Examples:

        {{include(Foo)}}
        {{include(projectname:Foo)}} -- to include a page of a specific project wiki

`collapse`
:   Inserts of collapsed block of text. Examples:

        {{collapse
        This is a block of text that is collapsed by default.
        It can be expanded by clicking a link.
        }}

        {{collapse(View details...)
        With custom link text.
        }}

`thumbnail`
:   Displays a clickable thumbnail of an attached image. Examples:

        {{thumbnail(image.png)}}
        {{thumbnail(image.png, size=300, title=Thumbnail)}} -- with custom title and size

`latex`
:   Converts LaTeX to embedded image

`latex_include`
:   Converts LaTeX to embedded image

`graphviz`
:   Constructs graph image from its textual description in DOT language, see http://www.graphviz.org

`graphviz_include`
:   Constructs graph image from its textual description in DOT language, see http://www.graphviz.org

`ritex`
:   Converts WebTeX expression to MathML, see http://ritex.rubyforge.org/

`ritex_include`
:   Converts WebTeX expression to MathML, see http://ritex.rubyforge.org/

`video`
:   Converts video file given by its filename to FLV and displays it via Flowplayer

`video_include`
:   Converts video file given by its filename to FLV and displays it via Flowplayer

`video_url`
:   Converts video file given by its URL to FLV and displays it via Flowplayer

`video_url_include`
:   Converts video file given by its URL to FLV and displays it via Flowplayer

`fortune`
:   Prints a random, hopefully interesting, adage, see http://en.wikipedia.org/wiki/Fortune_(Unix)

`fortune_include`
:   Prints a random, hopefully interesting, adage, see http://en.wikipedia.org/wiki/Fortune_(Unix)

`repository`
:   Prints path to project repository, args are (mode,reponame) mode is 'ro' or 'rw', reponame only if multiple repositories on project

`repository_include`
:   Prints path to project repository, args are (mode,reponame) mode is 'ro' or 'rw', reponame only if multiple repositories on project

* * * * *
