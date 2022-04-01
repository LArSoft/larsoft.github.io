# Interactive GPVM sessions with terminal multiplexers



> This is an introduction to the concepts and a few hints on how to use a terminal multiplexer.  
> Feel free to expand with your own content and experience.

A terminal multiplexer is a program that acts as a container of multiple shell sessions. By using one of them, you can open a single SSH connection to a remote server (say, a General Purpose Virtual Machine of your experiment), and have many shells open at the same time.  
**<span style="color: green;">For people working on GPVMs, terminal multiplexers are a life changer.</span>**  
The most popular ones are:

-   [`screen`](https://www.gnu.org/software/screen): text-based; ancient and ubiquitous
-   [`tmux`](https://tmux.github.io): also text-based; inspired by `screen`, shares many aspects with it; if your server does not have it, ask for its installation!

`tmux` is the most featured and better maintained of them, and it is now expected to be installed on all Fermilab GPVM's. In the following text I will talk mostly about it.  
Advantages of using a text multiplexer include:

-   a single entry point into a server: you don't need to open a SSH connection each time
-   session persistency: a multiplexer session can be *detached*, and recovered at a later time

## Some common operations

### Commands and command lists

The interaction with the shells is performed mainly with key strokes from your keyboard (this is a description fitting any terminal session after all). There is some mouse interaction support in `tmux`, but that has ben in my experience unreliable and discontinuous.  
So, `tmux` will pass your keystrokes to the currently active shell. To give instructions to `tmux` instead of its current shell, a special keystroke is used, the “prefix key” or “escape key”.

> The default key combination to send commands to `tmux` is `<Ctrl>+<B>`. This can be customised if needed.

So for example, to tell `tmux` to create a new shell, you will have to type `<Ctrl>+<B> <C>`, and, to switch to the last window you used, you hit `<Ctrl>+<B> <L>`.  
The manual (`man tmux`) lists at the very beginning the default key bindings. I will mention here only two:

|                  |                              |
|------------------|------------------------------|
| `<Ctrl>+<B> <?>` | list of current key bindings |
| `<Ctrl>+<B> <:>` | type a `tmux` command        |

### Starting a new session

From a terminal, you can start a new `tmux` session with:

    tmux -S SessionName

  
Specifying the `-S SessionName` is optional, and it allows a better control in case you are running multiple sessions (for example, one for `Purity`, another for `Xsec`…).

### Detaching and attaching to an existing session

You can detach the current session (default binding is `<Ctrl>+<B> <D>`), and you will be sent back to the shell you started `tmux` from. At this point, `tmux` (*server*) is still running, but no session is visualised (*client*).  
The processes that were running are not affected: your LArSoft job started in a window is still running, and your local graphic emacs session is still ongoing. You can `exit` the shell, switch your laptop off and go home.

When at home, you can turn your desktop on and open a SSH session to the GPVM. The command `tmux ls` will list all the active sessions and their name (the one you used with the `-S` argument when starting the session).  
You can choose which session to attach: `tmux attach -t SessionName`. But if your style is to have just one session, just `tmux attach` will do.  
You'll get back exactly the same window structure that you had left, and if you were lucky with the GPVM or unlucky with the traffic, LArSoft might even have finished building by them.

Also, see the notes below about [graphic programs](Interactive GPVM sessions with terminal multiplexers#Graphic-applications).

### Opening a new shell

> The default key binding for a new shell is `<Ctrl>+<B> <C>`.

This will create a new `tmux` window and make it current, *in the same directory where the previous window was*. That means that if you are using your working area for both build and run, you are better served to create a build window, `cd` into your working area, and then creating another window that will be the “run” shell.  
When the session starts being crowded, it makes a lot of sense to *give a name to each window*. In the example, one may be called “LArSoft build 6.11”, another “LArSoft run 6.11”, and so on. When browsing the list of windows (hint: @<Ctrl>+<B>

### Closing a shell

The recommended way to close a shell is by typing the `exit` command in that shell. When the shell is over, `tmux` will automatically close its window, and when no window is left `tmux` will automatically close the session.  
The `kill-window` command (`<Ctrl>+<B> <&amp;>`) will ask you whether to kill the current window (and its process).

### Scripting `tmux` behaviour

It is possible, although sometimes not completely trivial, to write configurations that open a set of windows (and panes) and set them up in a certain layout.  
When you find out that you are creating the same layout over and over again, it may be time to hit a search engine and copy and customise some existing configuration.

## Issues and pitfalls

### Scrolling the terminal output and copy and paste

`tmux` manages the output buffer directly. This typically confuses your terminal application (`xterm`, `iTerm`, `konsole`…) which tries to do the same. A lot of adaptation is needed here.

While copy and paste is definitely possible within `tmux`, the habit of `tmux` of intercepting mouse events will make it more… adventurous.  
`tmux` has a *copy mode* that allows scrolling back in the previous console output, to search it, and to select from it. By default, once the copy mode is entered, hitting `<Enter>` will exit it and copy in a copy buffer the current selection (then it can be pasted by `<Ctrl>+<B> <]>).
Your mileage with using the mouse and its scroll wheel may vary according to your `tmux@ settings and on its version. In my experience with `konsole`, selecting while keeping `<Shift>` pressed will tell the terminal do directly manage the mouse for that action, which turns into `konsole` copying whatever characters have been selected, ignoring `tmux` pane structure, and copying it into my clipboard. This will not be effective when using a window split in vertical panes. In the end, I can paste by using the central mouse button (Linux style), again while pressing `<Shift>`.

### Graphic applications

`tmux` does not interfere with graphic systems, which is a good start.  
GPVM are running GNU/Linux operating system and an XWindow server (we usually call it “X” or “X11”). That is the base of a client/server system where the X server is on the GPVM, the clients are anywhere (e.g., your laptop), and they communicate through a connection.  
The X connection is tunnelled through the SSH connection. On each new SSH connection, `ssh` and the `X` server agree on a connection name, which is stored in the `DISPLAY` variable on the shell, server side (try `echo $DISPLAY` and you'll see something like `localhost:10.0`).  
When you close the SSH connection, the X connection is also broken, and when you open a new SSH connection, the X connection might be different (e.g., `localhost:11.0`).  
In that case, the existing `tmux` shells will still remember the old `DISPLAY` setting and will try to use that broken connection. So you start `root` and you get an X error and a batch session. The solution is to fix that `DISPLAY` variable first:

1. open a new `tmux` window

1. print the `DISPLAY` value (the new window will have the updated one!):

<pre>

$ echo $DISPLAY  
localhost:11.0

</pre>

1. copy that text and close the `tmux` window you just created

1. in the old shell, update the `DISPLAY` variable:

<pre>

export DISPLAY=“localhost:11.0”

</pre>

At this point, `root` should show the splash screen and be able to render graphics.

> I am not aware of any way to preserve running graphic applications after the SSH connection (and therefore the X connection) is broken. That is the area for remote desktop applications (e.g. [Virtual Network Computing](https://en.wikipedia.org/wiki/Virtual_Network_Computing)).

### Lifetime of a session

Your `tmux` sessions will last until you close them, or until the server machine is rebooted.  
GPVM's can be rebooted on a planned schedule (like the nefarious maintenance Thursdays), or an unplanned one because of any emergency. When that happens, your session is lost. There is no way I am aware of to tell `tmux` to save any part of the current session (window layout, current directories, or scrollback buffer) on disk.  
So: don't count too much on your session being there when you are back: it usually will be, that is much better than without a multiplexer, but that is just as far as it goes.

------------------------------------------------------------------------

*<span style="color: gray;">Contact: Gianluca Petrillo.</span>*
