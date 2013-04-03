#!/bin/sh
cd /root/imscp_patch/
if [ ! -d /root/imscp_patch/.git ]; then
	git pull
	mkdir -p /usr/local/src/imscp
	if [ ! -d /usr/local/src/imscp/.git ]; then
		cd /usr/local/src/imscp
		git pull
		# Todo: Check ob installer ausgeführt wurde (Modulare Config)
		# Todo: Github Aktualisierungen (imscp_master & imscp_update)#
		# Todo: Ausgewählte Community Patches anwenden (prepatch)
		# Todo: imscp installer ausführen
		# Todo: Ausgewählte Community Patches anwenden (postpatch)
	else
		echo 'Please start first_config.sh first'
	fi
else
	echo 'Cannot find git informations for /root/imscp_patch/ , this script is not installed properly'
fi