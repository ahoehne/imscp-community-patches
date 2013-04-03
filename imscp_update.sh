#!/bin/sh

# Done: Git Check; Todo: Check ob installer ausgeführt wurde (Modulare Config)
mkdir -p /usr/local/src/imscp
if [ ! -d /usr/local/src/imscp/.git ]; then
	cd /usr/local/src/imscp
	git pull
	# Todo: Github Aktualisierungen (imscp_master & imscp_update)#
	# Todo: Ausgewählte Community Patches anwenden
else
	echo 'Please start first_config.sh first'
fi