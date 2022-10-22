**********************
** PREREQUIREMENTS
**********************

A copy of nes-ex.cc is required.

**********************
** COMPILING AND MAKING TRACEABLE
**********************

Then, the source is compiled with: make_traceable.sh

It invokes Intel's C++ compiler, and postprocesses the assembler output slightly
to acquire a fine-precision EIP listing of each expression within the program.


**********************
** RUNNING EMULATOR AND TRACING
**********************

Finally, the emulator is run using trace2.cc .
It will produce a logfile, nestrace2.log, for each frame of the emulator's video output.
Each log entry is a bitmask of EIP values accessed during that frame.

**********************
** COMPILING AND MAKING TRACEABLE
**********************

Loading the a rom.
Just drop a nes rom in the directory and run ./nes-ex and then the rom name after.
Example: "./nes-ex Super_Mario_Bros.nes"

**********************
** MATCHING THE TRACE TO SOURCE CODE IN GRAPHICAL MANNER
**********************

Simultaneously or afterwards, the postprocessing script is run.

$ mkdir gif
$ php show.php 1 0

If you want to run multiple of them simultaneously, then do e.g.:

$ mkdir gif
$ php show.php 3 0 &
$ php show.php 3 1 &
$ php show.php 3 2 &
$ wait

It will put image files in a "gif" subdirectory. Each .gif corresponds
to an image frame, showing the program's entire syntax-colored source
code with activity illumination.


**********************
** Customizing for your own programs
**********************

- Change the filenames in make_traceable.sh
- Change the executable filename (after a0) in trace2.cc
- Change the parts in trace2.cc that deal with hardcoded
  line numbers and columns as you see fit. (Search for "MAIN_FILE".)
- Change the source filename in show.php (search for "nesemu1.cc")
- Change the dimensions in JSF_PNGout within show.php.
