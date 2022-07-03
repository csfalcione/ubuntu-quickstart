#!/bin/sh

sudo apt-get install -y tlp || (echo Unable to install tlp; exit $?)

# This merely persists wifi and bluetooth device state between restarts.
echo "RESTORE_DEVICE_STATE_ON_STARTUP=1" | sudo tee /etc/tlp.d/90-persistbluetooth.conf

sudo tlp start
