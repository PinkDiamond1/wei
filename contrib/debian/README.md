
Debian
====================
This directory contains files used to package weid/wei-qt
for Debian-based Linux systems. If you compile weid/wei-qt yourself, there are some useful files here.

## wei: URI support ##


wei-qt.desktop  (Gnome / Open Desktop)
To install:

	sudo desktop-file-install wei-qt.desktop
	sudo update-desktop-database

If you build yourself, you will either need to modify the paths in
the .desktop file or copy or symlink your wei-qt binary to `/usr/bin`
and the `../../share/pixmaps/wei128.png` to `/usr/share/pixmaps`

wei-qt.protocol (KDE)

