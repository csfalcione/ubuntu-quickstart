#!/bin/sh

sudo true

sudo apt install tlp

# This merely persists wifi and bluetooth device state between restarts.
sudo sed -i 's/^RESTORE_DEVICE_STATE_ON_STARTUP=0/RESTORE_DEVICE_STATE_ON_STARTUP=1/g' /etc/default/tlp

sudo tlp start
