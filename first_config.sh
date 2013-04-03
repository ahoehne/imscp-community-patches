#!/bin/sh
# imscp_master repo base from: gOOvER
cd /root/imscp_patch/
# Requirement: preinstalled community-patcher in /root/imscp_patch ; logged in as root #
cd /root/imscp_patch/
if [ ! -d /root/imscp_patch/.git ]; then
	echo "#### Get actual Community Patcher ####"
	git pull
	#==== Get actual State of git master ====
	echo "#### CLONING i-MSCP git/master branch ####"
	mkdir -p /usr/local/src/imscp
	if [ ! -d /usr/local/src/imscp/.git ]; then
		git clone git://github.com/i-MSCP/imscp.git /usr/local/src/imscp
	else
		cd /usr/local/src/imscp
		git pull
	fi
	chmod 700 /root/imscp_patch/imscp_update.sh
	
	# Todo: Modularer Aufbau für Community Patches (check nach Unterordnern, pro Unterordner eine Abfrage, ob der Patch genutzt werden soll)
else
	echo 'Cannot find git informations for /root/imscp_patch/ , this script is not installed properly'
fi