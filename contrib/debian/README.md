
Debian
====================
This directory contains files used to package thrilld/thrill-qt
for Debian-based Linux systems. If you compile thrilld/thrill-qt yourself, there are some useful files here.

## thrill: URI support ##


thrill-qt.desktop  (Gnome / Open Desktop)
To install:

	sudo desktop-file-install thrill-qt.desktop
	sudo update-desktop-database

If you build yourself, you will either need to modify the paths in
the .desktop file or copy or symlink your thrillqt binary to `/usr/bin`
and the `../../share/pixmaps/thrill128.png` to `/usr/share/pixmaps`

thrill-qt.protocol (KDE)

