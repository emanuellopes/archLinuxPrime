#!/bin/bash

if [[ $EUID -ne 0 ]]; then
	echo "This script must be run using sudo" 2>&1
	exit 1
else
    rm -rf /etc/prime

	rm -f /etc/systemd/system/prime.service
    rm -f /usr/local/bin/prime-select


	rm -f /usr/local/bin/gpumanager

	rm -f  /etc/udev/rules.d/99-bumblebee-nvidia-dev.rules

    if [ -f /etc/modprobe.d/nvidia.conf ]; then
	   rm -f /etc/modprobe.d/nvidia.conf
    fi

    if [ -f /etc/X11/xorg.conf.d/20-intel.conf ]; then
        mv /etc/X11/xorg.conf.d/20-intel.conf /etc/X11/xorg.conf.d/20-intel.conf.bak
    fi
    if [ -f /etc/X11/xorg.conf ]; then
        mv /etc/X11/xorg.conf /etc/X11/xorg.conf.bak
    fi

    if [ -f /usr/share/sddm/scripts/Xsetup ]; then
        rm -f /usr/share/sddm/scripts/Xsetup
    fi
    echo "Prime removed from system!"
fi
