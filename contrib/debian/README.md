
Debian
====================
This directory contains files used to package luckyblockcoind/luckyblockcoin-qt
for Debian-based Linux systems. If you compile luckyblockcoind/luckyblockcoin-qt yourself, there are some useful files here.

## luckyblockcoin: URI support ##


luckyblockcoin-qt.desktop  (Gnome / Open Desktop)
To install:

	sudo desktop-file-install luckyblockcoin-qt.desktop
	sudo update-desktop-database

If you build yourself, you will either need to modify the paths in
the .desktop file or copy or symlink your luckyblockcoin-qt binary to `/usr/bin`
and the `../../share/pixmaps/luckyblockcoin128.png` to `/usr/share/pixmaps`

luckyblockcoin-qt.protocol (KDE)

