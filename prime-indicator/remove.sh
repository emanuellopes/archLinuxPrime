#!/bin/bash
# PRIME Indicator - indicator applet for NVIDIA Optimus laptops
# Copyright (C) 2013 Alfred Neumayer
#
# This program is free software; you can redistribute it and/or
# modify it under the terms of the GNU General Public License
# as published by the Free Software Foundation; either version 2
# of the License, or (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program; if not, write to the Free Software
# Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301, USA.

if [[ $EUID -ne 0 ]]; then
	echo "This script must be run using sudo" 2>&1
	exit 1
else
    rm -rf /usr/local/lib/primeindicator
	rm -f /usr/local/bin/prime-indicator
    rm -f /usr/local/bin/prime-indicatorqt

    rm -f /usr/share/pixmaps/prime-tray-intel.png
	rm -f /usr/share/pixmaps/prime-tray-nvidia.png
	rm -f /usr/share/pixmaps/prime-tray-intelred.png

	rm -f /etc/sudoers.d/prime-indicator-sudoers

	rm -f $HOME/.config/autostart/prime-indicator.desktop
	rm -f $HOME/.config/autostart/prime-indicatorqt.desktop
fi
