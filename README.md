# dwmblocks

Modular status bar for dwm written in c.

# Modifying blocks

The statusbar is made from text output from commandline programs.  Blocks are
added and removed by editing the config.h file.

# Luke's build
This is build of dwmblocks is based on Luke's [go check it out](https://github.com/LukeSmithxyz/dwmblocks)

# scripts
I have added my personal scripts that i used. You can check them [here](https://github.com/vojtikczhraje/dwmblocks/tree/main/scripts). You can simply add scripts to dwmblocks just by addingthem to config.h and then recompiling dwmblocks. 


# Signaling changes

Most statusbars constantly rerun every script every several seconds to update.
This is an option here, but a superior choice is giving your module a signal
that you can signal to it to update on a relevant event, rather than having it
rerun idly.

For example, the audio module has the update signal 10 by default.  Thus,
running `pkill -RTMIN+10 dwmblocks` will update it.

You can also run `kill -44 $(pidof dwmblocks)` which will have the same effect,
but is faster.  Just add 34 to your typical signal number.

My volume module *never* updates on its own, instead I have this command run
along side my volume shortcuts in dwm to only update it when relevant.

Note that all modules must have different signal numbers.


