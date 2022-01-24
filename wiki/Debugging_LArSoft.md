Debugging LArSoft code
==================================================

RogueWave TotalView
--------------------------------------------

**NOTE: TotalView is a commercial debugger whose license Fermilab used to pay, but it is being replaced by [Allinea](Debugging_LArSoft_with_Allinea)**

The information on totalview is here in case licenses are available from another source.

### Setup

Simply:

`setup totalview`

(the full setup line is for me: `totalview v8_11_0 -f Linux64bit -z /grid/fermiapp/products/common/db`).

### Startup

After setting up LArSoft environment for running (in the normal way) on a `debug` version and setting up TotalView as well, start with executing:

> totalview lar

It should ask immediately for run parameters. Type or copy in the “Arguments” tab something like:
bq. -c prodsingle.fcl -n 5
or anything the job you want to debug requires (noticeably, the input file).
If you want to change the arguments, you can get this window back from `Process | Startup Parameters...` menu (or hit \<Ctrl\>+\<A\>).

Ready to go… where?

### Running

To run the program, just hit the `Restart` button, or the `Go` button (also in `Process | Go` menu, and \<G\> key).
You can see if it runs, and you can interrupt it any time by the `Halt` button (`Process | Halt` menu, and \<H\> key), and then proceed with the usual debugger commands:

-   `Halt` (`Process | Halt` menu, and \<H\> key) pauses the program and shows where we are in it
-   `Go` (`Process | Go` menu, and \<G\> key) restarts
-   `Next` (`Process | Next` menu, and \<N\> key) executes the next source code line in full
-   `Step` (`Process | Step` menu, and \<S\> key) executes the next instruction, and if that is a function call, descends into that function
-   `Out` (`Process | Out` menu, and \<O\> key) executes the code until the current function returns (equivalent to `gdb` `finish`)

If you are new to debuggers you might be surprised by the behaviour of “step”.
For example, hitting \<S\> on a function call like `std::copy(from.begin(), from.end(), to.begin());` will step first into `from.begin()`, then into `from.end()`, `to.begin()` and, only when all the arguments are resolved, into `std::copy()` (I believe the actual order among the argument is not defined in C++ standard).
If a function is declared as `std::string upper(std::string s)`, stepping into a call to `upper("Test")` will first step into the conversion of a `char*` (`"Test"`) into a `std::string`.

### Targeting a part of the code

Execution can be stopped at any point by the use of breakpoints. TotalView has them as a category of *action points*, actions triggered by some “event” in the program. A break point reacts to the event “starting to execute at that address” with a “Halt” action.

One aspect of debugging code managed by framework is that usually the code we want to debug is hidden in some library, and at the beginning of the run (before we hit “Go”) that code is not known to the debugger.
For example, I want to debug `LArG4` module. The best way is to tell TotalView so by “Action Point | At Location” (\<Ctrl\>+\<B\>), telling to break at the “Function or line” named “LArG4::produce”. TotalView will reply that it does not know what I am talking about, but if I want it can remember what I wrote and every time a new library is loaded it will check if that function is in it. I do want.
The breakpoint will be marked as “pending”, and when I hit “Go” after a while and a lot of loaded libraries, it will turn into a code address of some sort. In this case, it was smart enough to detect that that function is in `larg4` namespace. If the breakpoint pends forever, very likely I mistyped the function name.

At that point, TotalView nicely shows the source code corresponding to the executable.
Actually, I find out I want to dig into Geant4. So I step through “LArG4::produce” into a `g4b::G4Helper::G4Run` call, to find myself in the middle of assembly code. In fact, TotalView reads where the source code it from the library (it is in a format called DWARF, for the libraries in ELF format…), and the location stored in there is the one where the source was compiled the first time.
The packages in UPS ship with source code all right, and it’s only matter of telling TotalView to look at them instead of in the original location. So hit “File | Search Paths” (\<Ctrl\>+\<D\>), “Sources” tab. In there I add

> \$tree(\${NUTOOLS_DIR}/source)
> \$tree(\${GEANT4_DIR}/source/geant4.9.6.p02/source)
> \$tree(\${ART_DIR}/source)

(one per line). TotalView can use environment directories, and things like `NUTOOLS_DIR` are set up by UPS already. Enclosing them in `$tree()` makes TotalView search not only that directory but also the subdirectories.
At that point the assembler code yields to some C++ code and everything is brighter.

Instructions for [totalview](http://www.roguewave.com/support/product-documentation/totalview-family.aspx#totalview) GUI debugging
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

To run totalview do

`totalview lar -a <insert lar command line options here>`

That will start a window that looks like

![](/redmine/attachments/download/34905/totalview_options.png)

Click the “OK” button. Another window then appears,

![](/redmine/attachments/download/34913/totalview_run.png)

If the display shows assembler code here, then add the ART source to the debugger’s search path: File-\>“Search Path” (“source” tab), viz:

![](/redmine/attachments/download/34914/totalview_search_path_2.png)

Note the entry, \$tree(\${ART_DIR}/source). This will find recursively the sources in the ART product. If you are using a debug-compiled version of ART (the norm) then the assembler will switch to visible source as soon as you click, “OK.” Assuming totalview quits legally this will be saved in your totalview preferences at exit.

The entry \${PATH} is needed, as totalview uses the search path to find the executable, and does not use your environment’s PATH unless it’s on the list.

And click the “Go” button. It will load up shared object libraries as art calls for them. There is a useful “lookup function” feature in the View menu, which will find named functions and display their source after their libraries have been loaded. You can click on a line number with a box around it to set a breakpoint. You can also set breakpoints
Using the Action Point menu in this window. Specifically look under: Action Points-\>“At Location”, and enter them at the “Named:” prompt while having the “Function or line” box checked. The break points for exceptions are

1.  `__cxa_begin_catch`
2.  `__cxa_end_catch`
3.  `__cxa_throw`

A trick if a bug crashes your program only a short amount of time after the library has been loaded and there isn’t enough time to halt the program and set a breakpoint: If you let the program run to completion, Totalview still has all the libraries loaded in, and you can set the breakpoint you want, and then push the “Restart” button to get the program to start again without reloading libraries.

Once the debugger finds a problem, one can click on the indicated location in memory to see what is stored in the problem variable. The “Tools” menu has useful “evalulate” and “expression list” features.

Sometimes when totalview exits, it leaves your terminal session in a state where your commands are not echoed back – it’s like typing in the dark. To fix this, try

`stty echo`

* * * * *

Questions? ask Gianluca.
