#!/bin/bash

if [[ $EUID -ne 0 ]]; then
	echo "This script must be run using sudo" 2>&1
	exit 1
else
	mkdir -p /etc/prime
	cp xorg.conf /etc/prime/
    cp 20-intel.conf /etc/prime/
	cp nvidia-optimus.sh /etc/prime/
	cp display_setup.desktop /etc/prime/
	cp Xsetup	/etc/prime/
    cp Xsetup_intel /etc/prime/

	cp prime.service /etc/systemd/system/
	cp prime-select /usr/local/bin/
	chmod +x /usr/local/bin/prime-select
	cp gpumanager /usr/local/bin/
	chmod +x /usr/local/bin/gpumanager

	cp 99-bumblebee-nvidia-dev.rules /etc/udev/rules.d/
	cp nvidia.conf /etc/modprobe.d/
    echo "prime Installed!"
fi
