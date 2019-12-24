# Snazzy Window Manager (SWM)

A highly opinionated fork of DWM : https://dwm.suckless.org/

# FAQs

Q. Why did you fork DWM rather than make your own spin of it?

A. Because I did more than just patch dwm and make minor aesthetic changes to the appearance of it. As soon as I started removing functionality that I would never use in order to make the keybinds simpler and the codebase smaller, I knew that I couldn't continue to call my build "DWM". By forking it, you can now install SWM on your linux box and any existing DWM build on there won't be affected.

Q. What changes did you make to the default DWM build?

A. I made the following changes, in the following order.

	1. Applied the official autostart and vanitygaps patches from the Suckless website.
	2. Changed the referenced location of the autostart script from .dwm to the home folder.
	3. Added the autostart.sh file to the home folder.
	4. Added the sxhkdrc file to ~/.config/sxhkd/ for the Simple X Hotkey Daemon.
	5. Added the compton.conf file to ~/.config/compton/ for compositing.
	6. Changed the layout icons, master/stack proportions, colour scheme, gap sizes, etc.
	7. Removed all the functionality that I didn't need from DWM.
	8. Remapped the remaining keybdinds to make them shorter or more ergonomic.
	9. Rewrote the Makefile for SWM to rename the application and to avoid clashing with DWM installs.
	10. Added an swm.desktop file to /usr/share/xsessions/ so that I can sign into SWM from the LightDM display manager.

Q. What programs do I need to have pre-installed to build SWM?

A. Make sure that you already have the following on your system : libx11, libxft, libxinerama, git, st, dmenu, nitrogen, compton, sxhkd and xfce4-volumed-pulse. That's not an exhaustive list, but it should suffice.

Q. What files need to go where and do I need root privileges to do that?

A. You will almost certainly need root privileges for /usr/share/xsessions/. Look up how to copy files using "sudo cp" in the terminal online if you're not already familiar with how to do that.

Where root privileges are not required, simply use a graphical or terminal based file manger to move them to the correct folder. After you have done that, make all scripts executable. Once again, a quick internet search will tell you how to do that if you'e not familiar with the command line.

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
	
Q. Can I start SWM from .xinit rather than a log-in manager?

A. Yes, of course. To start SWM with the "startx" command, simply append "exec swm" to your ~/.xinitrc file.

Q. How do I build SWM?

A. Once the correct files are in the correct folders and the shell scripts have been made executable, enter the following commands in the terminal.

	~ $ cd swm

	~/swm $ sudo make clean install

Enter your password as prompted and swm will be installed in /usr/local/bin/.

Q. What functions does SWM have and what are the keyinds for them?

A. These are all listed in the cheat-sheet.txt file. With the default keybinds, press the Alt key and 'h' to open them in gedit.

Q. What is meant by the terms "master" and "stack" in the tiling layout?

A. In SWM, the master window is on the left half of the screen and the stack is all the windows on the right. When new windows are spawned they become the new master window. Super + m swaps the master window with either the top of the stack (if the master window is focused) or with the focused window from the stack.

Q. How do I change the colour scheme in swm?

A. By editing the hex values of col_gray1, col_gray2, col_gray3, col_gray4 and col_cyan in config.h. Then recompiling swm, logging out and back in.

Q. Why "Snazzy"?

A. The dictionary defines snazzy as "stylish and attractive".
