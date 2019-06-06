# Snazzy Window Manager (SWM)

A highly opinionated fork of DWM : https://dwm.suckless.org/

# FAQs

Q. Why did you fork DWM rather than make your own spin of it?

A. Because I did more than just patch dwm and make minor aesthetic changes to the appearance of it. As soon as I started REMOVING functionality that I would never use in order to make the keybinds simpler and the codebase smaller, I knew that I couldn't continue to call my build "DWM". By forking it, you can now install swm on your linux box and any existing DWM build on there won't be affected.

Q. What changes did you make to the default DWM build?

A. I made the following changes, in the following order.

1. Applied the official autostart and vanitygaps patches from the Suckless website.
2. Changed the referenced location of the autostart script from .dwm to the home folder.
3. Added the autostart.sh file to the home folder.
4. Added the sxhkdrc file to ~/.config/sxhkd/ for the Simple X Hotkey Daemon.
5. Added the compton.conf file to ~/.config/compton/ for compositing.
6. Changed the layout icons and the bar colour scheme slightly.
7. Removed all the functionality that I didn't need from DWM.
8. Remapped the remaining keybdinds to make them shorter or more ergonomic.
9. Rewrote the Makefile for SWM to rename the application and to avoid clashing with DWM installs.
10. Added an swm.desktop file to /usr/share/xsessions/ so that I can sign into SWM from the LightDM display manager.

Q. What programs do I need to have pre-installed to build SWM?

A. Make sure that you already have the following on your system : libx11, libxft, libxinerama, git, st, dmenu, nitrogen, compton, sxhkd. That's not an exhaustive list, but it should suffuce.

Q. What files need to go where and do I need root privileges to do that?

A. You will almost certainly need root privileges for /usr/share/xsessions/. Look up how to copy files using "sudo cp" in the terminal online if you're not already familiar with how to do that.

Where root privileges are not required, simply use a graphical or terminal based file manger to move them to the correct folder. Once you have done that, don't forget to make ALL SCRIPTS EXECUTABLE. Once again, look up how to do that if you don't know how.

Note that the config.def.h and config.h are identical to begin with.

The correct file paths are as follows:

/usr/share/xsessions/swm.desktop

~/autostart.sh

~/.config/compton/compton.conf

~/.config/sxhkd/sxhkdrc

~/swm/cheat-sheet.txt

~/swm/Makefile

~/swm/config.mk

~/swm/config.def.h

~/swm/config.h

~/swm/util.h

~/swm/drw.h

~/swm/transient.c

~/swm/util.c

~/swm/drw.c

~/swm/swm.c

Q. How do I build SWM?

A. Once the correct files are in the correct folders and the shell scripts have been made executable, enter the following commands in the terminal.

	~ $ cd swm

	~/swm $ sudo make clean install

Enter your password as prompted and swm will be installed in /usr/local/bin/.

Q. Why "Snazzy"?

A. The dictionary defines snazzy as "stylish and attractive".

# General Keybinds

*************     These are hard-coded in config.h     *******************************  

MODIFIERS               KEY		FUNCTION

Super                   d		run dmenu
Super                   b		toggle bar on/off

Super                   Space           toggle tiled/floating layout
Super			Tab		toggle between current/last view

Super			{1...9}		switch to numbered view
Super|Shift		{1...9}         move window to numbered view


Super                   q		quit focused window
Super                   F2		quit swm session

Super                   Return		spawn st
Super|Shift             Return		flip master window and top window from stack
		
Super                   j		focus window clockwise
Super                   k		focus window counterclockwise

Super                   0		toggle window gaps on/off
Super|Shift             0		default window gaps

Super                   h		increase all window gaps
Super                   l		decrease all window gaps

Super                   y		increase horizontal window gaps
Super			o		decrease horizontal window gaps

Super|Control           y      		increase vertical window gaps
Super|Control           o      		decrease vertical window gaps

Super|Shift             y		increase external window gaps
Super|Shift             o		decrease external window gaps

Super|Shift             h		increase outer window gaps
Super|Shift             l		decrease outer window gaps

Super|Control           h		increase inner window gaps
Super|Control           l		decrease inner window gaps

Super|Alt               y		increase upper window gaps
Super|Alt               o		decrease upper window gaps

# User-specific Keybinds

*************     These can be edited in ~/.config/sxhkd/sxhkdrc     ***********

Alt			  a		Pulse Audio mixer
Alt			  b		Chromium browswer
Alt			  f		Pcmanfm file manager

Alt			  n		Nitrogen wallpaper switcher
Alt 			  s		Spotify desktop app

Alt			  t		Gedit
Alt			  v		VSCodium

Alt 			  h		Open this cheat sheet in gedit
Alt 			  x		Open sxhkdrc in gedit

Alt 			  Return	Termite terminal emulator
Alt|Shift		  s		Reload sxhkd

Shift			  Print		Take a screenshot with gnome-screenshot
          		  Print		Take a screenshot with scrot
